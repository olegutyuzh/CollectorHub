'use client'

import dynamic from 'next/dynamic'
import { useState, useCallback } from 'react'
import { useRouter } from '@/i18n/navigation'
import { Link } from '@/i18n/navigation'
import { useTranslations } from 'next-intl'
import type { AllStats, GradeStat, YearStat } from './types'

const WorldMap = dynamic(() => import('./WorldMap'), {
  ssr: false,
  loading: () => (
    <div className="w-full bg-white/5 rounded-lg animate-pulse" style={{ paddingBottom: '50%' }} />
  ),
})

function getColor(count: number): string {
  if (count === 0)  return '#1e3a5f'
  if (count <= 2)   return '#1d4ed8'
  if (count <= 5)   return '#3b82f6'
  if (count <= 15)  return '#f59e0b'
  if (count <= 30)  return '#f97316'
  return '#dc2626'
}

// ── Donut chart ────────────────────────────────────────────────────────────────
function DonutChart({ data, noDataLabel, totalLabel, onSegmentClick }: {
  data: GradeStat[]
  noDataLabel: string
  totalLabel: string
  onSegmentClick?: (key: string) => void
}) {
  const [hovered, setHovered] = useState<string | null>(null)
  const total = data.reduce((s, d) => s + d.count, 0)
  if (total === 0) return <p className="text-sm text-slate-500">{noDataLabel}</p>

  const cx = 70, cy = 70, R = 55, ri = 32
  let angle = -Math.PI / 2
  const arcs = data.map(d => {
    const frac = d.count / total
    const start = angle; angle += frac * 2 * Math.PI; const end = angle
    const large = frac > 0.5 ? 1 : 0
    const x1 = cx + R  * Math.cos(start), y1 = cy + R  * Math.sin(start)
    const x2 = cx + R  * Math.cos(end),   y2 = cy + R  * Math.sin(end)
    const x3 = cx + ri * Math.cos(end),   y3 = cy + ri * Math.sin(end)
    const x4 = cx + ri * Math.cos(start), y4 = cy + ri * Math.sin(start)
    return {
      ...d,
      path: `M${x1.toFixed(2)},${y1.toFixed(2)} A${R},${R},0,${large},1,${x2.toFixed(2)},${y2.toFixed(2)} L${x3.toFixed(2)},${y3.toFixed(2)} A${ri},${ri},0,${large},0,${x4.toFixed(2)},${y4.toFixed(2)} Z`,
    }
  })

  return (
    <div className="flex items-center gap-5">
      <svg width="140" height="140" viewBox="0 0 140 140" className="flex-shrink-0">
        {arcs.map(a => (
          <path
            key={a.grade}
            d={a.path}
            fill={a.color}
            stroke="#07111f"
            strokeWidth="1.5"
            opacity={hovered && hovered !== a.grade ? 0.45 : 1}
            style={{ cursor: onSegmentClick ? 'pointer' : 'default', transition: 'opacity 0.15s' }}
            onMouseEnter={() => setHovered(a.grade)}
            onMouseLeave={() => setHovered(null)}
            onClick={() => onSegmentClick?.(a.grade)}
          />
        ))}
        <text x={cx} y={cy - 7} textAnchor="middle" fontSize="10" fill="#94a3b8">{totalLabel}</text>
        <text x={cx} y={cx + 10} textAnchor="middle" fontSize="20" fontWeight="bold" fill="#f1f5f9">{total}</text>
      </svg>
      <div className="space-y-1.5">
        {arcs.map(a => (
          <div
            key={a.grade}
            className={`flex items-center gap-2 text-sm rounded px-1 -mx-1 transition-colors ${onSegmentClick ? 'cursor-pointer hover:bg-white/10' : ''} ${hovered === a.grade ? 'bg-white/10' : ''}`}
            onMouseEnter={() => setHovered(a.grade)}
            onMouseLeave={() => setHovered(null)}
            onClick={() => onSegmentClick?.(a.grade)}
          >
            <span className="w-3 h-3 rounded-sm flex-shrink-0" style={{ background: a.color }} />
            <span className="font-medium text-slate-200 truncate max-w-[120px]" title={a.grade}>{a.grade}</span>
            <span className="text-slate-400 ml-auto pl-2">{a.count}</span>
            <span className="text-slate-500 text-xs">({Math.round(a.count / total * 100)}%)</span>
          </div>
        ))}
      </div>
    </div>
  )
}

