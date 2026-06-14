-- Migration 001 — додаткові поля колекції
-- Виконайте в Supabase SQL Editor

ALTER TABLE public.user_collections
  ADD COLUMN IF NOT EXISTS public_notes     TEXT,
  ADD COLUMN IF NOT EXISTS serial_number    VARCHAR(100),
  ADD COLUMN IF NOT EXISTS grading_company  VARCHAR(20),   -- PMG, PCGS, NGC...
  ADD COLUMN IF NOT EXISTS grading_score    VARCHAR(20),   -- 66, 67, MS-65...
  ADD COLUMN IF NOT EXISTS designation      VARCHAR(100),  -- EPQ, PPQ, Star...
  ADD COLUMN IF NOT EXISTS cert_number      VARCHAR(50);   -- номер сертифікату
