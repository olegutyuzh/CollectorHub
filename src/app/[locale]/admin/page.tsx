import { createServerSupabaseClient } from '@/lib/supabase-server'
import { createAdminSupabaseClient } from '@/lib/supabase-admin'
import { Link } from '@/i18n/navigation'
import { BookOpen, Users, Star, ArrowRight } from 'lucide-react'

export default async function AdminDashboardPage() {
  const supabase = await createServerSupabaseClient()
  const adminClient = createAdminSupabaseClient()

  const [
    { count: catalogCount },
    { count: itemsCount },
    { data: usersData },
  ] = await Promise.all([
    supabase.from('collectibles').select('*', { count: 'exact', head: true }),
    supabase.from('collected_items').select('*', { count: 'exact', head: true }),
    adminClient.auth.admin.listUsers(),
  ])

  const userCount = usersData?.users?.length ?? 0

  const stats = [
    { label: 'Позицій у каталозі',  value: catalogCount ?? 0, icon: BookOpen, href: '/admin/collectibles', color: 'text-blue-400 bg-blue-500/10' },
    { label: 'Користувачів',        value: userCount,          icon: Users,    href: '/admin/users',        color: 'text-purple-400 bg-purple-500/10' },
    { label: 'Записів у колекціях', value: itemsCount ?? 0,    icon: Star,     href: null,                  color: 'text-emerald-400 bg-emerald-500/10' },
  ]

  return (
    <div>
      <h1 className="text-2xl font-bold text-white mb-1">Дашборд</h1>
      <p className="text-slate-400 text-sm mb-8">Загальна статистика системи</p>

      <div className="grid grid-cols-3 gap-5 mb-10">
        {stats.map(({ label, value, icon: Icon, href, color }) => (
          <div key={label} className="card p-5">
            <div className={`inline-flex p-2.5 rounded-lg ${color} mb-4`}>
              <Icon className="h-5 w-5" />
            </div>
            <p className="text-3xl font-bold text-[#c9a96e]">{value.toLocaleString()}</p>
            <div className="flex items-center justify-between mt-1">
              <p className="text-sm text-slate-400">{label}</p>
              {href && (
                <Link href={href} className="text-xs text-[#c9a96e] hover:text-[#c9a96e]/80 flex items-center gap-0.5">
                  Детальніше <ArrowRight className="h-3 w-3" />
                </Link>
              )}
            </div>
          </div>
        ))}
      </div>

      <div className="grid grid-cols-2 gap-5">
        <Link href="/admin/users" className="card p-5 hover:border-purple-500/30 transition-colors group">
          <div className="flex items-center gap-3 mb-2">
            <Users className="h-5 w-5 text-purple-400" />
            <h2 className="font-semibold text-white">Управління користувачами</h2>
          </div>
          <p className="text-sm text-slate-400">Перегляд користувачів, зміна ролей (user / admin)</p>
          <p className="text-xs text-[#c9a96e] mt-3 group-hover:underline flex items-center gap-1">
            Відкрити <ArrowRight className="h-3 w-3" />
          </p>
        </Link>

        <Link href="/admin/collectibles" className="card p-5 hover:border-blue-500/30 transition-colors group">
          <div className="flex items-center gap-3 mb-2">
            <BookOpen className="h-5 w-5 text-blue-400" />
            <h2 className="font-semibold text-white">Редагування каталогу</h2>
          </div>
          <p className="text-sm text-slate-400">Редагування банкнот у каталозі: назва, емітент, роки, країна</p>
          <p className="text-xs text-[#c9a96e] mt-3 group-hover:underline flex items-center gap-1">
            Відкрити <ArrowRight className="h-3 w-3" />
          </p>
        </Link>
      </div>
    </div>
  )
}
