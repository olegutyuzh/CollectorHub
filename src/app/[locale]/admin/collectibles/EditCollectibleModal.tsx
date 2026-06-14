'use client'

import { useState, useTransition, useRef } from 'react'
import { X, Upload, Loader2, ImageIcon } from 'lucide-react'
import Image from 'next/image'
import { updateCollectible, uploadCollectiblePhoto } from './actions'
import type { CollectibleEditData } from './actions'

interface Country { id: number; name_uk: string | null; name_en: string | null; flag_emoji: string | null }
interface Currency { id: number; name_en: string | null; name_uk: string | null; code: string | null }

interface Collectible {
  id: number
  title: string
  issuer_name: string | null
  min_year: number | null
  max_year: number | null
  category_code: string
  country_id: number | null
  currency_id: number | null
  obverse_thumbnail: string | null
  reverse_thumbnail: string | null
}

interface Props {
  collectible: Collectible
  countries: Country[]
  currencies: Currency[]
  onClose: () => void
}

const CATEGORIES = [
  { code: 'BKNT', label: 'Банкнота' },
  { code: 'COIN', label: 'Монета' },
  { code: 'EXON', label: 'Екзонумія' },
]

function PhotoUpload({
  label,
  side,
  collectibleId,
  currentUrl,
  onUploaded,
}: {
  label: string
  side: 'obverse' | 'reverse'
  collectibleId: number
  currentUrl: string | null
  onUploaded: (url: string) => void
}) {
  const inputRef = useRef<HTMLInputElement>(null)
  const [uploading, setUploading] = useState(false)
  const [previewUrl, setPreviewUrl] = useState<string | null>(currentUrl)
  const [uploadError, setUploadError] = useState<string | null>(null)

  async function handleFile(file: File) {
    setUploadError(null)
    setUploading(true)
    const fd = new FormData()
    fd.append('file', file)
    fd.append('collectibleId', String(collectibleId))
    fd.append('side', side)
    try {
      const result = await uploadCollectiblePhoto(fd)
      setPreviewUrl(result.url)
      onUploaded(result.url)
    } catch (e) {
      setUploadError(e instanceof Error ? e.message : 'Помилка завантаження')
    } finally {
      setUploading(false)
    }
  }

  function onInputChange(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0]
    if (file) handleFile(file)
  }

  function onDrop(e: React.DragEvent) {
    e.preventDefault()
    const file = e.dataTransfer.files?.[0]
    if (file && file.type.startsWith('image/')) handleFile(file)
  }

  return (
    <div className="flex flex-col gap-1.5">
      <span className="text-xs font-medium text-slate-400">{label}</span>

      {previewUrl ? (
        <div className="relative group">
          <Image
            src={previewUrl}
            alt={label}
            width={160}
            height={96}
            className="rounded-lg border border-white/10 object-cover w-40 h-24"
            unoptimized
          />
          <button
            type="button"
            onClick={() => inputRef.current?.click()}
            className="absolute inset-0 rounded-lg bg-black/50 opacity-0 group-hover:opacity-100 flex items-center justify-center transition-opacity"
          >
            <Upload className="h-5 w-5 text-white" />
          </button>
        </div>
      ) : (
        <div
          onDrop={onDrop}
          onDragOver={e => e.preventDefault()}
          onClick={() => inputRef.current?.click()}
          className="w-40 h-24 rounded-lg border-2 border-dashed border-white/10 bg-white/[0.03] flex flex-col items-center justify-center gap-1 cursor-pointer hover:border-[#c9a96e]/40 hover:bg-[#c9a96e]/5 transition-colors"
        >
          {uploading ? (
            <Loader2 className="h-5 w-5 text-[#c9a96e] animate-spin" />
          ) : (
            <>
              <ImageIcon className="h-5 w-5 text-slate-600" />
              <span className="text-[10px] text-slate-500">Завантажити</span>
            </>
          )}
        </div>
      )}

      {uploading && previewUrl && (
        <div className="flex items-center gap-1 text-xs text-[#c9a96e]">
          <Loader2 className="h-3 w-3 animate-spin" /> Завантаження…
        </div>
      )}
      {uploadError && <p className="text-xs text-red-400">{uploadError}</p>}
      <p className="text-[10px] text-slate-600">+ watermark «collectorhub.com»</p>

      <input
        ref={inputRef}
        type="file"
        accept="image/jpeg,image/png,image/webp"
        className="hidden"
        onChange={onInputChange}
      />
    </div>
  )
}

