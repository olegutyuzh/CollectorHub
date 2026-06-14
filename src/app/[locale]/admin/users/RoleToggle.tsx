'use client'

import { useState, useTransition } from 'react'
import { updateUserRole } from './actions'

interface Props {
  userId: string
  currentRole: 'user' | 'admin'
  isSelf: boolean
}

export function RoleToggle({ userId, currentRole, isSelf }: Props) {
  const [role, setRole] = useState(currentRole)
  const [pending, startTransition] = useTransition()

  function toggle() {
    const next = role === 'admin' ? 'user' : 'admin'
    startTransition(async () => {
      await updateUserRole(userId, next)
      setRole(next)
    })
  }

  return (
    <button
      onClick={toggle}
      disabled={pending || isSelf}
      title={isSelf ? 'Не можна змінити власну роль' : undefined}
      className={`inline-flex items-center gap-1.5 px-2.5 py-1 rounded-full text-xs font-medium transition-colors border ${
        role === 'admin'
          ? 'bg-purple-500/10 text-purple-300 border-purple-500/20 hover:bg-purple-500/20'
          : 'bg-white/5 text-slate-400 border-white/10 hover:bg-white/10'
      } ${(pending || isSelf) ? 'opacity-50 cursor-not-allowed' : 'cursor-pointer'}`}
    >
      {pending ? '...' : role === 'admin' ? '👑 admin' : '👤 user'}
    </button>
  )
}
