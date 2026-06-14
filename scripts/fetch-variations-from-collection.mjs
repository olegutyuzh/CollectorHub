/**
 * fetch-variations-from-collection.mjs
 * Reads a Numista collected_items JSON export, extracts unique type IDs,
 * fetches all variations via /v3/types/{id}/issues, and upserts into
 * `collectible_variations` (collectible_id = type.id).
 *
 * Usage:
 *   node --env-file=.env.local scripts/fetch-variations-from-collection.mjs path/to/collected_items.json
 *
 * Optional flags:
 *   --no-cache     Always fetch from API, ignore cached JSON files
 *   --only-cache   Only import from cache, no API calls
 *
 * Required env vars:
 *   NUMISTA_API_KEY
 *   NEXT_PUBLIC_SUPABASE_URL
 *   SUPABASE_SERVICE_ROLE_KEY
 */

import { createClient }                          from '@supabase/supabase-js'
import { readFileSync, writeFileSync,
         mkdirSync, existsSync }                 from 'fs'
import { join, dirname, resolve }                from 'path'
import { fileURLToPath }                         from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))
const CACHE_DIR = join(__dirname, '..', 'data', 'variations')

const API_KEY = process.env.NUMISTA_API_KEY
const BASE_URL = 'https://api.numista.com/v3'
const SB_URL  = process.env.NEXT_PUBLIC_SUPABASE_URL
const SB_KEY  = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!API_KEY || !SB_URL || !SB_KEY) {
  console.error('❌ Не вистачає env vars. Перевір .env.local:')
  console.error('   NUMISTA_API_KEY, NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY')
  process.exit(1)
}

// ─── Аргументи ────────────────────────────────────────────────────────────

const args      = process.argv.slice(2)
const useCache  = !args.includes('--no-cache')
const onlyCache = args.includes('--only-cache')
const filePath  = args.find(a => !a.startsWith('--'))

if (!filePath) {
  console.error('Usage: node fetch-variations-from-collection.mjs <collected_items.json> [--no-cache] [--only-cache]')
  process.exit(1)
}

// ─── Читання та парсинг JSON ───────────────────────────────────────────────

function loadCollectionFile(path) {
  const raw  = readFileSync(resolve(path), 'utf8')
  const data = JSON.parse(raw)
  const items = data.items ?? data

  // Витягуємо унікальні type.id
  const seen = new Set()
  const ids  = []
  for (const item of items) {
    const typeId = item.type?.id
    if (typeId && !seen.has(typeId)) {
      seen.add(typeId)
      ids.push({ typeId, title: item.type.title ?? '', category: item.type.category ?? '' })
    }
  }

  return { totalItems: items.length, ids }
}

// ─── Кеш ──────────────────────────────────────────────────────────────────

function cachePath(id)   { return join(CACHE_DIR, `${id}.json`) }
function hasCache(id)    { return existsSync(cachePath(id)) }

function saveCache(id, data) {
  writeFileSync(cachePath(id), JSON.stringify(data, null, 2), 'utf8')
}

function loadCached(id) {
  try   { return JSON.parse(readFileSync(cachePath(id), 'utf8')) }
  catch { return null }
}

// ─── API запит ────────────────────────────────────────────────────────────

async function fetchIssues(typeId) {
  if (onlyCache) {
    const cached = loadCached(typeId)
    return { issues: cached?.issues ?? [], fromCache: true }
  }

  if (useCache && hasCache(typeId)) {
    const cached = loadCached(typeId)
    return { issues: cached?.issues ?? cached ?? [], fromCache: true }
  }

  const url = `${BASE_URL}/types/${typeId}/issues?lang=en`
  const res = await fetch(url, {
    headers: {
      'Numista-API-Key': API_KEY,
      'Accept': 'application/json',
    }
  })

  if (res.status === 404) {
    saveCache(typeId, { issues: [] })
    return { issues: [], fromCache: false }
  }

  if (!res.ok) {
    const text = await res.text()
    const msg  = text.includes('<html') ? '[HTML — перевір API ключ]' : text.slice(0, 200)
    throw new Error(`API ${res.status}: ${msg}`)
  }

  const data = await res.json()
  saveCache(typeId, data)
  return { issues: data.issues ?? data ?? [], fromCache: false }
}

// ─── Маппінг → рядок БД ───────────────────────────────────────────────────

