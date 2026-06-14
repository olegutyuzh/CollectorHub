import { Link } from '@/i18n/navigation'
import { createAdminSupabaseClient } from '@/lib/supabase-admin'
import {
  Banknote,
  Coins,
  FileText,
  Library,
  Medal,
  Search,
  Shield,
  Stamp,
  Star,
  Users,
} from 'lucide-react'
import Image from 'next/image'

interface HomepageStats {
  notes_count: number
  countries_count: number
  collectors_count: number
}

async function getStats(): Promise<HomepageStats> {
  try {
    const admin = createAdminSupabaseClient()
    const { data, error } = await admin.rpc('get_homepage_stats')
    if (error || !data) return { notes_count: 0, countries_count: 0, collectors_count: 0 }
    return data as HomepageStats
  } catch {
    return { notes_count: 0, countries_count: 0, collectors_count: 0 }
  }
}

function formatNumber(n: number): string {
  if (n >= 1000) return n.toLocaleString('uk-UA')
  return String(n)
}

const categories = [
  { icon: Banknote, title: 'Банкноти', text: 'Паперові гроші світу — випуски, варіанти та контекст.' },
  { icon: Coins,    title: 'Монети',   text: 'Монети за країною, епохою, металом та номіналом.' },
  { icon: Stamp,    title: 'Марки',    text: 'Поштова історія, серії, стан та тематичні колекції.' },
  { icon: Shield,   title: 'Шеврони',  text: 'Емблеми підрозділів, шеврони, провенанс і архіви.' },
  { icon: Medal,    title: 'Медалі',   text: 'Нагороди, відзнаки, пам\'ятні медалі та документи.' },
  { icon: FileText, title: 'Документи',text: 'Сертифікати, архівні папери та колекційні нотатки.' },
]

const features = [
  { icon: Library, title: 'Каталог музейного рівня',   text: 'Структуровані сторінки для кожного предмету з місцем для історії та метаданих.' },
  { icon: Search,  title: 'Потужний пошук',             text: 'Пошук, фільтри та навігація по категоріях — знайди будь-що за секунди.' },
  { icon: Star,    title: 'Особиста колекція',          text: 'Відстежуй свої предмети, стан, вартість і хронологію.' },
  { icon: Users,   title: 'Спільнота колекціонерів',    text: 'Підключайся до колекціонерів по всьому світу, обмінюйся та відкривай нове.' },
]

export default async function HomePage() {
  const stats = await getStats()

  return (
    <div className="overflow-hidden">
      {/* ── Hero ── */}
      <section className="relative bg-gradient-to-br from-[#07111f] via-[#0d1f33] to-[#07111f] py-20 px-4">
        {/* Subtle radial glow */}
        <div className="pointer-events-none absolute inset-0 flex items-center justify-center">
          <div className="h-[600px] w-[600px] rounded-full bg-[#c9a96e]/5 blur-3xl" />
        </div>

        <div className="relative mx-auto max-w-6xl flex flex-col lg:flex-row items-center gap-12">
          {/* Text */}
          <div className="flex-1 text-center lg:text-left">
            <span className="inline-block mb-4 rounded-full border border-[#c9a96e]/30 bg-[#c9a96e]/10 px-4 py-1 text-xs font-semibold tracking-wider text-[#c9a96e] uppercase">
              CollectorHub
            </span>
            <h1 className="text-4xl sm:text-5xl lg:text-6xl font-bold text-white leading-tight mb-5">
              The Home for<br />
              <span className="text-[#c9a96e]">Collectors</span> Worldwide
            </h1>
            <p className="text-slate-400 text-lg mb-8 max-w-xl mx-auto lg:mx-0">
              Преміальна платформа для банкнот, монет, марок, шевронів, медалей і документів.
              Зберігайте колекції, досліджуйте&nbsp;історію та показуйте рідкісні предмети світу.
            </p>
            <div className="flex flex-col sm:flex-row gap-3 justify-center lg:justify-start">
              <Link href="/catalog" className="btn-primary">
                <Library className="h-4 w-4" />
                Дослідити каталог
              </Link>
              <Link href="/auth/register" className="btn-secondary">
                Створити колекцію
              </Link>
            </div>
          </div>

          {/* Hero image */}
          <div className="flex-shrink-0 w-72 sm:w-80 lg:w-[420px]">
            <Image
              src="/hero.webp"
              alt="CollectorHub — банкноти, монети, марки"
              width={600}
              height={480}
              priority
              className="w-full h-auto drop-shadow-2xl"
            />
          </div>
        </div>
      </section>

      {/* ── Stats ── */}
      <section className="border-y border-white/10 bg-white/[0.02] py-8">
        <div className="mx-auto max-w-4xl px-4">
          <div className="grid grid-cols-3 gap-4 text-center">
            <div>
              <p className="text-3xl font-bold text-[#c9a96e]">{formatNumber(stats.notes_count)}</p>
              <p className="text-sm text-slate-500 mt-1">Предметів у каталозі</p>
            </div>
            <div>
              <p className="text-3xl font-bold text-[#c9a96e]">{formatNumber(stats.countries_count)}</p>
              <p className="text-sm text-slate-500 mt-1">Країн</p>
            </div>
            <div>
              <p className="text-3xl font-bold text-[#c9a96e]">{formatNumber(stats.collectors_count)}</p>
              <p className="text-sm text-slate-500 mt-1">Колекціонерів</p>
            </div>
          </div>
        </div>
      </section>

      {/* ── Categories ── */}
      <section className="py-20 px-4">
        <div className="mx-auto max-w-6xl">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-bold text-white mb-3">Колекції, які виглядають як музей</h2>
            <p className="text-slate-400 max-w-xl mx-auto">
              Не просто база даних — сучасний digital museum для предметів із власною історією, походженням і рідкістю.
            </p>
          </div>
          <div className="grid sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {categories.map(({ icon: Icon, title, text }) => (
              <div key={title} className="card p-6 hover:border-[#c9a96e]/30 hover:bg-white/[0.06] transition-colors">
                <div className="w-10 h-10 rounded-xl bg-[#c9a96e]/10 flex items-center justify-center mb-4">
                  <Icon className="h-5 w-5 text-[#c9a96e]" />
                </div>
                <h3 className="font-semibold text-white mb-2">{title}</h3>
                <p className="text-sm text-slate-400 leading-relaxed">{text}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* ── Features ── */}
      <section className="py-16 px-4 border-t border-white/10 bg-white/[0.02]">
        <div className="mx-auto max-w-6xl">
          <h2 className="text-2xl font-bold text-center text-white mb-10">Чому CollectorHub</h2>
          <div className="grid sm:grid-cols-2 lg:grid-cols-4 gap-6">
            {features.map(({ icon: Icon, title, text }) => (
              <div key={title} className="text-center px-2">
                <div className="w-12 h-12 rounded-2xl bg-[#c9a96e]/10 flex items-center justify-center mx-auto mb-4">
                  <Icon className="h-6 w-6 text-[#c9a96e]" />
                </div>
                <h3 className="font-semibold text-white mb-2">{title}</h3>
                <p className="text-sm text-slate-400 leading-relaxed">{text}</p>
              </div>
            ))}
          </div>
        </div>
      </section>
    </div>
  )
}
