import { createServerSupabaseClient } from '@/lib/supabase-server'
import Image from 'next/image'
import { Link } from '@/i18n/navigation'
import { Star, Plus, Camera, Award, Hash, DollarSign, MessageSquare } from 'lucide-react'
import type { CollectedItem, CollectibleWithRelations, CollectibleVariation, NumistaPicture, Country } from '@/types/database'
import { getTranslations } from 'next-intl/server'
import { EditCollectedItemButton } from '@/components/ui/EditCollectedItemButton'
import { DeleteCollectedItemButton } from '@/components/ui/DeleteCollectedItemButton'
import { Pagination } from '@/components/ui/Pagination'
import { SortPanel } from '@/components/ui/SortPanel'
import { CollectionFilters } from '@/components/ui/CollectionFilters'
import { Suspense } from 'react'

const PAGE_SIZE = 10

interface SearchParams {
  country?: string
  category?: string
  grading_company?: string
  slab_grade?: string
  page?: string
  sort?: string
  dir?: string
}

const GRADE_ORDER: Record<string, number> = {
  UNC: 1, AUNC: 2, AU: 3, XF: 4, VF: 5, F: 6, VG: 7, G: 8, AG: 9, FR: 10, P: 11,
}

type ItemFull = CollectedItem & {
  collectibles: CollectibleWithRelations
  collectible_variations: CollectibleVariation | null
}

type CollectibleGroup = {
  collectible: CollectibleWithRelations
  refs: string
  totalQty: number
  items: ItemFull[]
}

type SeriesGroup = {
  name: string
  collectibles: CollectibleGroup[]
}

type CountryGroup = {
  name: string
  flag: string
  series: SeriesGroup[]
}

function parseRefs(refs: unknown, numistaId?: number): string {
  const parts: string[] = []
  if (Array.isArray(refs)) {
    for (const r of refs) {
      const code   = r?.catalogue?.code ?? r?.code ?? ''
      const number = r?.number ?? ''
      if (code && number) parts.push(`${code}#${number}`)
    }
  }
  if (numistaId) parts.push(`N#${numistaId}`)
  return parts.join(', ')
}

function formatPrice(value: number | null, currency: string | null) {
  if (!value) return null
  const sym: Record<string, string> = { USD: '$', EUR: '€', UAH: '₴', GBP: '£', PLN: 'zł' }
  const s = sym[currency ?? ''] ?? (currency ?? '')
  return `${s}${value.toLocaleString('en', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}`
}

const GRADE_COLORS: Record<string, string> = {
  UNC:  'bg-emerald-500/15 text-emerald-400',
  AUNC: 'bg-teal-500/15 text-teal-400',
  AU:   'bg-teal-500/15 text-teal-400',
  XF:   'bg-blue-500/15 text-blue-400',
  VF:   'bg-sky-500/15 text-sky-400',
  F:    'bg-amber-500/15 text-amber-400',
  VG:   'bg-orange-500/15 text-orange-400',
  G:    'bg-red-500/15 text-red-400',
}

