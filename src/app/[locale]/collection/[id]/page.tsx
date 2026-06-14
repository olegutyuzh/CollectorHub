import { createServerSupabaseClient } from '@/lib/supabase-server'
import Image from 'next/image'
import { notFound, redirect } from 'next/navigation'
import { Info } from 'lucide-react'
import type { CollectedItemFull, CollectibleVariation } from '@/types/database'
import { getTranslations } from 'next-intl/server'
import { VariationsTable } from '@/components/ui/VariationsTable'
import { BackButton } from '@/components/ui/BackButton'

interface Props {
  params: Promise<{ id: string }>
}

function Row({ label, value }: { label: string; value: React.ReactNode }) {
  if (!value && value !== 0) return null
  return (
    <div className="flex gap-3 py-2.5 border-b border-gray-100 last:border-0">
      <span className="text-sm text-gray-500 w-44 shrink-0">{label}</span>
      <span className="text-sm text-gray-900 flex-1">{value}</span>
    </div>
  )
}

const CATEGORY_LABELS: Record<string, string> = {
  BKNT: 'Банкнота',
  COIN: 'Монета',
  EXON: 'Екзонумія',
}

export default async function CollectedItemPage({ params }: Props) {
  const { id } = await params
  const supabase = await createServerSupabaseClient()
  const t = await getTranslations('CollectionItem')
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/auth/login')

  const { data: item } = await supabase
    .from('collected_items')
    .select('*, collectibles(*, countries(*)), collectible_variations(*)')
    .eq('id', id)
    .eq('user_id', user.id)
    .single()

  if (!item) notFound()

  const collectibleId = (item as CollectedItemFull).collectibles?.id

  const [{ data: allVariations }, { data: allUserItems }] = await Promise.all([
    collectibleId
      ? supabase
          .from('collectible_variations')
          .select('*')
          .eq('collectible_id', collectibleId)
          .order('gregorian_year', { ascending: true })
      : Promise.resolve({ data: [] }),
    collectibleId
      ? supabase
          .from('collected_items')
          .select('id, user_id, collectible_id, collectible_variation_id, grade, quantity, for_swap, price_value, price_currency, serial_number, private_comment, public_comment, grading_company, grading_company_id, slab_grade, slab_number, grading_designations, pictures, created_at')
          .eq('collectible_id', collectibleId)
          .eq('user_id', user.id)
      : Promise.resolve({ data: [] }),
  ])

  const col = item as CollectedItemFull
  const c   = col.collectibles
  const country = c?.countries

  const years = c?.max_year && c?.max_year !== c?.min_year
    ? `${c.min_year}–${c.max_year}`
    : c?.min_year?.toString() ?? '—'

  return (
    <div className="mx-auto max-w-4xl px-4 sm:px-6 lg:px-8 py-8">
      <BackButton label={t('back')} fallback="/collection" />

      <div className="mb-6">
        <h1 className="text-2xl font-bold text-gray-900">
          {country?.flag_emoji} {c?.title}
        </h1>
        <p className="text-gray-500 mt-1">
          {c?.issuer_name}
          {years !== '—' && ` · ${years}`}
        </p>
      </div>

      {/* Catalog images (general — same for all variations) */}
      {(c?.obverse_thumbnail || c?.reverse_thumbnail) && (
        <div className="flex gap-4 mb-6 flex-wrap">
          {c.obverse_thumbnail && (
            <div className="relative h-44 flex-1 min-w-[180px] rounded-xl overflow-hidden bg-gray-100 shadow">
              <Image
                src={c.obverse_thumbnail.replace('-180.jpg', '-600.jpg')}
                alt="Аверс"
                fill
                className="object-contain p-2"
              />
              <span className="absolute bottom-2 left-2 text-xs text-gray-400 bg-white/80 rounded px-1.5 py-0.5">
                Аверс
              </span>
            </div>
          )}
          {c.reverse_thumbnail && (
            <div className="relative h-44 flex-1 min-w-[180px] rounded-xl overflow-hidden bg-gray-100 shadow">
              <Image
                src={c.reverse_thumbnail.replace('-180.jpg', '-600.jpg')}
                alt="Реверс"
                fill
                className="object-contain p-2"
              />
              <span className="absolute bottom-2 left-2 text-xs text-gray-400 bg-white/80 rounded px-1.5 py-0.5">
                Реверс
              </span>
            </div>
          )}
        </div>
      )}

      {/* General information — doesn't change per variation */}
      <div className="card p-5 mb-6">
        <h2 className="flex items-center gap-2 text-sm font-semibold text-gray-700 mb-3">
          <Info className="h-4 w-4 text-blue-500" />
          Загальна інформація
        </h2>
        <Row label="Назва"     value={c?.title} />
        <Row label="Емітент"   value={c?.issuer_name} />
        <Row label="Країна"    value={country ? `${country.flag_emoji ?? ''} ${country.name_uk ?? country.name_en}`.trim() : null} />
        <Row label="Категорія" value={CATEGORY_LABELS[c?.category_code ?? ''] ?? c?.category_code ?? null} />
        <Row label="Роки"      value={years} />
        {c?.id && (
          <div className="flex gap-3 py-2.5">
            <span className="text-sm text-gray-500 w-44 shrink-0">Numista ID</span>
            <a
              href={`https://en.numista.com/${c.id}`}
              target="_blank"
              rel="noopener noreferrer"
              className="text-sm text-blue-600 hover:underline"
            >
              {c.id}
            </a>
          </div>
        )}
      </div>

      {/* Variations table — each variation shows owned items inline */}
      {c && (
        <VariationsTable
          collectible={c}
          variations={(allVariations ?? []) as CollectibleVariation[]}
          // eslint-disable-next-line @typescript-eslint/no-explicit-any
          userItems={(allUserItems ?? []) as any}
          isLoggedIn={true}
        />
      )}
    </div>
  )
}
