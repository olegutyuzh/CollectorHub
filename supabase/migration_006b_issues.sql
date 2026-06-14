-- migration_006b_issues.sql
-- Step 2 of 3: Insert 836 banknote issues
-- Run AFTER migration_006a_banknotes.sql

BEGIN;

INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201541, 492885,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "John A. Rolle", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "348a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201541
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "John A. Rolle", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "348a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201543, 493449,
  FALSE, NULL, NULL, NULL,
  2017, NULL,
  2000000, 'Issued note; Prefix: AU',
  '[{"signer_name": "Barry Whiteside", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "120a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B531a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201543
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=2000000, comment='Issued note; Prefix: AU',
      signatures='[{"signer_name": "Barry Whiteside", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "120a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B531a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201556, 492900,
  TRUE, 2014, 7, 22,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Amadou Colley", "title": "Governor"}, {"signer_name": "Basiru O. A. Nijai", "title": "First Deputy Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201556
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=22,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Amadou Colley", "title": "Governor"}, {"signer_name": "Basiru O. A. Nijai", "title": "First Deputy Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201562, 493862,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Jean Studer", "title": "President of the Bank Council"}, {"signer_name": "Thomas J. Jordan", "title": "Chairman of the Governing Board, Department I, Zürich"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "75a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201562
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Jean Studer", "title": "President of the Bank Council"}, {"signer_name": "Thomas J. Jordan", "title": "Chairman of the Governing Board, Department I, Zürich"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "75a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201562, 683181,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Jean Studer", "title": "President of the Bank Council"}, {"signer_name": "Fritz Zurbrügg", "title": "Vice Chairman of the Governing Board, Department II, Bern"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201562
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Jean Studer", "title": "President of the Bank Council"}, {"signer_name": "Fritz Zurbrügg", "title": "Vice Chairman of the Governing Board, Department II, Bern"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201566, 502313,
  TRUE, 2010, NULL, NULL,
  NULL, NULL,
  1000, 'P# 101Ad - (HPB 7106000 → 7107000) - Replacement',
  '[{"signer_name": "Paul Jenkins", "title": "Deputy Governor"}, {"signer_name": "Mark Joseph Carney", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201566
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=NULL, day=NULL,
      mintage=1000, comment='P# 101Ad - (HPB 7106000 → 7107000) - Replacement',
      signatures='[{"signer_name": "Paul Jenkins", "title": "Deputy Governor"}, {"signer_name": "Mark Joseph Carney", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201578, 542947,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  5823000, 'HCM prefix - changeover',
  '[{"signer_name": "Tiff Macklem", "title": "Deputy Governor"}, {"signer_name": "Stephen S. Poloz", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "106b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201578
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=5823000, comment='HCM prefix - changeover',
      signatures='[{"signer_name": "Tiff Macklem", "title": "Deputy Governor"}, {"signer_name": "Stephen S. Poloz", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "106b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201585, 514636,
  TRUE, 2012, NULL, NULL,
  NULL, NULL,
  620000000, '▲',
  '[{"signer_name": "Carolyn A. Wilkins", "title": "Deputy Governor"}, {"signer_name": "Stephen S. Poloz", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "108b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201585
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=NULL, day=NULL,
      mintage=620000000, comment='▲',
      signatures='[{"signer_name": "Carolyn A. Wilkins", "title": "Deputy Governor"}, {"signer_name": "Stephen S. Poloz", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "108b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201587, 492964,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  1000000, NULL,
  '[{"signer_name": "Sili Epa Tuioti", "title": "Minister of Finance"}, {"signer_name": "Maiava Atalina Emma Ainuu-Enari \"2nd sign\"", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "121"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201587
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=1000000, comment=NULL,
      signatures='[{"signer_name": "Sili Epa Tuioti", "title": "Minister of Finance"}, {"signer_name": "Maiava Atalina Emma Ainuu-Enari \"2nd sign\"", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "121"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201589, 492966,
  FALSE, NULL, NULL, NULL,
  2018, 2018,
  100000, 'Issued note; Prefix: SI/40',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "226a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201589
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=100000, comment='Issued note; Prefix: SI/40',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "226a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201590, 492967,
  TRUE, 1999, 8, 2,
  NULL, NULL,
  NULL, 'P#111a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201590
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=8, day=2,
      mintage=NULL, comment='P#111a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201597, 506517,
  TRUE, 1954, NULL, NULL,
  NULL, NULL,
  NULL, 'G/N → P/N, R/N → Z/N, A/O → K/O, T/O → Z/O, A/Y → P/Y, R/Y → T/Y prefixes [CBN]',
  '[{"signer_name": "John Robert Beattie", "title": "Deputy Governor"}, {"signer_name": "Louis Rasminsky", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "74b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201597
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1954, month=NULL, day=NULL,
      mintage=NULL, comment='G/N → P/N, R/N → Z/N, A/O → K/O, T/O → Z/O, A/Y → P/Y, R/Y → T/Y prefixes [CBN]',
      signatures='[{"signer_name": "John Robert Beattie", "title": "Deputy Governor"}, {"signer_name": "Louis Rasminsky", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "74b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201604, 492996,
  TRUE, 2000, 1, 1,
  NULL, NULL,
  10100000, 'P# 146 - Issued note; Series AK-AU.',
  '[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201604
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=1, day=1,
      mintage=10100000, comment='P# 146 - Issued note; Series AK-AU.',
      signatures='[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201607, 492999,
  TRUE, 2000, 1, 1,
  NULL, NULL,
  11600000, 'P# 147 - Issued note; Series AM-AX.',
  '[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201607
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=1, day=1,
      mintage=11600000, comment='P# 147 - Issued note; Series AM-AX.',
      signatures='[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201608, 493000,
  TRUE, 2000, 1, 1,
  NULL, NULL,
  14000000, 'P# 148 - Issued note; Series AN-BA.',
  '[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201608
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=1, day=1,
      mintage=14000000, comment='P# 148 - Issued note; Series AN-BA.',
      signatures='[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201614, 493006,
  TRUE, 2000, 1, 1,
  NULL, NULL,
  11000000, 'P# 149 - Issued note; Series AN-AY.',
  '[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201614
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=1, day=1,
      mintage=11000000, comment='P# 149 - Issued note; Series AN-AY.',
      signatures='[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201619, 493011,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  110000000, 'P#202a, Signatures: György Matolcsy, Márton Nagy, Dr.Ferenc Gerhardt, Dr.László Windisch',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201619
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=110000000, comment='P#202a, Signatures: György Matolcsy, Márton Nagy, Dr.Ferenc Gerhardt, Dr.László Windisch',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201623, 493015,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  10000000, 'P# 100; ROT C# 48AP - Series A',
  '[{"signer_name": "Mario Bergara", "title": "President"}, {"signer_name": "Elizabeth Oria", "title": "General Secretary"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201623
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=10000000, comment='P# 100; ROT C# 48AP - Series A',
      signatures='[{"signer_name": "Mario Bergara", "title": "President"}, {"signer_name": "Elizabeth Oria", "title": "General Secretary"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201624, 494035,
  FALSE, NULL, NULL, NULL,
  2016, 2018,
  NULL, NULL,
  '[{"signer_name": "Victoria Cleland", "title": "Chief Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201624
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Victoria Cleland", "title": "Chief Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201634, 493060,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tha Yao", "title": "General Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201634
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tha Yao", "title": "General Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201641, 497205,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures: Giorgi Kadagidze & Aleksandre Khetaguri',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "70d"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201641
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures: Giorgi Kadagidze & Aleksandre Khetaguri',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "70d"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201672, 493168,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  70000000, '▲',
  '[{"signer_name": "Carolyn A. Wilkins", "title": "Deputy Governor"}, {"signer_name": "Stephen S. Poloz", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "113a"}, {"catalogue": {"id": 959, "code": "Ch GPM"}, "number": "BC-77a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201672
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=70000000, comment='▲',
      signatures='[{"signer_name": "Carolyn A. Wilkins", "title": "Deputy Governor"}, {"signer_name": "Stephen S. Poloz", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "113a"}, {"catalogue": {"id": 959, "code": "Ch GPM"}, "number": "BC-77a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201686, 493182,
  TRUE, 1944, NULL, NULL,
  NULL, NULL,
  100000000, 'VF.17/01 - no series number',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201686
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1944, month=NULL, day=NULL,
      mintage=100000000, comment='VF.17/01 - no series number',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201688, 493188,
  FALSE, NULL, NULL, NULL,
  2002, 2002,
  NULL, NULL,
  '[{"signer_name": "Dr. Abdulhafid Mahmoud Zilitni", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201688
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Dr. Abdulhafid Mahmoud Zilitni", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201697, 493214,
  FALSE, NULL, NULL, NULL,
  2004, NULL,
  NULL, NULL,
  '[{"signer_name": "Dr. Ahmed M. Muneisi Abdel-Hamid", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "68a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201697
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Dr. Ahmed M. Muneisi Abdel-Hamid", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "68a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201698, 493215,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Bobind Ganga", "title": "Governor"}, {"signer_name": "Winston DaCosta Jordan", "title": "Minister of Finance"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201698
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Bobind Ganga", "title": "Governor"}, {"signer_name": "Winston DaCosta Jordan", "title": "Minister of Finance"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201713, 493244,
  TRUE, 2010, NULL, NULL,
  NULL, NULL,
  387000000, 'Series: AA - BE',
  '[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Alexandre Antônio Tombini", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "253a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "875a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201713
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=NULL, day=NULL,
      mintage=387000000, comment='Series: AA - BE',
      signatures='[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Alexandre Antônio Tombini", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "253a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "875a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201714, 494418,
  TRUE, 1967, NULL, NULL,
  NULL, NULL,
  100000000, 'Common prefixes: M/O, N/O, P/O, Q/O, G/P, H/P, I/P, J/P, K/P, & L/P',
  '[{"signer_name": "John Robert Beattie", "title": "Deputy Governor"}, {"signer_name": "Louis Rasminsky", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201714
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1967, month=NULL, day=NULL,
      mintage=100000000, comment='Common prefixes: M/O, N/O, P/O, Q/O, G/P, H/P, I/P, J/P, K/P, & L/P',
      signatures='[{"signer_name": "John Robert Beattie", "title": "Deputy Governor"}, {"signer_name": "Louis Rasminsky", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201714, 493249,
  TRUE, 1967, NULL, NULL,
  NULL, NULL,
  12000000, 'No serial number',
  '[{"signer_name": "John Robert Beattie", "title": "Deputy Governor"}, {"signer_name": "Louis Rasminsky", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201714
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1967, month=NULL, day=NULL,
      mintage=12000000, comment='No serial number',
      signatures='[{"signer_name": "John Robert Beattie", "title": "Deputy Governor"}, {"signer_name": "Louis Rasminsky", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201721, 493256,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tha Yao", "title": "General Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201721
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tha Yao", "title": "General Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201723, 493258,
  TRUE, 1937, 1, 2,
  NULL, NULL,
  240000000, 'R/M → Z/M, A/N → U/N prefixes',
  '[{"signer_name": "James Elliott Coyne", "title": "Deputy Governor"}, {"signer_name": "Graham Ford Towers", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 959, "code": "Ch GPM"}, "number": "BC-21d"}, {"catalogue": {"id": 931, "code": "P"}, "number": "58e"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201723
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1937, month=1, day=2,
      mintage=240000000, comment='R/M → Z/M, A/N → U/N prefixes',
      signatures='[{"signer_name": "James Elliott Coyne", "title": "Deputy Governor"}, {"signer_name": "Graham Ford Towers", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 959, "code": "Ch GPM"}, "number": "BC-21d"}, {"catalogue": {"id": 931, "code": "P"}, "number": "58e"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201730, 493267,
  TRUE, 1997, 7, 1,
  NULL, NULL,
  NULL, 'See varieties in comments above.',
  '[{"signer_name": "Arnoud Henricus Elisabeth Maria Wellink", "title": "President"}, {"signer_name": "Jacob Koning", "title": "Secretary-Director"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201730
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=7, day=1,
      mintage=NULL, comment='See varieties in comments above.',
      signatures='[{"signer_name": "Arnoud Henricus Elisabeth Maria Wellink", "title": "President"}, {"signer_name": "Jacob Koning", "title": "Secretary-Director"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201738, 494060,
  FALSE, NULL, NULL, NULL,
  1988, 1989,
  NULL, 'b.3 Serie C',
  '[{"signer_name": "Elias Salama", "title": "General Manager"}, {"signer_name": "José Luis Machinea", "title": "President"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201738
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='b.3 Serie C',
      signatures='[{"signer_name": "Elias Salama", "title": "General Manager"}, {"signer_name": "José Luis Machinea", "title": "President"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201751, 493293,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  51340000, NULL,
  '[{"signer_name": "Øystein Olsen", "title": "Governor"}, {"signer_name": "Leif Veggum", "title": "Director"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201751
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=51340000, comment=NULL,
      signatures='[{"signer_name": "Øystein Olsen", "title": "Governor"}, {"signer_name": "Leif Veggum", "title": "Director"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201752, 493294,
  TRUE, 2007, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "58b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201752
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "58b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201753, 493295,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  50000000, '▲',
  '[{"signer_name": "Carolyn A. Wilkins", "title": "Deputy Governor"}, {"signer_name": "Stephen S. Poloz", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "112"}, {"catalogue": {"id": 959, "code": "Ch GPM"}, "number": "BC-75"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201753
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=50000000, comment='▲',
      signatures='[{"signer_name": "Carolyn A. Wilkins", "title": "Deputy Governor"}, {"signer_name": "Stephen S. Poloz", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "112"}, {"catalogue": {"id": 959, "code": "Ch GPM"}, "number": "BC-75"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201770, 493313,
  FALSE, NULL, NULL, NULL,
  1994, 1996,
  70000000, 'P# 76a - Signature 4',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201770
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=70000000, comment='P# 76a - Signature 4',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201796, 493364,
  TRUE, 2000, 1, 1,
  NULL, NULL,
  2000000, 'P# 150 - Issued note; Series AJ-AL',
  '[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201796
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=1, day=1,
      mintage=2000000, comment='P# 150 - Issued note; Series AJ-AL',
      signatures='[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201806, 493402,
  FALSE, NULL, NULL, NULL,
  2007, 2007,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201806
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201827, 493442,
  FALSE, NULL, NULL, NULL,
  1969, 1994,
  6965600000, 'double letter serial prefix',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "95b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201827
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=6965600000, comment='double letter serial prefix',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "95b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201892, 493941,
  TRUE, 2007, 5, 14,
  NULL, NULL,
  NULL, 'Series D',
  '[{"signer_name": "José Julián Sidaoui Dib", "title": "Deputy Governor"}, {"signer_name": "Raúl Valdés Ramos", "title": "Main Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "122d"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B704c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201892
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=5, day=14,
      mintage=NULL, comment='Series D',
      signatures='[{"signer_name": "José Julián Sidaoui Dib", "title": "Deputy Governor"}, {"signer_name": "Raúl Valdés Ramos", "title": "Main Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "122d"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B704c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201894, 493559,
  TRUE, 1915, NULL, NULL,
  NULL, NULL,
  NULL, 'Scalloped seal; with date',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201894
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1915, month=NULL, day=NULL,
      mintage=NULL, comment='Scalloped seal; with date',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201925, 522546,
  TRUE, 1928, 8, 15,
  NULL, NULL,
  60000000, 'Serial # A8,640,001 through Series E, Republic issue',
  '[{"signer_name": "Carlos Vergara Cailleaux", "title": "Governor"}, {"signer_name": "Adolfo Castaño Orejón", "title": "Comptroller"}, {"signer_name": "Bonifacio Burgos Delgado", "title": "Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "75b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201925
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1928, month=8, day=15,
      mintage=60000000, comment='Serial # A8,640,001 through Series E, Republic issue',
      signatures='[{"signer_name": "Carlos Vergara Cailleaux", "title": "Governor"}, {"signer_name": "Adolfo Castaño Orejón", "title": "Comptroller"}, {"signer_name": "Bonifacio Burgos Delgado", "title": "Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "75b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201946, 493626,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) Signature: Yakiv Smolii',
  '[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201946
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) Signature: Yakiv Smolii',
      signatures='[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 201994, 506943,
  FALSE, NULL, NULL, NULL,
  2014, 2016,
  NULL, 'Specimen',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "69s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 201994
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Specimen',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "69s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202008, 493707,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) Signature: Yakiv Smolii',
  '[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202008
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) Signature: Yakiv Smolii',
      signatures='[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202010, 493710,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202010
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202013, 493713,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note; Prefix: АА-ББ',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202013
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Prefix: АА-ББ',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202014, 493714,
  TRUE, 2017, 5, 10,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Azeema Adam", "title": "Governor of the Maldives Monetary Authority"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202014
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=5, day=10,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Azeema Adam", "title": "Governor of the Maldives Monetary Authority"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202020, 759651,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Pyshnyi Andrii Hryhorovych", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202020
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Pyshnyi Andrii Hryhorovych", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202026, 493727,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Glenn Robert Stevens", "title": "Governor of the Reserve Bank of Australia"}, {"signer_name": "John. A. Fraser", "title": "Secretary to the Treasury"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "62a"}, {"catalogue": {"id": 2625, "code": "Renniks"}, "number": "R224"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202026
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Glenn Robert Stevens", "title": "Governor of the Reserve Bank of Australia"}, {"signer_name": "John. A. Fraser", "title": "Secretary to the Treasury"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "62a"}, {"catalogue": {"id": 2625, "code": "Renniks"}, "number": "R224"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202028, 493729,
  TRUE, 2006, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note; Prefix: AA - ИK',
  '[{"signer_name": "Änwar Ğalïmollaulı Säydenov", "title": "President of National Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202028
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2006, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Prefix: AA - ИK',
      signatures='[{"signer_name": "Änwar Ğalïmollaulı Säydenov", "title": "President of National Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202029, 493730,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: AE',
  '[{"signer_name": "Ontefetse Kenneth Matambo", "title": "Minister of Finance"}, {"signer_name": "Moses Dinekere Pelaelo", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202029
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: AE',
      signatures='[{"signer_name": "Ontefetse Kenneth Matambo", "title": "Minister of Finance"}, {"signer_name": "Moses Dinekere Pelaelo", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202035, 493736,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202035
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202037, 493738,
  TRUE, 2011, NULL, NULL,
  NULL, NULL,
  10000000, NULL,
  '[{"signer_name": "Grigoriy Aleksandrovich Marchenko \"2nd sign\"", "title": "President of National Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202037
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2011, month=NULL, day=NULL,
      mintage=10000000, comment=NULL,
      signatures='[{"signer_name": "Grigoriy Aleksandrovich Marchenko \"2nd sign\"", "title": "President of National Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202039, 493740,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'P #  A126a.1',
  '[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202039
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='P #  A126a.1',
      signatures='[{"signer_name": "Yakiv Vasylovych Smolii", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202045, 493746,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  1000000, NULL,
  '[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202045
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=1000000, comment=NULL,
      signatures='[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202100, 494176,
  FALSE, NULL, NULL, NULL,
  1987, 1987,
  146300000, 'P# 211c - Series: A1583 - A3045 (Stamp A)',
  '[{"signer_name": "Luiz Carlos Bresser-Pereira", "title": "President of the National Monetary Council"}, {"signer_name": "Fernando Milliet de Oliveira", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C187"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "583.04"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202100
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=146300000, comment='P# 211c - Series: A1583 - A3045 (Stamp A)',
      signatures='[{"signer_name": "Luiz Carlos Bresser-Pereira", "title": "President of the National Monetary Council"}, {"signer_name": "Fernando Milliet de Oliveira", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C187"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "583.04"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202121, 493954,
  FALSE, NULL, NULL, NULL,
  1975, 1977,
  NULL, 'P-80c - Plate Letter A',
  '[{"signer_name": "Kocheril Raman Puri", "title": "Governor of the Reserve Bank of India"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202121
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P-80c - Plate Letter A',
      signatures='[{"signer_name": "Kocheril Raman Puri", "title": "Governor of the Reserve Bank of India"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202139, 494065,
  FALSE, NULL, NULL, NULL,
  1994, 1996,
  71000000, 'P# 75a - Signature 4',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202139
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=71000000, comment='P# 75a - Signature 4',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202145, 494075,
  TRUE, 2005, NULL, NULL,
  NULL, NULL,
  NULL, 'Serial prefix: XX## (letter-letter-number-number)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "903a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202145
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2005, month=NULL, day=NULL,
      mintage=NULL, comment='Serial prefix: XX## (letter-letter-number-number)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "903a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202153, 581575,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Rodrigo Duterte", "title": "President of the Philippines"}, {"signer_name": "Benjamin Diokno", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1084g"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202153
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Rodrigo Duterte", "title": "President of the Philippines"}, {"signer_name": "Benjamin Diokno", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1084g"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202154, 494107,
  TRUE, 2005, 7, 1,
  NULL, NULL,
  NULL, 'P#121a - Serial # prefix 05',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202154
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2005, month=7, day=1,
      mintage=NULL, comment='P#121a - Serial # prefix 05',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202163, 499520,
  TRUE, 1914, 8, 12,
  NULL, NULL,
  NULL, 'Without underprint, red seal & serial #, obverse dark green, series: 695 - 850',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202163
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1914, month=8, day=12,
      mintage=NULL, comment='Without underprint, red seal & serial #, obverse dark green, series: 695 - 850',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202197, 494183,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  74400000, 'Series: AA',
  '[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Alexandre Antônio Tombini", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C333"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "631.01"}, {"catalogue": {"id": 931, "code": "P"}, "number": "252a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202197
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=74400000, comment='Series: AA',
      signatures='[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Alexandre Antônio Tombini", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C333"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "631.01"}, {"catalogue": {"id": 931, "code": "P"}, "number": "252a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202203, 494201,
  TRUE, 2010, NULL, NULL,
  NULL, NULL,
  976525000, 'Series: AA - CJ (until 089725000)',
  '[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Alexandre Antônio Tombini", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C346"}, {"catalogue": {"id": 931, "code": "P"}, "number": "254a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "876a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202203
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=NULL, day=NULL,
      mintage=976525000, comment='Series: AA - CJ (until 089725000)',
      signatures='[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Alexandre Antônio Tombini", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C346"}, {"catalogue": {"id": 931, "code": "P"}, "number": "254a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "876a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202213, 494234,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) Signature: Valeria Gontareva',
  '[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202213
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) Signature: Valeria Gontareva',
      signatures='[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202233, 494262,
  TRUE, 1978, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Leif Groth", "title": "High Commissioner"}, {"signer_name": "Atli P. Dam", "title": "Prime Minister"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202233
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1978, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Leif Groth", "title": "High Commissioner"}, {"signer_name": "Atli P. Dam", "title": "Prime Minister"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202240, 494278,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  NULL, 'P#121e',
  '[{"signer_name": "Stepan Ivanovych Kubiv", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202240
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=NULL, comment='P#121e',
      signatures='[{"signer_name": "Stepan Ivanovych Kubiv", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202244, 501651,
  FALSE, NULL, NULL, NULL,
  2017, 2018,
  NULL, '2 solid stars ★★ (6AA → 6AC?, 6AH → 6A?, 6B? → 6BQ, 6CA → 6CN, 6DC → 6EE, 6FL → 6FV?)',
  '[{"signer_name": "Tharman Shanmugaratnam", "title": "Chairman Monetary Authority Of Singapore"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "46i"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202244
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='2 solid stars ★★ (6AA → 6AC?, 6AH → 6A?, 6B? → 6BQ, 6CA → 6CN, 6DC → 6EE, 6FL → 6FV?)',
      signatures='[{"signer_name": "Tharman Shanmugaratnam", "title": "Chairman Monetary Authority Of Singapore"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "46i"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202248, 494356,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, 'P-120e',
  '[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202248
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment='P-120e',
      signatures='[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202259, 517871,
  TRUE, 2004, 7, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "109c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202259
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=7, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "109c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202266, 768400,
  TRUE, 2016, 1, 25,
  NULL, NULL,
  NULL, 'Series AY',
  '[{"signer_name": "Agustí­n Guillermo Carstens Carstens", "title": "Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202266
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=1, day=25,
      mintage=NULL, comment='Series AY',
      signatures='[{"signer_name": "Agustí­n Guillermo Carstens Carstens", "title": "Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202298, 520121,
  TRUE, 2012, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note; Signatures: Khalid Safir & Abdellatif Jouahri',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202298
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Signatures: Khalid Safir & Abdellatif Jouahri',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202305, 523139,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'P#155c.2 new signature',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202305
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='P#155c.2 new signature',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202312, 494493,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: H',
  '[{"signer_name": "Darío Rolando Arrélaga Yaluk", "title": "General Manager"}, {"signer_name": "Carlos Gustavo Fernández Valdovinos", "title": "President"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "234b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "857b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202312
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: H',
      signatures='[{"signer_name": "Darío Rolando Arrélaga Yaluk", "title": "General Manager"}, {"signer_name": "Carlos Gustavo Fernández Valdovinos", "title": "President"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "234b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "857b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202322, 494507,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Karnit Flug", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "65a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202322
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Karnit Flug", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "65a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202327, 494512,
  TRUE, 2010, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures: Gregorio - Zurbuchen',
  '[{"signer_name": "José Fernando de Gregorio Rebeco", "title": "President of Central Bank"}, {"signer_name": "Alejandro Zurbuchen Silva", "title": "General Manager of the Central Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "161a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "296a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202327
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures: Gregorio - Zurbuchen',
      signatures='[{"signer_name": "José Fernando de Gregorio Rebeco", "title": "President of Central Bank"}, {"signer_name": "Alejandro Zurbuchen Silva", "title": "General Manager of the Central Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "161a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "296a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202376, 494612,
  FALSE, NULL, NULL, NULL,
  2019, 2019,
  NULL, NULL,
  '[{"signer_name": "Denton Hehenoro Rarawa \"2nd sign\"", "title": "Governor of Central Bank"}, {"signer_name": "Fred Fakari", "title": "Secretary of Finance"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "221a"}, {"catalogue": {"id": 931, "code": "P"}, "number": "38"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202376
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Denton Hehenoro Rarawa \"2nd sign\"", "title": "Governor of Central Bank"}, {"signer_name": "Fred Fakari", "title": "Secretary of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "221a"}, {"catalogue": {"id": 931, "code": "P"}, "number": "38"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202376, 730115,
  FALSE, NULL, NULL, NULL,
  2022, 2022,
  NULL, NULL,
  '[{"signer_name": "Luke Forau", "title": "Governor of Central Bank"}, {"signer_name": "Harry Degruit Kuma", "title": "Secretary of Finance"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "221b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202376
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Luke Forau", "title": "Governor of Central Bank"}, {"signer_name": "Harry Degruit Kuma", "title": "Secretary of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "221b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202403, 494652,
  FALSE, NULL, NULL, NULL,
  2000, 2000,
  58600000, 'Series: #A0001 - A0586 (Stamp D); Name as "PEDRO A. CABRAL"',
  '[{"signer_name": "Pedro Sampaio Malan", "title": "Finance Minister"}, {"signer_name": "Armí­nio Fraga Neto", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C331"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "630.01"}, {"catalogue": {"id": 931, "code": "P"}, "number": "248a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202403
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=58600000, comment='Series: #A0001 - A0586 (Stamp D); Name as "PEDRO A. CABRAL"',
      signatures='[{"signer_name": "Pedro Sampaio Malan", "title": "Finance Minister"}, {"signer_name": "Armí­nio Fraga Neto", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C331"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "630.01"}, {"catalogue": {"id": 931, "code": "P"}, "number": "248a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202523, 494865,
  FALSE, NULL, NULL, NULL,
  2017, 2018,
  NULL, NULL,
  '[{"signer_name": "Victoria Cleland", "title": "Chief Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202523
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Victoria Cleland", "title": "Chief Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202534, 958284,
  FALSE, NULL, NULL, NULL,
  2017, 2017,
  NULL, 'Prefix: A/5, A/6; Signatures: Denton H. Rarawa (type B) & Fred Fakarii',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "224b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202534
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A/5, A/6; Signatures: Denton H. Rarawa (type B) & Fred Fakarii',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "224b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202537, 496435,
  TRUE, 1998, NULL, NULL,
  NULL, NULL,
  20000000, 'P# 114b, black serial #',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202537
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1998, month=NULL, day=NULL,
      mintage=20000000, comment='P# 114b, black serial #',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202541, 494925,
  TRUE, 1992, NULL, NULL,
  NULL, NULL,
  NULL, 'P#78Ah ''B'' inset, prefix *M,N*',
  '[{"signer_name": "Montek Singh Ahluwalia", "title": "Finance Secretary"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202541
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=NULL, day=NULL,
      mintage=NULL, comment='P#78Ah ''B'' inset, prefix *M,N*',
      signatures='[{"signer_name": "Montek Singh Ahluwalia", "title": "Finance Secretary"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202542, 494928,
  TRUE, 2018, 2, 4,
  NULL, NULL,
  5000000, NULL,
  '[{"signer_name": "Mangala Pinsiri Samaraweera", "title": "Finance Minister"}, {"signer_name": "Indrajit Coomaraswamy", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202542
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=2, day=4,
      mintage=5000000, comment=NULL,
      signatures='[{"signer_name": "Mangala Pinsiri Samaraweera", "title": "Finance Minister"}, {"signer_name": "Indrajit Coomaraswamy", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202546, 494945,
  FALSE, NULL, NULL, NULL,
  1953, 1974,
  NULL, 'double letter serial # prefix, light brown paper',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "90b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202546
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='double letter serial # prefix, light brown paper',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "90b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202575, 495304,
  TRUE, 2011, NULL, NULL,
  NULL, NULL,
  20000000, NULL,
  '[{"signer_name": "Grigoriy Aleksandrovich Marchenko \"2nd sign\"", "title": "President of National Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202575
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2011, month=NULL, day=NULL,
      mintage=20000000, comment=NULL,
      signatures='[{"signer_name": "Grigoriy Aleksandrovich Marchenko \"2nd sign\"", "title": "President of National Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202599, 495351,
  TRUE, 2015, 10, 5,
  NULL, NULL,
  NULL, 'Prefix: A-D',
  '[{"signer_name": "Azeema Adam", "title": "Governor of the Maldives Monetary Authority"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "216a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202599
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=10, day=5,
      mintage=NULL, comment='Prefix: A-D',
      signatures='[{"signer_name": "Azeema Adam", "title": "Governor of the Maldives Monetary Authority"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "216a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202605, 495361,
  TRUE, 2015, 10, 5,
  NULL, NULL,
  NULL, 'Prefix: A - C; Signature: Azeema Adam',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "27"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "217a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202605
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=10, day=5,
      mintage=NULL, comment='Prefix: A - C; Signature: Azeema Adam',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "27"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "217a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202610, 495366,
  TRUE, 2015, 10, 5,
  NULL, NULL,
  NULL, 'Prefix: A, B; Signatures: Azeema Adam',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202610
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=10, day=5,
      mintage=NULL, comment='Prefix: A, B; Signatures: Azeema Adam',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202623, 495382,
  FALSE, NULL, NULL, NULL,
  2017, 2017,
  NULL, 'Prefix: A/1 to A/3; Signatures: Denton H. Rarawa (type B) & Fred Fakarii',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "222a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202623
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A/1 to A/3; Signatures: Denton H. Rarawa (type B) & Fred Fakarii',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "222a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202623, 717675,
  FALSE, NULL, NULL, NULL,
  2022, 2022,
  NULL, 'Prefix: A/4, A/5; Signatures: Dr. Luke Forau & Harry Kuma',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "222b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202623
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A/4, A/5; Signatures: Dr. Luke Forau & Harry Kuma',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "222b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202625, 495386,
  FALSE, NULL, NULL, NULL,
  2021, 2021,
  NULL, 'Prefix A/5; Signatures: Dr. Luke Forau & Harry Kuma',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "223b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202625
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix A/5; Signatures: Dr. Luke Forau & Harry Kuma',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "223b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202634, 495406,
  FALSE, NULL, NULL, NULL,
  1987, 1989,
  NULL, 'b Serie A',
  '[{"signer_name": "Elias Salama", "title": "General Manager"}, {"signer_name": "José Luis Machinea", "title": "President"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202634
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='b Serie A',
      signatures='[{"signer_name": "Elias Salama", "title": "General Manager"}, {"signer_name": "José Luis Machinea", "title": "President"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202636, 495408,
  TRUE, 2015, 9, 6,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Martin Gobizandla Dlamini", "title": "Minister for Finance"}, {"signer_name": "Majozi Vincent Sithole", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202636
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=9, day=6,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Martin Gobizandla Dlamini", "title": "Minister for Finance"}, {"signer_name": "Majozi Vincent Sithole", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202649, 495436,
  TRUE, 2006, 10, 16,
  NULL, NULL,
  2000000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202649
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2006, month=10, day=16,
      mintage=2000000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202652, 495439,
  TRUE, 2008, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Khalifa bin Salman Al Khalifa", "title": "Prime Minister"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202652
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2008, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Khalifa bin Salman Al Khalifa", "title": "Prime Minister"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202670, 495478,
  TRUE, 2008, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures: Johan Gernandt & Stefan Ingves',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "63c.3"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202670
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2008, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures: Johan Gernandt & Stefan Ingves',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "63c.3"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202676, 495468,
  TRUE, 2015, NULL, NULL,
  NULL, NULL,
  NULL, 'P# 119Ad',
  '[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202676
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=NULL, day=NULL,
      mintage=NULL, comment='P# 119Ad',
      signatures='[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202679, 495481,
  TRUE, 2004, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Serhii Leonidovych Tihipko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202679
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Serhii Leonidovych Tihipko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202688, 495522,
  TRUE, 1999, NULL, NULL,
  NULL, NULL,
  NULL, 'Serial prefix: XX## (letter-letter-number-number)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "895a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202688
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=NULL, day=NULL,
      mintage=NULL, comment='Serial prefix: XX## (letter-letter-number-number)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "895a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202690, 495532,
  TRUE, 2015, NULL, NULL,
  NULL, NULL,
  NULL, 'P#118e',
  '[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202690
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=NULL, day=NULL,
      mintage=NULL, comment='P#118e',
      signatures='[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202693, 495547,
  TRUE, 2005, NULL, NULL,
  NULL, NULL,
  NULL, 'P#117b',
  '[{"signer_name": "Volodymyr Semenovych Stelmakh", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202693
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2005, month=NULL, day=NULL,
      mintage=NULL, comment='P#117b',
      signatures='[{"signer_name": "Volodymyr Semenovych Stelmakh", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202697, 495555,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  NULL, 'P#116Ac',
  '[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "116Ac"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202697
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=NULL, comment='P#116Ac',
      signatures='[{"signer_name": "Valeriia Oleksiivna Hontareva", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "116Ac"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202730, 496508,
  TRUE, 1984, 9, 3,
  NULL, NULL,
  627000000, 'P#112d Signature Fazio and Amici',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202730
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1984, month=9, day=3,
      mintage=627000000, comment='P#112d Signature Fazio and Amici',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202736, 774883,
  TRUE, 1919, 12, 1,
  NULL, NULL,
  NULL, 'KK# 133.a; issued note',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202736
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1919, month=12, day=1,
      mintage=NULL, comment='KK# 133.a; issued note',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202738, 495665,
  TRUE, 1982, 3, 16,
  NULL, NULL,
  360000000, '(fr) Serie Nr from AA-0.000.001 A to TA-1.000.000T',
  '[{"signer_name": "Carlo Azeglio Ciampi", "title": "Governor"}, {"signer_name": "Vittorio Stevani", "title": "Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "109a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202738
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1982, month=3, day=16,
      mintage=360000000, comment='(fr) Serie Nr from AA-0.000.001 A to TA-1.000.000T',
      signatures='[{"signer_name": "Carlo Azeglio Ciampi", "title": "Governor"}, {"signer_name": "Vittorio Stevani", "title": "Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "109a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202742, 495676,
  TRUE, 1919, 3, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202742
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1919, month=3, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202754, 495695,
  FALSE, NULL, NULL, NULL,
  1987, NULL,
  NULL, NULL,
  '[{"signer_name": "Thomas Davis", "title": "Minister of Finance"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "3a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202754
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Thomas Davis", "title": "Minister of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "3a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202755, 495697,
  FALSE, NULL, NULL, NULL,
  1987, 1987,
  NULL, NULL,
  '[{"signer_name": "Thomas Davis", "title": "Minister of Finance"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "4a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "104"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202755
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Thomas Davis", "title": "Minister of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "4a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "104"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202776, 495736,
  TRUE, 1995, NULL, NULL,
  NULL, NULL,
  NULL, 'P# 108b',
  '[{"signer_name": "Viktor Andriiovych Yushchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202776
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1995, month=NULL, day=NULL,
      mintage=NULL, comment='P# 108b',
      signatures='[{"signer_name": "Viktor Andriiovych Yushchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202794, 495775,
  TRUE, 1975, NULL, NULL,
  NULL, NULL,
  63000000, '(fr) P-64a tirage aproximatif',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202794
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1975, month=NULL, day=NULL,
      mintage=63000000, comment='(fr) P-64a tirage aproximatif',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202805, 515431,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Gent Sejko", "title": "Governor"}, {"signer_name": "Virjon Lalollari", "title": "Director"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202805
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Gent Sejko", "title": "Governor"}, {"signer_name": "Virjon Lalollari", "title": "Director"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202816, 495837,
  TRUE, 2010, NULL, NULL,
  NULL, NULL,
  NULL, 'with security thread',
  '[{"signer_name": "Dorin Drăguțanu", "title": "Governor of the National Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "8h1"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202816
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=NULL, day=NULL,
      mintage=NULL, comment='with security thread',
      signatures='[{"signer_name": "Dorin Drăguțanu", "title": "Governor of the National Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "8h1"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202835, 495974,
  TRUE, 2007, 10, 1,
  NULL, NULL,
  NULL, 'Signatures: 曾俊華 (Financial Secretary), 任志剛 (Monetary Authority)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "401b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202835
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=10, day=1,
      mintage=NULL, comment='Signatures: 曾俊華 (Financial Secretary), 任志剛 (Monetary Authority)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "401b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202835, 495973,
  TRUE, 2007, 4, 1,
  NULL, NULL,
  NULL, 'Signatures: 唐英年 (Financial Secretary), 任志剛 (Monetary Authority)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "401a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202835
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=4, day=1,
      mintage=NULL, comment='Signatures: 唐英年 (Financial Secretary), 任志剛 (Monetary Authority)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "401a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202853, 496077,
  TRUE, 1967, 9, 7,
  NULL, NULL,
  40000000, 'F.62/28 - P147c - alphabet 344-359',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202853
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1967, month=9, day=7,
      mintage=40000000, comment='F.62/28 - P147c - alphabet 344-359',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202854, 496127,
  TRUE, 1992, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Viktor Andriiovych Yushchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202854
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Viktor Andriiovych Yushchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202859, 496154,
  TRUE, 1992, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Viktor Andriiovych Yushchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202859
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Viktor Andriiovych Yushchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202860, 496156,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Philip Lowe", "title": "Governor of the Reserve Bank of Australia"}, {"signer_name": "John. A. Fraser", "title": "Secretary to the Treasury"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "63"}, {"catalogue": {"id": 2625, "code": "Renniks"}, "number": "R326"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202860
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Philip Lowe", "title": "Governor of the Reserve Bank of Australia"}, {"signer_name": "John. A. Fraser", "title": "Secretary to the Treasury"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "63"}, {"catalogue": {"id": 2625, "code": "Renniks"}, "number": "R326"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202861, 501348,
  TRUE, 1980, 4, 3,
  NULL, NULL,
  NULL, 'P#72a, Sigs: C. H. Murray & Tomás F. Ó Cofaigh',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202861
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1980, month=4, day=3,
      mintage=NULL, comment='P#72a, Sigs: C. H. Murray & Tomás F. Ó Cofaigh',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202861, 501362,
  TRUE, 1992, 4, 15,
  NULL, NULL,
  NULL, 'P#72c, Sigs: Maurice Doyle & S. P. Cromien',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202861
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=4, day=15,
      mintage=NULL, comment='P#72c, Sigs: Maurice Doyle & S. P. Cromien',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202862, 496171,
  TRUE, 1992, NULL, NULL,
  NULL, NULL,
  NULL, 'P# 105a',
  '[{"signer_name": "Vadym Petrovych Hetman", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202862
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=NULL, day=NULL,
      mintage=NULL, comment='P# 105a',
      signatures='[{"signer_name": "Vadym Petrovych Hetman", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202867, 496204,
  TRUE, 1992, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Vadym Petrovych Hetman", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "104a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202867
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Vadym Petrovych Hetman", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "104a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202869, 496275,
  TRUE, 1992, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Vadym Petrovych Hetman", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202869
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Vadym Petrovych Hetman", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202873, 496306,
  FALSE, NULL, NULL, NULL,
  1974, 1978,
  63000000, '(fr) P-62a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202873
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=63000000, comment='(fr) P-62a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202880, 496337,
  TRUE, 2002, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures: Chea Chanto & Tieng Seng',
  '[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tieng Seng", "title": "General Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202880
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2002, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures: Chea Chanto & Tieng Seng',
      signatures='[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tieng Seng", "title": "General Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202885, 496395,
  FALSE, NULL, NULL, NULL,
  2010, 2010,
  NULL, 'Prefix: AA-CX.',
  '[{"signer_name": "Mustafa Haidi Mkulo", "title": "FInance Minister"}, {"signer_name": "Benno Ndulu", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "41a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B140a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202885
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: AA-CX.',
      signatures='[{"signer_name": "Mustafa Haidi Mkulo", "title": "FInance Minister"}, {"signer_name": "Benno Ndulu", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "41a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B140a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202898, 496461,
  FALSE, NULL, NULL, NULL,
  2017, 2017,
  NULL, 'P-97a',
  '[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202898
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P-97a',
      signatures='[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202900, 496468,
  FALSE, NULL, NULL, NULL,
  2017, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "98a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B333a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202900
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "98a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B333a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202902, 496471,
  FALSE, NULL, NULL, NULL,
  2017, NULL,
  NULL, 'P-99a Signature: Alain Hervé M. Rasolofondraibe',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202902
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P-99a Signature: Alain Hervé M. Rasolofondraibe',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202908, 496486,
  FALSE, NULL, NULL, NULL,
  2017, NULL,
  NULL, 'Issued note; Signature: Alain Hervé Rasolofondraibe',
  '[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "100a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "335a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202908
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Signature: Alain Hervé Rasolofondraibe',
      signatures='[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "100a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "335a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202911, 496496,
  TRUE, 1999, 6, 15,
  NULL, NULL,
  30000000, '中華民國八十八年製版',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202911
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=6, day=15,
      mintage=30000000, comment='中華民國八十八年製版',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202960, 497222,
  TRUE, 2011, NULL, NULL,
  NULL, NULL,
  NULL, 'P#94Af Insert Letter R, signature: D. Subbarao',
  '[{"signer_name": "Duvvuri Subbarao", "title": "Governor of the Reserve Bank of India"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202960
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2011, month=NULL, day=NULL,
      mintage=NULL, comment='P#94Af Insert Letter R, signature: D. Subbarao',
      signatures='[{"signer_name": "Duvvuri Subbarao", "title": "Governor of the Reserve Bank of India"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202977, 497242,
  TRUE, 2010, 3, 19,
  NULL, NULL,
  120000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202977
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=3, day=19,
      mintage=120000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202979, 497245,
  TRUE, 2011, 4, 20,
  NULL, NULL,
  60000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202979
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2011, month=4, day=20,
      mintage=60000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202985, 497252,
  FALSE, NULL, NULL, NULL,
  2017, NULL,
  NULL, 'Prefix: A-D',
  '[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "101a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "336a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202985
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A-D',
      signatures='[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "101a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "336a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202993, 497266,
  FALSE, NULL, NULL, NULL,
  2017, 2017,
  NULL, 'Issued note',
  '[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "102a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B337a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202993
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Alain Herve Rasolofondraibe", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "102a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B337a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 202997, 497282,
  FALSE, NULL, NULL, NULL,
  2002, 2002,
  NULL, NULL,
  '[{"signer_name": "Dr. Abdulhafid Mahmoud Zilitni", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 202997
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Dr. Abdulhafid Mahmoud Zilitni", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203011, 497313,
  TRUE, 1992, 1, 15,
  NULL, NULL,
  40000000, 'P#12a Known serial # prefixes: AA, FF-FH, FJ-FN, FP, FR-FT, FV, FZ, GF, HF, HP, HR, JF, KF, LF, MF, NF, PF, RF, SF, TF, UF, VF, VG-VH, VJ-VN, VP, VR-VS',
  '[{"signer_name": "France Arhar", "title": "Governor"}, {"signer_name": "Velimir Bole", "title": "Member of Council"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203011
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=1, day=15,
      mintage=40000000, comment='P#12a Known serial # prefixes: AA, FF-FH, FJ-FN, FP, FR-FT, FV, FZ, GF, HF, HP, HR, JF, KF, LF, MF, NF, PF, RF, SF, TF, UF, VF, VG-VH, VJ-VN, VP, VR-VS',
      signatures='[{"signer_name": "France Arhar", "title": "Governor"}, {"signer_name": "Velimir Bole", "title": "Member of Council"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203027, 499590,
  TRUE, 1992, NULL, NULL,
  NULL, NULL,
  NULL, 'As b. without embossed text at center (printed in Iraq)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "80c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203027
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=NULL, day=NULL,
      mintage=NULL, comment='As b. without embossed text at center (printed in Iraq)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "80c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203032, 497352,
  FALSE, NULL, NULL, NULL,
  2000, 2000,
  518400000, 'single letter serial number prefix',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "103a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203032
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=518400000, comment='single letter serial number prefix',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "103a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203034, 497357,
  TRUE, 2004, NULL, NULL,
  NULL, NULL,
  333000000, 'P-86b',
  '[{"signer_name": "Frédéric Rasamoely", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203034
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=NULL, day=NULL,
      mintage=333000000, comment='P-86b',
      signatures='[{"signer_name": "Frédéric Rasamoely", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203037, 497365,
  FALSE, NULL, NULL, NULL,
  2018, 2018,
  NULL, '1 diamond ♦ (5AA → 5BQ)',
  '[{"signer_name": "Tharman Shanmugaratnam", "title": "Chairman Monetary Authority Of Singapore"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "47f"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203037
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='1 diamond ♦ (5AA → 5BQ)',
      signatures='[{"signer_name": "Tharman Shanmugaratnam", "title": "Chairman Monetary Authority Of Singapore"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "47f"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203046, 497376,
  TRUE, 2004, NULL, NULL,
  NULL, NULL,
  366000000, '(fr) P-87b',
  '[{"signer_name": "Frédéric Rasamoely", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203046
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=NULL, day=NULL,
      mintage=366000000, comment='(fr) P-87b',
      signatures='[{"signer_name": "Frédéric Rasamoely", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203053, 497385,
  TRUE, 1999, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Murodali Alimardon", "title": "Chairman"}, {"signer_name": "Sharif Rahimzoda", "title": "1st. Vice-Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203053
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Murodali Alimardon", "title": "Chairman"}, {"signer_name": "Sharif Rahimzoda", "title": "1st. Vice-Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203054, 497386,
  TRUE, 1999, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Murodali Alimardon", "title": "Chairman"}, {"signer_name": "Sharif Rahimzoda", "title": "1st. Vice-Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203054
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Murodali Alimardon", "title": "Chairman"}, {"signer_name": "Sharif Rahimzoda", "title": "1st. Vice-Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203064, 497425,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, '6 or 7-digits on serial #',
  '[{"signer_name": "Mallam Sanusi Lamido Sanusi", "title": "Governor"}, {"signer_name": "Benjamin Chuks Onyido", "title": "Director of Currency and Branch Operations"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "39a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "235b/c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203064
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment='6 or 7-digits on serial #',
      signatures='[{"signer_name": "Mallam Sanusi Lamido Sanusi", "title": "Governor"}, {"signer_name": "Benjamin Chuks Onyido", "title": "Director of Currency and Branch Operations"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "39a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "235b/c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203070, 779880,
  TRUE, 2013, 5, 22,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Már Guðmundsson", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "58"}, {"catalogue": {"id": 996, "code": "SIEG SD"}, "number": "68"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203070
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=5, day=22,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Már Guðmundsson", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "58"}, {"catalogue": {"id": 996, "code": "SIEG SD"}, "number": "68"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203073, 497474,
  TRUE, 1943, 8, 5,
  NULL, NULL,
  60000000, '(fr) F.05/03 - P98a - alphabet 49-72',
  '[{"signer_name": "Pierre Rousseau", "title": "General Cashier"}, {"signer_name": "René Favre-Gilly", "title": "General Secretary"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203073
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1943, month=8, day=5,
      mintage=60000000, comment='(fr) F.05/03 - P98a - alphabet 49-72',
      signatures='[{"signer_name": "Pierre Rousseau", "title": "General Cashier"}, {"signer_name": "René Favre-Gilly", "title": "General Secretary"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203083, 497582,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Dorin Drăguțanu", "title": "Governor of the National Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "9g"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203083
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Dorin Drăguțanu", "title": "Governor of the National Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "9g"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203084, 497583,
  FALSE, NULL, NULL, NULL,
  2017, 2017,
  NULL, 'Issued note',
  '[{"signer_name": "Arthur Javadyan", "title": "Governor"}, {"signer_name": "Vartan Aranyan", "title": "Finance minister"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203084
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Arthur Javadyan", "title": "Governor"}, {"signer_name": "Vartan Aranyan", "title": "Finance minister"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203085, 502546,
  TRUE, 1949, 5, 19,
  NULL, NULL,
  60000000, '(fr) Fay#28/24 - P#128b - alphabet 329-352',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203085
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1949, month=5, day=19,
      mintage=60000000, comment='(fr) Fay#28/24 - P#128b - alphabet 329-352',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203110, 497740,
  TRUE, 2018, 3, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203110
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=3, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203122, 497786,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'Signature: Nadmidyn Bayartsaikhan',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "P62j"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203122
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='Signature: Nadmidyn Bayartsaikhan',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "P62j"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203126, 497792,
  TRUE, 2018, 1, 1,
  NULL, NULL,
  NULL, 'Signature: 高迎欣',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203126
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=1, day=1,
      mintage=NULL, comment='Signature: 高迎欣',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203134, 500267,
  TRUE, 2008, NULL, NULL,
  NULL, NULL,
  NULL, 'Signature: Shamshad Akhtar',
  '[{"signer_name": "Dr. Shamshad Akhtar", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "45c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203134
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2008, month=NULL, day=NULL,
      mintage=NULL, comment='Signature: Shamshad Akhtar',
      signatures='[{"signer_name": "Dr. Shamshad Akhtar", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "45c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203144, 497834,
  FALSE, NULL, NULL, NULL,
  2020, 2022,
  NULL, NULL,
  '[{"signer_name": "Sarah John", "title": "Chief Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203144
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Sarah John", "title": "Chief Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203157, 497904,
  FALSE, NULL, NULL, NULL,
  2006, 2006,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203157
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203164, 512511,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Chukwuma Charles Soludo", "title": "Governor"}, {"signer_name": "Benjamin Chuks Onyido", "title": "Director of Currency and Branch Operations"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "34e"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203164
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Chukwuma Charles Soludo", "title": "Governor"}, {"signer_name": "Benjamin Chuks Onyido", "title": "Director of Currency and Branch Operations"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "34e"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203179, 497973,
  TRUE, 2011, 12, NULL,
  NULL, NULL,
  NULL, 'P#14i',
  '[{"signer_name": "Dimitar Bogov-Pomada \"1st sign\"", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203179
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2011, month=12, day=NULL,
      mintage=NULL, comment='P#14i',
      signatures='[{"signer_name": "Dimitar Bogov-Pomada \"1st sign\"", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203188, 498025,
  FALSE, NULL, NULL, NULL,
  1989, 1989,
  667200000, 'P# 220a - Series: A0001 - A6772 (Stamp A)',
  '[{"signer_name": "Maí­lson Ferreira da Nóbrega", "title": "Finance Minister"}, {"signer_name": "Elmo de Araújo Camões", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C206"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "592.01"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203188
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=667200000, comment='P# 220a - Series: A0001 - A6772 (Stamp A)',
      signatures='[{"signer_name": "Maí­lson Ferreira da Nóbrega", "title": "Finance Minister"}, {"signer_name": "Elmo de Araújo Camões", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C206"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "592.01"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203191, 498028,
  TRUE, 1994, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Salem Abdul Aziz Sa''ud al-Sabah", "title": "Governor"}, {"signer_name": "Nasser Abdullah al-Rodhan", "title": "Finance Minister"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "24a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203191
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1994, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Salem Abdul Aziz Sa''ud al-Sabah", "title": "Governor"}, {"signer_name": "Nasser Abdullah al-Rodhan", "title": "Finance Minister"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "24a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203210, 498103,
  TRUE, 2004, NULL, NULL,
  NULL, NULL,
  263000000, '(fr) P-89b Rasamoelina',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203210
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=NULL, day=NULL,
      mintage=263000000, comment='(fr) P-89b Rasamoelina',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203228, 765840,
  TRUE, 1992, 10, 12,
  NULL, NULL,
  NULL, 'P#163(2) Issued note; collar with dark lower crease, coarsely hatched jacket',
  '[{"signer_name": "Luis Ángel Rojo Duque", "title": "Governor"}, {"signer_name": "Esteban Róspide Echeto", "title": "Comptroller"}, {"signer_name": "Jesús Urdiola Salvador", "title": "Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "163(2)"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203228
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=10, day=12,
      mintage=NULL, comment='P#163(2) Issued note; collar with dark lower crease, coarsely hatched jacket',
      signatures='[{"signer_name": "Luis Ángel Rojo Duque", "title": "Governor"}, {"signer_name": "Esteban Róspide Echeto", "title": "Comptroller"}, {"signer_name": "Jesús Urdiola Salvador", "title": "Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "163(2)"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203242, 498236,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203242
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203245, 498242,
  TRUE, 2007, 7, 31,
  NULL, NULL,
  NULL, 'One letter prefix: N; Printer: Giesecke & Devrient',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "99a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "321a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203245
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=7, day=31,
      mintage=NULL, comment='One letter prefix: N; Printer: Giesecke & Devrient',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "99a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "321a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203249, 578804,
  TRUE, 2013, 6, 30,
  NULL, NULL,
  NULL, 'Prefix: MD / Suffix: P-W; Printer: HdM',
  '[{"signer_name": "Deogratias Mutombo Mwana Nyembo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "98b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "320c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203249
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=6, day=30,
      mintage=NULL, comment='Prefix: MD / Suffix: P-W; Printer: HdM',
      signatures='[{"signer_name": "Deogratias Mutombo Mwana Nyembo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "98b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "320c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203254, 505129,
  TRUE, 2007, 7, 31,
  NULL, NULL,
  NULL, 'Printer: Giesecke & Devrient; Prefix: KA-KD',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "97a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "319a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203254
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=7, day=31,
      mintage=NULL, comment='Printer: Giesecke & Devrient; Prefix: KA-KD',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "97a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "319a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203261, 498314,
  TRUE, 2004, NULL, NULL,
  NULL, NULL,
  168000000, 'P#88b Prefix/suffix: A/E-A/R',
  '[{"signer_name": "Frédéric Rasamoely", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203261
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=NULL, day=NULL,
      mintage=168000000, comment='P#88b Prefix/suffix: A/E-A/R',
      signatures='[{"signer_name": "Frédéric Rasamoely", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203298, 501971,
  TRUE, 1981, 4, 9,
  NULL, NULL,
  NULL, 'P#70b, Sigs: C. H. Murray & Tomás F. Ó Cofaigh',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203298
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1981, month=4, day=9,
      mintage=NULL, comment='P#70b, Sigs: C. H. Murray & Tomás F. Ó Cofaigh',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203298, 502029,
  TRUE, 1986, 1, 6,
  NULL, NULL,
  NULL, 'P#70c, Sigs: Tomás F. Ó Cofaigh & Maurice Doyle',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203298
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1986, month=1, day=6,
      mintage=NULL, comment='P#70c, Sigs: Tomás F. Ó Cofaigh & Maurice Doyle',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203298, 501996,
  TRUE, 1981, 9, 21,
  NULL, NULL,
  NULL, 'P#70b, Sigs: C. H. Murray & Tomás F. Ó Cofaigh',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203298
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1981, month=9, day=21,
      mintage=NULL, comment='P#70b, Sigs: C. H. Murray & Tomás F. Ó Cofaigh',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203298, 502095,
  TRUE, 1989, 7, 17,
  NULL, NULL,
  NULL, 'P#70d, Sigs: Maurice Doyle & S. P. Cromien',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203298
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1989, month=7, day=17,
      mintage=NULL, comment='P#70d, Sigs: Maurice Doyle & S. P. Cromien',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203312, 498488,
  FALSE, NULL, NULL, NULL,
  2008, 2014,
  340000000, '(fr) P-90b Rasamoelina',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203312
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=340000000, comment='(fr) P-90b Rasamoelina',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203323, 528663,
  TRUE, 2004, 7, 1,
  NULL, NULL,
  NULL, 'P#108d Signatures Amunugama & Sunil Mendis.',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203323
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=7, day=1,
      mintage=NULL, comment='P#108d Signatures Amunugama & Sunil Mendis.',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203329, 498571,
  TRUE, 2010, 1, 1,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Mahinda Rajapaksa", "title": "Finance Minister"}, {"signer_name": "Ajith Nivard Cabraal", "title": "Governor of the Central Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "123a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B123a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203329
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=1, day=1,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Mahinda Rajapaksa", "title": "Finance Minister"}, {"signer_name": "Ajith Nivard Cabraal", "title": "Governor of the Central Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "123a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B123a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203338, 498620,
  FALSE, NULL, NULL, NULL,
  1974, 1978,
  79000000, 'FR: P-63a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203338
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=79000000, comment='FR: P-63a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203338, 498618,
  FALSE, NULL, NULL, NULL,
  1974, NULL,
  NULL, '(fr) P-63sa spécimen avec tampon noir de la Bnaque Cantrale',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203338
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) P-63sa spécimen avec tampon noir de la Bnaque Cantrale',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203389, 498919,
  FALSE, NULL, NULL, NULL,
  1945, 1945,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203389
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203433, 499115,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Ahmed Osman Ali", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203433
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Ahmed Osman Ali", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203434, 499117,
  TRUE, 1996, NULL, NULL,
  NULL, NULL,
  NULL, 'P-22a; 6 digit serial number',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203434
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1996, month=NULL, day=NULL,
      mintage=NULL, comment='P-22a; 6 digit serial number',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203446, 499135,
  FALSE, NULL, NULL, NULL,
  1987, 1987,
  NULL, NULL,
  '[{"signer_name": "Thomas Davis", "title": "Minister of Finance"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "5a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203446
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Thomas Davis", "title": "Minister of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "5a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203475, 499273,
  TRUE, 2017, 11, 28,
  NULL, NULL,
  NULL, '(fr) 22a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203475
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=11, day=28,
      mintage=NULL, comment='(fr) 22a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203478, 793403,
  TRUE, 2021, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203478
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203481, 499280,
  TRUE, 2017, 6, 16,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "149b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203481
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=6, day=16,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "149b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203484, 509804,
  FALSE, NULL, NULL, NULL,
  2002, 2007,
  NULL, 'T (Republic of Congo), Signatures: Jean-Félix Mamalepot & Louis Aleka-Rybert',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "106Ta"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203484
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='T (Republic of Congo), Signatures: Jean-Félix Mamalepot & Louis Aleka-Rybert',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "106Ta"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203487, 499296,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Malado Kaba", "title": "Minister of Finance"}, {"signer_name": "Louncény Nabe", "title": "Governor of the Central Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "48b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B339b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203487
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Malado Kaba", "title": "Minister of Finance"}, {"signer_name": "Louncény Nabe", "title": "Governor of the Central Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "48b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B339b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203501, 499350,
  TRUE, 2003, 7, 1,
  NULL, NULL,
  NULL, 'Signature: Vincent Cheng (General Manager)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "207a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203501
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2003, month=7, day=1,
      mintage=NULL, comment='Signature: Vincent Cheng (General Manager)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "207a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203518, 499396,
  FALSE, NULL, NULL, NULL,
  1985, 1990,
  NULL, 'P#81h Insert Letter C, signature: R. N. Malhotra',
  '[{"signer_name": "Ram Narain Malhotra", "title": "Governor of the Reserve Bank of India"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203518
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#81h Insert Letter C, signature: R. N. Malhotra',
      signatures='[{"signer_name": "Ram Narain Malhotra", "title": "Governor of the Reserve Bank of India"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203526, 501853,
  TRUE, 1976, NULL, NULL,
  NULL, NULL,
  21000000, '5.7.1976 to 2.10.1976; Prefix (1/س) to (21/س); 21 Prefixes',
  '[{"signer_name": "Mohamed Abdel Fattah Ibrahim", "title": "Governor, Central Bank of Egypt"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203526
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1976, month=NULL, day=NULL,
      mintage=21000000, comment='5.7.1976 to 2.10.1976; Prefix (1/س) to (21/س); 21 Prefixes',
      signatures='[{"signer_name": "Mohamed Abdel Fattah Ibrahim", "title": "Governor, Central Bank of Egypt"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203529, 499409,
  TRUE, 2003, 6, 30,
  NULL, NULL,
  NULL, 'Printer Giesecke & Devrient',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "94A"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "313b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203529
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2003, month=6, day=30,
      mintage=NULL, comment='Printer Giesecke & Devrient',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "94A"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "313b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203531, 499411,
  TRUE, 2003, 6, 30,
  NULL, NULL,
  NULL, 'Issued note; printer: Giesecke & Devrient, Germany',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "93a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "312a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203531
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2003, month=6, day=30,
      mintage=NULL, comment='Issued note; printer: Giesecke & Devrient, Germany',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "93a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "312a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203627, 499714,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'P#119j',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203627
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='P#119j',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203633, 499729,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures: José Fernando De Gregorio Rebeco & Alejandro Zurbuchen Silva',
  '[{"signer_name": "José Fernando de Gregorio Rebeco", "title": "President of Central Bank"}, {"signer_name": "Alejandro Zurbuchen Silva", "title": "General Manager of the Central Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "162a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "297a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203633
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures: José Fernando De Gregorio Rebeco & Alejandro Zurbuchen Silva',
      signatures='[{"signer_name": "José Fernando de Gregorio Rebeco", "title": "President of Central Bank"}, {"signer_name": "Alejandro Zurbuchen Silva", "title": "General Manager of the Central Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "162a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "297a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203640, 538308,
  TRUE, 1967, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: K9',
  '[{"signer_name": "Erik Hoffmeyer", "title": "Governor"}, {"signer_name": "Richard Riim", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "44y"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203640
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1967, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: K9',
      signatures='[{"signer_name": "Erik Hoffmeyer", "title": "Governor"}, {"signer_name": "Richard Riim", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "44y"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203640, 553586,
  TRUE, 1974, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: D4',
  '[{"signer_name": "Frede Sunesen", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "44ai"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203640
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1974, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: D4',
      signatures='[{"signer_name": "Frede Sunesen", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "44ai"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203647, 499795,
  FALSE, NULL, NULL, NULL,
  1992, 1993,
  NULL, 'a Series A, B',
  '[{"signer_name": "Felipe R. Murolo", "title": "Vice President"}, {"signer_name": "Roque Benjamí­n Fernández", "title": "President"}]'::jsonb, '[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "3001-3003"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "734"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203647
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='a Series A, B',
      signatures='[{"signer_name": "Felipe R. Murolo", "title": "Vice President"}, {"signer_name": "Roque Benjamí­n Fernández", "title": "President"}]'::jsonb, issue_references='[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "3001-3003"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "734"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203665, 499862,
  FALSE, NULL, NULL, NULL,
  1940, 1945,
  NULL, '#R138a; 7 digit serial#; September 1939',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203665
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='#R138a; 7 digit serial#; September 1939',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203732, 500076,
  TRUE, 1978, 12, 8,
  NULL, NULL,
  NULL, 'Issued note',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "199a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203732
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1978, month=12, day=8,
      mintage=NULL, comment='Issued note',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "199a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203759, 500152,
  TRUE, 1994, NULL, NULL,
  NULL, NULL,
  558000000, 'F.76/01 - P160a - number 1 to 30 999 999 (sauf numéros 003 000 000 à 007 000 000)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203759
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1994, month=NULL, day=NULL,
      mintage=558000000, comment='F.76/01 - P160a - number 1 to 30 999 999 (sauf numéros 003 000 000 à 007 000 000)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203794, 524753,
  TRUE, 1995, NULL, NULL,
  NULL, NULL,
  NULL, 'First word of the text for the denomination has its second letters as a long ''a''. Printed on white paper which fluoresces',
  '[{"signer_name": "Essam Rashid Hawish", "title": "Governor of the Central Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "85a1"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203794
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1995, month=NULL, day=NULL,
      mintage=NULL, comment='First word of the text for the denomination has its second letters as a long ''a''. Printed on white paper which fluoresces',
      signatures='[{"signer_name": "Essam Rashid Hawish", "title": "Governor of the Central Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "85a1"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203806, 500285,
  FALSE, NULL, NULL, NULL,
  1987, 1989,
  NULL, 'b Series A, B, C',
  '[{"signer_name": "Elias Salama", "title": "General Manager"}, {"signer_name": "José Luis Machinea", "title": "President"}]'::jsonb, '[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "2821-2825"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "699"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203806
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='b Series A, B, C',
      signatures='[{"signer_name": "Elias Salama", "title": "General Manager"}, {"signer_name": "José Luis Machinea", "title": "President"}]'::jsonb, issue_references='[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "2821-2825"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "699"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203808, 588694,
  FALSE, NULL, NULL, NULL,
  1989, 1989,
  NULL, 'b.3 Serie A',
  '[{"signer_name": "Rene E. De Paul", "title": "General Manager"}, {"signer_name": "Javier González Fraga", "title": "President"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203808
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='b.3 Serie A',
      signatures='[{"signer_name": "Rene E. De Paul", "title": "General Manager"}, {"signer_name": "Javier González Fraga", "title": "President"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203810, 500292,
  FALSE, NULL, NULL, NULL,
  1989, 1990,
  NULL, 'c Series B, C, D',
  '[{"signer_name": "Rene E. De Paul", "title": "General Manager"}, {"signer_name": "Javier González Fraga", "title": "President"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203810
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='c Series B, C, D',
      signatures='[{"signer_name": "Rene E. De Paul", "title": "General Manager"}, {"signer_name": "Javier González Fraga", "title": "President"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203846, 500406,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: BA-BD',
  '[{"signer_name": "Caroline Abel", "title": "Governor of the Central Bank of Seychelles"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203846
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: BA-BD',
      signatures='[{"signer_name": "Caroline Abel", "title": "Governor of the Central Bank of Seychelles"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203853, 500446,
  FALSE, NULL, NULL, NULL,
  2015, 2015,
  NULL, NULL,
  '[{"signer_name": "Lesetja Kganyago", "title": "Governor of the South African Reserve Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "139b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203853
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Lesetja Kganyago", "title": "Governor of the South African Reserve Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "139b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203869, 500512,
  TRUE, 2010, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Emmanuel Tumusiime-Mutebile", "title": "Governor"}, {"signer_name": "George William Nyeko", "title": "Secretary"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203869
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Emmanuel Tumusiime-Mutebile", "title": "Governor"}, {"signer_name": "George William Nyeko", "title": "Secretary"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203875, 500556,
  TRUE, 2015, NULL, NULL,
  NULL, NULL,
  31788958, 'Prefix: AA-BP; Two first digits on serial: 15',
  '[{"signer_name": "Graeme Wheeler", "title": "Governor, Reserve Bank of New Zealand"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B137a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203875
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=NULL, day=NULL,
      mintage=31788958, comment='Prefix: AA-BP; Two first digits on serial: 15',
      signatures='[{"signer_name": "Graeme Wheeler", "title": "Governor, Reserve Bank of New Zealand"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B137a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203877, 500574,
  FALSE, NULL, NULL, NULL,
  2016, 2016,
  NULL, 'Series A, B, C',
  '[{"signer_name": "Alejandro Vanoli", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Julián Dominguez", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, '[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "4001-4003"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203877
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series A, B, C',
      signatures='[{"signer_name": "Alejandro Vanoli", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Julián Dominguez", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, issue_references='[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "4001-4003"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203878, 500575,
  FALSE, NULL, NULL, NULL,
  2019, 2019,
  NULL, 'Series A, FCO',
  '[{"signer_name": "Pablo Ramos Sánchez", "title": "President"}, {"signer_name": "Carlos Alberto Colodro López", "title": "General Manager"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B417a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203878
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series A, FCO',
      signatures='[{"signer_name": "Pablo Ramos Sánchez", "title": "President"}, {"signer_name": "Carlos Alberto Colodro López", "title": "General Manager"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B417a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203897, 500661,
  TRUE, 1999, 10, 15,
  NULL, NULL,
  NULL, 'P#75b, Sigs: Muiris S. Ó Conaill & P. Mullarkey',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203897
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=10, day=15,
      mintage=NULL, comment='P#75b, Sigs: Muiris S. Ó Conaill & P. Mullarkey',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203899, 500670,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix S, T; Without watermark',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "272h"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203899
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix S, T; Without watermark',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "272h"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203903, 500729,
  TRUE, 2011, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix C; Printer: Canadian Bank Note Company',
  '[{"signer_name": "Jorge Aurelio Villalba Leguizamón", "title": "General Manager"}, {"signer_name": "Jorge Raúl Corvalán Mendoza", "title": "President"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "228c"}, {"catalogue": {"id": 1758, "code": "Pratt"}, "number": "MC229.c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203903
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2011, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix C; Printer: Canadian Bank Note Company',
      signatures='[{"signer_name": "Jorge Aurelio Villalba Leguizamón", "title": "General Manager"}, {"signer_name": "Jorge Raúl Corvalán Mendoza", "title": "President"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "228c"}, {"catalogue": {"id": 1758, "code": "Pratt"}, "number": "MC229.c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203927, 503325,
  TRUE, 2000, 11, 7,
  NULL, NULL,
  43000000, 'P#188d; Silva# 177 - O Governador: Victor Constâncio / O Vice-Governador: Antônio Pereira Marta',
  '[{"signer_name": "Vítor Manuel Ribeiro Constâncio", "title": "Governor"}, {"signer_name": "António Manuel Martins Pereira Marta", "title": "Deputy Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203927
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=11, day=7,
      mintage=43000000, comment='P#188d; Silva# 177 - O Governador: Victor Constâncio / O Vice-Governador: Antônio Pereira Marta',
      signatures='[{"signer_name": "Vítor Manuel Ribeiro Constâncio", "title": "Governor"}, {"signer_name": "António Manuel Martins Pereira Marta", "title": "Deputy Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203927, 541040,
  TRUE, 2000, 11, 7,
  NULL, NULL,
  NULL, 'P#188d; Silva# 177 - O Governador: Victor Constâncio / O Vice-Governador: Luís Campos e Cunha',
  '[{"signer_name": "Vítor Manuel Ribeiro Constâncio", "title": "Governor"}, {"signer_name": "Luís Manuel Moreira de Campos e Cunha", "title": "Deputy Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203927
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=11, day=7,
      mintage=NULL, comment='P#188d; Silva# 177 - O Governador: Victor Constâncio / O Vice-Governador: Luís Campos e Cunha',
      signatures='[{"signer_name": "Vítor Manuel Ribeiro Constâncio", "title": "Governor"}, {"signer_name": "Luís Manuel Moreira de Campos e Cunha", "title": "Deputy Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203929, 500916,
  FALSE, NULL, NULL, NULL,
  2005, 2005,
  NULL, NULL,
  '[{"signer_name": "Tito Mboweni", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "129a"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "698"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203929
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Tito Mboweni", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "129a"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "698"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203932, 503662,
  FALSE, NULL, NULL, NULL,
  1992, 1997,
  NULL, 'P#88 g Insert Letter E, signature: C. Rangarajan',
  '[{"signer_name": "Chakravarthi Rangarajan", "title": "Governor of the Reserve Bank of India"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203932
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#88 g Insert Letter E, signature: C. Rangarajan',
      signatures='[{"signer_name": "Chakravarthi Rangarajan", "title": "Governor of the Reserve Bank of India"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203933, 675052,
  TRUE, 2017, 2, 7,
  NULL, NULL,
  NULL, 'series 331/332',
  '[{"signer_name": "Tarek Hassan Amer", "title": "Governor, Central Bank of Egypt"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203933
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=2, day=7,
      mintage=NULL, comment='series 331/332',
      signatures='[{"signer_name": "Tarek Hassan Amer", "title": "Governor, Central Bank of Egypt"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 203999, 501576,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'P#157b',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 203999
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='P#157b',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204003, 501584,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note; Prefix: AB-AC',
  '[{"signer_name": "Merdan Annadurdyyev", "title": "Head of the Central Bank of Turkmenistan"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204003
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Prefix: AB-AC',
      signatures='[{"signer_name": "Merdan Annadurdyyev", "title": "Head of the Central Bank of Turkmenistan"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204005, 501586,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: AA, AB',
  '[{"signer_name": "Merdan Annadurdyyev", "title": "Head of the Central Bank of Turkmenistan"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204005
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: AA, AB',
      signatures='[{"signer_name": "Merdan Annadurdyyev", "title": "Head of the Central Bank of Turkmenistan"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204006, 501587,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note; Prefix: AA, AB',
  '[{"signer_name": "Merdan Annadurdyyev", "title": "Head of the Central Bank of Turkmenistan"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204006
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Prefix: AA, AB',
      signatures='[{"signer_name": "Merdan Annadurdyyev", "title": "Head of the Central Bank of Turkmenistan"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204008, 501593,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: AA-AC',
  '[{"signer_name": "Merdan Annadurdyyev", "title": "Head of the Central Bank of Turkmenistan"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204008
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: AA-AC',
      signatures='[{"signer_name": "Merdan Annadurdyyev", "title": "Head of the Central Bank of Turkmenistan"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204030, 626314,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Maha Prasad Adikari", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204030
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Maha Prasad Adikari", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204034, 625175,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Chiranjivi Nepal", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204034
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Chiranjivi Nepal", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204035, 517994,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, '6 or 7 digits on serial #',
  '[{"signer_name": "Mallam Sanusi Lamido Sanusi", "title": "Governor"}, {"signer_name": "Benjamin Chuks Onyido", "title": "Director of Currency and Branch Operations"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "40a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "236b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204035
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment='6 or 7 digits on serial #',
      signatures='[{"signer_name": "Mallam Sanusi Lamido Sanusi", "title": "Governor"}, {"signer_name": "Benjamin Chuks Onyido", "title": "Director of Currency and Branch Operations"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "40a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "236b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204043, 505986,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, 'Chinese Printer',
  '[{"signer_name": "Chiranjivi Nepal", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "80b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204043
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment='Chinese Printer',
      signatures='[{"signer_name": "Chiranjivi Nepal", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "80b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204093, 501865,
  FALSE, NULL, NULL, NULL,
  1988, 1988,
  717500000, 'P# 213b - Series: A2745 - A9919 (Stamp A)',
  '[{"signer_name": "Maí­lson Ferreira da Nóbrega", "title": "President of the National Monetary Council"}, {"signer_name": "Elmo de Araújo Camões", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C194"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "585.03"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204093
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=717500000, comment='P# 213b - Series: A2745 - A9919 (Stamp A)',
      signatures='[{"signer_name": "Maí­lson Ferreira da Nóbrega", "title": "President of the National Monetary Council"}, {"signer_name": "Elmo de Araújo Camões", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C194"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "585.03"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204094, 501867,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'P#156b',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204094
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='P#156b',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204098, 501876,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'P#154b Peruri TC 2017 (at lower left on back)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204098
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='P#154b Peruri TC 2017 (at lower left on back)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204143, 502138,
  TRUE, 1978, NULL, NULL,
  NULL, NULL,
  NULL, 'General circulation, no seal on back',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "21a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204143
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1978, month=NULL, day=NULL,
      mintage=NULL, comment='General circulation, no seal on back',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "21a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204145, 502144,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: A',
  '[{"signer_name": "Bakary Jammeh", "title": "Governor"}, {"signer_name": "Dr. Seeku Jaabi", "title": "First Deputy Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "237a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204145
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A',
      signatures='[{"signer_name": "Bakary Jammeh", "title": "Governor"}, {"signer_name": "Dr. Seeku Jaabi", "title": "First Deputy Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "237a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204150, 502157,
  TRUE, 1943, 2, 4,
  NULL, NULL,
  18000000, 'P#64a - Blue color serial',
  '[{"signer_name": "Johannes van den Broek", "title": "Finance Minister"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204150
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1943, month=2, day=4,
      mintage=18000000, comment='P#64a - Blue color serial',
      signatures='[{"signer_name": "Johannes van den Broek", "title": "Finance Minister"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204170, 502427,
  TRUE, 1993, 4, 8,
  NULL, NULL,
  NULL, 'P#71e, Sigs: Maurice Doyle & S. P. Cromien',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204170
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1993, month=4, day=8,
      mintage=NULL, comment='P#71e, Sigs: Maurice Doyle & S. P. Cromien',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204170, 502417,
  TRUE, 1989, 9, 29,
  NULL, NULL,
  NULL, 'P#71e, Sigs: Maurice Doyle & S. P. Cromien',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204170
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1989, month=9, day=29,
      mintage=NULL, comment='P#71e, Sigs: Maurice Doyle & S. P. Cromien',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204172, 502432,
  TRUE, 1949, 8, 8,
  NULL, NULL,
  NULL, 'P#73 - Series: 1/6 AA-ZZ (with two letters)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204172
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1949, month=8, day=8,
      mintage=NULL, comment='P#73 - Series: 1/6 AA-ZZ (with two letters)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204186, 502499,
  TRUE, 1997, 12, 4,
  NULL, NULL,
  NULL, 'P#76b, Sigs: Muiris S. Ó Conaill & P. Mullarkey',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204186
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=12, day=4,
      mintage=NULL, comment='P#76b, Sigs: Muiris S. Ó Conaill & P. Mullarkey',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204186, 502488,
  TRUE, 1993, 10, 18,
  NULL, NULL,
  NULL, 'P#76a, Sigs: Maurice Doyle & S. P. Cromien',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204186
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1993, month=10, day=18,
      mintage=NULL, comment='P#76a, Sigs: Maurice Doyle & S. P. Cromien',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204196, 502585,
  TRUE, 2005, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued 15 Nov 2005',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204196
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2005, month=NULL, day=NULL,
      mintage=NULL, comment='Issued 15 Nov 2005',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204198, 502614,
  TRUE, 1998, 4, 8,
  NULL, NULL,
  NULL, 'P#77b, Sigs: Muiris S. Ó Conaill & P. Mullarkey',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204198
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1998, month=4, day=8,
      mintage=NULL, comment='P#77b, Sigs: Muiris S. Ó Conaill & P. Mullarkey',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204240, 506378,
  FALSE, NULL, NULL, NULL,
  2010, 2010,
  159400000, 'Series: C0001 - C1594',
  '[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C307"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "619.06"}, {"catalogue": {"id": 931, "code": "P"}, "number": "250f"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204240
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=159400000, comment='Series: C0001 - C1594',
      signatures='[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C307"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "619.06"}, {"catalogue": {"id": 931, "code": "P"}, "number": "250f"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204253, 502982,
  TRUE, 1988, 11, 22,
  NULL, NULL,
  NULL, 'Series IE; Signatures: José Morillo Batlle / Gonzalo Córdova Galarza / Enrique Delgado',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "113d"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204253
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1988, month=11, day=22,
      mintage=NULL, comment='Series IE; Signatures: José Morillo Batlle / Gonzalo Córdova Galarza / Enrique Delgado',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "113d"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204267, 503044,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, 'Released in 2011',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204267
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment='Released in 2011',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204268, 503046,
  TRUE, 2006, NULL, NULL,
  NULL, NULL,
  NULL, 'P-47a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204268
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2006, month=NULL, day=NULL,
      mintage=NULL, comment='P-47a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204269, 503051,
  TRUE, 2007, NULL, NULL,
  NULL, NULL,
  NULL, 'P# 202a, Released in 2012 Embossed 20 in window',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204269
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=NULL, day=NULL,
      mintage=NULL, comment='P# 202a, Released in 2012 Embossed 20 in window',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204298, 503110,
  TRUE, 2008, 8, 8,
  NULL, NULL,
  NULL, 'Signature: 葉一新 (prefixes AA → AE)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "109a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204298
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2008, month=8, day=8,
      mintage=NULL, comment='Signature: 葉一新 (prefixes AA → AE)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "109a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204305, 503124,
  TRUE, 2008, 8, 8,
  NULL, NULL,
  NULL, 'Signature: 葉一新 (prefixes AA → AG)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "108a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204305
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2008, month=8, day=8,
      mintage=NULL, comment='Signature: 葉一新 (prefixes AA → AG)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "108a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204321, 537207,
  TRUE, 1979, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: A2',
  '[{"signer_name": "Erik Hoffmeyer", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "49a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204321
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1979, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A2',
      signatures='[{"signer_name": "Erik Hoffmeyer", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "49a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204321, 537217,
  TRUE, 1981, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: C1',
  '[{"signer_name": "Ole Thomasen", "title": "Governor"}, {"signer_name": "Knud Billestrup", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "49c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204321
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1981, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: C1',
      signatures='[{"signer_name": "Ole Thomasen", "title": "Governor"}, {"signer_name": "Knud Billestrup", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "49c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204324, 503178,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, 'P#54b',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204324
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment='P#54b',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204329, 503194,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, 'P-57b; Signature: Jorgovanka Tabaković',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204329
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment='P-57b; Signature: Jorgovanka Tabaković',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204331, 503207,
  TRUE, 2011, NULL, NULL,
  NULL, NULL,
  NULL, 'P#58a; Signature: Dejan Šoškić',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204331
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2011, month=NULL, day=NULL,
      mintage=NULL, comment='P#58a; Signature: Dejan Šoškić',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204347, 503270,
  TRUE, 2005, NULL, NULL,
  NULL, NULL,
  NULL, 'Serial prefix: XX## (letter-letter-number-number)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "905"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204347
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2005, month=NULL, day=NULL,
      mintage=NULL, comment='Serial prefix: XX## (letter-letter-number-number)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "905"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204358, 503308,
  TRUE, 1978, NULL, NULL,
  NULL, NULL,
  NULL, 'תשל"ח; Without small bars below serial #',
  '[{"signer_name": "David Horowitz", "title": "Chairman Advisory Council"}, {"signer_name": "Arnon Gafni", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "46a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204358
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1978, month=NULL, day=NULL,
      mintage=NULL, comment='תשל"ח; Without small bars below serial #',
      signatures='[{"signer_name": "David Horowitz", "title": "Chairman Advisory Council"}, {"signer_name": "Arnon Gafni", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "46a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204378, 503357,
  TRUE, 1991, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) F.66bis/02A33, P#151e - alphabet A.033',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204378
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1991, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) F.66bis/02A33, P#151e - alphabet A.033',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204402, 503459,
  TRUE, 1994, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) F.73/01d - P157Aa - numéros 19 000 000 - 28 999 999',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204402
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1994, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) F.73/01d - P157Aa - numéros 19 000 000 - 28 999 999',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204424, 503614,
  TRUE, 1916, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204424
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1916, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204426, 503619,
  TRUE, 1994, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) F.69ter/01c, P#154h - alphabet 279-284',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204426
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1994, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) F.69ter/01c, P#154h - alphabet 279-284',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204444, 503815,
  TRUE, 2018, 4, 12,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204444
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=4, day=12,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204450, 503829,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Umayya Salah Toukan", "title": "Minister of Finance"}, {"signer_name": "Ziad Fariz", "title": "Governor of The Central Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "34h"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B229h"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204450
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Umayya Salah Toukan", "title": "Minister of Finance"}, {"signer_name": "Ziad Fariz", "title": "Governor of The Central Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "34h"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B229h"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204465, 503872,
  FALSE, NULL, NULL, NULL,
  1988, 1988,
  80500000, 'P# 212d - Series: A7505 - A8309 (Stamp A)',
  '[{"signer_name": "Maí­lson Ferreira da Nóbrega", "title": "President of the National Monetary Council"}, {"signer_name": "Elmo de Araújo Camões", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C192"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "584.05"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204465
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=80500000, comment='P# 212d - Series: A7505 - A8309 (Stamp A)',
      signatures='[{"signer_name": "Maí­lson Ferreira da Nóbrega", "title": "President of the National Monetary Council"}, {"signer_name": "Elmo de Araújo Camões", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C192"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "584.05"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204473, 503888,
  TRUE, 2001, NULL, NULL,
  NULL, NULL,
  NULL, 'Without or very weak image of an eagle and Arabic numeral "25" in pink circle at upper left on front',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204473
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2001, month=NULL, day=NULL,
      mintage=NULL, comment='Without or very weak image of an eagle and Arabic numeral "25" in pink circle at upper left on front',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204476, 503894,
  TRUE, 1994, NULL, NULL,
  NULL, NULL,
  NULL, 'First Diacritical mark in the text of the denomination is above the first letter (from the right). Printed on white paper which fluoresces.',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "84a1"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204476
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1994, month=NULL, day=NULL,
      mintage=NULL, comment='First Diacritical mark in the text of the denomination is above the first letter (from the right). Printed on white paper which fluoresces.',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "84a1"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204479, 503901,
  FALSE, NULL, NULL, NULL,
  1947, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204479
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204487, 503916,
  FALSE, NULL, NULL, NULL,
  2013, 2013,
  NULL, 'P#118a Signature 84',
  '[{"signer_name": "Kittiratt Na-Ranong", "title": "Minister of Finance"}, {"signer_name": "Prasarn Trairatvorakul", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204487
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#118a Signature 84',
      signatures='[{"signer_name": "Kittiratt Na-Ranong", "title": "Minister of Finance"}, {"signer_name": "Prasarn Trairatvorakul", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204530, 504163,
  TRUE, 2000, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Tim Bristow", "title": "Financial and Development Secretary"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "29"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204530
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Tim Bristow", "title": "Financial and Development Secretary"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "29"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204569, 504312,
  TRUE, 2009, 9, 2,
  NULL, NULL,
  40000000, 'Series A. Signatures: Francisco de Paula Gutiérrez Gutiérrez & Roy González Rojas (000 000 001​ → 042 000 000)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "274a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204569
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=9, day=2,
      mintage=40000000, comment='Series A. Signatures: Francisco de Paula Gutiérrez Gutiérrez & Roy González Rojas (000 000 001​ → 042 000 000)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "274a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204584, 504346,
  TRUE, 1914, 10, 1,
  NULL, NULL,
  NULL, 'P#118n,o,p,q; 海上 / SHANGHAI overprint (Red, Green)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204584
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1914, month=10, day=1,
      mintage=NULL, comment='P#118n,o,p,q; 海上 / SHANGHAI overprint (Red, Green)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204591, 504365,
  TRUE, 1992, 4, 24,
  NULL, NULL,
  NULL, 'Issued 1996',
  '[{"signer_name": "Mariano Rubio Jiménez", "title": "Governor"}, {"signer_name": "Esteban Róspide Echeto", "title": "Comptroller"}, {"signer_name": "Jesús Urdiola Salvador", "title": "Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204591
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=4, day=24,
      mintage=NULL, comment='Issued 1996',
      signatures='[{"signer_name": "Mariano Rubio Jiménez", "title": "Governor"}, {"signer_name": "Esteban Róspide Echeto", "title": "Comptroller"}, {"signer_name": "Jesús Urdiola Salvador", "title": "Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204600, 504389,
  TRUE, 1942, 11, 26,
  NULL, NULL,
  NULL, '(fr) F#08/06 - P#99e alphabet 19-34',
  '[{"signer_name": "Pierre Rousseau", "title": "General Cashier"}, {"signer_name": "René Favre-Gilly", "title": "General Secretary"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204600
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1942, month=11, day=26,
      mintage=NULL, comment='(fr) F#08/06 - P#99e alphabet 19-34',
      signatures='[{"signer_name": "Pierre Rousseau", "title": "General Cashier"}, {"signer_name": "René Favre-Gilly", "title": "General Secretary"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204614, 504468,
  FALSE, NULL, NULL, NULL,
  2005, 2005,
  NULL, NULL,
  '[{"signer_name": "Tito Mboweni", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "130a"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "816"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204614
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Tito Mboweni", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "130a"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "816"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204640, 507770,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: WM - XR (7-digit serial #)',
  '[{"signer_name": "Mallam Sanusi Lamido Sanusi", "title": "Governor"}, {"signer_name": "Benjamin Chuks Onyido", "title": "Director of Currency and Branch Operations"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "38b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "234b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204640
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: WM - XR (7-digit serial #)',
      signatures='[{"signer_name": "Mallam Sanusi Lamido Sanusi", "title": "Governor"}, {"signer_name": "Benjamin Chuks Onyido", "title": "Director of Currency and Branch Operations"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "38b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "234b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204643, 504525,
  TRUE, 2014, 3, 26,
  NULL, NULL,
  NULL, 'P#210a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204643
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=3, day=26,
      mintage=NULL, comment='P#210a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204650, 504541,
  FALSE, NULL, NULL, NULL,
  2014, NULL,
  NULL, 'Hand signed signatures',
  '[{"signer_name": "Simeon Malachi Athy", "title": "Governor"}, {"signer_name": "Maki Simelum", "title": "Minister of Finance"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204650
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Hand signed signatures',
      signatures='[{"signer_name": "Simeon Malachi Athy", "title": "Governor"}, {"signer_name": "Maki Simelum", "title": "Minister of Finance"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204689, 504671,
  TRUE, 1928, 8, 15,
  NULL, NULL,
  NULL, 'P#74b. Without series letter',
  '[{"signer_name": "Carlos Vergara Cailleaux", "title": "Governor"}, {"signer_name": "Adolfo Castaño Orejón", "title": "Comptroller"}, {"signer_name": "Bonifacio Burgos Delgado", "title": "Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "74b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204689
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1928, month=8, day=15,
      mintage=NULL, comment='P#74b. Without series letter',
      signatures='[{"signer_name": "Carlos Vergara Cailleaux", "title": "Governor"}, {"signer_name": "Adolfo Castaño Orejón", "title": "Comptroller"}, {"signer_name": "Bonifacio Burgos Delgado", "title": "Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "74b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204707, 522526,
  TRUE, 1925, 7, 1,
  NULL, NULL,
  NULL, 'D2,000,001 through Series E, F, with three signatures - Republic issue (1936)',
  '[{"signer_name": "Carlos Vergara Cailleaux", "title": "Governor"}, {"signer_name": "Adolfo Castaño Orejón", "title": "Comptroller"}, {"signer_name": "Bonifacio Burgos Delgado", "title": "Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "69c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204707
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1925, month=7, day=1,
      mintage=NULL, comment='D2,000,001 through Series E, F, with three signatures - Republic issue (1936)',
      signatures='[{"signer_name": "Carlos Vergara Cailleaux", "title": "Governor"}, {"signer_name": "Adolfo Castaño Orejón", "title": "Comptroller"}, {"signer_name": "Bonifacio Burgos Delgado", "title": "Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "69c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204734, 504941,
  FALSE, NULL, NULL, NULL,
  1920, 1920,
  NULL, 'Signatures: Fried Walser, Karl Prinz Liechtenstein',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204734
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures: Fried Walser, Karl Prinz Liechtenstein',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204738, 504948,
  FALSE, NULL, NULL, NULL,
  1990, 1999,
  NULL, 'P#57b Segmented security thread with bank name repeated. Signature: (Salah Hamed), (Ismaeil Hassan)',
  '[{"signer_name": "Mahmoud Salah Eldin Hamed", "title": "Governor, Central Bank of Egypt"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204738
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#57b Segmented security thread with bank name repeated. Signature: (Salah Hamed), (Ismaeil Hassan)',
      signatures='[{"signer_name": "Mahmoud Salah Eldin Hamed", "title": "Governor, Central Bank of Egypt"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204746, 504973,
  FALSE, NULL, NULL, NULL,
  2012, 2012,
  NULL, NULL,
  '[{"signer_name": "Gill Marcus", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204746
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Gill Marcus", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204747, 504975,
  TRUE, 2005, NULL, NULL,
  NULL, NULL,
  NULL, 'Serial prefix: XX## (letter-letter-number-number)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "904a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204747
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2005, month=NULL, day=NULL,
      mintage=NULL, comment='Serial prefix: XX## (letter-letter-number-number)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "904a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204777, 733014,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "71s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204777
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "71s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204777, 505061,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "71a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204777
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "71a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204798, 505175,
  TRUE, 2004, NULL, NULL,
  NULL, NULL,
  7299999, 'B.E. ๒๕๔๗, Signature 74: Somkid Jatusripitak & Pridiyatorn Devakul',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204798
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=NULL, day=NULL,
      mintage=7299999, comment='B.E. ๒๕๔๗, Signature 74: Somkid Jatusripitak & Pridiyatorn Devakul',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204799, 505176,
  TRUE, 1930, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures : Vegh, Sandor Popovics, Bela Schober',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "98"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204799
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1930, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures : Vegh, Sandor Popovics, Bela Schober',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "98"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204838, 505268,
  FALSE, NULL, NULL, NULL,
  2005, 2005,
  NULL, 'Watermark: Mohd. H. Fahmideh (youth)',
  '[{"signer_name": "Mohsen Nourbakhsh", "title": "President"}, {"signer_name": "Hossein Namazi", "title": "Minister of Economic Affairs"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "141l"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204838
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Watermark: Mohd. H. Fahmideh (youth)',
      signatures='[{"signer_name": "Mohsen Nourbakhsh", "title": "President"}, {"signer_name": "Hossein Namazi", "title": "Minister of Economic Affairs"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "141l"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204854, 505290,
  TRUE, 2015, NULL, NULL,
  NULL, NULL,
  28467958, 'Prefix: AA-BP; Two first digits on serial: 15',
  '[{"signer_name": "Graeme Wheeler", "title": "Governor, Reserve Bank of New Zealand"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B138a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204854
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=NULL, day=NULL,
      mintage=28467958, comment='Prefix: AA-BP; Two first digits on serial: 15',
      signatures='[{"signer_name": "Graeme Wheeler", "title": "Governor, Reserve Bank of New Zealand"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B138a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204863, 566709,
  TRUE, 1999, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: A0',
  '[{"signer_name": "Torben Nielsen"}, {"signer_name": "Tage Heering", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "55a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204863
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A0',
      signatures='[{"signer_name": "Torben Nielsen"}, {"signer_name": "Tage Heering", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "55a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204866, 505355,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: DA - ...',
  '[{"signer_name": "Tolkunbek Sagynbekovich Abdygulov", "title": "President of Kyrgyz Bank"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "227a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204866
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: DA - ...',
      signatures='[{"signer_name": "Tolkunbek Sagynbekovich Abdygulov", "title": "President of Kyrgyz Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "227a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204867, 505359,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Tolkunbek Sagynbekovich Abdygulov", "title": "President of Kyrgyz Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "25b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "228a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204867
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Tolkunbek Sagynbekovich Abdygulov", "title": "President of Kyrgyz Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "25b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "228a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204868, 505361,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: CJ, CK, ...',
  '[{"signer_name": "Tolkunbek Sagynbekovich Abdygulov", "title": "President of Kyrgyz Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "26b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "229a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204868
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: CJ, CK, ...',
      signatures='[{"signer_name": "Tolkunbek Sagynbekovich Abdygulov", "title": "President of Kyrgyz Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "26b"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "229a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204875, 505374,
  TRUE, 1997, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) F.74/01 - P158a - n°1 à 39 999 999',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204875
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) F.74/01 - P158a - n°1 à 39 999 999',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204892, 505425,
  TRUE, 1997, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) F.75/04b - P159b - n°50 000 000 à 70 999 999',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204892
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) F.75/04b - P159b - n°50 000 000 à 70 999 999',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204899, 505438,
  FALSE, NULL, NULL, NULL,
  2011, 2016,
  NULL, 'P#119a.2',
  '[{"signer_name": "Kittiratt Na-Ranong", "title": "Minister of Finance"}, {"signer_name": "Prasarn Trairatvorakul", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204899
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#119a.2',
      signatures='[{"signer_name": "Kittiratt Na-Ranong", "title": "Minister of Finance"}, {"signer_name": "Prasarn Trairatvorakul", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204901, 505442,
  TRUE, 1943, 3, 2,
  NULL, NULL,
  NULL, 'P# 111a - Issued note',
  '[{"signer_name": "Hubertus Johannes van Mook", "title": "Acting Governor General"}, {"signer_name": "R.E. Smits", "title": "Director Secretary, Bank of Java"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204901
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1943, month=3, day=2,
      mintage=NULL, comment='P# 111a - Issued note',
      signatures='[{"signer_name": "Hubertus Johannes van Mook", "title": "Acting Governor General"}, {"signer_name": "R.E. Smits", "title": "Director Secretary, Bank of Java"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204942, 505556,
  TRUE, 2001, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Julian W. Francis", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "68a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204942
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2001, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Julian W. Francis", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "68a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204945, 505561,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "John A. Rolle", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "77a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204945
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "John A. Rolle", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "77a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204972, 512767,
  TRUE, 2018, 7, 24,
  NULL, NULL,
  NULL, 'Prefix: AK; BA-BC (About No. printed see comments section)',
  '[{"signer_name": "Juan José Echavarría Soto", "title": "General Manager"}, {"signer_name": "Marcela Ocampo Duque", "title": "Executive Manager"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B993d"}, {"catalogue": {"id": 347, "code": "Hernández"}, "number": "666NF"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204972
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=7, day=24,
      mintage=NULL, comment='Prefix: AK; BA-BC (About No. printed see comments section)',
      signatures='[{"signer_name": "Juan José Echavarría Soto", "title": "General Manager"}, {"signer_name": "Marcela Ocampo Duque", "title": "Executive Manager"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B993d"}, {"catalogue": {"id": 347, "code": "Hernández"}, "number": "666NF"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204995, 505909,
  TRUE, 2009, 1, 1,
  NULL, NULL,
  NULL, 'Serial prefix onion',
  '[{"signer_name": "Alan F. Richardson", "title": "Chairman, Bermuda Monetary Authority"}, {"signer_name": "E. Barclay Simmons", "title": "Director, Bermuda Monetary Authority"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "57a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204995
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=1, day=1,
      mintage=NULL, comment='Serial prefix onion',
      signatures='[{"signer_name": "Alan F. Richardson", "title": "Chairman, Bermuda Monetary Authority"}, {"signer_name": "E. Barclay Simmons", "title": "Director, Bermuda Monetary Authority"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "57a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 204995, 509026,
  TRUE, 2009, 1, 1,
  NULL, NULL,
  NULL, 'Serial prefix A/1; A/2',
  '[{"signer_name": "Alan C. Cossar", "title": "Chairman, Bermuda Monetary Authority"}, {"signer_name": "E. Barclay Simmons", "title": "Director, Bermuda Monetary Authority"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "57b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 204995
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=1, day=1,
      mintage=NULL, comment='Serial prefix A/1; A/2',
      signatures='[{"signer_name": "Alan C. Cossar", "title": "Chairman, Bermuda Monetary Authority"}, {"signer_name": "E. Barclay Simmons", "title": "Director, Bermuda Monetary Authority"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "57b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205013, 506072,
  TRUE, 2009, 9, 2,
  NULL, NULL,
  35028000, 'Series A. Signatures: Francisco de Paula Gutiérrez Gutiérrez & Roy González Rojas (000 000 001​ → 041 400 000)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "275a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205013
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=9, day=2,
      mintage=35028000, comment='Series A. Signatures: Francisco de Paula Gutiérrez Gutiérrez & Roy González Rojas (000 000 001​ → 041 400 000)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "275a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205028, 506145,
  FALSE, NULL, NULL, NULL,
  2008, 2008,
  796300000, 'Series: #B2037 - B9999',
  '[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C259"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "616.06"}, {"catalogue": {"id": 931, "code": "P"}, "number": "249e"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205028
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=796300000, comment='Series: #B2037 - B9999',
      signatures='[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C259"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "616.06"}, {"catalogue": {"id": 931, "code": "P"}, "number": "249e"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205080, 506483,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205080
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205091, 506532,
  TRUE, 2012, NULL, NULL,
  NULL, NULL,
  4200000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205091
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=NULL, day=NULL,
      mintage=4200000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205096, 506558,
  TRUE, 2007, 9, 12,
  NULL, NULL,
  NULL, 'Embossed "10" in window',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "201a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205096
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=9, day=12,
      mintage=NULL, comment='Embossed "10" in window',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "201a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205097, 506559,
  TRUE, 2014, 3, 26,
  NULL, NULL,
  NULL, 'P#209a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205097
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=3, day=26,
      mintage=NULL, comment='P#209a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205146, 506758,
  FALSE, NULL, NULL, NULL,
  1955, 1955,
  90000000, 'P# 150b - Series: #1801 - 2700',
  '[{"signer_name": "Claudionor de Souza Lemos", "title": "Director of the Amortization Fund"}, {"signer_name": "Eugênio Gudin Filho", "title": "Finance Minister"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C011"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "525.05"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205146
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=90000000, comment='P# 150b - Series: #1801 - 2700',
      signatures='[{"signer_name": "Claudionor de Souza Lemos", "title": "Director of the Amortization Fund"}, {"signer_name": "Eugênio Gudin Filho", "title": "Finance Minister"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C011"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "525.05"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205196, 511186,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  1500000, 'Replacement, Prefix Aa',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205196
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=1500000, comment='Replacement, Prefix Aa',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205201, 506872,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205201
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205202, 506873,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "102a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205202
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "102a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205208, 506880,
  TRUE, 2001, NULL, NULL,
  NULL, NULL,
  1500000, 'Prefix: AA-BJ; Signatures: Rick N. Houenipwela & George Kiriau',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "219a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205208
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2001, month=NULL, day=NULL,
      mintage=1500000, comment='Prefix: AA-BJ; Signatures: Rick N. Houenipwela & George Kiriau',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "219a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205255, 507086,
  TRUE, 2000, 1, 1,
  NULL, NULL,
  14000000, 'P# 151 - Issued note; Series AX-BM',
  '[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205255
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=1, day=1,
      mintage=14000000, comment='P# 151 - Issued note; Series AX-BM',
      signatures='[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205276, 507177,
  TRUE, 2012, 4, 1,
  NULL, NULL,
  NULL, 'Issued note; Signature Gilmore Hoefdraad',
  '[{"signer_name": "Gillmore André Hoefdraad", "title": "President of Central Bank of Suriname"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "162b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205276
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=4, day=1,
      mintage=NULL, comment='Issued note; Signature Gilmore Hoefdraad',
      signatures='[{"signer_name": "Gillmore André Hoefdraad", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "162b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205282, 507200,
  TRUE, 2015, 8, 19,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "José Darío Uribe Escobar", "title": "General Manager"}, {"signer_name": "José Tolosa Buitrago", "title": "Executive Manager"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "456t"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B986r"}, {"catalogue": {"id": 347, "code": "Hernández"}, "number": "456"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205282
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=8, day=19,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "José Darío Uribe Escobar", "title": "General Manager"}, {"signer_name": "José Tolosa Buitrago", "title": "Executive Manager"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "456t"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B986r"}, {"catalogue": {"id": 347, "code": "Hernández"}, "number": "456"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205294, 507245,
  TRUE, 1998, 2, 10,
  NULL, NULL,
  3000000, 'P# 138d - Issued note; AK000001 - AM999999.',
  '[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205294
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1998, month=2, day=10,
      mintage=3000000, comment='P# 138d - Issued note; AK000001 - AM999999.',
      signatures='[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205295, 507248,
  TRUE, 1996, 12, 1,
  NULL, NULL,
  4100000, 'P# 137b - Issued note; Series AF500001 - AJ600000',
  '[{"signer_name": "Andre Eugene Telting", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205295
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1996, month=12, day=1,
      mintage=4100000, comment='P# 137b - Issued note; Series AF500001 - AJ600000',
      signatures='[{"signer_name": "Andre Eugene Telting", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205332, 507372,
  TRUE, 2005, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: A-E; Signatures: Ahamadi Abdoulbastoi ("Le Gouverneur") & Remy Rioux ("Le Président du Conseil d''Administration")',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "17a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "308a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205332
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2005, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A-E; Signatures: Ahamadi Abdoulbastoi ("Le Gouverneur") & Remy Rioux ("Le Président du Conseil d''Administration")',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "17a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "308a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205341, 531223,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix D/4',
  '[{"signer_name": "Marco William Archer", "title": "Minister of Finance"}, {"signer_name": "Cindy Scotland", "title": "Managing Director"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "38d (1)"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205341
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix D/4',
      signatures='[{"signer_name": "Marco William Archer", "title": "Minister of Finance"}, {"signer_name": "Cindy Scotland", "title": "Managing Director"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "38d (1)"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205390, 507535,
  TRUE, 2010, 1, 1,
  NULL, NULL,
  NULL, 'P# 124a',
  '[{"signer_name": "Mahinda Rajapaksa", "title": "Finance Minister"}, {"signer_name": "Ajith Nivard Cabraal", "title": "Governor of the Central Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205390
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=1, day=1,
      mintage=NULL, comment='P# 124a',
      signatures='[{"signer_name": "Mahinda Rajapaksa", "title": "Finance Minister"}, {"signer_name": "Ajith Nivard Cabraal", "title": "Governor of the Central Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205392, 507543,
  TRUE, 2010, 1, 1,
  NULL, NULL,
  NULL, 'P# 125a',
  '[{"signer_name": "Mahinda Rajapaksa", "title": "Finance Minister"}, {"signer_name": "Ajith Nivard Cabraal", "title": "Governor of the Central Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205392
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=1, day=1,
      mintage=NULL, comment='P# 125a',
      signatures='[{"signer_name": "Mahinda Rajapaksa", "title": "Finance Minister"}, {"signer_name": "Ajith Nivard Cabraal", "title": "Governor of the Central Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205405, 507577,
  FALSE, NULL, NULL, NULL,
  2014, NULL,
  NULL, 'Series: CF/01 - CF/120',
  '[{"signer_name": "Mohammed Yousef Al-Hashel", "title": "Governor"}, {"signer_name": "Anas Khalid Al Saleh", "title": "Finance Minister"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "31a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "231a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205405
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series: CF/01 - CF/120',
      signatures='[{"signer_name": "Mohammed Yousef Al-Hashel", "title": "Governor"}, {"signer_name": "Anas Khalid Al Saleh", "title": "Finance Minister"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "31a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "231a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205407, 507582,
  TRUE, 1940, 6, 15,
  NULL, NULL,
  NULL, 'P# 108a, Serial and Prefix letters',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205407
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1940, month=6, day=15,
      mintage=NULL, comment='P# 108a, Serial and Prefix letters',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205413, 507594,
  TRUE, 2007, 9, 25,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "69s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205413
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=9, day=25,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "69s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205413, 507593,
  TRUE, 2007, 9, 25,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "69a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205413
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=9, day=25,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "69a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205417, 507599,
  TRUE, 2007, NULL, NULL,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "70s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205417
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=NULL, day=NULL,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "70s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205417, 507598,
  TRUE, 2007, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "70a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205417
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "70a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205424, 912546,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "74s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205424
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "74s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205424, 948837,
  TRUE, 2024, 8, 27,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Óscar Humberto Évora Santos", "title": "Governor"}, {"signer_name": "Antônia Lopes", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "225"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205424
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=8, day=27,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Óscar Humberto Évora Santos", "title": "Governor"}, {"signer_name": "Antônia Lopes", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "225"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205424, 507609,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "74a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "220"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205424
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "74a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "220"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205484, 507752,
  TRUE, 1953, 4, 7,
  NULL, NULL,
  981000000, 'Issued note. Serial format: Letter / 7 digits',
  '[{"signer_name": "Joaquín Benjumea y Burín", "title": "Governor"}, {"signer_name": "Antonio Victoriano Martín Martín", "title": "Comptroller"}, {"signer_name": "Joaquín Serrano García", "title": "Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "145a.2"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205484
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1953, month=4, day=7,
      mintage=981000000, comment='Issued note. Serial format: Letter / 7 digits',
      signatures='[{"signer_name": "Joaquín Benjumea y Burín", "title": "Governor"}, {"signer_name": "Antonio Victoriano Martín Martín", "title": "Comptroller"}, {"signer_name": "Joaquín Serrano García", "title": "Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "145a.2"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205589, 565681,
  TRUE, 1985, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: C8',
  '[{"signer_name": "Richard Mikkelsen", "title": "Governor"}, {"signer_name": "Knud Billestrup", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "51m"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205589
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1985, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: C8',
      signatures='[{"signer_name": "Richard Mikkelsen", "title": "Governor"}, {"signer_name": "Knud Billestrup", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "51m"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205596, 508510,
  TRUE, 1993, NULL, NULL,
  NULL, NULL,
  NULL, 'תשנ״ג; With small double circle with dot in watermark area',
  '[{"signer_name": "Shlomo Lorincz", "title": "Chairman of the Advisory Committee"}, {"signer_name": "Yaakov A. Frenkel", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "54c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205596
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1993, month=NULL, day=NULL,
      mintage=NULL, comment='תשנ״ג; With small double circle with dot in watermark area',
      signatures='[{"signer_name": "Shlomo Lorincz", "title": "Chairman of the Advisory Committee"}, {"signer_name": "Yaakov A. Frenkel", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "54c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205642, 508745,
  FALSE, NULL, NULL, NULL,
  1983, 1983,
  NULL, 'P#38a - Signature: W. Dawson',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205642
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#38a - Signature: W. Dawson',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205672, 508906,
  TRUE, 2018, 7, 4,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Jean Gaspard Ciza", "title": "Governor"}, {"signer_name": "Sendazirasa Annonciate", "title": "2nd Vice Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "236b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205672
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=7, day=4,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Jean Gaspard Ciza", "title": "Governor"}, {"signer_name": "Sendazirasa Annonciate", "title": "2nd Vice Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "236b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205679, 508935,
  TRUE, 2015, 1, 15,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Jean Gaspard Ciza", "title": "Governor"}, {"signer_name": "Aimee Laurentine Kanyana", "title": "2nd Vice Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205679
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=1, day=15,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Jean Gaspard Ciza", "title": "Governor"}, {"signer_name": "Aimee Laurentine Kanyana", "title": "2nd Vice Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205700, 738488,
  TRUE, 1971, 7, 23,
  NULL, NULL,
  NULL, 'Prefix: 1 digit&1 letter, Serial: 7 digit',
  '[{"signer_name": "Luis Coronel de Palma", "title": "Governor"}, {"signer_name": "José Gallego Adrados", "title": "Comptroller"}, {"signer_name": "José Luis Artigas Cía", "title": "Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "153a.3"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205700
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1971, month=7, day=23,
      mintage=NULL, comment='Prefix: 1 digit&1 letter, Serial: 7 digit',
      signatures='[{"signer_name": "Luis Coronel de Palma", "title": "Governor"}, {"signer_name": "José Gallego Adrados", "title": "Comptroller"}, {"signer_name": "José Luis Artigas Cía", "title": "Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "153a.3"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205730, 567487,
  TRUE, 2004, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: B9',
  '[{"signer_name": "Jens Thomsen", "title": "Governor"}, {"signer_name": "Tage Heering", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "61c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205730
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: B9',
      signatures='[{"signer_name": "Jens Thomsen", "title": "Governor"}, {"signer_name": "Tage Heering", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "61c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205791, 509240,
  TRUE, 1944, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "33aa"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205791
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1944, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "33aa"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205791, 509242,
  TRUE, 1946, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "33ac"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205791
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1946, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "33ac"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205825, 509448,
  TRUE, 1978, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: A4',
  '[{"signer_name": "Frede Sunesen", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "50c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205825
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1978, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A4',
      signatures='[{"signer_name": "Frede Sunesen", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "50c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205860, 509613,
  TRUE, 2004, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) P#54b',
  '[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tieng Seng", "title": "General Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "54b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205860
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) P#54b',
      signatures='[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tieng Seng", "title": "General Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "54b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205902, 509786,
  FALSE, NULL, NULL, NULL,
  2017, 2017,
  NULL, 'a1 - Series A, B',
  '[{"signer_name": "Federico Adolfo Sturzenegger", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Marta Gabriela Michetti", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, '[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "5001"}, {"catalogue": {"id": 1841, "code": "Bottero"}, "number": "5002"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205902
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='a1 - Series A, B',
      signatures='[{"signer_name": "Federico Adolfo Sturzenegger", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Marta Gabriela Michetti", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, issue_references='[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "5001"}, {"catalogue": {"id": 1841, "code": "Bottero"}, "number": "5002"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205903, 509787,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'P#66c',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205903
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='P#66c',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 205953, 510101,
  FALSE, NULL, NULL, NULL,
  1980, 1989,
  7000000, 'P#48a, Bull',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 205953
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=7000000, comment='P#48a, Bull',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206006, 510364,
  TRUE, 2016, 8, 2,
  NULL, NULL,
  NULL, 'About No. printed see comments section',
  '[{"signer_name": "José Darío Uribe Escobar", "title": "General Manager"}, {"signer_name": "José Tolosa Buitrago", "title": "Executive Manager"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B995b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206006
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=8, day=2,
      mintage=NULL, comment='About No. printed see comments section',
      signatures='[{"signer_name": "José Darío Uribe Escobar", "title": "General Manager"}, {"signer_name": "José Tolosa Buitrago", "title": "Executive Manager"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B995b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206019, 510577,
  FALSE, NULL, NULL, NULL,
  2008, NULL,
  NULL, NULL,
  '[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Yousef Hussein Kamal", "title": "Minister of Finance"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206019
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Yousef Hussein Kamal", "title": "Minister of Finance"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206020, 510578,
  FALSE, NULL, NULL, NULL,
  2008, 2008,
  NULL, NULL,
  '[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Yousef Hussein Kamal", "title": "Minister of Finance"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206020
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Yousef Hussein Kamal", "title": "Minister of Finance"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206098, 521681,
  FALSE, NULL, NULL, NULL,
  1991, 1991,
  165700000, 'P# 231b - Series: A6797 - A8453 (Stamp A); "MINISTRO DA ECONOMIA"',
  '[{"signer_name": "Marcí­lio Marques Moreira", "title": "Minister for Economy, Finance and Planning"}, {"signer_name": "Francisco Roberto André Gros", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C218"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "602.03"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206098
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=165700000, comment='P# 231b - Series: A6797 - A8453 (Stamp A); "MINISTRO DA ECONOMIA"',
      signatures='[{"signer_name": "Marcí­lio Marques Moreira", "title": "Minister for Economy, Finance and Planning"}, {"signer_name": "Francisco Roberto André Gros", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C218"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "602.03"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206099, 511103,
  FALSE, NULL, NULL, NULL,
  1992, 1992,
  101200000, 'P#232b - Series: A4490 - A5501 (Stamp A)',
  '[{"signer_name": "Marcí­lio Marques Moreira", "title": "Minister for Economy, Finance and Planning"}, {"signer_name": "Francisco Roberto André Gros", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C220"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "603.03"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206099
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=101200000, comment='P#232b - Series: A4490 - A5501 (Stamp A)',
      signatures='[{"signer_name": "Marcí­lio Marques Moreira", "title": "Minister for Economy, Finance and Planning"}, {"signer_name": "Francisco Roberto André Gros", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C220"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "603.03"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206100, 511108,
  FALSE, NULL, NULL, NULL,
  1993, 1993,
  42800000, 'P# 233c - Series: A6938 - A7365 (Stamp A); "Ministro da Fazenda" (see comments)',
  '[{"signer_name": "Paulo Roberto Haddad", "title": "Finance Minister"}, {"signer_name": "Gustavo Jorge Laboissière Loyola", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C225"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "604.04"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206100
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=42800000, comment='P# 233c - Series: A6938 - A7365 (Stamp A); "Ministro da Fazenda" (see comments)',
      signatures='[{"signer_name": "Paulo Roberto Haddad", "title": "Finance Minister"}, {"signer_name": "Gustavo Jorge Laboissière Loyola", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C225"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "604.04"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206137, 511181,
  TRUE, 2005, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note; Prefix: D/1 till D/9',
  '[{"signer_name": "Qaboos bin Said", "title": "Sultan of Oman"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "43a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206137
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2005, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Prefix: D/1 till D/9',
      signatures='[{"signer_name": "Qaboos bin Said", "title": "Sultan of Oman"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "43a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206153, 511207,
  FALSE, NULL, NULL, NULL,
  1966, 1966,
  9600000, 'P# 183a - Series: #3056 - 3151; With error "MINSTRO"',
  '[{"signer_name": "Dênio Chagas Nogueira", "title": "President of the Central Bank of Brazil"}, {"signer_name": "Otávio Gouveia de Bulhões", "title": "Finance Minister"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C113"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "550.01"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206153
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=9600000, comment='P# 183a - Series: #3056 - 3151; With error "MINSTRO"',
      signatures='[{"signer_name": "Dênio Chagas Nogueira", "title": "President of the Central Bank of Brazil"}, {"signer_name": "Otávio Gouveia de Bulhões", "title": "Finance Minister"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C113"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "550.01"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206177, 511281,
  FALSE, NULL, NULL, NULL,
  1954, 1954,
  30000000, 'P# 158b - Series: #1001 - 1300',
  '[{"signer_name": "Claudionor de Souza Lemos", "title": "Director of the Amortization Fund"}, {"signer_name": "Osvaldo Euclides de Sousa Aranha", "title": "Finance Minister"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C067"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "538.05"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206177
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=30000000, comment='P# 158b - Series: #1001 - 1300',
      signatures='[{"signer_name": "Claudionor de Souza Lemos", "title": "Director of the Amortization Fund"}, {"signer_name": "Osvaldo Euclides de Sousa Aranha", "title": "Finance Minister"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C067"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "538.05"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206197, 511313,
  TRUE, 1953, NULL, NULL,
  NULL, NULL,
  NULL, 'P#80b - Other series prefixes.',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206197
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1953, month=NULL, day=NULL,
      mintage=NULL, comment='P#80b - Other series prefixes.',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206217, 511340,
  TRUE, 1988, NULL, NULL,
  NULL, NULL,
  NULL, 'Serial number prefix: E',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "95a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206217
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1988, month=NULL, day=NULL,
      mintage=NULL, comment='Serial number prefix: E',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "95a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206220, 511345,
  TRUE, 1943, 7, 19,
  NULL, NULL,
  NULL, 'P#122a(1): serial number with prefix letters',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206220
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1943, month=7, day=19,
      mintage=NULL, comment='P#122a(1): serial number with prefix letters',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206239, 511384,
  TRUE, 1922, 1, 2,
  NULL, NULL,
  NULL, 'KK# 169.a; issued note',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206239
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=1, day=2,
      mintage=NULL, comment='KK# 169.a; issued note',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206248, 522061,
  TRUE, 2004, 7, 1,
  NULL, NULL,
  NULL, 'P#111c',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206248
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=7, day=1,
      mintage=NULL, comment='P#111c',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206250, 511397,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Mohamed Awad Bin Humam", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "131a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206250
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Mohamed Awad Bin Humam", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "131a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206266, 511422,
  FALSE, NULL, NULL, NULL,
  2015, 2015,
  NULL, NULL,
  '[{"signer_name": "Alejandro Vanoli", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Amadou Boudou", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206266
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Alejandro Vanoli", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Amadou Boudou", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206378, 511673,
  FALSE, NULL, NULL, NULL,
  1949, 1949,
  NULL, 'Medium-thick lettering in overprint',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "117b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206378
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Medium-thick lettering in overprint',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "117b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206382, 581855,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, 'Series IV; Prefix D - Issued: 2020.03.02',
  '[{"signer_name": "Murat Uysal", "title": "Governor"}, {"signer_name": "Uğur Namık Küçük", "title": "Vice-Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "306c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206382
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment='Series IV; Prefix D - Issued: 2020.03.02',
      signatures='[{"signer_name": "Murat Uysal", "title": "Governor"}, {"signer_name": "Uğur Namık Küçük", "title": "Vice-Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "306c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206382, 721971,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, 'Series VI; Prefix F - Issued: 2022.03.28',
  '[{"signer_name": "Şahap Kavcıoğlu", "title": "Governor"}, {"signer_name": "Taha Çakmak", "title": "Vice-Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "306e"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206382
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment='Series VI; Prefix F - Issued: 2022.03.28',
      signatures='[{"signer_name": "Şahap Kavcıoğlu", "title": "Governor"}, {"signer_name": "Taha Çakmak", "title": "Vice-Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "306e"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206385, 649135,
  FALSE, NULL, NULL, NULL,
  2020, 2020,
  NULL, 'Series IV; Prefix D',
  '[{"signer_name": "Murat Uysal", "title": "Governor"}, {"signer_name": "Emrah Şener", "title": "Vice-Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "301d"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206385
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series IV; Prefix D',
      signatures='[{"signer_name": "Murat Uysal", "title": "Governor"}, {"signer_name": "Emrah Şener", "title": "Vice-Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "301d"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206385, 725283,
  FALSE, NULL, NULL, NULL,
  2022, 2022,
  NULL, 'Series VI; Prefix F',
  '[{"signer_name": "Şahap Kavcıoğlu", "title": "Governor"}, {"signer_name": "Mustafa Duman", "title": "Vice-Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "301f"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206385
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series VI; Prefix F',
      signatures='[{"signer_name": "Şahap Kavcıoğlu", "title": "Governor"}, {"signer_name": "Mustafa Duman", "title": "Vice-Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "301f"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206387, 579976,
  FALSE, NULL, NULL, NULL,
  2020, 2020,
  NULL, 'Series IV; Prefix E',
  '[{"signer_name": "Murat Uysal", "title": "Governor"}, {"signer_name": "Oğuzhan Özbaş", "title": "Vice-Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "302d"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206387
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series IV; Prefix E',
      signatures='[{"signer_name": "Murat Uysal", "title": "Governor"}, {"signer_name": "Oğuzhan Özbaş", "title": "Vice-Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "302d"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206387, 711347,
  FALSE, NULL, NULL, NULL,
  2022, 2022,
  NULL, 'Series VI; Prefix G',
  '[{"signer_name": "Şahap Kavcıoğlu", "title": "Governor"}, {"signer_name": "Emrah Şener", "title": "Vice-Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "302f"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206387
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series VI; Prefix G',
      signatures='[{"signer_name": "Şahap Kavcıoğlu", "title": "Governor"}, {"signer_name": "Emrah Şener", "title": "Vice-Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "302f"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206390, 923541,
  FALSE, NULL, NULL, NULL,
  2024, 2024,
  NULL, 'Series VIII; Prefix G',
  '[{"signer_name": "Fatih Karahan", "title": "Governor"}, {"signer_name": "Osman Cevdet Akçay", "title": "Vice-Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "303g"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206390
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series VIII; Prefix G',
      signatures='[{"signer_name": "Fatih Karahan", "title": "Governor"}, {"signer_name": "Osman Cevdet Akçay", "title": "Vice-Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "303g"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206391, 517087,
  FALSE, NULL, NULL, NULL,
  2005, 2009,
  NULL, NULL,
  '[{"signer_name": "Tito Mboweni", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "128a"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "615"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206391
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Tito Mboweni", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "128a"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "615"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206392, 725284,
  FALSE, NULL, NULL, NULL,
  2022, 2022,
  NULL, 'Series V; Series G',
  '[{"signer_name": "Şahap Kavcıoğlu", "title": "Governor"}, {"signer_name": "Mustafa Duman", "title": "Vice-Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "304e"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206392
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series V; Series G',
      signatures='[{"signer_name": "Şahap Kavcıoğlu", "title": "Governor"}, {"signer_name": "Mustafa Duman", "title": "Vice-Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "304e"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206511, 514956,
  TRUE, 1986, NULL, NULL,
  NULL, NULL,
  NULL, 'Serial number prefix: P',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "94b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206511
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1986, month=NULL, day=NULL,
      mintage=NULL, comment='Serial number prefix: P',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "94b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206523, 528799,
  FALSE, NULL, NULL, NULL,
  2004, 2004,
  NULL, 'Watermark: Khomeini',
  '[{"signer_name": "Ebrahim Sheibani", "title": "President"}, {"signer_name": "Safdar Hosseini \"large\"", "title": "Minister of Economic Affairs"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "136e"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206523
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Watermark: Khomeini',
      signatures='[{"signer_name": "Ebrahim Sheibani", "title": "President"}, {"signer_name": "Safdar Hosseini \"large\"", "title": "Minister of Economic Affairs"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "136e"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206525, 512198,
  TRUE, 1987, NULL, NULL,
  NULL, NULL,
  NULL, 'Series prefix: F.',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "96a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206525
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1987, month=NULL, day=NULL,
      mintage=NULL, comment='Series prefix: F.',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "96a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206535, 541534,
  TRUE, 1997, 4, 17,
  NULL, NULL,
  10000000, 'Signatures: Antônio José Fernandes de Sousa & Bernardino da Costa Pereira',
  '[{"signer_name": "António José Fernandes de Sousa", "title": "Governor"}, {"signer_name": "Bernardino Manuel da Costa Pereira", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "P187a"}, {"catalogue": {"id": 2461, "code": "Silva"}, "number": "139"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206535
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=4, day=17,
      mintage=10000000, comment='Signatures: Antônio José Fernandes de Sousa & Bernardino da Costa Pereira',
      signatures='[{"signer_name": "António José Fernandes de Sousa", "title": "Governor"}, {"signer_name": "Bernardino Manuel da Costa Pereira", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "P187a"}, {"catalogue": {"id": 2461, "code": "Silva"}, "number": "139"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206562, 862879,
  FALSE, NULL, NULL, NULL,
  2024, 2024,
  NULL, 'Series VIII; Prefix H',
  '[{"signer_name": "Fatih Karahan", "title": "Governor"}, {"signer_name": "Osman Cevdet Akçay", "title": "Vice-Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "305g"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206562
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series VIII; Prefix H',
      signatures='[{"signer_name": "Fatih Karahan", "title": "Governor"}, {"signer_name": "Osman Cevdet Akçay", "title": "Vice-Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "305g"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206599, 512827,
  TRUE, 1997, 11, 1,
  NULL, NULL,
  NULL, 'Issued note; Prefix: B / Suffix: A-R',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "81a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206599
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=11, day=1,
      mintage=NULL, comment='Issued note; Prefix: B / Suffix: A-R',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "81a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206600, 512829,
  TRUE, 1997, 11, 1,
  NULL, NULL,
  NULL, 'Issued note; Prefix: C / Suffix: A-T',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "82a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206600
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=11, day=1,
      mintage=NULL, comment='Issued note; Prefix: C / Suffix: A-T',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "82a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206601, 512831,
  TRUE, 1997, 11, 1,
  NULL, NULL,
  NULL, 'Issued note; Prefix: D / Suffix: A-U',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "83a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206601
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=11, day=1,
      mintage=NULL, comment='Issued note; Prefix: D / Suffix: A-U',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "83a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206614, 512876,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: AC, AD',
  '[{"signer_name": "Ontefetse Kenneth Matambo", "title": "Minister of Finance"}, {"signer_name": "Linah Kelebogile Mohohlo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "30d"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "124d"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206614
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: AC, AD',
      signatures='[{"signer_name": "Ontefetse Kenneth Matambo", "title": "Minister of Finance"}, {"signer_name": "Linah Kelebogile Mohohlo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "30d"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "124d"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206691, 513119,
  FALSE, NULL, NULL, NULL,
  2015, 2015,
  NULL, 'Series A, B',
  '[{"signer_name": "Alejandro Vanoli", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Julián Dominguez", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206691
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series A, B',
      signatures='[{"signer_name": "Alejandro Vanoli", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Julián Dominguez", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206693, 585255,
  FALSE, NULL, NULL, NULL,
  2018, 2020,
  NULL, 'a2 Series A, B',
  '[{"signer_name": "Guido Martí­n Sandleris", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Emilio Monzo", "title": "President of the Honourable Chamber of Deputies"}]'::jsonb, '[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "5203-5206"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206693
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='a2 Series A, B',
      signatures='[{"signer_name": "Guido Martí­n Sandleris", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Emilio Monzo", "title": "President of the Honourable Chamber of Deputies"}]'::jsonb, issue_references='[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "5203-5206"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206729, 513211,
  FALSE, NULL, NULL, NULL,
  2015, 2015,
  NULL, 'b.3 Series P, Q, R, S, T, U, V, W, X, Y, Z',
  '[{"signer_name": "Alejandro Vanoli", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Amadou Boudou", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206729
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='b.3 Series P, Q, R, S, T, U, V, W, X, Y, Z',
      signatures='[{"signer_name": "Alejandro Vanoli", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Amadou Boudou", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206732, 513217,
  FALSE, NULL, NULL, NULL,
  2018, 2019,
  NULL, 'Series A, B',
  '[{"signer_name": "Guido Martí­n Sandleris", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Marta Gabriela Michetti", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, '[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "5401-5403"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206732
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series A, B',
      signatures='[{"signer_name": "Guido Martí­n Sandleris", "title": "President of the Central Bank of Argentina"}, {"signer_name": "Marta Gabriela Michetti", "title": "President of the Honourable Chamber of Senators"}]'::jsonb, issue_references='[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "5401-5403"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206765, 513272,
  FALSE, NULL, NULL, NULL,
  1919, 1919,
  NULL, 'KK#135.a; 2 January 1915; deep print, red stamp',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206765
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='KK#135.a; 2 January 1915; deep print, red stamp',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206766, 513273,
  FALSE, NULL, NULL, NULL,
  1919, 1919,
  NULL, 'KK#153.a; Red overprint above arms',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206766
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='KK#153.a; Red overprint above arms',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206831, 525028,
  TRUE, 1995, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: F1',
  '[{"signer_name": "Ole Thomasen", "title": "Governor"}, {"signer_name": "Erik Herly", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "54b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206831
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1995, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: F1',
      signatures='[{"signer_name": "Ole Thomasen", "title": "Governor"}, {"signer_name": "Erik Herly", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "54b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206836, 513466,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, '67a issued note',
  '[{"signer_name": "Tha Yao", "title": "General Cashier"}, {"signer_name": "Chea Chanto", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206836
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment='67a issued note',
      signatures='[{"signer_name": "Tha Yao", "title": "General Cashier"}, {"signer_name": "Chea Chanto", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206844, 517103,
  TRUE, 2016, 1, 1,
  NULL, NULL,
  NULL, 'Issued note (٢٠١٦); Prefix: K01 - K22; Holographic security thread: alternating lines',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "90c"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "541a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206844
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=1, day=1,
      mintage=NULL, comment='Issued note (٢٠١٦); Prefix: K01 - K22; Holographic security thread: alternating lines',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "90c"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "541a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206849, 513549,
  TRUE, 2011, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Dan Michael Knudsen", "title": "High Commissioner"}, {"signer_name": "Aksel V. Johannesen", "title": "Finance minister"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206849
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2011, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Dan Michael Knudsen", "title": "High Commissioner"}, {"signer_name": "Aksel V. Johannesen", "title": "Finance minister"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206851, 513551,
  TRUE, 2012, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Dan Michael Knudsen", "title": "High Commissioner"}, {"signer_name": "Aksel V. Johannesen", "title": "Finance minister"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206851
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Dan Michael Knudsen", "title": "High Commissioner"}, {"signer_name": "Aksel V. Johannesen", "title": "Finance minister"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206860, 513576,
  TRUE, 1921, 9, 30,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206860
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=30,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 206948, 513830,
  TRUE, 1922, 1, 2,
  NULL, NULL,
  NULL, 'KK# 170a; no watermark; light blue paper; up to serial number 2999',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 206948
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=1, day=2,
      mintage=NULL, comment='KK# 170a; no watermark; light blue paper; up to serial number 2999',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207001, 514185,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207001
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207005, 514217,
  TRUE, 2015, NULL, NULL,
  NULL, NULL,
  10000000, 'P# 275b. Series: KC (Krim-Sevastopol).',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207005
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=NULL, day=NULL,
      mintage=10000000, comment='P# 275b. Series: KC (Krim-Sevastopol).',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207046, 514337,
  TRUE, 2008, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Khalifa bin Salman Al Khalifa", "title": "Prime Minister"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207046
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2008, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Khalifa bin Salman Al Khalifa", "title": "Prime Minister"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207055, 514348,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  NULL, 'Signature: Koba Gvenetadze',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207055
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=NULL, comment='Signature: Koba Gvenetadze',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207290, 514968,
  FALSE, NULL, NULL, NULL,
  1948, NULL,
  NULL, 'gray paper',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "61a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207290
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='gray paper',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "61a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207305, 515051,
  TRUE, 1942, NULL, NULL,
  NULL, NULL,
  NULL, 'P# 8s; Specimen, perforated NEPLATNÉ or SPECIMEN',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207305
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1942, month=NULL, day=NULL,
      mintage=NULL, comment='P# 8s; Specimen, perforated NEPLATNÉ or SPECIMEN',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207309, 536698,
  TRUE, 1977, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: B4',
  '[{"signer_name": "Erik Hoffmeyer", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "48g"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207309
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1977, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: B4',
      signatures='[{"signer_name": "Erik Hoffmeyer", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "48g"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207309, 536692,
  TRUE, 1977, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: B7',
  '[{"signer_name": "Svend Andersen", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "48g"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207309
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1977, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: B7',
      signatures='[{"signer_name": "Svend Andersen", "title": "Governor"}, {"signer_name": "Henrik Valeur", "title": "Head of the banknote department"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "48g"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207328, 515138,
  TRUE, 1989, NULL, NULL,
  NULL, NULL,
  NULL, 'Series A01-A56.',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207328
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1989, month=NULL, day=NULL,
      mintage=NULL, comment='Series A01-A56.',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207355, 515194,
  TRUE, 2007, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "59a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207355
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "59a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207395, 515329,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, 'P#62- Signature: Dr. Atiur Rahman',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207395
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment='P#62- Signature: Dr. Atiur Rahman',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207401, 517124,
  FALSE, NULL, NULL, NULL,
  2010, 2015,
  NULL, 'Prefix: AA-DD.',
  '[{"signer_name": "Mustafa Haidi Mkulo", "title": "FInance Minister"}, {"signer_name": "Benno Ndulu", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "42a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B141a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207401
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: AA-DD.',
      signatures='[{"signer_name": "Mustafa Haidi Mkulo", "title": "FInance Minister"}, {"signer_name": "Benno Ndulu", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "42a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B141a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207549, 515735,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, 'Series F, G',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "24b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207549
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment='Series F, G',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "24b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207666, 516655,
  TRUE, 1994, NULL, NULL,
  NULL, NULL,
  NULL, 'Series: AE/1 - AE/63',
  '[{"signer_name": "Salem Abdul Aziz Sa''ud al-Sabah", "title": "Governor"}, {"signer_name": "Nasser Abdullah al-Rodhan", "title": "Finance Minister"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "23a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B223a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207666
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1994, month=NULL, day=NULL,
      mintage=NULL, comment='Series: AE/1 - AE/63',
      signatures='[{"signer_name": "Salem Abdul Aziz Sa''ud al-Sabah", "title": "Governor"}, {"signer_name": "Nasser Abdullah al-Rodhan", "title": "Finance Minister"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "23a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B223a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207669, 516665,
  TRUE, 1942, 3, 10,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207669
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1942, month=3, day=10,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207672, 516670,
  TRUE, 1942, 3, 10,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207672
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1942, month=3, day=10,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207677, 544590,
  FALSE, NULL, NULL, NULL,
  1918, 1919,
  NULL, 'Odessa issue with Block letters "AO". Block # prefix letters until AO 209',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "6a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207677
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Odessa issue with Block letters "AO". Block # prefix letters until AO 209',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "6a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207677, 544591,
  FALSE, NULL, NULL, NULL,
  1919, 1919,
  NULL, 'Odessa issue with Block letters "AO". Block # prefix letter from AO 210 to AO 235, but issued by General Denikin and labeled as false by the Government.',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "6b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207677
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Odessa issue with Block letters "AO". Block # prefix letter from AO 210 to AO 235, but issued by General Denikin and labeled as false by the Government.',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "6b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207689, 516820,
  FALSE, NULL, NULL, NULL,
  1981, 1981,
  34000000, '(fr) P#119b - Signature 6 : G. P. C. de Kock. Numéro de série fractionné. Sans fil de sécurité',
  '[{"signer_name": "Gerhardus Petrus Christiaan de Kock", "title": "Governor President"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "119b"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "451"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207689
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=34000000, comment='(fr) P#119b - Signature 6 : G. P. C. de Kock. Numéro de série fractionné. Sans fil de sécurité',
      signatures='[{"signer_name": "Gerhardus Petrus Christiaan de Kock", "title": "Governor President"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "119b"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "451"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207733, 762421,
  TRUE, 2003, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Joseph Oladele Sanusi", "title": "Governor"}, {"signer_name": "Patrick Anene", "title": "Director of Domestic Operations"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "29b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207733
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2003, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Joseph Oladele Sanusi", "title": "Governor"}, {"signer_name": "Patrick Anene", "title": "Director of Domestic Operations"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "29b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207734, 525666,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Godwin Ifeanyi Emefiele", "title": "Governor"}, {"signer_name": "Priscilla Ekwueme Elege", "title": "Director of Domestic Operations"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "238b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207734
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Godwin Ifeanyi Emefiele", "title": "Governor"}, {"signer_name": "Priscilla Ekwueme Elege", "title": "Director of Domestic Operations"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "238b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207734, 517047,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Godwin Ifeanyi Emefiele", "title": "Governor"}, {"signer_name": "Olufemi Fabamwo", "title": "Director of Domestic Operations"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "238a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207734
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Godwin Ifeanyi Emefiele", "title": "Governor"}, {"signer_name": "Olufemi Fabamwo", "title": "Director of Domestic Operations"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "238a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207739, 517960,
  TRUE, 1938, NULL, NULL,
  NULL, NULL,
  20000000, 'Series A-B',
  '[{"signer_name": "Antonio Sacristán Colás", "title": "General Director of the Treasury, Banking and Savings"}, {"signer_name": "Adolfo Sixto Hontán", "title": "General Comptroller of the State Administration"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207739
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1938, month=NULL, day=NULL,
      mintage=20000000, comment='Series A-B',
      signatures='[{"signer_name": "Antonio Sacristán Colás", "title": "General Director of the Treasury, Banking and Savings"}, {"signer_name": "Adolfo Sixto Hontán", "title": "General Comptroller of the State Administration"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207745, 517107,
  TRUE, 1985, NULL, NULL,
  NULL, NULL,
  NULL, 'תשמ"ה',
  '[{"signer_name": "Avraham Yosef Shapira", "title": "Chairman of the Advisory Committee"}, {"signer_name": "Moshe Mandelbaum", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "52a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207745
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1985, month=NULL, day=NULL,
      mintage=NULL, comment='תשמ"ה',
      signatures='[{"signer_name": "Avraham Yosef Shapira", "title": "Chairman of the Advisory Committee"}, {"signer_name": "Moshe Mandelbaum", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "52a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207820, 518113,
  FALSE, NULL, NULL, NULL,
  2004, 2004,
  NULL, NULL,
  '[{"signer_name": "Farhat O. Bengdara", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "70b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207820
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Farhat O. Bengdara", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "70b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207855, 532924,
  FALSE, NULL, NULL, NULL,
  2011, 2011,
  NULL, 'Issued note; Prefix: CQ-CU; Intro: 5.12.2011',
  '[{"signer_name": "Barry Whiteside", "title": "Acting Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "110b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207855
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Prefix: CQ-CU; Intro: 5.12.2011',
      signatures='[{"signer_name": "Barry Whiteside", "title": "Acting Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "110b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207883, 517474,
  TRUE, 1914, 10, 1,
  NULL, NULL,
  NULL, 'P#117n dark brown, SHANGHAI overprint in black',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207883
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1914, month=10, day=1,
      mintage=NULL, comment='P#117n dark brown, SHANGHAI overprint in black',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207929, 517552,
  TRUE, 2008, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: A-Z, AA-CJ',
  '[{"signer_name": "Dr. Shamshad Akhtar", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "53a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207929
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2008, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A-Z, AA-CJ',
      signatures='[{"signer_name": "Dr. Shamshad Akhtar", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "53a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207929, 519142,
  TRUE, 2010, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: FH-FN',
  '[{"signer_name": "Syed Saleem Raza", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "53c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207929
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: FH-FN',
      signatures='[{"signer_name": "Syed Saleem Raza", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "53c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207947, 517612,
  TRUE, 1931, 4, 25,
  NULL, NULL,
  2000000, NULL,
  '[{"signer_name": "Julio Carabias Salcedo", "title": "Governor"}, {"signer_name": "Adolfo Castaño Orejón", "title": "Comptroller"}, {"signer_name": "Bonifacio Burgos Delgado", "title": "Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207947
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1931, month=4, day=25,
      mintage=2000000, comment=NULL,
      signatures='[{"signer_name": "Julio Carabias Salcedo", "title": "Governor"}, {"signer_name": "Adolfo Castaño Orejón", "title": "Comptroller"}, {"signer_name": "Bonifacio Burgos Delgado", "title": "Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 207949, 531241,
  FALSE, NULL, NULL, NULL,
  1965, 1965,
  NULL, 'Brighter red on reverse',
  '[{"signer_name": "Vans T. LeBlanc", "title": "Chairman"}, {"signer_name": "Norris R. Cummings", "title": "Director"}, {"signer_name": "Noel Oswald Walling", "title": "Director"}, {"signer_name": "Cecil Albert Jacobs", "title": "Director"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "13g"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 207949
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Brighter red on reverse',
      signatures='[{"signer_name": "Vans T. LeBlanc", "title": "Chairman"}, {"signer_name": "Norris R. Cummings", "title": "Director"}, {"signer_name": "Noel Oswald Walling", "title": "Director"}, {"signer_name": "Cecil Albert Jacobs", "title": "Director"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "13g"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208059, 517979,
  FALSE, NULL, NULL, NULL,
  1990, 1990,
  557400000, NULL,
  '[{"signer_name": "Christian Lodewyk Stals", "title": "Governor President"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "121e"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "687"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208059
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=557400000, comment=NULL,
      signatures='[{"signer_name": "Christian Lodewyk Stals", "title": "Governor President"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "121e"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "687"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208060, 517980,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, 'Printer: TDLR',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "144a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208060
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment='Printer: TDLR',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "144a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208100, 518168,
  TRUE, 2015, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "72c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208100
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "72c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208103, 518190,
  TRUE, 2017, 3, NULL,
  NULL, NULL,
  NULL, 'P#73c',
  '[{"signer_name": "Hazim Abdegadir Ahmed Babiker", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208103
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=3, day=NULL,
      mintage=NULL, comment='P#73c',
      signatures='[{"signer_name": "Hazim Abdegadir Ahmed Babiker", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208155, 518355,
  TRUE, 1945, NULL, NULL,
  NULL, NULL,
  NULL, '(fr) 106e.2',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208155
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1945, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) 106e.2',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208171, 518377,
  TRUE, 1977, 12, 15,
  NULL, NULL,
  40000000, 'Series: H195 - H235',
  '[{"signer_name": "César Iglesias Barrón", "title": "Director"}, {"signer_name": "Germán de la Melena Guzmán", "title": "President"}, {"signer_name": "Luis Bordo Rosell", "title": "General Manager"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "113"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B436j"}, {"catalogue": {"id": 2214, "code": "BCRP"}, "number": "161"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208171
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1977, month=12, day=15,
      mintage=40000000, comment='Series: H195 - H235',
      signatures='[{"signer_name": "César Iglesias Barrón", "title": "Director"}, {"signer_name": "Germán de la Melena Guzmán", "title": "President"}, {"signer_name": "Luis Bordo Rosell", "title": "General Manager"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "113"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B436j"}, {"catalogue": {"id": 2214, "code": "BCRP"}, "number": "161"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208199, 518460,
  FALSE, NULL, NULL, NULL,
  1992, 1992,
  628900000, 'P# 234a - Series: A0001 - A6289 (Stamp A)',
  '[{"signer_name": "Marcí­lio Marques Moreira", "title": "Minister for Economy, Finance and Planning"}, {"signer_name": "Francisco Roberto André Gros", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C226"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "605.01"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208199
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=628900000, comment='P# 234a - Series: A0001 - A6289 (Stamp A)',
      signatures='[{"signer_name": "Marcí­lio Marques Moreira", "title": "Minister for Economy, Finance and Planning"}, {"signer_name": "Francisco Roberto André Gros", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C226"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "605.01"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208247, 518579,
  TRUE, 2012, NULL, NULL,
  NULL, NULL,
  NULL, 'P#63a',
  '[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tha Yao", "title": "General Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208247
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=NULL, day=NULL,
      mintage=NULL, comment='P#63a',
      signatures='[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tha Yao", "title": "General Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208293, 518709,
  TRUE, 1992, 1, 15,
  NULL, NULL,
  30000000, 'AA to VE, AZ',
  '[{"signer_name": "France Arhar", "title": "Governor"}, {"signer_name": "Jože Mencinger", "title": "Member of Council"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208293
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=1, day=15,
      mintage=30000000, comment='AA to VE, AZ',
      signatures='[{"signer_name": "France Arhar", "title": "Governor"}, {"signer_name": "Jože Mencinger", "title": "Member of Council"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208316, 518736,
  FALSE, NULL, NULL, NULL,
  1943, 1944,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208316
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208335, 518779,
  FALSE, NULL, NULL, NULL,
  2008, NULL,
  NULL, NULL,
  '[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Yousef Hussein Kamal", "title": "Minister of Finance"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208335
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Yousef Hussein Kamal", "title": "Minister of Finance"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208341, 518802,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208341
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208375, 518891,
  TRUE, 1999, 10, 8,
  NULL, NULL,
  NULL, 'P#203a, serial # prefix MM',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208375
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=10, day=8,
      mintage=NULL, comment='P#203a, serial # prefix MM',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208375, 518892,
  TRUE, 2000, 1, 1,
  NULL, NULL,
  NULL, 'P#203b, serial # prefix Y2K',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208375
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=1, day=1,
      mintage=NULL, comment='P#203b, serial # prefix Y2K',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208407, 518962,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Leonid Talmaci", "title": "Governor of the National Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "10f"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208407
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Leonid Talmaci", "title": "Governor of the National Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "10f"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208407, 518963,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Dorin Drăguțanu", "title": "Governor of the National Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "10g"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208407
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Dorin Drăguțanu", "title": "Governor of the National Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "10g"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208461, 519263,
  TRUE, 1920, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208461
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1920, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208467, 519277,
  TRUE, 2014, 3, 26,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208467
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=3, day=26,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208470, 519280,
  TRUE, 2014, 3, 28,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208470
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=3, day=28,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208516, 519374,
  TRUE, 2015, 8, 19,
  NULL, NULL,
  NULL, 'About No. printed see comments section',
  '[{"signer_name": "José Darío Uribe Escobar", "title": "General Manager"}, {"signer_name": "José Tolosa Buitrago", "title": "Executive Manager"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "459a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B994a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208516
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=8, day=19,
      mintage=NULL, comment='About No. printed see comments section',
      signatures='[{"signer_name": "José Darío Uribe Escobar", "title": "General Manager"}, {"signer_name": "José Tolosa Buitrago", "title": "Executive Manager"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "459a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B994a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208548, 519461,
  TRUE, 1994, 3, 25,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208548
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1994, month=3, day=25,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208570, 528659,
  TRUE, 2010, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Emmanuel Tumusiime-Mutebile", "title": "Governor"}, {"signer_name": "George William Nyeko", "title": "Secretary"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "51a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208570
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Emmanuel Tumusiime-Mutebile", "title": "Governor"}, {"signer_name": "George William Nyeko", "title": "Secretary"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "51a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208598, 519578,
  FALSE, NULL, NULL, NULL,
  1944, 1944,
  994530000, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "53a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208598
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=994530000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "53a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208761, 519842,
  TRUE, 2017, 1, 25,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "David Joseph Duffy", "title": "Chief Executive"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208761
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=1, day=25,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "David Joseph Duffy", "title": "Chief Executive"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208838, 520267,
  TRUE, 1986, 4, 29,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208838
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1986, month=4, day=29,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208853, 520203,
  TRUE, 1943, NULL, NULL,
  NULL, NULL,
  759000000, '昭和十八年; block #91-849',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "59b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208853
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1943, month=NULL, day=NULL,
      mintage=759000000, comment='昭和十八年; block #91-849',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "59b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208857, 520238,
  TRUE, 2010, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Emmanuel Tumusiime-Mutebile", "title": "Governor"}, {"signer_name": "George William Nyeko", "title": "Secretary"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208857
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Emmanuel Tumusiime-Mutebile", "title": "Governor"}, {"signer_name": "George William Nyeko", "title": "Secretary"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208875, 520328,
  TRUE, 2020, 3, 20,
  NULL, NULL,
  NULL, 'Prefix D/1 - D/21; Signatures: Gamha/Abassi.',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "538a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208875
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=3, day=20,
      mintage=NULL, comment='Prefix D/1 - D/21; Signatures: Gamha/Abassi.',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "538a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208926, 520450,
  TRUE, 2001, NULL, NULL,
  NULL, NULL,
  NULL, 'תשס״א; Single-coated thin paper',
  '[{"signer_name": "Shlomo Lorincz", "title": "Chairman of the Advisory Committee"}, {"signer_name": "David Klein", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "59b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208926
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2001, month=NULL, day=NULL,
      mintage=NULL, comment='תשס״א; Single-coated thin paper',
      signatures='[{"signer_name": "Shlomo Lorincz", "title": "Chairman of the Advisory Committee"}, {"signer_name": "David Klein", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "59b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 208932, 520462,
  TRUE, 2000, 8, 20,
  NULL, NULL,
  300768, 'Series MM',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 208932
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=8, day=20,
      mintage=300768, comment='Series MM',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209000, 520581,
  FALSE, NULL, NULL, NULL,
  1999, 1999,
  NULL, NULL,
  '[{"signer_name": "Tito Mboweni", "title": "Governor President"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "124b"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "692"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209000
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Tito Mboweni", "title": "Governor President"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "124b"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "692"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209022, 522468,
  TRUE, 1989, 1, 20,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Pedro Verona Rodrigues Pires", "title": "Minister of Finance"}, {"signer_name": "Amaro Alexandre da Luz", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "60s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209022
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1989, month=1, day=20,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Pedro Verona Rodrigues Pires", "title": "Minister of Finance"}, {"signer_name": "Amaro Alexandre da Luz", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "60s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209027, 520648,
  TRUE, 2019, 1, 1,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Jeanette R. Semeleer", "title": "President of the Central Bank"}, {"signer_name": "Miriam Gonzalez", "title": "Director of the Central Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209027
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=1, day=1,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Jeanette R. Semeleer", "title": "President of the Central Bank"}, {"signer_name": "Miriam Gonzalez", "title": "Director of the Central Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209077, 520717,
  TRUE, 1987, 3, 25,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209077
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1987, month=3, day=25,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209302, 521357,
  TRUE, 1922, 1, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209302
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=1, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209469, 532400,
  TRUE, 1988, 11, 22,
  NULL, NULL,
  NULL, 'Signatures: José Morillo Batlle, Gonzalo Córdova Galarza, Abelardo Pachano Bertero; Series LP & LQ',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "121Aa"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209469
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1988, month=11, day=22,
      mintage=NULL, comment='Signatures: José Morillo Batlle, Gonzalo Córdova Galarza, Abelardo Pachano Bertero; Series LP & LQ',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "121Aa"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209526, 521782,
  FALSE, NULL, NULL, NULL,
  1973, 1973,
  NULL, 'Without dots for sight-impaired',
  '[{"signer_name": "Lino Spiteri", "title": "Vice Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "35a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209526
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Without dots for sight-impaired',
      signatures='[{"signer_name": "Lino Spiteri", "title": "Vice Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "35a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209645, 521943,
  TRUE, 1994, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209645
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1994, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209797, 522225,
  FALSE, NULL, NULL, NULL,
  2010, 2010,
  160800000, 'Series: F0001 - F1608 (Stamp C)',
  '[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C300"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "618.14"}, {"catalogue": {"id": 931, "code": "P"}, "number": "254Al"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209797
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=160800000, comment='Series: F0001 - F1608 (Stamp C)',
      signatures='[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C300"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "618.14"}, {"catalogue": {"id": 931, "code": "P"}, "number": "254Al"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 209854, 522574,
  FALSE, NULL, NULL, NULL,
  1989, 1989,
  196400000, 'P# 221a - Series: A0001 - A1964 (Stamp A)',
  '[{"signer_name": "Maí­lson Ferreira da Nóbrega", "title": "Finance Minister"}, {"signer_name": "Wadico Waldir Bucchi", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C208"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "593.01"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 209854
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=196400000, comment='P# 221a - Series: A0001 - A1964 (Stamp A)',
      signatures='[{"signer_name": "Maí­lson Ferreira da Nóbrega", "title": "Finance Minister"}, {"signer_name": "Wadico Waldir Bucchi", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C208"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "593.01"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210043, 522955,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  120000000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210043
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=120000000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210045, 522957,
  TRUE, 2015, 11, 26,
  NULL, NULL,
  300000000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210045
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=11, day=26,
      mintage=300000000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210126, 523121,
  TRUE, 1980, 8, 14,
  NULL, NULL,
  NULL, 'Signatures: Bruck & Werner',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "57a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210126
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1980, month=8, day=14,
      mintage=NULL, comment='Signatures: Bruck & Werner',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "57a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210247, 523419,
  TRUE, 1938, 4, 30,
  NULL, NULL,
  140000000, 'Issued note',
  '[{"signer_name": "Ramón Artigas Gracia", "title": "Governor"}, {"signer_name": "Antonio García Victoria", "title": "Comptroller"}, {"signer_name": "Juan Villarroya Masfarner", "title": "Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "109a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210247
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1938, month=4, day=30,
      mintage=140000000, comment='Issued note',
      signatures='[{"signer_name": "Ramón Artigas Gracia", "title": "Governor"}, {"signer_name": "Antonio García Victoria", "title": "Comptroller"}, {"signer_name": "Juan Villarroya Masfarner", "title": "Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "109a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210318, 523646,
  FALSE, NULL, NULL, NULL,
  1943, 1943,
  NULL, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "49a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210318
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "49a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210342, 523690,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'P#97b; ۲۰۱۸-۱٤٤۰',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210342
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='P#97b; ۲۰۱۸-۱٤٤۰',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210421, 523971,
  TRUE, 1979, 3, 26,
  NULL, NULL,
  60000000, 'P#83a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210421
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1979, month=3, day=26,
      mintage=60000000, comment='P#83a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210440, 523993,
  TRUE, 1979, 3, 26,
  NULL, NULL,
  30000000, 'P#85a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210440
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1979, month=3, day=26,
      mintage=30000000, comment='P#85a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210443, 523997,
  TRUE, 1979, 3, 26,
  NULL, NULL,
  25000000, 'P#86a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210443
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1979, month=3, day=26,
      mintage=25000000, comment='P#86a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210479, 524058,
  FALSE, NULL, NULL, NULL,
  2018, 2018,
  NULL, 'Suffix: A; Printer: Oberthur',
  '[{"signer_name": "Pablo Ramos Sánchez", "title": "President"}, {"signer_name": "Carlos Alberto Colodro López", "title": "General Manager"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "250"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B419a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210479
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Suffix: A; Printer: Oberthur',
      signatures='[{"signer_name": "Pablo Ramos Sánchez", "title": "President"}, {"signer_name": "Carlos Alberto Colodro López", "title": "General Manager"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "250"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "B419a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210533, 524163,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  43961907, 'Prefix: AA-DP; Two first digits on serial: 16',
  '[{"signer_name": "Graeme Wheeler", "title": "Governor, Reserve Bank of New Zealand"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B139a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210533
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=43961907, comment='Prefix: AA-DP; Two first digits on serial: 16',
      signatures='[{"signer_name": "Graeme Wheeler", "title": "Governor, Reserve Bank of New Zealand"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B139a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210666, 534652,
  TRUE, 2010, 9, 1,
  NULL, NULL,
  NULL, 'Prefix: GE',
  '[{"signer_name": "Andre Eugene Telting", "title": "President of Central Bank of Suriname"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "163a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210666
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=9, day=1,
      mintage=NULL, comment='Prefix: GE',
      signatures='[{"signer_name": "Andre Eugene Telting", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "163a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210679, 524419,
  FALSE, NULL, NULL, NULL,
  1957, 1962,
  NULL, 'a; Sig. 1.',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210679
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='a; Sig. 1.',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210715, 524503,
  TRUE, 1998, 2, 10,
  NULL, NULL,
  6050000, 'P# 139b - Issued note; Series AH900001 - AN950000',
  '[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210715
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1998, month=2, day=10,
      mintage=6050000, comment='P# 139b - Issued note; Series AH900001 - AN950000',
      signatures='[{"signer_name": "Henk O. Goedschalk", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210723, 524512,
  TRUE, 1921, 12, 6,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210723
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=12, day=6,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210726, 524515,
  TRUE, 1921, 12, 6,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210726
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=12, day=6,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210860, 524790,
  TRUE, 2007, NULL, NULL,
  NULL, NULL,
  NULL, 'Signature: Dr. Shamshad Akhter',
  '[{"signer_name": "Dr. Shamshad Akhtar", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "48b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210860
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=NULL, day=NULL,
      mintage=NULL, comment='Signature: Dr. Shamshad Akhter',
      signatures='[{"signer_name": "Dr. Shamshad Akhtar", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "48b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210874, 524979,
  TRUE, 2006, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: C/4',
  '[{"signer_name": "Kenneth Jefferson", "title": "Finance Secretary"}, {"signer_name": "Cindy Scotland", "title": "Managing Director"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "33a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210874
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2006, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: C/4',
      signatures='[{"signer_name": "Kenneth Jefferson", "title": "Finance Secretary"}, {"signer_name": "Cindy Scotland", "title": "Managing Director"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "33a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210887, 525132,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  1000000, 'Prefix 20',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210887
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=1000000, comment='Prefix 20',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210891, 691403,
  FALSE, NULL, NULL, NULL,
  2019, 2019,
  NULL, 'Issued note',
  '[{"signer_name": "Al-Seddiq Omar al-Kabir", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "550a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210891
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Al-Seddiq Omar al-Kabir", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "550a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 210952, 525298,
  TRUE, 2012, 6, 12,
  NULL, NULL,
  NULL, 'Series W.',
  '[{"signer_name": "Agustí­n Guillermo Carstens Carstens", "title": "Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "124w"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 210952
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=6, day=12,
      mintage=NULL, comment='Series W.',
      signatures='[{"signer_name": "Agustí­n Guillermo Carstens Carstens", "title": "Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "124w"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 211064, 525510,
  TRUE, 2014, 12, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 211064
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=12, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 211536, 526531,
  TRUE, 1935, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 211536
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1935, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 211537, 526534,
  TRUE, 2017, NULL, NULL,
  NULL, NULL,
  140000000, 'P#203a, Signatures: György Matolcsy, Márton Nagy, Dr.Ferenc Gerhardt, Dr.László Windisch',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 211537
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=NULL, day=NULL,
      mintage=140000000, comment='P#203a, Signatures: György Matolcsy, Márton Nagy, Dr.Ferenc Gerhardt, Dr.László Windisch',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 211545, 526547,
  TRUE, 2016, 3, 10,
  NULL, NULL,
  NULL, 'Prefix/Suffix: C/N - D/A',
  '[{"signer_name": "Julio Emilio Velarde Flores \"3rd sign\"", "title": "President"}, {"signer_name": "Gustavo Yamada Fukusaki", "title": "Director"}, {"signer_name": "Renzo Rossini Miñán", "title": "General Manager"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 211545
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=3, day=10,
      mintage=NULL, comment='Prefix/Suffix: C/N - D/A',
      signatures='[{"signer_name": "Julio Emilio Velarde Flores \"3rd sign\"", "title": "President"}, {"signer_name": "Gustavo Yamada Fukusaki", "title": "Director"}, {"signer_name": "Renzo Rossini Miñán", "title": "General Manager"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 211571, 526591,
  TRUE, 2008, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Dr. Shamshad Akhtar", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "55b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 211571
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2008, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Dr. Shamshad Akhtar", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "55b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 211582, 526623,
  FALSE, NULL, NULL, NULL,
  2007, 2007,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 211582
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 211789, 527543,
  TRUE, 1792, 10, 24,
  NULL, NULL,
  77945000, 'Laf 161b - P#A66b - Watermark : RP-FR',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 211789
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1792, month=10, day=24,
      mintage=77945000, comment='Laf 161b - P#A66b - Watermark : RP-FR',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 211980, 527529,
  FALSE, NULL, NULL, NULL,
  2016, 2016,
  NULL, 'Narrow distance between waves in OVD at right on front',
  '[{"signer_name": "Pyotar Piatrovich Prakapovich (Пётр Пятровіч Пракаповіч)", "title": "Chairman"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "39a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 211980
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Narrow distance between waves in OVD at right on front',
      signatures='[{"signer_name": "Pyotar Piatrovich Prakapovich (Пётр Пятровіч Пракаповіч)", "title": "Chairman"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "39a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212087, 527710,
  TRUE, 2019, 1, 1,
  NULL, NULL,
  NULL, 'Prefix: GA-GU',
  '[{"signer_name": "Mohamed Khair Al-Zubair", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "413a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212087
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=1, day=1,
      mintage=NULL, comment='Prefix: GA-GU',
      signatures='[{"signer_name": "Mohamed Khair Al-Zubair", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "413a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212104, 535413,
  TRUE, 1978, 1, 2,
  NULL, NULL,
  NULL, 'Signature : Alexander Eric Kwamivi Ashiagbor(AEAA)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "16f"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212104
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1978, month=1, day=2,
      mintage=NULL, comment='Signature : Alexander Eric Kwamivi Ashiagbor(AEAA)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "16f"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212165, 527913,
  TRUE, 2007, NULL, NULL,
  NULL, NULL,
  NULL, 'Thin security thread',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212165
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=NULL, day=NULL,
      mintage=NULL, comment='Thin security thread',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212177, 527942,
  TRUE, 2007, 11, 20,
  NULL, NULL,
  NULL, 'Prefix A, Signatures: Guillermo Ortiz Martínez and Raúl Valdés Ramos',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212177
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=11, day=20,
      mintage=NULL, comment='Prefix A, Signatures: Guillermo Ortiz Martínez and Raúl Valdés Ramos',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212210, 527983,
  FALSE, NULL, NULL, NULL,
  2019, 2019,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212210
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212492, 579641,
  TRUE, 1961, 3, 29,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Jóhannes Nordal", "title": "Bank governor/Director of the Bank"}, {"signer_name": "Guðmundur Hjartarson", "title": "Bank manager"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212492
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1961, month=3, day=29,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Jóhannes Nordal", "title": "Bank governor/Director of the Bank"}, {"signer_name": "Guðmundur Hjartarson", "title": "Bank manager"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212590, 528681,
  FALSE, NULL, NULL, NULL,
  2003, 2003,
  399500000, 'Series: A0001 - A3995 (Stamp C)',
  '[{"signer_name": "Antonio Palocci Filho", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C254"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "626.01"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212590
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=399500000, comment='Series: A0001 - A3995 (Stamp C)',
      signatures='[{"signer_name": "Antonio Palocci Filho", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C254"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "626.01"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212656, 528870,
  FALSE, NULL, NULL, NULL,
  2009, 2009,
  709500000, 'Series: C0001 - C7095 (Stamp C)',
  '[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, '[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C278"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "627.11"}, {"catalogue": {"id": 931, "code": "P"}, "number": "244Ai"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212656
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=709500000, comment='Series: C0001 - C7095 (Stamp C)',
      signatures='[{"signer_name": "Guido Mantega", "title": "Finance Minister"}, {"signer_name": "Henrique de Campos Meirelles", "title": "President of the Central Bank of Brazil"}]'::jsonb, issue_references='[{"catalogue": {"id": 1186, "code": "AI Notes"}, "number": "C278"}, {"catalogue": {"id": 2109, "code": "PMLC"}, "number": "627.11"}, {"catalogue": {"id": 931, "code": "P"}, "number": "244Ai"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212790, 529092,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "72a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212790
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "72a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212790, 912545,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "72s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212790
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "72s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212793, 765677,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "73s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212793
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "73s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212793, 529095,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "73a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212793
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "73a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212798, 529113,
  FALSE, NULL, NULL, NULL,
  1955, 1955,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212798
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212854, 529263,
  TRUE, 1992, NULL, NULL,
  NULL, NULL,
  NULL, '١٤١٣ هـ - ١٩٩٢ م / Signatures: Mohammad al-Imadi & Mohammad Al Sharif',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "105f"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212854
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=NULL, day=NULL,
      mintage=NULL, comment='١٤١٣ هـ - ١٩٩٢ م / Signatures: Mohammad al-Imadi & Mohammad Al Sharif',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "105f"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212897, 535878,
  TRUE, 2004, 4, 10,
  NULL, NULL,
  NULL, 'P#110c. Sig : Sarath amunugama & A.S Jayawardena',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212897
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=4, day=10,
      mintage=NULL, comment='P#110c. Sig : Sarath amunugama & A.S Jayawardena',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212902, 529404,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "75a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212902
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "75a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212902, 912547,
  TRUE, 2014, 7, 5,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "75s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212902
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=7, day=5,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Carlos Augusto de Burgo", "title": "Governor"}, {"signer_name": "Manuel Pinto Frederico", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "75s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212919, 814276,
  TRUE, 2002, 7, 1,
  NULL, NULL,
  NULL, 'Specimen; as P#64b',
  '[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "João de Andrade Lopes", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "64s2"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212919
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2002, month=7, day=1,
      mintage=NULL, comment='Specimen; as P#64b',
      signatures='[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "João de Andrade Lopes", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "64s2"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212923, 817533,
  TRUE, 2002, 7, 1,
  NULL, NULL,
  NULL, 'Specimen; as P#65b',
  '[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "João de Andrade Lopes", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "65s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212923
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2002, month=7, day=1,
      mintage=NULL, comment='Specimen; as P#65b',
      signatures='[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "João de Andrade Lopes", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "65s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212923, 529440,
  TRUE, 2002, 7, 1,
  NULL, NULL,
  NULL, 'Issued note; Correia-Lopes',
  '[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "João de Andrade Lopes", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "65b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212923
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2002, month=7, day=1,
      mintage=NULL, comment='Issued note; Correia-Lopes',
      signatures='[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "João de Andrade Lopes", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "65b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212924, 529442,
  TRUE, 1999, 7, 1,
  NULL, NULL,
  NULL, 'Specimen; overprint: ESPECIME in red on both sides; punch hole cancelled',
  '[{"signer_name": "Oswaldo Miguel Sequeira", "title": "Governor"}, {"signer_name": "Vasco Marta", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "66s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212924
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=7, day=1,
      mintage=NULL, comment='Specimen; overprint: ESPECIME in red on both sides; punch hole cancelled',
      signatures='[{"signer_name": "Oswaldo Miguel Sequeira", "title": "Governor"}, {"signer_name": "Vasco Marta", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "66s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212924, 529441,
  TRUE, 1999, 7, 1,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Oswaldo Miguel Sequeira", "title": "Governor"}, {"signer_name": "Vasco Marta", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "66a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212924
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=7, day=1,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Oswaldo Miguel Sequeira", "title": "Governor"}, {"signer_name": "Vasco Marta", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "66a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212925, 802738,
  FALSE, NULL, NULL, NULL,
  2023, 2023,
  NULL, 'Prefix A/9+; Signature 3: Dr. Luke Forau & Hon. Harry Degruit Kuma. Oval security device.',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212925
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix A/9+; Signature 3: Dr. Luke Forau & Hon. Harry Degruit Kuma. Oval security device.',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212927, 529449,
  TRUE, 2000, 7, 5,
  NULL, NULL,
  NULL, 'Specimen; overprint: ESPECIME in red on both sides; punch hole cancelled',
  '[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "Vasco Marta", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "67s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212927
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=7, day=5,
      mintage=NULL, comment='Specimen; overprint: ESPECIME in red on both sides; punch hole cancelled',
      signatures='[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "Vasco Marta", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "67s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212927, 529448,
  TRUE, 2000, 7, 5,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "Vasco Marta", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "67a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212927
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=7, day=5,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Olavo Avelino Garcia Correia", "title": "Governor"}, {"signer_name": "Vasco Marta", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "67a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212947, 677449,
  TRUE, 2020, 6, 30,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Deogratias Mutombo Mwana Nyembo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "323c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212947
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=6, day=30,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Deogratias Mutombo Mwana Nyembo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "323c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 212968, 529513,
  TRUE, 2002, 1, 4,
  NULL, NULL,
  NULL, 'Prefix: P; Printer: Giesecke & Devrient',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "96a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "317a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 212968
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2002, month=1, day=4,
      mintage=NULL, comment='Prefix: P; Printer: Giesecke & Devrient',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "96a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "317a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213042, 529605,
  FALSE, NULL, NULL, NULL,
  1983, 1984,
  22000000, 'P#67a, Rajaobelina',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213042
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=22000000, comment='P#67a, Rajaobelina',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213184, 529962,
  TRUE, 2007, 1, 1,
  NULL, NULL,
  NULL, 'P#335d. Signature: 和廣北',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213184
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=1, day=1,
      mintage=NULL, comment='P#335d. Signature: 和廣北',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213201, 529992,
  FALSE, NULL, NULL, NULL,
  1953, 1953,
  300000000, 'Issued note',
  '[{"signer_name": "Ramon Magsaysay", "title": "President of the Philippines"}, {"signer_name": "Miguel Cuaderno", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "128a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213201
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=300000000, comment='Issued note',
      signatures='[{"signer_name": "Ramon Magsaysay", "title": "President of the Philippines"}, {"signer_name": "Miguel Cuaderno", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "128a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213240, 530074,
  FALSE, NULL, NULL, NULL,
  1955, 1955,
  NULL, 'P#12a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213240
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#12a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213242, 530078,
  FALSE, NULL, NULL, NULL,
  1955, 1955,
  NULL, 'P#11a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213242
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#11a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213285, 530154,
  TRUE, 2007, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213285
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2007, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213291, 530164,
  TRUE, 1921, 9, 30,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213291
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=30,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213292, 530165,
  TRUE, 1921, 9, 30,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213292
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=30,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213293, 530166,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, '30.09.1921',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213293
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='30.09.1921',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213294, 530167,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, '30.09.1921',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213294
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='30.09.1921',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213295, 530168,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, '30.09.1921',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213295
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='30.09.1921',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213373, 530296,
  TRUE, 2015, 8, 1,
  NULL, NULL,
  NULL, 'Issued note; Prefix: D/00',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "540a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213373
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2015, month=8, day=1,
      mintage=NULL, comment='Issued note; Prefix: D/00',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "540a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213495, 530464,
  TRUE, 1953, 8, 7,
  NULL, NULL,
  NULL, 'Series A',
  '[{"signer_name": "Luis Angel Arango", "title": "Manager"}, {"signer_name": "Eduardo Arias Robledo", "title": "Secretary"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213495
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1953, month=8, day=7,
      mintage=NULL, comment='Series A',
      signatures='[{"signer_name": "Luis Angel Arango", "title": "Manager"}, {"signer_name": "Eduardo Arias Robledo", "title": "Secretary"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213548, 530648,
  TRUE, 2018, 12, 25,
  NULL, NULL,
  NULL, 'Serial prefix: ԱԱ',
  '[{"signer_name": "Arthur Javadyan", "title": "Governor"}, {"signer_name": "Atom Janjughazyan", "title": "Finance minister"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "319a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213548
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=12, day=25,
      mintage=NULL, comment='Serial prefix: ԱԱ',
      signatures='[{"signer_name": "Arthur Javadyan", "title": "Governor"}, {"signer_name": "Atom Janjughazyan", "title": "Finance minister"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "319a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213603, 530766,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures: Chea Chanto & Tha Yao',
  '[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tha Yao", "title": "General Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213603
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures: Chea Chanto & Tha Yao',
      signatures='[{"signer_name": "Chea Chanto", "title": "Governor"}, {"signer_name": "Tha Yao", "title": "General Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 213702, 530943,
  TRUE, 2006, 7, 3,
  NULL, NULL,
  NULL, 'P# 120d',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 213702
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2006, month=7, day=3,
      mintage=NULL, comment='P# 120d',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214001, 531557,
  FALSE, NULL, NULL, NULL,
  2010, 2010,
  NULL, 'Prefix: AA-CT.',
  '[{"signer_name": "Mustafa Haidi Mkulo", "title": "FInance Minister"}, {"signer_name": "Benno Ndulu", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214001
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: AA-CT.',
      signatures='[{"signer_name": "Mustafa Haidi Mkulo", "title": "FInance Minister"}, {"signer_name": "Benno Ndulu", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214058, 531684,
  FALSE, NULL, NULL, NULL,
  1981, 1981,
  NULL, 'Issued note',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "9a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214058
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "9a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214107, 531822,
  TRUE, 2010, 6, 30,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "100a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214107
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2010, month=6, day=30,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "100a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214261, 532090,
  TRUE, 1941, NULL, NULL,
  NULL, NULL,
  NULL, 'P#157a. Issued note',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214261
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1941, month=NULL, day=NULL,
      mintage=NULL, comment='P#157a. Issued note',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214285, 532123,
  TRUE, 2020, 3, 21,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214285
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=3, day=21,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214639, 532725,
  TRUE, 2016, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: BA-BC Signature: Caroline Abel',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214639
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2016, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: BA-BC Signature: Caroline Abel',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214696, 872022,
  TRUE, 1993, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Harri Holkeri", "title": "Member of the Board"}, {"signer_name": "Antti Heinonen"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214696
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1993, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Harri Holkeri", "title": "Member of the Board"}, {"signer_name": "Antti Heinonen"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214720, 532928,
  FALSE, NULL, NULL, NULL,
  1921, 1921,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214720
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214724, 532936,
  TRUE, 1977, 1, 2,
  NULL, NULL,
  NULL, 'P#14c Signature Amon Nikoi',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214724
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1977, month=1, day=2,
      mintage=NULL, comment='P#14c Signature Amon Nikoi',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214851, 533133,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix A/01-A/30',
  '[{"signer_name": "Mohamed Awad Bin Humam", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "132a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214851
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix A/01-A/30',
      signatures='[{"signer_name": "Mohamed Awad Bin Humam", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "132a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 214989, 533307,
  TRUE, 2004, 5, 24,
  NULL, NULL,
  NULL, 'Signatures: Isaias Afewerki & Kibreab Woldemariam',
  '[{"signer_name": "Isaias Afewerki", "title": "President"}, {"signer_name": "Kibreab Woldemariam", "title": "Central Bank Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "7"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 214989
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2004, month=5, day=24,
      mintage=NULL, comment='Signatures: Isaias Afewerki & Kibreab Woldemariam',
      signatures='[{"signer_name": "Isaias Afewerki", "title": "President"}, {"signer_name": "Kibreab Woldemariam", "title": "Central Bank Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "7"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215409, 534085,
  TRUE, 1992, NULL, NULL,
  NULL, NULL,
  NULL, 'Without UV fluoroscent numeral "10" at left and right on front',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215409
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1992, month=NULL, day=NULL,
      mintage=NULL, comment='Without UV fluoroscent numeral "10" at left and right on front',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215453, 534165,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215453
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215455, 534167,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215455
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215533, 652074,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, '50 brick color',
  '[]'::jsonb, '[{"catalogue": {"id": 3345, "code": "DeNG 1"}, "number": "158.1a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215533
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='50 brick color',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 3345, "code": "DeNG 1"}, "number": "158.1a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215537, 534333,
  TRUE, 2012, 1, 1,
  NULL, NULL,
  NULL, 'Signature: Peter Wong (Chief Executive)',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "213b"}, {"catalogue": {"id": 2972, "code": "KNB HKM"}, "number": "99c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215537
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=1, day=1,
      mintage=NULL, comment='Signature: Peter Wong (Chief Executive)',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "213b"}, {"catalogue": {"id": 2972, "code": "KNB HKM"}, "number": "99c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215561, 534407,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, '(٢٠٠٩) Prefix: A, B, C; Signatures: Dr. Adib Mayaleh (Governor); Muhammad Naji Al-Otari.',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215561
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment='(٢٠٠٩) Prefix: A, B, C; Signatures: Dr. Adib Mayaleh (Governor); Muhammad Naji Al-Otari.',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215562, 534408,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215562
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215563, 593318,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures: Maamoun Hamdan & Hazem Karfoul',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B632c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215563
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures: Maamoun Hamdan & Hazem Karfoul',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B632c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215575, 534433,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "John A. Rolle", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215575
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "John A. Rolle", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215596, 534484,
  FALSE, NULL, NULL, NULL,
  2019, 2019,
  NULL, NULL,
  '[{"signer_name": "Timothy Antoine", "title": "Governor of the Central Bank"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "57"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215596
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Timothy Antoine", "title": "Governor of the Central Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "57"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 215931, 535111,
  TRUE, 2017, 11, 28,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 215931
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=11, day=28,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 216115, 535539,
  TRUE, 2013, 11, 22,
  NULL, NULL,
  NULL, 'Issued note; Prefix: D/00',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "538a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 216115
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=11, day=22,
      mintage=NULL, comment='Issued note; Prefix: D/00',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "538a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 216120, 723788,
  TRUE, 2014, NULL, NULL,
  NULL, NULL,
  NULL, '٢٠١٤',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "539a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 216120
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=NULL, day=NULL,
      mintage=NULL, comment='٢٠١٤',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "539a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 216167, 535623,
  TRUE, 2019, 2, 1,
  NULL, NULL,
  NULL, 'Prefix BA-BL',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 216167
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=2, day=1,
      mintage=NULL, comment='Prefix BA-BL',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 216169, 535625,
  TRUE, 2019, 2, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 216169
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=2, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 216432, 536094,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 216432
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 216627, 536385,
  FALSE, NULL, NULL, NULL,
  1920, 1920,
  NULL, 'original: 02.01.1902',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 216627
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='original: 02.01.1902',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 216729, 536578,
  TRUE, 1921, 7, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 216729
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=7, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 216730, 536579,
  FALSE, NULL, NULL, NULL,
  1922, 1922,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 216730
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 217033, 537268,
  TRUE, 2019, 4, 1,
  NULL, NULL,
  5000000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 217033
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=4, day=1,
      mintage=5000000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 217036, 537271,
  TRUE, 2019, 4, 1,
  NULL, NULL,
  5000000, 'Prefix: MA',
  '[{"signer_name": "Carlos Manuel Sobral Cid da Costa Álvares", "title": "Chief Executive Officer"}, {"signer_name": "Cecilia Kou Hoi In", "title": "President of the Executive Committee"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 217036
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=4, day=1,
      mintage=5000000, comment='Prefix: MA',
      signatures='[{"signer_name": "Carlos Manuel Sobral Cid da Costa Álvares", "title": "Chief Executive Officer"}, {"signer_name": "Cecilia Kou Hoi In", "title": "President of the Executive Committee"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 217160, 537519,
  TRUE, 1999, 11, 28,
  NULL, NULL,
  NULL, '(fr) P4i',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 217160
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1999, month=11, day=28,
      mintage=NULL, comment='(fr) P4i',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 217160, 537521,
  TRUE, 2002, 11, 28,
  NULL, NULL,
  NULL, '(fr) P4k',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 217160
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2002, month=11, day=28,
      mintage=NULL, comment='(fr) P4k',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 217505, 538090,
  TRUE, 2018, 4, 12,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 217505
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=4, day=12,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 217841, 538887,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, '30.09.1921',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 217841
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='30.09.1921',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 217842, 538889,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, '30.09.1921',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 217842
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='30.09.1921',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 218452, 540292,
  TRUE, 1921, 3, 15,
  NULL, NULL,
  NULL, 'GrM:398.2a-3.1 / Letter O. Serial 4 numbers without *',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 218452
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=3, day=15,
      mintage=NULL, comment='GrM:398.2a-3.1 / Letter O. Serial 4 numbers without *',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 218452, 561285,
  TRUE, 1921, 3, 15,
  NULL, NULL,
  NULL, 'GrM:398.2a-4/5 / Letter S with SN',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 218452
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=3, day=15,
      mintage=NULL, comment='GrM:398.2a-4/5 / Letter S with SN',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 218452, 561286,
  TRUE, 1921, 3, 15,
  NULL, NULL,
  NULL, 'GrM:398.2a-5/5 / Letter E (seal in the middle of obverse filled with grey colour)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 218452
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=3, day=15,
      mintage=NULL, comment='GrM:398.2a-5/5 / Letter E (seal in the middle of obverse filled with grey colour)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 218452, 561287,
  TRUE, 1921, 3, 15,
  NULL, NULL,
  NULL, 'GrM:398.2a-2/5 / Letter FR',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 218452
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=3, day=15,
      mintage=NULL, comment='GrM:398.2a-2/5 / Letter FR',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 218857, 541191,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 218857
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 218858, 541192,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 218858
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 218860, 541194,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 218860
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 218918, 541280,
  TRUE, 2019, 12, 20,
  NULL, NULL,
  200000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 218918
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=12, day=20,
      mintage=200000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 219062, 541592,
  TRUE, 1997, 11, 1,
  NULL, NULL,
  NULL, 'Prefix: H / Suffix: A; Printer: National Bank of Belgium Printing Works',
  '[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "87a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "308a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 219062
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=11, day=1,
      mintage=NULL, comment='Prefix: H / Suffix: A; Printer: National Bank of Belgium Printing Works',
      signatures='[{"signer_name": "Jean-Claude Masangu-Mulongo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "87a"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "308a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 219537, 542794,
  TRUE, 1897, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "53a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 219537
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1897, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "53a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 220457, 544929,
  FALSE, NULL, NULL, NULL,
  2004, NULL,
  NULL, NULL,
  '[{"signer_name": "Farhat O. Bengdara", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "69b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 220457
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Farhat O. Bengdara", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "69b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 220873, 545872,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 220873
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 222466, 551016,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  2000000, '0AB → 0AH, 0AJ prefixes',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "63"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 222466
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=2000000, comment='0AB → 0AH, 0AJ prefixes',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "63"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 222650, 551332,
  TRUE, 1987, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Niels Bentsen", "title": "High Commissioner"}, {"signer_name": "Atli P. Dam", "title": "Prime Minister"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "20c"}, {"catalogue": {"id": 996, "code": "SIEG SD"}, "number": "29C"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 222650
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1987, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Niels Bentsen", "title": "High Commissioner"}, {"signer_name": "Atli P. Dam", "title": "Prime Minister"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "20c"}, {"catalogue": {"id": 996, "code": "SIEG SD"}, "number": "29C"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 222908, 551935,
  TRUE, 1921, 7, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 222908
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=7, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223074, 552324,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  9998000, 'Signatures: Aquino III - Tetangco Jr.',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223074
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=9998000, comment='Signatures: Aquino III - Tetangco Jr.',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223078, 552328,
  TRUE, 1921, 7, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223078
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=7, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223094, 552357,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, '1. Juli 1921',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223094
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='1. Juli 1921',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223116, 552406,
  TRUE, 1922, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223116
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223174, 552550,
  FALSE, NULL, NULL, NULL,
  2002, 2002,
  NULL, NULL,
  '[{"signer_name": "Farhat O. Bengdara", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "67b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223174
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Farhat O. Bengdara", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "67b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223216, 552646,
  TRUE, 1922, 4, 22,
  NULL, NULL,
  NULL, 'hard paper',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223216
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=4, day=22,
      mintage=NULL, comment='hard paper',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223218, 552648,
  TRUE, 1922, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223218
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223221, 552651,
  TRUE, 1922, 4, 22,
  NULL, NULL,
  NULL, 'Hard paper',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223221
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=4, day=22,
      mintage=NULL, comment='Hard paper',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223311, 552911,
  TRUE, 1918, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223311
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1918, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223554, 553501,
  TRUE, 0, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223554
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=0, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223582, 553622,
  TRUE, 2003, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix Q/1',
  '[{"signer_name": "George A McCarthy", "title": "Chairman"}, {"signer_name": "Cindy Scotland", "title": "Managing Director"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "30a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223582
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2003, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix Q/1',
      signatures='[{"signer_name": "George A McCarthy", "title": "Chairman"}, {"signer_name": "Cindy Scotland", "title": "Managing Director"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "30a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223676, 553858,
  TRUE, 2000, NULL, NULL,
  NULL, NULL,
  1509000, 'P#190a. Black serial # (Prefixes AA-AM, BA-BM, CA-CI).',
  '[{"signer_name": "Donald Thomas Brash", "title": "Governor, Reserve Bank of New Zealand"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223676
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2000, month=NULL, day=NULL,
      mintage=1509000, comment='P#190a. Black serial # (Prefixes AA-AM, BA-BM, CA-CI).',
      signatures='[{"signer_name": "Donald Thomas Brash", "title": "Governor, Reserve Bank of New Zealand"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223754, 554144,
  TRUE, 1922, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223754
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223755, 554145,
  TRUE, 1922, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223755
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223764, 554161,
  FALSE, NULL, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223764
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 223834, 554264,
  TRUE, 1922, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 223834
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 224144, 554978,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 224144
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 224212, 555088,
  FALSE, NULL, NULL, NULL,
  1980, 1981,
  NULL, 'Black ovpt. type D',
  '[{"signer_name": "Yussef Khosh Kish", "title": "President"}, {"signer_name": "Mohammad Yeganeh", "title": "Minister of Economic Affairs"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "123b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 224212
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Black ovpt. type D',
      signatures='[{"signer_name": "Yussef Khosh Kish", "title": "President"}, {"signer_name": "Mohammad Yeganeh", "title": "Minister of Economic Affairs"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "123b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 224232, 555137,
  FALSE, NULL, NULL, NULL,
  2003, 2009,
  NULL, NULL,
  '[{"signer_name": "Ebrahim Sheibani", "title": "President"}, {"signer_name": "Davoud Danesh-Jafari", "title": "Minister of Economic Affairs"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "137Ad"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "270d"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 224232
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Ebrahim Sheibani", "title": "President"}, {"signer_name": "Davoud Danesh-Jafari", "title": "Minister of Economic Affairs"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "137Ad"}, {"catalogue": {"id": 936, "code": "TBB"}, "number": "270d"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 224277, 555225,
  TRUE, 2018, 1, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 224277
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=1, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 224283, 555245,
  TRUE, 2002, 11, 28,
  NULL, NULL,
  NULL, 'P# 5k; Series U016 - D017',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 224283
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2002, month=11, day=28,
      mintage=NULL, comment='P# 5k; Series U016 - D017',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 224436, 555715,
  TRUE, 2012, NULL, NULL,
  NULL, NULL,
  9992800, 'P#213Aa',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 224436
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=NULL, day=NULL,
      mintage=9992800, comment='P#213Aa',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 224448, 805390,
  TRUE, 1971, 12, 17,
  NULL, NULL,
  NULL, 'P#44a - Administrator: Pedro de Mascarenhas Gaivão',
  '[{"signer_name": "Francisco José Vieira Machado", "title": "Governor"}, {"signer_name": "Pedro de Mascarenhas Gaivão", "title": "Administrator"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 224448
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1971, month=12, day=17,
      mintage=NULL, comment='P#44a - Administrator: Pedro de Mascarenhas Gaivão',
      signatures='[{"signer_name": "Francisco José Vieira Machado", "title": "Governor"}, {"signer_name": "Pedro de Mascarenhas Gaivão", "title": "Administrator"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 224675, 556194,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, 'Signature: Koba Gvenetadze',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 224675
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment='Signature: Koba Gvenetadze',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 225353, 557680,
  TRUE, 1980, 5, 24,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 225353
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1980, month=5, day=24,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 225364, 557714,
  FALSE, NULL, NULL, NULL,
  1979, 1979,
  NULL, 'Black type D overprint on P# 102d',
  '[{"signer_name": "Yussef Khosh Kish", "title": "President"}, {"signer_name": "Mohammad Yeganeh", "title": "Minister of Economic Affairs"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "118b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 225364
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Black type D overprint on P# 102d',
      signatures='[{"signer_name": "Yussef Khosh Kish", "title": "President"}, {"signer_name": "Mohammad Yeganeh", "title": "Minister of Economic Affairs"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "118b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 225425, 557825,
  FALSE, NULL, NULL, NULL,
  1967, 1967,
  246000000, 'Prefix A139 to A/629;Uneven numbers only',
  '[{"signer_name": "Theunis Willem de Jongh", "title": "Governor President"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "110b"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "331"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 225425
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=246000000, comment='Prefix A139 to A/629;Uneven numbers only',
      signatures='[{"signer_name": "Theunis Willem de Jongh", "title": "Governor President"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "110b"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "331"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 225651, 558220,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, 'GrM:0306.1a-2/3: Series: B, thin paper, without watermark, glossy print',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 225651
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='GrM:0306.1a-2/3: Series: B, thin paper, without watermark, glossy print',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 225652, 558222,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, 'GrM:0306.1a-1/3: Series: A, thin paper',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 225652
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='GrM:0306.1a-1/3: Series: A, thin paper',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 225653, 558224,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, 'GrM:0306.1a-3/3: Series: C, thin paper, without watermark, glossy print',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 225653
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='GrM:0306.1a-3/3: Series: C, thin paper, without watermark, glossy print',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 225828, 558568,
  TRUE, 1922, 4, 22,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 225828
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=4, day=22,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 226115, 559186,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, 'brick color',
  '[]'::jsonb, '[{"catalogue": {"id": 3345, "code": "DeNG 1"}, "number": "158.1a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 226115
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment='brick color',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 3345, "code": "DeNG 1"}, "number": "158.1a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 226184, 559335,
  TRUE, 1918, NULL, NULL,
  NULL, NULL,
  NULL, 'Serial number prefix А.',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "22a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 226184
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1918, month=NULL, day=NULL,
      mintage=NULL, comment='Serial number prefix А.',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "22a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 226453, 559923,
  FALSE, NULL, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 226453
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 226636, 560301,
  TRUE, 1961, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Jón G. Maríasson", "title": "Bank manager"}, {"signer_name": "Jóhannes Nordal", "title": "Bank governor/Director of the Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 226636
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1961, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Jón G. Maríasson", "title": "Bank manager"}, {"signer_name": "Jóhannes Nordal", "title": "Bank governor/Director of the Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 227036, 561135,
  TRUE, 1942, 3, 10,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 227036
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1942, month=3, day=10,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 227045, 561144,
  TRUE, 1942, 3, 10,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 227045
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1942, month=3, day=10,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 227211, 561377,
  FALSE, NULL, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 227211
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 227237, 561406,
  TRUE, 1921, 9, 9,
  NULL, NULL,
  NULL, 'Large Serial #',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 227237
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=9,
      mintage=NULL, comment='Large Serial #',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 228180, 668023,
  TRUE, 1919, 11, 1,
  NULL, NULL,
  NULL, 'Underprint: light grey brown Gra:S105.1, Tie:7100.05.01',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 228180
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1919, month=11, day=1,
      mintage=NULL, comment='Underprint: light grey brown Gra:S105.1, Tie:7100.05.01',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 228745, 563698,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix Q/2',
  '[{"signer_name": "Roy Taggart", "title": "Minister of Finance"}, {"signer_name": "Cindy Scotland", "title": "Managing Director"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 228745
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix Q/2',
      signatures='[{"signer_name": "Roy Taggart", "title": "Minister of Finance"}, {"signer_name": "Cindy Scotland", "title": "Managing Director"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 228840, 638298,
  TRUE, 2017, 1, 1,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Glenford Ysaguirre", "title": "Governor, Central Bank of Belize"}, {"signer_name": "Joseph D. Waight", "title": "Financial Secretary"}, {"signer_name": "Vanessa Retreage", "title": "Director, Central Bank of Belize"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "66 var."}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 228840
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2017, month=1, day=1,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Glenford Ysaguirre", "title": "Governor, Central Bank of Belize"}, {"signer_name": "Joseph D. Waight", "title": "Financial Secretary"}, {"signer_name": "Vanessa Retreage", "title": "Director, Central Bank of Belize"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "66 var."}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 229559, 564901,
  TRUE, 1972, 6, 1,
  NULL, NULL,
  2620000, 'P# 8b - Two letters prefix (PB, PC and PD)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 229559
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1972, month=6, day=1,
      mintage=2620000, comment='P# 8b - Two letters prefix (PB, PC and PD)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 229944, 565441,
  TRUE, 1921, 9, 9,
  NULL, NULL,
  NULL, 'Large serial number',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 229944
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=9,
      mintage=NULL, comment='Large serial number',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 229946, 565445,
  FALSE, NULL, NULL, NULL,
  1921, 1921,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 229946
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 230286, 566169,
  FALSE, NULL, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 230286
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 230307, 566198,
  FALSE, NULL, NULL, NULL,
  1921, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 230307
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 230308, 566199,
  FALSE, NULL, NULL, NULL,
  1921, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 230308
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 230309, 566200,
  FALSE, NULL, NULL, NULL,
  1921, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 230309
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 230311, 566202,
  FALSE, NULL, NULL, NULL,
  1921, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 230311
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 230480, 566455,
  TRUE, 2012, NULL, NULL,
  NULL, NULL,
  2000000, NULL,
  '[{"signer_name": "Kittiratt Na-Ranong", "title": "Minister of Finance"}, {"signer_name": "Prasarn Trairatvorakul", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 230480
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=NULL, day=NULL,
      mintage=2000000, comment=NULL,
      signatures='[{"signer_name": "Kittiratt Na-Ranong", "title": "Minister of Finance"}, {"signer_name": "Prasarn Trairatvorakul", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 230582, 733013,
  TRUE, 1977, 1, 20,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Amaro Alexandre da Luz", "title": "Minister of Finance"}, {"signer_name": "Corentino Virgilio Santos", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "55s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 230582
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1977, month=1, day=20,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Amaro Alexandre da Luz", "title": "Minister of Finance"}, {"signer_name": "Corentino Virgilio Santos", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "55s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 230583, 566770,
  TRUE, 1977, 1, 20,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Amaro Alexandre da Luz", "title": "Minister of Finance"}, {"signer_name": "Corentino Virgilio Santos", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "56a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 230583
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1977, month=1, day=20,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Amaro Alexandre da Luz", "title": "Minister of Finance"}, {"signer_name": "Corentino Virgilio Santos", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "56a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 231200, 567860,
  FALSE, NULL, NULL, NULL,
  1921, 1921,
  NULL, 'Letter P',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 231200
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Letter P',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 231565, 568504,
  FALSE, NULL, NULL, NULL,
  2020, 2020,
  NULL, 'P#85a',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 231565
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#85a',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 231759, 568986,
  TRUE, 1914, 2, 10,
  NULL, NULL,
  NULL, 'Norris Peters; printed signatures; red circular seal on reverse',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 231759
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1914, month=2, day=10,
      mintage=NULL, comment='Norris Peters; printed signatures; red circular seal on reverse',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 231996, 569621,
  FALSE, NULL, NULL, NULL,
  1967, 1967,
  115000000, 'Watermark Springbok',
  '[{"signer_name": "Theunis Willem de Jongh", "title": "Governor President"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "113b"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "513"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 231996
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=115000000, comment='Watermark Springbok',
      signatures='[{"signer_name": "Theunis Willem de Jongh", "title": "Governor President"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "113b"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "513"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 231996, 569631,
  FALSE, NULL, NULL, NULL,
  1975, 1976,
  110000000, 'Watermark van Riebeeck',
  '[{"signer_name": "Theunis Willem de Jongh", "title": "Governor President"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "113c"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "521"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 231996
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=110000000, comment='Watermark van Riebeeck',
      signatures='[{"signer_name": "Theunis Willem de Jongh", "title": "Governor President"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "113c"}, {"catalogue": {"id": 958, "code": "Hern BP"}, "number": "521"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 232122, 569838,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Rodrigo Duterte", "title": "President of the Philippines"}, {"signer_name": "Benjamin Diokno", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1090a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 232122
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Rodrigo Duterte", "title": "President of the Philippines"}, {"signer_name": "Benjamin Diokno", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1090a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 232125, 569842,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: A-K, AB-TB',
  '[{"signer_name": "Rodrigo Duterte", "title": "President of the Philippines"}, {"signer_name": "Benjamin Diokno", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1091a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 232125
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A-K, AB-TB',
      signatures='[{"signer_name": "Rodrigo Duterte", "title": "President of the Philippines"}, {"signer_name": "Benjamin Diokno", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1091a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 232947, 571159,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  75000000, 'Signatures : Mulyani Indrawati, Perry Warjiyo',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 232947
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=75000000, comment='Signatures : Mulyani Indrawati, Perry Warjiyo',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 233360, 571817,
  TRUE, 1994, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Bent Klinte", "title": "High Commissioner"}, {"signer_name": "Edmund Joensen", "title": "Prime Minister"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "21f"}, {"catalogue": {"id": 996, "code": "SIEG SD"}, "number": "30F"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 233360
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1994, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Bent Klinte", "title": "High Commissioner"}, {"signer_name": "Edmund Joensen", "title": "Prime Minister"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "21f"}, {"catalogue": {"id": 996, "code": "SIEG SD"}, "number": "30F"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 233777, 631019,
  TRUE, 1921, 5, 1,
  NULL, NULL,
  NULL, 'DeNG 1/2# 99.3-2/3 - Green ink',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 233777
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=5, day=1,
      mintage=NULL, comment='DeNG 1/2# 99.3-2/3 - Green ink',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 233785, 842716,
  TRUE, 1989, 1, 20,
  NULL, NULL,
  NULL, 'Specimen; overprint: ESPECIMEN in red on both sides; punch hole cancelled.',
  '[{"signer_name": "Pedro Verona Rodrigues Pires", "title": "Minister of Finance"}, {"signer_name": "Amaro Alexandre da Luz", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "61s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 233785
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1989, month=1, day=20,
      mintage=NULL, comment='Specimen; overprint: ESPECIMEN in red on both sides; punch hole cancelled.',
      signatures='[{"signer_name": "Pedro Verona Rodrigues Pires", "title": "Minister of Finance"}, {"signer_name": "Amaro Alexandre da Luz", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "61s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 233785, 572480,
  TRUE, 1989, 1, 20,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Pedro Verona Rodrigues Pires", "title": "Minister of Finance"}, {"signer_name": "Amaro Alexandre da Luz", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "61a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 233785
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1989, month=1, day=20,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Pedro Verona Rodrigues Pires", "title": "Minister of Finance"}, {"signer_name": "Amaro Alexandre da Luz", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "61a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 234693, 573943,
  TRUE, 1921, 9, 9,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 234693
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=9,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 235821, 575785,
  TRUE, 2019, 3, 4,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 235821
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=3, day=4,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 235823, 575787,
  TRUE, 2019, 3, 4,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 235823
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=3, day=4,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 235866, 575852,
  FALSE, NULL, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 235866
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 235867, 575853,
  FALSE, NULL, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 235867
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 236491, 576917,
  TRUE, 2014, 10, 27,
  NULL, NULL,
  NULL, 'Series M',
  '[{"signer_name": "Roberto del Cueto Legaspi", "title": "Deputy Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "123Am"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 236491
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2014, month=10, day=27,
      mintage=NULL, comment='Series M',
      signatures='[{"signer_name": "Roberto del Cueto Legaspi", "title": "Deputy Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "123Am"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 236667, 577381,
  TRUE, 1997, 6, 1,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Keith Arnold", "title": "Governor, Central Bank of Belize"}, {"signer_name": "Arsenio Burgos", "title": "Director, Central Bank of Belize"}, {"signer_name": "Jaime D. Alpuche", "title": "Financial Secretary"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "62a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 236667
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1997, month=6, day=1,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Keith Arnold", "title": "Governor, Central Bank of Belize"}, {"signer_name": "Arsenio Burgos", "title": "Director, Central Bank of Belize"}, {"signer_name": "Jaime D. Alpuche", "title": "Financial Secretary"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "62a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 237755, 579339,
  TRUE, 1922, 5, 31,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 237755
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=5, day=31,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 237875, 579530,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "John A. Rolle", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 237875
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "John A. Rolle", "title": "Governor of Central Bank of The Bahamas"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 239037, 581656,
  TRUE, 2020, 10, 23,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 239037
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=10, day=23,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 239312, 582365,
  FALSE, NULL, NULL, NULL,
  1945, 1951,
  NULL, 'P#76a: Letter B (probably not issued)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 239312
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#76a: Letter B (probably not issued)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 239537, 582776,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, '١٤٤١ ـ ٢٠٢٠',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 239537
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment='١٤٤١ ـ ٢٠٢٠',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 240602, 1098281,
  TRUE, 2021, 3, 1,
  NULL, NULL,
  NULL, 'Signature: Katie Murray',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "941b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 240602
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=3, day=1,
      mintage=NULL, comment='Signature: Katie Murray',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "941b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 241100, 585547,
  TRUE, 1923, 9, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 241100
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1923, month=9, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 241406, 586139,
  TRUE, 1922, 5, 31,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 241406
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=5, day=31,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 241998, 587114,
  TRUE, 2002, 11, 28,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "8c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 241998
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2002, month=11, day=28,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "8c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 242024, 587197,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures: Ahmed Abdulkarim Alkholifey & Mohammed Al-Jadaan',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 242024
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures: Ahmed Abdulkarim Alkholifey & Mohammed Al-Jadaan',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 242104, 587358,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'Date: ۲۰۱۸-۱٤٤۰',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 242104
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='Date: ۲۰۱۸-۱٤٤۰',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 244728, 591610,
  FALSE, NULL, NULL, NULL,
  2021, 2021,
  NULL, NULL,
  '[{"signer_name": "Abdolnaser Hemmati", "title": "President"}, {"signer_name": "Farhad Dejpasand", "title": "Minister of Economic Affairs"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "301a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 244728
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Abdolnaser Hemmati", "title": "President"}, {"signer_name": "Farhad Dejpasand", "title": "Minister of Economic Affairs"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "301a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 244911, 720012,
  TRUE, 2021, 1, 6,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Alejandro Dí­az de León Carillo", "title": "Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 244911
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=1, day=6,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Alejandro Dí­az de León Carillo", "title": "Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 248104, 595849,
  TRUE, 2020, 4, NULL,
  NULL, NULL,
  NULL, 'Issued note; Prefix: A',
  '[{"signer_name": "José de Lima Massano", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B557a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 248104
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=4, day=NULL,
      mintage=NULL, comment='Issued note; Prefix: A',
      signatures='[{"signer_name": "José de Lima Massano", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B557a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 248199, 595951,
  TRUE, 1975, 11, 28,
  NULL, NULL,
  NULL, 'Unissued - Without inprint',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 248199
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1975, month=11, day=28,
      mintage=NULL, comment='Unissued - Without inprint',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 248200, 869707,
  TRUE, 1977, 11, 28,
  NULL, NULL,
  NULL, 'Unissued - Without Specimen',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 248200
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1977, month=11, day=28,
      mintage=NULL, comment='Unissued - Without Specimen',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 248202, 869709,
  TRUE, 1977, 6, 29,
  NULL, NULL,
  NULL, 'Unissued - Without Specimen',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 248202
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1977, month=6, day=29,
      mintage=NULL, comment='Unissued - Without Specimen',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 250603, 598991,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: A, B',
  '[{"signer_name": "Elman Rustamov", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "408a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 250603
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: A, B',
      signatures='[{"signer_name": "Elman Rustamov", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "408a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 250604, 598992,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Elman Rustamov", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "409a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 250604
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Elman Rustamov", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "409a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 254249, 603533,
  TRUE, 2020, 7, 12,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "548a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 254249
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=7, day=12,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "548a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 258191, 608679,
  TRUE, 1987, 1, 1,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Casimir Oyé-Mba", "title": "Governor"}, {"signer_name": "Claude Tchepannou", "title": "Censor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "10a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 258191
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1987, month=1, day=1,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Casimir Oyé-Mba", "title": "Governor"}, {"signer_name": "Claude Tchepannou", "title": "Censor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "10a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 258926, 610181,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Ali Shareef Al Emadi", "title": "Minister of Finance"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "221a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 258926
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Ali Shareef Al Emadi", "title": "Minister of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "221a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 258988, 610260,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Ali Shareef Al Emadi", "title": "Minister of Finance"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "219a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 258988
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Ali Shareef Al Emadi", "title": "Minister of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "219a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 258989, 610261,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Ali Shareef Al Emadi", "title": "Minister of Finance"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "220a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 258989
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Abdullah Saud Al-Thani", "title": "Governor"}, {"signer_name": "Ali Shareef Al Emadi", "title": "Minister of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "220a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 259033, 610348,
  TRUE, 2012, 4, 1,
  NULL, NULL,
  50000, 'P# 167 - Commemorative note; Series CB5500001 - CB5550000.',
  '[{"signer_name": "Gillmore André Hoefdraad", "title": "President of Central Bank of Suriname"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 259033
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2012, month=4, day=1,
      mintage=50000, comment='P# 167 - Commemorative note; Series CB5500001 - CB5550000.',
      signatures='[{"signer_name": "Gillmore André Hoefdraad", "title": "President of Central Bank of Suriname"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 259225, 610690,
  TRUE, 2018, 9, 14,
  NULL, NULL,
  40000000, 'Series B. Signatures: Rodrigo Cubero Brealey & Eduardo Prado Zúñiga (000 000 001​ → 043 569 009)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 259225
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=9, day=14,
      mintage=40000000, comment='Series B. Signatures: Rodrigo Cubero Brealey & Eduardo Prado Zúñiga (000 000 001​ → 043 569 009)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 262495, 614849,
  TRUE, 2020, 5, 27,
  NULL, NULL,
  25000000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 262495
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=5, day=27,
      mintage=25000000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 264846, 617808,
  TRUE, 1921, 9, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 264846
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 266442, 620690,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  7200000, NULL,
  '[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 266442
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=7200000, comment=NULL,
      signatures='[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 266443, 620691,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 266443
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "John Panonetsa Mangudya", "title": "Governor, Reserve Bank of Zimbabwe"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 266640, 621155,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 266640
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 266869, 621492,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Alvin Hilaire", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 266869
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Alvin Hilaire", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 266870, 621493,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Alvin Hilaire", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 266870
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Alvin Hilaire", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 267582, 623102,
  TRUE, 2013, NULL, NULL,
  NULL, NULL,
  NULL, 'P#35b',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 267582
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2013, month=NULL, day=NULL,
      mintage=NULL, comment='P#35b',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 268238, 624063,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Yinager Dessie", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 268238
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Yinager Dessie", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 272725, 631005,
  TRUE, 2019, 9, 6,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "João António Pinto Coelho Serra", "title": "Governor"}, {"signer_name": "Antônia Lopes", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "76a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 272725
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=9, day=6,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "João António Pinto Coelho Serra", "title": "Governor"}, {"signer_name": "Antônia Lopes", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "76a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 272725, 779633,
  TRUE, 2019, 9, 6,
  NULL, NULL,
  NULL, 'Specimen',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "76s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 272725
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=9, day=6,
      mintage=NULL, comment='Specimen',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "76s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 272908, 631424,
  FALSE, NULL, NULL, NULL,
  2021, 2021,
  NULL, NULL,
  '[{"signer_name": "Timothy Antoine", "title": "Governor of the Central Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 272908
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Timothy Antoine", "title": "Governor of the Central Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 274125, 632788,
  FALSE, NULL, NULL, NULL,
  2021, 2021,
  NULL, NULL,
  '[{"signer_name": "Abdolnaser Hemmati", "title": "President"}, {"signer_name": "Farhad Dejpasand", "title": "Minister of Economic Affairs"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "300a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 274125
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Abdolnaser Hemmati", "title": "President"}, {"signer_name": "Farhad Dejpasand", "title": "Minister of Economic Affairs"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "300a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 274740, 633998,
  FALSE, NULL, NULL, NULL,
  2021, 2021,
  NULL, 'Issued note',
  '[{"signer_name": "Al-Seddiq Omar al-Kabir", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "551a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 274740
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Al-Seddiq Omar al-Kabir", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "551a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 275303, 634671,
  TRUE, 1921, 5, 1,
  NULL, NULL,
  NULL, '99.2- brown ink',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 275303
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=5, day=1,
      mintage=NULL, comment='99.2- brown ink',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 275349, 634727,
  TRUE, 1921, 5, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 275349
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=5, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 275979, 635758,
  TRUE, 2009, 1, 1,
  NULL, NULL,
  NULL, 'Specimen',
  '[{"signer_name": "Alan F. Richardson", "title": "Chairman, Bermuda Monetary Authority"}, {"signer_name": "Leon Anthony Joaquin", "title": "Director, Bermuda Monetary Authority"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "60s"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 275979
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=1, day=1,
      mintage=NULL, comment='Specimen',
      signatures='[{"signer_name": "Alan F. Richardson", "title": "Chairman, Bermuda Monetary Authority"}, {"signer_name": "Leon Anthony Joaquin", "title": "Director, Bermuda Monetary Authority"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "60s"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 276375, 636448,
  TRUE, 1921, 9, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 276375
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 280476, 741861,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, 'Printer: Oberthur Fiduciaire',
  '[{"signer_name": "Thapelo Matsheka", "title": "Minister of Finance"}, {"signer_name": "Moses Dinekere Pelaelo", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "130b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 280476
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment='Printer: Oberthur Fiduciaire',
      signatures='[{"signer_name": "Thapelo Matsheka", "title": "Minister of Finance"}, {"signer_name": "Moses Dinekere Pelaelo", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "130b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 280487, 642197,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Yinager Dessie", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 280487
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Yinager Dessie", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 281700, 643955,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 281700
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 283221, 645996,
  TRUE, 2021, NULL, NULL,
  NULL, NULL,
  NULL, 'TBB#361- Signature: Fazle Kabir',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 283221
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=NULL, day=NULL,
      mintage=NULL, comment='TBB#361- Signature: Fazle Kabir',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 288344, 654058,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Alvin Hilaire", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 288344
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Alvin Hilaire", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 290074, 656658,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Alvin Hilaire", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 290074
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Alvin Hilaire", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 290678, 657508,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 290678
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 290679, 657509,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 290679
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 290680, 657510,
  TRUE, 1921, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 290680
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 292244, 660857,
  FALSE, NULL, NULL, NULL,
  1936, 1936,
  NULL, 'Lao text Type I',
  '[{"signer_name": "Marcel Borduge", "title": "President"}, {"signer_name": "Paul Baudouin", "title": "General director"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "54b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 292244
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Lao text Type I',
      signatures='[{"signer_name": "Marcel Borduge", "title": "President"}, {"signer_name": "Paul Baudouin", "title": "General director"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "54b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 294054, 666174,
  TRUE, 1922, 7, 1,
  NULL, NULL,
  NULL, 'Letter L',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 294054
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=7, day=1,
      mintage=NULL, comment='Letter L',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 295661, 669134,
  TRUE, 1922, 4, 22,
  NULL, NULL,
  NULL, 'Hard paper',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 295661
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1922, month=4, day=22,
      mintage=NULL, comment='Hard paper',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 300216, 677787,
  FALSE, NULL, NULL, NULL,
  2021, 2021,
  NULL, NULL,
  '[{"signer_name": "Mark Brown", "title": "Minister of Finance"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 300216
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Mark Brown", "title": "Minister of Finance"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 300636, 678585,
  TRUE, 2021, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 300636
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 300696, 678675,
  TRUE, 2019, 3, 21,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Julio Emilio Velarde Flores \"3rd sign\"", "title": "President"}, {"signer_name": "Luis Miguel Palomino Bonilla", "title": "Director"}, {"signer_name": "Renzo Rossini Miñán", "title": "General Manager"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B537a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 300696
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=3, day=21,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Julio Emilio Velarde Flores \"3rd sign\"", "title": "President"}, {"signer_name": "Luis Miguel Palomino Bonilla", "title": "Director"}, {"signer_name": "Renzo Rossini Miñán", "title": "General Manager"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B537a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 302331, 681259,
  TRUE, 2009, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Ivan Iskrov", "title": "Governor"}, {"signer_name": "Stefan Tzvetkov", "title": "Chief Cashier"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "116b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 302331
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2009, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Ivan Iskrov", "title": "Governor"}, {"signer_name": "Stefan Tzvetkov", "title": "Chief Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "116b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 303182, 682956,
  TRUE, 2020, 1, 1,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 303182
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=1, day=1,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 304715, 685510,
  TRUE, 2020, 12, 23,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Osvaldo Tavares dos Santos Vaz", "title": "Minister of Finance, Commerce and Blue Economy"}, {"signer_name": "Américo Cardoso Soares de Barros", "title": "Governor of Central Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 304715
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=12, day=23,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Osvaldo Tavares dos Santos Vaz", "title": "Minister of Finance, Commerce and Blue Economy"}, {"signer_name": "Américo Cardoso Soares de Barros", "title": "Governor of Central Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 304719, 685514,
  TRUE, 2020, 12, 23,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Osvaldo Tavares dos Santos Vaz", "title": "Minister of Finance, Commerce and Blue Economy"}, {"signer_name": "Américo Cardoso Soares de Barros", "title": "Governor of Central Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 304719
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=12, day=23,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Osvaldo Tavares dos Santos Vaz", "title": "Minister of Finance, Commerce and Blue Economy"}, {"signer_name": "Américo Cardoso Soares de Barros", "title": "Governor of Central Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 306846, 689490,
  TRUE, 2021, 1, 6,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Gerardo Esquivel Hernández", "title": "Deputy Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B721a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 306846
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=1, day=6,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Gerardo Esquivel Hernández", "title": "Deputy Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B721a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 308516, 692008,
  TRUE, 2019, 9, 20,
  NULL, NULL,
  45000000, 'Series C. Signatures: Rodrigo Cubero B. & Eduardo Prado Z. (000 000 001 - 049 075 117​)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 308516
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=9, day=20,
      mintage=45000000, comment='Series C. Signatures: Rodrigo Cubero B. & Eduardo Prado Z. (000 000 001 - 049 075 117​)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 310606, 695379,
  TRUE, 2021, 3, 31,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Gerardo Esquivel Hernández", "title": "Deputy Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B714a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 310606
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=3, day=31,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Gerardo Esquivel Hernández", "title": "Deputy Governor"}, {"signer_name": "Alejandro Alegre Rabiela", "title": "Main Cashier"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B714a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 312894, 699145,
  TRUE, 2020, 8, 21,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Albert Mena", "title": "Commissioner of Currency"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 312894
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=8, day=21,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Albert Mena", "title": "Commissioner of Currency"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 312895, 699146,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  200000000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 312895
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=200000000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 312896, 699147,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  200000000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 312896
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=200000000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 315784, 704033,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: CU - CW',
  '[{"signer_name": "Emomali Sharipovich Rahmon", "title": "President of Tajikistan"}, {"signer_name": "Jamshed Nurmahmadzoda", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B217a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 315784
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: CU - CW',
      signatures='[{"signer_name": "Emomali Sharipovich Rahmon", "title": "President of Tajikistan"}, {"signer_name": "Jamshed Nurmahmadzoda", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B217a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 316600, 705224,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: AA-BL',
  '[{"signer_name": "Rodrigo Duterte", "title": "President of the Philippines"}, {"signer_name": "Benjamin Diokno", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1108a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 316600
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: AA-BL',
      signatures='[{"signer_name": "Rodrigo Duterte", "title": "President of the Philippines"}, {"signer_name": "Benjamin Diokno", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1108a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 316600, 811248,
  TRUE, 2023, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix: BQ-CF',
  '[{"signer_name": "Ferdinand R. Marcos", "title": "President of the Philippines"}, {"signer_name": "Felipe Medalla", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1108c"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 316600
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2023, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix: BQ-CF',
      signatures='[{"signer_name": "Ferdinand R. Marcos", "title": "President of the Philippines"}, {"signer_name": "Felipe Medalla", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1108c"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 317249, 706302,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, 'Signature: Byadran Lkhagvasüren',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B444a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 317249
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment='Signature: Byadran Lkhagvasüren',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B444a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 317869, 720737,
  FALSE, NULL, NULL, NULL,
  2022, 2024,
  NULL, 'Type II; prefix 0 B/ข~3 J/ธ; 4 E/ง~0 F/จ, 0~7 A/พ; 0,2,3 B/พ; see comments',
  '[{"signer_name": "Arkhom Termpittayapaisith", "title": "Minister of Finance"}, {"signer_name": "Sethaput Suthiwartnaruepu", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "142b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 317869
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Type II; prefix 0 B/ข~3 J/ธ; 4 E/ง~0 F/จ, 0~7 A/พ; 0,2,3 B/พ; see comments',
      signatures='[{"signer_name": "Arkhom Termpittayapaisith", "title": "Minister of Finance"}, {"signer_name": "Sethaput Suthiwartnaruepu", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "142b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 318041, 707770,
  TRUE, 2021, NULL, NULL,
  NULL, NULL,
  25000, 'Distributed separately, Series ЯА 0000001-0005000, Series ЯА 0010000-0030000',
  '[{"signer_name": "Kyrylo Yevhenovych Shevchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 318041
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=NULL, day=NULL,
      mintage=25000, comment='Distributed separately, Series ЯА 0000001-0005000, Series ЯА 0010000-0030000',
      signatures='[{"signer_name": "Kyrylo Yevhenovych Shevchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 318306, 708172,
  TRUE, 2020, 11, 28,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 318306
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=11, day=28,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 318927, 709093,
  FALSE, NULL, NULL, NULL,
  2021, 2021,
  NULL, 'Released in late February 2022.',
  '[{"signer_name": "Bobind Ganga", "title": "Governor"}, {"signer_name": "Bharrat Jagdeo", "title": "Vice President"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 318927
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Released in late February 2022.',
      signatures='[{"signer_name": "Bobind Ganga", "title": "Governor"}, {"signer_name": "Bharrat Jagdeo", "title": "Vice President"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 319152, 709546,
  TRUE, 2020, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Gent Sejko", "title": "Governor"}, {"signer_name": "Virjon Lalollari", "title": "Director"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 319152
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Gent Sejko", "title": "Governor"}, {"signer_name": "Virjon Lalollari", "title": "Director"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 320406, 711422,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Cleviston L. Haynes", "title": "Governor, Central Bank of Barbados"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "239a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 320406
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Cleviston L. Haynes", "title": "Governor, Central Bank of Barbados"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "239a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 320408, 711424,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Cleviston L. Haynes", "title": "Governor, Central Bank of Barbados"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "240a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 320408
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Cleviston L. Haynes", "title": "Governor, Central Bank of Barbados"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "240a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 320433, 711459,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Cleviston L. Haynes", "title": "Governor, Central Bank of Barbados"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 320433
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Cleviston L. Haynes", "title": "Governor, Central Bank of Barbados"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 320571, 711668,
  TRUE, 2021, 4, 26,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 320571
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=4, day=26,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 321377, 713180,
  TRUE, 1921, 9, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 321377
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 321390, 713195,
  TRUE, 1921, 9, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 321390
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 321391, 713196,
  TRUE, 1921, 9, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 321391
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 321392, 713197,
  TRUE, 1921, 9, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 321392
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1921, month=9, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 323351, 716284,
  TRUE, 1914, 8, 12,
  NULL, NULL,
  NULL, 'With underprint, blue seal & serial #, series: 1- 120 (issued 1920)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 323351
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1914, month=8, day=12,
      mintage=NULL, comment='With underprint, blue seal & serial #, series: 1- 120 (issued 1920)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 323392, 832799,
  TRUE, 2018, NULL, NULL,
  NULL, NULL,
  NULL, 'Prefix Y',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 323392
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=NULL, day=NULL,
      mintage=NULL, comment='Prefix Y',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 324037, 717750,
  FALSE, NULL, NULL, NULL,
  2022, 2022,
  2000000, 'Prefix: FIJ, GFG',
  '[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B533a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 324037
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=2000000, comment='Prefix: FIJ, GFG',
      signatures='[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B533a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 324910, 719578,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, 'Printer: G&D',
  '[{"signer_name": "Héctor Valdez Albizu", "title": "Central Bank Governor"}, {"signer_name": "Donald Guerrero Ortiz", "title": "Minister of Finance"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "728b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 324910
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment='Printer: G&D',
      signatures='[{"signer_name": "Héctor Valdez Albizu", "title": "Central Bank Governor"}, {"signer_name": "Donald Guerrero Ortiz", "title": "Minister of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "728b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 326931, 722873,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Sheikh Mansour bin Zayed Al Nahyan", "title": "Chairman"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 326931
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Sheikh Mansour bin Zayed Al Nahyan", "title": "Chairman"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 326933, 722875,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Sheikh Mansour bin Zayed Al Nahyan", "title": "Chairman"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "247a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 326933
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Sheikh Mansour bin Zayed Al Nahyan", "title": "Chairman"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "247a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 329458, 726953,
  TRUE, 2022, 6, 1,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Richard Owen Byles", "title": "Governor, Bank of Jamaica"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 329458
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=6, day=1,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Richard Owen Byles", "title": "Governor, Bank of Jamaica"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 329459, 726954,
  TRUE, 2022, 6, 1,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Richard Owen Byles", "title": "Governor, Bank of Jamaica"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 329459
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=6, day=1,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Richard Owen Byles", "title": "Governor, Bank of Jamaica"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 332533, 732350,
  FALSE, NULL, NULL, NULL,
  2022, 2023,
  NULL, '(د/1) to (د/49)',
  '[{"signer_name": "Tarek Hassan Amer", "title": "Governor, Central Bank of Egypt"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 332533
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='(د/1) to (د/49)',
      signatures='[{"signer_name": "Tarek Hassan Amer", "title": "Governor, Central Bank of Egypt"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 332536, 794267,
  FALSE, NULL, NULL, NULL,
  2023, 2026,
  NULL, '(ط/1) to (ط/36) As of May 2026',
  '[{"signer_name": "Hassan Abdullah", "title": "Governor, Central Bank of Egypt"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 332536
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='(ط/1) to (ط/36) As of May 2026',
      signatures='[{"signer_name": "Hassan Abdullah", "title": "Governor, Central Bank of Egypt"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 336627, 752354,
  FALSE, NULL, NULL, NULL,
  2022, 2022,
  NULL, 'Serial number prefix - ''AB''.',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 336627
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Serial number prefix - ''AB''.',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 337073, 748303,
  FALSE, NULL, NULL, NULL,
  2022, 2022,
  NULL, 'No UV activity on left serial number',
  '[{"signer_name": "Jameel Ahmed", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 337073
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='No UV activity on left serial number',
      signatures='[{"signer_name": "Jameel Ahmed", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 338501, 741692,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures : Mulyani Indrawati, Perry Warjiyo',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "617a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 338501
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures : Mulyani Indrawati, Perry Warjiyo',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "617a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 338503, 741696,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, 'Issue year: 2022 (text "Peruri TC 2022" at lower left on back) - Signatures : Mulyani Indrawati, Perry Warjiyo',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "163a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 338503
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment='Issue year: 2022 (text "Peruri TC 2022" at lower left on back) - Signatures : Mulyani Indrawati, Perry Warjiyo',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "163a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 338505, 741698,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures : Mulyani Indrawati, Perry Warjiyo',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 338505
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures : Mulyani Indrawati, Perry Warjiyo',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 338506, 741699,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures : Mulyani Indrawati, Perry Warjiyo',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 338506
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures : Mulyani Indrawati, Perry Warjiyo',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 338508, 741701,
  TRUE, 2022, NULL, NULL,
  NULL, NULL,
  NULL, 'Signatures : Mulyani Indrawati, Perry Warjiyo',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 338508
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=NULL, day=NULL,
      mintage=NULL, comment='Signatures : Mulyani Indrawati, Perry Warjiyo',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 346780, 871300,
  TRUE, 1910, 4, 21,
  NULL, NULL,
  NULL, 'Serial number 7 digits',
  '[{"signer_name": "Rudolf Havenstein", "title": "President"}, {"signer_name": "Otto von Glasenapp", "title": "Director"}, {"signer_name": "Oskar Schmiedicke", "title": "Director"}, {"signer_name": "Korn", "title": "Director"}, {"signer_name": "Erich Maron", "title": "Director"}, {"signer_name": "Karl von Lumm", "title": "Director"}, {"signer_name": "Karl von Grimm", "title": "Director"}, {"signer_name": "Carl Kauffmann", "title": "Director"}, {"signer_name": "Paul Schneider", "title": "Director"}, {"signer_name": "Arnold Budczies", "title": "Director"}]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "44b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 346780
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=1910, month=4, day=21,
      mintage=NULL, comment='Serial number 7 digits',
      signatures='[{"signer_name": "Rudolf Havenstein", "title": "President"}, {"signer_name": "Otto von Glasenapp", "title": "Director"}, {"signer_name": "Oskar Schmiedicke", "title": "Director"}, {"signer_name": "Korn", "title": "Director"}, {"signer_name": "Erich Maron", "title": "Director"}, {"signer_name": "Karl von Lumm", "title": "Director"}, {"signer_name": "Karl von Grimm", "title": "Director"}, {"signer_name": "Carl Kauffmann", "title": "Director"}, {"signer_name": "Paul Schneider", "title": "Director"}, {"signer_name": "Arnold Budczies", "title": "Director"}]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "44b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 347532, 755702,
  TRUE, 2022, 11, 9,
  NULL, NULL,
  6000000, 'Issued note; series: Q/1 - Q/6',
  '[{"signer_name": "Bandar Bin Mohammed Bin Saoud Al-Thani", "title": "Governor"}, {"signer_name": "Ali bin Ahmed al Kuwari", "title": "Minister of Finance"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 347532
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2022, month=11, day=9,
      mintage=6000000, comment='Issued note; series: Q/1 - Q/6',
      signatures='[{"signer_name": "Bandar Bin Mohammed Bin Saoud Al-Thani", "title": "Governor"}, {"signer_name": "Ali bin Ahmed al Kuwari", "title": "Minister of Finance"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 349608, 759606,
  FALSE, NULL, NULL, NULL,
  2022, NULL,
  NULL, NULL,
  '[{"signer_name": "Salah Eddine Taleb", "title": "Governor"}, {"signer_name": "Belkacem Delindi", "title": "General Director of Public Treasury"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 349608
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Salah Eddine Taleb", "title": "Governor"}, {"signer_name": "Belkacem Delindi", "title": "General Director of Public Treasury"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 353522, 766765,
  TRUE, 2019, 5, 20,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "144a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 353522
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=5, day=20,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "144a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 353523, 766767,
  TRUE, 2019, 5, 20,
  NULL, NULL,
  NULL, 'without Signature',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 353523
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=5, day=20,
      mintage=NULL, comment='without Signature',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 353547, 766823,
  TRUE, 2023, 2, 9,
  NULL, NULL,
  100000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 353547
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2023, month=2, day=9,
      mintage=100000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 353863, 767241,
  TRUE, 2021, NULL, NULL,
  NULL, NULL,
  30000, 'Series ГС 0000001–0050000',
  '[{"signer_name": "Kyrylo Yevhenovych Shevchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 353863
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2021, month=NULL, day=NULL,
      mintage=30000, comment='Series ГС 0000001–0050000',
      signatures='[{"signer_name": "Kyrylo Yevhenovych Shevchenko", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 357153, 773247,
  TRUE, 2023, NULL, NULL,
  NULL, NULL,
  99952, 'Distributed in envelope; Series 3C 0000001-0300000',
  '[{"signer_name": "Pyshnyi Andrii Hryhorovych", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 357153
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2023, month=NULL, day=NULL,
      mintage=99952, comment='Distributed in envelope; Series 3C 0000001-0300000',
      signatures='[{"signer_name": "Pyshnyi Andrii Hryhorovych", "title": "Chairman of the National Bank of Ukraine"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 362935, 783140,
  FALSE, NULL, NULL, NULL,
  1938, 1938,
  NULL, 'P#M22a; Without handstamp',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 362935
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='P#M22a; Without handstamp',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 365097, 786586,
  FALSE, NULL, NULL, NULL,
  2023, 2023,
  NULL, NULL,
  '[{"signer_name": "Lesetja Kganyago", "title": "Governor of the South African Reserve Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 365097
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Lesetja Kganyago", "title": "Governor of the South African Reserve Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 365101, 786590,
  FALSE, NULL, NULL, NULL,
  2023, 2023,
  NULL, '(fr) E. Lesetja Kganyago',
  '[{"signer_name": "Lesetja Kganyago", "title": "Governor of the South African Reserve Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 365101
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='(fr) E. Lesetja Kganyago',
      signatures='[{"signer_name": "Lesetja Kganyago", "title": "Governor of the South African Reserve Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 365103, 786592,
  FALSE, NULL, NULL, NULL,
  2023, 2023,
  NULL, NULL,
  '[{"signer_name": "Lesetja Kganyago", "title": "Governor of the South African Reserve Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 365103
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Lesetja Kganyago", "title": "Governor of the South African Reserve Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 366923, 789510,
  FALSE, NULL, NULL, NULL,
  2023, 2023,
  NULL, 'Series A, B, C, D Series',
  '[{"signer_name": "Cecilia Moreau", "title": "President H. C. Deputies"}, {"signer_name": "Miguel Angel Pesce", "title": "President B. C. R. A."}]'::jsonb, '[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "C8001-C8004"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "N02"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 366923
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series A, B, C, D Series',
      signatures='[{"signer_name": "Cecilia Moreau", "title": "President H. C. Deputies"}, {"signer_name": "Miguel Angel Pesce", "title": "President B. C. R. A."}]'::jsonb, issue_references='[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "C8001-C8004"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "N02"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 367021, 789712,
  TRUE, 2020, 4, NULL,
  NULL, NULL,
  20000000, 'Issued note',
  '[{"signer_name": "Anita Angelovska-Bežoska", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "101a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 367021
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=4, day=NULL,
      mintage=20000000, comment='Issued note',
      signatures='[{"signer_name": "Anita Angelovska-Bežoska", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "101a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 367517, 790546,
  TRUE, 2023, 10, 27,
  NULL, NULL,
  1000000, 'Prefix - ''SI/23''.',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 367517
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2023, month=10, day=27,
      mintage=1000000, comment='Prefix - ''SI/23''.',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 369460, 794220,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, 'Printer: CMCh',
  '[{"signer_name": "Héctor Valdez Albizu", "title": "Central Bank Governor"}, {"signer_name": "Donald Guerrero Ortiz", "title": "Minister of Finance"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B727b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 369460
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment='Printer: CMCh',
      signatures='[{"signer_name": "Héctor Valdez Albizu", "title": "Central Bank Governor"}, {"signer_name": "Donald Guerrero Ortiz", "title": "Minister of Finance"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B727b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 370853, 835060,
  TRUE, 2023, NULL, NULL,
  NULL, NULL,
  NULL, 'Replacement (Z prefix)',
  '[{"signer_name": "Jameel Ahmed", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "241ar"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 370853
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2023, month=NULL, day=NULL,
      mintage=NULL, comment='Replacement (Z prefix)',
      signatures='[{"signer_name": "Jameel Ahmed", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "241ar"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 372606, 799123,
  FALSE, NULL, NULL, NULL,
  2023, 2024,
  NULL, 'Series A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S',
  '[{"signer_name": "Cecilia Moreau", "title": "President H. C. Deputies"}, {"signer_name": "Miguel Angel Pesce", "title": "President B. C. R. A."}]'::jsonb, '[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "7001-7016"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "N01"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 372606
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S',
      signatures='[{"signer_name": "Cecilia Moreau", "title": "President H. C. Deputies"}, {"signer_name": "Miguel Angel Pesce", "title": "President B. C. R. A."}]'::jsonb, issue_references='[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "7001-7016"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "N01"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 373808, 801327,
  FALSE, NULL, NULL, NULL,
  2023, 2023,
  950000, NULL,
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "BNP514a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 373808
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=950000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "BNP514a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 385520, 819946,
  FALSE, NULL, NULL, NULL,
  2024, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 385520
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 386522, 821238,
  FALSE, NULL, NULL, NULL,
  2023, 2024,
  NULL, 'Serie E,F,G,H,I,J,M,N,O',
  '[{"signer_name": "Cecilia Moreau", "title": "President H. C. Deputies"}, {"signer_name": "Miguel Angel Pesce", "title": "President B. C. R. A."}]'::jsonb, '[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "8001-8010"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "N03"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 386522
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Serie E,F,G,H,I,J,M,N,O',
      signatures='[{"signer_name": "Cecilia Moreau", "title": "President H. C. Deputies"}, {"signer_name": "Miguel Angel Pesce", "title": "President B. C. R. A."}]'::jsonb, issue_references='[{"catalogue": {"id": 1841, "code": "Bottero"}, "number": "8001-8010"}, {"catalogue": {"id": 2881, "code": "Colantonio"}, "number": "N03"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 388977, 824802,
  FALSE, NULL, NULL, NULL,
  2023, 2023,
  2000000, NULL,
  '[{"signer_name": "Timothy Antoine", "title": "Governor of the Central Bank"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 388977
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=2000000, comment=NULL,
      signatures='[{"signer_name": "Timothy Antoine", "title": "Governor of the Central Bank"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 393958, 833380,
  FALSE, NULL, NULL, NULL,
  2023, 2023,
  NULL, 'Issued note; Prefix AA',
  '[{"signer_name": "Lautimuia Uelese Vaʻai", "title": "Minister of Finance"}, {"signer_name": "Maiava Atalina Emma Ainuu-Enari \"2nd sign\"", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 393958
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Prefix AA',
      signatures='[{"signer_name": "Lautimuia Uelese Vaʻai", "title": "Minister of Finance"}, {"signer_name": "Maiava Atalina Emma Ainuu-Enari \"2nd sign\"", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 394749, 834546,
  TRUE, 2024, 1, 3,
  NULL, NULL,
  100000000, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 394749
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=1, day=3,
      mintage=100000000, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 396840, 837402,
  TRUE, 2019, NULL, NULL,
  NULL, NULL,
  NULL, 'Serial # prefix 19',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 396840
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2019, month=NULL, day=NULL,
      mintage=NULL, comment='Serial # prefix 19',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 396843, 837410,
  TRUE, 2018, 1, 1,
  NULL, NULL,
  NULL, 'Serial # prefix 18',
  '[]'::jsonb, '[{"catalogue": {"id": 931, "code": "P"}, "number": "119j"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 396843
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2018, month=1, day=1,
      mintage=NULL, comment='Serial # prefix 18',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 931, "code": "P"}, "number": "119j"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 397454, 838279,
  FALSE, NULL, NULL, NULL,
  2023, 2023,
  NULL, 'Issued note; Prefix CC',
  '[{"signer_name": "Lautimuia Uelese Vaʻai", "title": "Minister of Finance"}, {"signer_name": "Maiava Atalina Emma Ainuu-Enari \"2nd sign\"", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 397454
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note; Prefix CC',
      signatures='[{"signer_name": "Lautimuia Uelese Vaʻai", "title": "Minister of Finance"}, {"signer_name": "Maiava Atalina Emma Ainuu-Enari \"2nd sign\"", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 400595, 842638,
  TRUE, 2024, 5, 18,
  NULL, NULL,
  NULL, 'Prefix: AA - AJ',
  '[{"signer_name": "Carlos Manuel Sobral Cid da Costa Álvares", "title": "Chief Executive Officer"}, {"signer_name": "Cecilia Kou Hoi In", "title": "President of the Executive Committee"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B091a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 400595
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=5, day=18,
      mintage=NULL, comment='Prefix: AA - AJ',
      signatures='[{"signer_name": "Carlos Manuel Sobral Cid da Costa Álvares", "title": "Chief Executive Officer"}, {"signer_name": "Cecilia Kou Hoi In", "title": "President of the Executive Committee"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B091a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 400597, 842641,
  TRUE, 2020, 5, 18,
  NULL, NULL,
  NULL, 'Signature: 李光 (prefixes AB → AD)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 400597
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=5, day=18,
      mintage=NULL, comment='Signature: 李光 (prefixes AB → AD)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 400603, 842647,
  TRUE, 2024, 5, 18,
  NULL, NULL,
  NULL, 'Prefix: AN - BG',
  '[{"signer_name": "Carlos Manuel Sobral Cid da Costa Álvares", "title": "Chief Executive Officer"}, {"signer_name": "Cecilia Kou Hoi In", "title": "President of the Executive Committee"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 400603
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=5, day=18,
      mintage=NULL, comment='Prefix: AN - BG',
      signatures='[{"signer_name": "Carlos Manuel Sobral Cid da Costa Álvares", "title": "Chief Executive Officer"}, {"signer_name": "Cecilia Kou Hoi In", "title": "President of the Executive Committee"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 400604, 842648,
  TRUE, 2020, 5, 18,
  NULL, NULL,
  NULL, 'Signature: 李光 (prefixes AK? → AN)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 400604
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=5, day=18,
      mintage=NULL, comment='Signature: 李光 (prefixes AK? → AN)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 414108, 861546,
  FALSE, NULL, NULL, NULL,
  2024, 2024,
  NULL, 'Series A,B,C,D,E,F,G,H,I,J',
  '[{"signer_name": "Victoria Villarroel", "title": "President H. C. Senators"}, {"signer_name": "Santiago Bausili", "title": "President B. C. R. A."}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 414108
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series A,B,C,D,E,F,G,H,I,J',
      signatures='[{"signer_name": "Victoria Villarroel", "title": "President H. C. Senators"}, {"signer_name": "Santiago Bausili", "title": "President B. C. R. A."}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 422155, 874891,
  TRUE, 2024, 6, 16,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B240a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 422155
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=6, day=16,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B240a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 422160, 874896,
  TRUE, 2024, 6, 16,
  NULL, NULL,
  NULL, '(fr) Signature : Rogério Zandamela',
  '[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B241a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 422160
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=6, day=16,
      mintage=NULL, comment='(fr) Signature : Rogério Zandamela',
      signatures='[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B241a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 422177, 874916,
  TRUE, 2024, 6, 16,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 422177
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=6, day=16,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 425299, 880805,
  TRUE, 2024, 6, 16,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 425299
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=6, day=16,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 425341, 880871,
  TRUE, 2024, 6, 16,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 425341
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=6, day=16,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 425343, 880873,
  TRUE, 2024, 6, 16,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 425343
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=6, day=16,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Rogério Zandamela", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 429035, 910392,
  TRUE, 2024, 11, 15,
  NULL, NULL,
  NULL, 'Gerente General - Vinicio Cáceres; Presidente-Alvaro González Ricci',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 429035
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=11, day=15,
      mintage=NULL, comment='Gerente General - Vinicio Cáceres; Presidente-Alvaro González Ricci',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 433177, 893813,
  TRUE, 2024, 6, 28,
  NULL, NULL,
  NULL, 'Signatures: Hakuziyaremye/Rwangombwa',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 433177
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=6, day=28,
      mintage=NULL, comment='Signatures: Hakuziyaremye/Rwangombwa',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 433179, 893815,
  TRUE, 2024, 6, 28,
  NULL, NULL,
  NULL, 'Signatures: Hakuziyaremye/Rwangombwa',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 433179
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=6, day=28,
      mintage=NULL, comment='Signatures: Hakuziyaremye/Rwangombwa',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 444384, 911387,
  TRUE, 2024, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 444384
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 444488, 911600,
  TRUE, 2024, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 444488
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 444491, 911603,
  TRUE, 2024, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 444491
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 446654, 914883,
  TRUE, 2024, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Ferdinand R. Marcos", "title": "President of the Philippines"}, {"signer_name": "Eli Remolona", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1107a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 446654
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Ferdinand R. Marcos", "title": "President of the Philippines"}, {"signer_name": "Eli Remolona", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1107a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 446774, 915018,
  TRUE, 2024, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Ferdinand R. Marcos", "title": "President of the Philippines"}, {"signer_name": "Eli Remolona", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1106a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 446774
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Ferdinand R. Marcos", "title": "President of the Philippines"}, {"signer_name": "Eli Remolona", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1106a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 446780, 915044,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Ferdinand R. Marcos", "title": "President of the Philippines"}, {"signer_name": "Eli Remolona", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1105b"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 446780
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Ferdinand R. Marcos", "title": "President of the Philippines"}, {"signer_name": "Eli Remolona", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B1105b"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 447195, 915692,
  TRUE, 2025, 1, 3,
  NULL, NULL,
  NULL, NULL,
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 447195
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=1, day=3,
      mintage=NULL, comment=NULL,
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 456482, 930679,
  TRUE, 2020, 5, 18,
  NULL, NULL,
  80000000, 'Signature: 賈天兵 (Director-Geral da Sucursal de Macau)',
  '[]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 456482
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2020, month=5, day=18,
      mintage=80000000, comment='Signature: 賈天兵 (Director-Geral da Sucursal de Macau)',
      signatures='[]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 458812, 934206,
  TRUE, 2025, 3, 17,
  NULL, NULL,
  2000000, NULL,
  '[{"signer_name": "Johannes !Gawaxab", "title": "Governor of the Bank of Namibia"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "219"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 458812
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=3, day=17,
      mintage=2000000, comment=NULL,
      signatures='[{"signer_name": "Johannes !Gawaxab", "title": "Governor of the Bank of Namibia"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "219"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 460163, 936341,
  FALSE, NULL, NULL, NULL,
  2025, NULL,
  NULL, NULL,
  '[{"signer_name": "Mohammad Reza Farzin", "title": "President"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "303a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 460163
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Mohammad Reza Farzin", "title": "President"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "303a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 462121, 939370,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, 'Issued note',
  '[{"signer_name": "Sheikh Mansour bin Zayed Al Nahyan", "title": "Chairman"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 462121
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment='Issued note',
      signatures='[{"signer_name": "Sheikh Mansour bin Zayed Al Nahyan", "title": "Chairman"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 464541, 943417,
  TRUE, 2025, 3, 31,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Richard A. Doornbosch", "title": "President"}, {"signer_name": "Leila A. Matroos-Lasten", "title": "Director Secretary"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B102a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 464541
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=3, day=31,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Richard A. Doornbosch", "title": "President"}, {"signer_name": "Leila A. Matroos-Lasten", "title": "Director Secretary"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B102a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 466014, 946001,
  FALSE, NULL, NULL, NULL,
  2025, 2025,
  NULL, 'Series 2',
  '[{"signer_name": "Naji Mohammed Issa Belqasem", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "553a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 466014
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment='Series 2',
      signatures='[{"signer_name": "Naji Mohammed Issa Belqasem", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "553a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 467667, 948834,
  TRUE, 2024, 7, 10,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Óscar Humberto Évora Santos", "title": "Governor"}, {"signer_name": "Antônia Lopes", "title": "Administrator"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "224a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 467667
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=7, day=10,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Óscar Humberto Évora Santos", "title": "Governor"}, {"signer_name": "Antônia Lopes", "title": "Administrator"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "224a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 470634, 953510,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, 'Signature: Ahsan Habib Mansur',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B371a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 470634
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment='Signature: Ahsan Habib Mansur',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B371a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 480195, 969329,
  TRUE, 2025, 2, 1,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Kareem Michael \"3rd sign\"", "title": "Governor"}, {"signer_name": "Joseph D. Waight", "title": "Financial Secretary"}, {"signer_name": "Sydney Campbell", "title": "Director"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "336a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 480195
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=2, day=1,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Kareem Michael \"3rd sign\"", "title": "Governor"}, {"signer_name": "Joseph D. Waight", "title": "Financial Secretary"}, {"signer_name": "Sydney Campbell", "title": "Director"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "336a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 483424, 974600,
  TRUE, 2025, 8, 28,
  NULL, NULL,
  50000000, NULL,
  '[{"signer_name": "Anura Kumara Dissanayake", "title": "Finance Minister"}, {"signer_name": "P. Nandalal Weerasinghe", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "249"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 483424
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=8, day=28,
      mintage=50000000, comment=NULL,
      signatures='[{"signer_name": "Anura Kumara Dissanayake", "title": "Finance Minister"}, {"signer_name": "P. Nandalal Weerasinghe", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "249"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 484713, 976560,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Elizabeth Genia", "title": "Governor"}, {"signer_name": "Andrew F. Oaeke", "title": "Secretary, Department of Treasury"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 484713
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Elizabeth Genia", "title": "Governor"}, {"signer_name": "Andrew F. Oaeke", "title": "Secretary, Department of Treasury"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 484737, 976596,
  TRUE, 2025, 8, 14,
  NULL, NULL,
  NULL, 'regular prefix - Signature : Rebecca Ross, Pat Clunie, Steven Cannon',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "223"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 484737
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=8, day=14,
      mintage=NULL, comment='regular prefix - Signature : Rebecca Ross, Pat Clunie, Steven Cannon',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "223"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 492781, 986565,
  TRUE, 2024, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Denny Kalyalya \"2nd sign\"", "title": "Governor"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B174a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 492781
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Denny Kalyalya \"2nd sign\"", "title": "Governor"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B174a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 532534, 1030717,
  TRUE, 2024, NULL, NULL,
  NULL, NULL,
  NULL, NULL,
  '[{"signer_name": "Timur Süleimenow", "title": "President of National Bank"}]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B156a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 532534
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2024, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Timur Süleimenow", "title": "President of National Bank"}]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B156a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 541774, 1042629,
  FALSE, NULL, NULL, NULL,
  2026, 2026,
  NULL, NULL,
  '[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 541774
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 541778, 1042633,
  FALSE, NULL, NULL, NULL,
  2026, 2026,
  NULL, NULL,
  '[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 541778
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 541780, 1042635,
  FALSE, NULL, NULL, NULL,
  2026, 2026,
  NULL, NULL,
  '[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 541780
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 541781, 1042636,
  FALSE, NULL, NULL, NULL,
  2026, 2026,
  NULL, NULL,
  '[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 541781
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 541782, 1042637,
  FALSE, NULL, NULL, NULL,
  2026, 2026,
  NULL, NULL,
  '[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, '[]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 541782
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=NULL, month=NULL, day=NULL,
      mintage=NULL, comment=NULL,
      signatures='[{"signer_name": "Faizul Ariff Ali", "title": "Governor"}]'::jsonb, issue_references='[]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 548848, 1050606,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, '٢٠٢٥ / ١٤٤٧',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "638a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 548848
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment='٢٠٢٥ / ١٤٤٧',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "638a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 548849, 1050607,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, '٢٠٢٥ / ١٤٤٧',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B639a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 548849
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment='٢٠٢٥ / ١٤٤٧',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B639a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 548850, 1050608,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, '٢٠٢٥ / ١٤٤٧',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B640a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 548850
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment='٢٠٢٥ / ١٤٤٧',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B640a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 548851, 1050609,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, '٢٠٢٥ / ١٤٤٧',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "641a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 548851
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment='٢٠٢٥ / ١٤٤٧',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "641a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 548854, 1050612,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, '٢٠٢٥ / ١٤٤٧',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B642a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 548854
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment='٢٠٢٥ / ١٤٤٧',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "B642a"}]'::jsonb;
INSERT INTO banknote_issues
  (banknote_id, numista_type_id, numista_issue_id,
   is_dated, year, month, day, min_year, max_year,
   mintage, comment, signatures, issue_references)
SELECT b.id, 553416, 1056533,
  TRUE, 2025, NULL, NULL,
  NULL, NULL,
  NULL, '٢٠٢٥ / ١٤٤٧',
  '[]'::jsonb, '[{"catalogue": {"id": 936, "code": "TBB"}, "number": "637a"}]'::jsonb
FROM banknotes b WHERE b.numista_type_id = 553416
ON CONFLICT (numista_issue_id) DO UPDATE
  SET year=2025, month=NULL, day=NULL,
      mintage=NULL, comment='٢٠٢٥ / ١٤٤٧',
      signatures='[]'::jsonb, issue_references='[{"catalogue": {"id": 936, "code": "TBB"}, "number": "637a"}]'::jsonb;

COMMIT;