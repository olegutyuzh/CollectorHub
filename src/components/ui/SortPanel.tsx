import { Link } from '@/i18n/navigation'
import { ArrowUp, ArrowDown } from 'lucide-react'

const SORT_OPTIONS = [
  { key: 'country',    label: 'Країна', icon: '🌍' },
  { key: 'grade',      label: 'Грейд',  icon: '🏅' },
  { key: 'slab_grade', label: 'Слаб',   icon: '🔢' },
  { key: 'year',       label: 'Рік',    icon: '📅' },
  { key: 'price',      label: 'Ціна',   icon: '💰' },
]

interface Props {
  sort: string
  dir: 'asc' | 'desc'
  country?: string
  grading_company?: string
  slab_grade_filter?: string
}

export function SortPanel({ sort, dir, country, grading_company, slab_grade_filter }: Props) {
  function href(key: string, d: string) {
    const p = new URLSearchParams()
    if (country)           p.set('country', country)
    if (grading_company)   p.set('grading_company', grading_company)
    if (slab_grade_filter) p.set('slab_grade', slab_grade_filter)
    p.set('sort', key)
    p.set('dir', d)
    return `/collection?${p.toString()}`
  }

  return (
    <aside className="w-36 shrink-0">
      <p className="text-xs font-semibold text-slate-500 uppercase tracking-wider mb-2 px-2">
        Сортування
      </p>
      <nav className="space-y-0.5">
        {SORT_OPTIONS.map(opt => {
          const isActive = sort === opt.key
          const nextDir = isActive ? (dir === 'asc' ? 'desc' : 'asc') : 'asc'
          return (
            <Link
              key={opt.key}
              href={href(opt.key, nextDir)}
              className={`flex items-center justify-between gap-1.5 px-2.5 py-2 rounded-lg text-sm transition-colors ${
                isActive
                  ? 'bg-[#c9a96e]/10 text-[#c9a96e] font-medium'
                  : 'text-slate-400 hover:bg-white/8 hover:text-slate-200'
              }`}
            >
              <span className="flex items-center gap-1.5">
                <span>{opt.icon}</span>
                {opt.label}
              </span>
              {isActive && (
                dir === 'asc'
                  ? <ArrowUp className="h-3 w-3 shrink-0" />
                  : <ArrowDown className="h-3 w-3 shrink-0" />
              )}
            </Link>
          )
        })}
      </nav>
    </aside>
  )
}
