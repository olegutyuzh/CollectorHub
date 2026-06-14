import { createServerSupabaseClient } from '@/lib/supabase-server'
import Image from 'next/image'
import { notFound } from 'next/navigation'
import { Tag, Trophy, Star } from 'lucide-react'
import { getTranslations } from 'next-intl/server'
import type { CollectibleWithRelations, CollectibleVariation, CollectibleDetails, CollectibleAward } from '@/types/database'
import { AddToCollectionButton } from '@/components/ui/AddToCollectionButton'
import { VariationsTable } from '@/components/ui/VariationsTable'
import { BackButton } from '@/components/ui/BackButton'

const CATEGORY_LABELS: Record<string, string> = {
  BKNT: 'Банкнота',
  COIN: 'Монета',
  EXON: 'Екзонумія',
}

interface RawData {
  shape?: string
  size2?: number
  tags?: string[]
  composition?: { text?: string }
  watermark?: { description?: string; thumbnail?: string; picture?: string }
  obverse?: { picture?: string; lettering?: string; lettering_translation?: string }
  reverse?: { picture?: string; lettering?: string; lettering_translation?: string }
  comments?: string
  issuing_entity?: { name?: string }
  value?: { currency?: { name?: string }; text?: string }
  ruler?: { name?: string }[]
  demonetization?: { is_demonetized?: boolean }
}

function asRaw(json: unknown): RawData {
  return (json ?? {}) as RawData
}

function parseReferences(refs: unknown): { number: string; code: string }[] {
  if (!Array.isArray(refs)) return []
  return refs.map((r: any) => ({
    number: r?.number ?? '',
    code: r?.catalogue?.code ?? '',
  })).filter(r => r.number)
}

function stripHtml(html: string): string {
  return html.replace(/<[^>]+>/g, ' ').replace(/\s+/g, ' ').trim()
}

