'use client'

import { Link } from '@/i18n/navigation'
import { useState } from 'react'
import { createClient } from '@/lib/supabase'
import { BookOpen, CheckCircle } from 'lucide-react'
import { useTranslations, useLocale } from 'next-intl'

export default function ForgotPasswordPage() {
  const t = useTranslations('Auth.forgot')
  const locale = useLocale()
  const [email, setEmail] = useState('')
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)
  const [sent, setSent] = useState(false)

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    setLoading(true)
    setError('')

    const supabase = createClient()
    const origin = process.env.NEXT_PUBLIC_SITE_URL ?? window.location.origin
    const { error } = await supabase.auth.resetPasswordForEmail(email, {
      redirectTo: `${origin}/auth/callback?next=/${locale}/auth/reset-password`,
    })

    if (error) {
      setError(t('error'))
      setLoading(false)
    } else {
      setSent(true)
    }
  }

  return (
    <div className="min-h-[80vh] flex items-center justify-center px-4">
      <div className="w-full max-w-sm">
        <div className="text-center mb-8">
          <BookOpen className="h-10 w-10 text-blue-600 mx-auto mb-3" />
          <h1 className="text-2xl font-bold text-gray-900">{t('title')}</h1>
          <p className="text-gray-500 text-sm mt-1">{t('subtitle')}</p>
        </div>

        {sent ? (
          <div className="card p-6 text-center space-y-3">
            <CheckCircle className="h-10 w-10 text-green-500 mx-auto" />
            <p className="font-semibold text-gray-900">{t('success')}</p>
            <p className="text-sm text-gray-500">{t('successDesc', { email })}</p>
          </div>
        ) : (
          <form onSubmit={handleSubmit} className="card p-6 space-y-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Email</label>
              <input
                type="email"
                value={email}
                onChange={e => setEmail(e.target.value)}
                required
                className="input"
                placeholder="your@email.com"
              />
            </div>
            {error && <p className="text-sm text-red-600 bg-red-50 rounded-lg px-3 py-2">{error}</p>}
            <button type="submit" disabled={loading} className="btn-primary w-full justify-center">
              {loading ? t('loading') : t('submit')}
            </button>
          </form>
        )}

        <p className="text-center text-sm text-gray-500 mt-4">
          <Link href="/auth/login" className="text-blue-600 hover:underline font-medium">
            {t('backToLogin')}
          </Link>
        </p>
      </div>
    </div>
  )
}
