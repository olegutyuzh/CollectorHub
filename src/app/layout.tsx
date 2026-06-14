import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import { getLocale } from 'next-intl/server'
import './globals.css'

const inter = Inter({ subsets: ['latin', 'cyrillic'] })

export const metadata: Metadata = {
  title: 'CollectorHub',
  description: 'Banknote collection catalog',
}

// <html>/<body> live ONLY here. The locale layout must NOT render them too,
// otherwise locale routes get a doubled document shell -> hydration mismatch.
export default async function RootLayout({ children }: { children: React.ReactNode }) {
  const locale = await getLocale()
  return (
    <html lang={locale}>
      {/* suppressHydrationWarning: browser extensions (Grammarly etc.) inject
          data-gr-* attributes on <body> before React hydrates. */}
      <body className={inter.className} suppressHydrationWarning>{children}</body>
    </html>
  )
}
