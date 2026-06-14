import { clsx, type ClassValue } from 'clsx'
import { twMerge } from 'tailwind-merge'

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

export function formatGrade(grade: string): string {
  const grades: Record<string, string> = {
    UNC: 'Uncirculated (UNC)',
    AU: 'About Uncirculated (AU)',
    XF: 'Extremely Fine (XF)',
    VF: 'Very Fine (VF)',
    F: 'Fine (F)',
    VG: 'Very Good (VG)',
    G: 'Good (G)',
    AG: 'About Good (AG)',
    P: 'Poor (P)',
  }
  return grades[grade] ?? grade
}
