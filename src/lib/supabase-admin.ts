import { createClient } from '@supabase/supabase-js'

/**
 * Admin Supabase client with service role key.
 * MUST only be used server-side (never in client components).
 */
export function createAdminSupabaseClient() {
  return createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!,
    { auth: { autoRefreshToken: false, persistSession: false } }
  )
}
