'use server'

import { createServerSupabaseClient } from '@/lib/supabase-server'
import { createAdminSupabaseClient } from '@/lib/supabase-admin'
import { revalidatePath } from 'next/cache'

export interface CollectibleEditData {
  title: string
  issuer_name: string | null
  min_year: number | null
  max_year: number | null
  category_code: string
  country_id: number | null
  currency_id: number | null
}

async function assertAdmin() {
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) throw new Error('Not authenticated')
  const profileRes = await supabase.from('profiles').select('role').eq('id', user.id).single()
  const data = profileRes.data as { role: string } | null
  if (data?.role !== 'admin') throw new Error('Not authorized')
}

export async function updateCollectible(id: number, data: CollectibleEditData) {
  await assertAdmin()
  const admin = createAdminSupabaseClient()
  const { error } = await admin.from('collectibles').update(data).eq('id', id)
  if (error) throw new Error(error.message)
  revalidatePath('/admin/collectibles')
}

export async function deleteCollectible(id: number) {
  await assertAdmin()
  const admin = createAdminSupabaseClient()
  const { error } = await admin.from('collectibles').delete().eq('id', id)
  if (error) throw new Error(error.message)
  revalidatePath('/admin/collectibles')
}

export async function uploadCollectiblePhoto(formData: FormData): Promise<{ url: string }> {
  await assertAdmin()

  const file = formData.get('file') as File | null
  const collectibleId = Number(formData.get('collectibleId'))
  const side = formData.get('side') as 'obverse' | 'reverse'

  if (!file || !collectibleId || !['obverse', 'reverse'].includes(side)) {
    throw new Error('Invalid upload parameters')
  }
  if (file.size > 10 * 1024 * 1024) throw new Error('File too large (max 10 MB)')

  // Read file buffer
  const arrayBuffer = await file.arrayBuffer()
  const inputBuffer = Buffer.from(arrayBuffer)

  // Apply watermark using sharp
  let processedBuffer: Buffer
  try {
    const sharp = (await import('sharp')).default
    const metadata = await sharp(inputBuffer).metadata()
    const w = metadata.width ?? 800
    const h = metadata.height ?? 600

    // Semi-transparent watermark text SVG
    const fontSize = Math.max(14, Math.round(Math.min(w, h) * 0.04))
    const padding = Math.round(fontSize * 0.8)
    const watermarkSvg = Buffer.from(
      `<svg width="${w}" height="${h}" xmlns="http://www.w3.org/2000/svg">` +
      `<text x="${w - padding}" y="${h - padding}" ` +
      `text-anchor="end" font-family="Arial,sans-serif" font-size="${fontSize}" ` +
      `font-weight="bold" fill="white" fill-opacity="0.65" ` +
      `stroke="black" stroke-width="0.5" stroke-opacity="0.3">` +
      `collectorhub.com</text></svg>`
    )

    processedBuffer = await sharp(inputBuffer)
      .composite([{ input: watermarkSvg, blend: 'over' }])
      .jpeg({ quality: 88, progressive: true })
      .toBuffer()
  } catch {
    // If sharp fails (e.g. local dev), upload as-is
    processedBuffer = inputBuffer
  }

  // Upload to Supabase Storage
  const admin = createAdminSupabaseClient()
  const ext = 'jpg'
  const path = `collectibles/${collectibleId}/${side}.${ext}`

  const { error: uploadError } = await admin.storage
    .from('collectible-images')
    .upload(path, processedBuffer, {
      contentType: 'image/jpeg',
      upsert: true,
    })
  if (uploadError) throw new Error(uploadError.message)

  // Get public URL
  const { data: { publicUrl } } = admin.storage
    .from('collectible-images')
    .getPublicUrl(path)

  // Update collectibles row
  const col = side === 'obverse' ? 'obverse_thumbnail' : 'reverse_thumbnail'
  const { error: updateError } = await admin
    .from('collectibles')
    .update({ [col]: publicUrl })
    .eq('id', collectibleId)
  if (updateError) throw new Error(updateError.message)

  revalidatePath('/admin/collectibles')
  return { url: publicUrl }
}