export default async function CollectiblePage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params
  const supabase = await createServerSupabaseClient()
  const t = await getTranslations('Catalog')

  const { data: { user } } = await supabase.auth.getUser()

  const [
    { data: collectible },
    { data: variations },
    { data: userItems },
    detailsResult,
    { data: awardsRaw },
  ] = await Promise.all([
    supabase.from('collectibles').select('*, countries(*)').eq('id', id).single(),
    supabase.from('collectible_variations').select('*').eq('collectible_id', id).order('gregorian_year', { ascending: true }),
    user
      ? supabase.from('collected_items').select('id, user_id, collectible_id, collectible_variation_id, grade, quantity, for_swap, price_value, price_currency, serial_number, private_comment, public_comment, grading_company, grading_company_id, slab_grade, slab_number, grading_designations, pictures, created_at').eq('collectible_id', id).eq('user_id', user.id)
      : Promise.resolve({ data: [] }),
    supabase.from('collectible_details').select('*').eq('collectible_id', id).maybeSingle(),
    supabase.from('collectible_awards').select('*').eq('collectible_id', id).order('award_year', { ascending: true }),
  ])

  const details = (detailsResult.data as unknown) as CollectibleDetails | null
  const awards = (awardsRaw ?? []) as CollectibleAward[]

  if (!collectible) notFound()

  const c = collectible as CollectibleWithRelations
  const country = c.countries
  const vars = (variations ?? []) as CollectibleVariation[]
  const d = details ?? null
  const raw = d ? asRaw(d.raw_data) : {} as RawData

  const years = c.max_year && c.max_year !== c.min_year
    ? `${c.min_year}–${c.max_year}`
    : c.min_year?.toString() ?? '—'

  const obversePicture = raw.obverse?.picture
    ?? (c.obverse_thumbnail ? c.obverse_thumbnail.replace('-180.jpg', '-600.jpg').replace('-180.png', '-600.png') : null)
  const reversePicture = raw.reverse?.picture
    ?? (c.reverse_thumbnail ? c.reverse_thumbnail.replace('-180.jpg', '-600.jpg').replace('-180.png', '-600.png') : null)

  const refs = parseReferences(d?.references_data)
  const sizeLabel = d?.size
    ? raw.size2 ? `${d.size} × ${raw.size2} мм` : `${d.size} мм`
    : null
  const material = raw.composition?.text ?? null
  const currency = raw.value?.currency?.name ?? null
  const issuingEntity = raw.issuing_entity?.name ?? null
  const ruler = raw.ruler?.[0]?.name ?? null

  const mainDetails = [
    { label: 'Категорія',   value: CATEGORY_LABELS[c.category_code] ?? c.category_code },
    { label: 'Тип',         value: c.object_type_name ?? null },
    { label: 'Валюта',      value: currency },
    { label: 'Серія',       value: typeof d?.series === 'string' ? d.series : null },
    { label: 'Емітент',     value: c.issuer_name ?? null },
    { label: 'Орган емісії', value: issuingEntity },
    { label: 'Правитель',   value: ruler },
    { label: 'Роки',        value: years },
    { label: 'Країна',      value: country ? `${country.flag_emoji ?? ''} ${country.name_uk ?? country.name_en}`.trim() : null },
    { label: 'Матеріал',    value: material },
    { label: 'Розмір',      value: sizeLabel },
    { label: 'Вага',        value: d?.weight ? `${d.weight} г` : null },
    { label: 'Форма',       value: raw.shape ?? null },
    { label: 'Демонетизовано', value: d?.demonetized ? (d.demonetization_date ? `Так (${d.demonetization_date})` : 'Так') : null },
  ].filter(row => row.value)

  const tags = raw.tags ?? []
  const comments = raw.comments ? stripHtml(raw.comments) : null

  return (
    <div className="mx-auto max-w-5xl px-4 sm:px-6 lg:px-8 py-8">
      <BackButton label={t('backToCatalog')} fallback="/catalog" />

      <div className="grid lg:grid-cols-2 gap-8">
        {/* Images */}
        <div className="space-y-3">
          {obversePicture ? (
            <div className="card overflow-hidden">
              <div className="px-3 py-1.5 border-b border-white/10 text-xs text-slate-500">{t('detail.obverse')}</div>
              <div className="relative aspect-[2/1]">
                <Image src={obversePicture} alt={t('detail.obverse')} fill className="object-contain p-2" />
              </div>
            </div>
          ) : null}
          {reversePicture ? (
            <div className="card overflow-hidden">
              <div className="px-3 py-1.5 border-b border-white/10 text-xs text-slate-500">{t('detail.reverse')}</div>
              <div className="relative aspect-[2/1]">
                <Image src={reversePicture} alt={t('detail.reverse')} fill className="object-contain p-2" />
              </div>
            </div>
          ) : null}
          {!obversePicture && !reversePicture && (
            <div className="card flex items-center justify-center aspect-[2/1]">
              <p className="text-sm text-slate-500">{t('detail.noPhoto')}</p>
            </div>
          )}

          {/* Watermark image */}
          {raw.watermark?.thumbnail && (
            <div className="card overflow-hidden">
              <div className="px-3 py-1.5 border-b border-white/10 text-xs text-slate-500">{t('detail.watermark')}</div>
              <div className="relative aspect-[2/1]">
                <Image
                  src={raw.watermark.picture ?? raw.watermark.thumbnail}
                  alt="Watermark"
                  fill
                  className="object-contain p-2"
                />
              </div>
              {raw.watermark.description && (
                <p className="px-3 py-2 text-xs text-slate-500">{raw.watermark.description}</p>
              )}
            </div>
          )}
        </div>

        {/* Info */}
        <div>
          <h1 className="text-2xl font-bold text-white mb-1">{c.title}</h1>
          <p className="text-slate-400 mb-4">
            {country?.flag_emoji} {c.issuer_name}
            {c.min_year && ` · ${years}`}
          </p>

          {/* Tags */}
          {tags.length > 0 && (
            <div className="flex flex-wrap gap-1.5 mb-4">
              {tags.map(tag => (
                <span key={tag} className="inline-flex items-center gap-1 text-xs bg-white/10 text-slate-300 rounded-full px-2.5 py-1">
                  <Tag className="h-2.5 w-2.5" />
                  {tag}
                </span>
              ))}
            </div>
          )}

          {/* Awards */}
          {awards.length > 0 && (
            <div className="flex flex-wrap gap-2 mb-4">
              {awards.map(a => (
                <span
                  key={a.id}
                  className={[
                    'inline-flex items-center gap-1.5 text-xs font-semibold rounded-full px-3 py-1.5 border',
                    a.award_type === 'winner'
                      ? 'bg-amber-500/15 text-amber-300 border-amber-500/30'
                      : 'bg-white/8 text-slate-300 border-white/15',
                  ].join(' ')}
                  title={a.award_name}
                >
                  {a.award_type === 'winner'
                    ? <Trophy className="h-3.5 w-3.5 shrink-0" />
                    : <Star className="h-3.5 w-3.5 shrink-0" />}
                  {a.award_type === 'winner' ? 'Переможець' : 'Номінант'} {a.award_year}
                </span>
              ))}
            </div>
          )}

          <AddToCollectionButton collectible={c} />

          {/* Main details table */}
          <div className="card divide-y divide-white/10 mt-5">
            {mainDetails.map(({ label, value }) => (
              <div key={label} className="flex justify-between px-4 py-2.5 text-sm">
                <span className="text-slate-500 shrink-0 mr-3">{label}</span>
                <span className="text-slate-100 font-medium text-right">{value}</span>
              </div>
            ))}
          </div>

          {/* Catalog references */}
          {refs.length > 0 && (
            <div className="card px-4 py-3 mt-3">
              <p className="text-xs text-slate-500 mb-2 font-medium uppercase tracking-wide">Каталожні номери</p>
              <div className="flex flex-wrap gap-2">
                {refs.map((r, i) => (
                  <span key={i} className="inline-block bg-[#c9a96e]/10 text-[#c9a96e] text-sm font-mono rounded px-2 py-0.5 border border-[#c9a96e]/20">
                    {r.code}-{r.number}
                  </span>
                ))}
              </div>
            </div>
          )}
        </div>
      </div>

      {/* Variations table */}
      {vars.length > 0 && (
        <VariationsTable
          collectible={c}
          variations={vars}
          // eslint-disable-next-line @typescript-eslint/no-explicit-any
          userItems={(userItems ?? []) as any}
          isLoggedIn={!!user}
        />
      )}

      {/* Descriptions */}
      {(d?.obverse_description || d?.reverse_description || raw.obverse?.lettering || raw.reverse?.lettering || comments) && (
        <div className="mt-8 space-y-4">
          {d?.obverse_description && (
            <div className="card p-5">
              <h3 className="text-sm font-semibold text-slate-300 mb-2">{t('detail.obverseDesc')}</h3>
              <p className="text-sm text-slate-400 leading-relaxed">{d.obverse_description}</p>
              {raw.obverse?.lettering && (
                <div className="mt-3 border-t border-white/10 pt-3">
                  <p className="text-xs text-slate-500 mb-1">Напис на банкноті</p>
                  <pre className="text-xs text-slate-300 whitespace-pre-wrap font-mono bg-white/[0.06] rounded p-2">{raw.obverse.lettering}</pre>
                  {raw.obverse.lettering_translation && (
                    <p className="text-xs text-slate-500 italic mt-1">{raw.obverse.lettering_translation}</p>
                  )}
                </div>
              )}
            </div>
          )}


          {d?.reverse_description && (
            <div className="card p-5">
              <h3 className="text-sm font-semibold text-slate-300 mb-2">{t('detail.reverseDesc')}</h3>
              <p className="text-sm text-slate-400 leading-relaxed">{d.reverse_description}</p>
              {raw.reverse?.lettering && (
                <div className="mt-3 border-t border-white/10 pt-3">
                  <p className="text-xs text-slate-500 mb-1">Напис на банкноті</p>
                  <pre className="text-xs text-slate-300 whitespace-pre-wrap font-mono bg-white/[0.06] rounded p-2">{raw.reverse.lettering}</pre>
                  {raw.reverse.lettering_translation && (
                    <p className="text-xs text-slate-500 italic mt-1">{raw.reverse.lettering_translation}</p>
                  )}
                </div>
              )}
            </div>
          )}

          {comments && (
            <div className="card p-5">
              <h3 className="text-sm font-semibold text-slate-300 mb-2">Коментарі</h3>
              <p className="text-sm text-slate-400 leading-relaxed">{comments}</p>
            </div>
          )}
        </div>
      )}
    </div>
  )
}
