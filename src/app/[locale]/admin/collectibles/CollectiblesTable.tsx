'use client'

import { useState } from 'react'
import { Pencil } from 'lucide-react'
import Image from 'next/image'
import { EditCollectibleModal } from './EditCollectibleModal'

interface Country { id: number; name_uk: string | null; name_en: string | null; flag_emoji: string | null }
interface Currency { id: number; name_en: string | null; name_uk: string | null; code: string | null }
interface Collectible {
  id: number
  title: string
  issuer_name: string | null
  min_year: number | null
  max_year: number | null
  category_code: string
  country_id: number | null
  currency_id: number | null
  obverse_thumbnail: string | null
  reverse_thumbnail: string | null
  countries: Country | null
}

interface Props {
  collectibles: Collectible[]
  countries: Country[]
  currencies: Currency[]
}

const CAT_LABEL: Record<string, string> = { BKNT: 'Банкнота', COIN: 'Монета', EXON: 'Екзонумія' }

export function CollectiblesTable({ collectibles, countries, currencies }: Props) {
  const [editing, setEditing] = useState<Collectible | null>(null)

  return (
    <>
      <div className="card overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/10 bg-white/[0.04]">
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500 w-16">ID</th>
              <th className="px-3 py-3 text-left text-xs font-medium text-slate-500 w-24">Фото</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500">Назва</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500">Емітент</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500">Країна</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500">Роки</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500">Тип</th>
              <th className="px-4 py-3 w-10" />
            </tr>
          </thead>
          <tbody>
            {collectibles.map(c => {
              const years = c.max_year && c.max_year !== c.min_year
                ? `${c.min_year}–${c.max_year}`
                : c.min_year?.toString() ?? '—'
              const ct = c.countries
              return (
                <tr key={c.id} className="border-t border-white/8 hover:bg-white/[0.03]">
                  <td className="px-4 py-2.5 text-slate-500 tabular-nums">{c.id}</td>
                  <td className="px-3 py-2">
                    <div className="flex gap-1">
                      {c.obverse_thumbnail ? (
                        <Image
                          src={c.obverse_thumbnail}
                          alt="аверс"
                          width={36}
                          height={22}
                          className="rounded object-cover border border-white/10"
                          unoptimized
                        />
                      ) : (
                        <div className="w-9 h-[22px] rounded border border-dashed border-white/10 bg-white/[0.03]" />
                      )}
                      {c.reverse_thumbnail ? (
                        <Image
                          src={c.reverse_thumbnail}
                          alt="реверс"
                          width={36}
                          height={22}
                          className="rounded object-cover border border-white/10"
                          unoptimized
                        />
                      ) : (
                        <div className="w-9 h-[22px] rounded border border-dashed border-white/10 bg-white/[0.03]" />
                      )}
                    </div>
                  </td>
                  <td className="px-4 py-2.5 font-medium text-slate-100 max-w-[200px] truncate">{c.title}</td>
                  <td className="px-4 py-2.5 text-slate-400 max-w-[130px] truncate">{c.issuer_name ?? '—'}</td>
                  <td className="px-4 py-2.5 text-slate-400">
                    {ct ? `${ct.flag_emoji ?? ''} ${ct.name_uk ?? ct.name_en ?? ''}`.trim() : '—'}
                  </td>
                  <td className="px-4 py-2.5 text-slate-400 tabular-nums">{years}</td>
                  <td className="px-4 py-2.5 text-slate-400">{CAT_LABEL[c.category_code] ?? c.category_code}</td>
                  <td className="px-3 py-2.5">
                    <button
                      onClick={() => setEditing(c)}
                      className="w-7 h-7 rounded-lg border border-white/10 flex items-center justify-center text-slate-500 hover:border-[#c9a96e]/40 hover:text-[#c9a96e] hover:bg-[#c9a96e]/5 transition-colors"
                    >
                      <Pencil className="h-3.5 w-3.5" />
                    </button>
                  </td>
                </tr>
              )
            })}
          </tbody>
        </table>
      </div>

      {editing && (
        <EditCollectibleModal
          collectible={editing}
          countries={countries}
          currencies={currencies}
          onClose={() => setEditing(null)}
        />
      )}
    </>
  )
}
