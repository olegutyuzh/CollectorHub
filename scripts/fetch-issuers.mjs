/**
 * fetch-issuers.mjs
 * Fetches all issuers from Numista API v3 and upserts into Supabase.
 *
 * Usage:
 *   node --env-file=../.env.local scripts/fetch-issuers.mjs
 *
 * Required env vars:
 *   NUMISTA_API_KEY
 *   NEXT_PUBLIC_SUPABASE_URL
 *   SUPABASE_SERVICE_ROLE_KEY
 */

import { createClient } from '@supabase/supabase-js'

const API_KEY   = process.env.NUMISTA_API_KEY
const BASE_URL  = 'https://api.numista.com/v3'
const SB_URL    = process.env.NEXT_PUBLIC_SUPABASE_URL
const SB_KEY    = process.env.SUPABASE_SERVICE_ROLE_KEY

// Debug: show what env vars are available
console.log('ENV check:')
console.log('  NUMISTA_API_KEY:', API_KEY ? `${API_KEY.slice(0,6)}... (length ${API_KEY.length})` : '❌ NOT SET')
console.log('  SUPABASE_URL:   ', SB_URL  ? '✅ set' : '❌ NOT SET')
console.log('  SERVICE_ROLE:   ', SB_KEY  ? '✅ set' : '❌ NOT SET')
console.log()

if (!API_KEY) {
  console.error('❌ NUMISTA_API_KEY is not set. Add it to .env.local:\n   NUMISTA_API_KEY=your_key_here')
  process.exit(1)
}
if (!SB_URL || !SB_KEY) {
  console.error('❌ Supabase env vars missing. Add to .env.local:\n   SUPABASE_SERVICE_ROLE_KEY=your_service_role_key')
  process.exit(1)
}

const supabase = createClient(SB_URL, SB_KEY)

// ─── Numista API helper ────────────────────────────────────────────────────

async function apiGet(path, params = {}) {
  const url = new URL(`${BASE_URL}${path}`)
  url.searchParams.set('lang', 'en')
  // Pass API key as query param (works on all Numista API v3 endpoints)
  url.searchParams.set('q', API_KEY)
  for (const [k, v] of Object.entries(params)) url.searchParams.set(k, v)

  const res = await fetch(url.toString(), {
    headers: {
      'Numista-Api-Key': API_KEY,
      'Accept': 'application/json',
    }
  })

  if (!res.ok) {
    const text = await res.text()
    // If we get HTML back, the endpoint or key is wrong
    const snippet = text.includes('<html') ? '[HTML page — check API key or endpoint]' : text.slice(0, 200)
    throw new Error(`Numista API ${res.status} @ ${url.pathname}: ${snippet}`)
  }
  return res.json()
}

// ─── Fetch all issuers (handles pagination) ────────────────────────────────

async function fetchAllIssuers() {
  const PAGE_SIZE = 100
  let page    = 1
  let total   = null
  const all   = []

  while (true) {
    const data = await apiGet('/issuers', { page, count: PAGE_SIZE })

    if (total === null) {
      total = data.count
      console.log(`Total issuers: ${total}`)
    }

    const batch = data.issuers ?? []
    all.push(...batch)
    console.log(`  fetched page ${page}: ${batch.length} issuers (running total: ${all.length}/${total})`)

    if (all.length >= total || batch.length === 0) break
    page++
    // be polite to the API
    await new Promise(r => setTimeout(r, 300))
  }

  return all
}

// ─── Map API response → DB row ─────────────────────────────────────────────

function toRow(issuer, codeToId) {
  return {
    id:           issuer.id,
    name_en:      issuer.name ?? '',
    is_section:   issuer.is_section ?? false,
    code:         issuer.code ?? null,
    wikidata_id:  issuer.wikidata_id ?? null,
    start_year:   issuer.start_year ?? null,
    end_year:     issuer.end_year ?? null,
    parent_id:    issuer.parent?.code ? (codeToId.get(issuer.parent.code) ?? null) : null,
    flag_url:     issuer.flag ?? null,
  }
}

// ─── Upsert in batches ─────────────────────────────────────────────────────

async function upsertBatch(rows) {
  const { error } = await supabase
    .from('issuers')
    .upsert(rows, { onConflict: 'id' })

  if (error) throw error
}

// ─── Main ──────────────────────────────────────────────────────────────────

async function main() {
  console.log('=== Fetching issuers from Numista API v3 ===\n')

  const issuers = await fetchAllIssuers()
  console.log(`\nTotal fetched: ${issuers.length}`)

  // Build code → id map for parent resolution
  const codeToId = new Map(
    issuers
      .filter(i => i.code && i.id)
      .map(i => [i.code, i.id])
  )

  // Two-pass upsert: parent_id can only be set once all IDs are known,
  // but since we have the full list in memory we can resolve in one pass.
  const BATCH = 500
  let upserted = 0

  for (let i = 0; i < issuers.length; i += BATCH) {
    const chunk = issuers.slice(i, i + BATCH).map(iss => toRow(iss, codeToId))
    await upsertBatch(chunk)
    upserted += chunk.length
    console.log(`  upserted ${upserted}/${issuers.length}`)
  }

  console.log('\n✅ Done.')
}

main().catch(err => {
  console.error(err)
  process.exit(1)
})
