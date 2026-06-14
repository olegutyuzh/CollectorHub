export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  public: {
    Tables: {
      catalogues: {
        Row: {
          author: string | null
          code: string
          created_at: string | null
          id: number
          isbn13: string | null
          publisher: string | null
          title: string
        }
        Insert: {
          author?: string | null
          code: string
          created_at?: string | null
          id: number
          isbn13?: string | null
          publisher?: string | null
          title: string
        }
        Update: {
          author?: string | null
          code?: string
          created_at?: string | null
          id?: number
          isbn13?: string | null
          publisher?: string | null
          title?: string
        }
        Relationships: []
      }
      categories: {
        Row: {
          code: string | null
          created_at: string
          created_by: string | null
          id: number
          is_active: boolean
          modified_at: string | null
          modified_by: string | null
          name: string
        }
        Insert: {
          code?: string | null
          created_at?: string
          created_by?: string | null
          id: number
          is_active?: boolean
          modified_at?: string | null
          modified_by?: string | null
          name: string
        }
        Update: {
          code?: string | null
          created_at?: string
          created_by?: string | null
          id?: number
          is_active?: boolean
          modified_at?: string | null
          modified_by?: string | null
          name?: string
        }
        Relationships: []
      }
      collected_items: {
        Row: {
          collectible_id: number
          collectible_variation_id: number | null
          created_at: string
          for_swap: boolean
          grade: string | null
          grading_company: string | null
          grading_company_id: number | null
          grading_designations: Json | null
          grading_details: Json | null
          id: number
          pictures: Json | null
          price_currency: string | null
          price_value: number | null
          private_comment: string | null
          public_comment: string | null
          quantity: number
          serial_number: string | null
          slab_grade: string | null
          slab_number: string | null
          user_id: string
        }
        Insert: {
          collectible_id: number
          collectible_variation_id?: number | null
          created_at?: string
          for_swap?: boolean
          grade?: string | null
          grading_company?: string | null
          grading_company_id?: number | null
          grading_designations?: Json | null
          grading_details?: Json | null
          id?: number
          pictures?: Json | null
          price_currency?: string | null
          price_value?: number | null
          private_comment?: string | null
          public_comment?: string | null
          quantity?: number
          serial_number?: string | null
          slab_grade?: string | null
          slab_number?: string | null
          user_id: string
        }
        Update: {
          collectible_id?: number
          collectible_variation_id?: number | null
          created_at?: string
          for_swap?: boolean
          grade?: string | null
          grading_company?: string | null
          grading_company_id?: number | null
          grading_designations?: Json | null
          grading_details?: Json | null
          id?: number
          pictures?: Json | null
          price_currency?: string | null
          price_value?: number | null
          private_comment?: string | null
          public_comment?: string | null
          quantity?: number
          serial_number?: string | null
          slab_grade?: string | null
          slab_number?: string | null
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "collected_items_issue_id_fkey"
            columns: ["collectible_variation_id"]
            isOneToOne: false
            referencedRelation: "collectible_variations"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "collected_items_type_id_fkey"
            columns: ["collectible_id"]
            isOneToOne: false
            referencedRelation: "collectibles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fk_collected_items_grading_company"
            columns: ["grading_company_id"]
            isOneToOne: false
            referencedRelation: "grading_companies"
            referencedColumns: ["id"]
          },
        ]
      }
      collectible_details: {
        Row: {
          category: string | null
          collectible_id: number
          collectible_type_id: number | null
          demonetization_date: string | null
          demonetized: boolean | null
          denominations: Json | null
          description: string | null
          fetched_at: string | null
          issuer_code: string | null
          obverse_description: string | null
          obverse_picture: string | null
          raw_data: Json | null
          references: Json | null
          references_data: Json | null
          reverse_description: string | null
          reverse_picture: string | null
          series: Json | null
          size: Json | null
          title: string | null
          weight: number | null
        }
        Insert: {
          category?: string | null
          collectible_id: number
          collectible_type_id?: number | null
          demonetization_date?: string | null
          demonetized?: boolean | null
          denominations?: Json | null
          description?: string | null
          fetched_at?: string | null
          issuer_code?: string | null
          obverse_description?: string | null
          obverse_picture?: string | null
          raw_data?: Json | null
          references?: Json | null
          references_data?: Json | null
          reverse_description?: string | null
          reverse_picture?: string | null
          series?: Json | null
          size?: Json | null
          title?: string | null
          weight?: number | null
        }
        Update: {
          category?: string | null
          collectible_id?: number
          collectible_type_id?: number | null
          demonetization_date?: string | null
          demonetized?: boolean | null
          denominations?: Json | null
          description?: string | null
          fetched_at?: string | null
          issuer_code?: string | null
          obverse_description?: string | null
          obverse_picture?: string | null
          raw_data?: Json | null
          references?: Json | null
          references_data?: Json | null
          reverse_description?: string | null
          reverse_picture?: string | null
          series?: Json | null
          size?: Json | null
          title?: string | null
          weight?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "collectible_details_collectible_id_fkey"
            columns: ["collectible_id"]
            isOneToOne: true
            referencedRelation: "collectibles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fk_collectible_details_issuer_code"
            columns: ["issuer_code"]
            isOneToOne: false
            referencedRelation: "countries"
            referencedColumns: ["code"]
          },
        ]
      }
      collectible_type: {
        Row: {
          created_at: string | null
          created_by: string | null
          id: number
          is_active: boolean
          modified_at: string | null
          modified_by: string | null
          name: string
        }
        Insert: {
          created_at?: string | null
          created_by?: string | null
          id: number
          is_active?: boolean
          modified_at?: string | null
          modified_by?: string | null
          name: string
        }
        Update: {
          created_at?: string | null
          created_by?: string | null
          id?: number
          is_active?: boolean
          modified_at?: string | null
          modified_by?: string | null
          name?: string
        }
        Relationships: []
      }
      collectible_variations: {
        Row: {
          collectible_id: number
          comment: string | null
          created_at: string
          gregorian_year: number | null
          id: number
          is_dated: boolean
          signatures: Json | null
          year: number | null
        }
        Insert: {
          collectible_id: number
          comment?: string | null
          created_at?: string
          gregorian_year?: number | null
          id: number
          is_dated?: boolean
          signatures?: Json | null
          year?: number | null
        }
        Update: {
          collectible_id?: number
          comment?: string | null
          created_at?: string
          gregorian_year?: number | null
          id?: number
          is_dated?: boolean
          signatures?: Json | null
          year?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "collectible_variations_collectible_id_fkey"
            columns: ["collectible_id"]
            isOneToOne: false
            referencedRelation: "collectibles"
            referencedColumns: ["id"]
          },
        ]
      }
      collectibles: {
        Row: {
          category_code: string
          country_id: number | null
          currency_id: number | null
          created_at: string | null
          id: number
          issuer_code: string | null
          issuer_name: string | null
          max_year: number | null
          min_year: number | null
          object_type_id: number | null
          object_type_name: string | null
          obverse_thumbnail: string | null
          reverse_thumbnail: string | null
          title: string
        }
        Insert: {
          category_code: string
          country_id?: number | null
          currency_id?: number | null
          created_at?: string | null
          id: number
          issuer_code?: string | null
          issuer_name?: string | null
          max_year?: number | null
          min_year?: number | null
          object_type_id?: number | null
          object_type_name?: string | null
          obverse_thumbnail?: string | null
          reverse_thumbnail?: string | null
          title: string
        }
        Update: {
          category_code?: string
          country_id?: number | null
          currency_id?: number | null
          created_at?: string | null
          id?: number
          issuer_code?: string | null
          issuer_name?: string | null
          max_year?: number | null
          min_year?: number | null
          object_type_id?: number | null
          object_type_name?: string | null
          obverse_thumbnail?: string | null
          reverse_thumbnail?: string | null
          title?: string
        }
        Relationships: [
          {
            foreignKeyName: "collectibles_category_code_fkey"
            columns: ["category_code"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["code"]
          },
          {
            foreignKeyName: "collectibles_country_id_fkey"
            columns: ["country_id"]
            isOneToOne: false
            referencedRelation: "countries"
            referencedColumns: ["id"]
          },
        ]
      }
      countries: {
        Row: {
          alpha3: string | null
          code: string | null
          flag_emoji: string | null
          id: number
          name_en: string
          name_local: string | null
          name_uk: string | null
        }
        Insert: {
          alpha3?: string | null
          code?: string | null
          flag_emoji?: string | null
          id?: number
          name_en: string
          name_local?: string | null
          name_uk?: string | null
        }
        Update: {
          alpha3?: string | null
          code?: string | null
          flag_emoji?: string | null
          id?: number
          name_en?: string
          name_local?: string | null
          name_uk?: string | null
        }
        Relationships: []
      }
      currencies: {
        Row: {
          code: string | null
          id: number
          name_en: string
          name_uk: string | null
          numeric_code: string | null
          replaced_by_code: string | null
          status: string | null
          symbol: string | null
          valid_from: string | null
          valid_to: string | null
        }
        Insert: {
          code?: string | null
          id?: number
          name_en: string
          name_uk?: string | null
          numeric_code?: string | null
          replaced_by_code?: string | null
          status?: string | null
          symbol?: string | null
          valid_from?: string | null
          valid_to?: string | null
        }
        Update: {
          code?: string | null
          id?: number
          name_en?: string
          name_uk?: string | null
          numeric_code?: string | null
          replaced_by_code?: string | null
          status?: string | null
          symbol?: string | null
          valid_from?: string | null
          valid_to?: string | null
        }
        Relationships: []
      }
      grading_companies: {
        Row: {
          created_at: string
          created_by: string | null
          grade_max: number | null
          grade_min: number | null
          id: number
          is_active: boolean
          modified_at: string | null
          modified_by: string | null
          name_full: string | null
          name_short: string
          website_url: string | null
        }
        Insert: {
          created_at?: string
          created_by?: string | null
          grade_max?: number | null
          grade_min?: number | null
          id: number
          is_active?: boolean
          modified_at?: string | null
          modified_by?: string | null
          name_full?: string | null
          name_short: string
          website_url?: string | null
        }
        Update: {
          created_at?: string
          created_by?: string | null
          grade_max?: number | null
          grade_min?: number | null
          id?: number
          is_active?: boolean
          modified_at?: string | null
          modified_by?: string | null
          name_full?: string | null
          name_short?: string
          website_url?: string | null
        }
        Relationships: []
      }
      grading_designations: {
        Row: {
          code: string
          created_at: string
          created_by: string | null
          description: string | null
          grading_company_id: number
          id: number
          is_active: boolean
          modified_at: string | null
          modified_by: string | null
        }
        Insert: {
          code: string
          created_at?: string
          created_by?: string | null
          description?: string | null
          grading_company_id: number
          id?: number
          is_active?: boolean
          modified_at?: string | null
          modified_by?: string | null
        }
        Update: {
          code?: string
          created_at?: string
          created_by?: string | null
          description?: string | null
          grading_company_id?: number
          id?: number
          is_active?: boolean
          modified_at?: string | null
          modified_by?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "grading_designations_grading_company_id_fkey"
            columns: ["grading_company_id"]
            isOneToOne: false
            referencedRelation: "grading_companies"
            referencedColumns: ["id"]
          },
        ]
      }
      issuers: {
        Row: {
          code: string | null
          end_year: number | null
          flag_url: string | null
          id: number
          is_section: boolean
          name_en: string
          parent_id: number | null
          start_year: number | null
          wikidata_id: string | null
        }
        Insert: {
          code?: string | null
          end_year?: number | null
          flag_url?: string | null
          id: number
          is_section?: boolean
          name_en: string
          parent_id?: number | null
          start_year?: number | null
          wikidata_id?: string | null
        }
        Update: {
          code?: string | null
          end_year?: number | null
          flag_url?: string | null
          id?: number
          is_section?: boolean
          name_en?: string
          parent_id?: number | null
          start_year?: number | null
          wikidata_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "issuers_parent_id_fkey"
            columns: ["parent_id"]
            isOneToOne: false
            referencedRelation: "issuers"
            referencedColumns: ["id"]
          },
        ]
      }
      mints: {
        Row: {
          country_code: string | null
          country_name: string | null
          end_year: number | null
          id: number
          local_name: string | null
          name: string | null
          nomisma_id: string | null
          place: string | null
          start_year: number | null
          wikidata_id: string | null
        }
        Insert: {
          country_code?: string | null
          country_name?: string | null
          end_year?: number | null
          id: number
          local_name?: string | null
          name?: string | null
          nomisma_id?: string | null
          place?: string | null
          start_year?: number | null
          wikidata_id?: string | null
        }
        Update: {
          country_code?: string | null
          country_name?: string | null
          end_year?: number | null
          id?: number
          local_name?: string | null
          name?: string | null
          nomisma_id?: string | null
          place?: string | null
          start_year?: number | null
          wikidata_id?: string | null
        }
        Relationships: []
      }
      profiles: {
        Row: {
          created_at: string
          id: string
          role: string
        }
        Insert: {
          created_at?: string
          id: string
          role?: string
        }
        Update: {
          created_at?: string
          id?: string
          role?: string
        }
        Relationships: []
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      get_user_role: { Args: { uid: string }; Returns: string }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {},
  },
} as const

