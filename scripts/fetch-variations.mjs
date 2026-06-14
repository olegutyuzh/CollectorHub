/**
 * fetch-variations.mjs
 * Fetches all issues/variations for given collectible IDs from Numista API v3
 * and upserts them into the `collectible_variations` table.
 *
 * Usage:
 *   Single ID:
 *     node --env-file=.env.local scripts/fetch-variations.mjs 202763
 *
 *   Multiple IDs:
 *     node --env-file=.env.local scripts/fetch-variations.mjs 202763 202764 202765
 *
 *   From a text file (one ID per line):
 *     node --env-file=.env.local scripts/fetch-variations.mjs --file ids.txt
 *
 * Required env vars:
 *   NUMISTA_API_KEY
 *   NEXT_PUBLIC_SUPABASE_URL
 *   SUPABASE_SERVICE_ROLE_KEY
 */

import { createClient }                    from '@supabase/supabase-js'
import { readFileSync, writeFileSync,
         mkdirSync, existsSync }           from 'fs'
import { join, dirname }                   from 'path'
import { fileURLToPath }                   from 'url'

const __dirname  = dirname(fileURLToPath(import.meta.url))
const CACHE_DIR  = join(__dirname, '..', 'data', 'variations')

const API_KEY  = process.env.NUMISTA_API_KEY
const BASE_URL = 'https://api.numista.com/v3'
const SB_URL   = process.env.NEXT_PUBLIC_SUPABASE_URL
const SB_KEY   = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!API_KEY || !SB_URL || !SB_KEY) {
  console.error('❌ Не вистачає env vars. Перевір .env.local:')
  console.error('   NUMISTA_API_KEY, NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY')
  process.exit(1)
}

// ─── Парсинг аргументів ────────────────────────────────────────────────────

function parseIds() {
  const args = process.argv.slice(2)
  if (!args.length) {
    console.error('Usage: node fetch-variations.mjs <id> [id2 id3 ...]')
    console.error('       node fetch-variations.mjs --file ids.txt')
    process.exit(1)
  }

  if (args[0] === '--file') {
    const path = args[1]
    if (!path) { console.error('❌ Вкажи шлях до файлу після --file'); process.exit(1) }
    return readFileSync(path, 'utf8')
      .split('\n')
      .map(l => l.trim())
      .filter(l => l && !l.startsWith('#'))
      .map(Number)
      .filter(n => !isNaN(n) && n > 0)
  }

  return args.map(Number).filter(n => !isNaN(n) && n > 0)
}

const supabase = createClient(SB_URL, SB_KEY)

// ─── Кеш ──────────────────────────────────────────────────────────────────

function ensureCacheDir() {
  if (!existsSync(CACHE_DIR)) mkdirSync(CACHE_DIR, { recursive: true })
}

function cachePath(collectibleId) {
  return join(CACHE_DIR, `${collectibleId}.json`)
}

function saveCache(collectibleId, data) {
  writeFileSync(cachePath(collectibleId), JSON.stringify(data, null, 2), 'utf8')
}

function loadCache(collectibleId) {
  const path = cachePath(collectibleId)
  if (!existsSync(path)) return null
  try {
    return JSON.parse(readFileSync(path, 'utf8'))
  } catch {
    return null
  }
}

// ─── API запит ────────────────────────────────────────────────────────────

async function fetchVariations(collectibleId, { useCache = true } = {}) {
  // Повертаємо з кешу якщо є
  if (useCache) {
    const cached = loadCache(collectibleId)
    if (cached !== null) {
      return { issues: cached.issues ?? cached ?? [], fromCache: true }
    }
  }

  const url = `${BASE_URL}/types/${collectibleId}/issues?lang=en`
  const res = await fetch(url, {
    headers: {
      'Numista-API-Key': API_KEY,
      'Accept': 'application/json',
    }
  })

  if (res.status === 404) {
    // Зберігаємо порожній результат щоб не робити повторний запит
    saveCache(collectibleId, { issues: [] })
    return { issues: [], fromCache: false }
  }

  if (!res.ok) {
    const text = await res.text()
    const snippet = text.includes('<html') ? '[HTML — перевір API ключ]' : text.slice(0, 200)
    throw new Error(`API ${res.status} для id=${collectibleId}: ${snippet}`)
  }

  const data = await res.json()

  // Зберігаємо сирий JSON
  saveCache(collectibleId, data)

  return { issues: data.issues ?? data ?? [], fromCache: false }
}

// ─── Маппінг API → рядок БД ───────────────────────────────────────────────

function toRow(collectibleId, issue) {
  return {
    id:             issue.id,
    collectible_id: collectibleId,
    is_dated:       issue.is_dated       ?? false,
    year:           issue.year           ?? null,
    gregorian_year: issue.gregorian_year ?? issue.year ?? null,
    signatures:     issue.signatures?.length ? issue.signatures : null,
    comment:        issue.comment        ?? null,
  }
}

// ─── Upsert ───────────────────────────────────────────────────────────────

async function upsert(rows) {
  const { error } = await supabase
    .from('collectible_variations')
    .upsert(rows, { onConflict: 'id' })
  if (error) throw error
}

// ─── Прогрес ──────────────────────────────────────────────────────────────

function progressBar(done, total, suffix = '') {
  const W      = 32
  const pct    = total > 0 ? done / total : 0
  const filled = Math.round(pct * W)
  const bar    = '█'.repeat(filled) + '░'.repeat(W - filled)
  const pctStr = (pct * 100).toFixed(1).padStart(5)
  process.stdout.write(`\r  [${bar}] ${pctStr}%  ${done}/${total}  ${suffix}   `)
}

// ─── Main ─────────────────────────────────────────────────────────────────

async function main() {
  const ids = parseIds()
  ensureCacheDir()

  console.log(`\n📋 IDs для обробки: ${ids.length}`)
  console.log(`💾 Кеш: ${CACHE_DIR}\n`)

  let totalVariations = 0
  let noVariations    = 0
  let fromCacheCount  = 0
  let errors          = 0
  const startTime     = Date.now()

  for (let i = 0; i < ids.length; i++) {
    const id = ids[i]

    try {
      const { issues, fromCache } = await fetchVariations(id)

      if (fromCache) fromCacheCount++

      const cacheLabel = fromCache ? ' 💾' : ''

      if (issues.length === 0) {
        noVariations++
        progressBar(i + 1, ids.length, `id=${id} — немає варіацій${cacheLabel}`)
      } else {
        const rows = issues.map(iss => toRow(id, iss))
        await upsert(rows)
        totalVariations += rows.length
        progressBar(i + 1, ids.length, `id=${id} → ${rows.length} варіацій${cacheLabel}`)
      }
    } catch (err) {
      errors++
      process.stdout.write('\n')
      console.error(`  ❌ id=${id}: ${err.message}`)
    }

    // Throttle тільки для реальних запитів (не кеш)
    if (i < ids.length - 1) await new Promise(r => setTimeout(r, 500))
  }

  const elapsed = ((Date.now() - startTime) / 1000).toFixed(1)
  process.stdout.write('\n')
  console.log(`
✅ Готово!
   Оброблено IDs:    ${ids.length}
   Варіацій додано:  ${totalVariations}
   Без варіацій:     ${noVariations}
   З кешу:           ${fromCacheCount}
   Помилок:          ${errors}
   Час:              ${elapsed}s
  `)
}

main().catch(err => { console.error(err); process.exit(1) })
