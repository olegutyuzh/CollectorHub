/**
 * fetch-issues.mjs
 * For every type (collectible) in Supabase, fetches its issues from
 * Numista API v3 and upserts them into the `issues` table.
 *
 * Usage:
 *   node --env-file=../.env.local scripts/fetch-issues.mjs
 *
 * Optional env:
 *   START_ID=12345   — resume from a specific collectible ID
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
const START_ID  = process.env.START_ID ? Number(process.env.START_ID) : 0

if (!API_KEY || !SB_URL || !SB_KEY) {
  console.error('Missing env vars: NUMISTA_API_KEY, NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY')
  process.exit(1)
}

const supabase = createClient(SB_URL, SB_KEY)

// ─── Numista API helper ────────────────────────────────────────────────────

async function apiGet(path, params = {}) {
  const url = new URL(`${BASE_URL}${path}`)
  url.searchParams.set('lang', 'en')
  for (const [k, v] of Object.entries(params)) url.searchParams.set(k, v)

  const res = await fetch(url.toString(), {
    headers: { 'Numista-Api-Key': API_KEY }
  })

  if (res.status === 404) return null  // type has no issues
  if (!res.ok) {
    const text = await res.text()
    throw new Error(`Numista API ${res.status} for ${path}: ${text}`)
  }
  return res.json()
}

// ─── Map API issue → DB row ────────────────────────────────────────────────

function issueToRow(typeId, issue) {
  const price = Array.isArray(issue.prices) ? issue.prices[0] : null

  return {
    id:               issue.id,
    type_id:          typeId,
    year:             issue.year ?? null,
    year_end:         issue.year_end ?? null,
    mint_id:          issue.mint?.id ?? null,
    mintmark:         issue.mintmark ?? null,
    mintage:          issue.mintage != null ? Number(issue.mintage) : null,
    is_proof:         issue.is_proof ?? false,
    is_specimen:      issue.is_specimen ?? false,
    is_bullion:       issue.is_bullion ?? false,
    is_commemorative: issue.is_commemorative ?? false,
    comment:          issue.comment ?? null,
    picture_obverse:  issue.picture_obverse ?? issue.obverse?.picture ?? null,
    picture_reverse:  issue.picture_reverse ?? issue.reverse?.picture ?? null,
    picture_edge:     issue.picture_edge ?? null,
    composition_text: issue.composition?.text ?? null,
    price_value:      price?.value ?? null,
    price_currency:   price?.currency ?? null,
    price_grade:      price?.grade ?? null,
  }
}

// ─── Fetch issues for one type ─────────────────────────────────────────────

async function fetchIssuesForType(typeId) {
  const data = await apiGet(`/types/${typeId}/issues`)
  if (!data || !data.issues) return []
  return data.issues.map(iss => issueToRow(typeId, iss))
}

// ─── Upsert rows ───────────────────────────────────────────────────────────

async function upsertIssues(rows) {
  if (rows.length === 0) return
  const { error } = await supabase
    .from('issues')
    .upsert(rows, { onConflict: 'id' })
  if (error) throw error
}

// ─── Load all collectible IDs from Supabase ────────────────────────────────

async function loadTypeIds() {
  const ids = []
  const PAGE = 1000
  let from = 0

  while (true) {
    const { data, error } = await supabase
      .from('collectibles')
      .select('id')
      .gte('id', START_ID)
      .order('id')
      .range(from, from + PAGE - 1)

    if (error) throw error
    if (!data || data.length === 0) break
    ids.push(...data.map(r => r.id))
    if (data.length < PAGE) break
    from += PAGE
  }

  return ids
}

// ─── Main ──────────────────────────────────────────────────────────────────

async function main() {
  console.log('=== Fetching issues from Numista API v3 ===\n')
  if (START_ID) console.log(`Resuming from collectible ID ≥ ${START_ID}\n`)

  const typeIds = await loadTypeIds()
  console.log(`Types to process: ${typeIds.length}\n`)

  let processed = 0
  let totalIssues = 0
  let errors = 0

  for (const typeId of typeIds) {
    try {
      const rows = await fetchIssuesForType(typeId)

      if (rows.length > 0) {
        await upsertIssues(rows)
        totalIssues += rows.length
      }

      processed++
      if (processed % 50 === 0 || rows.length > 0) {
        process.stdout.write(
          `\r  ${processed}/${typeIds.length} types | ${totalIssues} issues | errors: ${errors}   `
        )
      }

      // Throttle: Numista rate limit is ~1 req/sec for free tier
      await new Promise(r => setTimeout(r, 1100))
    } catch (err) {
      errors++
      console.error(`\n  [error] type ${typeId}: ${err.message}`)
      // Continue processing; log and move on
      await new Promise(r => setTimeout(r, 2000))
    }
  }

  console.log(`\n\n✅ Done. Processed ${processed} types, upserted ${totalIssues} issues, ${errors} errors.`)
  if (errors > 0) {
    console.log('Re-run with START_ID=<last_good_id> to retry from any point.')
  }
}

main().catch(err => {
  console.error(err)
  process.exit(1)
})
