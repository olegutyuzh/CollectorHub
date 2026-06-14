'use client'

import { useRouter, useSearchParams, usePathname } from 'next/navigation'
import { X, SlidersHorizontal, ChevronDown, ChevronUp } from 'lucide-react'
import { useState } from 'react'

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

interface CollectionFiltersProps {
  countries: Country[]
  gradingCompanies: string[]
}

export function CollectionFilters({ countries, gradingCompanies }: CollectionFiltersProps) {
  const router = useRouter()
  const pathname = usePathname()
  const searchParams = useSearchParams()

  const [expanded, setExpanded] = useState(false)
  const [country, setCountry]             = useState(searchParams.get('country') ?? '')
  const [category, setCategory]           = useState(searchParams.get('category') ?? '')
  const [gradingCompany, setGradingCompany] = useState(searchParams.get('grading_company') ?? '')
  const [slabGrade, setSlabGrade]         = useState(searchParams.get('slab_grade') ?? '')

  const activeCount = [country, category, gradingCompany, slabGrade].filter(Boolean).length

  function applyFilters() {
    const params = new URLSearchParams()
    // preserve sort/dir
    const sort = searchParams.get('sort')
    const dir  = searchParams.get('dir')
    if (sort) params.set('sort', sort)
    if (dir)  params.set('dir', dir)
    if (country)       params.set('country', country)
    if (category)      params.set('category', category)
    if (gradingCompany) params.set('grading_company', gradingCompany)
    if (slabGrade)     params.set('slab_grade', slabGrade)
    router.push(`${pathname}?${params.toString()}`)
  }

  function clearFilters() {
    setCountry(''); setCategory(''); setGradingCompany(''); setSlabGrade('')
    const params = new URLSearchParams()
    const sort = searchParams.get('sort')
    const dir  = searchParams.get('dir')
    if (sort) params.set('sort', sort)
    if (dir)  params.set('dir', dir)
    router.push(params.toString() ? `${pathname}?${params.toString()}` : pathname)
  }

  const hasAnyFilter = country || category || gradingCompany || slabGrade

  return (
    <div className="mb-5 card overflow-hidden">
      <div className="px-4 py-3 flex items-center justify-between">
        <button
          onClick={() => setExpanded(v => !v)}
          className="flex items-center gap-1.5 text-sm text-[#c9a96e] hover:text-[#c9a96e]/80 font-medium"
          suppressHydrationWarning
        >
          <SlidersHorizontal className="h-4 w-4" />
          Фільтри
          {activeCount > 0 && (
            <span className="ml-1 bg-[#c9a96e] text-[#07111f] text-xs rounded-full w-5 h-5 flex items-center justify-center font-bold">
              {activeCount}
            </span>
          )}
          {expanded ? <ChevronUp className="h-4 w-4" /> : <ChevronDown className="h-4 w-4" />}
        </button>

        {hasAnyFilter && (
          <button onClick={clearFilters} className="flex items-center gap-1 text-sm text-slate-500 hover:text-slate-300">
            <X className="h-3.5 w-3.5" />
            Скинути
          </button>
        )}
      </div>

      {expanded && (
        <div className="border-t border-white/10 px-4 py-5 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5">

          {/* Category */}
          <div className="sm:col-span-2 lg:col-span-4">
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

          {/* Grading company */}
          <div>
            <label className="block text-xs font-medium text-slate-500 mb-1.5 uppercase tracking-wide">Грейдинг компанія</label>
            {gradingCompanies.length > 0 ? (
              <select
                value={gradingCompany}
                onChange={e => setGradingCompany(e.target.value)}
                className="input w-full text-sm"
              >
                <option value="">Всі</option>
                {gradingCompanies.map(g => (
                  <option key={g} value={g}>{g}</option>
                ))}
              </select>
            ) : (
              <input
                type="text"
                value={gradingCompany}
                onChange={e => setGradingCompany(e.target.value)}
                placeholder="PMG, PCGS…"
                className="input w-full text-sm"
              />
            )}
          </div>

          {/* Slab grade */}
          <div>
            <label className="block text-xs font-medium text-slate-500 mb-1.5 uppercase tracking-wide">Slab грейд</label>
            <input
              type="text"
              value={slabGrade}
              onChange={e => setSlabGrade(e.target.value)}
              placeholder="64, 65 EPQ…"
              className="input w-full text-sm"
            />
          </div>

          <div className="sm:col-span-2 lg:col-span-4 flex justify-end pt-1">
            <button onClick={applyFilters} className="btn-primary px-8">
              Застосувати
            </button>
          </div>
        </div>
      )}
    </div>
  )
}