export function EditCollectibleModal({ collectible: c, countries, currencies, onClose }: Props) {
  const [form, setForm] = useState<CollectibleEditData>({
    title:         c.title,
    issuer_name:   c.issuer_name,
    min_year:      c.min_year,
    max_year:      c.max_year,
    category_code: c.category_code,
    country_id:    c.country_id,
    currency_id:   c.currency_id,
  })
  const [pending, startTransition] = useTransition()
  const [error, setError] = useState<string | null>(null)

  function set<K extends keyof CollectibleEditData>(key: K, value: CollectibleEditData[K]) {
    setForm(prev => ({ ...prev, [key]: value }))
  }

  function save() {
    setError(null)
    startTransition(async () => {
      try {
        await updateCollectible(c.id, form)
        onClose()
      } catch (e) {
        setError(e instanceof Error ? e.message : 'Помилка')
      }
    })
  }

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60 p-4">
      <div className="bg-[#0d1f33] border border-white/10 rounded-2xl shadow-2xl w-full max-w-2xl max-h-[90vh] flex flex-col">
        {/* Header */}
        <div className="flex items-center justify-between px-5 py-4 border-b border-white/10 shrink-0">
          <h2 className="font-semibold text-white">Редагувати позицію #{c.id}</h2>
          <button onClick={onClose} className="text-slate-500 hover:text-slate-200 transition-colors">
            <X className="h-5 w-5" />
          </button>
        </div>

        {/* Scrollable body */}
        <div className="px-5 py-4 space-y-4 overflow-y-auto">

          {/* Photos */}
          <div>
            <p className="text-xs font-semibold text-slate-500 uppercase tracking-wide mb-3">Фото</p>
            <div className="flex gap-6">
              <PhotoUpload label="Аверс" side="obverse" collectibleId={c.id} currentUrl={c.obverse_thumbnail} onUploaded={() => {}} />
              <PhotoUpload label="Реверс" side="reverse" collectibleId={c.id} currentUrl={c.reverse_thumbnail} onUploaded={() => {}} />
            </div>
          </div>

          <hr className="border-white/8" />

          <div>
            <label className="block text-xs font-medium text-slate-400 mb-1">Назва</label>
            <input className="input w-full text-sm" value={form.title} onChange={e => set('title', e.target.value)} />
          </div>

          <div>
            <label className="block text-xs font-medium text-slate-400 mb-1">Емітент</label>
            <input className="input w-full text-sm" value={form.issuer_name ?? ''} onChange={e => set('issuer_name', e.target.value || null)} />
          </div>

          <div className="grid grid-cols-2 gap-3">
            <div>
              <label className="block text-xs font-medium text-slate-400 mb-1">Рік від</label>
              <input type="number" className="input w-full text-sm" value={form.min_year ?? ''} onChange={e => set('min_year', e.target.value ? parseInt(e.target.value) : null)} />
            </div>
            <div>
              <label className="block text-xs font-medium text-slate-400 mb-1">Рік до</label>
              <input type="number" className="input w-full text-sm" value={form.max_year ?? ''} onChange={e => set('max_year', e.target.value ? parseInt(e.target.value) : null)} />
            </div>
          </div>

          <div>
            <label className="block text-xs font-medium text-slate-400 mb-1">Категорія</label>
            <select className="input w-full text-sm" value={form.category_code} onChange={e => set('category_code', e.target.value)}>
              {CATEGORIES.map(cat => <option key={cat.code} value={cat.code}>{cat.label}</option>)}
            </select>
          </div>

          <div>
            <label className="block text-xs font-medium text-slate-400 mb-1">Країна</label>
            <select className="input w-full text-sm" value={form.country_id ?? ''} onChange={e => set('country_id', e.target.value ? parseInt(e.target.value) : null)}>
              <option value="">— без країни —</option>
              {countries.map(ct => <option key={ct.id} value={ct.id}>{ct.flag_emoji} {ct.name_uk ?? ct.name_en}</option>)}
            </select>
          </div>

          <div>
            <label className="block text-xs font-medium text-slate-400 mb-1">Валюта</label>
            <select className="input w-full text-sm" value={form.currency_id ?? ''} onChange={e => set('currency_id', e.target.value ? parseInt(e.target.value) : null)}>
              <option value="">— без валюти —</option>
              {currencies.map(cur => <option key={cur.id} value={cur.id}>{cur.name_uk ?? cur.name_en} {cur.code ? `(${cur.code})` : ''}</option>)}
            </select>
          </div>

          {error && <p className="text-sm text-red-400 bg-red-500/10 border border-red-500/20 rounded-lg px-3 py-2">{error}</p>}
        </div>

        {/* Footer */}
        <div className="flex justify-end gap-2 px-5 py-4 border-t border-white/10 shrink-0">
          <button onClick={onClose} className="btn-secondary text-sm">Скасувати</button>
          <button onClick={save} disabled={pending} className="btn-primary text-sm">
            {pending ? 'Збереження...' : 'Зберегти'}
          </button>
        </div>
      </div>
    </div>
  )
}
