'use server'

import { createAdminSupabaseClient } from '@/lib/supabase-admin'
import { createServerSupabaseClient } from '@/lib/supabase-server'
import { revalidatePath } from 'next/cache'

export async function updateUserRole(userId: string, role: 'user' | 'admin') {
  // Verify caller is admin
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) throw new Error('Not authenticated')

  const profileRes = await supabase.from('profiles').select('role').eq('id', user.id).single()
  const profile = profileRes.data as { role: string } | null
  if (profile?.role !== 'admin') throw new Error('Not authorized')

  // Apply using service-role client (bypasses RLS)
  const admin = createAdminSupabaseClient()
  const { error } = await admin.from('profiles').update({ role }).eq('id', userId)
  if (error) throw new Error(error.message)

  revalidatePath('/admin/users')
}
