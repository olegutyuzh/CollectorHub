'use client'

import { Link } from '@/i18n/navigation'
import { Plus } from 'lucide-react'

interface Props {
  hasSearch: boolean
}

export function CatalogEmpty({ hasSearch }: Props) {
  return (
    <div className="text-center py-20">
      <svg className="w-16 h-16 mx-auto mb-4 text-gray-200" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <rect x="2" y="6" width="20" height="12" rx="2" strokeWidth={1.5} />
        <circle cx="12" cy="12" r="3" strokeWidth={1.5} />
      </svg>

      {hasSearch ? (
        <>
          <p className="text-lg font-medium text-gray-500">Нічого не знайдено</p>
          <p className="text-sm text-gray-400 mt-1 mb-6">
            Такої банкноти ще немає в каталозі. Додайте її першим!
          </p>
          <Link href="/admin/banknotes/new" className="btn-primary inline-flex">
            <Plus className="h-4 w-4" />
            Додати банкноту до каталогу
          </Link>
        </>
      ) : (
        <>
          <p className="text-lg font-medium text-gray-500">Каталог порожній</p>
          <p className="text-sm text-gray-400 mt-1 mb-6">Додайте першу банкноту</p>
          <Link href="/admin/banknotes/new" className="btn-primary inline-flex">
            <Plus className="h-4 w-4" />
            Додати банкноту
          </Link>
        </>
      )}
    </div>
  )
}
