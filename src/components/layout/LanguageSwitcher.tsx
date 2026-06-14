'use client'

import { useLocale } from 'next-intl'
import { useRouter, usePathname } from '@/i18n/navigation'
import { useState } from 'react'
import { ChevronDown } from 'lucide-react'

const LOCALES = [
  { code: 'uk', label: 'Укр', flag: '🇺🇦' },
  { code: 'en', label: 'Eng', flag: '🇬🇧' },
  { code: 'pl', label: 'Pol', flag: '🇵🇱' },
  { code: 'de', label: 'Deu', flag: '🇩🇪' },
] as const

export function LanguageSwitcher() {
  const locale = useLocale()
  const router = useRouter()
  const pathname = usePathname()
  const [open, setOpen] = useState(false)

  const current = LOCALES.find(l => l.code === locale) ?? LOCALES[0]

  function switchLocale(code: string) {
    router.replace(pathname, { locale: code })
    setOpen(false)
  }

  return (
    <div className="relative">
      <button
        onClick={() => setOpen(v => !v)}
        className="flex items-center gap-1 rounded-lg px-2 py-1.5 text-sm text-gray-600 hover:bg-gray-100 transition-colors"
      >
        <span>{current.flag}</span>
        <span className="hidden sm:inline font-medium">{current.label}</span>
        <ChevronDown className="h-3.5 w-3.5 text-gray-400" />
      </button>

      {open && (
        <>
          <div className="fixed inset-0 z-40" onClick={() => setOpen(false)} />
          <div className="absolute right-0 mt-1 w-32 card py-1 shadow-lg z-50">
            {LOCALES.map(l => (
              <button
                key={l.code}
                onClick={() => switchLocale(l.code)}
                className={`flex items-center gap-2 w-full px-3 py-2 text-sm hover:bg-gray-50 transition-colors ${
                  l.code === locale ? 'text-blue-700 font-semibold' : 'text-gray-700'
                }`}
              >
                <span>{l.flag}</span>
                <span>{l.label}</span>
              </button>
            ))}
          </div>
        </>
      )}
    </div>
  )
}
