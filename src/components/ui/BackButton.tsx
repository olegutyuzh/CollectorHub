'use client'

import { useRouter } from 'next/navigation'
import { ArrowLeft } from 'lucide-react'

interface Props {
  label: string
  /** Fallback href if there is no history to go back to (e.g. direct URL open) */
  fallback?: string
  className?: string
}

export function BackButton({ label, fallback = '/collection', className }: Props) {
  const router = useRouter()

  function handleBack() {
    // If this page was opened from within the app, go back (preserves all filters/params)
    // window.history.length <= 2 means there's no in-app history (direct navigation or new tab)
    if (typeof window !== 'undefined' && window.history.length > 2) {
      router.back()
    } else {
      router.push(fallback)
    }
  }

  return (
    <button
      onClick={handleBack}
      className={
        className ??
        'inline-flex items-center gap-1.5 text-sm text-gray-500 hover:text-gray-800 mb-6 transition-colors'
      }
    >
      <ArrowLeft className="h-4 w-4" />
      {label}
    </button>
  )
}
