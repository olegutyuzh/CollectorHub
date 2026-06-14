'use client'

import { useState } from 'react'
import { Plus } from 'lucide-react'
import { AddToCollectionModal } from './AddToCollectionModal'
import type { CollectibleWithRelations } from '@/types/database'

interface Props {
  collectible: CollectibleWithRelations
}

export function AddToCollectionButton({ collectible }: Props) {
  const [open, setOpen] = useState(false)

  return (
    <>
      <button onClick={() => setOpen(true)} className="btn-primary w-full justify-center">
        <Plus className="h-4 w-4" />
        Додати до колекції
      </button>

      {open && (
        <AddToCollectionModal
          collectible={collectible}
          onClose={() => setOpen(false)}
          onSuccess={() => setOpen(false)}
        />
      )}
    </>
  )
}
