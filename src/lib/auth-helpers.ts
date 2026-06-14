import { createServerSupabaseClient } from './supabase-server'
import { redirect } from 'next/navigation'

export type UserRole = 'user' | 'admin'

export async function getUserRole(): Promise<UserRole | null> {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return null

    const res = await supabase
      .from('profiles')
      .select('role')
      .eq('id', user.id)
      .single()
    const profile = res.data as { role: string } | null

    return (profile?.role as UserRole) ?? 'user'
  } catch {
    return null
  }
}

export async function requireAdmin() {
  const role = await getUserRole()
  if (role !== 'admin') redirect('/')
}