function toRow(typeId, issue) {
  return {
    id:             issue.id,
    collectible_id: typeId,
    is_dated:       issue.is_dated       ?? false,
    year:           issue.year           ?? null,
    gregorian_year: issue.gregorian_year ?? issue.year ?? null,
    signatures:     issue.signatures?.length ? issue.signatures : null,
    comment:        issue.comment        ?? null,
  }
}

// ─── Upsert ───────────────────────────────────────────────────────────────

const supabase = createClient(SB_URL, SB_KEY)

async function upsert(rows) {
  const { error } = await supabase
    .from('collectible_variations')
    .upsert(rows, { onConflict: 'id' })
  if (error) throw error
}

// ─── Прогрес-бар ──────────────────────────────────────────────────────────

function progressBar(done, total, suffix = '') {
  const W      = 30
  const pct    = total > 0 ? done / total : 0
  const filled = Math.round(pct * W)
  const bar    = '█'.repeat(filled) + '░'.repeat(W - filled)
  const pctStr = (pct * 100).toFixed(1).padStart(5)
  process.stdout.write(`\r  [${bar}] ${pctStr}%  ${done}/${total}  ${suffix}   `)
}

// ─── Main ─────────────────────────────────────────────────────────────────

async function main() {
  mkdirSync(CACHE_DIR, { recursive: true })

  // 1. Читаємо файл колекції
  console.log(`\n📂 Читаю файл: ${filePath}`)
  const { totalItems, ids } = loadCollectionFile(filePath)
  const uniqueCount = ids.length

  console.log(`   Всього записів у колекції: ${totalItems}`)
  console.log(`   Унікальних type IDs:       ${uniqueCount}`)
  console.log(`   Кеш:                       ${CACHE_DIR}`)
  if (onlyCache) console.log(`   Режим:                     тільки кеш (без API)`)
  if (!useCache) console.log(`   Режим:                     завжди API (кеш ігнорується)`)
  console.log()

  let totalVariations = 0
  let noVariations    = 0
  let fromCacheCount  = 0
  let errors          = 0
  const startTime     = Date.now()
  const errorLog      = []

  for (let i = 0; i < ids.length; i++) {
    const { typeId, title } = ids[i]
    const label = `id=${typeId}`

    try {
      const { issues, fromCache } = await fetchIssues(typeId)
      if (fromCache) fromCacheCount++

      const cacheIcon = fromCache ? '💾' : '🌐'

      if (issues.length === 0) {
        noVariations++
        progressBar(i + 1, uniqueCount, `${cacheIcon} ${label} — немає варіацій`)
      } else {
        const rows = issues.map(iss => toRow(typeId, iss))
        await upsert(rows)
        totalVariations += rows.length
        progressBar(i + 1, uniqueCount, `${cacheIcon} ${label} → ${rows.length} варіацій`)
      }
    } catch (err) {
      errors++
      errorLog.push({ typeId, title, error: err.message })
      process.stdout.write('\n')
      console.error(`  ❌ id=${typeId} (${title}): ${err.message}`)
    }

    // ETA
    if ((i + 1) % 20 === 0 && i < ids.length - 1) {
      const elapsed    = (Date.now() - startTime) / 1000
      const secPerItem = elapsed / (i + 1)
      const remaining  = ids.length - i - 1
      const eta        = Math.round(remaining * secPerItem)
      process.stdout.write(`\n  ⏱  ETA: ~${eta}s (${remaining} залишилось)\n`)
    }

    if (!onlyCache && i < ids.length - 1) {
      await new Promise(r => setTimeout(r, fromCacheCount === i + 1 ? 50 : 1000))
    }
  }

  const elapsed = ((Date.now() - startTime) / 1000).toFixed(1)
  process.stdout.write('\n')

  console.log(`
✅ Готово!
   Унікальних типів:  ${uniqueCount}
   Варіацій додано:   ${totalVariations}
   Без варіацій:      ${noVariations}
   З кешу (💾):       ${fromCacheCount}
   З API (🌐):        ${uniqueCount - fromCacheCount - errors}
   Помилок:           ${errors}
   Час:               ${elapsed}s
  `)

  if (errorLog.length) {
    console.log('❌ Помилки:')
    for (const { typeId, title, error } of errorLog) {
      console.log(`   ${typeId}  "${title}"  →  ${error}`)
    }
  }
}

main().catch(err => { console.error(err); process.exit(1) })