// ── Year bar chart ─────────────────────────────────────────────────────────────
function YearChart({ data }: { data: YearStat[] }) {
  const [hovered, setHovered] = useState<YearStat | null>(null)
  if (data.length === 0) return <p className="text-sm text-slate-500">Немає даних</p>

  const maxCount = Math.max(...data.map(d => d.count))
  const BAR_W    = Math.max(8, Math.min(28, Math.floor(600 / data.length) - 3))
  const H        = 120
  const CHART_W  = data.length * (BAR_W + 3)

  return (
    <div className="overflow-x-auto">
      <div style={{ minWidth: CHART_W + 40 }} className="relative">
        <svg width={CHART_W + 8} height={H + 40} className="overflow-visible">
          {data.map((d, i) => {
            const barH = Math.max(2, Math.round((d.count / maxCount) * H))
            const x    = i * (BAR_W + 3)
            const y    = H - barH
            const isHov = hovered?.year === d.year
            return (
              <g key={d.year} onMouseEnter={() => setHovered(d)} onMouseLeave={() => setHovered(null)}>
                <rect x={x} y={y} width={BAR_W} height={barH} rx={3}
                  fill={isHov ? '#c9a96e' : '#1d4ed8'}
                  className="transition-colors duration-100"
                />
                {(d.year % 5 === 0 || i === 0 || i === data.length - 1) && (
                  <text x={x + BAR_W / 2} y={H + 16} textAnchor="middle" fontSize="10" fill="#64748b">
                    {d.year}
                  </text>
                )}
              </g>
            )
          })}
        </svg>
        {hovered && (
          <div className="absolute top-0 left-1/2 -translate-x-1/2 bg-[#0d1f33] border border-white/10 text-white text-xs rounded-md px-2.5 py-1.5 pointer-events-none whitespace-nowrap shadow-xl z-10">
            {hovered.year} — {hovered.count} шт.
          </div>
        )}
      </div>
    </div>
  )
}

