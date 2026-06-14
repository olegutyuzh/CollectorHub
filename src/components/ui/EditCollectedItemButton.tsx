'use client'

import { useState } from 'react'
import { Pencil } from 'lucide-react'
import { EditCollectedItemModal } from './EditCollectedItemModal'
import type { CollectedItem } from '@/types/database'

interface Props {
  item: CollectedItem
  showLabel?: boolean
}

export function EditCollectedItemButton({ item, showLabel = false }: Props) {
  const [open, setOpen] = useState(false)

  return (
    <>
      <button
        onClick={() => setOpen(true)}
        title="Редагувати"
        className={
          showLabel
            ? 'inline-flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-sm font-medium border border-white/10 bg-white/5 text-slate-300 hover:bg-white/10 hover:border-white/20 transition-colors'
            : 'w-7 h-7 rounded-lg border border-white/10 flex items-center justify-center text-slate-500 hover:border-[#c9a96e]/40 hover:text-[#c9a96e] hover:bg-[#c9a96e]/8 transition-colors'
        }
      >
        <Pencil className="h-3.5 w-3.5" />
        {showLabel && 'Редагувати'}
      </button>

      {open && (
        <EditCollectedItemModal
          item={item}
          onClose={() => setOpen(false)}
        />
      )}
    </>
  )
}
