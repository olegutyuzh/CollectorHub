/**
 * fetch-types-by-year.mjs
 * Fetches all Numista types for a given year and upserts into collectibles.
 *
 * Usage:
 *   node --env-file=.env.local scripts/fetch-types-by-year.mjs 2005
 *   node --env-file=.env.local scripts/fetch-types-by-year.mjs 2005 2010
 *
 * Required env vars:
 *   NUMISTA_API_KEY
 *   NEXT_PUBLIC_SUPABASE_URL
 *   SUPABASE_SERVICE_ROLE_KEY
 */

import { createClient } from '@supabase/supabase-js'

const API_KEY  = process.env.NUMISTA_API_KEY
const BASE_URL = 'https://api.numista.com/v3'
const SB_URL   = process.env.NEXT_PUBLIC_SUPABASE_URL
const SB_KEY   = process.env.SUPABASE_SERVICE_ROLE_KEY

const args = process.argv.slice(2)
if (!args.length) {
  console.error('Usage: node fetch-types-by-year.mjs <year_from> [year_to]')
  process.exit(1)
}
const YEAR_FROM = parseInt(args[0])
const YEAR_TO   = args[1] ? parseInt(args[1]) : YEAR_FROM

if (!API_KEY || !SB_URL || !SB_KEY) {
  console.error('Missing env vars. Check .env.local has NUMISTA_API_KEY + SUPABASE_SERVICE_ROLE_KEY')
  process.exit(1)
}

const supabase = createClient(SB_URL, SB_KEY)

// ─── Fetch one page ────────────────────────────────────────────────────────

async function fetchPage(year, page) {
  const url = `${BASE_URL}/types?year=${year}&page=${page}&lang=en`
  const res = await fetch(url, {
    headers: {
      'Numista-API-Key': API_KEY,
      'Accept': 'application/json',
    }
  })
  if (!res.ok) {
    const text = await res.text()
    throw new Error(`API ${res.status} for year=${year} page=${page}: ${text.slice(0, 200)}`)
  }
  return res.json()
}

// ─── Map API type → DB row ─────────────────────────────────────────────────

function typeToRow(t) {
  return {
    id:                 t.id,
    title:              t.title ?? '',
    category:           t.category ?? 'coin',
    object_type_id:     t.type?.id ?? null,
    object_type_name:   t.type?.name ?? null,
    issuer_code:        t.issuer?.code ?? null,
    issuer_name:        t.issuer?.name ?? null,
    min_year:           t.min_year ?? null,
    max_year:           t.max_year ?? null,
    obverse_thumbnail:  t.obverse?.thumbnail ?? null,
    reverse_thumbnail:  t.reverse?.thumbnail ?? null,
  }
}

// ─── Progress bar ─────────────────────────────────────────────────────────

function progress(done, total, label = '') {
  const WIDTH = 30
  const pct   = total > 0 ? done / total : 0
  const filled = Math.round(pct * WIDTH)
  const bar   = '█'.repeat(filled) + '░'.repeat(WIDTH - filled)
  const pctStr = (pct * 100).toFixed(1).padStart(5)
  process.stdout.write(`\r  [${bar}] ${pctStr}%  ${done}/${total}  ${label}   `)
}

// ─── Fetch all pages for one year ─────────────────────────────────────────

async function fetchYear(year, yearsDone, yearsTotal) {
  const PAGE_SIZE = 50
  let page = 1
  let total = null
  const rows = []

  while (true) {
    const data = await fetchPage(year, page)

    if (total === null) {
      total = data.count ?? 0
      if (total === 0) {
        process.stdout.write(`\r  ${year}: немає типів\n`)
        return []
      }
      const pages = Math.ceil(total / PAGE_SIZE)
      process.stdout.write(`\r  ${year}: ${total} типів, ${pages} сторінок\n`)
    }

    const batch = data.types ?? []
    rows.push(...batch.map(typeToRow))

    // Прогрес по поточному року
    const yearLabel = `рік ${year}  (рік ${yearsDone + 1}/${yearsTotal})`
    progress(rows.length, total, yearLabel)

    if (rows.length >= total || batch.length === 0) break
    page++
    await new Promise(r => setTimeout(r, 250))
  }

  process.stdout.write('\n')
  return rows
}

// ─── Upsert to Supabase ────────────────────────────────────────────────────

async function upsert(rows) {
  const CHUNK = 500
  for (let i = 0; i < rows.length; i += CHUNK) {
    const { error } = await supabase
      .from('collectibles')
      .upsert(rows.slice(i, i + CHUNK), { onConflict: 'id' })
    if (error) throw error
  }
}

// ─── Main ──────────────────────────────────────────────────────────────────

async function main() {
  const years = []
  for (let y = YEAR_FROM; y <= YEAR_TO; y++) years.push(y)

  const totalYears = years.length
  console.log(`Завантаження ${totalYears} рік(ів): ${YEAR_FROM}–${YEAR_TO}\n`)

  let grandTotal  = 0
  let yearsOk     = 0
  const startTime = Date.now()

  for (let i = 0; i < years.length; i++) {
    const year = years[i]
    const rows = await fetchYear(year, i, totalYears)

    if (rows.length > 0) {
      await upsert(rows)
      grandTotal += rows.length
      yearsOk++
    }

    // Загальний прогрес по рокам
    const elapsed = ((Date.now() - startTime) / 1000).toFixed(0)
    const remaining = totalYears - i - 1
    const secPerYear = (Date.now() - startTime) / 1000 / (i + 1)
    const eta = remaining > 0 ? `ETA ~${Math.round(remaining * secPerYear)}s` : 'готово'

    console.log(
      `  ✅ ${year}: ${rows.length} записів | всього: ${grandTotal} | ` +
      `роки: ${i + 1}/${totalYears} | ${elapsed}s | ${eta}`
    )

    // Загальний прогрес-бар по рокам
    progress(i + 1, totalYears, `загальний прогрес`)
    process.stdout.write('\n\n')

    await new Promise(r => setTimeout(r, 400))
  }

  const totalSec = ((Date.now() - startTime) / 1000).toFixed(1)
  console.log(`\n✅ Готово! Записів: ${grandTotal} | Років: ${yearsOk}/${totalYears} | Час: ${totalSec}s`)
}

main().catch(err => { console.error(err); process.exit(1) })