// ── Main client component ──────────────────────────────────────────────────────
export function StatsCharts({ stats }: { stats: AllStats }) {
  const t = useTranslations('Stats')
  const router = useRouter()
  const { summary, countryStats, issuerStats, gradeStats, yearStats, gradingCompanyStats, slabGradeStats } = stats

  const handleCountryClick = useCallback((code: string) => {
    router.push(`/collection?country=${code}`)
  }, [router])

  const maxCount       = countryStats[0]?.count ?? 1
  const maxIssuerCount = issuerStats[0]?.count   ?? 1

  const COMPANY_COLORS = ['#6366f1','#ec4899','#f59e0b','#10b981','#3b82f6','#ef4444','#8b5cf6','#14b8a6','#f97316','#06b6d4']
  const companyData: GradeStat[] = gradingCompanyStats.map((g, i) => ({
    grade: g.company,
    count: g.count,
    color: COMPANY_COLORS[i % COMPANY_COLORS.length],
  }))

  return (
    <>
      {/* Summary cards */}
      <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 mb-6">
        {[
          { label: t('items'),     value: summary.items     },
          { label: t('unique'),    value: summary.types     },
          { label: t('countries'), value: summary.countries },
          { label: t('forSwap'),   value: summary.forSwap   },
        ].map(({ label, value }) => (
          <div key={label} className="card text-center py-5">
            <p className="text-3xl font-bold text-[#c9a96e]">{value}</p>
            <p className="text-sm text-slate-400 mt-1">{label}</p>
          </div>
        ))}
      </div>

      {/* World map */}
      <div className="card p-4 mb-6">
        <h2 className="text-sm font-semibold text-slate-300 mb-3">{t('mapTitle')}</h2>
        <WorldMap countryStats={countryStats} onCountryClick={handleCountryClick} />
        <div className="flex items-center gap-4 mt-3 flex-wrap">
          {[
            { color: '#1e3a5f', label: '0' },
            { color: '#1d4ed8', label: '1-2' },
            { color: '#3b82f6', label: '3-5' },
            { color: '#f59e0b', label: '6-15' },
            { color: '#f97316', label: '16-30' },
            { color: '#dc2626', label: '31+' },
          ].map(({ color, label }) => (
            <div key={label} className="flex items-center gap-1.5 text-xs text-slate-500">
              <span className="w-4 h-3 rounded-sm inline-block border border-white/10" style={{ background: color }} />
              {label}
            </div>
          ))}
        </div>
      </div>

      {/* Year distribution */}
      {yearStats.length > 0 && (
        <div className="card p-5 mb-6">
          <div className="flex items-center justify-between mb-3">
            <h2 className="text-sm font-semibold text-slate-300">По роках випуску</h2>
            <span className="text-xs text-slate-500">
              {yearStats[0]?.year} – {yearStats[yearStats.length - 1]?.year}
              {' · '}{yearStats.filter(y => y.count > 0).length} різних років
            </span>
          </div>
          <YearChart data={yearStats} />
        </div>
      )}

      <div className="grid md:grid-cols-2 gap-6">
        {/* Grade donut */}
        <div className="card p-5">
          <h2 className="text-sm font-semibold text-slate-300 mb-4">{t('gradesTitle')}</h2>
          <DonutChart data={gradeStats} noDataLabel={t('noData')} totalLabel={t('total')} />
        </div>

        {/* Top issuers */}
        <div className="card p-5">
          <h2 className="text-sm font-semibold text-slate-300 mb-4">Топ емітентів</h2>
          {issuerStats.length === 0 ? (
            <p className="text-sm text-slate-500">{t('noData')}</p>
          ) : (
            <div className="space-y-2">
              {issuerStats.slice(0, 12).map((iss, i) => (
                <div key={iss.name} className="flex items-center gap-2">
                  <span className="text-xs text-slate-500 w-5 text-right">{i + 1}</span>
                  <span className="text-sm text-slate-200 flex-1 truncate">{iss.name}</span>
                  <div className="flex items-center gap-2 flex-shrink-0">
                    <div className="w-20 bg-white/10 rounded-full h-1.5 overflow-hidden">
                      <div
                        className="h-1.5 rounded-full bg-[#c9a96e] transition-all"
                        style={{ width: `${Math.round((iss.count / maxIssuerCount) * 100)}%` }}
                      />
                    </div>
                    <span className="text-sm font-semibold text-white w-8 text-right">{iss.count}</span>
                  </div>
                </div>
              ))}
              {issuerStats.length > 12 && (
                <p className="text-xs text-slate-500 pt-1">+{issuerStats.length - 12}</p>
              )}
            </div>
          )}
        </div>

        {/* Grading companies */}
        {gradingCompanyStats.length > 0 && (
          <div className="card p-5">
            <h2 className="text-sm font-semibold text-slate-300 mb-1">Грейдингові компанії</h2>
            <p className="text-xs text-slate-500 mb-4">
              {gradingCompanyStats.reduce((s, g) => s + g.count, 0)} слябованих банкнот · натисніть для фільтру
            </p>
            <DonutChart
              data={companyData}
              noDataLabel="Немає даних"
              totalLabel="Разом"
              onSegmentClick={(company) => router.push(`/collection?grading_company=${encodeURIComponent(company)}`)}
            />
          </div>
        )}

        {/* Slab grade bars */}
        {slabGradeStats.length > 0 && (
          <div className="card p-5">
            <h2 className="text-sm font-semibold text-slate-300 mb-1">Розподіл по якості (сляби)</h2>
            <p className="text-xs text-slate-500 mb-4">
              {slabGradeStats.length} різних грейдів · {slabGradeStats.reduce((s, g) => s + g.count, 0)} шт. · натисніть для фільтру
            </p>
            <div className="space-y-2">
              {slabGradeStats.map((g) => {
                const maxSG = slabGradeStats[0]?.count ?? 1
                const num   = parseFloat(g.grade) || 0
                const color = num >= 65 ? '#10b981' : num >= 60 ? '#3b82f6' : num >= 50 ? '#f59e0b' : '#ef4444'
                return (
                  <button
                    key={g.grade}
                    onClick={() => router.push(`/collection?slab_grade=${encodeURIComponent(g.grade)}`)}
                    className="w-full flex items-center gap-2 rounded-lg px-2 py-1 -mx-2 hover:bg-white/8 transition-colors cursor-pointer text-left"
                  >
                    <span
                      className="text-xs font-mono font-semibold w-14 text-right px-1.5 py-0.5 rounded flex-shrink-0"
                      style={{ color, background: color + '25' }}
                    >
                      {g.grade}
                    </span>
                    <div className="flex-1 bg-white/10 rounded-full h-2 overflow-hidden">
                      <div
                        className="h-2 rounded-full transition-all"
                        style={{ width: `${Math.round((g.count / maxSG) * 100)}%`, background: color }}
                      />
                    </div>
                    <span className="text-sm font-semibold text-white w-6 text-right">{g.count}</span>
                  </button>
                )
              })}
            </div>
          </div>
        )}

        {/* Top countries */}
        <div className="card p-5">
          <h2 className="text-sm font-semibold text-slate-300 mb-4">{t('topCountriesTitle')}</h2>
          {countryStats.length === 0 ? (
            <p className="text-sm text-slate-500">{t('noData')}</p>
          ) : (
            <div className="space-y-2">
              {countryStats.slice(0, 12).map((c, i) => (
                <Link
                  key={c.code}
                  href={`/collection?country=${c.code}`}
                  className="flex items-center gap-2 group hover:bg-white/8 rounded-lg px-1 -mx-1 transition-colors"
                >
                  <span className="text-xs text-slate-500 w-5 text-right">{i + 1}</span>
                  <span className="text-base w-6 text-center leading-none">{c.flag}</span>
                  <span className="text-sm text-slate-200 flex-1 truncate group-hover:text-[#c9a96e]">{c.name}</span>
                  <div className="flex items-center gap-2 flex-shrink-0">
                    <div className="w-20 bg-white/10 rounded-full h-1.5 overflow-hidden">
                      <div
                        className="h-1.5 rounded-full transition-all"
                        style={{ width: `${Math.round((c.count / maxCount) * 100)}%`, background: getColor(c.count) }}
                      />
                    </div>
                    <span className="text-sm font-semibold text-white w-8 text-right">{c.count}</span>
                  </div>
                </Link>
              ))}
              {countryStats.length > 12 && (
                <p className="text-xs text-slate-500 pt-1">+{countryStats.length - 12}</p>
              )}
            </div>
          )}
        </div>
      </div>
    </>
  )
}
