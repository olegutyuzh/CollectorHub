/**
 * import-collected-items.mjs
 * Reads a Numista collected_items JSON export and inserts into `collected_items` table.
 * - Skips rows where collectible_id doesn't exist in `collectibles`
 * - Skips rows where collectible_variation_id doesn't exist in `collectible_variations`
 * - Skips rows that already exist in `collected_items` (no overwrite)
 *
 * Usage:
 *   node --env-file=.env.local scripts/import-collected-items.mjs <file.json> <user_id>
 *
 * Example:
 *   node --env-file=.env.local scripts/import-collected-items.mjs collected_items.json a1b2c3d4-...
 */

import { createClient } from '@supabase/supabase-js'
import { readFileSync }  from 'fs'
import { resolve }       from 'path'

const SB_URL = process.env.NEXT_PUBLIC_SUPABASE_URL
const SB_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!SB_URL || !SB_KEY) {
  console.error('❌ Не вистачає env vars: NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY')
  process.exit(1)
}

const [filePath, userId] = process.argv.slice(2)

if (!filePath || !userId) {
  console.error('Usage: node import-collected-items.mjs <file.json> <user_id>')
  process.exit(1)
}

if (!/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(userId)) {
  console.error(`❌ user_id виглядає неправильно: "${userId}"`)
  process.exit(1)
}

const supabase = createClient(SB_URL, SB_KEY)

// ─── Завантаження валідних ID з БД ────────────────────────────────────────

async function loadIdSet(table, column = 'id') {
  const ids = new Set()
  const PAGE = 1000
  let from = 0
  while (true) {
    const { data, error } = await supabase
      .from(table)
      .select(column)
      .range(from, from + PAGE - 1)
    if (error) throw error
    if (!data?.length) break
    data.forEach(r => ids.add(r[column]))
    if (data.length < PAGE) break
    from += PAGE
  }
  return ids
}

// ─── Маппінг JSON item → рядок БД ─────────────────────────────────────────

function toRow(item, uid) {
  const gd = item.grading_details ?? null
  return {
    id:                       item.id,
    user_id:                  uid,
    collectible_id:           item.type.id,
    collectible_variation_id: item.issue?.id ?? null,
    quantity:                 item.quantity  ?? 1,
    for_swap:                 item.for_swap  ?? false,
    grade:                    item.grade     ?? null,
    price_value:              item.price?.value    ?? null,
    price_currency:           item.price?.currency ?? null,
    serial_number:            item.serial_number   ?? null,
    private_comment:          item.private_comment ?? null,
    public_comment:           item.public_comment  ?? null,
    pictures:                 item.pictures?.length ? item.pictures : null,
    grading_company_id:       gd?.grading_company?.id   ?? null,
    grading_company:          gd?.grading_company?.name ?? null,
    slab_grade:               gd?.slab_grade?.value     ?? null,
    slab_number:              gd?.slab_number           ?? null,
    grading_designations:     gd?.grading_designations?.length
                                ? gd.grading_designations : null,
  }
}

// ─── Прогрес-бар ──────────────────────────────────────────────────────────

function progressBar(done, total, suffix = '') {
  const W      = 32
  const pct    = total > 0 ? done / total : 0
  const filled = Math.round(pct * W)
  const bar    = '█'.repeat(filled) + '░'.repeat(W - filled)
  const pctStr = (pct * 100).toFixed(1).padStart(5)
  process.stdout.write(`\r  [${bar}] ${pctStr}%  ${done}/${total}  ${suffix}   `)
}

// ─── Insert (ігнорує дублікати) ────────────────────────────────────────────

async function insertBatch(rows) {
  const { error } = await supabase
    .from('collected_items')
    .insert(rows, { ignoreDuplicates: true })  // пропускає якщо id вже є
  if (error) throw error
}

// ─── Main ─────────────────────────────────────────────────────────────────

async function main() {
  console.log(`\n📂 Файл:    ${filePath}`)
  console.log(`👤 User ID: ${userId}\n`)

  // 1. Читаємо файл
  const raw   = readFileSync(resolve(filePath), 'utf8')
  const data  = JSON.parse(raw)
  const items = data.items ?? data

  console.log(`📋 Записів у файлі: ${items.length}`)
  if (data.item_count) {
    console.log(`   item_count (Numista):  ${data.item_count}`)
    console.log(`   item_type_count:       ${data.item_type_count}`)
  }

  // 2. Завантажуємо валідні ID з БД
  console.log('\n🔍 Завантажую валідні ID з бази...')
  const [collectibleIds, variationIds, existingIds] = await Promise.all([
    loadIdSet('collectibles'),
    loadIdSet('collectible_variations'),
    loadIdSet('collected_items'),
  ])
  console.log(`   collectibles:           ${collectibleIds.size}`)
  console.log(`   collectible_variations: ${variationIds.size}`)
  console.log(`   collected_items (вже є): ${existingIds.size}`)

  // 3. Конвертуємо та фільтруємо
  const skippedNoCollectible = []
  const skippedNoVariation   = []
  const skippedExists        = []
  const validRows            = []

  for (const item of items) {
    const row = toRow(item, userId)

    if (existingIds.has(row.id)) {
      skippedExists.push(row.id)
      continue
    }
    if (!collectibleIds.has(row.collectible_id)) {
      skippedNoCollectible.push({ id: row.id, collectible_id: row.collectible_id })
      continue
    }
    if (row.collectible_variation_id && !variationIds.has(row.collectible_variation_id)) {
      // variation не знайдено — зберігаємо без неї, не пропускаємо
      row.collectible_variation_id = null
    }

    validRows.push(row)
  }

  console.log(`\n📊 Після фільтрації:`)
  console.log(`   До імпорту:              ${validRows.length}`)
  console.log(`   Вже в базі (пропущено):  ${skippedExists.length}`)
  console.log(`   Немає collectible (пропущено): ${skippedNoCollectible.length}`)
  console.log()

  if (validRows.length === 0) {
    console.log('ℹ️  Нічого імпортувати.')
    return
  }

  // 4. Insert батчами по 200
  const BATCH = 200
  let done = 0
  const startTime = Date.now()

  for (let i = 0; i < validRows.length; i += BATCH) {
    const chunk = validRows.slice(i, i + BATCH)
    await insertBatch(chunk)
    done += chunk.length
    progressBar(done, validRows.length, 'записів')
  }

  const elapsed = ((Date.now() - startTime) / 1000).toFixed(1)
  process.stdout.write('\n')

  // 5. Підсумок
  const withVariation = validRows.filter(r => r.collectible_variation_id).length
  const withGrading   = validRows.filter(r => r.grading_company).length
  const withPics      = validRows.filter(r => r.pictures).length

  console.log(`
✅ Готово!
   Імпортовано:       ${done} записів
   З variation:       ${withVariation}
   З grading slab:    ${withGrading}
   З фото:            ${withPics}
   Час:               ${elapsed}s
  `)

  if (skippedNoCollectible.length) {
    console.log(`⚠️  Пропущено (немає в collectibles): ${skippedNoCollectible.length}`)
    skippedNoCollectible.slice(0, 10).forEach(r =>
      console.log(`   item ${r.id} → collectible_id ${r.collectible_id}`)
    )
    if (skippedNoCollectible.length > 10)
      console.log(`   ... та ще ${skippedNoCollectible.length - 10}`)
  }
}

main().catch(err => { console.error('\n❌', err.message); process.exit(1) })
