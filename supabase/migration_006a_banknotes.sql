-- migration_006a_banknotes.sql
-- Step 1 of 3: Insert 794 banknote types
-- Run AFTER migration_005_issues_schema.sql

BEGIN;

INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201541, '½ Dollar (50 Cents) - Elizabeth II', 0, '½ Dollar (50 Cents) - Elizabeth II', 'Bahamas, The', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201543, '7 Dollars (Fijian Rugby 7s Team)', 0, '7 Dollars (Fijian Rugby 7s Team)', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201556, '20 Dalasis (Yahya Jammeh''s Dictatorship)', 0, '20 Dalasis (Yahya Jammeh''s Dictatorship)', 'Gambia, The', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201562, '10 Francs (9th series)', 0, '10 Francs (9th series)', 'Switzerland (1848-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201566, '5 Dollars (upgraded security)', 0, '5 Dollars (upgraded security)', 'Canada', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201578, '5 Dollars', 0, '5 Dollars', 'Canada', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201585, '20 Dollars', 0, '20 Dollars', 'Canada', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201587, '10 Tālā (Pacific Games)', 0, '10 Tālā (Pacific Games)', 'Samoa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201589, '40 Dollars (40 Years of Independence)', 0, '40 Dollars (40 Years of Independence)', 'Solomon Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201590, '2000 Lei (New Millennium - Total Solar Eclipse)', 0, '2000 Lei (New Millennium - Total Solar Eclipse)', 'Romania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201597, '1 Dollar - Elizabeth II (without devil''s face)', 0, '1 Dollar - Elizabeth II (without devil''s face)', 'Canada', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201604, '5 Gulden', 0, '5 Gulden', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201607, '10 Gulden', 0, '10 Gulden', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201608, '25 Gulden', 0, '25 Gulden', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201614, '100 Gulden', 0, '100 Gulden', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201619, '500 Forint', 0, '500 Forint', 'Hungary', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201623, '50 Pesos Uruguayos (50 years of Central Bank)', 0, '50 Pesos Uruguayos (50 years of Central Bank)', 'Uruguay', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201624, '5 Pounds - Elizabeth II (Sir Winston Churchill; Polymer)', 0, '5 Pounds - Elizabeth II (Sir Winston Churchill; Polymer)', 'England', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201634, '100 Riels - Norodom Sihamoni', 0, '100 Riels - Norodom Sihamoni', 'Cambodia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201641, '5 Lari', 0, '5 Lari', 'Georgia (1991-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201672, '10 Dollars', 0, '10 Dollars', 'Canada', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201686, '5 Francs - Allied Military Currency', 0, '5 Francs - Allied Military Currency', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201688, '¼ Dinar', 0, '¼ Dinar', 'Libya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201697, '1 Dinar', 0, '1 Dinar', 'Libya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201698, '50 Dollars (50 Years of Guyana’s Independence)', 0, '50 Dollars (50 Years of Guyana’s Independence)', 'Guyana', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201713, '5 Reais (2nd. Family)', 0, '5 Reais (2nd. Family)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201714, '1 Dollar (Centennial of Confederation)', 0, '1 Dollar (Centennial of Confederation)', 'Canada', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201721, '500 Riels', 0, '500 Riels', 'Cambodia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201723, '1 Dollar - George VI', 0, '1 Dollar - George VI', 'Canada', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201730, '10 Gulden (IJsvogel)', 0, '10 Gulden (IJsvogel)', 'Netherlands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201738, '1 Austral', 0, '1 Austral', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201751, '50 Kroner (The sea that binds us together)', 0, '50 Kroner (The sea that binds us together)', 'Norway', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201752, '1000 Riels', 0, '1000 Riels', 'Cambodia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201753, '10 Dollars (150 Years of Confederation)', 0, '10 Dollars (150 Years of Confederation)', 'Canada', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201770, '1000 Francs', 0, '1000 Francs', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201796, '500 Gulden', 0, '500 Gulden', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201806, '1000 Won', 0, '1000 Won', 'South Korea', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201827, '500 Yen', 0, '500 Yen', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201892, '20 Pesos', 0, '20 Pesos', 'Mexico', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201894, '1 Peso (El Estado de Chihuahua)', 0, '1 Peso (El Estado de Chihuahua)', 'Chihuahua, State of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201925, '50 Pesetas', 0, '50 Pesetas', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201946, '1000 Hryven', 0, '1000 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (201994, '20 Kronor', 0, '20 Kronor', 'Sweden', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202008, '500 Hryven', 0, '500 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202010, '200 Hryven', 0, '200 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202013, '500 Tenge', 0, '500 Tenge', 'Kazakhstan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202014, '5 Rufiyaa', 0, '5 Rufiyaa', 'Maldives', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202020, '100 Hryven', 0, '100 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202026, '5 Dollars - Elizabeth II', 0, '5 Dollars - Elizabeth II', 'Australia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202028, '200 Tenge', 0, '200 Tenge', 'Kazakhstan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202029, '10 Pula (Polymer issue)', 0, '10 Pula (Polymer issue)', 'Botswana', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202035, '50 Hryven', 0, '50 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202037, '1000 Tenge (Presidency of Islamic Conference)', 0, '1000 Tenge (Presidency of Islamic Conference)', 'Kazakhstan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202039, '20 Hryven', 0, '20 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202045, '20 Hryven (Ivan Franko, 160 Years Anniversary)', 0, '20 Hryven (Ivan Franko, 160 Years Anniversary)', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202100, '100 Cruzados', 0, '100 Cruzados', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202121, '5 Rupees', 0, '5 Rupees', 'India', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202139, '500 Francs', 0, '500 Francs', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202145, '5 Yuan', 0, '5 Yuan', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202153, '20 Piso (Seal type 6; without tactile marks)', 0, '20 Piso (Seal type 6; without tactile marks)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202154, '100 Lei', 0, '100 Lei', 'Romania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202163, '1 Mark (Darlehenskassenschein)', 0, '1 Mark (Darlehenskassenschein)', 'Germany (1871-1948)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202197, '2 Reais (2nd. Family; Casa da Moeda do Brasil)', 0, '2 Reais (2nd. Family; Casa da Moeda do Brasil)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202203, '10 Reais (2nd. Family)', 0, '10 Reais (2nd. Family)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202213, '200 Hryven', 0, '200 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202233, '10 Krónur (Famous men and Faroes landscapes. Type 2: Green)', 0, '10 Krónur (Famous men and Faroes landscapes. Type 2: Green)', 'Faroe Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202240, '50 Hryven', 0, '50 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202244, '2 Dollars (MAS; polymer)', 0, '2 Dollars (MAS; polymer)', 'Singapore', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202248, '20 Hryven', 0, '20 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202259, '20 Rupees', 0, '20 Rupees', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202266, '100 Pesos (1917 Constitution)', 0, '100 Pesos (1917 Constitution)', 'Mexico', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202298, '200 Dirhams', 0, '200 Dirhams', 'Morocco', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202305, '2000 Rupiah', 0, '2000 Rupiah', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202312, '5000 Guaranies (Polymer; Series G-J)', 0, '5000 Guaranies (Polymer; Series G-J)', 'Paraguay', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202322, '20 New Shekels (Rachel Bluwstein)', 0, '20 New Shekels (Rachel Bluwstein)', 'Israel', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202327, '1000 Pesos', 0, '1000 Pesos', 'Chile', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202376, '5 Dollars', 0, '5 Dollars', 'Solomon Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202403, '10 Reais (Pedro Álvares Cabral; Discovery)', 0, '10 Reais (Pedro Álvares Cabral; Discovery)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202523, '10 Pounds - Elizabeth II (Jane Austen; Polymer)', 0, '10 Pounds - Elizabeth II (Jane Austen; Polymer)', 'England', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202534, '50 Dollars', 0, '50 Dollars', 'Solomon Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202537, '200 Rupees (Independence)', 0, '200 Rupees (Independence)', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202541, '1 Rupee', 0, '1 Rupee', 'India', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202542, '1000 Rupees (70th Independence Celebration)', 0, '1000 Rupees (70th Independence Celebration)', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202546, '100 Yen', 0, '100 Yen', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202575, '2000 Tenge (7th Asian Winter Games)', 0, '2000 Tenge (7th Asian Winter Games)', 'Kazakhstan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202599, '10 Rufiyaa', 0, '10 Rufiyaa', 'Maldives', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202605, '20 Rufiyaa', 0, '20 Rufiyaa', 'Maldives', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202610, '50 Rufiyaa', 0, '50 Rufiyaa', 'Maldives', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202623, '10 Dollars', 0, '10 Dollars', 'Solomon Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202625, '20 Dollars', 0, '20 Dollars', 'Solomon Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202634, '5 Australes', 0, '5 Australes', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202636, '10 Emalangeni - Mswati III (Vision 2022)', 0, '10 Emalangeni - Mswati III (Vision 2022)', 'Swaziland, Kingdom of (1968-2018)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202649, '50 Zlotys (Pope John Paul II)', 0, '50 Zlotys (Pope John Paul II)', 'Poland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202652, '1 Dinar (Thin marks for the blind)', 0, '1 Dinar (Thin marks for the blind)', 'Bahrain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202670, '20 Kronor (small type)', 0, '20 Kronor (small type)', 'Sweden', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202676, '10 Hryven', 0, '10 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202679, '10 Hryven', 0, '10 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202688, '1 Yuan', 0, '1 Yuan', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202690, '5 Hryven', 0, '5 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202693, '2 Hryvni', 0, '2 Hryvni', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202697, '1 Hryvnia', 0, '1 Hryvnia', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202730, '10 000 Lire (Volta)', 0, '10 000 Lire (Volta)', 'Italy', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202736, '1 Krone', 0, '1 Krone', 'Austria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202738, '1000 Lire', 0, '1000 Lire', 'Italy', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202742, '2 Kronen', 0, '2 Kronen', 'Austria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202754, '3 Dollars', 0, '3 Dollars', 'Cook Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202755, '10 Dollars', 0, '10 Dollars', 'Cook Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202776, '1 Hryvnia', 0, '1 Hryvnia', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202794, '500 Francs / 100 Ariary', 0, '500 Francs / 100 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202805, '200 Lekë', 0, '200 Lekë', 'Albania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202816, '1 Leu', 0, '1 Leu', 'Moldova', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202835, '10 Dollars (polymer)', 0, '10 Dollars (polymer)', 'Hong Kong', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202853, '10 Francs - Voltaire (type 1963)', 0, '10 Francs - Voltaire (type 1963)', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202854, '20 Hryven', 0, '20 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202859, '10 Hryven', 0, '10 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202860, '10 Dollars', 0, '10 Dollars', 'Australia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202861, '10 Pounds', 0, '10 Pounds', 'Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202862, '5 Hryven', 0, '5 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202867, '2 Hryvni', 0, '2 Hryvni', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202869, '1 Hryvnia', 0, '1 Hryvnia', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202873, '50 Francs / 10 Ariary', 0, '50 Francs / 10 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202880, '50 Riels', 0, '50 Riels', 'Cambodia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202885, '1000 Shillings', 0, '1000 Shillings', 'Tanzania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202898, '100 Ariary', 0, '100 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202900, '200 Ariary', 0, '200 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202902, '500 Ariary', 0, '500 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202908, '1000 Ariary', 0, '1000 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202911, '50 Yuan (National Currency)', 0, '50 Yuan (National Currency)', 'Taiwan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202960, '5 Rupees (Dated Reverse)', 0, '5 Rupees (Dated Reverse)', 'India', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202977, '20 Zlotys (Frédéric Chopin)', 0, '20 Zlotys (Frédéric Chopin)', 'Poland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202979, '20 Zlotys (Marie Skłodowska-Curie)', 0, '20 Zlotys (Marie Skłodowska-Curie)', 'Poland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202985, '2000 Ariary', 0, '2000 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202993, '5000 Ariary', 0, '5000 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (202997, '½ Dinar', 0, '½ Dinar', 'Libya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203011, '20 Tolarjev', 0, '20 Tolarjev', 'Slovenia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203027, '5 Dinars (Emergency Issue)', 0, '5 Dinars (Emergency Issue)', 'Iraq', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203032, '2000 Yen', 0, '2000 Yen', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203034, '100 Ariary / 500 Francs', 0, '100 Ariary / 500 Francs', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203037, '5 Dollars (MAS; polymer)', 0, '5 Dollars (MAS; polymer)', 'Singapore', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203046, '200 Ariary / 1000 Francs', 0, '200 Ariary / 1000 Francs', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203053, '5 Dirams', 0, '5 Dirams', 'Tajikistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203054, '20 Dirams', 0, '20 Dirams', 'Tajikistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203064, '10 Naira', 0, '10 Naira', 'Nigeria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203070, '500 Krónur (No top and bottom border)', 0, '500 Krónur (No top and bottom border)', 'Iceland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203073, '5 Francs', 0, '5 Francs', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203083, '5 Lei', 0, '5 Lei', 'Moldova', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203084, '500 Dram (Noah''s Ark)', 0, '500 Dram (Noah''s Ark)', 'Armenia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203085, '100 Francs - Young peasant (type 1945)', 0, '100 Francs - Young peasant (type 1945)', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203110, '50 Denari (Polymer)', 0, '50 Denari (Polymer)', 'North Macedonia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203122, '10 Tögrög', 0, '10 Tögrög', 'Mongolia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203126, '20 Dollars (Bank of China)', 0, '20 Dollars (Bank of China)', 'Hong Kong', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203134, '10 Rupees', 0, '10 Rupees', 'Pakistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203144, '20 Pounds - Elizabeth II (JMW Turner; Polymer)', 0, '20 Pounds - Elizabeth II (JMW Turner; Polymer)', 'England', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203157, '5000 Won', 0, '5000 Won', 'South Korea', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203164, '20 Naira', 0, '20 Naira', 'Nigeria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203179, '10 Denari (Paper, Republic of Macedonia inscription)', 0, '10 Denari (Paper, Republic of Macedonia inscription)', 'North Macedonia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203188, '100 Cruzados Novos', 0, '100 Cruzados Novos', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203191, '½ Dinar', 0, '½ Dinar', 'Kuwait', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203210, '1000 Ariary / 5000 Francs', 0, '1000 Ariary / 5000 Francs', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203228, '1000 Pesetas', 0, '1000 Pesetas', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203242, '10 Gourdes', 0, '10 Gourdes', 'Haiti (1804-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203245, '200 Francs', 0, '200 Francs', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203249, '100 Francs', 0, '100 Francs', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203254, '50 Francs', 0, '50 Francs', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203261, '500 Ariary / 2500 Francs (Paper)', 0, '500 Ariary / 2500 Francs (Paper)', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203298, '1 Pound', 0, '1 Pound', 'Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203312, '2000 Ariary', 0, '2000 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203323, '10 Rupees', 0, '10 Rupees', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203329, '20 Rupees', 0, '20 Rupees', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203338, '100 Francs / 20 Ariary', 0, '100 Francs / 20 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203389, '10 Sen (US Military Currency - B-Note)', 0, '10 Sen (US Military Currency - B-Note)', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203433, '40 Francs (40th Anniversary of Djibouti’s Independence)', 0, '40 Francs (40th Anniversary of Djibouti’s Independence)', 'Djibouti (1977-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203434, '1 Ringgit', 0, '1 Ringgit', 'Brunei', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203446, '20 Dollars', 0, '20 Dollars', 'Cook Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203475, '50 Ouguiya', 0, '50 Ouguiya', 'Mauritania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203478, '25 Rupees', 0, '25 Rupees', 'Mauritius', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203481, '20 Meticais', 0, '20 Meticais', 'Mozambique', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203484, '500 Francs', 0, '500 Francs', 'Central African States', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203487, '1000 Francs', 0, '1000 Francs', 'Guinea', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203501, '20 Dollars (HSBC)', 0, '20 Dollars (HSBC)', 'Hong Kong', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203518, '10 Rupees', 0, '10 Rupees', 'India', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203526, '20 Pounds', 0, '20 Pounds', 'Egypt', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203529, '20 Francs', 0, '20 Francs', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203531, '10 Francs', 0, '10 Francs', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203627, '10 000 Đồng', 0, '10 000 Đồng', 'Vietnam', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203633, '2000 Pesos', 0, '2000 Pesos', 'Chile', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203640, '10 Kroner (Portrait and Landscape. Top banner begins with "TI")', 0, '10 Kroner (Portrait and Landscape. Top banner begins with "TI")', 'Denmark', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203647, '1 Peso', 0, '1 Peso', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203665, '5 Reichsmark (Reichskreditkassenschein)', 0, '5 Reichsmark (Reichskreditkassenschein)', 'Germany (1871-1948)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203732, '50 Drachmai', 0, '50 Drachmai', 'Greece', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203759, '500 Francs - Pierre & Marie Curie (type 1993)', 0, '500 Francs - Pierre & Marie Curie (type 1993)', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203794, '250 Dinars', 0, '250 Dinars', 'Iraq', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203806, '10 Australes', 0, '10 Australes', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203808, '50 Australes', 0, '50 Australes', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203810, '100 Australes', 0, '100 Australes', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203846, '25 Rupees', 0, '25 Rupees', 'Seychelles', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203853, '20 Rand (With Omron rings)', 0, '20 Rand (With Omron rings)', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203869, '1000 Shillings', 0, '1000 Shillings', 'Uganda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203875, '5 Dollars', 0, '5 Dollars', 'New Zealand', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203877, '10 Pesos', 0, '10 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203878, '10 Bolivianos (Vargas, Tupa, Méndez)', 0, '10 Bolivianos (Vargas, Tupa, Méndez)', 'Bolivia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203897, '5 Pounds', 0, '5 Pounds', 'Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203899, '10 Gourdes (Bicentennial of Haiti''s Independence)', 0, '10 Gourdes (Bicentennial of Haiti''s Independence)', 'Haiti (1804-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203903, '2000 Guaranies (Polymer; Series A-E)', 0, '2000 Guaranies (Polymer; Series A-E)', 'Paraguay', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203927, '1000 Escudos (13th. print)', 0, '1000 Escudos (13th. print)', 'Portugal', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203929, '20 Rand', 0, '20 Rand', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203932, '10 Rupees', 0, '10 Rupees', 'India', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203933, '50 Piastres', 0, '50 Piastres', 'Egypt', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (203999, '10 000 Rupiah', 0, '10 000 Rupiah', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204003, '5 Manat (Asian Martial Games)', 0, '5 Manat (Asian Martial Games)', 'Turkmenistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204005, '1 Manat (Asian Martial Games)', 0, '1 Manat (Asian Martial Games)', 'Turkmenistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204006, '10 Manat (Asian Martial Games)', 0, '10 Manat (Asian Martial Games)', 'Turkmenistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204008, '20 Manat (Asian Martial Games)', 0, '20 Manat (Asian Martial Games)', 'Turkmenistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204030, '5 Rupees', 0, '5 Rupees', 'Nepal', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204034, '20 Rupees', 0, '20 Rupees', 'Nepal', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204035, '50 Naira', 0, '50 Naira', 'Nigeria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204043, '100 Rupees', 0, '100 Rupees', 'Nepal', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204093, '1000 Cruzados', 0, '1000 Cruzados', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204094, '5000 Rupiah', 0, '5000 Rupiah', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204098, '1000 Rupiah', 0, '1000 Rupiah', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204143, '50 Won (Workers'' Party of Korea)', 0, '50 Won (Workers'' Party of Korea)', 'North Korea', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204145, '20 Dalasis', 0, '20 Dalasis', 'Gambia, The', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204150, '1 Gulden - Wilhelmina "facing left" (Coin note)', 0, '1 Gulden - Wilhelmina "facing left" (Coin note)', 'Netherlands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204170, '5 Pounds', 0, '5 Pounds', 'Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204172, '2½ Gulden - Juliana (Coin note)', 0, '2½ Gulden - Juliana (Coin note)', 'Netherlands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204186, '10 Pounds', 0, '10 Pounds', 'Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204196, '50 Dinara (1st coat of arms)', 0, '50 Dinara (1st coat of arms)', 'Serbia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204198, '20 Pounds', 0, '20 Pounds', 'Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204240, '20 Reais (1st. Family; Stamp A)', 0, '20 Reais (1st. Family; Stamp A)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204253, '5 Sucres', 0, '5 Sucres', 'Ecuador', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204267, '50 Córdobas (Central Bank of Nicaragua)', 0, '50 Córdobas (Central Bank of Nicaragua)', 'Nicaragua', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204268, '20 Dinars (1st Coat of Arms)', 0, '20 Dinars (1st Coat of Arms)', 'Serbia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204269, '20 Córdobas', 0, '20 Córdobas', 'Nicaragua', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204298, '20 Patacas (Banco da China)', 0, '20 Patacas (Banco da China)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204305, '10 Patacas (Banco da China)', 0, '10 Patacas (Banco da China)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204321, '20 Kroner "Spurve" (Painting and Animal)', 0, '20 Kroner "Spurve" (Painting and Animal)', 'Denmark', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204324, '10 Dinars (2nd Coat of Arms)', 0, '10 Dinars (2nd Coat of Arms)', 'Serbia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204329, '100 Dinara (2nd coat of arms)', 0, '100 Dinara (2nd coat of arms)', 'Serbia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204331, '200 Dinara (2nd coat of arms)', 0, '200 Dinara (2nd coat of arms)', 'Serbia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204347, '20 Yuan', 0, '20 Yuan', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204358, '50 Sheqalim (David Ben-Gurion & Golden Gate)', 0, '50 Sheqalim (David Ben-Gurion & Golden Gate)', 'Israel', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204378, '20 Francs - Debussy (type 1980 with safety wire)', 0, '20 Francs - Debussy (type 1980 with safety wire)', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204402, '50 Francs - Saint-Exupéry (type 1992 modified)', 0, '50 Francs - Saint-Exupéry (type 1992 modified)', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204424, '1 Piastre (Law of 23 May AH1332)', 0, '1 Piastre (Law of 23 May AH1332)', 'Ottoman Empire', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204426, '100 Francs Delacroix (type 1978, articles 442-1 and 442-2)', 0, '100 Francs Delacroix (type 1978, articles 442-1 and 442-2)', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204444, '10 Pounds (Ulster Bank)', 0, '10 Pounds (Ulster Bank)', 'Northern Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204450, '1 Dinar', 0, '1 Dinar', 'Jordan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204465, '500 Cruzados', 0, '500 Cruzados', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204473, '25 Dinars', 0, '25 Dinars', 'Iraq', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204476, '100 Dinars', 0, '100 Dinars', 'Iraq', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204479, '10 Sen', 0, '10 Sen', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204487, '20 Baht - Rama IX (Series 16)', 0, '20 Baht - Rama IX (Series 16)', 'Thailand', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204530, '5 Pounds - Elizabeth II (Millennium)', 0, '5 Pounds - Elizabeth II (Millennium)', 'Gibraltar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204569, '1000 Colones', 0, '1000 Colones', 'Costa Rica', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204584, '10 Yuan (Bank of Communications)', 0, '10 Yuan (Bank of Communications)', 'China, Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204591, '2000 Pesetas (with security line)', 0, '2000 Pesetas (with security line)', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204600, '10 Francs', 0, '10 Francs', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204614, '50 Rand', 0, '50 Rand', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204640, '5 Naira', 0, '5 Naira', 'Nigeria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204643, '20 Córdobas', 0, '20 Córdobas', 'Nicaragua', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204650, '200 Vatu', 0, '200 Vatu', 'Vanuatu (1980-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204689, '25 Pesetas', 0, '25 Pesetas', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204707, '100 Pesetas', 0, '100 Pesetas', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204734, '10 Heller', 0, '10 Heller', 'Liechtenstein', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204738, '25 Piastres', 0, '25 Piastres', 'Egypt', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204746, '10 Rand (Without Omron rings)', 0, '10 Rand (Without Omron rings)', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204747, '10 Yuan', 0, '10 Yuan', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204777, '200 Escudos', 0, '200 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204798, '100 Baht (Queen''s 72nd Birthday)', 0, '100 Baht (Queen''s 72nd Birthday)', 'Thailand', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204799, '100 Pengő', 0, '100 Pengő', 'Hungary', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204838, '2000 Rials', 0, '2000 Rials', 'Iran', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204854, '10 Dollars', 0, '10 Dollars', 'New Zealand', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204863, '50 Kroner (Famous Men and Women. Type 1)', 0, '50 Kroner (Famous Men and Women. Type 1)', 'Denmark', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204866, '20 Som', 0, '20 Som', 'Kyrgyzstan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204867, '50 Som', 0, '50 Som', 'Kyrgyzstan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204868, '100 Som', 0, '100 Som', 'Kyrgyzstan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204875, '100 Francs - Cézanne (type 1997)', 0, '100 Francs - Cézanne (type 1997)', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204892, '200 Francs - Eiffel (type 1995)', 0, '200 Francs - Eiffel (type 1995)', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204899, '50 Baht - Rama IX (Series 16)', 0, '50 Baht - Rama IX (Series 16)', 'Thailand', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204901, '1 Gulden - Wilhelmina', 0, '1 Gulden - Wilhelmina', 'Netherlands East Indies (1601-1949)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204942, '50 Cents - Elizabeth II', 0, '50 Cents - Elizabeth II', 'Bahamas, The', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204945, '1 Dollar', 0, '1 Dollar', 'Bahamas, The', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204972, '2000 Pesos', 0, '2000 Pesos', 'Colombia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (204995, '2 Dollars - Elizabeth II (Bluebird)', 0, '2 Dollars - Elizabeth II (Bluebird)', 'Bermuda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205013, '2000 Colones', 0, '2000 Colones', 'Costa Rica', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205028, '2 Reais (1st. Family; Stamp A)', 0, '2 Reais (1st. Family; Stamp A)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205080, '50 Rupees', 0, '50 Rupees', 'Mauritius', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205091, '25 Dirhams (Dar As-Sikkah)', 0, '25 Dirhams (Dar As-Sikkah)', 'Morocco', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205096, '10 Córdobas', 0, '10 Córdobas', 'Nicaragua', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205097, '10 Córdobas', 0, '10 Córdobas', 'Nicaragua', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205146, '1 Cruzeiro (Thesouro Nacional; 1st print)', 0, '1 Cruzeiro (Thesouro Nacional; 1st print)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205196, '100 Roubles (2014 Sochi Olympics)', 0, '100 Roubles (2014 Sochi Olympics)', 'Russian Federation (1991-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205201, '2 Dollars', 0, '2 Dollars', 'Zimbabwe (1980-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205202, '5 Dollars', 0, '5 Dollars', 'Zimbabwe (1980-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205208, '2 Dollars (CBSI Silver Jubilee)', 0, '2 Dollars (CBSI Silver Jubilee)', 'Solomon Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205255, '1000 Gulden', 0, '1000 Gulden', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205276, '5 Dollars', 0, '5 Dollars', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205282, '1000 Pesos (small size)', 0, '1000 Pesos (small size)', 'Colombia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205294, '25 Gulden', 0, '25 Gulden', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205295, '10 Gulden', 0, '10 Gulden', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205332, '2000 Francs', 0, '2000 Francs', 'Comoros', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205341, '1 Dollar - Elizabeth II (D Series)', 0, '1 Dollar - Elizabeth II (D Series)', 'Cayman Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205390, '50 Rupees', 0, '50 Rupees', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205392, '100 Rupees', 0, '100 Rupees', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205405, '1 Dinar', 0, '1 Dinar', 'Kuwait', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205407, '1 Gulden', 0, '1 Gulden', 'Netherlands East Indies (1601-1949)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205413, '500 Escudos', 0, '500 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205417, '1000 Escudos', 0, '1000 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205424, '2000 Escudos', 0, '2000 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205484, '100 Pesetas', 0, '100 Pesetas', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205589, '100 Kroner "Møl" (Painting and Animal. Type 1; without security thread)', 0, '100 Kroner "Møl" (Painting and Animal. Type 1; without security thread)', 'Denmark', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205596, '20 New Sheqalim (Moshe Sharett)', 0, '20 New Sheqalim (Moshe Sharett)', 'Israel', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205642, '1 Pound - Elizabeth II', 0, '1 Pound - Elizabeth II', 'Isle of Man', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205672, '500 Francs', 0, '500 Francs', 'Burundi', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205679, '1000 Francs', 0, '1000 Francs', 'Burundi', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205700, '500 Pesetas', 0, '500 Pesetas', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205730, '100 Kroner (Famous Men and Women. Type 2; enhanced security features)', 0, '100 Kroner (Famous Men and Women. Type 2; enhanced security features)', 'Denmark', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205791, '5 Kronor', 0, '5 Kronor', 'Sweden', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205825, '50 Kroner "Karusse" (Painting and Animal)', 0, '50 Kroner "Karusse" (Painting and Animal)', 'Denmark', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205827, '5 Pounds', 0, '5 Pounds', 'Egypt', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205860, '500 Riels', 0, '500 Riels', 'Cambodia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205902, '20 Pesos', 0, '20 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205903, '500 Rupees', 0, '500 Rupees', 'Mauritius', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (205953, '1 Pound', 0, '1 Pound', 'Guernsey', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206006, '10 000 Pesos', 0, '10 000 Pesos', 'Colombia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206019, '5 Riyals (With marks for the blinds)', 0, '5 Riyals (With marks for the blinds)', 'Qatar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206020, '10 Riyals (With marks for the blinds)', 0, '10 Riyals (With marks for the blinds)', 'Qatar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206098, '1000 Cruzeiros (3rd edition)', 0, '1000 Cruzeiros (3rd edition)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206099, '5000 Cruzeiros (3rd edition)', 0, '5000 Cruzeiros (3rd edition)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206100, '10 000 Cruzeiros (3rd edition)', 0, '10 000 Cruzeiros (3rd edition)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206137, '1 Rial - Qaboos bin Sa''id (35th National Day)', 0, '1 Rial - Qaboos bin Sa''id (35th National Day)', 'Oman', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206153, '1 Centavo (overprinted on P# 177)', 0, '1 Centavo (overprinted on P# 177)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206177, '5 Cruzeiros (Thesouro Nacional; 2nd print; "Valor Recebido")', 0, '5 Cruzeiros (Thesouro Nacional; 2nd print; "Valor Recebido")', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206197, '5 Korun', 0, '5 Korun', 'Czechoslovakia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206217, '20 Korun', 0, '20 Korun', 'Czechoslovakia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206220, '5000 Drachmai', 0, '5000 Drachmai', 'Greece', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206239, '100 Kronen', 0, '100 Kronen', 'Austria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206248, '100 Rupees', 0, '100 Rupees', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206250, '100 Rials (Central Bank of Yemen in Aden)', 0, '100 Rials (Central Bank of Yemen in Aden)', 'Yemen', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206266, '5 Pesos', 0, '5 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206378, '1 Peso (Victory; Central Bank)', 0, '1 Peso (Victory; Central Bank)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206382, '5 Lira (purple)', 0, '5 Lira (purple)', 'Turkey', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206385, '10 Lira', 0, '10 Lira', 'Turkey', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206387, '20 Lira', 0, '20 Lira', 'Turkey', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206390, '50 Lira', 0, '50 Lira', 'Turkey', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206391, '10 Rand', 0, '10 Rand', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206392, '100 Lira', 0, '100 Lira', 'Turkey', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206511, '10 Korun', 0, '10 Korun', 'Czechoslovakia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206523, '200 Rials', 0, '200 Rials', 'Iran', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206525, '50 Korun', 0, '50 Korun', 'Czechoslovakia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206535, '500 Escudos (13th. print)', 0, '500 Escudos (13th. print)', 'Portugal', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206562, '200 Lira', 0, '200 Lira', 'Turkey', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206599, '5 Centimes', 0, '5 Centimes', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206600, '10 Centimes', 0, '10 Centimes', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206601, '20 Centimes', 0, '20 Centimes', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206614, '10 Pula', 0, '10 Pula', 'Botswana', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206691, '50 Pesos', 0, '50 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206693, '50 Pesos', 0, '50 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206729, '100 Pesos', 0, '100 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206732, '100 Pesos', 0, '100 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206765, '10 Kronen', 0, '10 Kronen', 'Austria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206766, '20 Kronen (Second issue)', 0, '20 Kronen (Second issue)', 'Austria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206831, '100 Kroner "Møl" (Painting and Animal. Type 2; with security thread)', 0, '100 Kroner "Møl" (Painting and Animal. Type 2; with security thread)', 'Denmark', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206836, '1000 Riels', 0, '1000 Riels', 'Cambodia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206844, '1000 Livres', 0, '1000 Livres', 'Lebanon', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206849, '50 Krónur (Faroese animals and landscapes. Type 2; thick security thread; enhanced security features)', 0, '50 Krónur (Faroese animals and landscapes. Type 2; thick security thread; enhanced security features)', 'Faroe Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206851, '100 Krónur (Faroese animals and landscapes. Type 2; thick security thread; enhanced security features)', 0, '100 Krónur (Faroese animals and landscapes. Type 2; thick security thread; enhanced security features)', 'Faroe Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206860, '5 Pfennigs', 0, '5 Pfennigs', 'Weida (Thuringia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (206948, '1000 Kronen', 0, '1000 Kronen', 'Austria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207001, '100 Dong (65th Anniversary of the National Bank)', 0, '100 Dong (65th Anniversary of the National Bank)', 'Vietnam', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207005, '100 Roubles (Crimea''s Reunification with Russia)', 0, '100 Roubles (Crimea''s Reunification with Russia)', 'Russian Federation (1991-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207046, '½ Dinar (Thin marks for the blind)', 0, '½ Dinar (Thin marks for the blind)', 'Bahrain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207055, '5 Lari', 0, '5 Lari', 'Georgia (1991-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207290, '50 Sen', 0, '50 Sen', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207305, '10 Korun', 0, '10 Korun', 'Bohemia and Moravia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207309, '10 Kroner "Edderfugl" (Painting and Animal)', 0, '10 Kroner "Edderfugl" (Painting and Animal)', 'Denmark', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207328, '100 Korun', 0, '100 Korun', 'Czechoslovakia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207355, '2000 Riels', 0, '2000 Riels', 'Cambodia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207395, '25 Taka (Silver Jubilee of "The Security Printing Corporation (Bangladesh) Ltd." 1988-2013)', 0, '25 Taka (Silver Jubilee of "The Security Printing Corporation (Bangladesh) Ltd." 1988-2013)', 'Bangladesh', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207401, '2000 Shillings', 0, '2000 Shillings', 'Tanzania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207549, '500 Korun', 0, '500 Korun', 'Czech Republic', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207666, '¼ Dinar', 0, '¼ Dinar', 'Kuwait', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207669, '1 Karbowanez', 0, '1 Karbowanez', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207672, '5 Karbowanez (RKU)', 0, '5 Karbowanez (RKU)', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207677, '50 Karbovantsiv', 0, '50 Karbovantsiv', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207689, '5 Rand', 0, '5 Rand', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207733, '200 Naira', 0, '200 Naira', 'Nigeria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207734, '100 Naira (Nigeria''s 100 Years of Existence)', 0, '100 Naira (Nigeria''s 100 Years of Existence)', 'Nigeria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207739, '2 Pesetas', 0, '2 Pesetas', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207745, '5 New Sheqalim (Levi Eshkol)', 0, '5 New Sheqalim (Levi Eshkol)', 'Israel', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207820, '10 Dinars', 0, '10 Dinars', 'Libya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207855, '5 Dollars - Elizabeth II', 0, '5 Dollars - Elizabeth II', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207883, '5 Yuan (Bank of Communications)', 0, '5 Yuan (Bank of Communications)', 'China, Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207929, '5 Rupees', 0, '5 Rupees', 'Pakistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207947, '500 Pesetas', 0, '500 Pesetas', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (207949, '1 Dollar', 0, '1 Dollar', 'Eastern Caribbean States', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208059, '20 Rand', 0, '20 Rand', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208060, '50 Shillings', 0, '50 Shillings', 'Kenya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208100, '5 Pounds', 0, '5 Pounds', 'Sudan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208103, '10 Pounds', 0, '10 Pounds', 'Sudan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208155, '50 Francs / 10 Belgas (Trésorerie)', 0, '50 Francs / 10 Belgas (Trésorerie)', 'Belgium', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208171, '50 Soles de Oro', 0, '50 Soles de Oro', 'Peru', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208199, '50 000 Cruzeiros (3rd edition)', 0, '50 000 Cruzeiros (3rd edition)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208247, '1000 Riels (Funeral of King Sihanouk)', 0, '1000 Riels (Funeral of King Sihanouk)', 'Cambodia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208293, '50 Tolarjev', 0, '50 Tolarjev', 'Slovenia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208316, '5 Yen', 0, '5 Yen', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208335, '1 Riyal (With marks for the blinds)', 0, '1 Riyal (With marks for the blinds)', 'Qatar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208341, '10 Yuan (enhanced security)', 0, '10 Yuan (enhanced security)', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208375, '5 Pounds (Northern Bank - Millennium)', 0, '5 Pounds (Northern Bank - Millennium)', 'Northern Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208407, '10 Lei', 0, '10 Lei', 'Moldova', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208461, '20 Korona', 0, '20 Korona', 'Hungary', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208467, '50 Cordobas', 0, '50 Cordobas', 'Nicaragua', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208470, '100 Córdobas', 0, '100 Córdobas', 'Nicaragua', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208516, '5000 Pesos', 0, '5000 Pesos', 'Colombia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208548, '20 Zlotys', 0, '20 Zlotys', 'Poland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208570, '5000 Shillings', 0, '5000 Shillings', 'Uganda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208598, '10 Sen', 0, '10 Sen', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208761, '10 Pounds (Clydesdale Bank)', 0, '10 Pounds (Clydesdale Bank)', 'Scotland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208838, '10 Sucres', 0, '10 Sucres', 'Ecuador', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208853, '50 Sen - Shōwa (Great Imperial Japanese Government)', 0, '50 Sen - Shōwa (Great Imperial Japanese Government)', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208857, '2000 Shillings', 0, '2000 Shillings', 'Uganda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208875, '10 Dinars', 0, '10 Dinars', 'Tunisia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208926, '20 New Sheqalim (Moshe Sharett)', 0, '20 New Sheqalim (Moshe Sharett)', 'Israel', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (208932, '2000 Forint (Millennium)', 0, '2000 Forint (Millennium)', 'Hungary', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209000, '20 Rand', 0, '20 Rand', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209022, '1000 Escudos', 0, '1000 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209027, '10 Florin', 0, '10 Florin', 'Aruba', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209077, '5 Pounds (Royal Bank of Scotland)', 0, '5 Pounds (Royal Bank of Scotland)', 'Scotland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209302, '100 Mark', 0, '100 Mark', 'Bavaria, Federal State of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209469, '20 Sucres', 0, '20 Sucres', 'Ecuador', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209526, '5 Liri / 5 Pounds (Law of 1967)', 0, '5 Liri / 5 Pounds (Law of 1967)', 'Malta', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209645, '50 Dinars', 0, '50 Dinars', 'Iraq', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209797, '10 Reais (1st. Family; Stamp C; Watermark "Flag")', 0, '10 Reais (1st. Family; Stamp C; Watermark "Flag")', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (209854, '200 Cruzados Novos', 0, '200 Cruzados Novos', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210043, '50 Yuan (70th Anniversary of the Renminbi)', 0, '50 Yuan (70th Anniversary of the Renminbi)', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210045, '100 Yuan (Aerospace)', 0, '100 Yuan (Aerospace)', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210126, '100 Francs - Jean (2nd. portrait; with date)', 0, '100 Francs - Jean (2nd. portrait; with date)', 'Luxembourg', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210247, '2 Pesetas', 0, '2 Pesetas', 'Spain', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210318, '1 Yen (with serial number)', 0, '1 Yen (with serial number)', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210342, '250 Dinars (with tactile mark)', 0, '250 Dinars (with tactile mark)', 'Iraq', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210421, '2 Rupees', 0, '2 Rupees', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210440, '10 Rupees (Central Bank of Ceylon)', 0, '10 Rupees (Central Bank of Ceylon)', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210443, '20 Rupees (Central Bank of Ceylon)', 0, '20 Rupees (Central Bank of Ceylon)', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210479, '50 Bolivianos (Baca, Racua and Willka)', 0, '50 Bolivianos (Baca, Racua and Willka)', 'Bolivia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210533, '20 Dollars - Elizabeth II', 0, '20 Dollars - Elizabeth II', 'New Zealand', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210666, '10 Dollars', 0, '10 Dollars', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210679, '100 Kip', 0, '100 Kip', 'Laos', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210715, '100 Gulden', 0, '100 Gulden', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210723, '25 Pfennigs', 0, '25 Pfennigs', 'Fürstenau in Hannover, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210726, '1 Mark', 0, '1 Mark', 'Fürstenau in Hannover, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210860, '100 Rupees', 0, '100 Rupees', 'Pakistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210874, '1 Dollar - Elizabeth II (C Series; Two Signatures)', 0, '1 Dollar - Elizabeth II (C Series; Two Signatures)', 'Cayman Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210887, '20 Dirhams (Enthronement of King Mohammed VI)', 0, '20 Dirhams (Enthronement of King Mohammed VI)', 'Morocco', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210891, '1 Dinar (February 17th. Revolution)', 0, '1 Dinar (February 17th. Revolution)', 'Libya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (210952, '100 Pesos', 0, '100 Pesos', 'Mexico', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (211064, '2000 Francs', 0, '2000 Francs', 'Rwanda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (211536, '5 Yuan (Bank of Communications)', 0, '5 Yuan (Bank of Communications)', 'China, Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (211537, '1000 Forint', 0, '1000 Forint', 'Hungary', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (211545, '10 Soles', 0, '10 Soles', 'Peru', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (211571, '20 Rupees', 0, '20 Rupees', 'Pakistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (211582, '50 Won (Kim Il Sung''s Birthday)', 0, '50 Won (Kim Il Sung''s Birthday)', 'North Korea', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (211789, '10 Livres (Assignat)', 0, '10 Livres (Assignat)', 'France', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (211980, '20 Roubles', 0, '20 Roubles', 'Belarus', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212087, '100 Sudanese Pounds', 0, '100 Sudanese Pounds', 'Sudan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212104, '10 Cedis', 0, '10 Cedis', 'Ghana (1957-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212165, '50 Roubles', 0, '50 Roubles', 'Transnistria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212177, '100 Pesos (Revolution)', 0, '100 Pesos (Revolution)', 'Mexico', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212210, '1000 Kyats', 0, '1000 Kyats', 'Myanmar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212492, '50 Krónur', 0, '50 Krónur', 'Iceland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212590, '1 Real (1st. Family; Stamp C; República Federativa do Brasil)', 0, '1 Real (1st. Family; Stamp C; República Federativa do Brasil)', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212656, '5 Reais (1st. Family; Stamp C; Watermark "Flag")', 0, '5 Reais (1st. Family; Stamp C; Watermark "Flag")', 'Brazil', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212790, '500 Escudos', 0, '500 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212793, '1000 Escudos (holographic seal)', 0, '1000 Escudos (holographic seal)', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212798, '5 Đồng', 0, '5 Đồng', 'South Vietnam', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212854, '500 Syrian Pounds', 0, '500 Syrian Pounds', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212897, '50 Rupees', 0, '50 Rupees', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212902, '5000 Escudos', 0, '5000 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212919, '500 Escudos', 0, '500 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212923, '1000 Escudos', 0, '1000 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212924, '2000 Escudos', 0, '2000 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212925, '100 Dollars (Oval Security Device)', 0, '100 Dollars (Oval Security Device)', 'Solomon Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212927, '5000 Escudos', 0, '5000 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212947, '1000 Francs', 0, '1000 Francs', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (212968, '500 Francs (with diamonds on front)', 0, '500 Francs (with diamonds on front)', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213042, '500 Francs / 100 Ariary', 0, '500 Francs / 100 Ariary', 'Madagascar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213184, '20 Dollars (Bank of China)', 0, '20 Dollars (Bank of China)', 'Hong Kong', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213201, '10 Centavos (Waterlow & Sons)', 0, '10 Centavos (Waterlow & Sons)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213240, '2 Đồng', 0, '2 Đồng', 'South Vietnam', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213242, '1 Đồng', 0, '1 Đồng', 'South Vietnam', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213285, '50 Cordobas', 0, '50 Cordobas', 'Nicaragua', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213291, '25 Pfennigs', 0, '25 Pfennigs', 'Weida (Thuringia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213292, '50 Pfennigs', 0, '50 Pfennigs', 'Weida (Thuringia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213293, '75 Pfennigs', 0, '75 Pfennigs', 'Weida (Thuringia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213294, '75 Pfennigs', 0, '75 Pfennigs', 'Weida (Thuringia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213295, '1 Mark', 0, '1 Mark', 'Weida (Thuringia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213373, '50 000 Livres (70th Anniversary of Lebanese Army)', 0, '50 000 Livres (70th Anniversary of Lebanese Army)', 'Lebanon', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213495, '1 Peso Oro', 0, '1 Peso Oro', 'Colombia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213548, '1000 Dram', 0, '1000 Dram', 'Armenia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213603, '2000 Riels (Independence)', 0, '2000 Riels (Independence)', 'Cambodia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (213702, '1000 Rupees', 0, '1000 Rupees', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214001, '500 Shillings', 0, '500 Shillings', 'Tanzania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214058, '1 Pound - Elizabeth II (Small)', 0, '1 Pound - Elizabeth II (Small)', 'Saint Helena', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214107, '500 Francs (Independence)', 0, '500 Francs (Independence)', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214261, '5 Yuan (Bank of Communications)', 0, '5 Yuan (Bank of Communications)', 'China, Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214285, '30 Dollars (Independence)', 0, '30 Dollars (Independence)', 'Namibia (1990-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214639, '50 Rupees', 0, '50 Rupees', 'Seychelles', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214696, '20 Markkaa, Litt. A', 0, '20 Markkaa, Litt. A', 'Finland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214720, '10 Pfennigs', 0, '10 Pfennigs', 'Frose, Municipality of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214724, '2 Cedis', 0, '2 Cedis', 'Ghana (1957-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214851, '200 Rials (Central Bank of Yemen in Aden)', 0, '200 Rials (Central Bank of Yemen in Aden)', 'Yemen', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (214989, '50 Nakfa', 0, '50 Nakfa', 'Eritrea', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215409, '10 Dinars (Emergency Issue)', 0, '10 Dinars (Emergency Issue)', 'Iraq', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215453, '10 Dollars', 0, '10 Dollars', 'Zimbabwe (1980-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215455, '20 Dollars', 0, '20 Dollars', 'Zimbabwe (1980-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215533, '50 Pfennigs (Volksbibliothek und Lesestuben)', 0, '50 Pfennigs (Volksbibliothek und Lesestuben)', 'Brunswick (notgeld), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215537, '50 Dollars (HSBC)', 0, '50 Dollars (HSBC)', 'Hong Kong', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215561, '200 Syrian Pounds (Ascending serial number)', 0, '200 Syrian Pounds (Ascending serial number)', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215562, '1000 Syrian Pounds', 0, '1000 Syrian Pounds', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215563, '2000 Syrian Pounds', 0, '2000 Syrian Pounds', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215575, '3 Dollars - Elizabeth II', 0, '3 Dollars - Elizabeth II', 'Bahamas, The', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215596, '10 Dollars', 0, '10 Dollars', 'Eastern Caribbean States', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (215931, '100 Ouguiya', 0, '100 Ouguiya', 'Mauritania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (216115, '50 000 Livres (70 Years of Independence)', 0, '50 000 Livres (70 Years of Independence)', 'Lebanon', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (216120, '50 000 Livres (50 Years Banque du Liban)', 0, '50 000 Livres (50 Years Banque du Liban)', 'Lebanon', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (216167, '500 Francs', 0, '500 Francs', 'Rwanda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (216169, '1000 Francs', 0, '1000 Francs', 'Rwanda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (216432, '1 Mark', 0, '1 Mark', 'Drenke, Municipality of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (216627, '1000 Korona', 0, '1000 Korona', 'Hungary', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (216729, '10 Pfennigs', 0, '10 Pfennigs', 'Forst in der Lausitz, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (216730, '25 Pfennigs', 0, '25 Pfennigs', 'Frankfurt an der Oder (notgeld), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (217033, '20 Patacas (20th Anniversary of Macau S.A.R.; BDC)', 0, '20 Patacas (20th Anniversary of Macau S.A.R.; BDC)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (217036, '20 Patacas (20th Anniversary of Macau S.A.R.; BNU)', 0, '20 Patacas (20th Anniversary of Macau S.A.R.; BNU)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (217160, '100 Ouguiya', 0, '100 Ouguiya', 'Mauritania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (217505, '5 Pounds (Ulster Bank)', 0, '5 Pounds (Ulster Bank)', 'Northern Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (217841, '50 Pfennigs', 0, '50 Pfennigs', 'Weida (Thuringia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (217842, '10 Pfennigs', 0, '10 Pfennigs', 'Weida (Thuringia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (218452, '50 Pfennigs', 0, '50 Pfennigs', 'Frose, Municipality of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (218857, '25 Pfennigs', 0, '25 Pfennigs', 'Bosau, Municipality of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (218858, '50 Pfennigs', 0, '50 Pfennigs', 'Bosau, Municipality of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (218860, '1 Mark', 0, '1 Mark', 'Bosau, Municipality of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (218918, '1 Rouble (National Currency)', 0, '1 Rouble (National Currency)', 'Transnistria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (219062, '10 Francs', 0, '10 Francs', 'Democratic Republic of the Congo (1997-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (219537, '20 Centavos', 0, '20 Centavos', 'Cuba', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (220457, '5 Dinars', 0, '5 Dinars', 'Libya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (220873, '1 Yuan (enhanced security)', 0, '1 Yuan (enhanced security)', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (222466, '20 Dollars (Singapore Bicentennial)', 0, '20 Dollars (Singapore Bicentennial)', 'Singapore', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (222650, '50 Krónur (Famous men and Faroes landscapes. Type 2)', 0, '50 Krónur (Famous men and Faroes landscapes. Type 2)', 'Faroe Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (222908, '20 Pfennigs', 0, '20 Pfennigs', 'Forst in der Lausitz, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223074, '50 Piso (Philippine Deposit Insurance Corporation)', 0, '50 Piso (Philippine Deposit Insurance Corporation)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223078, '50 Pfennigs', 0, '50 Pfennigs', 'Forst in der Lausitz, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223094, '25 Pfennigs', 0, '25 Pfennigs', 'Forst in der Lausitz, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223116, '50 Pfennigs', 0, '50 Pfennigs', 'Quedlinburg, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223174, '20 Dinars (OAU Conference)', 0, '20 Dinars (OAU Conference)', 'Libya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223216, '50 Pfennigs', 0, '50 Pfennigs', 'Quedlinburg, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223218, '50 Pfennigs', 0, '50 Pfennigs', 'Quedlinburg, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223221, '50 Pfennigs', 0, '50 Pfennigs', 'Quedlinburg, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223311, '1000 Karbovantsiv', 0, '1000 Karbovantsiv', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223554, '25 Pfennigs', 0, '25 Pfennigs', 'Strelitz, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223582, '1 Dollar (500th Anniversary of Discovery)', 0, '1 Dollar (500th Anniversary of Discovery)', 'Cayman Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223676, '10 Dollars (Millennium)', 0, '10 Dollars (Millennium)', 'New Zealand', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223754, '50 Pfennigs', 0, '50 Pfennigs', 'Frankfurt an der Oder (notgeld), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223755, '10 Pfennigs', 0, '10 Pfennigs', 'Frankfurt an der Oder (notgeld), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223764, '10 Pfennigs', 0, '10 Pfennigs', 'Strelitz, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (223834, '100 Pfennigs', 0, '100 Pfennigs', 'Frankfurt an der Oder (notgeld), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (224144, '10 Pfennigs', 0, '10 Pfennigs', 'Dassow, Municipality of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (224212, '50 Rials (Provisional Issue; Type 3)', 0, '50 Rials (Provisional Issue; Type 3)', 'Iran', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (224232, '500 Rials (Islamic Republic; second print)', 0, '500 Rials (Islamic Republic; second print)', 'Iran', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (224277, '50 Dollars (Standard Chartered Bank)', 0, '50 Dollars (Standard Chartered Bank)', 'Hong Kong', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (224283, '200 Ouguiya', 0, '200 Ouguiya', 'Mauritania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (224436, '100 Piso (Masonry)', 0, '100 Piso (Masonry)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (224448, '50 Escudos', 0, '50 Escudos', 'Portuguese Guinea (1910-1975)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (224675, '10 Lari', 0, '10 Lari', 'Georgia (1991-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (225353, '50 Sucres', 0, '50 Sucres', 'Ecuador', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (225364, '100 Rials (Provisional Issue; Type 2)', 0, '100 Rials (Provisional Issue; Type 2)', 'Iran', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (225425, '1 Rand (Afrikaans - English; Large size)', 0, '1 Rand (Afrikaans - English; Large size)', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (225651, '50 Pfennigs', 0, '50 Pfennigs', 'Eckernförde, District of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (225652, '50 Pfennigs', 0, '50 Pfennigs', 'Eckernförde, District of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (225653, '1 Mark', 0, '1 Mark', 'Eckernförde, District of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (225828, '50 Pfennigs', 0, '50 Pfennigs', 'Quedlinburg, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (226115, '75 Pfennigs (Volksbibliothek und Lesestuben)', 0, '75 Pfennigs (Volksbibliothek und Lesestuben)', 'Brunswick (notgeld), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (226184, '100 Hryven', 0, '100 Hryven', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (226453, '50 Pfennigs', 0, '50 Pfennigs', 'Wittenberge, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (226636, '10 Krónur (Seðlabanki Íslands)', 0, '10 Krónur (Seðlabanki Íslands)', 'Iceland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (227036, '50 Karbowanez', 0, '50 Karbowanez', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (227045, '20 Karbowanez', 0, '20 Karbowanez', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (227211, '50 Pfennigs', 0, '50 Pfennigs', 'Wittenberge, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (227237, '50 Pfennigs (Districts Series - Issue 14: Neukölln)', 0, '50 Pfennigs (Districts Series - Issue 14: Neukölln)', 'Berlin, Prussian province of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (228180, '50 Pfennigs', 0, '50 Pfennigs', 'Stavenhagen, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (228745, '1 Dollar (60th Anniversary of First Constitution)', 0, '1 Dollar (60th Anniversary of First Constitution)', 'Cayman Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (228840, '2 Dollars - Elizabeth II', 0, '2 Dollars - Elizabeth II', 'Belize (1973-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (229559, '5 Gulden', 0, '5 Gulden', 'Netherlands Antilles', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (229944, '50 Pfennigs (Districts Series - Issue 15: Treptow)', 0, '50 Pfennigs (Districts Series - Issue 15: Treptow)', 'Berlin, Prussian province of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (229946, '50 Pfennigs', 0, '50 Pfennigs', 'Dassow, Municipality of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (230286, '25 Pfennigs', 0, '25 Pfennigs', 'Dassow, Municipality of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (230307, '50 Pfennigs', 0, '50 Pfennigs', 'Wittenberge, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (230308, '50 Pfennigs', 0, '50 Pfennigs', 'Wittenberge, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (230309, '50 Pfennigs', 0, '50 Pfennigs', 'Wittenberge, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (230311, '50 Pfennigs', 0, '50 Pfennigs', 'Wittenberge, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (230480, '80 Baht - Rama IX (Queen Sirikit''s 80th Birthday)', 0, '80 Baht - Rama IX (Queen Sirikit''s 80th Birthday)', 'Thailand', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (230582, '500 Escudos', 0, '500 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (230583, '1000 Escudos', 0, '1000 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (231200, '50 Pfennigs (Sparkasse)', 0, '50 Pfennigs (Sparkasse)', 'Uelzen, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (231565, '500 Kyats', 0, '500 Kyats', 'Myanmar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (231759, '10 Pesos (El Estado de Chihuahua)', 0, '10 Pesos (El Estado de Chihuahua)', 'Chihuahua, State of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (231996, '10 Rand (English - Afrikaans)', 0, '10 Rand (English - Afrikaans)', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (232122, '50 Piso (Seal type 6; with tactile marks)', 0, '50 Piso (Seal type 6; with tactile marks)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (232125, '100 Piso (Seal type 6; with tactile marks)', 0, '100 Piso (Seal type 6; with tactile marks)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (232947, '75 000 Rupiah (Independence)', 0, '75 000 Rupiah (Independence)', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (233360, '100 Krónur (Famous men and Faroes landscapes. Type 2)', 0, '100 Krónur (Famous men and Faroes landscapes. Type 2)', 'Faroe Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (233731, '1000 Korun (Revalidation Stamp)', 0, '1000 Korun (Revalidation Stamp)', 'Czech Republic', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (233777, '75 Pfennigs (all colors)', 0, '75 Pfennigs (all colors)', 'Beverungen, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (233785, '2500 Escudos', 0, '2500 Escudos', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (234693, '50 Pfennigs (Districts Series - Issue 10: Zehlendorf)', 0, '50 Pfennigs (Districts Series - Issue 10: Zehlendorf)', 'Berlin, Prussian province of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (235821, '5 Cedis', 0, '5 Cedis', 'Ghana (1957-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (235823, '20 Cedis', 0, '20 Cedis', 'Ghana (1957-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (235866, '10 Pfennigs', 0, '10 Pfennigs', 'Neustrelitz, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (235867, '25 Pfennigs', 0, '25 Pfennigs', 'Neustrelitz, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (236491, '50 Pesos', 0, '50 Pesos', 'Mexico', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (236667, '10 Dollars - Elizabeth II', 0, '10 Dollars - Elizabeth II', 'Belize (1973-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (237755, '25 Pfennigs', 0, '25 Pfennigs', 'Mirow, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (237875, '5 Dollars', 0, '5 Dollars', 'Bahamas, The', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (239037, '5 Córdobas (60th. Anniversary of Central Bank of Nicaragua)', 0, '5 Córdobas (60th. Anniversary of Central Bank of Nicaragua)', 'Nicaragua', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (239312, '1 Piastre', 0, '1 Piastre', 'French Indochina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (239537, '5 Riyals', 0, '5 Riyals', 'Saudi Arabia (1932-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (240602, '20 Pounds (Ulster Bank)', 0, '20 Pounds (Ulster Bank)', 'Northern Ireland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (241100, '2 000 000 Mark', 0, '2 000 000 Mark', 'Saxony, Federal state of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (241406, '10 Pfennigs', 0, '10 Pfennigs', 'Mirow, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (241998, '500 Ouguiya', 0, '500 Ouguiya', 'Mauritania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (242024, '20 Riyals (G20 Summit in Riyadh 2020)', 0, '20 Riyals (G20 Summit in Riyadh 2020)', 'Saudi Arabia (1932-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (242104, '500 Dinars (with tactile mark; Kurdish bank name on reverse)', 0, '500 Dinars (with tactile mark; Kurdish bank name on reverse)', 'Iraq', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (244728, '10 Tomans / 100 000 Rials', 0, '10 Tomans / 100 000 Rials', 'Iran', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (244911, '100 Pesos', 0, '100 Pesos', 'Mexico', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (245699, '1000 Francs', 0, '1000 Francs', 'Gabon', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (248104, '200 Kwanzas', 0, '200 Kwanzas', 'Angola', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (248199, '100 Ouguiya', 0, '100 Ouguiya', 'Mauritania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (248200, '200 Ouguiya', 0, '200 Ouguiya', 'Mauritania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (248202, '1000 Ouguiya', 0, '1000 Ouguiya', 'Mauritania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (250603, '1 Manat', 0, '1 Manat', 'Azerbaijan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (250604, '5 Manat', 0, '5 Manat', 'Azerbaijan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (254249, '100 000 Livres (Greater State of Lebanon)', 0, '100 000 Livres (Greater State of Lebanon)', 'Lebanon', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (258191, '1000 Francs (Correct map of Chad)', 0, '1000 Francs (Correct map of Chad)', 'Congo, Republic of the', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (258926, '10 Riyals', 0, '10 Riyals', 'Qatar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (258988, '1 Riyal', 0, '1 Riyal', 'Qatar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (258989, '5 Riyals', 0, '5 Riyals', 'Qatar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (259033, '50 Dollars (55 Years of Central Bank)', 0, '50 Dollars (55 Years of Central Bank)', 'Suriname', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (259225, '2000 Colones', 0, '2000 Colones', 'Costa Rica', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (262495, '20 Quetzales (Independence)', 0, '20 Quetzales (Independence)', 'Guatemala', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (264846, '50 Pfennigs (Stadtbank)', 0, '50 Pfennigs (Stadtbank)', 'Striegau (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (266442, '50 Dollars', 0, '50 Dollars', 'Zimbabwe (1980-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (266443, '100 Dollars', 0, '100 Dollars', 'Zimbabwe (1980-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (266640, '20 Dollars (Standard Chartered Bank)', 0, '20 Dollars (Standard Chartered Bank)', 'Hong Kong', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (266869, '5 Dollars', 0, '5 Dollars', 'Trinidad and Tobago', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (266870, '10 Dollars', 0, '10 Dollars', 'Trinidad and Tobago', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (267582, '1 Ringgit', 0, '1 Ringgit', 'Brunei', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (268238, '200 Birr', 0, '200 Birr', 'Ethiopia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (272725, '200 Escudos (Henrique Teixeira de Sousa)', 0, '200 Escudos (Henrique Teixeira de Sousa)', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (272908, '5 Dollars', 0, '5 Dollars', 'Eastern Caribbean States', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (274125, '5 Tomans / 50 000 Rials', 0, '5 Tomans / 50 000 Rials', 'Iran', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (274740, '5 Dinars (February 17th. Revolution)', 0, '5 Dinars (February 17th. Revolution)', 'Libya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (275303, '1 Mark (All colors)', 0, '1 Mark (All colors)', 'Beverungen, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (275349, '50 Pfennigs', 0, '50 Pfennigs', 'Beverungen, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (275979, '20 Dollars - Elizabeth II (Whistling frog)', 0, '20 Dollars - Elizabeth II (Whistling frog)', 'Bermuda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (276375, '50 Pfennigs (Stadtbank)', 0, '50 Pfennigs (Stadtbank)', 'Striegau (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (280476, '10 Pula', 0, '10 Pula', 'Botswana', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (280487, '10 Birr', 0, '10 Birr', 'Ethiopia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (281700, '50 Pfennigs', 0, '50 Pfennigs', 'Nimptsch (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (283221, '50 Taka (Golden Jubilee of Independece)', 0, '50 Taka (Golden Jubilee of Independece)', 'Bangladesh', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (288344, '1 Dollar', 0, '1 Dollar', 'Trinidad and Tobago', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (290074, '20 Dollars', 0, '20 Dollars', 'Trinidad and Tobago', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (290678, '25 Pfennigs', 0, '25 Pfennigs', 'Nimptsch (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (290679, '75 Pfennigs', 0, '75 Pfennigs', 'Nimptsch (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (290680, '1 Mark', 0, '1 Mark', 'Nimptsch (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (292244, '1 Piastre (Red numeral)', 0, '1 Piastre (Red numeral)', 'French Indochina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (294054, '25 Pfennigs (Sparkasse)', 0, '25 Pfennigs (Sparkasse)', 'Uelzen, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (295661, '50 Pfennigs', 0, '50 Pfennigs', 'Quedlinburg, City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (300216, '3 Dollars', 0, '3 Dollars', 'Cook Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (300636, '10 000 Tögrög (Mongolian Revolution)', 0, '10 000 Tögrög (Mongolian Revolution)', 'Mongolia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (300696, '10 Soles', 0, '10 Soles', 'Peru', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (302331, '5 Leva', 0, '5 Leva', 'Bulgaria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (303182, '10 Patacas (Year of the Rat; Banco da China)', 0, '10 Patacas (Year of the Rat; Banco da China)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (304715, '5 Dobras', 0, '5 Dobras', 'São Tomé and Príncipe', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (304719, '10 Dobras', 0, '10 Dobras', 'São Tomé and Príncipe', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (306846, '20 Pesos (Independence)', 0, '20 Pesos (Independence)', 'Mexico', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (308516, '1000 Colones', 0, '1000 Colones', 'Costa Rica', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (310606, '50 Pesos', 0, '50 Pesos', 'Mexico', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (312894, '5 Pounds - Elizabeth II (Windsor Bridge)', 0, '5 Pounds - Elizabeth II (Windsor Bridge)', 'Gibraltar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (312895, '20 Yuan (Beijing Winter Olympics)', 0, '20 Yuan (Beijing Winter Olympics)', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (312896, '20 Yuan (Beijing Winter Olympics)', 0, '20 Yuan (Beijing Winter Olympics)', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (315784, '10 Somoni', 0, '10 Somoni', 'Tajikistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (316600, '1000 Piso (Seal type 7; polymer)', 0, '1000 Piso (Seal type 7; polymer)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (317249, '1000 Tögrög', 0, '1000 Tögrög', 'Mongolia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (317869, '20 Baht - Rama X (Series 17; polymer)', 0, '20 Baht - Rama X (Series 17; polymer)', 'Thailand', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (318041, '1000 Hryven (30 Years of Independence of Ukraine)', 0, '1000 Hryven (30 Years of Independence of Ukraine)', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (318306, '20 Ouguiya', 0, '20 Ouguiya', 'Mauritania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (318927, '2000 Dollars (55 Years of Independence)', 0, '2000 Dollars (55 Years of Independence)', 'Guyana', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (319152, '500 Lekë', 0, '500 Lekë', 'Albania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (320406, '2 Dollars', 0, '2 Dollars', 'Barbados', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (320408, '5 Dollars', 0, '5 Dollars', 'Barbados', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (320433, '10 Dollars', 0, '10 Dollars', 'Barbados', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (320571, '20 Patacas (Winter Olympics)', 0, '20 Patacas (Winter Olympics)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (321377, '75 Pfennigs (Stadtbank)', 0, '75 Pfennigs (Stadtbank)', 'Striegau (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (321390, '25 Pfennigs (Stadtbank)', 0, '25 Pfennigs (Stadtbank)', 'Striegau (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (321391, '25 Pfennigs (Stadtbank)', 0, '25 Pfennigs (Stadtbank)', 'Striegau (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (321392, '75 Pfennigs (Stadtbank)', 0, '75 Pfennigs (Stadtbank)', 'Striegau (Lower Silesia), City of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (323351, '1 Mark (Darlehenskassenschein, Blue Seal)', 0, '1 Mark (Darlehenskassenschein, Blue Seal)', 'Germany (1871-1948)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (323392, '100 Korun (With Omron Rings)', 0, '100 Korun (With Omron Rings)', 'Czech Republic', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (324037, '7 Dollars (Fijian Rugby 7s Team)', 0, '7 Dollars (Fijian Rugby 7s Team)', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (324910, '100 Pesos Dominicanos', 0, '100 Pesos Dominicanos', 'Dominican Republic (1844-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (326931, '5 Dirhams', 0, '5 Dirhams', 'United Arab Emirates', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (326933, '10 Dirhams', 0, '10 Dirhams', 'United Arab Emirates', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (329458, '500 Dollars (Independence)', 0, '500 Dollars (Independence)', 'Jamaica', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (329459, '1000 Dollars (Independence)', 0, '1000 Dollars (Independence)', 'Jamaica', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (332533, '10 Pounds', 0, '10 Pounds', 'Egypt', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (332536, '20 Pounds', 0, '20 Pounds', 'Egypt', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (336627, '88 Cents (God of Wealth)', 0, '88 Cents (God of Wealth)', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (337073, '75 Rupees (Independence)', 0, '75 Rupees (Independence)', 'Pakistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (338501, '1000 Rupiah', 0, '1000 Rupiah', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (338503, '2000 Rupiah', 0, '2000 Rupiah', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (338505, '5000 Rupiah', 0, '5000 Rupiah', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (338506, '20 000 Rupiah', 0, '20 000 Rupiah', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (338508, '10 000 Rupiah', 0, '10 000 Rupiah', 'Indonesia (1949-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (346780, '1000 Mark (Reichsbanknote; two red seals)', 0, '1000 Mark (Reichsbanknote; two red seals)', 'Germany (1871-1948)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (347532, '22 Riyals (2022 FIFA World Cup)', 0, '22 Riyals (2022 FIFA World Cup)', 'Qatar', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (349608, '2000 Dinars (31th Session of League of Arab States)', 0, '2000 Dinars (31th Session of League of Arab States)', 'Algeria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (353522, '5 Roubles', 0, '5 Roubles', 'Belarus', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (353523, '10 Roubles', 0, '10 Roubles', 'Belarus', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (353547, '20 Zlotys (Nicolaus Copernicus)', 0, '20 Zlotys (Nicolaus Copernicus)', 'Poland', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (353863, '500 Hryven (300th Birth Anniversary of Hryhorii Skovoroda)', 0, '500 Hryven (300th Birth Anniversary of Hryhorii Skovoroda)', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (357153, '20 Hryven ("WE WILL NOT FORGET! WE WILL NOT FORGIVE!")', 0, '20 Hryven ("WE WILL NOT FORGET! WE WILL NOT FORGIVE!")', 'Ukraine', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (362935, '1 Yen (Japan Military Currency)', 0, '1 Yen (Japan Military Currency)', 'China, Provisional Government of the Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (365097, '10 Rand', 0, '10 Rand', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (365101, '20 Rand', 0, '20 Rand', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (365103, '50 Rand', 0, '50 Rand', 'South Africa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (366923, '2000 Pesos', 0, '2000 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (367021, '10 Denari (Polymer, Republic of North Macedonia inscription)', 0, '10 Denari (Polymer, Republic of North Macedonia inscription)', 'North Macedonia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (367517, '10 Dollars (17th Pacific Games in Honiara)', 0, '10 Dollars (17th Pacific Games in Honiara)', 'Solomon Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (369460, '50 Pesos Dominicanos (with bank seal in top right)', 0, '50 Pesos Dominicanos (with bank seal in top right)', 'Dominican Republic (1844-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (370853, '75 Rupees (State Bank of Pakistan)', 0, '75 Rupees (State Bank of Pakistan)', 'Pakistan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (372606, '1000 Pesos', 0, '1000 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (373808, '100 Cents (Chinese Lunar Year of the Dragon)', 0, '100 Cents (Chinese Lunar Year of the Dragon)', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (385520, '1000 Yen', 0, '1000 Yen', 'Japan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (386522, '2000 Pesos', 0, '2000 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (388977, '2 Dollars (40 Years of the ECCB)', 0, '2 Dollars (40 Years of the ECCB)', 'Eastern Caribbean States', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (393958, '5 Tālā', 0, '5 Tālā', 'Samoa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (394749, '20 Yuan (Year of the Dragon)', 0, '20 Yuan (Year of the Dragon)', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (396840, '1 Leu (COA with crown)', 0, '1 Leu (COA with crown)', 'Romania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (396843, '10 Lei (COA with crown)', 0, '10 Lei (COA with crown)', 'Romania', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (397454, '20 Tālā', 0, '20 Tālā', 'Samoa', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (400595, '10 Patacas (Banco Nacional Ultramarino)', 0, '10 Patacas (Banco Nacional Ultramarino)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (400597, '10 Patacas (Banco da China)', 0, '10 Patacas (Banco da China)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (400603, '20 Patacas (Banco Nacional Ultramarino)', 0, '20 Patacas (Banco Nacional Ultramarino)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (400604, '20 Patacas (Banco da China)', 0, '20 Patacas (Banco da China)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (414108, '10 000 Pesos', 0, '10 000 Pesos', 'Argentina', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (422155, '20 Meticais', 0, '20 Meticais', 'Mozambique', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (422160, '50 Meticais', 0, '50 Meticais', 'Mozambique', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (422177, '100 Meticais', 0, '100 Meticais', 'Mozambique', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (425299, '1000 Meticais', 0, '1000 Meticais', 'Mozambique', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (425341, '200 Meticais', 0, '200 Meticais', 'Mozambique', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (425343, '500 Meticais', 0, '500 Meticais', 'Mozambique', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (429035, '1 Quetzal (100 Years of the Quetzal)', 0, '1 Quetzal (100 Years of the Quetzal)', 'Guatemala', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (433177, '5000 Francs', 0, '5000 Francs', 'Rwanda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (433179, '2000 Francs', 0, '2000 Francs', 'Rwanda', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (444384, '1000 Rupees', 0, '1000 Rupees', 'Mauritius', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (444488, '100 Rupees', 0, '100 Rupees', 'Mauritius', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (444491, '200 Rupees', 0, '200 Rupees', 'Mauritius', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (446654, '500 Piso (Seal type 7; polymer)', 0, '500 Piso (Seal type 7; polymer)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (446774, '100 Piso (Seal type 7; polymer)', 0, '100 Piso (Seal type 7; polymer)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (446780, '50 Piso (Seal type 7; polymer)', 0, '50 Piso (Seal type 7; polymer)', 'Philippines', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (447195, '20 Yuan (Year of the Snake)', 0, '20 Yuan (Year of the Snake)', 'China, People''s Republic of', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (456482, '100 Patacas (Banco da China)', 0, '100 Patacas (Banco da China)', 'Macau', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (458812, '60 Dollars - Hage Geingob', 0, '60 Dollars - Hage Geingob', 'Namibia (1990-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (460163, '200 Tomans / 2 000 000 Rials', 0, '200 Tomans / 2 000 000 Rials', 'Iran', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (462121, '100 Dirhams', 0, '100 Dirhams', 'United Arab Emirates', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (464541, '20 Caribbean Guilder', 0, '20 Caribbean Guilder', 'Curaçao and Sint Maarten', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (466014, '20 Dinars (Series 2; polymer)', 0, '20 Dinars (Series 2; polymer)', 'Libya', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (467667, '1000 Escudos (holographic strip)', 0, '1000 Escudos (holographic strip)', 'Cape Verde', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (470634, '1000 Taka', 0, '1000 Taka', 'Bangladesh', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (480195, '100 Dollars', 0, '100 Dollars', 'Belize (1973-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (483424, '2000 Rupees (Stability for Prosperity)', 0, '2000 Rupees (Stability for Prosperity)', 'Sri Lanka (1972-date)', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (484713, '50 Kina (50th Anniversary of Independence)', 0, '50 Kina (50th Anniversary of Independence)', 'Papua New Guinea', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (484737, '5 Pounds - Charles III', 0, '5 Pounds - Charles III', 'Falkland Islands', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (492781, '100 Kwacha', 0, '100 Kwacha', 'Zambia', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (532534, '1000 Tenge', 0, '1000 Tenge', 'Kazakhstan', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (541774, '5 Dollars', 0, '5 Dollars', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (541778, '10 Dollars', 0, '10 Dollars', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (541780, '20 Dollars', 0, '20 Dollars', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (541781, '50 Dollars', 0, '50 Dollars', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (541782, '100 Dollars', 0, '100 Dollars', 'Fiji', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (548848, '25 Syrian Pounds', 0, '25 Syrian Pounds', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (548849, '50 Syrian Pounds', 0, '50 Syrian Pounds', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (548850, '100 Syrian Pounds', 0, '100 Syrian Pounds', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (548851, '200 Syrian Pounds', 0, '200 Syrian Pounds', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (548854, '500 Syrian Pounds', 0, '500 Syrian Pounds', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;
INSERT INTO banknotes (numista_type_id, title, denomination, denomination_text, issuer, created_by)
VALUES (553416, '10 Syrian Pounds', 0, '10 Syrian Pounds', 'Syria', NULL)
ON CONFLICT (numista_type_id) WHERE numista_type_id IS NOT NULL DO UPDATE
  SET title = EXCLUDED.title, issuer = EXCLUDED.issuer;

COMMIT;