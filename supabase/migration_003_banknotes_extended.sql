-- Migration 003: Extended banknote fields (matching Numista catalog structure)
-- Run this in the Supabase SQL Editor after migration_001 and migration_002

ALTER TABLE public.banknotes
  -- Назва банкноти (наприклад "5 Karbowanez")
  ADD COLUMN IF NOT EXISTS title                 VARCHAR(300),

  -- Тип банкноти
  ADD COLUMN IF NOT EXISTS banknote_type         VARCHAR(50)
    DEFAULT 'standard_circulation'
    CHECK (banknote_type IN (
      'standard_circulation',
      'circulating_commemorative',
      'non_circulating',
      'local',
      'emergency',
      'non_issued',
      'patterns_trials',
      'contemporary_counterfeit',
      'atm_test_note'
    )),

  -- Точна дата випуску (може бути точнішою за year_from)
  ADD COLUMN IF NOT EXISTS issue_date            DATE,

  -- Вилучення з обігу (NULL = невідомо, TRUE = так, FALSE = ні)
  ADD COLUMN IF NOT EXISTS is_demonetized        BOOLEAN,
  ADD COLUMN IF NOT EXISTS demonetization_date   DATE,

  -- Форма (більшість банкнот прямокутні)
  ADD COLUMN IF NOT EXISTS shape                 VARCHAR(50)
    DEFAULT 'rectangular'
    CHECK (shape IN (
      'rectangular',
      'rectangular_hand_cut',
      'rectangular_undulating_edge',
      'round',
      'square',
      'triangular',
      'other'
    )),

  -- Техніка друку
  ADD COLUMN IF NOT EXISTS manufacturing_technique TEXT,

  -- Аверс — гравер, дизайнер, написи
  ADD COLUMN IF NOT EXISTS obverse_engravers     TEXT,
  ADD COLUMN IF NOT EXISTS obverse_designers     TEXT,
  ADD COLUMN IF NOT EXISTS obverse_lettering     TEXT,

  -- Реверс — гравер, дизайнер, написи
  ADD COLUMN IF NOT EXISTS reverse_engravers     TEXT,
  ADD COLUMN IF NOT EXISTS reverse_designers     TEXT,
  ADD COLUMN IF NOT EXISTS reverse_lettering     TEXT,

  -- Фото водяного знаку
  ADD COLUMN IF NOT EXISTS watermark_image_url   TEXT,

  -- Загальні коментарі / історична довідка
  ADD COLUMN IF NOT EXISTS comments              TEXT,

  -- Каталожні номери: [{catalog: "P", number: "51"}, {catalog: "BNB", number: "3"}, ...]
  ADD COLUMN IF NOT EXISTS reference_numbers     JSONB DEFAULT '[]'::jsonb;

-- Індекс для пошуку по типу
CREATE INDEX IF NOT EXISTS idx_banknotes_type ON public.banknotes (banknote_type);
