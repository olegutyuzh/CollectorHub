import { requireAdmin } from '@/lib/auth-helpers'
import { Link } from '@/i18n/navigation'
import { LayoutDashboard, Users, BookOpen, ChevronLeft } from 'lucide-react'

const NAV = [
  { href: '/admin',              label: 'Дашборд',     icon: LayoutDashboard },
  { href: '/admin/users',        label: 'Користувачі', icon: Users },
  { href: '/admin/collectibles', label: 'Каталог',     icon: BookOpen },
]

export default async function AdminLayout({ children }: { children: React.ReactNode }) {
  await requireAdmin()

  return (
    <div className="flex min-h-screen bg-[#07111f]">
      {/* Sidebar */}
      <aside className="w-52 shrink-0 border-r border-white/10 flex flex-col bg-[#0a1929]">
        <div className="px-4 py-5 border-b border-white/10">
          <p className="text-xs font-semibold text-[#c9a96e] uppercase tracking-wider mb-0.5">CollectorHub</p>
          <p className="text-sm font-bold text-white">Адмін-панель</p>
        </div>

        <nav className="flex-1 px-3 py-4 space-y-0.5">
          {NAV.map(({ href, label, icon: Icon }) => (
            <Link
              key={href}
              href={href}
              className="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-400 hover:bg-white/8 hover:text-white transition-colors"
            >
              <Icon className="h-4 w-4 shrink-0" />
              {label}
            </Link>
          ))}
        </nav>

        <div className="px-3 py-4 border-t border-white/10">
          <Link
            href="/"
            className="flex items-center gap-2 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-200 transition-colors"
          >
            <ChevronLeft className="h-4 w-4" />
            На сайт
          </Link>
        </div>
      </aside>

      {/* Main */}
      <main className="flex-1 min-w-0 p-8">
        {children}
      </main>
    </div>
  )
}
