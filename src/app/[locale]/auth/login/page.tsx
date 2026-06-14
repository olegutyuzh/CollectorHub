'use client'

import { Link } from '@/i18n/navigation'
import { useState } from 'react'
import { createClient } from '@/lib/supabase'
import { useRouter } from '@/i18n/navigation'
import { BookOpen, Eye, EyeOff } from 'lucide-react'
import { useTranslations } from 'next-intl'

export default function LoginPage() {
  const t = useTranslations('Auth.login')
  const router = useRouter()
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)
  const [showPassword, setShowPassword] = useState(false)

  async function handleLogin(e: React.FormEvent) {
    e.preventDefault()
    setLoading(true)
    setError('')
    const supabase = createClient()
    const { error } = await supabase.auth.signInWithPassword({ email, password })
    if (error) {
      setError(t('error'))
      setLoading(false)
    } else {
      router.push('/collection')
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
        <form onSubmit={handleLogin} className="card p-6 space-y-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Email</label>
            <input type="email" value={email} onChange={e => setEmail(e.target.value)}
              required className="input" placeholder="your@email.com" />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">{t('password')}</label>
            <div className="relative">
              <input type={showPassword ? 'text' : 'password'} value={password} onChange={e => setPassword(e.target.value)}
                required className="input pr-10" placeholder="••••••••" />
              <button
                type="button"
                onClick={() => setShowPassword(v => !v)}
                className="absolute inset-y-0 right-0 flex items-center px-3 text-gray-400 hover:text-gray-600"
                tabIndex={-1}
              >
                {showPassword ? <EyeOff className="h-4 w-4" /> : <Eye className="h-4 w-4" />}
              </button>
            </div>
          </div>
          <div className="text-right -mt-1">
            <Link href="/auth/forgot-password" className="text-sm text-blue-600 hover:underline">
              {t('forgotPassword')}
            </Link>
          </div>
          {error && <p className="text-sm text-red-600 bg-red-50 rounded-lg px-3 py-2">{error}</p>}
          <button type="submit" disabled={loading} className="btn-primary w-full justify-center">
            {loading ? t('loading') : t('submit')}
          </button>
        </form>
        <p className="text-center text-sm text-gray-500 mt-4">
          {t('noAccount')}{' '}
          <Link href="/auth/register" className="text-blue-600 hover:underline font-medium">
            {t('registerLink')}
          </Link>
        </p>
      </div>
    </div>
  )
}
