-- Migration 004: User's Ukrainian banknote collection (imported from Numista)
-- Prerequisites: migration_001, migration_002 (optional), migration_003
-- Run in Supabase SQL Editor

-- Drop any views that depend on currencies.code before widening the column
DROP VIEW IF EXISTS v_collection_full CASCADE;

-- Widen currencies.code from CHAR(3) to VARCHAR(10) to support historical codes
ALTER TABLE public.currencies
  ALTER COLUMN code TYPE VARCHAR(10);

-- Add reference_numbers column if migration_003 hasn't been run yet
ALTER TABLE public.banknotes
  ADD COLUMN IF NOT EXISTS reference_numbers JSONB DEFAULT '[]'::jsonb;

-- Allow multiple collection entries per banknote (for duplicate copies with different serials/grades)
ALTER TABLE public.user_collections
  DROP CONSTRAINT IF EXISTS user_collections_user_id_banknote_id_key;

DO $$
DECLARE
  v_ua  INT;    -- Ukraine country id
  v_c1  INT;    -- Hryvnia (1918–1920)
  v_c2  INT;    -- Karbovanets (1918–1921)
  v_c3  INT;    -- Karbowanez (1941–1944)
  v_c4  INT;    -- Hryvnia (1996–date)
  v_uid UUID;   -- authenticated user
  v_b   INT;    -- temp banknote id
