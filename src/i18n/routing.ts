import { defineRouting } from 'next-intl/routing'

export const routing = defineRouting({
  locales: ['uk', 'en', 'pl', 'de'],
  defaultLocale: 'uk',
})

export type Locale = (typeof routing.locales)[number]
