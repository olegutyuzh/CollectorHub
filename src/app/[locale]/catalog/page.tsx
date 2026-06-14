import { createServerSupabaseClient } from '@/lib/supabase-server'
import { CollectibleCard } from '@/components/ui/CollectibleCard'
import { CatalogFilters } from '@/components/ui/CatalogFilters'
import { CatalogEmpty } from '@/components/ui/CatalogEmpty'
import { Pagination } from '@/components/ui/Pagination'
import { Suspense } from 'react'
import { getTranslations } from 'next-intl/server'
import type { CollectibleWithRelations, Country, CollectibleAward } from '@/types/database'

const PAGE_SIZE = 10

interface SearchParams {
  q?: string
  issuer?: string
  year_from?: string
  year_to?: string
  country?: string
  currency?: string
  category?: string
  page?: string
}

export default async function CatalogPage({ searchParams }: { searchParams: Promise<SearchParams> }) {
  const sp = await searchParams
  const supabase = await createServerSupabaseClient()
  const t = await getTranslations('Catalog')

  // Resolve country ID once (used in both count + data queries)
  let countryId: number | null = null
  if (sp.country) {
    const { data: cr } = await supabase
      .from('countries')
      .select('id')
      .eq('code', sp.country)
      .single() as unknown as { data: Pick<Country, 'id'> | null }
    countryId = cr?.id ?? null
  }

  const currencyId = sp.currency ? parseInt(sp.currency) : null

  // ── Count query ────────────────────────────────────────────────────────────
  let countQ = supabase
    .from('collectibles')
    .select('*', { count: 'exact', head: true })
  if (sp.q)        countQ = countQ.ilike('title', `%${sp.q}%`)
  if (sp.issuer)   countQ = countQ.ilike('issuer_name', `%${sp.issuer}%`)
  if (sp.year_from) countQ = countQ.gte('min_year', parseInt(sp.year_from))
  if (sp.year_to)   countQ = countQ.lte('max_year', parseInt(sp.year_to))
  if (countryId)    countQ = countQ.eq('country_id', countryId)
  if (currencyId)   countQ = countQ.eq('currency_id', currencyId)
  if (sp.category)  countQ = countQ.eq('category_code', sp.category)
  const { count: totalCount } = await countQ

  const totalPages = Math.ceil((totalCount ?? 0) / PAGE_SIZE)
  const page = Math.max(1, Math.min(parseInt(sp.page ?? '1') || 1, Math.max(1, totalPages)))
  const offset = (page - 1) * PAGE_SIZE

  // ── Data query (paginated) ─────────────────────────────────────────────────
  let query = supabase
    .from('collectibles')
    .select('*, countries(*)')
    .order('id', { ascending: false })
  if (sp.q)        query = query.ilike('title', `%${sp.q}%`)
  if (sp.issuer)   query = query.ilike('issuer_name', `%${sp.issuer}%`)
  if (sp.year_from) query = query.gte('min_year', parseInt(sp.year_from))
  if (sp.year_to)   query = query.lte('max_year', parseInt(sp.year_to))
  if (countryId)    query = query.eq('country_id', countryId)
  if (currencyId)   query = query.eq('currency_id', currencyId)
  if (sp.category)  query = query.eq('category_code', sp.category)
  const { data: collectibles } = await query.range(offset, offset + PAGE_SIZE - 1)

  // ── Issuers for filter dropdown ────────────────────────────────────────────
  const { data: issuerRows } = await supabase
    .from('collectibles')
    .select('issuer_name')
    .not('issuer_name', 'is', null)
    .order('issuer_name')
    .limit(2000)

  const issuers = [
    ...new Set(
      ((issuerRows ?? []) as { issuer_name: string | null }[])
        .map(r => r.issuer_name)
        .filter(Boolean) as string[]
    )
  ].sort()

  // ── Countries for filter dropdown ──────────────────────────────────────────
  const { data: countriesRaw } = await supabase
    .from('countries')
    .select('code, name_uk, name_en, flag_emoji')
    .order('name_uk')
  const countries = (countriesRaw ?? []) as Array<{
    code: string; name_uk: string | null; name_en: string | null; flag_emoji: string | null
  }>

  // ── Currencies for filter dropdown ─────────────────────────────────────────
  const { data: currenciesRaw } = await supabase
    .from('currencies')
    .select('id, name_en, name_uk, code')
    .order('name_en')
  const currencies = (currenciesRaw ?? []) as Array<{
    id: number; name_uk: string | null; name_en: string | null; code: string | null
  }>

  // ── Awards for current page ────────────────────────────────────────────────
  const pageIds = ((collectibles ?? []) as CollectibleWithRelations[]).map(c => c.id)
  const { data: awardsRaw } = pageIds.length
    ? await supabase.from('collectible_awards').select('*').in('collectible_id', pageIds)
    : { data: [] }
  // Keep best award per collectible: winner > nominee
  const awardMap = new Map<number, CollectibleAward>()
  for (const a of (awardsRaw ?? []) as CollectibleAward[]) {
    const existing = awardMap.get(a.collectible_id)
    if (!existing || (a.award_type === 'winner' && existing.award_type !== 'winner')) {
      awardMap.set(a.collectible_id, a)
    }
  }

  const hasSearch = !!(sp.q || sp.issuer || sp.year_from || sp.year_to || sp.country || sp.currency || sp.category)

  // ── Href builder for pagination ────────────────────────────────────────────
  function getHref(p: number): string {
    const params = new URLSearchParams()
    if (sp.q)         params.set('q', sp.q)
    if (sp.issuer)    params.set('issuer', sp.issuer)
    if (sp.year_from) params.set('year_from', sp.year_from)
    if (sp.year_to)   params.set('year_to', sp.year_to)
    if (sp.country)   params.set('country', sp.country)
    if (sp.currency)  params.set('currency', sp.currency)
    if (sp.category)  params.set('category', sp.category)
    params.set('page', String(p))
    return `/catalog?${params.toString()}`
  }

  return (
    <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 py-8">
      <div className="mb-6">
        <h1 className="text-2xl font-bold text-white mb-1">{t('title')}</h1>
        <p className="text-slate-400 text-sm">
          {t('count', { count: totalCount ?? 0 })}
          {totalPages > 1 && (
            <span className="ml-2 text-slate-500">· сторінка {page} з {totalPages}</span>
          )}
        </p>
      </div>

      <Suspense fallback={<div className="h-16 mb-8 card rounded-xl animate-pulse bg-white/5" />}>
        <CatalogFilters issuers={issuers} countries={countries} currencies={currencies} />
      </Suspense>

      {!collectibles?.length ? (
        <CatalogEmpty hasSearch={hasSearch} />
      ) : (
        <>
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-4">
            {(collectibles as CollectibleWithRelations[]).map((c) => (
              <CollectibleCard key={c.id} collectible={c} award={awardMap.get(c.id) ?? null} />
            ))}
          </div>
          <Pagination currentPage={page} totalPages={totalPages} getHref={getHref} />
        </>
      )}
    </div>
  )
}
