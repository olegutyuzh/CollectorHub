'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { X, Plus, Minus, ChevronDown, ChevronUp, Trash2 } from 'lucide-react'
import { createClient } from '@/lib/supabase'
import type { CollectedItem } from '@/types/database'

const GRADES = ['P', 'AG', 'G', 'VG', 'F', 'VF', 'XF', 'AU', 'UNC']

interface Props {
  item: CollectedItem
  onClose: () => void
}

export function EditCollectedItemModal({ item, onClose }: Props) {
  const router = useRouter()

  const [grade, setGrade]               = useState(item.grade ?? '')
  const [quantity, setQuantity]         = useState(item.quantity)
  const [price, setPrice]               = useState(item.price_value?.toString() ?? '')
  const [priceCurrency, setPriceCurrency] = useState(item.price_currency ?? 'USD')
  const [privateNote, setPrivateNote]   = useState(item.private_comment ?? '')
  const [publicNote, setPublicNote]     = useState(item.public_comment ?? '')
  const [forSwap, setForSwap]           = useState(item.for_swap)
  const [serialNumber, setSerialNumber] = useState(item.serial_number ?? '')

  const [gradingOpen, setGradingOpen]       = useState(!!(item.grading_company || item.slab_grade))
  const [gradingCompany, setGradingCompany] = useState(item.grading_company ?? '')
  const [slabGrade, setSlabGrade]           = useState(item.slab_grade ?? '')
  const [slabNumber, setSlabNumber]         = useState(item.slab_number ?? '')

  const [loading, setLoading]   = useState(false)
  const [deleting, setDeleting] = useState(false)
  const [error, setError]       = useState('')
  const [confirmDelete, setConfirmDelete] = useState(false)

  async function handleSave() {
    setLoading(true)
    setError('')
    const supabase = createClient()

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const { error: updateError } = await (supabase as any)
      .from('collected_items')
      .update({
        quantity,
        for_swap:        forSwap,
        grade:           grade || null,
        price_value:     price ? parseFloat(price) : null,
        price_currency:  price ? priceCurrency : null,
        serial_number:   serialNumber || null,
        private_comment: privateNote || null,
        public_comment:  publicNote || null,
        grading_company: gradingCompany || null,
        slab_grade:      slabGrade || null,
        slab_number:     slabNumber || null,
      })
      .eq('id', item.id)

    if (updateError) {
      setError(updateError.message)
      setLoading(false)
    } else {
      router.refresh()
      onClose()
    }
  }

  async function handleDelete() {
    setDeleting(true)
    setError('')
    const supabase = createClient()

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const { error: deleteError } = await (supabase as any)
      .from('collected_items')
      .delete()
      .eq('id', item.id)

    if (deleteError) {
      setError(deleteError.message)
      setDeleting(false)
    } else {
      router.push('/collection')
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
          <h2 className="font-semibold text-gray-900">Редагувати запис</h2>
          <button onClick={onClose} className="p-1.5 rounded-lg text-gray-400 hover:bg-gray-100">
            <X className="h-5 w-5" />
          </button>
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
                  <input
                    type="text" value={gradingCompany}
                    onChange={e => setGradingCompany(e.target.value)}
                    placeholder="напр. PMG, PCGS" className="input"
                  />
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

          {/* Delete zone */}
          <div className="border-t border-gray-100 pt-4">
            {!confirmDelete ? (
              <button
                type="button"
                onClick={() => setConfirmDelete(true)}
                className="flex items-center gap-1.5 text-sm text-red-500 hover:text-red-700 transition-colors"
              >
                <Trash2 className="h-4 w-4" />
                Видалити з колекції
              </button>
            ) : (
              <div className="rounded-xl bg-red-50 border border-red-200 p-3 space-y-2">
                <p className="text-sm text-red-700 font-medium">Видалити цей запис безповоротно?</p>
                <div className="flex gap-2">
                  <button
                    type="button"
                    onClick={handleDelete}
                    disabled={deleting}
                    className="px-4 py-1.5 rounded-lg text-sm font-medium bg-red-600 text-white hover:bg-red-700 transition-colors disabled:opacity-50"
                  >
                    {deleting ? 'Видаляємо...' : 'Так, видалити'}
                  </button>
                  <button
                    type="button"
                    onClick={() => setConfirmDelete(false)}
                    className="px-4 py-1.5 rounded-lg text-sm font-medium bg-white text-gray-700 border border-gray-300 hover:bg-gray-50 transition-colors"
                  >
                    Скасувати
                  </button>
                </div>
              </div>
            )}
          </div>
        </div>

        {/* Footer */}
        <div className="px-5 py-4 border-t border-gray-100 flex gap-3 sticky bottom-0 bg-white">
          <button
            onClick={handleSave}
            disabled={loading}
            className="btn-primary flex-1 justify-center"
          >
            {loading ? 'Зберігаємо...' : 'Зберегти'}
          </button>
          <button
            onClick={onClose}
            disabled={loading}
            className="btn-secondary flex-1 justify-center"
          >
            Скасувати
          </button>
        </div>
      </div>
    </div>
  )
}