BEGIN

  -- ── User ─────────────────────────────────────────────────────────────────
  SELECT id INTO v_uid FROM auth.users WHERE email = 'oleg.utyuzh@gmail.com';
  IF NOT FOUND THEN
    RAISE EXCEPTION 'User not found. Log in to Supabase first.';
  END IF;

  -- ── Country: Ukraine ──────────────────────────────────────────────────────
  SELECT id INTO v_ua FROM public.countries WHERE code = 'UA';
  IF NOT FOUND THEN
    INSERT INTO public.countries (name_en, name_uk, code, flag_emoji)
    VALUES ('Ukraine','Україна','UA','🇺🇦') RETURNING id INTO v_ua;
  END IF;

  -- ── Currencies ────────────────────────────────────────────────────────────
  SELECT id INTO v_c1 FROM public.currencies WHERE code = 'UAH1918';
  IF NOT FOUND THEN
    INSERT INTO public.currencies (name_en, name_uk, code, symbol)
    VALUES ('Ukrainian Hryvnia (1918–1920)','Гривня (1918–1920)','UAH1918','₴')
    RETURNING id INTO v_c1;
  END IF;

  SELECT id INTO v_c2 FROM public.currencies WHERE code = 'UAK1918';
  IF NOT FOUND THEN
    INSERT INTO public.currencies (name_en, name_uk, code, symbol)
    VALUES ('Ukrainian Karbovanets (1918–1921)','Карбованець (1918–1921)','UAK1918',NULL)
    RETURNING id INTO v_c2;
  END IF;

  SELECT id INTO v_c3 FROM public.currencies WHERE code = 'UAK1941';
  IF NOT FOUND THEN
    INSERT INTO public.currencies (name_en, name_uk, code, symbol)
    VALUES ('Karbowanez (1941–1944)','Карбованець (1941–1944)','UAK1941',NULL)
    RETURNING id INTO v_c3;
  END IF;

  SELECT id INTO v_c4 FROM public.currencies WHERE code = 'UAH';
  IF NOT FOUND THEN
    INSERT INTO public.currencies (name_en, name_uk, code, symbol)
    VALUES ('Ukrainian Hryvnia','Гривня','UAH','₴')
    RETURNING id INTO v_c4;
  END IF;

  -- ══════════════════════════════════════════════════════════════════════════
  -- HRYVNIA (1918–1920)
  -- ══════════════════════════════════════════════════════════════════════════

  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, reference_numbers)
  VALUES
    (v_ua, v_c1, '100 Hryven', 100, '100 Гривень',
     'standard_circulation', 1918, 'P-22', 'paper',
     '[{"catalog":"P","number":"22"},{"catalog":"N","number":"226184"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections
    (user_id, banknote_id, grade, quantity, purchase_price, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'XF', 1, 30.77, 'A 3390942', 'Auction 102; Pick #22a', false, false);

  -- ══════════════════════════════════════════════════════════════════════════
  -- KARBOVANETS (1918–1921)
  -- ══════════════════════════════════════════════════════════════════════════

  -- 50 Karbovantsiv P#6a — Odessa, Block AO up to AO 209
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, year_to, pick_number, material, comments, reference_numbers)
  VALUES
    (v_ua, v_c2, '50 Karbovantsiv P#6a', 50, '50 Карбованців',
     'standard_circulation', 1918, 1919, 'P-6a', 'paper',
     'Odessa issue. Block AO, prefix letters up to AO 209.',
     '[{"catalog":"P","number":"6"},{"catalog":"N","number":"207677"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections
    (user_id, banknote_id, grade, quantity, purchase_price, serial_number,
     grading_company, grading_score, cert_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'AU', 1, 66.16, 'AO199',
          'PMG', '58', '2516621-011',
          'Auction 99; P#6a Odessa issue Block AO up to AO 209', false, false);

  -- 50 Karbovantsiv P#6b — Odessa, Block AO 210–235 (Denikin / labeled false)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, comments, reference_numbers)
  VALUES
    (v_ua, v_c2, '50 Karbovantsiv P#6b', 50, '50 Карбованців',
     'standard_circulation', 1919, 'P-6b', 'paper',
     'Odessa issue. Block AO 210–235, issued by General Denikin; labeled as false by the UPR Government.',
     '[{"catalog":"P","number":"6"},{"catalog":"N","number":"207677"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections
    (user_id, banknote_id, grade, quantity, purchase_price, serial_number,
     grading_company, grading_score, cert_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 97.16, 'AO246',
          'PMG', '63', '2516621-012',
          'Auction 99; P#6b Odessa issue Block AO 210–235', false, false);

  -- 1000 Karbovantsiv P#35 (1918) — 2 copies
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, reference_numbers)
  VALUES
    (v_ua, v_c2, '1000 Karbovantsiv', 1000, '1000 Карбованців',
     'standard_circulation', 1918, 'P-35', 'paper',
     '[{"catalog":"P","number":"35"},{"catalog":"N","number":"223311"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections
    (user_id, banknote_id, grade, quantity, purchase_price, serial_number,
     grading_company, grading_score, cert_number, designation, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 98.40, 'AE 750050',
          'PMG', '64 EPQ', '1913430-019', 'EPQ', 'Auction 99', false, false);
  INSERT INTO public.user_collections
    (user_id, banknote_id, grade, quantity, purchase_price, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 64.92, 'AE 699250', 'Auction 99', false, false);

  -- ══════════════════════════════════════════════════════════════════════════
  -- KARBOWANEZ (1941–1944) — Reichskreditkassen, occupied Ukraine
  -- ══════════════════════════════════════════════════════════════════════════

  -- 1 Karbowanez P#49
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, issue_date, pick_number, material, issuer, reference_numbers)
  VALUES
    (v_ua, v_c3, '1 Karbowanez', 1, '1 Карбованець',
     'standard_circulation', 1942, '1942-03-10', 'P-49', 'paper', 'Reichskreditkassen',
     '[{"catalog":"P","number":"49"},{"catalog":"N","number":"207669"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections
    (user_id, banknote_id, grade, quantity, purchase_price, serial_number,
     grading_company, grading_score, cert_number, designation, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 91.74, '73 0190610',
          'PMG', '63 EPQ', '1923337-004', 'EPQ', 'Auction 172', false, false);

  -- 5 Karbowanez P#51
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, issue_date, pick_number, material, issuer, reference_numbers)
  VALUES
    (v_ua, v_c3, '5 Karbowanez', 5, '5 Карбованців',
     'standard_circulation', 1942, '1942-03-10', 'P-51', 'paper', 'Reichskreditkassen',
     '[{"catalog":"P","number":"51"},{"catalog":"N","number":"207672"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections
    (user_id, banknote_id, grade, quantity, purchase_price, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 79.80, '31 0142477', 'Auction 99', false, false);

  -- 20 Karbowanez P#53 (Rosenberg #595a)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, issue_date, pick_number, material, issuer, reference_numbers)
  VALUES
    (v_ua, v_c3, '20 Karbowanez', 20, '20 Карбованців',
     'standard_circulation', 1942, '1942-03-10', 'P-53', 'paper', 'Reichskreditkassen',
     '[{"catalog":"P","number":"53"},{"catalog":"Rosenberg","number":"595a"},{"catalog":"N","number":"227045"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections
    (user_id, banknote_id, grade, quantity, purchase_price, serial_number,
     grading_company, grading_score, cert_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 90.50, '7007902',
          'PMG', '64', '1920380-026', 'Auction 151', false, false);

  -- 50 Karbowanez P#54
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, issue_date, pick_number, material, issuer, reference_numbers)
  VALUES
    (v_ua, v_c3, '50 Karbowanez', 50, '50 Карбованців',
     'standard_circulation', 1942, '1942-03-10', 'P-54', 'paper', 'Reichskreditkassen',
     '[{"catalog":"P","number":"54"},{"catalog":"N","number":"227036"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections
    (user_id, banknote_id, grade, quantity, purchase_price, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'AU', 1, 68.40, '41 441102', 'Auction 183', false, false);

  -- ══════════════════════════════════════════════════════════════════════════
  -- HRYVNIA (1996–date)  –  issuer: Національний банк України
  -- ══════════════════════════════════════════════════════════════════════════

  -- 1 Hryvnia P#103 (1992, signature VPH)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '1 Hryvnia', 1, '1 Гривня', 'standard_circulation', 1992, 'P-103', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"103"},{"catalog":"N","number":"202869"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, '1480892409', 'Signature: VPH', false, false);

  -- 1 Hryvnia P#108b (1995, signature VAY)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '1 Hryvnia', 1, '1 Гривня', 'standard_circulation', 1995, 'P-108b', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"108"},{"catalog":"N","number":"202776"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'Signature: VAY; P#108b', false, false);

  -- 1 Hryvnia P#116Ac (2014, signature VOH)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '1 Hryvnia', 1, '1 Гривня', 'standard_circulation', 2014, 'P-116Ac', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"116A"},{"catalog":"TBB","number":"844"},{"catalog":"N","number":"202697"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'Signature: VOH; P#116Ac', false, false);

  -- 2 Hryvni P#104a (1992, signature VPH)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '2 Hryvni', 2, '2 Гривні', 'standard_circulation', 1992, 'P-104a', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"104"},{"catalog":"N","number":"202867"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, '2362582666', 'Signature: VPH; P#104a', false, false);

  -- 2 Hryvni P#117b (2005, signature VSS)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '2 Hryvni', 2, '2 Гривні', 'standard_circulation', 2005, 'P-117b', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"117"},{"catalog":"N","number":"202693"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'Signature: VSS; P#117b', false, false);

  -- 5 Hryven P#105a (1992, signature VPH)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '5 Hryven', 5, '5 Гривень', 'standard_circulation', 1992, 'P-105a', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"105"},{"catalog":"N","number":"202862"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, '3199889995', 'Signature: VPH; P#105a', false, false);

  -- 5 Hryven P#118e (2015, signature VOH)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '5 Hryven', 5, '5 Гривень', 'standard_circulation', 2015, 'P-118e', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"118"},{"catalog":"N","number":"202690"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'Signature: VOH; P#118e', false, false);

  -- 10 Hryven P#106 (1992, signature VAY)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '10 Hryven', 10, '10 Гривень', 'standard_circulation', 1992, 'P-106', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"106"},{"catalog":"N","number":"202859"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, '4151775540', 'Signature: VAY', false, false);

  -- 10 Hryven P#119 (2004, signature SLT)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '10 Hryven', 10, '10 Гривень', 'standard_circulation', 2004, 'P-119', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"119"},{"catalog":"N","number":"202679"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'Signature: SLT', false, false);

  -- 10 Hryven P#119Ad (2015, signature VOH)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '10 Hryven', 10, '10 Гривень', 'standard_circulation', 2015, 'P-119Ad', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"119A"},{"catalog":"TBB","number":"848"},{"catalog":"N","number":"202676"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'Signature: VOH; P#119Ad', false, false);

  -- 20 Hryven P#107 (1992, signature VAY)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '20 Hryven', 20, '20 Гривень', 'standard_circulation', 1992, 'P-107', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"107"},{"catalog":"N","number":"202854"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, '5156960729', 'Signature: VAY', false, false);

  -- 20 Hryven P#120e (2016, signature VOH)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '20 Hryven', 20, '20 Гривень', 'standard_circulation', 2016, 'P-120e', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"120"},{"catalog":"TBB","number":"849"},{"catalog":"N","number":"202248"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'ЧА 2113711', 'Signature: VOH; P#120e', false, false);

  -- 20 Hryven P#128 — Ivan Franko 160th Anniversary (2016) — commemorative, 2 copies
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '20 Hryven (Ivan Franko, 160 Years Anniversary)', 20, '20 Гривень',
    'circulating_commemorative', 2016, 'P-128', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"128"},{"catalog":"TBB","number":"NP805"},{"catalog":"N","number":"202045"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 2, 'ЦБ 0226408', 'Signature: VOH', false, false);

  -- 20 Hryven P#A126a (2018, signature YVS) — 7 copies
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '20 Hryven', 20, '20 Гривень', 'standard_circulation', 2018, 'P-A126a', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"A126"},{"catalog":"TBB","number":"854"},{"catalog":"N","number":"202039"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 7, 'ЮЄ 9416427', 'Signature: YVS; P#A126a.1', false, false);

  -- 20 Hryven P#W136 — "We Will Not Forget! We Will Not Forgive!" (2023)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '20 Hryven (We Will Not Forget! We Will Not Forgive!)', 20, '20 Гривень',
    'circulating_commemorative', 2023, 'P-W136', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"W136"},{"catalog":"TBB","number":"NP812"},{"catalog":"N","number":"357153"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, purchase_price, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 5.00, 'ЗС 0287274',
    'Signature: PAH; distributed in envelope; Series 3C 0000001–0300000', false, false);

  -- 50 Hryven P#121e (2014, signature SIK) — 16 copies
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '50 Hryven', 50, '50 Гривень', 'standard_circulation', 2014, 'P-121e', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"121"},{"catalog":"TBB","number":"850"},{"catalog":"N","number":"202240"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 16, 'Signature: SIK; P#121e', false, false);

  -- 50 Hryven P#B126 (2019, signature YVS)
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '50 Hryven', 50, '50 Гривень', 'standard_circulation', 2019, 'P-B126', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"B126"},{"catalog":"TBB","number":"855"},{"catalog":"N","number":"202035"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'VF', 1, 'Signature: YVS', false, false);

  -- 100 Hryven P#126 (2022, signature PAH) — 2 fancy-number copies
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '100 Hryven', 100, '100 Гривень', 'standard_circulation', 2022, 'P-126', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"126"},{"catalog":"TBB","number":"856"},{"catalog":"N","number":"202020"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, purchase_price, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 4.87, 'АН 2222241', 'Signature: PAH; Fancy Number', false, false);
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, purchase_price, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 4.87, 'АН 2222242', 'Signature: PAH; Fancy Number', false, false);

  -- 200 Hryven P#123 (2014, signature VOH — Valeria Gontareva) — 2 copies
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '200 Hryven', 200, '200 Гривень', 'standard_circulation', 2014, 'P-123', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"123"},{"catalog":"TBB","number":"852"},{"catalog":"N","number":"202213"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 2, 'Signature: VOH (Valeria Gontareva)', false, false);

  -- 200 Hryven (2019, signature YVS) — TBB#857; Bank Note of the Year nominee 2020
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '200 Hryven', 200, '200 Гривень', 'standard_circulation', 2019, NULL, 'paper',
    'Національний банк України',
    '[{"catalog":"TBB","number":"857"},{"catalog":"N","number":"202010"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'ВЖ 2876764',
    'Signature: YVS; Nominee Bank Note of the Year Award 2020', false, false);

  -- 500 Hryven P#127 (2018, signature YVS) — Bank Note of the Year nominee 2016
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '500 Hryven', 500, '500 Гривень', 'standard_circulation', 2018, 'P-127', 'paper',
    'Національний банк України',
    '[{"catalog":"P","number":"127"},{"catalog":"TBB","number":"858"},{"catalog":"N","number":"202008"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'АЖ 4919423',
    'Signature: YVS (Yakiv Smolii); Nominee Bank Note of the Year Award 2016', false, false);

  -- 500 Hryven — Hryhorii Skovoroda 300th Anniversary (2021) — 2 copies
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '500 Hryven (300th Birth Anniversary of Hryhorii Skovoroda)', 500, '500 Гривень',
    'circulating_commemorative', 2021, NULL, 'paper',
    'Національний банк України',
    '[{"catalog":"N","number":"353863"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, purchase_price, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 19.00, 'ГС 0029770',
    'Signature: KYS; Series ГС 0000001–0050000', false, false);
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, purchase_price, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 19.00, 'ГС 0043817',
    'Signature: KYS; Series ГС 0000001–0050000', false, false);

  -- 1000 Hryven (2019, signature YVS) — TBB#859; Bank Note of the Year nominee 2019
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '1000 Hryven', 1000, '1000 Гривень', 'standard_circulation', 2019, NULL, 'paper',
    'Національний банк України',
    '[{"catalog":"TBB","number":"859"},{"catalog":"N","number":"201946"}]')
  RETURNING id INTO v_b;
  INSERT INTO public.user_collections (user_id, banknote_id, grade, quantity, serial_number, notes, for_trade, for_sale)
  VALUES (v_uid, v_b, 'UNC', 1, 'АВ 0516341',
    'Signature: YVS (Yakiv Smolii); Nominee Bank Note of the Year Award 2019', false, false);

  -- 1000 Hryven — 30 Years of Independence of Ukraine (2021) — 2 copies
  INSERT INTO public.banknotes
    (country_id, currency_id, title, denomination, denomination_text,
     banknote_type, year_from, pick_number, material, issuer, reference_numbers)
  VALUES (v_ua, v_c4, '1000 Hryven (30 Years of Independence of Ukraine)', 1000, '1000 Гривень',
    'circulating_commemorative', 2021, NULL, 'paper',
    'Національний банк України',
    '[{"catalog":"N","number":"318041"}]')
  RETURNING id INTO v_b;