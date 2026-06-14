-- migration_006c_collection.sql
-- Rows 1–150 of 976
-- Replace <YOUR_USER_ID> with your Supabase auth.uid()

DO $$
DECLARE v_user_id uuid := '<YOUR_USER_ID>';
BEGIN

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201541), (SELECT id FROM banknote_issues WHERE numista_issue_id = 492885), 51234251,
     'UNC', 1, FALSE, 'A 090969',
     NULL, NULL, 0.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 090969', notes=NULL,
    public_notes=NULL, purchase_price=0.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 492885);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201543), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493449), 51231625,
     'UNC', 1, FALSE, NULL,
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 7.23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=7.23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493449);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201556), (SELECT id FROM banknote_issues WHERE numista_issue_id = 492900), 51298413,
     'UNC', 1, FALSE, 'A 3417848',
     NULL, NULL, 1.67, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 3417848', notes=NULL,
    public_notes=NULL, purchase_price=1.67,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 492900);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201562), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493862), 56105881,
     'UNC', 1, FALSE, '16F 3845118',
     'The winner of the “Bank Note of the Year Award” for 2017', NULL, 13.83, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='16F 3845118', notes='The winner of the “Bank Note of the Year Award” for 2017',
    public_notes=NULL, purchase_price=13.83,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493862);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201562), (SELECT id FROM banknote_issues WHERE numista_issue_id = 683181), 56166961,
     'UNC', 1, FALSE, '17E 7031233',
     'The winner of the “Bank Note of the Year Award” for 2017', NULL, 12.77, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='17E 7031233', notes='The winner of the “Bank Note of the Year Award” for 2017',
    public_notes=NULL, purchase_price=12.77,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 683181);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201566), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502313), 51231346,
     'UNC', 1, FALSE, 'HPB 4427897',
     NULL, NULL, 5.11, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HPB 4427897', notes=NULL,
    public_notes=NULL, purchase_price=5.11,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502313);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201578), (SELECT id FROM banknote_issues WHERE numista_issue_id = 542947), 51433013,
     'UNC', 1, FALSE, 'HCL 3051060',
     NULL, NULL, 4.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HCL 3051060', notes=NULL,
    public_notes=NULL, purchase_price=4.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 542947);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201585), (SELECT id FROM banknote_issues WHERE numista_issue_id = 514636), 58134608,
     'UNC', 1, FALSE, 'FZD 8651648',
     NULL, NULL, 20, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FZD 8651648', notes=NULL,
    public_notes=NULL, purchase_price=20,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 514636);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201587), (SELECT id FROM banknote_issues WHERE numista_issue_id = 492964), 51526442,
     'UNC', 1, FALSE, 'PG/XVI 0007940',
     'The nominee for the “Bank Note of the Year Award” in 2019', NULL, 6.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='PG/XVI 0007940', notes='The nominee for the “Bank Note of the Year Award” in 2019',
    public_notes=NULL, purchase_price=6.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 492964);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201589), (SELECT id FROM banknote_issues WHERE numista_issue_id = 492966), 51233039,
     'UNC', 1, FALSE, 'SI/40 099109',
     'The nominee for the “Bank Note of the Year Award” in 2018', NULL, 8.09, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='SI/40 099109', notes='The nominee for the “Bank Note of the Year Award” in 2018',
    public_notes=NULL, purchase_price=8.09,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 492966);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201590), (SELECT id FROM banknote_issues WHERE numista_issue_id = 492967), 51234817,
     'UNC', 1, FALSE, '003A 0049310',
     NULL, NULL, 10, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='003A 0049310', notes=NULL,
    public_notes=NULL, purchase_price=10,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 492967);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201590), (SELECT id FROM banknote_issues WHERE numista_issue_id = 492967), 59823360,
     'UNC', 1, FALSE, '006E 0958471',
     NULL, 'Auction 99', 13.16, 'EUR',
     'PCGS Banknote', '64', '752046.64/46220095',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2bbaebada7f0b0425fa99c32725cddacd9183600fb6c3ab74325a976b8db78b5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2bbaebada7f0b0425fa99c32725cddacd9183600fb6c3ab74325a976b8db78b5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6d1500f0f102fcf64b6fef02ee22820e006cc309b7d156539bb3f6e08e948ac4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6d1500f0f102fcf64b6fef02ee22820e006cc309b7d156539bb3f6e08e948ac4-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='006E 0958471', notes=NULL,
    public_notes='Auction 99', purchase_price=13.16,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='64', cert_number='752046.64/46220095',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2bbaebada7f0b0425fa99c32725cddacd9183600fb6c3ab74325a976b8db78b5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2bbaebada7f0b0425fa99c32725cddacd9183600fb6c3ab74325a976b8db78b5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6d1500f0f102fcf64b6fef02ee22820e006cc309b7d156539bb3f6e08e948ac4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6d1500f0f102fcf64b6fef02ee22820e006cc309b7d156539bb3f6e08e948ac4-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 492967);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201597), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506517), 78547088,
     'UNC', 1, FALSE, 'I/O 4905662',
     NULL, NULL, 50.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4b76a5e01d306da1269e9d0146e309ee01f35b02a613aff8ef3b226caa84c88e.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4b76a5e01d306da1269e9d0146e309ee01f35b02a613aff8ef3b226caa84c88e-360.webp"}, {"url": "https://en.numista.com/vous/pictures/277656/2d6ac7cfbd65becc83a03e55129e2dadf9946f1171ee0f38164ae8eb07356d0f.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d6ac7cfbd65becc83a03e55129e2dadf9946f1171ee0f38164ae8eb07356d0f-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='I/O 4905662', notes=NULL,
    public_notes=NULL, purchase_price=50.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4b76a5e01d306da1269e9d0146e309ee01f35b02a613aff8ef3b226caa84c88e.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4b76a5e01d306da1269e9d0146e309ee01f35b02a613aff8ef3b226caa84c88e-360.webp"}, {"url": "https://en.numista.com/vous/pictures/277656/2d6ac7cfbd65becc83a03e55129e2dadf9946f1171ee0f38164ae8eb07356d0f.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d6ac7cfbd65becc83a03e55129e2dadf9946f1171ee0f38164ae8eb07356d0f-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506517);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201604), (SELECT id FROM banknote_issues WHERE numista_issue_id = 492996), 51234167,
     'UNC', 1, FALSE, 'AL 150196',
     NULL, NULL, 1.28, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AL 150196', notes=NULL,
    public_notes=NULL, purchase_price=1.28,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 492996);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201607), (SELECT id FROM banknote_issues WHERE numista_issue_id = 492999), 51234181,
     'UNC', 1, FALSE, 'AM 984171',
     NULL, NULL, 1.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AM 984171', notes=NULL,
    public_notes=NULL, purchase_price=1.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 492999);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201608), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493000), 51234188,
     'UNC', 1, FALSE, 'AY 819971',
     NULL, NULL, 2.66, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AY 819971', notes=NULL,
    public_notes=NULL, purchase_price=2.66,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493000);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201614), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493006), 51234193,
     'UNC', 1, FALSE, 'AP 448680',
     NULL, NULL, 6.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AP 448680', notes=NULL,
    public_notes=NULL, purchase_price=6.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493006);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201619), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493011), 51273938,
     'UNC', 1, FALSE, 'EF 1714077',
     NULL, NULL, 1.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EF 1714077', notes=NULL,
    public_notes=NULL, purchase_price=1.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493011);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201623), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493015), 51234315,
     'UNC', 1, FALSE, 'A 01494979',
     NULL, NULL, 2.34, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 01494979', notes=NULL,
    public_notes=NULL, purchase_price=2.34,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493015);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201624), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494035), 56105843,
     'UNC', 1, FALSE, 'AC27 687998',
     'The nominee for the “Bank Note of the Year Award” in 2016', NULL, 10.64, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC27 687998', notes='The nominee for the “Bank Note of the Year Award” in 2016',
    public_notes=NULL, purchase_price=10.64,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494035);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201634), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493060), 51276004,
     'UNC', 1, FALSE, '1668630',
     NULL, NULL, 0.13, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1668630', notes=NULL,
    public_notes=NULL, purchase_price=0.13,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201641), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497205), 51237052,
     'G', 1, FALSE, NULL,
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='G', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497205);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201672), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493168), 51433070,
     'UNC', 1, FALSE, 'FTY 2734548',
     'The winner of the “Bank Note of the Year Award” for 2018', NULL, 12.34, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FTY 2734548', notes='The winner of the “Bank Note of the Year Award” for 2018',
    public_notes=NULL, purchase_price=12.34,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493168);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201686), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493182), 60627103,
     'UNC', 1, FALSE, '33354088',
     NULL, NULL, 5.18, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9cea3ed2bd396706fd1a70f020077268f2a953fb226267a9d69507131f25537d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9cea3ed2bd396706fd1a70f020077268f2a953fb226267a9d69507131f25537d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2c973df7c4368fbb3914b9ed2ee270891bc94fa1dedb2a31474f10a0598dfbf4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c973df7c4368fbb3914b9ed2ee270891bc94fa1dedb2a31474f10a0598dfbf4-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='33354088', notes=NULL,
    public_notes=NULL, purchase_price=5.18,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9cea3ed2bd396706fd1a70f020077268f2a953fb226267a9d69507131f25537d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9cea3ed2bd396706fd1a70f020077268f2a953fb226267a9d69507131f25537d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2c973df7c4368fbb3914b9ed2ee270891bc94fa1dedb2a31474f10a0598dfbf4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c973df7c4368fbb3914b9ed2ee270891bc94fa1dedb2a31474f10a0598dfbf4-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493182);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201688), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493188), 51233205,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 1.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=1.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493188);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201697), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493214), 75170376,
     'UNC', 1, FALSE, '6 C/37 690519',
     NULL, 'Auction 176', 7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4546edfa3535fd206b5cbbc1c71953b850ca1f56d66c2537e5098735a8b38c75.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4546edfa3535fd206b5cbbc1c71953b850ca1f56d66c2537e5098735a8b38c75-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bb64377d972ffcd1135cdd32e16aa2d6c4b1174286b52a533fda517e7e75616d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bb64377d972ffcd1135cdd32e16aa2d6c4b1174286b52a533fda517e7e75616d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='6 C/37 690519', notes=NULL,
    public_notes='Auction 176', purchase_price=7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4546edfa3535fd206b5cbbc1c71953b850ca1f56d66c2537e5098735a8b38c75.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4546edfa3535fd206b5cbbc1c71953b850ca1f56d66c2537e5098735a8b38c75-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bb64377d972ffcd1135cdd32e16aa2d6c4b1174286b52a533fda517e7e75616d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bb64377d972ffcd1135cdd32e16aa2d6c4b1174286b52a533fda517e7e75616d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493214);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201698), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493215), 51526628,
     'UNC', 1, FALSE, 'AA 795476',
     NULL, NULL, 0.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 795476', notes=NULL,
    public_notes=NULL, purchase_price=0.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493215);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201713), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493244), 51234137,
     'UNC', 1, FALSE, 'AA 029289116',
     'The nominee for the “Bank Note of the Year Award” in 2013', NULL, 4.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 029289116', notes='The nominee for the “Bank Note of the Year Award” in 2013',
    public_notes=NULL, purchase_price=4.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493244);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201714), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494418), 78342102,
     'UNC', 1, FALSE, 'J/P 3465194',
     NULL, 'Auction 189', 26.6, 'EUR',
     'PMG', '64', '1914754-008',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4601511a0625b995e3a390f762e9fd440647d081f364b0052f2289bdf2f1af14.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4601511a0625b995e3a390f762e9fd440647d081f364b0052f2289bdf2f1af14-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/304148a6060b436ed8b75e65db3c1e329fce4435ef3a9e9aec389c94cbf42823.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/304148a6060b436ed8b75e65db3c1e329fce4435ef3a9e9aec389c94cbf42823-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J/P 3465194', notes=NULL,
    public_notes='Auction 189', purchase_price=26.6,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1914754-008',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4601511a0625b995e3a390f762e9fd440647d081f364b0052f2289bdf2f1af14.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4601511a0625b995e3a390f762e9fd440647d081f364b0052f2289bdf2f1af14-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/304148a6060b436ed8b75e65db3c1e329fce4435ef3a9e9aec389c94cbf42823.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/304148a6060b436ed8b75e65db3c1e329fce4435ef3a9e9aec389c94cbf42823-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494418);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201714), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493249), 78342287,
     'UNC', 1, FALSE, '1867 1967',
     NULL, 'Auction 189', 26.6, 'EUR',
     'PMG', '58', '1914754-007',
     '["EPQ"]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1867 1967', notes=NULL,
    public_notes='Auction 189', purchase_price=26.6,
    price_currency='EUR', grading_company='PMG',
    grading_score='58', cert_number='1914754-007',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493249);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201721), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493256), 51275994,
     'UNC', 1, FALSE, '8599786',
     NULL, NULL, 0.23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='8599786', notes=NULL,
    public_notes=NULL, purchase_price=0.23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493256);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201723), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493258), 77629061,
     'UNC', 1, FALSE, 'D/N 5585762',
     NULL, 'Auction 183', 105.66, 'EUR',
     'PCGS Banknote', '62', '595953.62/46941956',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3339aa4f09162d761f14d9f8ff5e7e44df047643df8035615a3fc045cd200801.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3339aa4f09162d761f14d9f8ff5e7e44df047643df8035615a3fc045cd200801-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0489b9431199846cea0e0776605e9bb5b250db65de5064c82ae7e29e64418bef.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0489b9431199846cea0e0776605e9bb5b250db65de5064c82ae7e29e64418bef-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D/N 5585762', notes=NULL,
    public_notes='Auction 183', purchase_price=105.66,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='62', cert_number='595953.62/46941956',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3339aa4f09162d761f14d9f8ff5e7e44df047643df8035615a3fc045cd200801.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3339aa4f09162d761f14d9f8ff5e7e44df047643df8035615a3fc045cd200801-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0489b9431199846cea0e0776605e9bb5b250db65de5064c82ae7e29e64418bef.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0489b9431199846cea0e0776605e9bb5b250db65de5064c82ae7e29e64418bef-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493258);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201730), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493267), 60624909,
     'AU', 1, FALSE, '1131186259',
     NULL, NULL, 10.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f41d73f66eacfe4d38d77295070cb140a97396a20a0aedfc14b283605383c06c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f41d73f66eacfe4d38d77295070cb140a97396a20a0aedfc14b283605383c06c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/271856eb03437bf26e60cf01369439fcc903ea1b8d5a794eaba3dccdb936de17.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/271856eb03437bf26e60cf01369439fcc903ea1b8d5a794eaba3dccdb936de17-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='1131186259', notes=NULL,
    public_notes=NULL, purchase_price=10.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f41d73f66eacfe4d38d77295070cb140a97396a20a0aedfc14b283605383c06c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f41d73f66eacfe4d38d77295070cb140a97396a20a0aedfc14b283605383c06c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/271856eb03437bf26e60cf01369439fcc903ea1b8d5a794eaba3dccdb936de17.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/271856eb03437bf26e60cf01369439fcc903ea1b8d5a794eaba3dccdb936de17-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493267);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201730), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493267), 61752154,
     'UNC', 1, FALSE, '1133556000',
     NULL, 'Auction 113', 97.02, 'EUR',
     'PMG', '69', '1763332-021',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/fb4d2b9f628febea47daa87c983bc70cac704b421b39fee48c06e2400ba604b1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fb4d2b9f628febea47daa87c983bc70cac704b421b39fee48c06e2400ba604b1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cdae1697ec21d30e1245f802ef720a6c3e1538c07ac877c988b2f3f8afd725b3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cdae1697ec21d30e1245f802ef720a6c3e1538c07ac877c988b2f3f8afd725b3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1133556000', notes=NULL,
    public_notes='Auction 113', purchase_price=97.02,
    price_currency='EUR', grading_company='PMG',
    grading_score='69', cert_number='1763332-021',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/fb4d2b9f628febea47daa87c983bc70cac704b421b39fee48c06e2400ba604b1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fb4d2b9f628febea47daa87c983bc70cac704b421b39fee48c06e2400ba604b1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cdae1697ec21d30e1245f802ef720a6c3e1538c07ac877c988b2f3f8afd725b3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cdae1697ec21d30e1245f802ef720a6c3e1538c07ac877c988b2f3f8afd725b3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493267);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871767,
     'UNC', 1, FALSE, '59.916.865 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/65b5661ce502e1ebbaebfef97bcceb20aaa00859ef706eb73686e0f7000b862b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/65b5661ce502e1ebbaebfef97bcceb20aaa00859ef706eb73686e0f7000b862b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8c837f7a6ecb2d959a3d9e66587eec676b9f740e6cbb95892e4a5d5f40299e80.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8c837f7a6ecb2d959a3d9e66587eec676b9f740e6cbb95892e4a5d5f40299e80-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.865 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/65b5661ce502e1ebbaebfef97bcceb20aaa00859ef706eb73686e0f7000b862b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/65b5661ce502e1ebbaebfef97bcceb20aaa00859ef706eb73686e0f7000b862b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8c837f7a6ecb2d959a3d9e66587eec676b9f740e6cbb95892e4a5d5f40299e80.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8c837f7a6ecb2d959a3d9e66587eec676b9f740e6cbb95892e4a5d5f40299e80-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871778,
     'UNC', 1, FALSE, '59.916.866 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5e35dbfcd271a915402fe92e1ac2cc5470da449b67ba36383ca12b87a0bc1e05.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5e35dbfcd271a915402fe92e1ac2cc5470da449b67ba36383ca12b87a0bc1e05-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/73094aed9dec1f176e6c4718fede8299570a98dc7c8db783d0fcaac6c6dd55b0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/73094aed9dec1f176e6c4718fede8299570a98dc7c8db783d0fcaac6c6dd55b0-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.866 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5e35dbfcd271a915402fe92e1ac2cc5470da449b67ba36383ca12b87a0bc1e05.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5e35dbfcd271a915402fe92e1ac2cc5470da449b67ba36383ca12b87a0bc1e05-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/73094aed9dec1f176e6c4718fede8299570a98dc7c8db783d0fcaac6c6dd55b0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/73094aed9dec1f176e6c4718fede8299570a98dc7c8db783d0fcaac6c6dd55b0-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871782,
     'UNC', 1, FALSE, '59.916.867 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f00b126be215382a6beb12e5090c9428032a505a881aca843f18154327e4d18a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f00b126be215382a6beb12e5090c9428032a505a881aca843f18154327e4d18a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/af383cf66560c2c0785deac1cf389f1ef1d8544f4892797790612cdb73f540d5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/af383cf66560c2c0785deac1cf389f1ef1d8544f4892797790612cdb73f540d5-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.867 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f00b126be215382a6beb12e5090c9428032a505a881aca843f18154327e4d18a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f00b126be215382a6beb12e5090c9428032a505a881aca843f18154327e4d18a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/af383cf66560c2c0785deac1cf389f1ef1d8544f4892797790612cdb73f540d5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/af383cf66560c2c0785deac1cf389f1ef1d8544f4892797790612cdb73f540d5-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871787,
     'UNC', 1, FALSE, '59.916.868 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3f94cbedb0371eefa61eac1d7db0afba25b986dad3304192bde4d83521a16f53.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3f94cbedb0371eefa61eac1d7db0afba25b986dad3304192bde4d83521a16f53-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/48d9d22efd97e1c445689d675e9d929dab4467e489e41adf5aeba8ad65748d46.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/48d9d22efd97e1c445689d675e9d929dab4467e489e41adf5aeba8ad65748d46-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.868 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3f94cbedb0371eefa61eac1d7db0afba25b986dad3304192bde4d83521a16f53.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3f94cbedb0371eefa61eac1d7db0afba25b986dad3304192bde4d83521a16f53-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/48d9d22efd97e1c445689d675e9d929dab4467e489e41adf5aeba8ad65748d46.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/48d9d22efd97e1c445689d675e9d929dab4467e489e41adf5aeba8ad65748d46-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871791,
     'UNC', 1, FALSE, '59.916.869 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1d62ca497e0282f5032fb15d039cb09b73869d2f8a280197bda24c37574dfc11.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1d62ca497e0282f5032fb15d039cb09b73869d2f8a280197bda24c37574dfc11-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/82cc5d4ab7fb8e81b016d1bc378b48939b6dc091149e00114c6185171243d2ff.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/82cc5d4ab7fb8e81b016d1bc378b48939b6dc091149e00114c6185171243d2ff-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.869 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1d62ca497e0282f5032fb15d039cb09b73869d2f8a280197bda24c37574dfc11.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1d62ca497e0282f5032fb15d039cb09b73869d2f8a280197bda24c37574dfc11-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/82cc5d4ab7fb8e81b016d1bc378b48939b6dc091149e00114c6185171243d2ff.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/82cc5d4ab7fb8e81b016d1bc378b48939b6dc091149e00114c6185171243d2ff-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871801,
     'UNC', 1, FALSE, '59.916.870 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1a9f9babee2aaf85ae8e86e14e3e28566238f072f256173efea2416afd540a57.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1a9f9babee2aaf85ae8e86e14e3e28566238f072f256173efea2416afd540a57-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e3410a65016d59b18d5107850572b3a4a4b75ac7d38110490486f55f770ece0f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e3410a65016d59b18d5107850572b3a4a4b75ac7d38110490486f55f770ece0f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.870 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1a9f9babee2aaf85ae8e86e14e3e28566238f072f256173efea2416afd540a57.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1a9f9babee2aaf85ae8e86e14e3e28566238f072f256173efea2416afd540a57-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e3410a65016d59b18d5107850572b3a4a4b75ac7d38110490486f55f770ece0f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e3410a65016d59b18d5107850572b3a4a4b75ac7d38110490486f55f770ece0f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871804,
     'UNC', 1, FALSE, '59.916.871 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d360bfec7c73bd0f1eb8ec68f4a529663a567771eb1e38d68ef934f5625bcd33.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d360bfec7c73bd0f1eb8ec68f4a529663a567771eb1e38d68ef934f5625bcd33-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3339355fc1786572720eb8fccabb7b2540234be6aaf6e099d11802039cb8b3c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3339355fc1786572720eb8fccabb7b2540234be6aaf6e099d11802039cb8b3c7-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.871 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d360bfec7c73bd0f1eb8ec68f4a529663a567771eb1e38d68ef934f5625bcd33.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d360bfec7c73bd0f1eb8ec68f4a529663a567771eb1e38d68ef934f5625bcd33-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3339355fc1786572720eb8fccabb7b2540234be6aaf6e099d11802039cb8b3c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3339355fc1786572720eb8fccabb7b2540234be6aaf6e099d11802039cb8b3c7-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871810,
     'UNC', 1, FALSE, '59.916.878 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a2c99a58d8b1949bb7b8727966936fde56a324e1764391438f760ca8409f1883.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2c99a58d8b1949bb7b8727966936fde56a324e1764391438f760ca8409f1883-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/98c603a4f5ec3fcb5bf1e3c2f272d32ea41a0854b32a69e8dd8ac839a09fd15c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/98c603a4f5ec3fcb5bf1e3c2f272d32ea41a0854b32a69e8dd8ac839a09fd15c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.878 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a2c99a58d8b1949bb7b8727966936fde56a324e1764391438f760ca8409f1883.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2c99a58d8b1949bb7b8727966936fde56a324e1764391438f760ca8409f1883-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/98c603a4f5ec3fcb5bf1e3c2f272d32ea41a0854b32a69e8dd8ac839a09fd15c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/98c603a4f5ec3fcb5bf1e3c2f272d32ea41a0854b32a69e8dd8ac839a09fd15c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871821,
     'UNC', 1, FALSE, '59.916.812 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a99b4325792b26c3b139af85090ae52580cb6b7abb54a75f4ba5a42196996c62.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a99b4325792b26c3b139af85090ae52580cb6b7abb54a75f4ba5a42196996c62-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6fd3ea2d1b1ee529cf450128ed7e643ac5f3b7b564c8bbb1f88f5ee442b951e2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6fd3ea2d1b1ee529cf450128ed7e643ac5f3b7b564c8bbb1f88f5ee442b951e2-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.812 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a99b4325792b26c3b139af85090ae52580cb6b7abb54a75f4ba5a42196996c62.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a99b4325792b26c3b139af85090ae52580cb6b7abb54a75f4ba5a42196996c62-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6fd3ea2d1b1ee529cf450128ed7e643ac5f3b7b564c8bbb1f88f5ee442b951e2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6fd3ea2d1b1ee529cf450128ed7e643ac5f3b7b564c8bbb1f88f5ee442b951e2-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871828,
     'UNC', 1, FALSE, '59.916.813 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0ad2daba65ccad15516b07562fc68628c31c27050ea67a0b9c4649f4ecc81bca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0ad2daba65ccad15516b07562fc68628c31c27050ea67a0b9c4649f4ecc81bca-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/65e632724449a019622996fd3aca482a8925f325a5419c4065080ec521b27b73.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/65e632724449a019622996fd3aca482a8925f325a5419c4065080ec521b27b73-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.813 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0ad2daba65ccad15516b07562fc68628c31c27050ea67a0b9c4649f4ecc81bca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0ad2daba65ccad15516b07562fc68628c31c27050ea67a0b9c4649f4ecc81bca-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/65e632724449a019622996fd3aca482a8925f325a5419c4065080ec521b27b73.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/65e632724449a019622996fd3aca482a8925f325a5419c4065080ec521b27b73-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871833,
     'UNC', 1, FALSE, '59.916.814 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c2fdaa8e208c45174dfe50ec412868e93e36116c2822dae5bfac1958f5383b26.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c2fdaa8e208c45174dfe50ec412868e93e36116c2822dae5bfac1958f5383b26-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4a6854a9083fe41170261c4ba8f6b5e24f212e3978cd5e660908b369f2a5ed53.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4a6854a9083fe41170261c4ba8f6b5e24f212e3978cd5e660908b369f2a5ed53-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.814 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c2fdaa8e208c45174dfe50ec412868e93e36116c2822dae5bfac1958f5383b26.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c2fdaa8e208c45174dfe50ec412868e93e36116c2822dae5bfac1958f5383b26-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4a6854a9083fe41170261c4ba8f6b5e24f212e3978cd5e660908b369f2a5ed53.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4a6854a9083fe41170261c4ba8f6b5e24f212e3978cd5e660908b369f2a5ed53-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871839,
     'UNC', 1, FALSE, '59.916.815 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9bb7dc9000866eb30a626c7f99832cc81a6f764043bcf642cfb49fd0a7222120.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9bb7dc9000866eb30a626c7f99832cc81a6f764043bcf642cfb49fd0a7222120-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1c738e94a481cafb3c025a4875ca66c8785c4548f3272ea679aa3f4b3428abda.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1c738e94a481cafb3c025a4875ca66c8785c4548f3272ea679aa3f4b3428abda-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.815 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9bb7dc9000866eb30a626c7f99832cc81a6f764043bcf642cfb49fd0a7222120.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9bb7dc9000866eb30a626c7f99832cc81a6f764043bcf642cfb49fd0a7222120-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1c738e94a481cafb3c025a4875ca66c8785c4548f3272ea679aa3f4b3428abda.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1c738e94a481cafb3c025a4875ca66c8785c4548f3272ea679aa3f4b3428abda-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871843,
     'UNC', 1, FALSE, '59.916.816 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/738c8a30ca8cafe0305fd299982f7f3c8f0ad82d648e634bcbdbbfefb294e48c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/738c8a30ca8cafe0305fd299982f7f3c8f0ad82d648e634bcbdbbfefb294e48c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/dfe235cc67d2cd7d22fc61b57916cceed60cf8f838ba019e4ec3b55754017ce7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dfe235cc67d2cd7d22fc61b57916cceed60cf8f838ba019e4ec3b55754017ce7-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.816 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/738c8a30ca8cafe0305fd299982f7f3c8f0ad82d648e634bcbdbbfefb294e48c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/738c8a30ca8cafe0305fd299982f7f3c8f0ad82d648e634bcbdbbfefb294e48c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/dfe235cc67d2cd7d22fc61b57916cceed60cf8f838ba019e4ec3b55754017ce7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dfe235cc67d2cd7d22fc61b57916cceed60cf8f838ba019e4ec3b55754017ce7-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871849,
     'UNC', 1, FALSE, '59.916.817 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d04931b419738048750130536f21f1d504fc61883adc7b247c8ffbb8c8e670e0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d04931b419738048750130536f21f1d504fc61883adc7b247c8ffbb8c8e670e0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5de959dc87f2d795e755b69ca3e4482620b44cfbccb95ab50ab3644f365f65a6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5de959dc87f2d795e755b69ca3e4482620b44cfbccb95ab50ab3644f365f65a6-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.817 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d04931b419738048750130536f21f1d504fc61883adc7b247c8ffbb8c8e670e0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d04931b419738048750130536f21f1d504fc61883adc7b247c8ffbb8c8e670e0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5de959dc87f2d795e755b69ca3e4482620b44cfbccb95ab50ab3644f365f65a6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5de959dc87f2d795e755b69ca3e4482620b44cfbccb95ab50ab3644f365f65a6-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871851,
     'UNC', 1, FALSE, '59.916.818 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/aeeb50f4aff60091508bd3dcc88e59ab77e8ca143332c2c003db4f4bf46076dc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aeeb50f4aff60091508bd3dcc88e59ab77e8ca143332c2c003db4f4bf46076dc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f1a45756338af5b38c3b56cd01944cefff47cf0a160dcf9595667f238faa95bd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f1a45756338af5b38c3b56cd01944cefff47cf0a160dcf9595667f238faa95bd-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.818 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/aeeb50f4aff60091508bd3dcc88e59ab77e8ca143332c2c003db4f4bf46076dc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aeeb50f4aff60091508bd3dcc88e59ab77e8ca143332c2c003db4f4bf46076dc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f1a45756338af5b38c3b56cd01944cefff47cf0a160dcf9595667f238faa95bd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f1a45756338af5b38c3b56cd01944cefff47cf0a160dcf9595667f238faa95bd-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871857,
     'UNC', 1, FALSE, '59.916.819 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4841f395990492e44efc95ce9d151f9131b63c667b741f6fc0b867014e8e9f9d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4841f395990492e44efc95ce9d151f9131b63c667b741f6fc0b867014e8e9f9d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/fd703052ebc93903fcc78fc2a7f342e1b39816eed53f86549be0a955f9f7dc2a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fd703052ebc93903fcc78fc2a7f342e1b39816eed53f86549be0a955f9f7dc2a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.819 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4841f395990492e44efc95ce9d151f9131b63c667b741f6fc0b867014e8e9f9d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4841f395990492e44efc95ce9d151f9131b63c667b741f6fc0b867014e8e9f9d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/fd703052ebc93903fcc78fc2a7f342e1b39816eed53f86549be0a955f9f7dc2a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fd703052ebc93903fcc78fc2a7f342e1b39816eed53f86549be0a955f9f7dc2a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871860,
     'UNC', 1, FALSE, '59.916.820 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d315f72c93c9e1cd9070e72bc7e68e78475f375b8bd38beaf56f576ff8c0b5cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d315f72c93c9e1cd9070e72bc7e68e78475f375b8bd38beaf56f576ff8c0b5cc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/70555eba92e86bfe560fff79db3ccf89595bc247a1875cfdc49b66267534fcf5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/70555eba92e86bfe560fff79db3ccf89595bc247a1875cfdc49b66267534fcf5-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.820 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d315f72c93c9e1cd9070e72bc7e68e78475f375b8bd38beaf56f576ff8c0b5cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d315f72c93c9e1cd9070e72bc7e68e78475f375b8bd38beaf56f576ff8c0b5cc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/70555eba92e86bfe560fff79db3ccf89595bc247a1875cfdc49b66267534fcf5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/70555eba92e86bfe560fff79db3ccf89595bc247a1875cfdc49b66267534fcf5-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871868,
     'UNC', 1, FALSE, '59.916.821 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/11f87c27037695e00644f1c948924ae322ac1d8ed9dc6dfa8c9bedbd5d4e03cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/11f87c27037695e00644f1c948924ae322ac1d8ed9dc6dfa8c9bedbd5d4e03cc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/56668222568b7ed835a0890a1a4e024575e635ea13c792c5e2f04a06780a0e61.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/56668222568b7ed835a0890a1a4e024575e635ea13c792c5e2f04a06780a0e61-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.821 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/11f87c27037695e00644f1c948924ae322ac1d8ed9dc6dfa8c9bedbd5d4e03cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/11f87c27037695e00644f1c948924ae322ac1d8ed9dc6dfa8c9bedbd5d4e03cc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/56668222568b7ed835a0890a1a4e024575e635ea13c792c5e2f04a06780a0e61.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/56668222568b7ed835a0890a1a4e024575e635ea13c792c5e2f04a06780a0e61-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871873,
     'UNC', 1, FALSE, '59.916.808 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8930322026585477457d5e7855532adc5d352b41a2e445acaf4a8e93bb25de13.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8930322026585477457d5e7855532adc5d352b41a2e445acaf4a8e93bb25de13-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b479642eb82fe5f906a867f51a36f83382417f034ed67c332227e9b1b0dc268f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b479642eb82fe5f906a867f51a36f83382417f034ed67c332227e9b1b0dc268f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.808 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8930322026585477457d5e7855532adc5d352b41a2e445acaf4a8e93bb25de13.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8930322026585477457d5e7855532adc5d352b41a2e445acaf4a8e93bb25de13-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b479642eb82fe5f906a867f51a36f83382417f034ed67c332227e9b1b0dc268f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b479642eb82fe5f906a867f51a36f83382417f034ed67c332227e9b1b0dc268f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871878,
     'UNC', 1, FALSE, '59.916.809 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/44e8101b5bb50d3930f19d9a39804c04fcd48daaa525d94beaaf3ee7aec04d69.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/44e8101b5bb50d3930f19d9a39804c04fcd48daaa525d94beaaf3ee7aec04d69-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/76a5eee21a3f81943c9628fa068661632b40e774815507726fb10338a2dc2a93.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/76a5eee21a3f81943c9628fa068661632b40e774815507726fb10338a2dc2a93-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.809 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/44e8101b5bb50d3930f19d9a39804c04fcd48daaa525d94beaaf3ee7aec04d69.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/44e8101b5bb50d3930f19d9a39804c04fcd48daaa525d94beaaf3ee7aec04d69-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/76a5eee21a3f81943c9628fa068661632b40e774815507726fb10338a2dc2a93.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/76a5eee21a3f81943c9628fa068661632b40e774815507726fb10338a2dc2a93-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871882,
     'UNC', 1, FALSE, '59.916.810 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/959cdb72b5ec36dc2a88bb3d4848648881b03375d465ca49afa3cb7ff4acbe2a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/959cdb72b5ec36dc2a88bb3d4848648881b03375d465ca49afa3cb7ff4acbe2a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0951575b9bfe80f385602f498d4cb5325e0f58a3755da32851caf0b97746e3b1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0951575b9bfe80f385602f498d4cb5325e0f58a3755da32851caf0b97746e3b1-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.810 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/959cdb72b5ec36dc2a88bb3d4848648881b03375d465ca49afa3cb7ff4acbe2a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/959cdb72b5ec36dc2a88bb3d4848648881b03375d465ca49afa3cb7ff4acbe2a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0951575b9bfe80f385602f498d4cb5325e0f58a3755da32851caf0b97746e3b1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0951575b9bfe80f385602f498d4cb5325e0f58a3755da32851caf0b97746e3b1-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871892,
     'UNC', 1, FALSE, '59.916.811 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1b0ca06bdc52543561c446bddc54818214d0bde324ba8198b70b908a4744493c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1b0ca06bdc52543561c446bddc54818214d0bde324ba8198b70b908a4744493c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a9c2e0b774287a94f998a7de09a8cb9061618925d99e3fd62c5f67b80fc4d5da.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a9c2e0b774287a94f998a7de09a8cb9061618925d99e3fd62c5f67b80fc4d5da-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.811 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1b0ca06bdc52543561c446bddc54818214d0bde324ba8198b70b908a4744493c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1b0ca06bdc52543561c446bddc54818214d0bde324ba8198b70b908a4744493c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a9c2e0b774287a94f998a7de09a8cb9061618925d99e3fd62c5f67b80fc4d5da.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a9c2e0b774287a94f998a7de09a8cb9061618925d99e3fd62c5f67b80fc4d5da-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871895,
     'UNC', 1, FALSE, '59.916.872 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/262ebf71aad62a8036d12731b73fe8d635dc607a5976fd187bf25002a8350f53.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/262ebf71aad62a8036d12731b73fe8d635dc607a5976fd187bf25002a8350f53-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/889621b115597651a8d6433b50d0c9bf6bd684d0d8375350e2a1226da321e890.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/889621b115597651a8d6433b50d0c9bf6bd684d0d8375350e2a1226da321e890-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.872 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/262ebf71aad62a8036d12731b73fe8d635dc607a5976fd187bf25002a8350f53.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/262ebf71aad62a8036d12731b73fe8d635dc607a5976fd187bf25002a8350f53-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/889621b115597651a8d6433b50d0c9bf6bd684d0d8375350e2a1226da321e890.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/889621b115597651a8d6433b50d0c9bf6bd684d0d8375350e2a1226da321e890-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871900,
     'UNC', 1, FALSE, '59.916.873 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/06678afa171f513a3ebb64090b2e052cd61e0340336c9a4c8c33e53160d24a0a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/06678afa171f513a3ebb64090b2e052cd61e0340336c9a4c8c33e53160d24a0a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c984a7c3a4eb786836ccbeec2857149cd89ddb9176721b860e6803687e4d2905.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c984a7c3a4eb786836ccbeec2857149cd89ddb9176721b860e6803687e4d2905-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='59.916.873 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/06678afa171f513a3ebb64090b2e052cd61e0340336c9a4c8c33e53160d24a0a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/06678afa171f513a3ebb64090b2e052cd61e0340336c9a4c8c33e53160d24a0a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c984a7c3a4eb786836ccbeec2857149cd89ddb9176721b860e6803687e4d2905.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c984a7c3a4eb786836ccbeec2857149cd89ddb9176721b860e6803687e4d2905-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494060), 58871903,
     'UNC', 1, FALSE, '88.913.502 C',
     NULL, 'Auction 97', 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/002f4f22cc2789c877636c66f7f20f6f3c7f17dd5d219e6b4b2507e1dae16ab0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/002f4f22cc2789c877636c66f7f20f6f3c7f17dd5d219e6b4b2507e1dae16ab0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9099f939ca4f2bc741f5229df188edad523b2341fbb042468a461493f8327295.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9099f939ca4f2bc741f5229df188edad523b2341fbb042468a461493f8327295-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='88.913.502 C', notes=NULL,
    public_notes='Auction 97', purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/002f4f22cc2789c877636c66f7f20f6f3c7f17dd5d219e6b4b2507e1dae16ab0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/002f4f22cc2789c877636c66f7f20f6f3c7f17dd5d219e6b4b2507e1dae16ab0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9099f939ca4f2bc741f5229df188edad523b2341fbb042468a461493f8327295.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9099f939ca4f2bc741f5229df188edad523b2341fbb042468a461493f8327295-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201751), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493293), 51526427,
     'UNC', 1, FALSE, '9601484153',
     NULL, NULL, 7.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='9601484153', notes=NULL,
    public_notes=NULL, purchase_price=7.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493293);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201752), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493294), 51235548,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493294);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201753), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493295), 51433045,
     'UNC', 1, FALSE, 'CDA 7819909',
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 12.34, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CDA 7819909', notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=12.34,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493295);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201770), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493313), 51234435,
     'UNC', 1, FALSE, 'A 68207982',
     NULL, NULL, 3.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 68207982', notes=NULL,
    public_notes=NULL, purchase_price=3.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493313);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201796), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493364), 51234195,
     'UNC', 1, FALSE, 'AK 270254',
     NULL, NULL, 19.15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AK 270254', notes=NULL,
    public_notes=NULL, purchase_price=19.15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493364);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201806), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493402), 51515262,
     'UNC', 1, FALSE, 'EH 3653145 E',
     NULL, NULL, 0.74, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EH 3653145 E', notes=NULL,
    public_notes=NULL, purchase_price=0.74,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493402);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201827), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493442), 70287638,
     'UNC', 1, FALSE, 'LT400305A',
     NULL, 'Auction 155', 72.35, 'EUR',
     'PMG', '65', '2188964-033',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7e6a29fca8997b4650b2f9f6a15c7a688a97864d113978e597c943d914748b28.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7e6a29fca8997b4650b2f9f6a15c7a688a97864d113978e597c943d914748b28-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1a8076806b5eb5527f9d2eee9d2182ba2d86ebcd970856c93729b4702fdd5e6f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1a8076806b5eb5527f9d2eee9d2182ba2d86ebcd970856c93729b4702fdd5e6f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LT400305A', notes=NULL,
    public_notes='Auction 155', purchase_price=72.35,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='2188964-033',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7e6a29fca8997b4650b2f9f6a15c7a688a97864d113978e597c943d914748b28.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7e6a29fca8997b4650b2f9f6a15c7a688a97864d113978e597c943d914748b28-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1a8076806b5eb5527f9d2eee9d2182ba2d86ebcd970856c93729b4702fdd5e6f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1a8076806b5eb5527f9d2eee9d2182ba2d86ebcd970856c93729b4702fdd5e6f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493442);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201892), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493941), 51301169,
     'UNC', 1, FALSE, 'V 8149996',
     NULL, NULL, 2.94, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='V 8149996', notes=NULL,
    public_notes=NULL, purchase_price=2.94,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493941);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201894), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493559), 61752234,
     'AU', 1, FALSE, '9613900',
     NULL, 'Auction 113', 16.08, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4fc2044c46cdee18d9f1b633afbeeea78335c2bd47c3e9e63fad596be2eabeed.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4fc2044c46cdee18d9f1b633afbeeea78335c2bd47c3e9e63fad596be2eabeed-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6a4ac05521d3aa09986cf6fa2eaced6f38dae85eb737dfa0e1326a243a439efa.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6a4ac05521d3aa09986cf6fa2eaced6f38dae85eb737dfa0e1326a243a439efa-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='9613900', notes=NULL,
    public_notes='Auction 113', purchase_price=16.08,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4fc2044c46cdee18d9f1b633afbeeea78335c2bd47c3e9e63fad596be2eabeed.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4fc2044c46cdee18d9f1b633afbeeea78335c2bd47c3e9e63fad596be2eabeed-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6a4ac05521d3aa09986cf6fa2eaced6f38dae85eb737dfa0e1326a243a439efa.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6a4ac05521d3aa09986cf6fa2eaced6f38dae85eb737dfa0e1326a243a439efa-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493559);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201925), (SELECT id FROM banknote_issues WHERE numista_issue_id = 522546), 60313913,
     'AU', 1, FALSE, 'E 3708141',
     NULL, 'Auction 107', 15.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/48c30ed70afb616c827436e0950881ba5a4fdc90f38b108b0a4f543e88519cf7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/48c30ed70afb616c827436e0950881ba5a4fdc90f38b108b0a4f543e88519cf7-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cb56958d15c3d621cab67d58705755790299283bfdc815f4a80f2a721e79cf3c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cb56958d15c3d621cab67d58705755790299283bfdc815f4a80f2a721e79cf3c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='E 3708141', notes=NULL,
    public_notes='Auction 107', purchase_price=15.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/48c30ed70afb616c827436e0950881ba5a4fdc90f38b108b0a4f543e88519cf7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/48c30ed70afb616c827436e0950881ba5a4fdc90f38b108b0a4f543e88519cf7-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cb56958d15c3d621cab67d58705755790299283bfdc815f4a80f2a721e79cf3c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cb56958d15c3d621cab67d58705755790299283bfdc815f4a80f2a721e79cf3c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 522546);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201946), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493626), 51236555,
     'UNC', 1, FALSE, 'АВ 0516341',
     'The nominee for the “Bank Note of the Year Award” in 2019', NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='АВ 0516341', notes='The nominee for the “Bank Note of the Year Award” in 2019',
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493626);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 201994), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506943), 51734050,
     'UNC', 1, FALSE, 'B 400590857',
     'The nominee for the “Bank Note of the Year Award” in 2015', NULL, 9.36, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 400590857', notes='The nominee for the “Bank Note of the Year Award” in 2015',
    public_notes=NULL, purchase_price=9.36,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506943);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202008), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493707), 51236546,
     'UNC', 1, FALSE, 'АЖ 4919423',
     'The nominee for the “Bank Note of the Year Award” in 2016', NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='АЖ 4919423', notes='The nominee for the “Bank Note of the Year Award” in 2016',
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493707);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202010), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493710), 51236534,
     'UNC', 1, FALSE, 'ВЖ 2876764',
     'The nominee for the “Bank Note of the Year Award” in 2020', NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ВЖ 2876764', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493710);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202013), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493713), 51275811,
     'UNC', 1, FALSE, 'БЖ 9988851',
     NULL, NULL, 1.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='БЖ 9988851', notes=NULL,
    public_notes=NULL, purchase_price=1.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493713);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202014), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493714), 51231462,
     'UNC', 1, FALSE, 'C 905878',
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 2.24, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 905878', notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=2.24,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493714);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202014), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493714), 59827907,
     'UNC', 1, FALSE, 'A 966772',
     'The nominee for the “Bank Note of the Year Award” in 2017', 'Auction 102', 12.71, 'EUR',
     'PCGS Banknote', '66', '80807094',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/61bbeeedeaa07e11ec181ba833faab390ec4de23d87e83c45afcc5f98eaedff8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/61bbeeedeaa07e11ec181ba833faab390ec4de23d87e83c45afcc5f98eaedff8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/55096818cc95a5f80d565b7965d10865c899f6bd18070fd8f4835b287e7ef25f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/55096818cc95a5f80d565b7965d10865c899f6bd18070fd8f4835b287e7ef25f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 966772', notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes='Auction 102', purchase_price=12.71,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='66', cert_number='80807094',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/61bbeeedeaa07e11ec181ba833faab390ec4de23d87e83c45afcc5f98eaedff8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/61bbeeedeaa07e11ec181ba833faab390ec4de23d87e83c45afcc5f98eaedff8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/55096818cc95a5f80d565b7965d10865c899f6bd18070fd8f4835b287e7ef25f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/55096818cc95a5f80d565b7965d10865c899f6bd18070fd8f4835b287e7ef25f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493714);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202020), (SELECT id FROM banknote_issues WHERE numista_issue_id = 759651), 78547692,
     'UNC', 1, FALSE, 'АН 2222242',
     'Fancy Number', NULL, 4.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f062471eb0a59c66374b32be73d71b0326176dee5c6af5efee40f3cd33c70603.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f062471eb0a59c66374b32be73d71b0326176dee5c6af5efee40f3cd33c70603-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/44f22819d9f5eb159df1c9c2ae329e3ae38692edae141dc0121328686d3fe4cb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/44f22819d9f5eb159df1c9c2ae329e3ae38692edae141dc0121328686d3fe4cb-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='АН 2222242', notes='Fancy Number',
    public_notes=NULL, purchase_price=4.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f062471eb0a59c66374b32be73d71b0326176dee5c6af5efee40f3cd33c70603.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f062471eb0a59c66374b32be73d71b0326176dee5c6af5efee40f3cd33c70603-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/44f22819d9f5eb159df1c9c2ae329e3ae38692edae141dc0121328686d3fe4cb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/44f22819d9f5eb159df1c9c2ae329e3ae38692edae141dc0121328686d3fe4cb-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 759651);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202020), (SELECT id FROM banknote_issues WHERE numista_issue_id = 759651), 78547734,
     'UNC', 1, FALSE, 'АН 2222241',
     'Fancy Number', NULL, 4.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='АН 2222241', notes='Fancy Number',
    public_notes=NULL, purchase_price=4.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 759651);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202026), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493727), 51231309,
     'UNC', 1, FALSE, 'DK 161388535',
     'The nominee for the “Bank Note of the Year Award” in 2016', NULL, 6.81, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DK 161388535', notes='The nominee for the “Bank Note of the Year Award” in 2016',
    public_notes=NULL, purchase_price=6.81,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493727);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202028), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493729), 51233237,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 2.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=2.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493729);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202029), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493730), 51615391,
     'UNC', 1, FALSE, 'AE 6106519',
     NULL, NULL, 3.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AE 6106519', notes=NULL,
    public_notes=NULL, purchase_price=3.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493730);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202035), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493736), 51236694,
     'VF', 1, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='VF', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493736);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202037), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493738), 60315019,
     'UNC', 1, FALSE, 'AA 6869379',
     NULL, 'Auction 107', 18.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2cd6a9155830721ca3647c332307bcb13663e743a9b68352544933c56ab49ec4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2cd6a9155830721ca3647c332307bcb13663e743a9b68352544933c56ab49ec4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5f5f5b6dfabc5aff3eb172c2db91d03d320bddf691d6b99ff761ebcc990a2366.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5f5f5b6dfabc5aff3eb172c2db91d03d320bddf691d6b99ff761ebcc990a2366-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 6869379', notes=NULL,
    public_notes='Auction 107', purchase_price=18.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2cd6a9155830721ca3647c332307bcb13663e743a9b68352544933c56ab49ec4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2cd6a9155830721ca3647c332307bcb13663e743a9b68352544933c56ab49ec4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5f5f5b6dfabc5aff3eb172c2db91d03d320bddf691d6b99ff761ebcc990a2366.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5f5f5b6dfabc5aff3eb172c2db91d03d320bddf691d6b99ff761ebcc990a2366-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493738);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202039), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493740), 51236373,
     'UNC', 7, FALSE, 'ЮЄ 9416427',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=7, for_trade=FALSE,
    serial_number='ЮЄ 9416427', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493740);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202045), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493746), 51236364,
     'UNC', 2, FALSE, 'ЦБ 0226408',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=2, for_trade=FALSE,
    serial_number='ЦБ 0226408', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493746);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202100), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494176), 51233884,
     'UNC', 1, FALSE, 'A 3026074539 A',
     NULL, NULL, 0.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 3026074539 A', notes=NULL,
    public_notes=NULL, purchase_price=0.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494176);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202121), (SELECT id FROM banknote_issues WHERE numista_issue_id = 493954), 78342414,
     'UNC', 1, FALSE, '20A 111707',
     NULL, 'Auction 189', 21, 'EUR',
     'PMG', '64', '1922227-018',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/ad0a946dcc8825bd62cb2b9c536e27a74dda47c207913d79d2b47c374610e077.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ad0a946dcc8825bd62cb2b9c536e27a74dda47c207913d79d2b47c374610e077-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='20A 111707', notes=NULL,
    public_notes='Auction 189', purchase_price=21,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1922227-018',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/ad0a946dcc8825bd62cb2b9c536e27a74dda47c207913d79d2b47c374610e077.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ad0a946dcc8825bd62cb2b9c536e27a74dda47c207913d79d2b47c374610e077-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 493954);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202139), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494065), 51234428,
     'UNC', 1, FALSE, 'B 46623796',
     NULL, NULL, 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 46623796', notes=NULL,
    public_notes=NULL, purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494065);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202145), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494075), 51231534,
     'UNC', 1, FALSE, 'GE 64353066',
     NULL, NULL, 1.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GE 64353066', notes=NULL,
    public_notes=NULL, purchase_price=1.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494075);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202145), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494075), 73583748,
     'UNC', 1, FALSE, 'BO 34857353',
     NULL, NULL, 1.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BO 34857353', notes=NULL,
    public_notes=NULL, purchase_price=1.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494075);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202153), (SELECT id FROM banknote_issues WHERE numista_issue_id = 581575), 51236041,
     'UNC', 1, FALSE, 'AM 970840',
     NULL, NULL, 2.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AM 970840', notes=NULL,
    public_notes=NULL, purchase_price=2.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 581575);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202154), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494107), 73584260,
     'UNC', 1, FALSE, '162 C 8784103',
     NULL, NULL, 25, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='162 C 8784103', notes=NULL,
    public_notes=NULL, purchase_price=25,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494107);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202163), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499520), 60312003,
     'UNC', 1, FALSE, '888 852094',
     NULL, NULL, 6.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0e9c2ac51548d761866dcbc50a61d7675ac55b7ae9fc8d9e3ecf56e8599f3c57.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0e9c2ac51548d761866dcbc50a61d7675ac55b7ae9fc8d9e3ecf56e8599f3c57-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ddfc918336d8c9b11fc8adec999820910858c272def6baf9462ddc886e3e2f15.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ddfc918336d8c9b11fc8adec999820910858c272def6baf9462ddc886e3e2f15-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='888 852094', notes=NULL,
    public_notes=NULL, purchase_price=6.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0e9c2ac51548d761866dcbc50a61d7675ac55b7ae9fc8d9e3ecf56e8599f3c57.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0e9c2ac51548d761866dcbc50a61d7675ac55b7ae9fc8d9e3ecf56e8599f3c57-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ddfc918336d8c9b11fc8adec999820910858c272def6baf9462ddc886e3e2f15.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ddfc918336d8c9b11fc8adec999820910858c272def6baf9462ddc886e3e2f15-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499520);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202197), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494183), 51234133,
     'UNC', 1, FALSE, 'AA 047398442',
     NULL, NULL, 2.06, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 047398442', notes=NULL,
    public_notes=NULL, purchase_price=2.06,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494183);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202203), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494201), 51234148,
     'UNC', 1, FALSE, 'AA 045039801',
     NULL, NULL, 7.45, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 045039801', notes=NULL,
    public_notes=NULL, purchase_price=7.45,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494201);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202213), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494234), 51236588,
     'UNC', 2, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=2, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494234);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202233), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494262), 60312636,
     'UNC', 1, FALSE, ' A 0744 D 1384836',
     NULL, 'Auction 104', 23.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/52e9bc6b3326da6aa1709295dab673a3437a87609e88261e117bd547e22465d4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/52e9bc6b3326da6aa1709295dab673a3437a87609e88261e117bd547e22465d4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2d48dd50951c5b1bca70b827ee14507c8a834cb20ad7e6159fef73a13a7d8ea4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d48dd50951c5b1bca70b827ee14507c8a834cb20ad7e6159fef73a13a7d8ea4-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=' A 0744 D 1384836', notes=NULL,
    public_notes='Auction 104', purchase_price=23.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/52e9bc6b3326da6aa1709295dab673a3437a87609e88261e117bd547e22465d4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/52e9bc6b3326da6aa1709295dab673a3437a87609e88261e117bd547e22465d4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2d48dd50951c5b1bca70b827ee14507c8a834cb20ad7e6159fef73a13a7d8ea4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d48dd50951c5b1bca70b827ee14507c8a834cb20ad7e6159fef73a13a7d8ea4-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494262);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202240), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494278), 51237144,
     'UNC', 16, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=16, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494278);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202244), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501651), 51233329,
     'UNC', 1, FALSE, '6 EE 018605',
     NULL, NULL, 2.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='6 EE 018605', notes=NULL,
    public_notes=NULL, purchase_price=2.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501651);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202248), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494356), 51236348,
     'UNC', 1, FALSE, 'ЧА 2113711',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ЧА 2113711', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494356);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202259), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517871), 51235385,
     'UNC', 1, FALSE, 'L/273 513473',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='L/273 513473', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517871);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202266), (SELECT id FROM banknote_issues WHERE numista_issue_id = 768400), 56105823,
     'UNC', 1, FALSE, 'T 9746348',
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 8.51, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='T 9746348', notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=8.51,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 768400);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202298), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520121), 75169572,
     'UNC', 1, FALSE, '35 187167',
     NULL, 'Auction 176', 28.66, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5d49e4e85d6d731d0de26a1a99b6e7efad0805e025475f21da114af9fcfeb80b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5d49e4e85d6d731d0de26a1a99b6e7efad0805e025475f21da114af9fcfeb80b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/38dfc736aef9c8977f2c18c9c8dc9209ae46a278ec157da1058c9848f9365e2d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/38dfc736aef9c8977f2c18c9c8dc9209ae46a278ec157da1058c9848f9365e2d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='35 187167', notes=NULL,
    public_notes='Auction 176', purchase_price=28.66,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5d49e4e85d6d731d0de26a1a99b6e7efad0805e025475f21da114af9fcfeb80b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5d49e4e85d6d731d0de26a1a99b6e7efad0805e025475f21da114af9fcfeb80b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/38dfc736aef9c8977f2c18c9c8dc9209ae46a278ec157da1058c9848f9365e2d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/38dfc736aef9c8977f2c18c9c8dc9209ae46a278ec157da1058c9848f9365e2d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520121);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202305), (SELECT id FROM banknote_issues WHERE numista_issue_id = 523139), 51230879,
     'UNC', 1, FALSE, 'KDC 669367',
     NULL, NULL, 0.54, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='KDC 669367', notes=NULL,
    public_notes=NULL, purchase_price=0.54,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 523139);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202312), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494493), 51526698,
     'UNC', 1, FALSE, 'H 12444740',
     NULL, NULL, 2.11, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='H 12444740', notes=NULL,
    public_notes=NULL, purchase_price=2.11,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494493);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202322), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494507), 51526582,
     'UNC', 1, FALSE, '1090985783',
     NULL, NULL, 7.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1090985783', notes=NULL,
    public_notes=NULL, purchase_price=7.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494507);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202327), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494512), 51234289,
     'UNC', 1, FALSE, 'FA 00760030',
     NULL, NULL, 3.83, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FA 00760030', notes=NULL,
    public_notes=NULL, purchase_price=3.83,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494512);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202376), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494612), 51233028,
     'UNC', 1, FALSE, 'A/2 417921',
     NULL, NULL, 1.64, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/2 417921', notes=NULL,
    public_notes=NULL, purchase_price=1.64,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494612);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202376), (SELECT id FROM banknote_issues WHERE numista_issue_id = 730115), 76478227,
     'UNC', 1, FALSE, 'A/7 545793',
     NULL, NULL, 2.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/7 545793', notes=NULL,
    public_notes=NULL, purchase_price=2.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 730115);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202403), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494652), 51233999,
     'UNC', 1, FALSE, 'A 0001043502 D',
     NULL, NULL, 14.94, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 0001043502 D', notes=NULL,
    public_notes=NULL, purchase_price=14.94,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494652);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202523), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494865), 51275104,
     'UNC', 1, FALSE, 'BB10 585671',
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 21.06, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BB10 585671', notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=21.06,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494865);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202523), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494865), 56166984,
     'UNC', 1, FALSE, 'EA26 859058',
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 13.83, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EA26 859058', notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=13.83,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494865);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202534), (SELECT id FROM banknote_issues WHERE numista_issue_id = 958284), 76477812,
     'UNC', 1, FALSE, 'A/11 069448',
     NULL, NULL, 14, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/11 069448', notes=NULL,
    public_notes=NULL, purchase_price=14,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 958284);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202537), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496435), 60787320,
     'UNC', 1, FALSE, 'N / 21 944925',
     NULL, 'Auction 111', 11.67, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/794896f9cd50a2f82eb9cb44a4b9582375ad8d7db28e38944a92ddf0e5ee698e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/794896f9cd50a2f82eb9cb44a4b9582375ad8d7db28e38944a92ddf0e5ee698e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2546be7ca970aeb040a4d76c613711db284c1661787aa4b264bf1c212c1dd7b4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2546be7ca970aeb040a4d76c613711db284c1661787aa4b264bf1c212c1dd7b4-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='N / 21 944925', notes=NULL,
    public_notes='Auction 111', purchase_price=11.67,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/794896f9cd50a2f82eb9cb44a4b9582375ad8d7db28e38944a92ddf0e5ee698e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/794896f9cd50a2f82eb9cb44a4b9582375ad8d7db28e38944a92ddf0e5ee698e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2546be7ca970aeb040a4d76c613711db284c1661787aa4b264bf1c212c1dd7b4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2546be7ca970aeb040a4d76c613711db284c1661787aa4b264bf1c212c1dd7b4-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496435);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202541), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494925), 78342363,
     'UNC', 1, FALSE, '38N 478703',
     NULL, 'Auction 189', 21, 'EUR',
     'PMG', '65', '1922227-011',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/df3110c6b317d60ca0ec88801a7b7f6a810bef793d3c1d0169690333e56883da.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/df3110c6b317d60ca0ec88801a7b7f6a810bef793d3c1d0169690333e56883da-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7ab961627d72c21b4170db7322d5327ca90e5b37ef1bb3a0a529b8fce56557d4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7ab961627d72c21b4170db7322d5327ca90e5b37ef1bb3a0a529b8fce56557d4-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='38N 478703', notes=NULL,
    public_notes='Auction 189', purchase_price=21,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1922227-011',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/df3110c6b317d60ca0ec88801a7b7f6a810bef793d3c1d0169690333e56883da.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/df3110c6b317d60ca0ec88801a7b7f6a810bef793d3c1d0169690333e56883da-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7ab961627d72c21b4170db7322d5327ca90e5b37ef1bb3a0a529b8fce56557d4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7ab961627d72c21b4170db7322d5327ca90e5b37ef1bb3a0a529b8fce56557d4-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494925);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202542), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494928), 60787290,
     'UNC', 1, FALSE, 'Z 70 / I 013805',
     NULL, 'Auction 111', 18.67, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1a8194d75dbba748beac078cff0aa963627e3da8be40b85ebf7255953d55b77c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1a8194d75dbba748beac078cff0aa963627e3da8be40b85ebf7255953d55b77c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ddb575208df2082c93204226803f1dab0bfe24661acdeaba99958030c1b556b9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ddb575208df2082c93204226803f1dab0bfe24661acdeaba99958030c1b556b9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Z 70 / I 013805', notes=NULL,
    public_notes='Auction 111', purchase_price=18.67,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1a8194d75dbba748beac078cff0aa963627e3da8be40b85ebf7255953d55b77c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1a8194d75dbba748beac078cff0aa963627e3da8be40b85ebf7255953d55b77c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ddb575208df2082c93204226803f1dab0bfe24661acdeaba99958030c1b556b9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ddb575208df2082c93204226803f1dab0bfe24661acdeaba99958030c1b556b9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494928);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202546), (SELECT id FROM banknote_issues WHERE numista_issue_id = 494945), 60625131,
     'UNC', 1, FALSE, 'XP 294201 A',
     NULL, NULL, 1.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9a6a746abb0c1e99189e291018de940b3efe0f95baa8d16b9d6d6b2bca02dd4c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a6a746abb0c1e99189e291018de940b3efe0f95baa8d16b9d6d6b2bca02dd4c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2d37e951337330ec33684df7b9ff6a1c3286f7154858cb156266c5446e70809a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d37e951337330ec33684df7b9ff6a1c3286f7154858cb156266c5446e70809a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='XP 294201 A', notes=NULL,
    public_notes=NULL, purchase_price=1.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9a6a746abb0c1e99189e291018de940b3efe0f95baa8d16b9d6d6b2bca02dd4c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a6a746abb0c1e99189e291018de940b3efe0f95baa8d16b9d6d6b2bca02dd4c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2d37e951337330ec33684df7b9ff6a1c3286f7154858cb156266c5446e70809a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d37e951337330ec33684df7b9ff6a1c3286f7154858cb156266c5446e70809a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 494945);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202575), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495304), 60315037,
     'UNC', 1, FALSE, 'AБ 2231093',
     NULL, 'Auction 107', 16.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9b312b1950256218afeb783ab4c4f278f4ee6480e14877ef8e583c9eacec8845.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9b312b1950256218afeb783ab4c4f278f4ee6480e14877ef8e583c9eacec8845-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3ec77214e72a379d4a1816af15e111653d1d07df2fe1fabb600a7d65c3e82cb9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3ec77214e72a379d4a1816af15e111653d1d07df2fe1fabb600a7d65c3e82cb9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AБ 2231093', notes=NULL,
    public_notes='Auction 107', purchase_price=16.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9b312b1950256218afeb783ab4c4f278f4ee6480e14877ef8e583c9eacec8845.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9b312b1950256218afeb783ab4c4f278f4ee6480e14877ef8e583c9eacec8845-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3ec77214e72a379d4a1816af15e111653d1d07df2fe1fabb600a7d65c3e82cb9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3ec77214e72a379d4a1816af15e111653d1d07df2fe1fabb600a7d65c3e82cb9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495304);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202599), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495351), 51236083,
     'UNC', 1, FALSE, 'B 390394',
     NULL, NULL, 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 390394', notes=NULL,
    public_notes=NULL, purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495351);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202605), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495361), 51236064,
     'UNC', 1, FALSE, 'A 311772',
     NULL, NULL, 2.65, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 311772', notes=NULL,
    public_notes=NULL, purchase_price=2.65,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495361);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202610), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495366), 51236074,
     'UNC', 1, FALSE, 'B 115839',
     NULL, NULL, 5.61, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 115839', notes=NULL,
    public_notes=NULL, purchase_price=5.61,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495366);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202623), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495382), 51526576,
     'UNC', 1, FALSE, 'A/4 607531',
     NULL, NULL, 2.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/4 607531', notes=NULL,
    public_notes=NULL, purchase_price=2.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495382);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202623), (SELECT id FROM banknote_issues WHERE numista_issue_id = 717675), 76478150,
     'UNC', 1, FALSE, 'A/6 443471',
     NULL, NULL, 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/6 443471', notes=NULL,
    public_notes=NULL, purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 717675);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202625), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495386), 76478088,
     'UNC', 1, FALSE, 'A/5 102792',
     NULL, NULL, 6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/5 102792', notes=NULL,
    public_notes=NULL, purchase_price=6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495386);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202634), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495406), 58871718,
     'UNC', 1, FALSE, '89.569.423 A',
     NULL, 'Auction 97', 1.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7acad83c44da11139ddec582ed50ac630a679f1033862c4a71247aafdcc1783b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7acad83c44da11139ddec582ed50ac630a679f1033862c4a71247aafdcc1783b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9e663017de9ec2394f20c5537fe0672ff911025d3677387cd12ea0d71968922a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9e663017de9ec2394f20c5537fe0672ff911025d3677387cd12ea0d71968922a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='89.569.423 A', notes=NULL,
    public_notes='Auction 97', purchase_price=1.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7acad83c44da11139ddec582ed50ac630a679f1033862c4a71247aafdcc1783b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7acad83c44da11139ddec582ed50ac630a679f1033862c4a71247aafdcc1783b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9e663017de9ec2394f20c5537fe0672ff911025d3677387cd12ea0d71968922a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9e663017de9ec2394f20c5537fe0672ff911025d3677387cd12ea0d71968922a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202634), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495406), 58871723,
     'UNC', 1, FALSE, '89.569.424 A',
     NULL, 'Auction 97', 1.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/57bdd35a82e88544a5a4dd33f427c41b68b61816f43d72d60dc1026638f50048.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/57bdd35a82e88544a5a4dd33f427c41b68b61816f43d72d60dc1026638f50048-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/27c8f49f7a26af02b3aa63e2e615ee8dfc1b5bb5a79596a09e02c1aac6036af0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/27c8f49f7a26af02b3aa63e2e615ee8dfc1b5bb5a79596a09e02c1aac6036af0-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='89.569.424 A', notes=NULL,
    public_notes='Auction 97', purchase_price=1.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/57bdd35a82e88544a5a4dd33f427c41b68b61816f43d72d60dc1026638f50048.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/57bdd35a82e88544a5a4dd33f427c41b68b61816f43d72d60dc1026638f50048-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/27c8f49f7a26af02b3aa63e2e615ee8dfc1b5bb5a79596a09e02c1aac6036af0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/27c8f49f7a26af02b3aa63e2e615ee8dfc1b5bb5a79596a09e02c1aac6036af0-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202634), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495406), 58871728,
     'UNC', 1, FALSE, '89.569.425 A',
     NULL, 'Auction 97', 1.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/eed1ad52922c5ae7f5defb27ecbce1fecf364afd4812f88820b842703480a5fd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/eed1ad52922c5ae7f5defb27ecbce1fecf364afd4812f88820b842703480a5fd-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8534b0f8391b5e6d7117580d31693e71ce20ccc3fcfbb3b0a4c83f2b057990dc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8534b0f8391b5e6d7117580d31693e71ce20ccc3fcfbb3b0a4c83f2b057990dc-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='89.569.425 A', notes=NULL,
    public_notes='Auction 97', purchase_price=1.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/eed1ad52922c5ae7f5defb27ecbce1fecf364afd4812f88820b842703480a5fd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/eed1ad52922c5ae7f5defb27ecbce1fecf364afd4812f88820b842703480a5fd-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8534b0f8391b5e6d7117580d31693e71ce20ccc3fcfbb3b0a4c83f2b057990dc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8534b0f8391b5e6d7117580d31693e71ce20ccc3fcfbb3b0a4c83f2b057990dc-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202634), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495406), 58871732,
     'UNC', 1, FALSE, '89.569.426 A',
     NULL, 'Auction 97', 1.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2a417e36eea01187c67be2248db730353f071f486b37989a7323730532f0908b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2a417e36eea01187c67be2248db730353f071f486b37989a7323730532f0908b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3b34552791216c0ff6ee85643f7dccffae4bca36e04bf56c487cf2e34db26ce4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3b34552791216c0ff6ee85643f7dccffae4bca36e04bf56c487cf2e34db26ce4-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='89.569.426 A', notes=NULL,
    public_notes='Auction 97', purchase_price=1.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2a417e36eea01187c67be2248db730353f071f486b37989a7323730532f0908b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2a417e36eea01187c67be2248db730353f071f486b37989a7323730532f0908b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3b34552791216c0ff6ee85643f7dccffae4bca36e04bf56c487cf2e34db26ce4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3b34552791216c0ff6ee85643f7dccffae4bca36e04bf56c487cf2e34db26ce4-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202634), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495406), 58871739,
     'UNC', 1, FALSE, '89.569.427 A',
     NULL, 'Auction 97', 1.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/16067c15249fd3870ef5530f14b4881998383ce19409fb58e8e416f3b41f1f41.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/16067c15249fd3870ef5530f14b4881998383ce19409fb58e8e416f3b41f1f41-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/eb4c2b7d952ba940d095c1c394e6524415a4c544e590de8b07dd00c209543f81.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/eb4c2b7d952ba940d095c1c394e6524415a4c544e590de8b07dd00c209543f81-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='89.569.427 A', notes=NULL,
    public_notes='Auction 97', purchase_price=1.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/16067c15249fd3870ef5530f14b4881998383ce19409fb58e8e416f3b41f1f41.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/16067c15249fd3870ef5530f14b4881998383ce19409fb58e8e416f3b41f1f41-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/eb4c2b7d952ba940d095c1c394e6524415a4c544e590de8b07dd00c209543f81.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/eb4c2b7d952ba940d095c1c394e6524415a4c544e590de8b07dd00c209543f81-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202634), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495406), 58871748,
     'UNC', 1, FALSE, '89.569.428 A',
     NULL, 'Auction 97', 1.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/61ba0c2e1c7512f9bc877fae1fc54635f2fb20c060a0d6645a2dcf3c300e2395.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/61ba0c2e1c7512f9bc877fae1fc54635f2fb20c060a0d6645a2dcf3c300e2395-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9f75aa950ff5863da798b02d8ead23c3f5668708995616c54e0e371d3f17bda3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9f75aa950ff5863da798b02d8ead23c3f5668708995616c54e0e371d3f17bda3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='89.569.428 A', notes=NULL,
    public_notes='Auction 97', purchase_price=1.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/61ba0c2e1c7512f9bc877fae1fc54635f2fb20c060a0d6645a2dcf3c300e2395.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/61ba0c2e1c7512f9bc877fae1fc54635f2fb20c060a0d6645a2dcf3c300e2395-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9f75aa950ff5863da798b02d8ead23c3f5668708995616c54e0e371d3f17bda3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9f75aa950ff5863da798b02d8ead23c3f5668708995616c54e0e371d3f17bda3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202636), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495408), 51298371,
     'UNC', 1, FALSE, 'AB 6669420',
     NULL, NULL, 1.67, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 6669420', notes=NULL,
    public_notes=NULL, purchase_price=1.67,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495408);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202649), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495436), 69704658,
     'UNC', 1, FALSE, 'JP 0083696',
     NULL, 'Auction 115', 35, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0578be3fd6032267db9166add443fd8566642f116549f1b9684d64083115651e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0578be3fd6032267db9166add443fd8566642f116549f1b9684d64083115651e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2c18637f86ced3d5b29b2e5abcf4a61ac6c337eb2873c15444f40132231b52f3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c18637f86ced3d5b29b2e5abcf4a61ac6c337eb2873c15444f40132231b52f3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='JP 0083696', notes=NULL,
    public_notes='Auction 115', purchase_price=35,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0578be3fd6032267db9166add443fd8566642f116549f1b9684d64083115651e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0578be3fd6032267db9166add443fd8566642f116549f1b9684d64083115651e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2c18637f86ced3d5b29b2e5abcf4a61ac6c337eb2873c15444f40132231b52f3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c18637f86ced3d5b29b2e5abcf4a61ac6c337eb2873c15444f40132231b52f3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495436);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202652), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495439), 51235050,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 4.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=4.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495439);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202670), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495478), 51515207,
     'AU', 1, FALSE, '8431369660',
     NULL, NULL, 5.23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='8431369660', notes=NULL,
    public_notes=NULL, purchase_price=5.23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495478);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202676), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495468), 51236496,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495468);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202679), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495481), 51236511,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495481);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202688), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495522), 51232265,
     'UNC', 1, FALSE, 'EG 07185426',
     NULL, NULL, 0.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EG 07185426', notes=NULL,
    public_notes=NULL, purchase_price=0.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495522);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202690), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495532), 51236483,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495532);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202693), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495547), 51237161,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495547);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202697), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495555), 51236473,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495555);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202730), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496508), 61752116,
     'UNC', 1, FALSE, 'TK 739130 D',
     NULL, 'Auction 113', 14.08, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d00cfade55ff333c67808d7e1d911aa95bc91e12f7a484482a3b4bb03e3beca6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d00cfade55ff333c67808d7e1d911aa95bc91e12f7a484482a3b4bb03e3beca6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8a73f88b009c81ddd18934b131ca3a1a9dc8ef705c2073c981dc1ce9c933a1ae.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8a73f88b009c81ddd18934b131ca3a1a9dc8ef705c2073c981dc1ce9c933a1ae-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='TK 739130 D', notes=NULL,
    public_notes='Auction 113', purchase_price=14.08,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d00cfade55ff333c67808d7e1d911aa95bc91e12f7a484482a3b4bb03e3beca6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d00cfade55ff333c67808d7e1d911aa95bc91e12f7a484482a3b4bb03e3beca6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8a73f88b009c81ddd18934b131ca3a1a9dc8ef705c2073c981dc1ce9c933a1ae.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8a73f88b009c81ddd18934b131ca3a1a9dc8ef705c2073c981dc1ce9c933a1ae-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496508);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202736), (SELECT id FROM banknote_issues WHERE numista_issue_id = 774883), 60787034,
     'AU', 1, FALSE, '1498 303785',
     NULL, NULL, 6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/6287489877cc71f6679e098bee8e4db901cc7442fe87aee3ef4c35ef0a10bda2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6287489877cc71f6679e098bee8e4db901cc7442fe87aee3ef4c35ef0a10bda2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5cf87ee27b605ed261caf6b91608875dc9c02f85de106dc46a12909f20b54698.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5cf87ee27b605ed261caf6b91608875dc9c02f85de106dc46a12909f20b54698-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='1498 303785', notes=NULL,
    public_notes=NULL, purchase_price=6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/6287489877cc71f6679e098bee8e4db901cc7442fe87aee3ef4c35ef0a10bda2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6287489877cc71f6679e098bee8e4db901cc7442fe87aee3ef4c35ef0a10bda2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5cf87ee27b605ed261caf6b91608875dc9c02f85de106dc46a12909f20b54698.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5cf87ee27b605ed261caf6b91608875dc9c02f85de106dc46a12909f20b54698-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 774883);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495665), 56105533,
     'UNC', 1, FALSE, 'OC 986337 F',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='OC 986337 F', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495665);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202742), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495676), 60787047,
     'AU', 1, FALSE, '1690 338068',
     NULL, 'Auction 111', 6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5699be5c1315e367718990ea4799ffe7cf4ba5052fcfa5793549a508c3771770.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5699be5c1315e367718990ea4799ffe7cf4ba5052fcfa5793549a508c3771770-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/43a9ea22cd93e71f2a1924e621be3943305bb995dc2660a6dc2fec690f959a59.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/43a9ea22cd93e71f2a1924e621be3943305bb995dc2660a6dc2fec690f959a59-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='1690 338068', notes=NULL,
    public_notes='Auction 111', purchase_price=6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5699be5c1315e367718990ea4799ffe7cf4ba5052fcfa5793549a508c3771770.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5699be5c1315e367718990ea4799ffe7cf4ba5052fcfa5793549a508c3771770-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/43a9ea22cd93e71f2a1924e621be3943305bb995dc2660a6dc2fec690f959a59.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/43a9ea22cd93e71f2a1924e621be3943305bb995dc2660a6dc2fec690f959a59-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495676);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202754), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495695), 51233008,
     'UNC', 1, FALSE, 'AAJ 011318',
     NULL, NULL, 7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AAJ 011318', notes=NULL,
    public_notes=NULL, purchase_price=7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495695);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202754), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495695), 59827631,
     'UNC', 1, FALSE, 'AAL 013931',
     NULL, 'Auction 102', 38.1, 'EUR',
     'PMG', '64', '1911342-026',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/134cf0d643e31697a2670d43cbc90fb8934357bb9857cee743a8c4062de26189.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/134cf0d643e31697a2670d43cbc90fb8934357bb9857cee743a8c4062de26189-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/294aaea115f66f256b78c4e6119604e0c933188326d25f9007dc284e61710a55.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/294aaea115f66f256b78c4e6119604e0c933188326d25f9007dc284e61710a55-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AAL 013931', notes=NULL,
    public_notes='Auction 102', purchase_price=38.1,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1911342-026',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/134cf0d643e31697a2670d43cbc90fb8934357bb9857cee743a8c4062de26189.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/134cf0d643e31697a2670d43cbc90fb8934357bb9857cee743a8c4062de26189-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/294aaea115f66f256b78c4e6119604e0c933188326d25f9007dc284e61710a55.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/294aaea115f66f256b78c4e6119604e0c933188326d25f9007dc284e61710a55-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495695);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202755), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495697), 51233013,
     'UNC', 1, FALSE, 'BAY 000435',
     NULL, NULL, 17, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BAY 000435', notes=NULL,
    public_notes=NULL, purchase_price=17,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495697);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202776), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495736), 51236460,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495736);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202794), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495775), 77629156,
     'UNC', 1, FALSE, 'A/54 008542',
     NULL, 'Auction 183', 141.68, 'EUR',
     'PMG', '66', '2270826-005',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/55b83281eb471a8c08c36160490c6e232ea7f296a679a857838584ab7e01d7ad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/55b83281eb471a8c08c36160490c6e232ea7f296a679a857838584ab7e01d7ad-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cf83d8ab7776ece78df2ff82ee7e4da5f580436f7d4228619c3ca7662d8e63a2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cf83d8ab7776ece78df2ff82ee7e4da5f580436f7d4228619c3ca7662d8e63a2-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/54 008542', notes=NULL,
    public_notes='Auction 183', purchase_price=141.68,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2270826-005',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/55b83281eb471a8c08c36160490c6e232ea7f296a679a857838584ab7e01d7ad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/55b83281eb471a8c08c36160490c6e232ea7f296a679a857838584ab7e01d7ad-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cf83d8ab7776ece78df2ff82ee7e4da5f580436f7d4228619c3ca7662d8e63a2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cf83d8ab7776ece78df2ff82ee7e4da5f580436f7d4228619c3ca7662d8e63a2-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495775);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202805), (SELECT id FROM banknote_issues WHERE numista_issue_id = 515431), 51526417,
     'UNC', 1, FALSE, 'AA0476442',
     NULL, NULL, 2.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA0476442', notes=NULL,
    public_notes=NULL, purchase_price=2.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 515431);

END $$;