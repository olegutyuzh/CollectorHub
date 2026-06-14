/**
 * fetch-type-details-by-id.mjs
 *
 * Отримує деталі типів за переліком ID, збергіає JSON локально
 * та upsert-ить до таблиці collectible_details.
 *
 * Usage:
 *   node --env-file=.env.local scripts/fetch-type-details-by-id.mjs 202213 201541 195000
 *   node --env-file=.env.local scripts/fetch-type-details-by-id.mjs 202213-202220   (діапазон)
 *
 * Опціональні прапори:
 *   --no-cache     Завжди звертатись до API, ігнорувати кеш
 *   --only-cache   Тільки імпортувати з кешу, без API запитів
 *   --dry-run      Тільки показати які ID будуть оброблені, без запитів
 *
 * Required env vars:
 *   NUMISTA_API_KEY
 *   NEXT_PUBLIC_SUPABASE_URL
 *   SUPABASE_SERVICE_ROLE_KEY
 */

import { createClient }                 from '@supabase/supabase-js'
import { writeFileSync, mkdirSync,
         existsSync, readFileSync }     from 'fs'
import { join, dirname }                from 'path'
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

const rawArgs  = process.argv.slice(2)
const useCache = !rawArgs.includes('--no-cache')
const onlyCache= rawArgs.includes('--only-cache')
const dryRun   = rawArgs.includes('--dry-run')
const idArgs   = rawArgs.filter(a => !a.startsWith('--'))

if (idArgs.length === 0) {
  console.error('Usage: node fetch-type-details-by-id.mjs <id1> [id2 id3 ...] [от-до] [--no-cache] [--only-cache] [--dry-run]')
  console.error()
  console.error('Examples:')
  console.error('  node fetch-type-details-by-id.mjs 202213')
  console.error('  node fetch-type-details-by-id.mjs 202213 201541 195000')
  console.error('  node fetch-type-details-by-id.mjs 202213-202220')
  console.error('  node fetch-type-details-by-id.mjs 200000-200050 202213 --no-cache')
  process.exit(1)
}

// Розпарсити аргументи: одиночні числа + діапазони вигляду N-M
function parseIds(args) {
  const ids = []
  for (const arg of args) {
    if (/^\d+$/.test(arg)) {
      ids.push(parseInt(arg, 10))
    } else if (/^\d+-\d+$/.test(arg)) {
      const [from, to] = arg.split('-').map(Number)
      if (from > to) {
        console.error(`❌ Неправильний діапазон: ${arg} (from > to)`)
        process.exit(1)
      }
      if (to - from > 10000) {
        console.error(`❌ Занадто великий діапазон: ${from}-${to} (${to - from + 1} елементів). Максимум 10 000.`)
        process.exit(1)
      }
      for (let i = from; i <= to; i++) ids.push(i)
    } else {
      console.error(`❌ Невідомий аргумент: "${arg}". Очікується число або діапазон N-M.`)
      process.exit(1)
    }
  }
  // Дедублікація зі збереженням порядку
  return [...new Set(ids)]
}

const typeIds = parseIds(idArgs)

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
  if (onlyCache) {
    const cached = loadCached(typeId)
    if (!cached) throw new Error(`Файл кешу не знайдено: ${cachePath(typeId)}`)
    return { data: cached, fromCache: true }
  }

  if (useCache && hasCache(typeId)) {
    const cached = loadCached(typeId)
    if (cached) return { data: cached, fromCache: true }
  }

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

  console.log(`\n🔢 ID для обробки: ${typeIds.length}`)
  if (typeIds.length <= 20) {
    console.log(`   ${typeIds.join(', ')}`)
  } else {
    console.log(`   ${typeIds.slice(0, 10).join(', ')} ... ${typeIds.slice(-5).join(', ')}`)
  }
  console.log(`   Кеш: ${CACHE_DIR}`)
  if (dryRun)   console.log(`   Режим: dry-run (тільки показати, без запитів)`)
  if (onlyCache)console.log(`   Режим: тільки кеш (без API)`)
  if (!useCache)console.log(`   Режим: завжди API (кеш ігнорується)`)
  console.log()

  if (dryRun) {
    console.log('🔍 Dry-run. Без запитів і змін у БД.')
    const cached    = typeIds.filter(id => hasCache(id))
    const notCached = typeIds.filter(id => !hasCache(id))
    console.log(`   Вже є в кеші (💾): ${cached.length}`)
    console.log(`   Потрібен API (🌐): ${notCached.length}`)
    if (notCached.length && notCached.length <= 30)
      console.log(`   ID без кешу: ${notCached.join(', ')}`)
    return
  }

  let imported       = 0
  let notFound       = 0
  let fromCacheCount = 0
  let errors         = 0
  const errorLog     = []
  const startTime    = Date.now()

  for (let i = 0; i < typeIds.length; i++) {
    const typeId = typeIds[i]

    try {
      const { data, fromCache, notFound: nf } = await fetchTypeDetail(typeId)
      if (fromCache) fromCacheCount++
      const icon = fromCache ? '💾' : '🌐'

      if (nf || data._not_found) {
        notFound++
        progressBar(i + 1, typeIds.length, `${icon} id=${typeId} — не знайдено`)
      } else {
        const row = toRow(data)
        await upsert(row)
        imported++

        const nomStr = row.denominations?.[0]?.value
          ? ` ${row.denominations[0].value}${row.denominations[0].unit ? ' ' + row.denominations[0].unit : ''}`
          : ''
        const title  = data.title ? ` "${data.title.slice(0, 30)}"` : ''
        progressBar(i + 1, typeIds.length, `${icon} id=${typeId}${nomStr}${title}`)
      }
    } catch (err) {
      errors++
      errorLog.push({ typeId, error: err.message })
      process.stdout.write('\n')
      console.error(`  ❌ id=${typeId}: ${err.message}`)
    }

    // ETA кожні 20 кроків (тільки якщо >20 загалом)
    if (typeIds.length > 20 && (i + 1) % 20 === 0 && i < typeIds.length - 1) {
      const elapsed    = (Date.now() - startTime) / 1000
      const secPerItem = elapsed / (i + 1)
      const remaining  = typeIds.length - i - 1
      const eta        = Math.round(remaining * secPerItem)
      process.stdout.write(`\n  ⏱  ETA: ~${eta}s (${remaining} залишилось)\n`)
    }

    if (!onlyCache && i < typeIds.length - 1) {
      const delay = fromCacheCount === i + 1 ? 30 : 700
      await sleep(delay)
    }
  }

  const elapsed = ((Date.now() - startTime) / 1000).toFixed(1)
  process.stdout.write('\n')

  console.log(`
✅ Готово!
   ID оброблено:         ${typeIds.length}
   Імпортовано до БД:    ${imported}
   Не знайдено (404):    ${notFound}
   З кешу (💾):          ${fromCacheCount}
   З API (🌐):           ${typeIds.length - fromCacheCount - errors}
   Помилок:              ${errors}
   Час:                  ${elapsed}s
  `)

  if (errorLog.length) {
    console.log('❌ Помилки:')
    for (const { typeId, error } of errorLog) {
      console.log(`   ${typeId}  →  ${error}`)
    }
  }
}

main().catch(err => { console.error('\n❌', err.message); process.exit(1) })
