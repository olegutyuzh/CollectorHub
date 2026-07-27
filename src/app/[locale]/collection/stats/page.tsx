import { createServerSupabaseClient } from '@/lib/supabase-server'
import { redirect } from 'next/navigation'
import { Globe } from 'lucide-react'
import { getTranslations } from 'next-intl/server'
import { StatsCharts } from './StatsCharts'
import type {
  AllStats, CountryStat, IssuerStat, GradeStat,
  YearStat, GradingCompanyStat, SlabGradeStat, AwardIssueStat,
} from './types'

const GRADE_COLORS: Record<string, string> = {
  'UNC':'#10b981','AU':'#34d399','XF':'#3b82f6','VF':'#93c5fd',
  'F':'#f59e0b','VG':'#fb923c','G':'#ef4444',
}
const GRADE_ORDER = ['UNC','AU','XF','VF','F','VG','G']

export default async function StatsPage() {
  const t = await getTranslations('Stats')
  const supabase = await createServerSupabaseClient()

  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/auth/login')

  // ── Award country distribution (global IBNS data) ───────────────────────────
  const { data: awardRows } = await supabase
    .from('collectible_awards')
    .select(`
      award_type,
      collectibles!inner(
        issuer_name,
        countries(flag_emoji)
      )
    `)
    .eq('organization_id', 1)

  type AwardRow = {
    award_type: string
    collectibles: {
      issuer_name: string | null
      countries:   { flag_emoji: string | null } | null
    } | null
  }

  const byAwardWinner  = new Map<string, AwardIssueStat>()
  const byAwardNominee = new Map<string, AwardIssueStat>()

  for (const row of (awardRows ?? []) as unknown as AwardRow[]) {
    const issuer = row.collectibles?.issuer_name ?? 'Unknown'
    const flag   = row.collectibles?.countries?.flag_emoji ?? ''
    const map    = row.award_type === 'winner' ? byAwardWinner : byAwardNominee
    const ex     = map.get(issuer)
    if (ex) ex.count++
    else map.set(issuer, { name: issuer, flag, count: 1 })
  }

  const awardWinners  = [...byAwardWinner.values()].sort((a, b) => b.count - a.count)
  const awardNominees = [...byAwardNominee.values()].sort((a, b) => b.count - a.count)

  // ── User collection data ─────────────────────────────────────────────────────
  const { data: rawItems } = await supabase
    .from('collected_items')
    .select(`
      quantity, grade, for_swap, grading_company, slab_grade, price_value,
      collectibles!inner(
        id, issuer_name, min_year,
        countries(code, name_uk, name_en, flag_emoji)
      )
    `)
    .eq('user_id', user.id)

  type RawItem = {
    quantity:        number
    grade:           string | null
    for_swap:        boolean
    grading_company: string | null
    slab_grade:      string | null
    price_value:     number | null
    collectibles: {
      id:          number
      issuer_name: string | null
      min_year:    number | null
      countries:   { code: string | null; name_uk: string | null; name_en: string | null; flag_emoji: string | null } | null
    } | null
  }
  const items = (rawItems ?? []) as unknown as RawItem[]

  const byCountry        = new Map<string, CountryStat>()
  const byIssuer         = new Map<string, IssuerStat>()
  const byGrade          = new Map<string, number>()
  const byYear           = new Map<number, number>()
  const byGradingCompany = new Map<string, number>()
  const bySlabGrade      = new Map<string, number>()
  let totalItems = 0, totalTypes = 0, totalForSwap = 0

  for (const item of items) {
    const col     = item.collectibles
    const country = col?.countries
    const qty     = item.quantity ?? 1

    totalItems += qty
    totalTypes++
    if (item.for_swap) totalForSwap += qty

    if (item.grade) {
      const g = item.grade.toUpperCase()
      byGrade.set(g, (byGrade.get(g) ?? 0) + qty)
    }
    if (item.grading_company) {
      const co = item.grading_company.trim()
      byGradingCompany.set(co, (byGradingCompany.get(co) ?? 0) + 1)
    }
    if (item.slab_grade) {
      const sg = item.slab_grade.trim()
      bySlabGrade.set(sg, (bySlabGrade.get(sg) ?? 0) + 1)
    }
    if (country?.code) {
      const spent = item.price_value != null ? Number(item.price_value) * qty : 0
      const ex = byCountry.get(country.code)
      if (ex) {
        ex.count += qty
        if (item.price_value != null) ex.totalSpent = (ex.totalSpent ?? 0) + spent
      } else {
        byCountry.set(country.code, {
          code:  country.code,
          name:  country.name_uk ?? country.name_en ?? country.code,
          flag:  country.flag_emoji ?? '',
          count: qty,
          totalSpent: item.price_value != null ? spent : undefined,
        })
      }
    }
    if (col?.issuer_name) {
      const ex = byIssuer.get(col.issuer_name)
      if (ex) { ex.count += qty }
      else byIssuer.set(col.issuer_name, { name: col.issuer_name, count: qty })
    }
    if (col?.min_year) {
      byYear.set(col.min_year, (byYear.get(col.min_year) ?? 0) + qty)
    }
  }

  const gradeStats: GradeStat[] = GRADE_ORDER
    .filter(g => byGrade.has(g))
    .map(g => ({ grade: g, count: byGrade.get(g)!, color: GRADE_COLORS[g] ?? '#9ca3af' }))

  const yearEntries = [...byYear.entries()].sort((a, b) => a[0] - b[0])
  const yearStats: YearStat[] = []
  if (yearEntries.length > 0) {
    const minY = yearEntries[0][0]
    const maxY = yearEntries[yearEntries.length - 1][0]
    for (let y = minY; y <= maxY; y++) {
      yearStats.push({ year: y, count: byYear.get(y) ?? 0 })
    }
  }

  const slabGradeStats: SlabGradeStat[] = [...bySlabGrade.entries()]
    .map(([grade, count]) => ({ grade, count }))
    .sort((a, b) => (parseFloat(b.grade) || 0) - (parseFloat(a.grade) || 0))

  const gradingCompanyStats: GradingCompanyStat[] = [...byGradingCompany.entries()]
    .map(([company, count]) => ({ company, count }))
    .sort((a, b) => b.count - a.count)

  const countryStatsArr = [...byCountry.values()].sort((a, b) => b.count - a.count)
  for (const c of countryStatsArr) {
    if (c.totalSpent != null && c.count > 0) c.avgValue = c.totalSpent / c.count
  }

  const stats: AllStats = {
    summary: { items: totalItems, types: totalTypes, countries: byCountry.size, forSwap: totalForSwap },
    countryStats:        countryStatsArr,
    issuerStats:         [...byIssuer.values()].sort((a, b) => b.count - a.count),
    gradeStats,
    yearStats,
    gradingCompanyStats,
    slabGradeStats,
    awardWinners,
    awardNominees,
  }

  return (
    <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 py-8">
      <div className="flex items-center gap-3 mb-6">
        <Globe className="h-6 w-6 text-[#c9a96e]" />
        <h1 className="text-2xl font-bold text-white">{t('title')}</h1>
      </div>
      <StatsCharts stats={stats} />
    </div>
  )
}
