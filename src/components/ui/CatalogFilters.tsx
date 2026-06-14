'use client'

import { useRouter, useSearchParams, usePathname } from 'next/navigation'
import { Search, X, SlidersHorizontal, ChevronDown, ChevronUp } from 'lucide-react'
import { useState } from 'react'
import { useTranslations } from 'next-intl'

const CATEGORIES = [
  { code: '',     label: 'Всі' },
  { code: 'BKNT', label: 'Банкноти' },
  { code: 'COIN', label: 'Монети' },
  { code: 'EXON', label: 'Екзонумія' },
]

interface Country {
  code: string
  name_uk: string | null
  name_en: string | null
  flag_emoji: string | null
}
interface Currency {
  id: number
  name_uk: string | null
  name_en: string | null
  code: string | null
}

interface CatalogFiltersProps {
  issuers: string[]
  countries: Country[]
  currencies: Currency[]
}

export function CatalogFilters({ issuers, countries, currencies }: CatalogFiltersProps) {
  const router = useRouter()
  const pathname = usePathname()
  const searchParams = useSearchParams()
  const t = useTranslations('Catalog')

  const [expanded, setExpanded] = useState(false)

  const [q, setQ]               = useState(searchParams.get('q') ?? '')
  const [issuer, setIssuer]     = useState(searchParams.get('issuer') ?? '')
  const [yearFrom, setYearFrom] = useState(searchParams.get('year_from') ?? '')
  const [yearTo, setYearTo]     = useState(searchParams.get('year_to') ?? '')
  const [country, setCountry]   = useState(searchParams.get('country') ?? '')
  const [currency, setCurrency] = useState(searchParams.get('currency') ?? '')
  const [category, setCategory] = useState(searchParams.get('category') ?? '')

  const activeCount = [issuer, yearFrom, yearTo, country, currency, category].filter(Boolean).length

  function applyFilters() {
    const params = new URLSearchParams()
    if (q)        params.set('q', q)
    if (issuer)   params.set('issuer', issuer)
    if (yearFrom) params.set('year_from', yearFrom)
    if (yearTo)   params.set('year_to', yearTo)
    if (country)  params.set('country', country)
    if (currency) params.set('currency', currency)
    if (category) params.set('category', category)
    router.push(`${pathname}?${params.toString()}`)
  }

  function clearAll() {
    setQ(''); setIssuer(''); setYearFrom(''); setYearTo('')
    setCountry(''); setCurrency(''); setCategory('')
    router.push(pathname)
  }

  const hasAnyFilter = q || issuer || yearFrom || yearTo || country || currency || category

  return (
    <div className="mb-8 card overflow-hidden">
      <div className="p-4 flex flex-col sm:flex-row gap-3">
        {/* Text search */}
        <div className="relative flex-1">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-500" />
          <input
            type="search"
            value={q}
            onChange={e => setQ(e.target.value)}
            onKeyDown={e => e.key === 'Enter' && applyFilters()}
            placeholder={t('filters.searchPlaceholder')}
            className="input pl-9"
            suppressHydrationWarning
          />
        </div>

        {/* Issuer autocomplete */}
        <div className="relative sm:w-56">
          <input
            type="text"
            list="issuers-list"
            value={issuer}
            onChange={e => setIssuer(e.target.value)}
            onKeyDown={e => e.key === 'Enter' && applyFilters()}
            placeholder={t('filters.allIssuers')}
            className="input w-full"
            suppressHydrationWarning
          />
          {issuers.length > 0 && (
            <datalist id="issuers-list">
              {issuers.slice(0, 200).map(i => <option key={i} value={i} />)}
            </datalist>
          )}
          {issuer && (
            <button
              type="button"
              onClick={() => setIssuer('')}
              className="absolute right-2.5 top-1/2 -translate-y-1/2 text-slate-500 hover:text-slate-300"
            >
              <X className="h-3.5 w-3.5" />
            </button>
          )}
        </div>

        <button
          onClick={applyFilters}
          className="btn-primary px-6 shrink-0"
          suppressHydrationWarning
        >
          {t('filters.search')}
        </button>
      </div>

      {/* More filters toggle */}
      <div className="px-4 pb-3 flex items-center justify-between">
        <button
          onClick={() => setExpanded(v => !v)}
          className="flex items-center gap-1.5 text-sm text-[#c9a96e] hover:text-[#c9a96e]/80 font-medium"
          suppressHydrationWarning
        >
          <SlidersHorizontal className="h-4 w-4" />
          {t('filters.moreFilters')}
          {activeCount > 0 && (
            <span className="ml-1 bg-[#c9a96e] text-[#07111f] text-xs rounded-full w-5 h-5 flex items-center justify-center font-bold">
              {activeCount}
            </span>
          )}
          {expanded ? <ChevronUp className="h-4 w-4" /> : <ChevronDown className="h-4 w-4" />}
        </button>

        {hasAnyFilter && (
          <button onClick={clearAll} className="flex items-center gap-1 text-sm text-slate-500 hover:text-slate-300">
            <X className="h-3.5 w-3.5" />
            {t('filters.clearAll')}
          </button>
        )}
      </div>

      {/* Expanded filters */}
      {expanded && (
        <div className="border-t border-white/10 px-4 py-5 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5">

          {/* Category */}
          <div className="sm:col-span-2 lg:col-span-3">
            <label className="block text-xs font-medium text-slate-500 mb-2 uppercase tracking-wide">Категорія</label>
            <div className="flex flex-wrap gap-2">
              {CATEGORIES.map(cat => (
                <button
                  key={cat.code}
                  type="button"
                  onClick={() => setCategory(cat.code)}
                  className={[
                    'px-3.5 py-1.5 rounded-lg text-sm font-medium border transition-colors',
                    category === cat.code
                      ? 'bg-[#c9a96e]/15 text-[#c9a96e] border-[#c9a96e]/30'
                      : 'bg-white/5 text-slate-400 border-white/10 hover:bg-white/10 hover:text-slate-200',
                  ].join(' ')}
                >
                  {cat.label}
                </button>
              ))}
            </div>
          </div>

          {/* Country */}
          <div>
            <label className="block text-xs font-medium text-slate-500 mb-1.5 uppercase tracking-wide">Країна</label>
            <select
              value={country}
              onChange={e => setCountry(e.target.value)}
              className="input w-full text-sm"
            >
              <option value="">Всі країни</option>
              {countries.map(c => (
                <option key={c.code} value={c.code}>
                  {c.flag_emoji} {c.name_uk ?? c.name_en}
                </option>
              ))}
            </select>
          </div>

          {/* Currency */}
          <div>
            <label className="block text-xs font-medium text-slate-500 mb-1.5 uppercase tracking-wide">Валюта</label>
            <select
              value={currency}
              onChange={e => setCurrency(e.target.value)}
              className="input w-full text-sm"
            >
              <option value="">Всі валюти</option>
              {currencies.map(c => (
                <option key={c.id} value={String(c.id)}>
                  {c.name_uk ?? c.name_en}{c.code ? ` (${c.code})` : ''}
                </option>
              ))}
            </select>
          </div>

          {/* Year range */}
          <div>
            <label className="block text-xs font-medium text-slate-500 mb-1.5 uppercase tracking-wide">{t('filters.year')}</label>
            <div className="flex gap-2 items-center">
              <input
                type="number"
                value={yearFrom}
                onChange={e => setYearFrom(e.target.value)}
                placeholder={t('filters.from')}
                className="input w-full text-sm"
              />
              <span className="text-slate-600 shrink-0">—</span>
              <input
                type="number"
                value={yearTo}
                onChange={e => setYearTo(e.target.value)}
                placeholder={t('filters.to')}
                className="input w-full text-sm"
              />
            </div>
          </div>

          <div className="sm:col-span-2 lg:col-span-3 flex justify-end pt-1">
            <button onClick={applyFilters} className="btn-primary px-8">
              {t('filters.apply')}
            </button>
          </div>
        </div>
      )}
    </div>
  )
}
