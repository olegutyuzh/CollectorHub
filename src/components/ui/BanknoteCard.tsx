'use client'

import Image from 'next/image'
import { useState } from 'react'
import { Link } from '@/i18n/navigation'
import { Star } from 'lucide-react'
import type { BanknoteWithRelations } from '@/types/database'
import { cn } from '@/lib/utils'

interface BanknoteCardProps {
  banknote: BanknoteWithRelations
  inCollection?: boolean
}

const ImagePlaceholder = () => (
  <div className="absolute inset-0 flex items-center justify-center text-gray-300">
    <svg className="w-12 h-12" fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <rect x="2" y="6" width="20" height="12" rx="2" strokeWidth={1.5} />
      <circle cx="12" cy="12" r="3" strokeWidth={1.5} />
    </svg>
  </div>
)

export function BanknoteCard({ banknote, inCollection }: BanknoteCardProps) {
  const [imgError, setImgError] = useState(false)
  const country = banknote.countries
  const years = banknote.max_year && banknote.max_year !== banknote.min_year
    ? `${banknote.min_year}–${banknote.max_year}`
    : banknote.min_year?.toString() ?? '—'

  return (
    <Link
      href={`/catalog/${banknote.id}`}
      className="card group overflow-hidden hover:shadow-md transition-shadow"
    >
      {/* Banknote image */}
      <div className="relative bg-gray-100 aspect-[2/1] overflow-hidden">
        {banknote.obverse_thumbnail && !imgError ? (
          <Image
            src={banknote.obverse_thumbnail}
            alt={banknote.title}
            fill
            className="object-cover group-hover:scale-105 transition-transform duration-300"
            onError={() => setImgError(true)}
          />
        ) : (
          <ImagePlaceholder />
        )}
        {inCollection && (
          <div className="absolute top-2 right-2">
            <span className={cn('badge bg-green-100 text-green-700')}>
              <Star className="h-3 w-3 mr-1 fill-current" />
              У колекції
            </span>
          </div>
        )}
      </div>

      {/* Info */}
      <div className="p-4">
        <div className="flex items-start justify-between gap-2">
          <div className="min-w-0">
            <p className="font-semibold text-gray-900 truncate">
              {country?.flag_emoji && <span className="mr-1">{country.flag_emoji}</span>}
              {banknote.title}
            </p>
            <p className="text-sm text-gray-500 mt-0.5">
              {country?.name_uk ?? country?.name_en ?? banknote.issuer_name}
            </p>
          </div>
          <span className="text-xs text-gray-400 whitespace-nowrap">{years}</span>
        </div>

        {banknote.object_type_name && (
          <p className="mt-2 text-xs text-gray-400">{banknote.object_type_name}</p>
        )}
      </div>
    </Link>
  )
}
