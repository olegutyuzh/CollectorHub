'use client'

import { useEffect, useMemo, useRef, useState } from 'react'
import { geoNaturalEarth1, geoPath, geoGraticule } from 'd3-geo'
import { feature, mesh } from 'topojson-client'
import { AlertCircle } from 'lucide-react'
import type { CountryStat } from './types'

// Fixed internal SVG coordinate space (projection is computed for this size)
const VW = 960
const VH = 500

// Numeric TopoJSON id → ISO-3166 alpha-2
const NUM_TO_A2: Record<number, string> = {
  4:'AF',8:'AL',12:'DZ',20:'AD',24:'AO',32:'AR',36:'AU',40:'AT',
  44:'BS',48:'BH',50:'BD',52:'BB',56:'BE',64:'BT',68:'BO',70:'BA',
  72:'BW',76:'BR',84:'BZ',90:'SB',96:'BN',100:'BG',104:'MM',108:'BI',
  112:'BY',116:'KH',120:'CM',124:'CA',132:'CV',140:'CF',144:'LK',148:'TD',
  152:'CL',156:'CN',170:'CO',174:'KM',178:'CG',180:'CD',188:'CR',191:'HR',
  192:'CU',196:'CY',203:'CZ',204:'BJ',208:'DK',212:'DM',214:'DO',
  218:'EC',222:'SV',226:'GQ',231:'ET',232:'ER',233:'EE',242:'FJ',246:'FI',
  250:'FR',266:'GA',268:'GE',270:'GM',276:'DE',288:'GH',300:'GR',308:'GD',
  320:'GT',324:'GN',328:'GY',332:'HT',340:'HN',344:'HK',348:'HU',
  356:'IN',360:'ID',364:'IR',368:'IQ',372:'IE',376:'IL',380:'IT',
  388:'JM',392:'JP',398:'KZ',400:'JO',404:'KE',408:'KP',410:'KR',
  414:'KW',417:'KG',418:'LA',422:'LB',426:'LS',428:'LV',430:'LR',
  434:'LY',438:'LI',440:'LT',442:'LU',446:'MO',450:'MG',454:'MW',
  458:'MY',462:'MV',466:'ML',470:'MT',478:'MR',480:'MU',484:'MX',
  496:'MN',498:'MD',499:'ME',504:'MA',508:'MZ',512:'OM',516:'NA',
  520:'NR',524:'NP',528:'NL',548:'VU',554:'NZ',558:'NI',562:'NE',
  566:'NG',578:'NO',586:'PK',591:'PA',598:'PG',600:'PY',604:'PE',
  608:'PH',616:'PL',620:'PT',630:'PR',634:'QA',642:'RO',643:'RU',
  646:'RW',682:'SA',686:'SN',688:'RS',694:'SL',703:'SK',704:'VN',
  705:'SI',706:'SO',710:'ZA',716:'ZW',724:'ES',728:'SS',736:'SD',
  740:'SR',752:'SE',756:'CH',760:'SY',762:'TJ',764:'TH',768:'TG',
  776:'TO',780:'TT',784:'AE',788:'TN',792:'TR',795:'TM',800:'UG',
  804:'UA',807:'MK',818:'EG',826:'GB',834:'TZ',840:'US',858:'UY',
  860:'UZ',862:'VE',887:'YE',894:'ZM',275:'PS',
}

// Geographic bounding boxes [[minLon, minLat], [maxLon, maxLat]]
const REGION_BOUNDS: Record<string, [[number, number], [number, number]]> = {
  '002': [[-20,-38],[52,38]],   // Africa
  '015': [[-18,15],[38,38]],    // N Africa
  '011': [[-18,4],[16,28]],     // W Africa
  '014': [[-11,-26],[52,12]],   // E Africa
  '017': [[8,-6],[32,24]],      // Central Africa
  '018': [[11,-38],[36,-17]],   // S Africa
  '150': [[-25,35],[45,72]],    // Europe
  '154': [[-25,51],[32,72]],    // N Europe
  '155': [[-10,42],[16,56]],    // W Europe
  '151': [[14,44],[40,60]],     // E Europe
  '039': [[-10,35],[38,47]],    // S Europe
  '021': [[-170,14],[-52,80]],  // N America
  '029': [[-90,10],[-59,28]],   // Caribbean
  '013': [[-93,7],[-77,19]],    // C America
  '005': [[-82,-56],[-34,13]],  // S America
  '142': [[26,-10],[180,80]],   // Asia
  '143': [[46,35],[88,56]],     // C Asia
  '030': [[73,18],[146,54]],    // E Asia
  '034': [[60,5],[98,40]],      // S Asia
  '035': [[92,-12],[141,22]],   // SE Asia
  '145': [[26,12],[63,45]],     // W Asia
  '009': [[110,-50],[180,25]],  // Oceania
  '053': [[110,-50],[180,-10]], // Aus + NZ
  '054': [[134,-24],[180,0]],   // Melanesia
  '057': [[130,0],[175,22]],    // Micronesia
  '061': [[165,-28],[210,-7]],  // Polynesia
}

