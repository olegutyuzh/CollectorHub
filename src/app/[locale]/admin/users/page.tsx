import { createAdminSupabaseClient } from '@/lib/supabase-admin'
import { createServerSupabaseClient } from '@/lib/supabase-server'
import { RoleToggle } from './RoleToggle'

export default async function AdminUsersPage() {
  const supabase = await createServerSupabaseClient()
  const adminClient = createAdminSupabaseClient()

  const { data: { user: me } } = await supabase.auth.getUser()

  const { data: authData } = await adminClient.auth.admin.listUsers()
  const authUsers = authData?.users ?? []

  const { data: profiles } = await adminClient
    .from('profiles')
    .select('id, role, created_at')

  const roleMap = new Map((profiles ?? []).map(p => [p.id, p.role as 'user' | 'admin']))

  const users = authUsers.map(u => ({
    id: u.id,
    email: u.email ?? '—',
    createdAt: u.created_at,
    lastSignIn: u.last_sign_in_at ?? null,
    role: roleMap.get(u.id) ?? 'user' as 'user' | 'admin',
  })).sort((a, b) => new Date(b.createdAt).getTime() - new Date(a.createdAt).getTime())

  return (
    <div>
      <h1 className="text-2xl font-bold text-white mb-1">Користувачі</h1>
      <p className="text-slate-400 text-sm mb-6">{users.length} зареєстрованих</p>

      <div className="card overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/10 bg-white/[0.04]">
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500">Email</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500">Зареєстровано</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500">Останній вхід</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-slate-500">Роль</th>
            </tr>
          </thead>
          <tbody>
            {users.map(u => (
              <tr key={u.id} className="border-t border-white/8 hover:bg-white/[0.03]">
                <td className="px-4 py-3 font-medium text-slate-100">
                  {u.email}
                  {u.id === me?.id && <span className="ml-2 text-xs text-slate-500">(ви)</span>}
                </td>
                <td className="px-4 py-3 text-slate-400">
                  {new Date(u.createdAt).toLocaleDateString('uk')}
                </td>
                <td className="px-4 py-3 text-slate-400">
                  {u.lastSignIn ? new Date(u.lastSignIn).toLocaleDateString('uk') : '—'}
                </td>
                <td className="px-4 py-3">
                  <RoleToggle
                    userId={u.id}
                    currentRole={u.role}
                    isSelf={u.id === me?.id}
                  />
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  )
}
