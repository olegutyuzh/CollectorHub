-- =============================================
-- migration_009_categories.sql
-- Create categories lookup table with a short code
-- =============================================

CREATE TABLE IF NOT EXISTS public.categories (
  id          SERIAL PRIMARY KEY,
  name        VARCHAR(50)  NOT NULL UNIQUE,   -- human-readable slug, e.g. 'banknote'
  label_uk    VARCHAR(100),                   -- Ukrainian display label
  label_en    VARCHAR(100),                   -- English display label
  code        CHAR(10)     NOT NULL UNIQUE,   -- short code, e.g. 'BKNT'
  created_at  TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- RLS: public read, no writes from client
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Categories are public" ON public.categories FOR SELECT USING (true);

-- Seed known categories
INSERT INTO public.categories (name, label_uk, label_en, code) VALUES
  ('banknote',  'Банкнота', 'Banknote',  'BKNT'),
  ('coin',      'Монета',   'Coin',      'COIN'),
  ('exonumia',  'Екзонумія','Exonumia',  'EXON')
ON CONFLICT (name) DO UPDATE
  SET code       = EXCLUDED.code,
      label_uk   = EXCLUDED.label_uk,
      label_en   = EXCLUDED.label_en;
