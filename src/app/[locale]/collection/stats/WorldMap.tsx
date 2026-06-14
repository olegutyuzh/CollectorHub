'use client'

import { useEffect, useRef, useState } from 'react'
import { select } from 'd3-selection'
import { geoNaturalEarth1, geoPath, geoGraticule } from 'd3-geo'
import { feature, mesh } from 'topojson-client'
import { AlertCircle } from 'lucide-react'
import type { CountryStat } from './types'

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

function getColor(count: number): string {
  if (count === 0)  return '#132d4d'
  if (count <= 2)   return '#1d4ed8'
  if (count <= 5)   return '#3b82f6'
  if (count <= 15)  return '#f59e0b'
  if (count <= 30)  return '#f97316'
  return '#dc2626'
}

interface Props {
  countryStats: CountryStat[]
  onCountryClick: (code: string) => void
}

export default function WorldMap({ countryStats, onCountryClick }: Props) {
  const mapRef       = useRef<SVGSVGElement>(null)
  const containerRef = useRef<HTMLDivElement>(null)
  const renderedRef  = useRef(false)
  const [tooltip, setTooltip] = useState<{ x: number; y: number; html: string } | null>(null)
  const [mapError, setMapError] = useState(false)

  useEffect(() => {
    if (renderedRef.current) return
    renderedRef.current = true

    const countByA2: Record<string, number> = {}
    const infoByA2:  Record<string, string>  = {}
    for (const c of countryStats) {
      countByA2[c.code] = c.count
      infoByA2[c.code]  = `${c.flag} ${c.name} · ${c.count} шт.`
    }

    async function render() {
      let world: unknown
      try {
        const res = await fetch('/countries-110m.json')
        if (!res.ok) throw new Error('geo fetch failed')
        world = await res.json()
      } catch {
        setMapError(true)
        return
      }

      if (!mapRef.current || !containerRef.current) return

      const el = containerRef.current
      const W  = el.clientWidth || 800
      const H  = Math.round(W * 0.5)

      const svg = select(mapRef.current)
        .attr('width', W).attr('height', H)
        .style('background', '#0a1929').style('border-radius', '8px')
      svg.selectAll('*').remove()

      const proj = geoNaturalEarth1().scale(W / 2 / Math.PI).translate([W / 2, H / 2])
      const path = geoPath().projection(proj)
      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      const countries: any = feature(world as any, (world as any).objects.countries)

      svg.selectAll('path.country')
        .data(countries.features).join('path').attr('class', 'country')
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .attr('d', path as any)
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .attr('fill', (d: any) => { const a2 = NUM_TO_A2[parseInt(d.id)]; return getColor(a2 ? (countByA2[a2] ?? 0) : 0) })
        .attr('stroke', '#07111f').attr('stroke-width', 0.5)
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .style('cursor', (d: any) => { const a2 = NUM_TO_A2[parseInt(d.id)]; return a2 && infoByA2[a2] ? 'pointer' : 'default' })
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .on('mousemove', (event: MouseEvent, d: any) => {
          const a2 = NUM_TO_A2[parseInt(d.id)]
          if (!a2 || !infoByA2[a2]) return
          const rect = el.getBoundingClientRect()
          setTooltip({ x: event.clientX - rect.left + 12, y: event.clientY - rect.top - 36, html: infoByA2[a2] + ' →' })
        })
        .on('mouseleave', () => setTooltip(null))
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .on('click', (_event: MouseEvent, d: any) => {
          const a2 = NUM_TO_A2[parseInt(d.id)]
          if (a2 && countByA2[a2]) onCountryClick(a2)
        })

      svg.append('path').datum(geoGraticule()())
        .attr('fill', 'none').attr('stroke', '#0f2a4a').attr('stroke-width', 0.4)
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .attr('d', path as any)

      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      svg.append('path').datum(mesh(world as any, (world as any).objects.countries, (a: any, b: any) => a !== b) as any)
        .attr('fill', 'none').attr('stroke', '#07111f').attr('stroke-width', 0.6)
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .attr('d', path as any)
    }

    render().catch(() => setMapError(true))
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [])

  return (
    <div ref={containerRef} className="relative w-full">
      {mapError ? (
        <div className="flex items-center gap-2 text-sm text-amber-400 bg-amber-500/10 border border-amber-500/20 rounded-lg p-4">
          <AlertCircle className="h-4 w-4 flex-shrink-0" />
          Не вдалося завантажити карту світу
        </div>
      ) : (
        <>
          <svg ref={mapRef} className="w-full" />
          {tooltip && (
            <div
              className="absolute pointer-events-none bg-[#0d1f33] border border-white/10 text-white text-xs rounded-md px-2.5 py-1.5 whitespace-nowrap z-10 shadow-xl"
              style={{ left: tooltip.x, top: tooltip.y }}
            >
              {tooltip.html}
            </div>
          )}
        </>
      )}
    </div>
  )
}
