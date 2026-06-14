import { NextIntlClientProvider, hasLocale } from 'next-intl'
import { getMessages } from 'next-intl/server'
import { notFound } from 'next/navigation'
import { routing } from '@/i18n/routing'
import { Header } from '@/components/layout/Header'
import { getUserRole } from '@/lib/auth-helpers'

interface Props {
  children: React.ReactNode
  params: Promise<{ locale: string }>
}

export default async function LocaleLayout({ children, params }: Props) {
  const { locale } = await params

  if (!hasLocale(routing.locales, locale)) notFound()

  const [messages, role] = await Promise.all([
    getMessages(),
    getUserRole(),
  ])

  // No <html>/<body> here — the root layout (src/app/layout.tsx) owns the
  // document shell. This layout only adds providers and chrome.
  return (
    <NextIntlClientProvider messages={messages}>
      <Header initialIsAdmin={role === 'admin'} />
      <main className="min-h-screen">{children}</main>
      <LocaleFooter locale={locale} />
    </NextIntlClientProvider>
  )
}

// Server footer that reads the year
async function LocaleFooter({ locale }: { locale: string }) {
  const { getTranslations } = await import('next-intl/server')
  const t = await getTranslations('Footer')
  const year = new Date().getFullYear()
  return (
    <footer className="border-t border-white/10 mt-16 py-8 text-center text-sm text-slate-500">
      {t('copy', { year })}
    </footer>
  )
}
