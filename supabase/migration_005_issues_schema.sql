-- ============================================================
-- migration_005_issues_schema.sql
-- Adds banknote_issues table (Variant B normalization)
-- + extends user_collections for full Numista import support
-- ============================================================

-- ── 0. Drop dependent view so ALTER TABLE can proceed ───────────────────────
DROP VIEW IF EXISTS v_collection_full;

-- ── 1. Add Numista type ID to banknotes ──────────────────────────────────────
ALTER TABLE banknotes
  ADD COLUMN IF NOT EXISTS numista_type_id int;

CREATE UNIQUE INDEX IF NOT EXISTS idx_banknotes_numista_type
  ON banknotes(numista_type_id)
  WHERE numista_type_id IS NOT NULL;

-- ── 2. banknote_issues ───────────────────────────────────────────────────────
-- One row per distinct Numista issue (a specific dated/undated printing).
-- Multiple issues can share one banknote (type/design).
CREATE TABLE IF NOT EXISTS banknote_issues (
  id               serial PRIMARY KEY,
  banknote_id      int REFERENCES banknotes(id) ON DELETE CASCADE,

  -- Numista identifiers
  numista_type_id  int,                     -- mirrors type.id from Numista
  numista_issue_id int UNIQUE,              -- mirrors issue.id from Numista

  -- Date / validity period
  is_dated         boolean DEFAULT true,
  year             int,                     -- primary year (gregorian)
  month            int,                     -- CHECK 1–12
  day              int,                     -- CHECK 1–31
  min_year         int,                     -- for undated: earliest possible
  max_year         int,                     -- for undated: latest possible

  -- Production data
  mintage          bigint,

  -- Catalog data
  comment          text,                    -- Numista catalog note for this issue
  signatures       jsonb DEFAULT '[]'::jsonb,
    -- [{signer_name: string, title: string}]
  issue_references jsonb DEFAULT '[]'::jsonb,
    -- [{catalogue: {id: int, code: string}, number: string}]

  created_at       timestamptz DEFAULT now(),

  CONSTRAINT chk_month CHECK (month IS NULL OR (month BETWEEN 1 AND 12)),
  CONSTRAINT chk_day   CHECK (day   IS NULL OR (day   BETWEEN 1 AND 31))
);

CREATE INDEX IF NOT EXISTS idx_bi_banknote  ON banknote_issues(banknote_id);
CREATE INDEX IF NOT EXISTS idx_bi_type      ON banknote_issues(numista_type_id);
CREATE INDEX IF NOT EXISTS idx_bi_year      ON banknote_issues(year);
CREATE INDEX IF NOT EXISTS idx_bi_min_year  ON banknote_issues(min_year);

-- ── 3. Extend user_collections ───────────────────────────────────────────────
ALTER TABLE user_collections
  -- Link to the specific issue
  ADD COLUMN IF NOT EXISTS issue_id             int REFERENCES banknote_issues(id),

  -- Numista sync
  ADD COLUMN IF NOT EXISTS numista_item_id      bigint,

  -- Price currency (previously assumed EUR)
  ADD COLUMN IF NOT EXISTS price_currency       varchar(10) DEFAULT 'EUR',

  -- User-uploaded photos (Numista allows multiple per item)
  ADD COLUMN IF NOT EXISTS user_pictures        jsonb DEFAULT '[]'::jsonb,
    -- [{url: string, thumbnail_url: string}]

  -- Grading designations as array (replaces single-value designation column)
  ADD COLUMN IF NOT EXISTS grading_designations jsonb DEFAULT '[]'::jsonb;
    -- ["EPQ", "PPQ", "OPQ"]

CREATE UNIQUE INDEX IF NOT EXISTS idx_uc_numista_item
  ON user_collections(numista_item_id)
  WHERE numista_item_id IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_uc_issue ON user_collections(issue_id);

-- ── 4. Row Level Security ────────────────────────────────────────────────────
ALTER TABLE banknote_issues ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public read banknote_issues"        ON banknote_issues;
DROP POLICY IF EXISTS "Authenticated insert banknote_issues" ON banknote_issues;
DROP POLICY IF EXISTS "Authenticated update banknote_issues" ON banknote_issues;

CREATE POLICY "Public read banknote_issues"
  ON banknote_issues FOR SELECT
  USING (true);

CREATE POLICY "Authenticated insert banknote_issues"
  ON banknote_issues FOR INSERT
  WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated update banknote_issues"
  ON banknote_issues FOR UPDATE
  USING (auth.role() = 'authenticated');

-- ── 5. Helper view ───────────────────────────────────────────────────────────
-- Run migration_005b_view.sql separately AFTER this migration succeeds.