const REGION_GROUPS = [
  { label: 'Африка', options: [
    { value: '002', label: 'Африка (всі)' },
    { value: '015', label: 'Північна Африка' },
    { value: '011', label: 'Західна Африка' },
    { value: '014', label: 'Східна Африка' },
    { value: '017', label: 'Центральна Африка' },
    { value: '018', label: 'Південна Африка' },
  ]},
  { label: 'Європа', options: [
    { value: '150', label: 'Європа (всі)' },
    { value: '154', label: 'Північна Європа' },
    { value: '155', label: 'Західна Європа' },
    { value: '151', label: 'Східна Європа' },
    { value: '039', label: 'Південна Європа' },
  ]},
  { label: 'Америка', options: [
    { value: '021', label: 'Північна Америка' },
    { value: '029', label: 'Карибський басейн' },
    { value: '013', label: 'Центральна Америка' },
    { value: '005', label: 'Південна Америка' },
  ]},
  { label: 'Азія', options: [
    { value: '142', label: 'Азія (всі)' },
    { value: '143', label: 'Центральна Азія' },
    { value: '030', label: 'Східна Азія' },
    { value: '034', label: 'Південна Азія' },
    { value: '035', label: 'Пд.-Східна Азія' },
    { value: '145', label: 'Західна Азія' },
  ]},
  { label: 'Океанія', options: [
    { value: '009', label: 'Океанія (всі)' },
    { value: '053', label: 'Австралія та НЗ' },
    { value: '054', label: 'Меланезія' },
    { value: '057', label: 'Мікронезія' },
    { value: '061', label: 'Полінезія' },
  ]},
]

function getColor(count: number): string {
  if (count === 0)  return '#132d4d'
  if (count <= 2)   return '#1d4ed8'
  if (count <= 5)   return '#3b82f6'
  if (count <= 15)  return '#f59e0b'
  if (count <= 30)  return '#f97316'
  return '#dc2626'
}

// Stable projection + path generator (fixed VW×VH coordinate space)
const PROJ = geoNaturalEarth1().scale(VW / 2 / Math.PI).translate([VW / 2, VH / 2])
const PATH = geoPath().projection(PROJ)
const GRATICULE_D = PATH(geoGraticule()()) ?? ''

function regionViewBox(region: string): string {
  if (region === 'world' || !REGION_BOUNDS[region]) return `0 0 ${VW} ${VH}`
  const [[minLon, minLat], [maxLon, maxLat]] = REGION_BOUNDS[region]

  // Sample points along all 4 edges of the geographic bounding box and project
  // each directly. PATH.bounds() can return world-extent for some clipping reasons,
  // so we use PROJ([lon, lat]) which is unambiguous.
  let x0 = Infinity, y0 = Infinity, x1 = -Infinity, y1 = -Infinity
  const N = 16
  for (let i = 0; i <= N; i++) {
    const t = i / N
    const lonMid = minLon + t * (maxLon - minLon)
    const latMid = minLat + t * (maxLat - minLat)
    const pts: [number, number][] = [
      [lonMid, minLat], [lonMid, maxLat],
      [minLon, latMid], [maxLon, latMid],
    ]
    for (const pt of pts) {
      const p = PROJ(pt)
      if (p && isFinite(p[0]) && isFinite(p[1])) {
        if (p[0] < x0) x0 = p[0]
        if (p[1] < y0) y0 = p[1]
        if (p[0] > x1) x1 = p[0]
        if (p[1] > y1) y1 = p[1]
      }
    }
  }

  if (!isFinite(x0) || x1 <= x0 || y1 <= y0) return `0 0 ${VW} ${VH}`
  const pad = 20
  return `${x0 - pad} ${y0 - pad} ${x1 - x0 + 2 * pad} ${y1 - y0 + 2 * pad}`
}

interface Props {
  countryStats: CountryStat[]
  onCountryClick: (code: string) => void
}