// ── Custom type aliases used across the app ──

export type Country = Database['public']['Tables']['countries']['Row']
export type Currency = Database['public']['Tables']['currencies']['Row']
export type Collectible = Database['public']['Tables']['collectibles']['Row']
export type CollectibleVariation = Database['public']['Tables']['collectible_variations']['Row']
export type CollectibleDetails = Database['public']['Tables']['collectible_details']['Row']

export interface Award {
  id: number
  name: string
  is_active: boolean
  created_at: string
  created_by: string | null
}

export interface AwardOrganization {
  id: number
  short_name: string
  long_name: string
  is_active: boolean
  website: string | null
}

export interface CollectibleAward {
  id: number
  collectible_id: number
  award_year: number
  award_type: 'nominee' | 'winner'
  award_name: string
  organization_id: number | null
  award_id: number | null
}

export interface NumistaPicture {
  url?: string
  credit?: string
}

export interface NumistaSignature {
  id?: number
  name?: string
  signer_name?: string
  title?: string
}

export interface CollectibleWithRelations extends Collectible {
  countries?: Country | null
  collectible_details?: CollectibleDetails | null
  collectible_variations?: CollectibleVariation[]
}

export type CollectedItem = Database['public']['Tables']['collected_items']['Row']

export interface CollectedItemFull extends CollectedItem {
  collectibles?: CollectibleWithRelations | null
  collectible_variations?: CollectibleVariation | null
}

// Legacy alias kept for backward compat
export type BanknoteWithRelations = CollectibleWithRelations
