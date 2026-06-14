'use client'

import { useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase'
import { useRouter } from '@/i18n/navigation'
import { ArrowLeft, ChevronDown, Plus, X } from 'lucide-react'
import { Link } from '@/i18n/navigation'
import type { Country, Currency } from '@/types/database'

// ─── типи ───────────────────────────────────────────────────────────────────

type RefEntry = { catalog: string; number: string }

const CATALOGS = ['P', 'BNB', 'B', 'WPM', 'S', 'PMG', 'PCGS', 'Інший']

// ─── константи ──────────────────────────────────────────────────────────────

const BANKNOTE_TYPES = [
  { value: 'standard_circulation',    label: 'Стандартна обігова банкнота' },
  { value: 'circulating_commemorative', label: "Обігова пам'ятна банкнота" },
  { value: 'non_circulating',         label: 'Необігова банкнота' },
  { value: 'local',                   label: 'Місцева банкнота' },
  { value: 'emergency',               label: 'Банкнота надзвичайного обігу' },
  { value: 'non_issued',              label: 'Невипущена банкнота' },
  { value: 'patterns_trials',         label: 'Проект / пробна банкнота' },
  { value: 'contemporary_counterfeit', label: 'Сучасна підробка' },
  { value: 'atm_test_note',           label: 'Тестова банкнота для банкоматів' },
]

const MATERIALS = [
  { value: 'paper',                   label: 'Папір' },
  { value: 'polymer',                 label: 'Полімер' },
  { value: 'hybrid_substrate',        label: 'Гібридна підкладка' },
  { value: 'silk',                    label: 'Шовк' },
  { value: 'gold_deposited_polymer',  label: 'Полімер із золотим покриттям' },
  { value: 'silver_deposited_polymer', label: 'Полімер зі срібним покриттям' },
  { value: 'other',                   label: 'Інший' },
]

const SHAPES = [
  { value: 'rectangular',             label: 'Прямокутна' },
  { value: 'rectangular_hand_cut',    label: 'Прямокутна (ручна різка)' },
  { value: 'rectangular_undulating_edge', label: 'Прямокутна з хвилястим краєм' },
  { value: 'round',                   label: 'Кругла' },
  { value: 'square',                  label: 'Квадратна' },
  { value: 'triangular',              label: 'Трикутна' },
  { value: 'other',                   label: 'Інша' },
]

const TECHNIQUES = [
  'Інтагліо (глибокий друк)', 'Офсет', 'Літографія', 'Висока печатка',
  'Трафаретний друк', 'Перфорація', 'Надрукування поверх', 'Ручна різка',
]

// ─── дефолтний стан форми ───────────────────────────────────────────────────

const INITIAL_FORM = {
  // Загальна інформація
  country_id: '',
  currency_id: '',
  title: '',
  issuer: '',
  banknote_type: 'standard_circulation',
  denomination: '',
  denomination_text: '',
  series: '',
  pick_number: '',
  year_from: '',
  year_to: '',
  issue_date: '',
  is_demonetized: '' as '' | 'true' | 'false',
  demonetization_date: '',

  // Технічні дані
  material: 'paper',
  shape: 'rectangular',
  manufacturing_technique: '',
  size_width_mm: '',
  size_height_mm: '',
  printer: '',

  // Аверс
  obverse_description: '',
  obverse_designers: '',
  obverse_engravers: '',
  obverse_lettering: '',

  // Реверс
  reverse_description: '',
  reverse_designers: '',
  reverse_engravers: '',
  reverse_lettering: '',

  // Водяний знак
  watermark: '',

  // Захист та коментарі
  security_features: '',
  comments: '',
}

// ─── компонент секції ────────────────────────────────────────────────────────

function Section({ title, children, defaultOpen = true }: {
  title: string
  children: React.ReactNode
  defaultOpen?: boolean
}) {
  const [open, setOpen] = useState(defaultOpen)
  return (
    <div className="card overflow-hidden">
      <button
        type="button"
        onClick={() => setOpen(o => !o)}
        className="w-full flex items-center justify-between px-6 py-4 text-left hover:bg-gray-50 transition-colors"
      >
        <span className="font-semibold text-gray-900">{title}</span>
        <ChevronDown className={`h-4 w-4 text-gray-400 transition-transform ${open ? 'rotate-180' : ''}`} />
      </button>
      {open && <div className="px-6 pb-6 border-t border-gray-100 pt-4">{children}</div>}
    </div>
  )
}

// ─── головний компонент ──────────────────────────────────────────────────────

export default function AddBanknotePage() {
  const router = useRouter()
  const supabase = createClient()
  const [countries, setCountries] = useState<Country[]>([])
  const [currencies, setCurrencies] = useState<Currency[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const [form, setForm] = useState(INITIAL_FORM)
  const [refNumbers, setRefNumbers] = useState<RefEntry[]>([{ catalog: 'P', number: '' }])

  useEffect(() => {
    supabase.from('countries').select('*').order('name_uk').then(({ data }) => setCountries(data ?? []))
    supabase.from('currencies').select('*').order('name_en').then(({ data }) => setCurrencies(data ?? []))
  }, [])

  function set(key: string, value: string) {
    setForm(f => ({ ...f, [key]: value }))
  }

  function addRef() {
    setRefNumbers(r => [...r, { catalog: 'P', number: '' }])
  }

  function removeRef(i: number) {
    setRefNumbers(r => r.filter((_, idx) => idx !== i))
  }

  function updateRef(i: number, field: keyof RefEntry, value: string) {
    setRefNumbers(r => r.map((entry, idx) => idx === i ? { ...entry, [field]: value } : entry))
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    setLoading(true)
    setError('')

    const filledRefs = refNumbers.filter(r => r.number.trim() !== '')

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const { error } = await (supabase.from('banknotes') as any).insert({
      country_id:             form.country_id ? parseInt(form.country_id) : null,
      currency_id:            form.currency_id ? parseInt(form.currency_id) : null,
      title:                  form.title || null,
      issuer:                 form.issuer || null,
      banknote_type:          form.banknote_type || null,
      denomination:           parseFloat(form.denomination),
      denomination_text:      form.denomination_text || null,
      series:                 form.series || null,
      pick_number:            form.pick_number || null,
      year_from:              form.year_from ? parseInt(form.year_from) : null,
      year_to:                form.year_to ? parseInt(form.year_to) : null,
      issue_date:             form.issue_date || null,
      is_demonetized:         form.is_demonetized === 'true' ? true : form.is_demonetized === 'false' ? false : null,
      demonetization_date:    form.demonetization_date || null,
      material:               form.material || null,
      shape:                  form.shape || null,
      manufacturing_technique: form.manufacturing_technique || null,
      size_width_mm:          form.size_width_mm ? parseFloat(form.size_width_mm) : null,
      size_height_mm:         form.size_height_mm ? parseFloat(form.size_height_mm) : null,
      printer:                form.printer || null,
      obverse_description:    form.obverse_description || null,
      obverse_designers:      form.obverse_designers || null,
      obverse_engravers:      form.obverse_engravers || null,
      obverse_lettering:      form.obverse_lettering || null,
      reverse_description:    form.reverse_description || null,
      reverse_designers:      form.reverse_designers || null,
      reverse_engravers:      form.reverse_engravers || null,
      reverse_lettering:      form.reverse_lettering || null,
      watermark:              form.watermark || null,
      security_features:      form.security_features || null,
      comments:               form.comments || null,
      reference_numbers:      filledRefs.length > 0 ? filledRefs : null,
    })

    if (error) {
      setError(error.message)
      setLoading(false)
    } else {
      router.push('/catalog')
    }
  }

  // ── допоміжні рендери ────────────────────────────────────────────────────

  function inputField(label: string, key: string, opts?: { type?: string; placeholder?: string; required?: boolean }) {
    return (
      <div>
        <label className="block text-sm font-medium text-gray-700 mb-1">
          {label}{opts?.required && <span className="text-red-500 ml-1">*</span>}
        </label>
        <input
          type={opts?.type ?? 'text'}
          value={form[key as keyof typeof form] as string}
          onChange={e => set(key, e.target.value)}
          placeholder={opts?.placeholder}
          required={opts?.required}
          className="input"
        />
      </div>
    )
  }

  function textareaField(label: string, key: string, placeholder?: string) {
    return (
      <div>
        <label className="block text-sm font-medium text-gray-700 mb-1">{label}</label>
        <textarea
          value={form[key as keyof typeof form] as string}
          onChange={e => set(key, e.target.value)}
          placeholder={placeholder}
          rows={3}
          className="input resize-none"
        />
      </div>
    )
  }

  // ── render ───────────────────────────────────────────────────────────────

  return (
    <div className="mx-auto max-w-3xl px-4 sm:px-6 lg:px-8 py-8">
      <Link href="/catalog" className="inline-flex items-center gap-1 text-sm text-gray-500 hover:text-gray-900 mb-6">
        <ArrowLeft className="h-4 w-4" />
        Назад до каталогу
      </Link>

      <h1 className="text-2xl font-bold text-gray-900 mb-6">Додати банкноту</h1>

      <form onSubmit={handleSubmit} className="space-y-4">

        {/* ── 1. Загальна інформація ──────────────────────────────────── */}
        <Section title="Загальна інформація">
          <div className="space-y-4">
            {inputField('Назва *', 'title', { required: true, placeholder: '5 Karbowanez' })}

            <div className="grid sm:grid-cols-2 gap-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Емітент</label>
                <select value={form.country_id} onChange={e => set('country_id', e.target.value)} className="input">
                  <option value="">— Оберіть емітента —</option>
                  {countries.map(c => (
                    <option key={c.id} value={c.id}>{c.flag_emoji} {c.name_uk ?? c.name_en}</option>
                  ))}
                </select>
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Установа-емітент</label>
                <input
                  type="text"
                  value={form.issuer}
                  onChange={e => set('issuer', e.target.value)}
                  placeholder="Національний банк України"
                  className="input"
                />
              </div>
            </div>

            <div className="grid sm:grid-cols-2 gap-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Валюта</label>
                <select value={form.currency_id} onChange={e => set('currency_id', e.target.value)} className="input">
                  <option value="">— Оберіть валюту —</option>
                  {currencies.map(c => (
                    <option key={c.id} value={c.id}>{c.code} — {c.name_uk ?? c.name_en}</option>
                  ))}
                </select>
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Номінал (текст)</label>
                <input
                  type="text"
                  value={form.denomination_text}
                  onChange={e => set('denomination_text', e.target.value)}
                  placeholder="100 гривень"
                  className="input"
                />
              </div>
            </div>

            <div className="grid sm:grid-cols-2 gap-4">
              {inputField('Номінал (число) *', 'denomination', { type: 'number', placeholder: '100', required: true })}
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Тип</label>
                <select value={form.banknote_type} onChange={e => set('banknote_type', e.target.value)} className="input">
                  {BANKNOTE_TYPES.map(t => <option key={t.value} value={t.value}>{t.label}</option>)}
                </select>
              </div>
            </div>

            {inputField('Серія', 'series', { placeholder: 'Перша серія' })}

            <div className="grid sm:grid-cols-2 gap-4">
              <div className="grid grid-cols-2 gap-2">
                {inputField('Рік від', 'year_from', { type: 'number', placeholder: '1996' })}
                {inputField('Рік до', 'year_to', { type: 'number', placeholder: '2004' })}
              </div>
              {inputField('Точна дата випуску', 'issue_date', { type: 'date' })}
            </div>

            {/* Вилучено з обігу — radio buttons */}
            <div className="space-y-2">
              <label className="block text-sm font-medium text-gray-700">Вилучено з обігу</label>
              <div className="flex items-center gap-6">
                {(['true', 'false', ''] as const).map((val, i) => (
                  <label key={i} className="flex items-center gap-1.5 text-sm cursor-pointer">
                    <input
                      type="radio"
                      name="is_demonetized"
                      value={val}
                      checked={form.is_demonetized === val}
                      onChange={e => set('is_demonetized', e.target.value)}
                      className="text-blue-600"
                    />
                    {(['Так', 'Ні', 'Невідомо'] as const)[i]}
                  </label>
                ))}
              </div>
              {form.is_demonetized === 'true' && (
                <div className="mt-2 max-w-xs">
                  {inputField('Дата вилучення', 'demonetization_date', { type: 'date' })}
                </div>
              )}
            </div>

            {inputField('Каталожний номер (Pick #)', 'pick_number', { placeholder: 'P-118' })}

            {/* Довідкові номери */}
            <div className="space-y-2">
              <label className="block text-sm font-medium text-gray-700">Довідкові номери</label>
              <div className="space-y-2">
                {refNumbers.map((entry, i) => (
                  <div key={i} className="flex items-center gap-2">
                    <select
                      value={entry.catalog}
                      onChange={e => updateRef(i, 'catalog', e.target.value)}
                      className="input w-28 flex-shrink-0"
                    >
                      {CATALOGS.map(c => <option key={c} value={c}>{c}</option>)}
                    </select>
                    <input
                      type="text"
                      value={entry.number}
                      onChange={e => updateRef(i, 'number', e.target.value)}
                      placeholder="51a"
                      className="input flex-1"
                    />
                    {refNumbers.length > 1 && (
                      <button
                        type="button"
                        onClick={() => removeRef(i)}
                        className="p-1.5 text-gray-400 hover:text-red-500 transition-colors flex-shrink-0"
                        title="Видалити"
                      >
                        <X className="h-4 w-4" />
                      </button>
                    )}
                  </div>
                ))}
              </div>
              <button
                type="button"
                onClick={addRef}
                className="inline-flex items-center gap-1.5 text-sm text-blue-600 hover:text-blue-800 transition-colors mt-1"
              >
                <Plus className="h-3.5 w-3.5" />
                Додати ще
              </button>
            </div>

          </div>
        </Section>

        {/* ── 2. Технічні дані ────────────────────────────────────────── */}
        <Section title="Технічні дані">
          <div className="space-y-4">
            <div className="grid sm:grid-cols-2 gap-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Матеріал (підкладка)</label>
                <select value={form.material} onChange={e => set('material', e.target.value)} className="input">
                  {MATERIALS.map(m => <option key={m.value} value={m.value}>{m.label}</option>)}
                </select>
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Форма</label>
                <select value={form.shape} onChange={e => set('shape', e.target.value)} className="input">
                  {SHAPES.map(s => <option key={s.value} value={s.value}>{s.label}</option>)}
                </select>
              </div>
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-2">Техніка виготовлення</label>
              <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
                {TECHNIQUES.map(t => (
                  <label key={t} className="flex items-center gap-2 text-sm cursor-pointer">
                    <input
                      type="checkbox"
                      checked={form.manufacturing_technique.includes(t)}
                      onChange={e => {
                        const current = form.manufacturing_technique ? form.manufacturing_technique.split(', ').filter(Boolean) : []
                        const updated = e.target.checked ? [...current, t] : current.filter(x => x !== t)
                        set('manufacturing_technique', updated.join(', '))
                      }}
                      className="rounded border-gray-300 text-blue-600"
                    />
                    {t}
                  </label>
                ))}
              </div>
            </div>

            <div className="grid grid-cols-2 gap-4">
              {inputField('Ширина (мм)', 'size_width_mm', { type: 'number', placeholder: '133' })}
              {inputField('Висота (мм)', 'size_height_mm', { type: 'number', placeholder: '66' })}
            </div>

            {inputField('Друкарня', 'printer', { placeholder: 'Bundesdruckerei, Берлін' })}
          </div>
        </Section>

        {/* ── 3. Аверс ────────────────────────────────────────────────── */}
        <Section title="Аверс (лицьова сторона)">
          <div className="space-y-4">
            {textareaField('Опис аверсу', 'obverse_description', 'Що зображено на лицьовій стороні...')}
            <div className="grid sm:grid-cols-2 gap-4">
              {inputField('Гравер(и)', 'obverse_engravers', { placeholder: 'Прізвище гравера' })}
              {inputField('Дизайнер(и)', 'obverse_designers', { placeholder: 'Прізвище дизайнера' })}
            </div>
            {textareaField('Написи на аверсі', 'obverse_lettering', 'Усі написи, що є на банкноті...')}
          </div>
        </Section>

        {/* ── 4. Реверс ───────────────────────────────────────────────── */}
        <Section title="Реверс (зворотна сторона)">
          <div className="space-y-4">
            {textareaField('Опис реверсу', 'reverse_description', 'Що зображено на зворотній стороні...')}
            <div className="grid sm:grid-cols-2 gap-4">
              {inputField('Гравер(и)', 'reverse_engravers', { placeholder: 'Прізвище гравера' })}
              {inputField('Дизайнер(и)', 'reverse_designers', { placeholder: 'Прізвище дизайнера' })}
            </div>
            {textareaField('Написи на реверсі', 'reverse_lettering', 'Усі написи, що є на банкноті...')}
          </div>
        </Section>

        {/* ── 5. Водяний знак ─────────────────────────────────────────── */}
        <Section title="Водяний знак" defaultOpen={false}>
          {textareaField('Опис водяного знаку', 'watermark', 'Портрет, орнамент, напис...')}
        </Section>

        {/* ── 6. Захист та примітки ───────────────────────────────────── */}
        <Section title="Захисні елементи та коментарі" defaultOpen={false}>
          <div className="space-y-4">
            {textareaField('Захисні елементи', 'security_features', 'Захисна нитка, голограма, мікродрук...')}
            {textareaField('Коментарі / Історична довідка', 'comments', 'Загальна інформація про банкноту, її контекст...')}
          </div>
        </Section>

        {/* ── Помилка та кнопки ───────────────────────────────────────── */}
        {error && (
          <p className="text-sm text-red-600 bg-red-50 rounded-lg px-4 py-3">{error}</p>
        )}

        <div className="flex gap-3 pt-2">
          <Link href="/catalog" className="btn-secondary flex-1 justify-center">
            Скасувати
          </Link>
          <button type="submit" disabled={loading} className="btn-primary flex-1 justify-center">
            {loading ? 'Зберігаємо...' : 'Зберегти банкноту'}
          </button>
        </div>

      </form>
    </div>
  )
}