export default function WorldMap({ countryStats, onCountryClick }: Props) {
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const [topo,     setTopo]     = useState<any>(null)
  const [mapError, setMapError] = useState(false)
  const [region,   setRegion]   = useState('world')
  const [tooltip,  setTooltip]  = useState<{ x: number; y: number; text: string } | null>(null)
  const wrapRef = useRef<HTMLDivElement>(null)

  useEffect(() => {
    fetch('/countries-110m.json')
      .then(r => { if (!r.ok) throw new Error(); return r.json() })
      .then(setTopo)
      .catch(() => setMapError(true))
  }, [])

  // Build lookup maps from countryStats
  const countByA2 = useMemo(() => {
    const m: Record<string, number> = {}
    for (const c of countryStats) m[c.code] = c.count
    return m
  }, [countryStats])

  const infoByA2 = useMemo(() => {
    const m: Record<string, string> = {}
    for (const c of countryStats) m[c.code] = `${c.flag} ${c.name} · ${c.count} шт.`
    return m
  }, [countryStats])

  // Derive GeoJSON features from topo once it loads
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const countryFeatures: any[] = useMemo(() => {
    if (!topo) return []
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    return (feature(topo, topo.objects.countries) as any).features
  }, [topo])

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const borderD: string = useMemo(() => {
    if (!topo) return ''
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    return PATH(mesh(topo, topo.objects.countries, (a: any, b: any) => a !== b) as any) ?? ''
  }, [topo])

  // ViewBox drives zoom — pure computation from region
  const viewBox = useMemo(() => regionViewBox(region), [region])

  return (
    <div>
      {/* Region filter */}
      <div className="mb-3 flex items-center gap-2">
        <select
          value={region}
          onChange={e => setRegion(e.target.value)}
          className="text-xs bg-white/5 border border-white/10 text-slate-300 rounded-lg px-3 py-1.5 focus:outline-none focus:border-[#c9a96e]/50 hover:bg-white/10 transition-colors cursor-pointer"
        >
          <option value="world">Фільтр за регіоном</option>
          {REGION_GROUPS.flatMap(g => [
            <option key={`hdr-${g.label}`} disabled value="">— {g.label} —</option>,
            ...g.options.map(o => <option key={o.value} value={o.value}>{'  '}{o.label}</option>),
          ])}
        </select>
        {region !== 'world' && (
          <button onClick={() => setRegion('world')}
            className="text-xs text-slate-500 hover:text-slate-300 transition-colors underline underline-offset-2">
            скинути
          </button>
        )}
      </div>

      {/* Map */}
      <div ref={wrapRef} className="relative w-full">
        {mapError ? (
          <div className="flex items-center gap-2 text-sm text-amber-400 bg-amber-500/10 border border-amber-500/20 rounded-lg p-4">
            <AlertCircle className="h-4 w-4 flex-shrink-0" />
            Не вдалося завантажити карту
          </div>
        ) : (
          <>
            <svg
              viewBox={viewBox}
              className="w-full"
              style={{ background: '#0a1929', borderRadius: 8, display: 'block' }}
            >
              {/* Graticule */}
              <path d={GRATICULE_D} fill="none" stroke="#0f2a4a" strokeWidth={0.4} />

              {/* Countries */}
              {countryFeatures.map((d, i) => {
                const a2    = NUM_TO_A2[parseInt(d.id)]
                const count = a2 ? (countByA2[a2] ?? 0) : 0
                const info  = a2 ? infoByA2[a2] : null
                const d_str = PATH(d) ?? ''
                return (
                  <path
                    key={d.id ?? i}
                    d={d_str}
                    fill={getColor(count)}
                    stroke="#07111f"
                    strokeWidth={0.5}
                    style={{ cursor: info ? 'pointer' : 'default' }}
                    onMouseMove={info ? (e) => {
                      const rect = wrapRef.current?.getBoundingClientRect()
                      if (rect) setTooltip({ x: e.clientX - rect.left + 12, y: e.clientY - rect.top - 36, text: info + ' →' })
                    } : undefined}
                    onMouseLeave={info ? () => setTooltip(null) : undefined}
                    onClick={info ? () => onCountryClick(a2!) : undefined}
                  />
                )
              })}

              {/* Country borders */}
              {borderD && <path d={borderD} fill="none" stroke="#07111f" strokeWidth={0.6} />}
            </svg>

            {tooltip && (
              <div
                className="absolute pointer-events-none bg-[#0d1f33] border border-white/10 text-white text-xs rounded-md px-2.5 py-1.5 whitespace-nowrap z-10 shadow-xl"
                style={{ left: tooltip.x, top: tooltip.y }}
              >
                {tooltip.text}
              </div>
            )}
          </>
        )}
      </div>
    </div>
  )
}
