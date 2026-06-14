export interface CountryStat        { code: string; name: string; flag: string; count: number }
export interface IssuerStat         { name: string; count: number }
export interface GradeStat          { grade: string; count: number; color: string }
export interface YearStat           { year: number; count: number }
export interface GradingCompanyStat { company: string; count: number }
export interface SlabGradeStat      { grade: string; count: number }

export interface StatsSummary {
  items: number
  types: number
  countries: number
  forSwap: number
}

export interface AllStats {
  summary:            StatsSummary
  countryStats:       CountryStat[]
  issuerStats:        IssuerStat[]
  gradeStats:         GradeStat[]
  yearStats:          YearStat[]
  gradingCompanyStats: GradingCompanyStat[]
  slabGradeStats:     SlabGradeStat[]
}
