/**
 * fetch-type-details.mjs
 *
 * Читає JSON файл колекції Numista, витягує унікальні type.id,
 * для кожного виконує GET /v3/types/{id}?lang=en,
 * зберігає відповідь локально у data/types/{id}.json,
 * та upsert-ить дані до таблиці collectible_details.
 *
 * Usage:
 *   node --env-file=.env.local scripts/fetch-type-details.mjs <collected_items.json>
 *
 * Опціональні прапори:
 *   --no-cache     Завжди звертатись до API, ігнорувати кеш
 *   --only-cache   Тільки імпортувати з кешу, без API запитів
 *
 * Required env vars:
 *   NUMISTA_API_KEY
 *   NEXT_PUBLIC_SUPABASE_URL
 *   SUPABASE_SERVICE_ROLE_KEY
 */

import { createClient }                 from '@supabase/supabase-js'
import { readFileSync, writeFileSync,
         mkdirSync, existsSync }        from 'fs'
import { join, dirname, resolve }       from 'path'
import { fileURLToPath }                from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))
const CACHE_DIR = join(__dirname, '..', 'data', 'types')
const BASE_URL  = 'https://api.numista.com/v3'

// ─── Env ──────────────────────────────────────────────────────────────────

const API_KEY = process.env.NUMISTA_API_KEY
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
  console.error('Usage: node fetch-type-details.mjs <collected_items.json> [--no-cache] [--only-cache]')
  process.exit(1)
}

// ─── Читання JSON колекції ─────────────────────────────────────────────────

function loadCollectionFile(path) {
  const raw   = readFileSync(resolve(path), 'utf8')
  const data  = JSON.parse(raw)
  const items = data.items ?? data

  if (!Array.isArray(items) || items.length === 0) {
    console.error('❌ Файл не містить масиву items або порожній')
    process.exit(1)
  }

  // Витягуємо унікальні type.id
  const seen = new Set()
  const ids  = []
  let missingType = 0

  for (const item of items) {
    const typeId = item.type?.id
    if (!typeId) { missingType++; continue }
    if (!seen.has(typeId)) {
      seen.add(typeId)
      ids.push({
        typeId,
        title:    item.type?.title    ?? '',
        category: item.type?.category ?? '',
      })
    }
  }

  return { totalItems: items.length, ids, missingType }
}

// ─── Кеш ──────────────────────────────────────────────────────────────────

const cachePath = (id) => join(CACHE_DIR, `${id}.json`)
const hasCache  = (id) => existsSync(cachePath(id))

function saveCache(id, data) {
  writeFileSync(cachePath(id), JSON.stringify(data, null, 2), 'utf8')
}

function loadCached(id) {
  try   { return JSON.parse(readFileSync(cachePath(id), 'utf8')) }
  catch { return null }
}

// ─── API ──────────────────────────────────────────────────────────────────

async function fetchTypeDetail(typeId) {
  // Тільки кеш — без API
  if (onlyCache) {
    const cached = loadCached(typeId)
    if (!cached) throw new Error(`Файл кешу не знайдено: ${cachePath(typeId)}`)
    return { data: cached, fromCache: true }
  }

  // Є кеш і useCache — повертаємо з кешу
  if (useCache && hasCache(typeId)) {
    const cached = loadCached(typeId)
    if (cached) return { data: cached, fromCache: true }
  }

  // Запит до API
  const url = `${BASE_URL}/types/${typeId}?lang=en`
  const res = await fetch(url, {
    headers: {
      'Numista-API-Key': API_KEY,
      'Accept': 'application/json',
    }
  })

  if (res.status === 404) {
    const empty = { id: typeId, _not_found: true }
    saveCache(typeId, empty)
    return { data: empty, fromCache: false, notFound: true }
  }

  if (res.status === 429) {
    // Rate limit — чекаємо і пробуємо ще раз
    console.warn(`\n  ⚠️  Rate limit для id=${typeId}, чекаю 5с...`)
    await sleep(5000)
    return fetchTypeDetail(typeId)
  }

  if (!res.ok) {
    const text = await res.text()
    const msg  = text.includes('<html') ? '[HTML — перевір API ключ]' : text.slice(0, 200)
    throw new Error(`API ${res.status}: ${msg}`)
  }

  const data = await res.json()
  saveCache(typeId, data)
  return { data, fromCache: false }
}

// ─── Маппінг → рядок БД ───────────────────────────────────────────────────

