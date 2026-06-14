/**
 * fetch-collectible-details.mjs
 *
 * Fetches detailed info from Numista API for all collectibles in the user's
 * collection that don't yet have a record in collectible_details.
 * Also saves each raw API response as a local JSON file in scripts/numista-cache/.
 *
 * Run: node --env-file=.env.local scripts/fetch-collectible-details.mjs
 */

import { createClient } from '@supabase/supabase-js'
import { mkdirSync, writeFileSync, existsSync } from 'fs'
import { join, dirname } from 'path'
import { fileURLToPath } from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))
const CACHE_DIR = join(__dirname, 'numista-cache')

if (!existsSync(CACHE_DIR)) {
  mkdirSync(CACHE_DIR, { recursive: true })
  console.log(`Created cache dir: ${CACHE_DIR}`)
}

const SUPABASE_URL     = process.env.NEXT_PUBLIC_SUPABASE_URL
const SUPABASE_SERVICE = process.env.SUPABASE_SERVICE_ROLE_KEY
const NUMISTA_KEY      = process.env.NUMISTA_API_KEY

if (!SUPABASE_URL || !SUPABASE_SERVICE || !NUMISTA_KEY) {
  console.error('Missing env vars. Run with:')
  console.error('  node --env-file=.env.local scripts/fetch-collectible-details.mjs')
  process.exit(1)
}

const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE)

// 1. Get all collectible_ids from collection
const { data: rows, error: e1 } = await supabase
  .from('collected_items')
  .select('collectible_id')

if (e1) { console.error('Error reading collection:', e1.message); process.exit(1) }

const allIds = [...new Set((rows ?? []).map(r => r.collectible_id))]

// 2. Get ids that already have details
const { data: existing, error: e2 } = await supabase
  .from('collectible_details')
  .select('collectible_id')

if (e2) { console.error('Error reading collectible_details:', e2.message); process.exit(1) }

const existingIds = new Set((existing ?? []).map(r => r.collectible_id))
const toFetch = allIds.filter(id => !existingIds.has(id))

console.log(`Total in collection : ${allIds.length}`)
console.log(`Already have details: ${existingIds.size}`)
console.log(`Need to fetch       : ${toFetch.length}`)
if (toFetch.length === 0) { console.log('Nothing to do.'); process.exit(0) }

// 3. Fetch each from Numista API and upsert
let success = 0, failed = 0

for (let i = 0; i < toFetch.length; i++) {
  const id = toFetch[i]
  process.stdout.write(`[${i + 1}/${toFetch.length}] ${id} `)

  try {
    const res = await fetch(`https://api.numista.com/api/v3/types/${id}?lang=en`, {
      headers: { 'Numista-API-Key': NUMISTA_KEY }
    })

    if (!res.ok) {
      console.log(`✗ HTTP ${res.status}`)
      failed++
      await sleep(400)
      continue
    }

    const raw = await res.json()

    // Save local JSON copy
    const cachePath = join(CACHE_DIR, `${id}.json`)
    writeFileSync(cachePath, JSON.stringify(raw, null, 2), 'utf8')

    const { error } = await supabase.from('collectible_details').upsert({
      collectible_id:      id,
      raw_data:            raw,
      obverse_description: raw.obverse?.description ?? null,
      reverse_description: raw.reverse?.description ?? null,
      obverse_picture:     raw.obverse?.picture ?? null,
      reverse_picture:     raw.reverse?.picture ?? null,
      demonetized:         raw.demonetization?.is_demonetized ?? false,
      demonetization_date: raw.demonetization?.date ?? null,
      references_data:     Array.isArray(raw.references)
        ? raw.references.map(r => ({ number: r.number, catalogue: r.catalogue }))
        : null,
      series:              raw.series?.name ?? null,
      size:                raw.size ?? null,
      weight:              raw.weight ?? null,
      category:            raw.category ?? null,
      title:               raw.title ?? null,
      issuer_code:         raw.issuer?.code ?? null,
      collectible_type_id: raw.object_type?.id ?? null,
      fetched_at:          new Date().toISOString(),
    }, { onConflict: 'collectible_id' })

    if (error) {
      console.log(`✗ DB: ${error.message} (JSON saved)`)
      failed++
    } else {
      console.log(`✓ ${raw.title}`)
      success++
    }
  } catch (err) {
    console.log(`✗ ${err.message}`)
    failed++
  }

  await sleep(350)
}

console.log(`\n✅ Done: ${success} inserted, ${failed} failed`)

function sleep(ms) { return new Promise(r => setTimeout(r, ms)) }