export default async function CollectionPage({ searchParams }: { searchParams: Promise<SearchParams> }) {
  const sp       = await searchParams
  const supabase = await createServerSupabaseClient()
  const t        = await getTranslations('Collection')
  const tn       = await getTranslations('Nav')
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) {
    return (
      <div className="mx-auto max-w-md px-4 py-24 text-center">
        <Star className="h-12 w-12 text-slate-600 mx-auto mb-4" />
        <h1 className="text-xl font-semibold text-white mb-2">{t('authRequired')}</h1>
        <p className="text-slate-400 text-sm mb-6">{t('authDesc')}</p>
        <div className="flex gap-3 justify-center">
          <Link href="/auth/login" className="btn-secondary">{tn('login')}</Link>
          <Link href="/auth/register" className="btn-primary">{tn('register')}</Link>
        </div>
      </div>
    )
  }

  let countryId: number | null = null
  if (sp.country) {
    const { data: cr } = await supabase
      .from('countries')
      .select('id')
      .eq('code', sp.country)
      .single() as unknown as { data: Pick<Country, 'id'> | null }
    countryId = cr?.id ?? null
  }

  let q = supabase
    .from('collected_items')
    .select('*, collectibles(*, countries(*)), collectible_variations(*)')
    .eq('user_id', user.id)
    .order('created_at', { ascending: false })

  if (countryId !== null)  q = q.eq('collectibles.country_id', countryId)
  if (sp.category)         q = q.eq('collectibles.category_code', sp.category)
  if (sp.grading_company)  q = q.eq('grading_company', sp.grading_company)
  if (sp.slab_grade)       q = q.eq('slab_grade', sp.slab_grade)

  const { data: rawItems } = await q
  const allItems = (countryId !== null || sp.category
    ? (rawItems ?? []).filter((i: any) => i.collectibles !== null)
    : (rawItems ?? [])) as unknown as ItemFull[]

  const collectibleIds = [...new Set(allItems.map(i => i.collectibles?.id).filter((id): id is number => !!id))]
  type DetailRow = { collectible_id: number; series: unknown; references_data: unknown }
  const detailsResult = collectibleIds.length
    ? await supabase.from('collectible_details').select('collectible_id, series, references_data').in('collectible_id', collectibleIds)
    : { data: [] as DetailRow[] }
  const detailsRows = detailsResult.data as DetailRow[] | null

  const detailsMap = new Map<number, { series: string | null; refs: string }>()
  for (const d of (detailsRows ?? [])) {
    const series = typeof d.series === 'string' ? d.series : null
    const refs   = parseRefs(d.references_data)
    detailsMap.set(d.collectible_id, { series, refs })
  }

  const countryOrder: string[] = []
  const countryMap = new Map<string, CountryGroup>()

  for (const item of allItems) {
    const c       = item.collectibles
    const country = c?.countries
    const cKey    = country?.code ?? '__none'
    const cName   = country?.name_uk ?? country?.name_en ?? '—'
    const cFlag   = country?.flag_emoji ?? ''

    const detail  = c?.id ? detailsMap.get(c.id) : undefined
    const sName   = detail?.series ?? c?.issuer_name ?? '—'
    const refs    = detail?.refs ? `${detail.refs}${c?.id ? `, N#${c.id}` : ''}` : (c?.id ? `N#${c.id}` : '')

    if (!countryMap.has(cKey)) {
      countryMap.set(cKey, { name: cName, flag: cFlag, series: [] })
      countryOrder.push(cKey)
    }
    const cg = countryMap.get(cKey)!

    let sg = cg.series.find(s => s.name === sName)
    if (!sg) { sg = { name: sName, collectibles: [] }; cg.series.push(sg) }

    let col = sg.collectibles.find(g => g.collectible.id === c?.id)
    if (!col) {
      col = { collectible: c, refs, totalQty: 0, items: [] }
      sg.collectibles.push(col)
    }
    col.items.push(item)
    col.totalQty += item.quantity ?? 1
  }

  for (const cg of countryMap.values()) {
    cg.series.sort((a, b) => a.name.localeCompare(b.name))
    for (const sg of cg.series) {
      sg.collectibles.sort((a, b) =>
        (a.collectible?.title ?? '').localeCompare(b.collectible?.title ?? ''))
      for (const col of sg.collectibles) {
        col.items.sort((a, b) =>
          (a.collectible_variations?.gregorian_year ?? 9999) -
          (b.collectible_variations?.gregorian_year ?? 9999))
      }
    }
  }

  const totalItems  = allItems.reduce((s, i) => s + (i.quantity ?? 1), 0)
  const uniqueCount = allItems.length

  // ── Countries + grading companies for filter dropdowns ────────────────────
  const { data: countriesRaw } = await supabase
    .from('countries')
    .select('code, name_uk, name_en, flag_emoji')
    .order('name_uk')
  const filterCountries = (countriesRaw ?? []) as Array<{
    code: string; name_uk: string | null; name_en: string | null; flag_emoji: string | null
  }>

  const { data: gradingRows } = await supabase
    .from('collected_items')
    .select('grading_company')
    .eq('user_id', user.id)
    .not('grading_company', 'is', null)
  const gradingCompanies = [
    ...new Set(
      ((gradingRows ?? []) as { grading_company: string | null }[])
        .map(r => r.grading_company).filter(Boolean) as string[]
    )
  ].sort()

  const sort = sp.sort ?? 'country'
  const dir: 'asc' | 'desc' = sp.dir === 'desc' ? 'desc' : 'asc'

  if (sort === 'country') {
    countryOrder.sort((a, b) => {
      const an = countryMap.get(a)?.name ?? ''
      const bn = countryMap.get(b)?.name ?? ''
      return dir === 'asc' ? an.localeCompare(bn) : bn.localeCompare(an)
    })
  }

  type FlatGroup = { cKey: string; cg: CountryGroup; sg: SeriesGroup; col: CollectibleGroup }
  const flatGroups: FlatGroup[] = []
  for (const cKey of countryOrder) {
    const cg = countryMap.get(cKey)!
    for (const sg of cg.series) {
      for (const col of sg.collectibles) {
        flatGroups.push({ cKey, cg, sg, col })
      }
    }
  }

  if (sort === 'grade') {
    flatGroups.sort((a, b) => {
      const bestRank = (items: ItemFull[]) => {
        let best = 999
        for (const i of items) {
          const r = GRADE_ORDER[(i.grade ?? '').toUpperCase()] ?? 99
          if (r < best) best = r
        }
        return best
      }
      return dir === 'asc' ? bestRank(a.col.items) - bestRank(b.col.items)
                           : bestRank(b.col.items) - bestRank(a.col.items)
    })
  } else if (sort === 'slab_grade') {
    flatGroups.sort((a, b) => {
      const best = (items: ItemFull[]) => {
        let top = -1
        for (const i of items) { const n = parseInt(i.slab_grade ?? ''); if (!isNaN(n) && n > top) top = n }
        return top
      }
      return dir === 'asc' ? best(a.col.items) - best(b.col.items)
                           : best(b.col.items) - best(a.col.items)
    })
  } else if (sort === 'year') {
    flatGroups.sort((a, b) => {
      const ay = a.col.collectible?.min_year ?? 9999
      const by = b.col.collectible?.min_year ?? 9999
      return dir === 'asc' ? ay - by : by - ay
    })
  } else if (sort === 'price') {
    flatGroups.sort((a, b) => {
      const maxP = (items: ItemFull[]) => Math.max(0, ...items.map(i => i.price_value ?? 0))
      return dir === 'asc' ? maxP(a.col.items) - maxP(b.col.items)
                           : maxP(b.col.items) - maxP(a.col.items)
    })
  }

  const totalPages = Math.ceil(flatGroups.length / PAGE_SIZE)
  const page = Math.max(1, Math.min(parseInt(sp.page ?? '1') || 1, Math.max(1, totalPages)))
  const pageSlice = flatGroups.slice((page - 1) * PAGE_SIZE, page * PAGE_SIZE)

  const pageCountryOrder: string[] = []
  const pageCountryMap = new Map<string, CountryGroup>()
  for (const { cKey, cg, sg, col } of pageSlice) {
    if (!pageCountryMap.has(cKey)) {
      pageCountryMap.set(cKey, { name: cg.name, flag: cg.flag, series: [] })
      pageCountryOrder.push(cKey)
    }
    const pageCg = pageCountryMap.get(cKey)!
    let pageSg = pageCg.series.find(s => s.name === sg.name)
    if (!pageSg) { pageSg = { name: sg.name, collectibles: [] }; pageCg.series.push(pageSg) }
    pageSg.collectibles.push(col)
  }

  function getHref(p: number): string {
    const params = new URLSearchParams()
    if (sp.country)         params.set('country', sp.country)
    if (sp.category)        params.set('category', sp.category)
    if (sp.grading_company) params.set('grading_company', sp.grading_company)
    if (sp.slab_grade)      params.set('slab_grade', sp.slab_grade)
    if (sp.sort)            params.set('sort', sp.sort)
    if (sp.dir)             params.set('dir', sp.dir)
    params.set('page', String(p))
    return `/collection?${params.toString()}`
  }

  return (
    <div className="mx-auto max-w-5xl px-4 sm:px-6 lg:px-8 py-8">
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <div>
          <h1 className="text-2xl font-bold text-white">{t('title')}</h1>
          <p className="text-slate-400 text-sm mt-1">
            {t('subtitle', { unique: uniqueCount, total: totalItems })}
            {totalPages > 1 && (
              <span className="ml-2 text-slate-500">· сторінка {page} з {totalPages}</span>
            )}
          </p>
        </div>
        <Link href="/catalog" className="btn-primary">
          <Plus className="h-4 w-4" />
          {t('addBtn')}
        </Link>
      </div>

      <Suspense fallback={<div className="h-12 mb-5 card rounded-xl animate-pulse bg-white/5" />}>
        <CollectionFilters countries={filterCountries} gradingCompanies={gradingCompanies} />
      </Suspense>

      <div className="flex gap-5 items-start">
        <SortPanel
          sort={sort}
          dir={dir}
          country={sp.country}
          grading_company={sp.grading_company}
          slab_grade_filter={sp.slab_grade}
        />

        <div className="flex-1 min-w-0">

          {!allItems.length ? (
            <div className="text-center py-20 text-slate-600">
              <Star className="w-12 h-12 mx-auto mb-4 opacity-30" />
              <p className="font-medium">{t('emptyTitle')}</p>
              <p className="text-sm mt-1">{t('emptyDesc')}</p>
            </div>
          ) : (
            <div className="space-y-8">
              {pageCountryOrder.map(cKey => {
                const cg = pageCountryMap.get(cKey)!
                return (
                  <div key={cKey}>
                    {/* Country header */}
                    <h2 className="text-base font-semibold text-white pb-1 border-b-2 border-[#c9a96e] mb-4">
                      {cg.flag && <span className="mr-1.5">{cg.flag}</span>}
                      {cg.name}
                    </h2>

                    <div className="space-y-6">
                      {cg.series.map(sg => (
                        <div key={sg.name}>
                          {/* Series header */}
                          <h3 className="text-sm font-semibold text-[#c9a96e]/70 mb-2 pl-1">
                            {sg.name}
                          </h3>

                          <div className="space-y-3">
                            {sg.collectibles.map(colGroup => {
                              const c = colGroup.collectible
                              return (
                                <div key={c?.id} className="card overflow-hidden">
                                  {/* Collectible header row */}
                                  <div className="flex items-center gap-3 px-3 py-2 bg-white/[0.04] border-b border-white/10">
                                    {/* Thumbnails */}
                                    <div className="flex gap-1 shrink-0">
                                      {c?.obverse_thumbnail && (
                                        <div className="relative w-12 h-8 rounded overflow-hidden bg-white/5 border border-white/10">
                                          <Image src={c.obverse_thumbnail} alt="" fill className="object-contain" />
                                        </div>
                                      )}
                                      {c?.reverse_thumbnail && (
                                        <div className="relative w-12 h-8 rounded overflow-hidden bg-white/5 border border-white/10">
                                          <Image src={c.reverse_thumbnail} alt="" fill className="object-contain" />
                                        </div>
                                      )}
                                    </div>

                                    {/* Title + refs + count */}
                                    <div className="flex-1 min-w-0">
                                      <Link
                                        href={`/catalog/${c?.id}`}
                                        className="text-sm font-medium text-[#c9a96e] hover:text-[#c9a96e]/80 hover:underline truncate block"
                                      >
                                        {c?.title}
                                        {colGroup.refs && (
                                          <span className="ml-1.5 text-xs text-slate-500 font-normal">{colGroup.refs}</span>
                                        )}
                                      </Link>
                                      <p className="text-xs text-slate-500 mt-0.5">
                                        In my collection: <span className="font-semibold text-slate-300">{colGroup.totalQty}</span>
                                      </p>
                                    </div>
                                  </div>

                                  {/* Items */}
                                  <div className="divide-y divide-white/5">
                                    {colGroup.items.map((item) => {
                                      const v = item.collectible_variations
                                      const pics = (item.pictures as NumistaPicture[] | null) ?? []
                                      const hasPics = pics.length > 0
                                      const price = formatPrice(item.price_value, item.price_currency)
                                      const gradeColor = item.grade
                                        ? (GRADE_COLORS[item.grade.toUpperCase()] ?? 'bg-white/10 text-slate-400')
                                        : ''

                                      return (
                                        <div key={item.id}>
                                          {/* Variation sub-header */}
                                          {v && (
                                            <div className="px-4 pt-2 pb-0.5 text-xs text-slate-500 flex gap-2 flex-wrap">
                                              {(v.gregorian_year ?? v.year) && (
                                                <span className="font-medium text-slate-300">
                                                  {v.gregorian_year ?? v.year}
                                                </span>
                                              )}
                                              {v.comment && (
                                                <span className="text-slate-500">{v.comment}</span>
                                              )}
                                            </div>
                                          )}

                                          {/* Item detail row */}
                                          <div className="px-4 py-2 flex items-center gap-2 flex-wrap">
                                            <span className="text-sm font-medium text-slate-300 shrink-0">
                                              {item.quantity > 1 ? `${item.quantity}×` : '1×'}
                                            </span>
                                            {item.grade && (
                                              <span className={`text-xs font-semibold px-1.5 py-0.5 rounded ${gradeColor}`}>
                                                {item.grade}
                                              </span>
                                            )}

                                            {hasPics && (
                                              <Link
                                                href={`/collection/${item.id}`}
                                                title="є фото"
                                                className="text-slate-500 hover:text-[#c9a96e]"
                                              >
                                                <Camera className="h-3.5 w-3.5" />
                                              </Link>
                                            )}

                                            {(item.grading_company || item.slab_grade) && (
                                              <span className="inline-flex items-center gap-1 text-xs text-slate-400">
                                                <Award className="h-3 w-3 text-slate-600 shrink-0" />
                                                <span className="font-medium">{item.grading_company}</span>
                                                {item.slab_grade && (
                                                  <span className="font-semibold">{item.slab_grade}</span>
                                                )}
                                                {Array.isArray(item.grading_designations) && item.grading_designations.length > 0 && (
                                                  (item.grading_designations as { value: string }[]).map((d, i) => (
                                                    <span key={i} className="text-purple-300 font-medium bg-purple-500/10 px-1 rounded">
                                                      {d.value}
                                                    </span>
                                                  ))
                                                )}
                                                {item.slab_number && (
                                                  item.grading_company?.toUpperCase().includes('PMG') ? (
                                                    <a
                                                      href={`https://www.pmgnotes.com/certlookup/${item.slab_number}/${item.slab_grade ?? ''}/`}
                                                      target="_blank"
                                                      rel="noopener noreferrer"
                                                      className="text-[#c9a96e] hover:underline font-mono"
                                                    >
                                                      #{item.slab_number}
                                                    </a>
                                                  ) : (
                                                    <Link
                                                      href={`/collection/${item.id}`}
                                                      className="text-[#c9a96e] hover:underline font-mono"
                                                    >
                                                      #{item.slab_number}
                                                    </Link>
                                                  )
                                                )}
                                              </span>
                                            )}

                                            {item.serial_number && (
                                              <span className="inline-flex items-center gap-0.5 text-xs text-slate-400">
                                                <Hash className="h-3 w-3 text-slate-600 shrink-0" />
                                                <span className="font-mono">{item.serial_number}</span>
                                              </span>
                                            )}

                                            {price && (
                                              <span className="inline-flex items-center gap-0.5 text-xs text-slate-400">
                                                <DollarSign className="h-3 w-3 text-slate-600 shrink-0" />
                                                {price}
                                              </span>
                                            )}

                                            {item.private_comment && (
                                              <span className="inline-flex items-center gap-0.5 text-xs text-slate-500" title={item.private_comment}>
                                                <MessageSquare className="h-3 w-3 shrink-0" />
                                                <span className="truncate max-w-[120px]">{item.private_comment}</span>
                                              </span>
                                            )}

                                            {item.for_swap && (
                                              <span className="text-xs bg-amber-500/10 text-amber-400 px-1.5 py-0.5 rounded font-medium">
                                                Обмін
                                              </span>
                                            )}

                                            <span className="ml-auto flex items-center gap-1 shrink-0">
                                              <EditCollectedItemButton item={item} />
                                              <DeleteCollectedItemButton itemId={item.id} />
                                            </span>
                                          </div>
                                        </div>
                                      )
                                    })}
                                  </div>
                                </div>
                              )
                            })}
                          </div>
                        </div>
                      ))}
                    </div>
                  </div>
                )
              })}
              <Pagination currentPage={page} totalPages={totalPages} getHref={getHref} />
            </div>
          )}
        </div>
      </div>
    </div>
  )
}
