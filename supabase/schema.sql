-- =============================================
-- NoteCollect — схема бази даних
-- Виконайте цей SQL в Supabase SQL Editor
-- =============================================

-- Країни
CREATE TABLE public.countries (
  id        SERIAL PRIMARY KEY,
  name_en   VARCHAR(100) NOT NULL,
  name_uk   VARCHAR(100),
  code      CHAR(2) UNIQUE,   -- ISO 3166-1 alpha-2: UA, US, DE...
  flag_emoji VARCHAR(10)
);

-- Валюти
CREATE TABLE public.currencies (
  id       SERIAL PRIMARY KEY,
  name_en  VARCHAR(100) NOT NULL,
  name_uk  VARCHAR(100),
  code     CHAR(3),           -- ISO 4217: UAH, USD, EUR...
  symbol   VARCHAR(10)
);

-- Банкноти (загальний каталог)
CREATE TABLE public.banknotes (
  id                    SERIAL PRIMARY KEY,
  country_id            INTEGER REFERENCES public.countries(id) ON DELETE SET NULL,
  currency_id           INTEGER REFERENCES public.currencies(id) ON DELETE SET NULL,
  denomination          DECIMAL(20, 4) NOT NULL,
  denomination_text     VARCHAR(100),         -- "100 гривень"
  year_from             INTEGER,
  year_to               INTEGER,              -- NULL якщо досі в обігу
  series                VARCHAR(200),
  pick_number           VARCHAR(30),          -- Стандартний каталожний номер Pick
  issuer                VARCHAR(200),         -- "Національний банк України"
  size_width_mm         DECIMAL(6, 2),
  size_height_mm        DECIMAL(6, 2),
  material              VARCHAR(50),          -- Paper, Polymer, Composite
  obverse_description   TEXT,
  reverse_description   TEXT,
  watermark             TEXT,
  security_features     TEXT,
  printer               VARCHAR(200),
  image_obverse_url     TEXT,
  image_reverse_url     TEXT,
  created_at            TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by            UUID REFERENCES auth.users(id) ON DELETE SET NULL
);

-- Колекція користувача
CREATE TABLE public.user_collections (
  id              SERIAL PRIMARY KEY,
  user_id         UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  banknote_id     INTEGER NOT NULL REFERENCES public.banknotes(id) ON DELETE CASCADE,
  grade           VARCHAR(10),               -- UNC, AU, XF, VF, F, VG, G, AG, P
  quantity        INTEGER NOT NULL DEFAULT 1,
  purchase_price  DECIMAL(10, 2),
  purchase_date   DATE,
  notes           TEXT,
  image_url       TEXT,                      -- власне фото
  for_trade       BOOLEAN NOT NULL DEFAULT FALSE,
  for_sale        BOOLEAN NOT NULL DEFAULT FALSE,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE (user_id, banknote_id)              -- одна банкнота на рядок (кількість через quantity)
);

-- Список бажань
CREATE TABLE public.user_wishlists (
  id          SERIAL PRIMARY KEY,
  user_id     UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  banknote_id INTEGER NOT NULL REFERENCES public.banknotes(id) ON DELETE CASCADE,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE (user_id, banknote_id)
);

-- =============================================
-- Row Level Security (RLS) — захист даних
-- =============================================

ALTER TABLE public.countries        ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.currencies       ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.banknotes        ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_collections ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_wishlists   ENABLE ROW LEVEL SECURITY;

-- Країни та валюти: читати можуть всі
CREATE POLICY "Countries are public" ON public.countries FOR SELECT USING (true);
CREATE POLICY "Currencies are public" ON public.currencies FOR SELECT USING (true);

-- Банкноти: читати всі, редагувати тільки автор
CREATE POLICY "Banknotes are public" ON public.banknotes FOR SELECT USING (true);
CREATE POLICY "Authenticated can insert banknotes" ON public.banknotes
  FOR INSERT WITH CHECK (auth.uid() IS NOT NULL);
CREATE POLICY "Author can update banknote" ON public.banknotes
  FOR UPDATE USING (auth.uid() = created_by);

-- Колекція: тільки власник
CREATE POLICY "Users manage own collection" ON public.user_collections
  USING (auth.uid() = user_id);

-- Wishlist: тільки власник
CREATE POLICY "Users manage own wishlist" ON public.user_wishlists
  USING (auth.uid() = user_id);

-- =============================================
-- Індекси для швидкого пошуку
-- =============================================

CREATE INDEX idx_banknotes_country   ON public.banknotes (country_id);
CREATE INDEX idx_banknotes_currency  ON public.banknotes (currency_id);
CREATE INDEX idx_banknotes_year      ON public.banknotes (year_from);
CREATE INDEX idx_collection_user     ON public.user_collections (user_id);
CREATE INDEX idx_wishlist_user       ON public.user_wishlists (user_id);

-- =============================================
-- Початкові дані: кілька країн та валют
-- =============================================

INSERT INTO public.countries (name_en, name_uk, code, flag_emoji) VALUES
  ('Ukraine',         'Україна',          'UA', '🇺🇦'),
  ('United States',   'США',              'US', '🇺🇸'),
  ('Germany',         'Німеччина',        'DE', '🇩🇪'),
  ('France',          'Франція',          'FR', '🇫🇷'),
  ('United Kingdom',  'Велика Британія',  'GB', '🇬🇧'),
  ('Poland',          'Польща',           'PL', '🇵🇱'),
  ('Japan',           'Японія',           'JP', '🇯🇵'),
  ('China',           'Китай',            'CN', '🇨🇳'),
  ('Canada',          'Канада',           'CA', '🇨🇦'),
  ('Australia',       'Австралія',        'AU', '🇦🇺');

INSERT INTO public.currencies (name_en, name_uk, code, symbol) VALUES
  ('Ukrainian Hryvnia', 'Українська гривня', 'UAH', '₴'),
  ('US Dollar',         'Долар США',         'USD', '$'),
  ('Euro',              'Євро',              'EUR', '€'),
  ('British Pound',     'Британський фунт',  'GBP', '£'),
  ('Polish Zloty',      'Польський злотий',  'PLN', 'zł'),
  ('Japanese Yen',      'Японська єна',      'JPY', '¥'),
  ('Canadian Dollar',   'Канадський долар',  'CAD', 'CA$'),
  ('Australian Dollar', 'Австралійський долар', 'AUD', 'A$');
