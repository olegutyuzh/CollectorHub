'use client'

import { useState } from 'react'
import { X, Plus, Minus, ChevronDown, ChevronUp } from 'lucide-react'
import { createClient } from '@/lib/supabase'
import type { CollectibleWithRelations, CollectibleVariation, NumistaSignature } from '@/types/database'

const GRADES = ['P', 'AG', 'G', 'VG', 'F', 'VF', 'XF', 'AU', 'UNC']
const GRADING_COMPANIES = ['PMG', 'PCGS', 'NGC', 'IBNS', 'Інша']

interface Props {
  collectible: CollectibleWithRelations
  variation?: CollectibleVariation
  onClose: () => void
  onSuccess?: () => void
}

export function AddToCollectionModal({ collectible, variation, onClose, onSuccess }: Props) {
  const [grade, setGrade]               = useState('')
  const [quantity, setQuantity]         = useState(1)
  const [price, setPrice]               = useState('')
  const [priceCurrency, setPriceCurrency] = useState('USD')
  const [privateNote, setPrivateNote]   = useState('')
  const [publicNote, setPublicNote]     = useState('')
  const [forSwap, setForSwap]           = useState(false)
  const [serialNumber, setSerialNumber] = useState('')

  const [gradingOpen, setGradingOpen]       = useState(false)
  const [gradingCompany, setGradingCompany] = useState('')
  const [slabGrade, setSlabGrade]           = useState('')
  const [slabNumber, setSlabNumber]         = useState('')

  const [loading, setLoading] = useState(false)
  const [error, setError]     = useState('')

  const country  = collectible.countries

  async function handleSave(addAgain = false) {
    setLoading(true)
    setError('')
    const supabase = createClient()

    const { data: { user } } = await supabase.auth.getUser()
    if (!user) { setError('Потрібна авторизація'); setLoading(false); return }

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const { error: insertError } = await (supabase as any)
      .from('collected_items')
      .insert({
        user_id:                    user.id,
        collectible_id:             collectible.id,
        collectible_variation_id:   variation?.id ?? null,
        quantity,
        for_swap:                   forSwap,
        grade:                      grade || null,
        price_value:                price ? parseFloat(price) : null,
        price_currency:             price ? priceCurrency : null,
        serial_number:              serialNumber || null,
        private_comment:            privateNote || null,
        public_comment:             publicNote || null,
        grading_company:            gradingCompany || null,
        slab_grade:                 slabGrade || null,
        slab_number:                slabNumber || null,
      })

    if (insertError) {
      setError(insertError.message)
      setLoading(false)
    } else if (addAgain) {
      setGrade(''); setQuantity(1); setPrice(''); setPrivateNote(''); setPublicNote('')
      setForSwap(false); setSerialNumber('')
      setGradingCompany(''); setSlabGrade(''); setSlabNumber('')
      setLoading(false)
    } else {
      onSuccess?.()
      onClose()
    }
  }

  return (
    <div
      className="fixed inset-0 z-50 flex items-center justify-center p-4"
      style={{ background: 'rgba(0,0,0,0.45)' }}
      onClick={e => { if (e.target === e.currentTarget) onClose() }}
    >
      <div className="bg-white rounded-2xl w-full max-w-md max-h-[92vh] overflow-y-auto shadow-2xl">
        {/* Header */}
        <div className="flex items-center justify-between px-5 py-4 border-b border-gray-100 sticky top-0 bg-white z-10">
          <h2 className="font-semibold text-gray-900">Додати до колекції</h2>
          <button onClick={onClose} className="p-1.5 rounded-lg text-gray-400 hover:bg-gray-100">
            <X className="h-5 w-5" />
          </button>
        </div>

        {/* Collectible info */}
        <div className="px-5 py-3 bg-gray-50 border-b border-gray-100 text-sm text-gray-600">
          {country?.flag_emoji}{' '}
          <span className="font-medium text-gray-900">{collectible.title}</span>
          {' · '}{collectible.issuer_name}
          {collectible.min_year && ` · ${collectible.min_year}`}
          {variation && (() => {
            const sigs = (variation.signatures as NumistaSignature[] | null) ?? []
            const year = variation.gregorian_year ?? variation.year
            return (
              <div className="mt-1.5 flex flex-wrap gap-1.5 items-center">
                {year && (
                  <span className="badge bg-blue-100 text-blue-700">
                    {year}
                  </span>
                )}
                {sigs.map((s, i) => (
                  <span key={i} className="badge bg-gray-100 text-gray-600 font-normal">
                    {s.signer_name}
                  </span>
                ))}
                {variation.comment && (
                  <span className="text-xs text-gray-400">{variation.comment}</span>
                )}
              </div>
            )
          })()}
        </div>

        <div className="px-5 py-4 space-y-5">

          {/* Grade */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Стан (Grade)</label>
            <div className="flex flex-wrap gap-1.5">
              {GRADES.map(g => (
                <button
                  key={g}
                  type="button"
                  onClick={() => setGrade(grade === g ? '' : g)}
                  className={`px-3 py-1.5 rounded-lg text-sm font-medium border transition-colors ${
                    grade === g
                      ? 'bg-blue-600 text-white border-blue-600'
                      : 'bg-white text-gray-700 border-gray-300 hover:border-blue-400'
                  }`}
                >
                  {g}
                </button>
              ))}
            </div>
          </div>

          {/* Quantity */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Кількість</label>
            <div className="flex items-center gap-2">
              <button
                type="button"
                onClick={() => setQuantity(q => Math.max(1, q - 1))}
                className="w-8 h-8 rounded-lg border border-gray-300 flex items-center justify-center text-gray-600 hover:bg-gray-50"
              >
                <Minus className="h-3.5 w-3.5" />
              </button>
              <input
                type="number" min={1} value={quantity}
                onChange={e => setQuantity(Math.max(1, parseInt(e.target.value) || 1))}
                className="input w-20 text-center"
              />
              <button
                type="button"
                onClick={() => setQuantity(q => q + 1)}
                className="w-8 h-8 rounded-lg border border-gray-300 flex items-center justify-center text-gray-600 hover:bg-gray-50"
              >
                <Plus className="h-3.5 w-3.5" />
              </button>
            </div>
          </div>

          {/* Price */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Ціна купівлі</label>
            <div className="flex gap-2 items-center">
              <input
                type="number" step="0.01" min="0" value={price}
                onChange={e => setPrice(e.target.value)}
                placeholder="0.00" className="input w-32"
              />
              <select
                value={priceCurrency}
                onChange={e => setPriceCurrency(e.target.value)}
                className="input w-24"
              >
                {['USD', 'EUR', 'UAH', 'GBP', 'PLN'].map(c => (
                  <option key={c} value={c}>{c}</option>
                ))}
              </select>
            </div>
          </div>

          {/* Serial number */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Серійний номер</label>
            <input
              type="text" value={serialNumber}
              onChange={e => setSerialNumber(e.target.value)}
              placeholder="напр. AA1234567B" className="input"
            />
          </div>

          {/* For swap */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Для обміну</label>
            <button
              type="button"
              onClick={() => setForSwap(v => !v)}
              className={`px-4 py-1.5 rounded-lg text-sm font-medium border transition-colors ${
                forSwap
                  ? 'bg-amber-500 text-white border-amber-500'
                  : 'bg-white text-gray-700 border-gray-300 hover:border-amber-400'
              }`}
            >
              Обмін
            </button>
          </div>

          {/* Grading (collapsible) */}
          <div className="rounded-xl border border-gray-200 overflow-hidden">
            <button
              type="button"
              onClick={() => setGradingOpen(v => !v)}
              className="w-full flex items-center justify-between px-4 py-3 text-sm font-medium text-gray-700 hover:bg-gray-50 transition-colors"
            >
              <span className="flex items-center gap-2">
                Оцінка (Grading slab)
                {(gradingCompany || slabGrade) && (
                  <span className="badge bg-blue-50 text-blue-700">
                    {[gradingCompany, slabGrade].filter(Boolean).join(' ')}
                  </span>
                )}
              </span>
              {gradingOpen
                ? <ChevronUp className="h-4 w-4 text-gray-400" />
                : <ChevronDown className="h-4 w-4 text-gray-400" />}
            </button>

            {gradingOpen && (
              <div className="px-4 pb-4 pt-1 space-y-3 border-t border-gray-100 bg-gray-50">
                <div>
                  <label className="block text-xs font-medium text-gray-500 mb-1.5">Компанія</label>
                  <div className="flex flex-wrap gap-1.5">
                    {GRADING_COMPANIES.map(c => (
                      <button
                        key={c}
                        type="button"
                        onClick={() => setGradingCompany(gradingCompany === c ? '' : c)}
                        className={`px-3 py-1 rounded-lg text-xs font-medium border transition-colors ${
                          gradingCompany === c
                            ? 'bg-blue-600 text-white border-blue-600'
                            : 'bg-white text-gray-700 border-gray-300 hover:border-blue-400'
                        }`}
                      >
                        {c}
                      </button>
                    ))}
                  </div>
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-500 mb-1.5">Оцінка (Score)</label>
                  <input
                    type="text" value={slabGrade}
                    onChange={e => setSlabGrade(e.target.value)}
                    placeholder="напр. 66, 67 EPQ" className="input"
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-500 mb-1.5">Номер сертифікату</label>
                  <input
                    type="text" value={slabNumber}
                    onChange={e => setSlabNumber(e.target.value)}
                    placeholder="напр. 1234567-001" className="input"
                  />
                </div>
              </div>
            )}
          </div>

          {/* Private note */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Особиста нотатка</label>
            <p className="text-xs text-gray-400 mb-1.5">Видно тільки вам</p>
            <textarea
              value={privateNote}
              onChange={e => setPrivateNote(e.target.value)}
              rows={2} placeholder="Де знайшли, особливості..."
              className="input resize-none"
            />
          </div>

          {/* Public comment */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Публічний коментар</label>
            <p className="text-xs text-gray-400 mb-1.5">Видно всім користувачам</p>
            <textarea
              value={publicNote}
              onChange={e => setPublicNote(e.target.value)}
              rows={2} placeholder="Цікавий факт, особливість..."
              className="input resize-none"
            />
          </div>

          {error && <p className="text-sm text-red-600 bg-red-50 rounded-lg px-3 py-2">{error}</p>}
        </div>

        {/* Footer */}
        <div className="px-5 py-4 border-t border-gray-100 flex gap-3 sticky bottom-0 bg-white">
          <button
            onClick={() => handleSave(false)}
            disabled={loading}
            className="btn-primary flex-1 justify-center"
          >
            {loading ? 'Зберігаємо...' : 'Зберегти'}
          </button>
          <button
            onClick={() => handleSave(true)}
            disabled={loading}
            className="btn-secondary flex-1 justify-center text-sm"
          >
            Зберегти та ще
          </button>
        </div>
      </div>
    </div>
  )
}
