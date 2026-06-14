'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { Trash2, Check, X } from 'lucide-react'
import { createClient } from '@/lib/supabase'

interface Props {
  itemId: number
}

export function DeleteCollectedItemButton({ itemId }: Props) {
  const router = useRouter()
  const [confirm, setConfirm] = useState(false)
  const [loading, setLoading] = useState(false)

  async function handleDelete() {
    setLoading(true)
    const supabase = createClient()
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    await (supabase as any).from('collected_items').delete().eq('id', itemId)
    router.refresh()
  }

  if (confirm) {
    return (
      <span className="inline-flex items-center gap-1">
        <button
          onClick={handleDelete}
          disabled={loading}
          title="Підтвердити видалення"
          className="w-6 h-6 rounded flex items-center justify-center bg-red-500/80 text-white hover:bg-red-500 disabled:opacity-50 transition-colors"
        >
          <Check className="h-3 w-3" />
        </button>
        <button
          onClick={() => setConfirm(false)}
          title="Скасувати"
          className="w-6 h-6 rounded flex items-center justify-center bg-white/10 text-slate-400 hover:bg-white/15 transition-colors"
        >
          <X className="h-3 w-3" />
        </button>
      </span>
    )
  }

  return (
    <button
      onClick={() => setConfirm(true)}
      title="Видалити"
      className="w-7 h-7 rounded-lg border border-white/10 flex items-center justify-center text-slate-500 hover:border-red-500/40 hover:text-red-400 hover:bg-red-500/8 transition-colors"
    >
      <Trash2 className="h-3.5 w-3.5" />
    </button>
  )
}
