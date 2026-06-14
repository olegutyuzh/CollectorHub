import { Link } from '@/i18n/navigation'

interface Props {
  currentPage: number
  totalPages: number
  getHref: (page: number) => string
}

export function Pagination({ currentPage, totalPages, getHref }: Props) {
  if (totalPages <= 1) return null

  const pages: (number | '...')[] = []
  if (totalPages <= 7) {
    for (let i = 1; i <= totalPages; i++) pages.push(i)
  } else {
    pages.push(1)
    if (currentPage > 3) pages.push('...')
    for (let i = Math.max(2, currentPage - 1); i <= Math.min(totalPages - 1, currentPage + 1); i++) {
      pages.push(i)
    }
    if (currentPage < totalPages - 2) pages.push('...')
    pages.push(totalPages)
  }

  const base = 'inline-flex items-center justify-center w-9 h-9 rounded-lg text-sm font-medium transition-colors select-none'

  return (
    <div className="flex items-center justify-center gap-1 mt-8 pb-4">
      {currentPage > 1 ? (
        <Link href={getHref(currentPage - 1)} className={`${base} border border-white/10 text-slate-400 hover:bg-white/8 hover:text-slate-200`}>
          ‹
        </Link>
      ) : (
        <span className={`${base} border border-white/5 text-slate-700 cursor-not-allowed`}>‹</span>
      )}

      {pages.map((p, i) =>
        p === '...' ? (
          <span key={`e${i}`} className={`${base} text-slate-600`}>…</span>
        ) : (
          <Link
            key={p}
            href={getHref(p)}
            className={`${base} ${
              p === currentPage
                ? 'bg-[#c9a96e] text-[#07111f] font-bold shadow-sm'
                : 'border border-white/10 text-slate-400 hover:bg-white/8 hover:text-slate-200'
            }`}
          >
            {p}
          </Link>
        )
      )}

      {currentPage < totalPages ? (
        <Link href={getHref(currentPage + 1)} className={`${base} border border-white/10 text-slate-400 hover:bg-white/8 hover:text-slate-200`}>
          ›
        </Link>
      ) : (
        <span className={`${base} border border-white/5 text-slate-700 cursor-not-allowed`}>›</span>
      )}
    </div>
  )
}