function toRow(t) {
  return {
    collectible_id:       t.id,
    description:          t.description           ?? null,
    obverse_description:  t.obverse?.description  ?? null,
    reverse_description:  t.reverse?.description  ?? null,
    obverse_picture:      t.obverse?.picture      ?? null,
    reverse_picture:      t.reverse?.picture      ?? null,
    demonetized:          t.demonetized            ?? false,
    demonetization_date:  t.demonetization_date   ?? null,
    denominations:        t.denominations?.length  ? t.denominations : null,
    references_data:      t.references?.length     ? t.references    : null,
    series:               t.series                ?? null,
    size:                 t.size                  ?? null,
    weight:               t.weight != null ? Number(t.weight) : null,
    raw_data:             t,
  }
}

// ─── Supabase ─────────────────────────────────────────────────────────────

const supabase = createClient(SB_URL, SB_KEY)

async function upsert(row) {
  const { error } = await supabase
    .from('collectible_details')
    .upsert(row, { onConflict: 'collectible_id' })
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

const sleep = (ms) => new Promise(r => setTimeout(r, ms))

// ─── Main ─────────────────────────────────────────────────────────────────

async function main() {
  mkdirSync(CACHE_DIR, { recursive: true })

  // 1. Читаємо файл
  console.log(`\n📂 Читаю файл: ${filePath}`)
  const { totalItems, ids, missingType } = loadCollectionFile(filePath)
  const uniqueCount = ids.length

  console.log(`   Всього записів у колекції:  ${totalItems}`)
  console.log(`   Унікальних type.id:          ${uniqueCount}`)
  if (missingType) console.log(`   Без type.id (пропущено):    ${missingType}`)
  console.log(`   Кеш:                         ${CACHE_DIR}`)
  if (onlyCache) console.log(`   Режим:                       тільки кеш (без API)`)
  if (!useCache) console.log(`   Режим:                       завжди API (кеш ігнорується)`)
  console.log()

  let imported       = 0
  let notFound       = 0
  let fromCacheCount = 0
  let errors         = 0
  const errorLog     = []
  const startTime    = Date.now()

  // 2. Цикл по унікальним type.id
  for (let i = 0; i < ids.length; i++) {
    const { typeId, title } = ids[i]

    try {
      const { data, fromCache, notFound: nf } = await fetchTypeDetail(typeId)

      if (fromCache) fromCacheCount++
      const icon = fromCache ? '💾' : '🌐'

      if (nf || data._not_found) {
        notFound++
        progressBar(i + 1, uniqueCount, `${icon} id=${typeId} — не знайдено`)
      } else {
        const row = toRow(data)
        await upsert(row)
        imported++

        const demoStr = row.demonetized ? ' [демонет.]' : ''
        const sizeStr = row.denominations?.[0]?.value
          ? ` ${row.denominations[0].value}${row.denominations[0].unit ? ' ' + row.denominations[0].unit : ''}`
          : ''
        progressBar(i + 1, uniqueCount, `${icon} id=${typeId}${sizeStr}${demoStr}`)
      }
    } catch (err) {
      errors++
      errorLog.push({ typeId, title, error: err.message })
      process.stdout.write('\n')
      console.error(`  ❌ id=${typeId} "${title}": ${err.message}`)
    }

    // ETA кожні 20 кроків
    if ((i + 1) % 20 === 0 && i < ids.length - 1) {
      const elapsed    = (Date.now() - startTime) / 1000
      const secPerItem = elapsed / (i + 1)
      const remaining  = ids.length - i - 1
      const eta        = Math.round(remaining * secPerItem)
      process.stdout.write(`\n  ⏱  ETA: ~${eta}s (${remaining} залишилось)\n`)
    }

    // Затримка між запитами (тільки якщо йдемо до API)
    if (!onlyCache && i < ids.length - 1) {
      const delay = (fromCacheCount === i + 1) ? 30 : 700
      await sleep(delay)
    }
  }

  const elapsed = ((Date.now() - startTime) / 1000).toFixed(1)
  process.stdout.write('\n')

  // 3. Підсумок
  console.log(`
✅ Готово!
   Унікальних type.id:   ${uniqueCount}
   Імпортовано до БД:    ${imported}
   Не знайдено (404):    ${notFound}
   З кешу (💾):          ${fromCacheCount}
   З API (🌐):           ${uniqueCount - fromCacheCount - errors}
   Помилок:              ${errors}
   Час:                  ${elapsed}s
   Файли збережено:      ${CACHE_DIR}
  `)

  if (errorLog.length) {
    console.log('❌ Помилки:')
    for (const { typeId, title, error } of errorLog) {
      console.log(`   ${typeId}  "${title}"  →  ${error}`)
    }
  }
}

main().catch(err => { console.error('\n❌', err.message); process.exit(1) })
