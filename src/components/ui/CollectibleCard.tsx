import Image from 'next/image'
import { Link } from '@/i18n/navigation'
import { Star, Trophy } from 'lucide-react'
import type { CollectibleWithRelations, CollectibleAward } from '@/types/database'

interface CollectibleCardProps {
  collectible: CollectibleWithRelations
  inCollection?: boolean
  award?: CollectibleAward | null
}

const CATEGORY_LABELS: Record<string, string> = {
  BKNT: 'Банкнота',
  COIN: 'Монета',
  EXON: 'Екзонумія',
}

export function CollectibleCard({ collectible, inCollection, award }: CollectibleCardProps) {
  const country = collectible.countries
  const years = collectible.max_year && collectible.max_year !== collectible.min_year
    ? `${collectible.min_year}–${collectible.max_year}`
    : collectible.min_year?.toString() ?? '—'

  return (
    <Link
      href={`/catalog/${collectible.id}`}
      className="card group overflow-hidden hover:shadow-lg hover:border-white/20 transition-all"
    >
      {/* Thumbnail */}
      <div className="relative bg-white/[0.03] aspect-[2/1] overflow-hidden">
        {collectible.obverse_thumbnail ? (
          <Image
            src={collectible.obverse_thumbnail}
            alt={collectible.title}
            fill
            className="object-cover group-hover:scale-105 transition-transform duration-300"
          />
        ) : (
          <div className="absolute inset-0 flex items-center justify-center text-slate-700">
            <svg className="w-12 h-12" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <rect x="2" y="6" width="20" height="12" rx="2" strokeWidth={1.5} />
              <circle cx="12" cy="12" r="3" strokeWidth={1.5} />
            </svg>
          </div>
        )}

        {/* In-collection badge */}
        {inCollection && (
          <div className="absolute top-2 right-2">
            <span className="inline-flex items-center gap-1 text-[10px] font-semibold bg-emerald-500/80 text-white rounded-full px-2 py-0.5">
              <Star className="h-2.5 w-2.5 fill-current" />
              У колекції
            </span>
          </div>
        )}

        {/* Award badge — top-left */}
        {award && (
          <div className="absolute top-2 left-2">
            <span
              className={[
                'inline-flex items-center gap-1 text-[10px] font-bold rounded-full px-2 py-0.5',
                award.award_type === 'winner'
                  ? 'bg-amber-500/90 text-[#07111f]'
                  : 'bg-white/20 text-white backdrop-blur-sm',
              ].join(' ')}
              title={`${award.award_name} ${award.award_year}`}
            >
              {award.award_type === 'winner'
                ? <Trophy className="h-2.5 w-2.5" />
                : <Star className="h-2.5 w-2.5" />}
              {award.award_year}
            </span>
          </div>
        )}

        {/* Category badge (for non-banknotes) */}
        {collectible.category_code !== 'BKNT' && (
          <div className="absolute bottom-2 left-2">
            <span className="inline-flex text-[10px] font-medium bg-black/50 text-slate-200 backdrop-blur-sm rounded-full px-2 py-0.5">
              {CATEGORY_LABELS[collectible.category_code] ?? collectible.category_code}
            </span>
          </div>
        )}
      </div>

      {/* Info */}
      <div className="p-3">
        <p className="font-semibold text-slate-100 truncate text-sm leading-snug">
          {country?.flag_emoji && <span className="mr-1">{country.flag_emoji}</span>}
          {collectible.title}
        </p>
        <div className="flex items-center justify-between mt-0.5 gap-2">
          <p className="text-xs text-slate-500 truncate">{collectible.issuer_name}</p>
          <span className="text-xs text-slate-600 whitespace-nowrap shrink-0">{years}</span>
        </div>
      </div>
    </Link>
  )
}
