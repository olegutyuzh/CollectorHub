import { createServerSupabaseClient } from '@/lib/supabase-server'
import { CollectiblesTable } from './CollectiblesTable'

interface SearchParams { q?: string; page?: string; country?: string; currency?: string; category?: string }

const PAGE_SIZE = 50

const CATEGORIES = [
  { code: 'BKNT', label: 'Банкнота' },
  { code: 'COIN', label: 'Монета' },
  { code: 'EXON', label: 'Екзонумія' },
]

export default async function AdminCollectiblesPage({ searchParams }: { searchParams: Promise<SearchParams> }) {
  const sp = await searchParams
  const supabase = await createServerSupabaseClient()

  const page = Math.max(1, parseInt(sp.page ?? '1') || 1)
  const offset = (page - 1) * PAGE_SIZE
  const countryId = sp.country ? parseInt(sp.country) : null
  const currencyId = sp.currency ? parseInt(sp.currency) : null
  const category = sp.category ?? null

  // Count query
  let countQ = supabase.from('collectibles').select('*', { count: 'exact', head: true })
  if (sp.q) countQ = countQ.ilike('title', `%${sp.q}%`)
  if (countryId) countQ = countQ.eq('country_id', countryId)
  if (currencyId) countQ = countQ.eq('currency_id', currencyId)
  if (category) countQ = countQ.eq('category_code', category)
  const { count: total } = await countQ

  // Data query
  let dataQ = supabase
    .from('collectibles')
    .select('id, title, issuer_name, min_year, max_year, category_code, country_id, currency_id, obverse_thumbnail, reverse_thumbnail, countries(id, name_uk, name_en, flag_emoji)')
    .order('id', { ascending: false })
    .range(offset, offset + PAGE_SIZE - 1)
  if (sp.q) dataQ = dataQ.ilike('title', `%${sp.q}%`)
  if (countryId) dataQ = dataQ.eq('country_id', countryId)
  if (currencyId) dataQ = dataQ.eq('currency_id', currencyId)
  if (category) dataQ = dataQ.eq('category_code', category)
  const { data: collectibles } = await dataQ

  // Countries for filter dropdown
  const { data: countriesRaw } = await supabase
    .from('countries')
    .select('id, name_uk, name_en, flag_emoji')
    .order('name_uk')
  const countries = countriesRaw as Array<{ id: number; name_uk: string | null; name_en: string | null; flag_emoji: string | null }> | null

  // Currencies for filter dropdown
  const { data: currenciesRaw } = await supabase
    .from('currencies')
    .select('id, name_en, name_uk, code')
    .order('name_en')
  const currencies = currenciesRaw as Array<{ id: number; name_en: string | null; name_uk: string | null; code: string | null }> | null

  const totalPages = Math.ceil((total ?? 0) / PAGE_SIZE)
  const activeFilters = [sp.q, sp.country, sp.currency, sp.category].filter(Boolean).length

  function pageHref(p: number) {
    const params = new URLSearchParams()
    if (sp.q) params.set('q', sp.q)
    if (sp.country) params.set('country', sp.country)
    if (sp.currency) params.set('currency', sp.currency)
    if (sp.category) params.set('category', sp.category)
    params.set('page', String(p))
    return `/admin/collectibles?${params.toString()}`
  }

  return (
    <div>
      <h1 className="text-2xl font-bold text-white mb-1">Каталог</h1>
      <p className="text-slate-400 text-sm mb-6">
        {total ?? 0} позицій
        {totalPages > 1 && ` · стор. ${page} з ${totalPages}`}
        {activeFilters > 0 && <span className="ml-2 text-[#c9a96e] font-medium">(фільтр активний)</span>}
      </p>

      {/* Filters */}
      <form className="mb-5 flex flex-wrap gap-2 items-end">
        <div>
          <label className="block text-xs text-slate-500 mb-1">Назва</label>
          <input
            name="q"
            defaultValue={sp.q ?? ''}
            placeholder="Пошук за назвою..."
            autoComplete="off"
            suppressHydrationWarning
            className="input text-sm w-60"
          />
        </div>
        <div>
          <label className="block text-xs text-slate-500 mb-1">Категорія</label>
          <select
            name="category"
            defaultValue={sp.category ?? ''}
            className="input text-sm w-40"
          >
            <option value="">— всі —</option>
            {CATEGORIES.map(cat => (
              <option key={cat.code} value={cat.code}>{cat.label}</option>
            ))}
          </select>
        </div>
        <div>
          <label className="block text-xs text-slate-500 mb-1">Країна</label>
          <select
            name="country"
            defaultValue={sp.country ?? ''}
            className="input text-sm w-52"
          >
            <option value="">— всі країни —</option>
            {(countries ?? []).map(c => (
              <option key={c.id} value={String(c.id)}>
                {c.flag_emoji} {c.name_uk ?? c.name_en}
              </option>
            ))}
          </select>
        </div>
        <div>
          <label className="block text-xs text-slate-500 mb-1">Валюта</label>
          <select
            name="currency"
            defaultValue={sp.currency ?? ''}
            className="input text-sm w-52"
          >
            <option value="">— всі валюти —</option>
            {(currencies ?? []).map(c => (
              <option key={c.id} value={String(c.id)}>
                {c.name_uk ?? c.name_en} {c.code ? `(${c.code})` : ''}
              </option>
            ))}
          </select>
        </div>
        <div className="flex gap-2">
          <button type="submit" className="btn-primary text-sm">Фільтрувати</button>
          {activeFilters > 0 && (
            <a href="/admin/collectibles" className="btn-secondary text-sm">Скинути</a>
          )}
        </div>
      </form>

      {/* eslint-disable-next-line @typescript-eslint/no-explicit-any */}
      <CollectiblesTable collectibles={(collectibles ?? []) as any} countries={(countries ?? []) as any} currencies={(currencies ?? []) as any} />

      {/* Pagination */}
      {totalPages > 1 && (
        <div className="flex items-center gap-2 mt-5 justify-center">
          {page > 1 && (
            <a href={pageHref(page - 1)} className="px-3 py-1.5 rounded-lg border border-white/10 text-sm text-slate-300 hover:bg-white/8">‹ Назад</a>
          )}
          <span className="text-sm text-slate-500">Стор. {page} з {totalPages}</span>
          {page < totalPages && (
            <a href={pageHref(page + 1)} className="px-3 py-1.5 rounded-lg border border-white/10 text-sm text-slate-300 hover:bg-white/8">Далі ›</a>
          )}
        </div>
      )}
    </div>
  )
}
