-- migration_005b_view.sql
-- Run AFTER migration_005_issues_schema.sql succeeds.
-- Creates the v_collection_full helper view.

DROP VIEW IF EXISTS v_collection_full CASCADE;

CREATE VIEW v_collection_full AS
SELECT
  uc.*,
  bi.numista_issue_id,
  bi.is_dated,
  bi.year        AS issue_year,
  bi.month       AS issue_month,
  bi.day         AS issue_day,
  bi.min_year    AS issue_min_year,
  bi.max_year    AS issue_max_year,
  bi.mintage,
  bi.comment     AS issue_comment,
  bi.signatures,
  bi.issue_references,
  b.title        AS banknote_title,
  b.denomination_text,
  b.numista_type_id AS banknote_numista_type_id,
  c.name_uk      AS country_name_uk,
  c.name_en      AS country_name_en,
  c.flag_emoji,
  cur.code       AS currency_code
FROM user_collections uc
LEFT JOIN banknote_issues bi  ON bi.id = uc.issue_id
LEFT JOIN banknotes b         ON b.id  = uc.banknote_id
LEFT JOIN countries c         ON c.id  = b.country_id
LEFT JOIN currencies cur      ON cur.id = b.currency_id;
