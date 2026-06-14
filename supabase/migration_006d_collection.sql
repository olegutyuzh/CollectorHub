-- migration_006d_collection.sql
-- Rows 151–300 of 976
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
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202816), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495837), 51237026,
     'G', 3, FALSE, NULL,
     NULL, NULL, 0.46, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='G', quantity=3, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.46,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495837);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202835), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495974), 51232042,
     'UNC', 1, FALSE, 'BU 929406',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BU 929406', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495974);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202835), (SELECT id FROM banknote_issues WHERE numista_issue_id = 495973), 69650532,
     'UNC', 1, FALSE, 'CD 773128',
     NULL, 'Auction 151 - PG 68+', 24.56, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2f1e1fe3461441f5d233dd7d2346ead00942c942a0d64de8f29445c28450a69f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2f1e1fe3461441f5d233dd7d2346ead00942c942a0d64de8f29445c28450a69f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6db219c429e9e46521cfa021231f3add4e892837c55e3381f1cf073959c5263f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6db219c429e9e46521cfa021231f3add4e892837c55e3381f1cf073959c5263f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CD 773128', notes=NULL,
    public_notes='Auction 151 - PG 68+', purchase_price=24.56,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2f1e1fe3461441f5d233dd7d2346ead00942c942a0d64de8f29445c28450a69f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2f1e1fe3461441f5d233dd7d2346ead00942c942a0d64de8f29445c28450a69f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6db219c429e9e46521cfa021231f3add4e892837c55e3381f1cf073959c5263f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6db219c429e9e46521cfa021231f3add4e892837c55e3381f1cf073959c5263f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 495973);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202853), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496077), 60777672,
     'UNC', 1, FALSE, 'C 349 52086',
     NULL, 'Auction 111', 57.57, 'EUR',
     'PMG', '66', '1912719-008',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5be92c08e29df1e9c282099e0ac19001213882db4c1f4eee0674a0cb886ecbdf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5be92c08e29df1e9c282099e0ac19001213882db4c1f4eee0674a0cb886ecbdf-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4c467d6f1e5a201469162f6546bbcd3383fecd3fcaa37bd5d0474b51a516f817.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4c467d6f1e5a201469162f6546bbcd3383fecd3fcaa37bd5d0474b51a516f817-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 349 52086', notes=NULL,
    public_notes='Auction 111', purchase_price=57.57,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1912719-008',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5be92c08e29df1e9c282099e0ac19001213882db4c1f4eee0674a0cb886ecbdf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5be92c08e29df1e9c282099e0ac19001213882db4c1f4eee0674a0cb886ecbdf-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4c467d6f1e5a201469162f6546bbcd3383fecd3fcaa37bd5d0474b51a516f817.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4c467d6f1e5a201469162f6546bbcd3383fecd3fcaa37bd5d0474b51a516f817-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496077);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202854), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496127), 51236329,
     'UNC', 1, FALSE, '5156960729',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='5156960729', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496127);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202859), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496154), 51236305,
     'UNC', 1, FALSE, '4151775540',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='4151775540', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496154);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202860), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496156), 51231276,
     'UNC', 1, FALSE, 'DF 171390486',
     NULL, NULL, 8.83, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DF 171390486', notes=NULL,
    public_notes=NULL, purchase_price=8.83,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496156);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202861), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501348), 75169058,
     'XF', 1, FALSE, 'KIC 316130',
     NULL, 'Auction 176', 78.34, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='XF', quantity=1, for_trade=FALSE,
    serial_number='KIC 316130', notes=NULL,
    public_notes='Auction 176', purchase_price=78.34,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501348);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202861), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501362), 77329757,
     'UNC', 1, FALSE, 'BEB 668575',
     NULL, 'Auction 185', 141.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4a1c10898ea5416dd2c3d6a52a444c8afec8ef10828da514a90f5c89846b921a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4a1c10898ea5416dd2c3d6a52a444c8afec8ef10828da514a90f5c89846b921a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/20503fea4be09571aa2ee8b6b77c06d36900901e0efd9627c9a431ebf3bc5699.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/20503fea4be09571aa2ee8b6b77c06d36900901e0efd9627c9a431ebf3bc5699-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BEB 668575', notes=NULL,
    public_notes='Auction 185', purchase_price=141.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4a1c10898ea5416dd2c3d6a52a444c8afec8ef10828da514a90f5c89846b921a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4a1c10898ea5416dd2c3d6a52a444c8afec8ef10828da514a90f5c89846b921a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/20503fea4be09571aa2ee8b6b77c06d36900901e0efd9627c9a431ebf3bc5699.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/20503fea4be09571aa2ee8b6b77c06d36900901e0efd9627c9a431ebf3bc5699-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501362);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202862), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496171), 51236301,
     'UNC', 1, FALSE, '3199889995',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='3199889995', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496171);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202867), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496204), 51236286,
     'UNC', 1, FALSE, '2362582666',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='2362582666', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496204);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202869), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496275), 51236240,
     'UNC', 1, FALSE, '1480892409',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1480892409', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496275);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202873), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496306), 76649312,
     'UNC', 1, FALSE, 'A/20 180191',
     NULL, NULL, 21, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/20 180191', notes=NULL,
    public_notes=NULL, purchase_price=21,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496306);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202873), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496306), 78342719,
     'UNC', 1, FALSE, 'A/26 027382',
     NULL, NULL, 31.57, 'EUR',
     'PMG', '64', '1917730-022',
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/26 027382', notes=NULL,
    public_notes=NULL, purchase_price=31.57,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1917730-022',
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496306);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202880), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496337), 51235535,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496337);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202880), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496337), 76442372,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496337);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202885), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496395), 51234671,
     'UNC', 1, FALSE, 'AA 9721112',
     NULL, NULL, 1.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 9721112', notes=NULL,
    public_notes=NULL, purchase_price=1.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496395);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202898), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496461), 51234464,
     'UNC', 1, FALSE, 'E 40352144',
     NULL, NULL, 0.67, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E 40352144', notes=NULL,
    public_notes=NULL, purchase_price=0.67,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496461);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202900), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496468), 51234476,
     'UNC', 1, FALSE, 'F 70491802',
     NULL, NULL, 0.85, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F 70491802', notes=NULL,
    public_notes=NULL, purchase_price=0.85,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496468);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202902), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496471), 51234482,
     'UNC', 1, FALSE, 'A 10826780',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 10826780', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496471);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202902), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496471), 73586733,
     'UNC', 1, FALSE, 'A 10826781',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 10826781', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496471);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202908), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496486), 51234486,
     'UNC', 1, FALSE, 'E 10519886',
     NULL, NULL, 1.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E 10519886', notes=NULL,
    public_notes=NULL, purchase_price=1.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496486);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202908), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496486), 73586787,
     'UNC', 1, FALSE, 'E 60674797',
     NULL, NULL, 1.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E 60674797', notes=NULL,
    public_notes=NULL, purchase_price=1.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496486);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202911), (SELECT id FROM banknote_issues WHERE numista_issue_id = 496496), 51515072,
     'UNC', 1, FALSE, 'A794979H',
     NULL, NULL, 3.55, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A794979H', notes=NULL,
    public_notes=NULL, purchase_price=3.55,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 496496);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202960), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497222), 51230918,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497222);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202977), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497242), 56105914,
     'UNC', 1, FALSE, 'FC 0104265',
     NULL, NULL, 13.04, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FC 0104265', notes=NULL,
    public_notes=NULL, purchase_price=13.04,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497242);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202979), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497245), 73760867,
     'UNC', 1, FALSE, 'MS 0017707',
     NULL, 'Auction 170', 92.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c69c907d493d50c79ae0dec30fd9a42d90a4c3d451d1217c8e2cbaac6540b863.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c69c907d493d50c79ae0dec30fd9a42d90a4c3d451d1217c8e2cbaac6540b863-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a424ba334f1e3eef339292aec1d71d5ceb8a3679b81b6b8eb9ab406a4eeed092.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a424ba334f1e3eef339292aec1d71d5ceb8a3679b81b6b8eb9ab406a4eeed092-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MS 0017707', notes=NULL,
    public_notes='Auction 170', purchase_price=92.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c69c907d493d50c79ae0dec30fd9a42d90a4c3d451d1217c8e2cbaac6540b863.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c69c907d493d50c79ae0dec30fd9a42d90a4c3d451d1217c8e2cbaac6540b863-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a424ba334f1e3eef339292aec1d71d5ceb8a3679b81b6b8eb9ab406a4eeed092.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a424ba334f1e3eef339292aec1d71d5ceb8a3679b81b6b8eb9ab406a4eeed092-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497245);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202985), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497252), 51233065,
     'UNC', 1, FALSE, 'C 42536662',
     NULL, NULL, 1.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 42536662', notes=NULL,
    public_notes=NULL, purchase_price=1.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497252);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202993), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497266), 51234445,
     'UNC', 1, FALSE, 'C 90985975',
     NULL, NULL, 3.06, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 90985975', notes=NULL,
    public_notes=NULL, purchase_price=3.06,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497266);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 202997), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497282), 51233202,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 3.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=3.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497282);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203011), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497313), 51234880,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497313);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203027), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499590), 58870793,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5c312ad6d018eebd816c269a71734bc7285a90eb99ebe6d75c4d846d1afe1466.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5c312ad6d018eebd816c269a71734bc7285a90eb99ebe6d75c4d846d1afe1466-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/67be576c5b0ae54ef9c54e38d397344d0f68b6246093c90622a7529ca874e7ab.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/67be576c5b0ae54ef9c54e38d397344d0f68b6246093c90622a7529ca874e7ab-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5c312ad6d018eebd816c269a71734bc7285a90eb99ebe6d75c4d846d1afe1466.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5c312ad6d018eebd816c269a71734bc7285a90eb99ebe6d75c4d846d1afe1466-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/67be576c5b0ae54ef9c54e38d397344d0f68b6246093c90622a7529ca874e7ab.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/67be576c5b0ae54ef9c54e38d397344d0f68b6246093c90622a7529ca874e7ab-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499590);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203032), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497352), 55950445,
     'UNC', 1, FALSE, 'S 067070 M',
     NULL, NULL, 28.47, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='S 067070 M', notes=NULL,
    public_notes=NULL, purchase_price=28.47,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497352);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203034), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497357), 51234501,
     'UNC', 1, FALSE, 'A 1426046 W',
     NULL, NULL, 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 1426046 W', notes=NULL,
    public_notes=NULL, purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497357);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203037), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497365), 51733953,
     'UNC', 1, FALSE, '5 AR 332531',
     NULL, NULL, 4.26, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='5 AR 332531', notes=NULL,
    public_notes=NULL, purchase_price=4.26,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497365);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203046), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497376), 51234505,
     'UNC', 1, FALSE, 'A 9263027 X',
     NULL, NULL, 0.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 9263027 X', notes=NULL,
    public_notes=NULL, purchase_price=0.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497376);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203053), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497385), 51236844,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497385);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203054), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497386), 51236850,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497386);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203064), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497425), 51234402,
     'UNC', 1, FALSE, 'NE 0315513',
     NULL, NULL, 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='NE 0315513', notes=NULL,
    public_notes=NULL, purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497425);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203070), (SELECT id FROM banknote_issues WHERE numista_issue_id = 779880), 75513569,
     'UNC', 1, FALSE, 'D 34444948',
     NULL, 'Auction 172', 53.24, 'EUR',
     'PMG', '66', '2431028-018',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/25bc733ae8a9483bb5e8d967264602ceac4d4e29d018c996dbccd8b70e7afb50.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/25bc733ae8a9483bb5e8d967264602ceac4d4e29d018c996dbccd8b70e7afb50-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6da8c6be76479ee0f4db73d165b870ea137d38b80ab3d6c848271ed5a71b0774.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6da8c6be76479ee0f4db73d165b870ea137d38b80ab3d6c848271ed5a71b0774-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D 34444948', notes=NULL,
    public_notes='Auction 172', purchase_price=53.24,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2431028-018',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/25bc733ae8a9483bb5e8d967264602ceac4d4e29d018c996dbccd8b70e7afb50.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/25bc733ae8a9483bb5e8d967264602ceac4d4e29d018c996dbccd8b70e7afb50-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6da8c6be76479ee0f4db73d165b870ea137d38b80ab3d6c848271ed5a71b0774.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6da8c6be76479ee0f4db73d165b870ea137d38b80ab3d6c848271ed5a71b0774-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 779880);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203073), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497474), 60777705,
     'UNC', 1, FALSE, 'R 52 41931',
     NULL, 'Auction 111', 58.79, 'EUR',
     'PMG', '64', '1913933-006',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f8c2327bda2702ae94c60b1bc1ab59e992220f8b036027d954135e6cf2a55847.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f8c2327bda2702ae94c60b1bc1ab59e992220f8b036027d954135e6cf2a55847-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1c0278740bb6db16d201c772be3101984c7bf0a2843fa2a2573ae3d45a15bfc6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1c0278740bb6db16d201c772be3101984c7bf0a2843fa2a2573ae3d45a15bfc6-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='R 52 41931', notes=NULL,
    public_notes='Auction 111', purchase_price=58.79,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1913933-006',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f8c2327bda2702ae94c60b1bc1ab59e992220f8b036027d954135e6cf2a55847.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f8c2327bda2702ae94c60b1bc1ab59e992220f8b036027d954135e6cf2a55847-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1c0278740bb6db16d201c772be3101984c7bf0a2843fa2a2573ae3d45a15bfc6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1c0278740bb6db16d201c772be3101984c7bf0a2843fa2a2573ae3d45a15bfc6-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497474);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203083), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497582), 51237012,
     'VG', 1, FALSE, NULL,
     NULL, NULL, 0.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='VG', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497582);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203084), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497583), 51526748,
     'UNC', 1, FALSE, '200S259632',
     NULL, NULL, 10.89, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='200S259632', notes=NULL,
    public_notes=NULL, purchase_price=10.89,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497583);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203084), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497583), 56645815,
     'UNC', 1, FALSE, 'S 259632',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='S 259632', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497583);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203085), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502546), 60312434,
     'UNC', 1, FALSE, 'B 331 79159',
     NULL, 'Auction 104', 50.48, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/59882852ccf33934e4a2f34388a475520ba5719cc278bf6dcc56efbd4cf58386.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/59882852ccf33934e4a2f34388a475520ba5719cc278bf6dcc56efbd4cf58386-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a3843c57ecb1492aa5d913dedb1ecf42e7b90513d63a4db6a34ad1b0457473b9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a3843c57ecb1492aa5d913dedb1ecf42e7b90513d63a4db6a34ad1b0457473b9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 331 79159', notes=NULL,
    public_notes='Auction 104', purchase_price=50.48,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/59882852ccf33934e4a2f34388a475520ba5719cc278bf6dcc56efbd4cf58386.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/59882852ccf33934e4a2f34388a475520ba5719cc278bf6dcc56efbd4cf58386-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a3843c57ecb1492aa5d913dedb1ecf42e7b90513d63a4db6a34ad1b0457473b9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a3843c57ecb1492aa5d913dedb1ecf42e7b90513d63a4db6a34ad1b0457473b9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502546);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203110), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497740), 51733817,
     'UNC', 1, FALSE, 'BL 505440',
     NULL, NULL, 1.49, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BL 505440', notes=NULL,
    public_notes=NULL, purchase_price=1.49,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497740);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203122), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497786), 51232642,
     'UNC', 1, FALSE, 'A 05097272',
     NULL, NULL, 0.18, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 05097272', notes=NULL,
    public_notes=NULL, purchase_price=0.18,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497786);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203126), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497792), 51231988,
     'UNC', 1, FALSE, 'BY 470664',
     NULL, NULL, 3.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BY 470664', notes=NULL,
    public_notes=NULL, purchase_price=3.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497792);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203134), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500267), 51235256,
     'UNC', 1, FALSE, 'GE 4877644',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GE 4877644', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500267);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203144), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497834), 59827154,
     'UNC', 1, FALSE, 'AB36 971506',
     NULL, 'Auction 99', 30.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5d983c1f0c8314b1a549c95362ee32829fbc58035481ce63ce975b8e1f6aea75.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5d983c1f0c8314b1a549c95362ee32829fbc58035481ce63ce975b8e1f6aea75-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7c4c3305b53555a571c130c10ff8cf790c29c77e790a18b3dcf6438d958f5272.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7c4c3305b53555a571c130c10ff8cf790c29c77e790a18b3dcf6438d958f5272-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB36 971506', notes=NULL,
    public_notes='Auction 99', purchase_price=30.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5d983c1f0c8314b1a549c95362ee32829fbc58035481ce63ce975b8e1f6aea75.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5d983c1f0c8314b1a549c95362ee32829fbc58035481ce63ce975b8e1f6aea75-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7c4c3305b53555a571c130c10ff8cf790c29c77e790a18b3dcf6438d958f5272.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7c4c3305b53555a571c130c10ff8cf790c29c77e790a18b3dcf6438d958f5272-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497834);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203157), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497904), 51515270,
     'UNC', 1, FALSE, 'HA 0450745 J',
     NULL, NULL, 5.39, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HA 0450745 J', notes=NULL,
    public_notes=NULL, purchase_price=5.39,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497904);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203164), (SELECT id FROM banknote_issues WHERE numista_issue_id = 512511), 51234394,
     'UNC', 1, FALSE, 'TY 922174',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='TY 922174', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 512511);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203179), (SELECT id FROM banknote_issues WHERE numista_issue_id = 497973), 51234914,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.92, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.92,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 497973);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203188), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498025), 51233936,
     'UNC', 1, FALSE, 'A 3072002124 A',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 3072002124 A', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498025);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203191), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498028), 51235216,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 5.51, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=5.51,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498028);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203210), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498103), 51234517,
     'UNC', 1, FALSE, 'A 4955631 Q',
     NULL, NULL, 1.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 4955631 Q', notes=NULL,
    public_notes=NULL, purchase_price=1.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498103);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203228), (SELECT id FROM banknote_issues WHERE numista_issue_id = 765840), 58854237,
     'UNC', 1, FALSE, '4V1787605',
     NULL, 'Auction 97', 11.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/637df3766e2994c3835c8ac2a7c6dd8c4286fafc22e24e6f99156d37edccad2f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/637df3766e2994c3835c8ac2a7c6dd8c4286fafc22e24e6f99156d37edccad2f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b7a3ea5a36c34cc83d4d7e0b4c414398b200b258193b7ff195402c308ef00a10.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b7a3ea5a36c34cc83d4d7e0b4c414398b200b258193b7ff195402c308ef00a10-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='4V1787605', notes=NULL,
    public_notes='Auction 97', purchase_price=11.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/637df3766e2994c3835c8ac2a7c6dd8c4286fafc22e24e6f99156d37edccad2f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/637df3766e2994c3835c8ac2a7c6dd8c4286fafc22e24e6f99156d37edccad2f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b7a3ea5a36c34cc83d4d7e0b4c414398b200b258193b7ff195402c308ef00a10.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b7a3ea5a36c34cc83d4d7e0b4c414398b200b258193b7ff195402c308ef00a10-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 765840);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203242), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498236), 51232517,
     'UNC', 1, FALSE, 'M 5419094',
     NULL, NULL, 4.02, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='M 5419094', notes=NULL,
    public_notes=NULL, purchase_price=4.02,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498236);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203245), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498242), 51234611,
     'UNC', 1, FALSE, 'NA 1638235 D',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='NA 1638235 D', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498242);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203249), (SELECT id FROM banknote_issues WHERE numista_issue_id = 578804), 51234598,
     'UNC', 1, FALSE, 'MD 4336509 W',
     NULL, NULL, 0.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MD 4336509 W', notes=NULL,
    public_notes=NULL, purchase_price=0.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 578804);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203249), (SELECT id FROM banknote_issues WHERE numista_issue_id = 578804), 73679989,
     'UNC', 1, FALSE, 'MA 2686568 X',
     NULL, NULL, 0.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MA 2686568 X', notes=NULL,
    public_notes=NULL, purchase_price=0.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 578804);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203254), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505129), 51234588,
     'UNC', 1, FALSE, 'KA 812829 W',
     NULL, NULL, 0.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='KA 812829 W', notes=NULL,
    public_notes=NULL, purchase_price=0.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505129);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203261), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498314), 51234510,
     'UNC', 1, FALSE, 'A 2552265 K',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 2552265 K', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498314);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203298), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501971), 60312157,
     'XF', 1, FALSE, 'AFD 589285',
     NULL, 'Auction 104', 16.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1fe9fd9c141f7688ca2ce3a1309bedd407ab72e3acce0a52be6e03d18dab7158.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1fe9fd9c141f7688ca2ce3a1309bedd407ab72e3acce0a52be6e03d18dab7158-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e7d5a862a4baae0d3f70f35804994f0e85be9c65908667276de71ecfbc8151f3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e7d5a862a4baae0d3f70f35804994f0e85be9c65908667276de71ecfbc8151f3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='XF', quantity=1, for_trade=FALSE,
    serial_number='AFD 589285', notes=NULL,
    public_notes='Auction 104', purchase_price=16.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1fe9fd9c141f7688ca2ce3a1309bedd407ab72e3acce0a52be6e03d18dab7158.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1fe9fd9c141f7688ca2ce3a1309bedd407ab72e3acce0a52be6e03d18dab7158-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e7d5a862a4baae0d3f70f35804994f0e85be9c65908667276de71ecfbc8151f3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e7d5a862a4baae0d3f70f35804994f0e85be9c65908667276de71ecfbc8151f3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501971);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203298), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502029), 61752047,
     'VF', 1, FALSE, 'FJI 212364',
     NULL, 'Auction 113', 16, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/83482e41c9ce1e2122348b4e473cb06481e2b44dbe0ec6b06e6a747f2a34bda5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/83482e41c9ce1e2122348b4e473cb06481e2b44dbe0ec6b06e6a747f2a34bda5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ca2e3d3bd0f472ef240a603caae6bbcdd921cbc0a4400f5bf24a74dfb270c8c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ca2e3d3bd0f472ef240a603caae6bbcdd921cbc0a4400f5bf24a74dfb270c8c7-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='VF', quantity=1, for_trade=FALSE,
    serial_number='FJI 212364', notes=NULL,
    public_notes='Auction 113', purchase_price=16,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/83482e41c9ce1e2122348b4e473cb06481e2b44dbe0ec6b06e6a747f2a34bda5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/83482e41c9ce1e2122348b4e473cb06481e2b44dbe0ec6b06e6a747f2a34bda5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ca2e3d3bd0f472ef240a603caae6bbcdd921cbc0a4400f5bf24a74dfb270c8c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ca2e3d3bd0f472ef240a603caae6bbcdd921cbc0a4400f5bf24a74dfb270c8c7-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502029);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203298), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501996), 75513588,
     'UNC', 1, FALSE, 'LCG 481371',
     NULL, 'Auction 172', 51.99, 'EUR',
     'PMG', '64', '2431035-013',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/cb87f0f7780a07a15a3dd9fe7a3afb0e7724fb354e242fa1c9acf2a80b7be7eb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cb87f0f7780a07a15a3dd9fe7a3afb0e7724fb354e242fa1c9acf2a80b7be7eb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bfbbfaf92b9f55940fc559191ed131023c0a8c2cc79f591c090476d8097b444e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bfbbfaf92b9f55940fc559191ed131023c0a8c2cc79f591c090476d8097b444e-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LCG 481371', notes=NULL,
    public_notes='Auction 172', purchase_price=51.99,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='2431035-013',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/cb87f0f7780a07a15a3dd9fe7a3afb0e7724fb354e242fa1c9acf2a80b7be7eb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cb87f0f7780a07a15a3dd9fe7a3afb0e7724fb354e242fa1c9acf2a80b7be7eb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bfbbfaf92b9f55940fc559191ed131023c0a8c2cc79f591c090476d8097b444e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bfbbfaf92b9f55940fc559191ed131023c0a8c2cc79f591c090476d8097b444e-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501996);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203298), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502095), 77329622,
     'UNC', 1, FALSE, 'HJK 556536',
     NULL, 'Auction 185', 57.5, 'EUR',
     'PMG', '66', '2431052-014',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/6f447cbd274ec91a45c7a1d7b7dfe875b35b149f90da611813133f96544558fe.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6f447cbd274ec91a45c7a1d7b7dfe875b35b149f90da611813133f96544558fe-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/da1c0e53f328a43ab03a6bf7d0637e75fea16cd6f9a68b9b4ac6e848cd16082c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/da1c0e53f328a43ab03a6bf7d0637e75fea16cd6f9a68b9b4ac6e848cd16082c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HJK 556536', notes=NULL,
    public_notes='Auction 185', purchase_price=57.5,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2431052-014',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/6f447cbd274ec91a45c7a1d7b7dfe875b35b149f90da611813133f96544558fe.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6f447cbd274ec91a45c7a1d7b7dfe875b35b149f90da611813133f96544558fe-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/da1c0e53f328a43ab03a6bf7d0637e75fea16cd6f9a68b9b4ac6e848cd16082c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/da1c0e53f328a43ab03a6bf7d0637e75fea16cd6f9a68b9b4ac6e848cd16082c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502095);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203312), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498488), 51234541,
     'UNC', 1, FALSE, 'B 9299936 A',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 9299936 A', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498488);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203323), (SELECT id FROM banknote_issues WHERE numista_issue_id = 528663), 51235382,
     'UNC', 1, FALSE, 'M/405 893173',
     NULL, NULL, 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='M/405 893173', notes=NULL,
    public_notes=NULL, purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 528663);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203329), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498571), 51235341,
     'UNC', 1, FALSE, 'W/I 536726',
     NULL, NULL, 0.82, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='W/I 536726', notes=NULL,
    public_notes=NULL, purchase_price=0.82,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498571);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203338), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498620), 76649368,
     'UNC', 1, FALSE, 'A/19 267121',
     NULL, NULL, 24, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/19 267121', notes=NULL,
    public_notes=NULL, purchase_price=24,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498620);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203338), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498618), 78342779,
     'UNC', 1, FALSE, 'A/1 000000 000775',
     NULL, 'Auction 189', 84.97, 'EUR',
     'PMG', '67', '1916565-030',
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/1 000000 000775', notes=NULL,
    public_notes='Auction 189', purchase_price=84.97,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1916565-030',
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498618);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203389), (SELECT id FROM banknote_issues WHERE numista_issue_id = 498919), 70287054,
     'UNC', 1, FALSE, 'A39707029A',
     NULL, 'Auction 155', 46.27, 'EUR',
     'PMG', '66', '1918112-021',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c0f388ef36570b564abdfd63aec4447f89012197587a20e9a3079032323fb402.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c0f388ef36570b564abdfd63aec4447f89012197587a20e9a3079032323fb402-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/de26466fe500625be82657116d80db3ae2cb5bc57a0945dd63108ba662a6d097.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/de26466fe500625be82657116d80db3ae2cb5bc57a0945dd63108ba662a6d097-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A39707029A', notes=NULL,
    public_notes='Auction 155', purchase_price=46.27,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1918112-021',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c0f388ef36570b564abdfd63aec4447f89012197587a20e9a3079032323fb402.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c0f388ef36570b564abdfd63aec4447f89012197587a20e9a3079032323fb402-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/de26466fe500625be82657116d80db3ae2cb5bc57a0945dd63108ba662a6d097.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/de26466fe500625be82657116d80db3ae2cb5bc57a0945dd63108ba662a6d097-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 498919);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203433), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499115), 51231807,
     'UNC', 1, FALSE, 'AB 0025908',
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 2.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 0025908', notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=2.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499115);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203433), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499115), 56167006,
     'UNC', 1, FALSE, 'AD 0004113',
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 2.11, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AD 0004113', notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=2.11,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499115);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203434), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499117), 51275665,
     'UNC', 1, FALSE, 'C22 650731',
     NULL, NULL, 1.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C22 650731', notes=NULL,
    public_notes=NULL, purchase_price=1.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499117);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203446), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499135), 51233017,
     'UNC', 1, FALSE, 'CAS 002719',
     NULL, NULL, 72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CAS 002719', notes=NULL,
    public_notes=NULL, purchase_price=72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499135);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203475), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499273), 51233362,
     'UNC', 1, FALSE, NULL,
     'The nominee for the “Bank Note of the Year Award” in 2018', NULL, 3.86, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes='The nominee for the “Bank Note of the Year Award” in 2018',
    public_notes=NULL, purchase_price=3.86,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499273);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203478), (SELECT id FROM banknote_issues WHERE numista_issue_id = 793403), 76392700,
     'UNC', 1, FALSE, 'HL 559955',
     'Radar Serial Number', NULL, 21.93, 'EUR',
     'PMG', '66', '2368390-060',
     '["EPQ"]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HL 559955', notes='Radar Serial Number',
    public_notes=NULL, purchase_price=21.93,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2368390-060',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 793403);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203481), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499280), 51526565,
     'UNC', 1, FALSE, 'AC 43081716',
     NULL, NULL, 1.09, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 43081716', notes=NULL,
    public_notes=NULL, purchase_price=1.09,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499280);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203484), (SELECT id FROM banknote_issues WHERE numista_issue_id = 509804), 69650489,
     'UNC', 1, FALSE, 'T 971465078',
     NULL, 'Auction 151 - PG 66+', 13.56, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/66120a427f50a08918c87bc012206bce73b574989839f9111f75b9659e50f1e0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/66120a427f50a08918c87bc012206bce73b574989839f9111f75b9659e50f1e0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1fa304b2599f99252136190118b7647c8c8a4fa41a00ec73a7187e5e4bca6359.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1fa304b2599f99252136190118b7647c8c8a4fa41a00ec73a7187e5e4bca6359-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='T 971465078', notes=NULL,
    public_notes='Auction 151 - PG 66+', purchase_price=13.56,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/66120a427f50a08918c87bc012206bce73b574989839f9111f75b9659e50f1e0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/66120a427f50a08918c87bc012206bce73b574989839f9111f75b9659e50f1e0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1fa304b2599f99252136190118b7647c8c8a4fa41a00ec73a7187e5e4bca6359.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1fa304b2599f99252136190118b7647c8c8a4fa41a00ec73a7187e5e4bca6359-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 509804);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203487), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499296), 51231962,
     'UNC', 1, FALSE, 'CK 716871',
     NULL, NULL, 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CK 716871', notes=NULL,
    public_notes=NULL, purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499296);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203501), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499350), 51232026,
     'UNC', 1, FALSE, 'AN 426094',
     NULL, NULL, 3.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AN 426094', notes=NULL,
    public_notes=NULL, purchase_price=3.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499350);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203518), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499396), 51271348,
     'AU', 1, FALSE, '81 L 291947',
     NULL, NULL, 1.76, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='81 L 291947', notes=NULL,
    public_notes=NULL, purchase_price=1.76,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499396);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203526), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501853), 60313166,
     'UNC', 1, FALSE, '1 / 826856',
     NULL, 'Auction 104', 20.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f94d04864d04ea564e538aee2d1b0225361f445a7fb0cd7545a017cd9e14a1fb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f94d04864d04ea564e538aee2d1b0225361f445a7fb0cd7545a017cd9e14a1fb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/84fef7b25272342484440026f8551812e2baaf2a97a04354c475c923ab98ef7b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/84fef7b25272342484440026f8551812e2baaf2a97a04354c475c923ab98ef7b-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1 / 826856', notes=NULL,
    public_notes='Auction 104', purchase_price=20.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f94d04864d04ea564e538aee2d1b0225361f445a7fb0cd7545a017cd9e14a1fb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f94d04864d04ea564e538aee2d1b0225361f445a7fb0cd7545a017cd9e14a1fb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/84fef7b25272342484440026f8551812e2baaf2a97a04354c475c923ab98ef7b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/84fef7b25272342484440026f8551812e2baaf2a97a04354c475c923ab98ef7b-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501853);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203529), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499409), 51234582,
     'UNC', 1, FALSE, 'JA 0641511 D',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='JA 0641511 D', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499409);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203531), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499411), 73679908,
     'UNC', 1, FALSE, 'HA 8489375 E',
     NULL, NULL, 0.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HA 8489375 E', notes=NULL,
    public_notes=NULL, purchase_price=0.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499411);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203627), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499714), 51273226,
     'UNC', 1, FALSE, 'JP 14074922',
     NULL, NULL, 0.77, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='JP 14074922', notes=NULL,
    public_notes=NULL, purchase_price=0.77,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499714);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203633), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499729), 51234293,
     'UNC', 1, FALSE, 'BD 01457668',
     NULL, NULL, 7.62, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BD 01457668', notes=NULL,
    public_notes=NULL, purchase_price=7.62,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499729);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203640), (SELECT id FROM banknote_issues WHERE numista_issue_id = 538308), 60314457,
     'UNC', 1, FALSE, 'K 9674 B 6741619',
     NULL, 'Auction 107', 21.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9a42831a1ff555b5669b74cae794d99ff95e9c58e4cc8eee597db521cd1edf40.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a42831a1ff555b5669b74cae794d99ff95e9c58e4cc8eee597db521cd1edf40-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f607376d133e7ced24454616ca73c2e27fa94ea398ade83ec7c444ad988b6d45.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f607376d133e7ced24454616ca73c2e27fa94ea398ade83ec7c444ad988b6d45-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='K 9674 B 6741619', notes=NULL,
    public_notes='Auction 107', purchase_price=21.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9a42831a1ff555b5669b74cae794d99ff95e9c58e4cc8eee597db521cd1edf40.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a42831a1ff555b5669b74cae794d99ff95e9c58e4cc8eee597db521cd1edf40-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f607376d133e7ced24454616ca73c2e27fa94ea398ade83ec7c444ad988b6d45.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f607376d133e7ced24454616ca73c2e27fa94ea398ade83ec7c444ad988b6d45-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 538308);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203640), (SELECT id FROM banknote_issues WHERE numista_issue_id = 553586), 74293814,
     'UNC', 1, FALSE, 'D 0742 A 3642817',
     NULL, 'Auction 104', 55.36, 'EUR',
     'PMG', '67', '1912718-017',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/77246f8cce70da78fb6231647c8c9aa79a5985b523c9b66570fd23bd5383a10f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/77246f8cce70da78fb6231647c8c9aa79a5985b523c9b66570fd23bd5383a10f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a541010519215a8e37daf112a541d81fa8bbbd0a83a25f8b008c053a5d54002d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a541010519215a8e37daf112a541d81fa8bbbd0a83a25f8b008c053a5d54002d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D 0742 A 3642817', notes=NULL,
    public_notes='Auction 104', purchase_price=55.36,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1912718-017',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/77246f8cce70da78fb6231647c8c9aa79a5985b523c9b66570fd23bd5383a10f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/77246f8cce70da78fb6231647c8c9aa79a5985b523c9b66570fd23bd5383a10f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a541010519215a8e37daf112a541d81fa8bbbd0a83a25f8b008c053a5d54002d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a541010519215a8e37daf112a541d81fa8bbbd0a83a25f8b008c053a5d54002d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 553586);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203647), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499795), 58871986,
     'AU', 1, FALSE, '61.371.872 A',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/91c2f540de6d39f411a11035c469fe1fb27f2a89f0a7073276913fcda1ffc304.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/91c2f540de6d39f411a11035c469fe1fb27f2a89f0a7073276913fcda1ffc304-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/10d0772d7a03213c0f08474b7dcc90d2f653426236aaa3b024d07f7bc23446bb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/10d0772d7a03213c0f08474b7dcc90d2f653426236aaa3b024d07f7bc23446bb-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='61.371.872 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/91c2f540de6d39f411a11035c469fe1fb27f2a89f0a7073276913fcda1ffc304.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/91c2f540de6d39f411a11035c469fe1fb27f2a89f0a7073276913fcda1ffc304-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/10d0772d7a03213c0f08474b7dcc90d2f653426236aaa3b024d07f7bc23446bb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/10d0772d7a03213c0f08474b7dcc90d2f653426236aaa3b024d07f7bc23446bb-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499795);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203647), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499795), 58871992,
     'AU', 1, FALSE, '61.371.874 A',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/be8486d2031213f472d0725576dd3cb60d0246fe093f5096f56337755a9724cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/be8486d2031213f472d0725576dd3cb60d0246fe093f5096f56337755a9724cc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ec1b473e8ac7e0a1a463a328820a48c008e07b34abfd1587bf4f487a5f07d402.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ec1b473e8ac7e0a1a463a328820a48c008e07b34abfd1587bf4f487a5f07d402-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='61.371.874 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/be8486d2031213f472d0725576dd3cb60d0246fe093f5096f56337755a9724cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/be8486d2031213f472d0725576dd3cb60d0246fe093f5096f56337755a9724cc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ec1b473e8ac7e0a1a463a328820a48c008e07b34abfd1587bf4f487a5f07d402.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ec1b473e8ac7e0a1a463a328820a48c008e07b34abfd1587bf4f487a5f07d402-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499795);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203647), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499795), 58871995,
     'AU', 1, FALSE, '61.371.875 A',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/becff03123f72941f20c5c4813164cf4be7a02fb01c6c3e10b2b2c26be2de520.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/becff03123f72941f20c5c4813164cf4be7a02fb01c6c3e10b2b2c26be2de520-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bc2c85de3e5d412bb2650242892d004b19207b82f206a2e0e634f86056adf4cd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bc2c85de3e5d412bb2650242892d004b19207b82f206a2e0e634f86056adf4cd-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='61.371.875 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/becff03123f72941f20c5c4813164cf4be7a02fb01c6c3e10b2b2c26be2de520.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/becff03123f72941f20c5c4813164cf4be7a02fb01c6c3e10b2b2c26be2de520-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bc2c85de3e5d412bb2650242892d004b19207b82f206a2e0e634f86056adf4cd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bc2c85de3e5d412bb2650242892d004b19207b82f206a2e0e634f86056adf4cd-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499795);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203647), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499795), 58872000,
     'AU', 1, FALSE, '84.410.337 A',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/614103f886214cd86697e44523c4a02f8c7a587f6d206ab3a1f827433903e8c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/614103f886214cd86697e44523c4a02f8c7a587f6d206ab3a1f827433903e8c7-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c87e0f1a7ed6629e1b6ae12db154ee182412832dfc5b9473c97b2f86a65df6d5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c87e0f1a7ed6629e1b6ae12db154ee182412832dfc5b9473c97b2f86a65df6d5-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='84.410.337 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/614103f886214cd86697e44523c4a02f8c7a587f6d206ab3a1f827433903e8c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/614103f886214cd86697e44523c4a02f8c7a587f6d206ab3a1f827433903e8c7-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c87e0f1a7ed6629e1b6ae12db154ee182412832dfc5b9473c97b2f86a65df6d5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c87e0f1a7ed6629e1b6ae12db154ee182412832dfc5b9473c97b2f86a65df6d5-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499795);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203647), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499795), 58872005,
     'AU', 1, FALSE, '42.316.364 C',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/56d336fe39bcead92468671af585365742476a59cc365791abd207a07ffb278d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/56d336fe39bcead92468671af585365742476a59cc365791abd207a07ffb278d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/616afeb4cdbef3165a4b9a82845168b167c4c3678c191b6e2c388b6a00619486.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/616afeb4cdbef3165a4b9a82845168b167c4c3678c191b6e2c388b6a00619486-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='42.316.364 C', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/56d336fe39bcead92468671af585365742476a59cc365791abd207a07ffb278d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/56d336fe39bcead92468671af585365742476a59cc365791abd207a07ffb278d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/616afeb4cdbef3165a4b9a82845168b167c4c3678c191b6e2c388b6a00619486.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/616afeb4cdbef3165a4b9a82845168b167c4c3678c191b6e2c388b6a00619486-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499795);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203665), (SELECT id FROM banknote_issues WHERE numista_issue_id = 499862), 58853958,
     'UNC', 1, FALSE, 'M 3577776',
     NULL, 'Auction 97', 46.45, 'EUR',
     'PMG', '65', '2272116-014',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0e63eb354c2aa6b81a6c8e38ca0e1300cba33be9865a43b8180f69612e08fb28.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0e63eb354c2aa6b81a6c8e38ca0e1300cba33be9865a43b8180f69612e08fb28-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/95b7620ca7bea8397e892676a7ee3abeb2fa1b571ac0a19dda57135d7e20ae3b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/95b7620ca7bea8397e892676a7ee3abeb2fa1b571ac0a19dda57135d7e20ae3b-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='M 3577776', notes=NULL,
    public_notes='Auction 97', purchase_price=46.45,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='2272116-014',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0e63eb354c2aa6b81a6c8e38ca0e1300cba33be9865a43b8180f69612e08fb28.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0e63eb354c2aa6b81a6c8e38ca0e1300cba33be9865a43b8180f69612e08fb28-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/95b7620ca7bea8397e892676a7ee3abeb2fa1b571ac0a19dda57135d7e20ae3b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/95b7620ca7bea8397e892676a7ee3abeb2fa1b571ac0a19dda57135d7e20ae3b-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 499862);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203732), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500076), 59826969,
     'UNC', 1, FALSE, '01X 722430',
     NULL, 'Auction 99', 22.16, 'EUR',
     'PCGS Banknote', '63', '593127.63/42487415',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/da7cbed98211bfcb0ca8d845aba86433d6d876549eb082be2ca2ea20cf11d619.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/da7cbed98211bfcb0ca8d845aba86433d6d876549eb082be2ca2ea20cf11d619-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/433ee2bb90a797b34c641ac237cb08682e4ed755624f15963d1c0d94e815f2ea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/433ee2bb90a797b34c641ac237cb08682e4ed755624f15963d1c0d94e815f2ea-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='01X 722430', notes=NULL,
    public_notes='Auction 99', purchase_price=22.16,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='63', cert_number='593127.63/42487415',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/da7cbed98211bfcb0ca8d845aba86433d6d876549eb082be2ca2ea20cf11d619.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/da7cbed98211bfcb0ca8d845aba86433d6d876549eb082be2ca2ea20cf11d619-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/433ee2bb90a797b34c641ac237cb08682e4ed755624f15963d1c0d94e815f2ea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/433ee2bb90a797b34c641ac237cb08682e4ed755624f15963d1c0d94e815f2ea-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500076);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203759), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500152), 73760810,
     'UNC', 1, FALSE, 'B 023394858',
     NULL, 'Auction 170', 62.57, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3c477f0e7350c3e2e2ac6ee991ed877cd477ed97f8b141537c2038a9d863ff4a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3c477f0e7350c3e2e2ac6ee991ed877cd477ed97f8b141537c2038a9d863ff4a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/db9c7b89ce041b130e685536d4ec94df53950bb2d74b273ec04e19a7b0299f85.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/db9c7b89ce041b130e685536d4ec94df53950bb2d74b273ec04e19a7b0299f85-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 023394858', notes=NULL,
    public_notes='Auction 170', purchase_price=62.57,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3c477f0e7350c3e2e2ac6ee991ed877cd477ed97f8b141537c2038a9d863ff4a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3c477f0e7350c3e2e2ac6ee991ed877cd477ed97f8b141537c2038a9d863ff4a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/db9c7b89ce041b130e685536d4ec94df53950bb2d74b273ec04e19a7b0299f85.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/db9c7b89ce041b130e685536d4ec94df53950bb2d74b273ec04e19a7b0299f85-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500152);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203759), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500152), 77628166,
     'UNC', 1, FALSE, 'C 013235346',
     NULL, 'Auction 183', 46.04, 'EUR',
     'PMG', '66', '1923828-006',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/abc9e4ac7e5a28e50b53d3b1ca2b7de379067fc5827b2f56754d3187a179d8d9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/abc9e4ac7e5a28e50b53d3b1ca2b7de379067fc5827b2f56754d3187a179d8d9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1eca54ee094030aa9b6392b2c5d114da183c6f87ee416b023dddcaa650352b1a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1eca54ee094030aa9b6392b2c5d114da183c6f87ee416b023dddcaa650352b1a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 013235346', notes=NULL,
    public_notes='Auction 183', purchase_price=46.04,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1923828-006',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/abc9e4ac7e5a28e50b53d3b1ca2b7de379067fc5827b2f56754d3187a179d8d9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/abc9e4ac7e5a28e50b53d3b1ca2b7de379067fc5827b2f56754d3187a179d8d9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1eca54ee094030aa9b6392b2c5d114da183c6f87ee416b023dddcaa650352b1a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1eca54ee094030aa9b6392b2c5d114da183c6f87ee416b023dddcaa650352b1a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500152);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203794), (SELECT id FROM banknote_issues WHERE numista_issue_id = 524753), 58870879,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7217d9f54b65ff0ca8195245ed53ab21ea614303216ab011fec4b4af64f7b5f0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7217d9f54b65ff0ca8195245ed53ab21ea614303216ab011fec4b4af64f7b5f0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a438506bbc58b49e094b6291026217f54b1019932c156dc530992b51c1332f7f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a438506bbc58b49e094b6291026217f54b1019932c156dc530992b51c1332f7f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7217d9f54b65ff0ca8195245ed53ab21ea614303216ab011fec4b4af64f7b5f0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7217d9f54b65ff0ca8195245ed53ab21ea614303216ab011fec4b4af64f7b5f0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a438506bbc58b49e094b6291026217f54b1019932c156dc530992b51c1332f7f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a438506bbc58b49e094b6291026217f54b1019932c156dc530992b51c1332f7f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 524753);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203806), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500285), 58871582,
     'UNC', 1, FALSE, '14.974.214 C',
     NULL, 'Auction 97', 1.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/fc217b1891c1c95e4e933f7f3c76fc76ab16ad4fbd07b3cf0f05300f62523e7f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fc217b1891c1c95e4e933f7f3c76fc76ab16ad4fbd07b3cf0f05300f62523e7f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bb01594bbb1c6860bbd4144a414a32cb84efd32dec34af6e588f5f0afd0df4c9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bb01594bbb1c6860bbd4144a414a32cb84efd32dec34af6e588f5f0afd0df4c9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='14.974.214 C', notes=NULL,
    public_notes='Auction 97', purchase_price=1.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/fc217b1891c1c95e4e933f7f3c76fc76ab16ad4fbd07b3cf0f05300f62523e7f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fc217b1891c1c95e4e933f7f3c76fc76ab16ad4fbd07b3cf0f05300f62523e7f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bb01594bbb1c6860bbd4144a414a32cb84efd32dec34af6e588f5f0afd0df4c9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bb01594bbb1c6860bbd4144a414a32cb84efd32dec34af6e588f5f0afd0df4c9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500285);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203806), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500285), 58871587,
     'UNC', 1, FALSE, '14.571.202 C',
     NULL, 'Auction 97', 1.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/383127faa3bce06554ebeade01688efe5ac79a60294611befddaea1575fb2968.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/383127faa3bce06554ebeade01688efe5ac79a60294611befddaea1575fb2968-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3f644e77d38ba353a7ccbe71d4d02a87c3b8e60712d98d0d805f09b1b4c76b81.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3f644e77d38ba353a7ccbe71d4d02a87c3b8e60712d98d0d805f09b1b4c76b81-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='14.571.202 C', notes=NULL,
    public_notes='Auction 97', purchase_price=1.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/383127faa3bce06554ebeade01688efe5ac79a60294611befddaea1575fb2968.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/383127faa3bce06554ebeade01688efe5ac79a60294611befddaea1575fb2968-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3f644e77d38ba353a7ccbe71d4d02a87c3b8e60712d98d0d805f09b1b4c76b81.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3f644e77d38ba353a7ccbe71d4d02a87c3b8e60712d98d0d805f09b1b4c76b81-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500285);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203806), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500285), 58871606,
     'VF', 1, FALSE, '14.810.355 C',
     NULL, NULL, 0.43, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/ca8f22a62592c150603e98031ce4fd5ddfd16c2d5eb63dba99cbc9e2d9beb766.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ca8f22a62592c150603e98031ce4fd5ddfd16c2d5eb63dba99cbc9e2d9beb766-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/07d03bb660b2d0a85cd41270b3cc338aeee6874528c21035a4befb01f67030fc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/07d03bb660b2d0a85cd41270b3cc338aeee6874528c21035a4befb01f67030fc-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='VF', quantity=1, for_trade=FALSE,
    serial_number='14.810.355 C', notes=NULL,
    public_notes=NULL, purchase_price=0.43,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/ca8f22a62592c150603e98031ce4fd5ddfd16c2d5eb63dba99cbc9e2d9beb766.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ca8f22a62592c150603e98031ce4fd5ddfd16c2d5eb63dba99cbc9e2d9beb766-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/07d03bb660b2d0a85cd41270b3cc338aeee6874528c21035a4befb01f67030fc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/07d03bb660b2d0a85cd41270b3cc338aeee6874528c21035a4befb01f67030fc-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500285);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203806), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500285), 58871611,
     'UNC', 1, FALSE, '14.974.213 C',
     NULL, 'Auction 97', 1.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/210d5d28d249bf25ba5b0af42c0e392d8060426097f69cfe2feba4bd343ce816.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/210d5d28d249bf25ba5b0af42c0e392d8060426097f69cfe2feba4bd343ce816-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6185880adf408cee44ae03eb3d8b8055393e5c4646f8c9b560e779bcd2aa8ff7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6185880adf408cee44ae03eb3d8b8055393e5c4646f8c9b560e779bcd2aa8ff7-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='14.974.213 C', notes=NULL,
    public_notes='Auction 97', purchase_price=1.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/210d5d28d249bf25ba5b0af42c0e392d8060426097f69cfe2feba4bd343ce816.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/210d5d28d249bf25ba5b0af42c0e392d8060426097f69cfe2feba4bd343ce816-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6185880adf408cee44ae03eb3d8b8055393e5c4646f8c9b560e779bcd2aa8ff7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6185880adf408cee44ae03eb3d8b8055393e5c4646f8c9b560e779bcd2aa8ff7-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500285);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203806), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500285), 58871615,
     'UNC', 1, FALSE, '14.974.212 C',
     NULL, 'Auction 97', 1.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8c8bda68b95f27418b62cb5d0b6aacf1553bb6599a85f3b825384bd7df1cbe31.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8c8bda68b95f27418b62cb5d0b6aacf1553bb6599a85f3b825384bd7df1cbe31-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f2d67f97de03e7093b93b1d59169b97b4581d33c6fb8a004dfa8327500643f25.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f2d67f97de03e7093b93b1d59169b97b4581d33c6fb8a004dfa8327500643f25-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='14.974.212 C', notes=NULL,
    public_notes='Auction 97', purchase_price=1.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8c8bda68b95f27418b62cb5d0b6aacf1553bb6599a85f3b825384bd7df1cbe31.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8c8bda68b95f27418b62cb5d0b6aacf1553bb6599a85f3b825384bd7df1cbe31-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f2d67f97de03e7093b93b1d59169b97b4581d33c6fb8a004dfa8327500643f25.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f2d67f97de03e7093b93b1d59169b97b4581d33c6fb8a004dfa8327500643f25-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500285);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203806), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500285), 58871621,
     'UNC', 1, FALSE, '14.974.211 C',
     NULL, 'Auction 97', 1.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/6a589aefd2e8a9758d12a413dfc048258e8e87f8e3d13e9a42ace42ab0b31d4e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6a589aefd2e8a9758d12a413dfc048258e8e87f8e3d13e9a42ace42ab0b31d4e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/94e4693dbf4ad600871ce8a4d26fd2ee9bbca814f636598eb8b4c33ac4c8c5a6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/94e4693dbf4ad600871ce8a4d26fd2ee9bbca814f636598eb8b4c33ac4c8c5a6-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='14.974.211 C', notes=NULL,
    public_notes='Auction 97', purchase_price=1.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/6a589aefd2e8a9758d12a413dfc048258e8e87f8e3d13e9a42ace42ab0b31d4e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6a589aefd2e8a9758d12a413dfc048258e8e87f8e3d13e9a42ace42ab0b31d4e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/94e4693dbf4ad600871ce8a4d26fd2ee9bbca814f636598eb8b4c33ac4c8c5a6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/94e4693dbf4ad600871ce8a4d26fd2ee9bbca814f636598eb8b4c33ac4c8c5a6-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500285);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203806), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500285), 58871623,
     'UNC', 1, FALSE, '14.974.210 C',
     NULL, 'Auction 97', 1.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/348d7955037534e702821b5aaeddcce463e58f666a32e7e1a1083b73ad9d4aba.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/348d7955037534e702821b5aaeddcce463e58f666a32e7e1a1083b73ad9d4aba-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2436b81cf4de64a81f89c34660db70670859ba465ea321b8ad347aef2c05770e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2436b81cf4de64a81f89c34660db70670859ba465ea321b8ad347aef2c05770e-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='14.974.210 C', notes=NULL,
    public_notes='Auction 97', purchase_price=1.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/348d7955037534e702821b5aaeddcce463e58f666a32e7e1a1083b73ad9d4aba.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/348d7955037534e702821b5aaeddcce463e58f666a32e7e1a1083b73ad9d4aba-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2436b81cf4de64a81f89c34660db70670859ba465ea321b8ad347aef2c05770e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2436b81cf4de64a81f89c34660db70670859ba465ea321b8ad347aef2c05770e-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500285);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203806), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500285), 58871629,
     'UNC', 1, FALSE, '14.974.215 C',
     NULL, 'Auction 97', 1.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4983284ee8ba173360466d863236de26242c7eaf3d2db71ade643a5aea0ca2bb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4983284ee8ba173360466d863236de26242c7eaf3d2db71ade643a5aea0ca2bb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c9109274e603ee0854a259f6a7218b815f8119fe94a31b518d6301e533106e8a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c9109274e603ee0854a259f6a7218b815f8119fe94a31b518d6301e533106e8a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='14.974.215 C', notes=NULL,
    public_notes='Auction 97', purchase_price=1.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4983284ee8ba173360466d863236de26242c7eaf3d2db71ade643a5aea0ca2bb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4983284ee8ba173360466d863236de26242c7eaf3d2db71ade643a5aea0ca2bb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c9109274e603ee0854a259f6a7218b815f8119fe94a31b518d6301e533106e8a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c9109274e603ee0854a259f6a7218b815f8119fe94a31b518d6301e533106e8a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500285);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203808), (SELECT id FROM banknote_issues WHERE numista_issue_id = 588694), 58871668,
     'UNC', 1, FALSE, '64.558.923 A',
     NULL, 'Auction 97', 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/dc58a7ed2cf180e4818d2a3668a435549a096da9da5cd5386d78eebf51eff70a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dc58a7ed2cf180e4818d2a3668a435549a096da9da5cd5386d78eebf51eff70a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/030a44818953309c6fe20a272196762de954b1a6938ec2ec8d5c1498359d25ef.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/030a44818953309c6fe20a272196762de954b1a6938ec2ec8d5c1498359d25ef-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='64.558.923 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/dc58a7ed2cf180e4818d2a3668a435549a096da9da5cd5386d78eebf51eff70a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dc58a7ed2cf180e4818d2a3668a435549a096da9da5cd5386d78eebf51eff70a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/030a44818953309c6fe20a272196762de954b1a6938ec2ec8d5c1498359d25ef.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/030a44818953309c6fe20a272196762de954b1a6938ec2ec8d5c1498359d25ef-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 588694);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203808), (SELECT id FROM banknote_issues WHERE numista_issue_id = 588694), 58871675,
     'UNC', 1, FALSE, '64.558.924 A',
     NULL, 'Auction 97', 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/6af7f1b8a0ded6045a571ff3f406c6b22201c6d0d44b7c5941a3716c16cb33e1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6af7f1b8a0ded6045a571ff3f406c6b22201c6d0d44b7c5941a3716c16cb33e1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b548ac9cd3635754bfc6cdc7e21267b80975afa84586daf61ce456a32372fd0d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b548ac9cd3635754bfc6cdc7e21267b80975afa84586daf61ce456a32372fd0d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='64.558.924 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/6af7f1b8a0ded6045a571ff3f406c6b22201c6d0d44b7c5941a3716c16cb33e1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6af7f1b8a0ded6045a571ff3f406c6b22201c6d0d44b7c5941a3716c16cb33e1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b548ac9cd3635754bfc6cdc7e21267b80975afa84586daf61ce456a32372fd0d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b548ac9cd3635754bfc6cdc7e21267b80975afa84586daf61ce456a32372fd0d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 588694);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203808), (SELECT id FROM banknote_issues WHERE numista_issue_id = 588694), 58871680,
     'UNC', 1, FALSE, '64.558.925 A',
     NULL, 'Auction 97', 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/41aa22960a0de6b79911e3e757a17eb8de3b2740060e76aa826f358de4696713.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/41aa22960a0de6b79911e3e757a17eb8de3b2740060e76aa826f358de4696713-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c61162eb12b75f45fe192786445ab747da30384155eec6d28e66930a9e3c816f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c61162eb12b75f45fe192786445ab747da30384155eec6d28e66930a9e3c816f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='64.558.925 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/41aa22960a0de6b79911e3e757a17eb8de3b2740060e76aa826f358de4696713.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/41aa22960a0de6b79911e3e757a17eb8de3b2740060e76aa826f358de4696713-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c61162eb12b75f45fe192786445ab747da30384155eec6d28e66930a9e3c816f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c61162eb12b75f45fe192786445ab747da30384155eec6d28e66930a9e3c816f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 588694);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203808), (SELECT id FROM banknote_issues WHERE numista_issue_id = 588694), 58871685,
     'UNC', 1, FALSE, '64.558.926 A',
     NULL, 'Auction 97', 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2f221529b819f29a484e198ef6466a4b0eb153d2ddad0c65694da6c942771c11.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2f221529b819f29a484e198ef6466a4b0eb153d2ddad0c65694da6c942771c11-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a0645620e4d87139cdef6264b7748bc7002b9f6f9aa0093fc93e5dce3fcd9b52.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a0645620e4d87139cdef6264b7748bc7002b9f6f9aa0093fc93e5dce3fcd9b52-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='64.558.926 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2f221529b819f29a484e198ef6466a4b0eb153d2ddad0c65694da6c942771c11.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2f221529b819f29a484e198ef6466a4b0eb153d2ddad0c65694da6c942771c11-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a0645620e4d87139cdef6264b7748bc7002b9f6f9aa0093fc93e5dce3fcd9b52.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a0645620e4d87139cdef6264b7748bc7002b9f6f9aa0093fc93e5dce3fcd9b52-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 588694);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203808), (SELECT id FROM banknote_issues WHERE numista_issue_id = 588694), 58871695,
     'UNC', 1, FALSE, '64.558.927 A',
     NULL, 'Auction 97', 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/cedc69a45d9d3b5ac85c2e24acde650ae5d37b8732b7537b8b848f2617e0b76d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cedc69a45d9d3b5ac85c2e24acde650ae5d37b8732b7537b8b848f2617e0b76d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e64290f3e3fe638bb0c2589b4bbef4ad149a91dc792b2d48e9c98fda17e15e0b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e64290f3e3fe638bb0c2589b4bbef4ad149a91dc792b2d48e9c98fda17e15e0b-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='64.558.927 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/cedc69a45d9d3b5ac85c2e24acde650ae5d37b8732b7537b8b848f2617e0b76d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cedc69a45d9d3b5ac85c2e24acde650ae5d37b8732b7537b8b848f2617e0b76d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e64290f3e3fe638bb0c2589b4bbef4ad149a91dc792b2d48e9c98fda17e15e0b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e64290f3e3fe638bb0c2589b4bbef4ad149a91dc792b2d48e9c98fda17e15e0b-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 588694);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203810), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500292), 58871922,
     'UNC', 1, FALSE, '16.769.602 D',
     NULL, 'Auction 97', 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a8e41aff157706ea13f30ff510ce8f0433213faea372c186fecf246d871de79b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a8e41aff157706ea13f30ff510ce8f0433213faea372c186fecf246d871de79b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/31ecb0e631db6f248186e2c94da5fd00e9efec4e604bcf792e7a57af18f9304f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/31ecb0e631db6f248186e2c94da5fd00e9efec4e604bcf792e7a57af18f9304f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='16.769.602 D', notes=NULL,
    public_notes='Auction 97', purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a8e41aff157706ea13f30ff510ce8f0433213faea372c186fecf246d871de79b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a8e41aff157706ea13f30ff510ce8f0433213faea372c186fecf246d871de79b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/31ecb0e631db6f248186e2c94da5fd00e9efec4e604bcf792e7a57af18f9304f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/31ecb0e631db6f248186e2c94da5fd00e9efec4e604bcf792e7a57af18f9304f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203810), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500292), 58871925,
     'UNC', 1, FALSE, '16.753.513 D',
     NULL, 'Auction 97', 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/64fb8570922159e508bbf47523492056c243332d2cb1099b0b9f98a8b3a65246.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/64fb8570922159e508bbf47523492056c243332d2cb1099b0b9f98a8b3a65246-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f184136f924949a3dd108347cabd115479028d358335d9fe55eb10abf6632276.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f184136f924949a3dd108347cabd115479028d358335d9fe55eb10abf6632276-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='16.753.513 D', notes=NULL,
    public_notes='Auction 97', purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/64fb8570922159e508bbf47523492056c243332d2cb1099b0b9f98a8b3a65246.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/64fb8570922159e508bbf47523492056c243332d2cb1099b0b9f98a8b3a65246-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f184136f924949a3dd108347cabd115479028d358335d9fe55eb10abf6632276.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f184136f924949a3dd108347cabd115479028d358335d9fe55eb10abf6632276-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203810), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500292), 58871927,
     'UNC', 1, FALSE, '16.753.514 D',
     NULL, 'Auction 97', 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/98936968d96cba6044dbf88891d098486ec7046d63d90386af56ed38fc2e42e5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/98936968d96cba6044dbf88891d098486ec7046d63d90386af56ed38fc2e42e5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/822a8ac5dd57e5bcc4f7af0d43252e7ba71df81a4e6db18914f822deb6ff8dc2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/822a8ac5dd57e5bcc4f7af0d43252e7ba71df81a4e6db18914f822deb6ff8dc2-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='16.753.514 D', notes=NULL,
    public_notes='Auction 97', purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/98936968d96cba6044dbf88891d098486ec7046d63d90386af56ed38fc2e42e5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/98936968d96cba6044dbf88891d098486ec7046d63d90386af56ed38fc2e42e5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/822a8ac5dd57e5bcc4f7af0d43252e7ba71df81a4e6db18914f822deb6ff8dc2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/822a8ac5dd57e5bcc4f7af0d43252e7ba71df81a4e6db18914f822deb6ff8dc2-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203810), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500292), 58871928,
     'UNC', 1, FALSE, '16.753.515 D',
     NULL, 'Auction 97', 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/10f330052e1f6d5b92db2656812c31c06285535f99b438f37ec47aca22661bc1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/10f330052e1f6d5b92db2656812c31c06285535f99b438f37ec47aca22661bc1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/47a251d894f90c634893c5c1673908b6e9b73fc486d69864daf26c84271538d2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/47a251d894f90c634893c5c1673908b6e9b73fc486d69864daf26c84271538d2-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='16.753.515 D', notes=NULL,
    public_notes='Auction 97', purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/10f330052e1f6d5b92db2656812c31c06285535f99b438f37ec47aca22661bc1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/10f330052e1f6d5b92db2656812c31c06285535f99b438f37ec47aca22661bc1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/47a251d894f90c634893c5c1673908b6e9b73fc486d69864daf26c84271538d2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/47a251d894f90c634893c5c1673908b6e9b73fc486d69864daf26c84271538d2-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203810), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500292), 58871931,
     'UNC', 1, FALSE, '89.271.627 C',
     NULL, 'Auction 97', 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4ae7937b6a090881f6e098c818bfc3aa0ec8da062b9691eec7a819cf9b0cb86d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4ae7937b6a090881f6e098c818bfc3aa0ec8da062b9691eec7a819cf9b0cb86d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d74c14c01930fac467f353585093d46fef33ebd4bb1a2cc14d59eaf11499cbaf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d74c14c01930fac467f353585093d46fef33ebd4bb1a2cc14d59eaf11499cbaf-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='89.271.627 C', notes=NULL,
    public_notes='Auction 97', purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4ae7937b6a090881f6e098c818bfc3aa0ec8da062b9691eec7a819cf9b0cb86d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4ae7937b6a090881f6e098c818bfc3aa0ec8da062b9691eec7a819cf9b0cb86d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d74c14c01930fac467f353585093d46fef33ebd4bb1a2cc14d59eaf11499cbaf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d74c14c01930fac467f353585093d46fef33ebd4bb1a2cc14d59eaf11499cbaf-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203810), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500292), 58871939,
     'UNC', 1, FALSE, '63.700.452 C',
     NULL, 'Auction 97', 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e5a6342206424fa632557817b94e2d55c054942a9ec0135cfdfc69c938f75eb2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5a6342206424fa632557817b94e2d55c054942a9ec0135cfdfc69c938f75eb2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/04bb4320ad93da3b38897300f3de5317f08fbb0195dae6b9c4c53d2c1049144e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/04bb4320ad93da3b38897300f3de5317f08fbb0195dae6b9c4c53d2c1049144e-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='63.700.452 C', notes=NULL,
    public_notes='Auction 97', purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e5a6342206424fa632557817b94e2d55c054942a9ec0135cfdfc69c938f75eb2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5a6342206424fa632557817b94e2d55c054942a9ec0135cfdfc69c938f75eb2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/04bb4320ad93da3b38897300f3de5317f08fbb0195dae6b9c4c53d2c1049144e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/04bb4320ad93da3b38897300f3de5317f08fbb0195dae6b9c4c53d2c1049144e-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203810), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500292), 58871943,
     'UNC', 1, FALSE, '13.658.140 D',
     NULL, 'Auction 97', 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d12a79e4081c12c2f98b74f2bc2b44a927c5f1d2e7ba9fc362e9f84c7536a0f1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d12a79e4081c12c2f98b74f2bc2b44a927c5f1d2e7ba9fc362e9f84c7536a0f1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c4ec11325297562d4f9c2231c8b0803cb5457e648d8d048e144db83aff526c26.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c4ec11325297562d4f9c2231c8b0803cb5457e648d8d048e144db83aff526c26-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='13.658.140 D', notes=NULL,
    public_notes='Auction 97', purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d12a79e4081c12c2f98b74f2bc2b44a927c5f1d2e7ba9fc362e9f84c7536a0f1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d12a79e4081c12c2f98b74f2bc2b44a927c5f1d2e7ba9fc362e9f84c7536a0f1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c4ec11325297562d4f9c2231c8b0803cb5457e648d8d048e144db83aff526c26.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c4ec11325297562d4f9c2231c8b0803cb5457e648d8d048e144db83aff526c26-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203810), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500292), 58871946,
     'UNC', 1, FALSE, '13.658.139 D',
     NULL, 'Auction 97', 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/43e4d523f5f7db2ca9bb528e88421defd1e8d7d87f8f3de3d9a086bf9bf2608d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/43e4d523f5f7db2ca9bb528e88421defd1e8d7d87f8f3de3d9a086bf9bf2608d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c39ea6feb5ddf99eb784504c68078d39efdfd0bfe2018ebb09665403922316a8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c39ea6feb5ddf99eb784504c68078d39efdfd0bfe2018ebb09665403922316a8-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='13.658.139 D', notes=NULL,
    public_notes='Auction 97', purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/43e4d523f5f7db2ca9bb528e88421defd1e8d7d87f8f3de3d9a086bf9bf2608d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/43e4d523f5f7db2ca9bb528e88421defd1e8d7d87f8f3de3d9a086bf9bf2608d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c39ea6feb5ddf99eb784504c68078d39efdfd0bfe2018ebb09665403922316a8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c39ea6feb5ddf99eb784504c68078d39efdfd0bfe2018ebb09665403922316a8-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203810), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500292), 58871948,
     'UNC', 1, FALSE, '13.656.712 D',
     NULL, 'Auction 97', 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/fd0ef323120f2b9dba21305e1e54cd45678fe6a0ca222b663e9caf82d0f1a06b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fd0ef323120f2b9dba21305e1e54cd45678fe6a0ca222b663e9caf82d0f1a06b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ef8bf52b6aa21c2d231242fa83d1d7b9caaaa4a9e6ad1fd2efecdb8618e75d10.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ef8bf52b6aa21c2d231242fa83d1d7b9caaaa4a9e6ad1fd2efecdb8618e75d10-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='13.656.712 D', notes=NULL,
    public_notes='Auction 97', purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/fd0ef323120f2b9dba21305e1e54cd45678fe6a0ca222b663e9caf82d0f1a06b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fd0ef323120f2b9dba21305e1e54cd45678fe6a0ca222b663e9caf82d0f1a06b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ef8bf52b6aa21c2d231242fa83d1d7b9caaaa4a9e6ad1fd2efecdb8618e75d10.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ef8bf52b6aa21c2d231242fa83d1d7b9caaaa4a9e6ad1fd2efecdb8618e75d10-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203846), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500406), 51733482,
     'UNC', 1, FALSE, 'BA 194257',
     NULL, NULL, 5.21, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BA 194257', notes=NULL,
    public_notes=NULL, purchase_price=5.21,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203846), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500406), 69649944,
     'UNC', 1, FALSE, 'BC 866035',
     NULL, 'Auction 151 - PG 67+', 16.56, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3c9b650130433e20cb6ab6caa1acebd75552480db275431c2344cf2c5ab99858.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3c9b650130433e20cb6ab6caa1acebd75552480db275431c2344cf2c5ab99858-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/326071467d9885df37c53ee73407ecd7ead383f2da8838df260fbe1b9de1ff08.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/326071467d9885df37c53ee73407ecd7ead383f2da8838df260fbe1b9de1ff08-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BC 866035', notes=NULL,
    public_notes='Auction 151 - PG 67+', purchase_price=16.56,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3c9b650130433e20cb6ab6caa1acebd75552480db275431c2344cf2c5ab99858.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3c9b650130433e20cb6ab6caa1acebd75552480db275431c2344cf2c5ab99858-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/326071467d9885df37c53ee73407ecd7ead383f2da8838df260fbe1b9de1ff08.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/326071467d9885df37c53ee73407ecd7ead383f2da8838df260fbe1b9de1ff08-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203853), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500446), 51526465,
     'UNC', 1, FALSE, 'LE 28969837 B',
     NULL, NULL, 2.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LE 28969837 B', notes=NULL,
    public_notes=NULL, purchase_price=2.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500446);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203869), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500512), 51232983,
     'UNC', 1, FALSE, 'AB 6058006',
     NULL, NULL, 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 6058006', notes=NULL,
    public_notes=NULL, purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500512);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203875), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500556), 51389875,
     'UNC', 1, FALSE, 'BK 15962151',
     'The nominee for the “Bank Note of the Year Award” in 2015', NULL, 6.28, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BK 15962151', notes='The nominee for the “Bank Note of the Year Award” in 2015',
    public_notes=NULL, purchase_price=6.28,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500556);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203875), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500556), 56166996,
     'UNC', 1, FALSE, 'BA 15334608',
     'The nominee for the “Bank Note of the Year Award” in 2015', NULL, 6.29, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BA 15334608', notes='The nominee for the “Bank Note of the Year Award” in 2015',
    public_notes=NULL, purchase_price=6.29,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500556);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203877), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500574), 51232762,
     'UNC', 1, FALSE, '90756803 A',
     NULL, NULL, 0.85, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='90756803 A', notes=NULL,
    public_notes=NULL, purchase_price=0.85,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500574);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203878), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500575), 51273554,
     'UNC', 1, FALSE, '001506931 A',
     NULL, NULL, 2.13, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='001506931 A', notes=NULL,
    public_notes=NULL, purchase_price=2.13,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500575);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203897), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500661), 77330064,
     'UNC', 1, FALSE, 'ZSM 146956',
     NULL, 'Auction 185', 51.29, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7c7b3519e1c1e793b50151db8ce6046ee8dc52796a13355aa50da9c5e858fac1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7c7b3519e1c1e793b50151db8ce6046ee8dc52796a13355aa50da9c5e858fac1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/803af68a5b0b2cae110b3f68f8ee8ce2fdef47b0e6dda1ceeb4dfab6e039f233.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/803af68a5b0b2cae110b3f68f8ee8ce2fdef47b0e6dda1ceeb4dfab6e039f233-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ZSM 146956', notes=NULL,
    public_notes='Auction 185', purchase_price=51.29,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7c7b3519e1c1e793b50151db8ce6046ee8dc52796a13355aa50da9c5e858fac1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7c7b3519e1c1e793b50151db8ce6046ee8dc52796a13355aa50da9c5e858fac1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/803af68a5b0b2cae110b3f68f8ee8ce2fdef47b0e6dda1ceeb4dfab6e039f233.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/803af68a5b0b2cae110b3f68f8ee8ce2fdef47b0e6dda1ceeb4dfab6e039f233-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500661);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203899), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500670), 51232498,
     'UNC', 1, FALSE, 'S 8473691',
     NULL, NULL, 0.62, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='S 8473691', notes=NULL,
    public_notes=NULL, purchase_price=0.62,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500670);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203903), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500729), 51232448,
     'UNC', 1, FALSE, 'C 13462135',
     NULL, NULL, 1.26, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 13462135', notes=NULL,
    public_notes=NULL, purchase_price=1.26,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500729);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203927), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503325), 59828238,
     'UNC', 1, FALSE, '8 B 9871404',
     NULL, 'Auction 102', 28.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/646fe4b7a7733a9599f1040aed3dfd92b345d907cd646984c3bf835917cb9258.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/646fe4b7a7733a9599f1040aed3dfd92b345d907cd646984c3bf835917cb9258-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1cf5a3af1f3f77670004e1102f40d9876c1892e436e1eec5d7d58e07cf77f965.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1cf5a3af1f3f77670004e1102f40d9876c1892e436e1eec5d7d58e07cf77f965-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='8 B 9871404', notes=NULL,
    public_notes='Auction 102', purchase_price=28.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/646fe4b7a7733a9599f1040aed3dfd92b345d907cd646984c3bf835917cb9258.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/646fe4b7a7733a9599f1040aed3dfd92b345d907cd646984c3bf835917cb9258-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1cf5a3af1f3f77670004e1102f40d9876c1892e436e1eec5d7d58e07cf77f965.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1cf5a3af1f3f77670004e1102f40d9876c1892e436e1eec5d7d58e07cf77f965-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503325);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203927), (SELECT id FROM banknote_issues WHERE numista_issue_id = 541040), 60777585,
     'UNC', 1, FALSE, '1 C 6108437',
     NULL, 'Auction 111', 49.03, 'EUR',
     'PCGS Banknote', '66', '80823251',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a4c5c97234f0d6dc46f91df3ba6e279b5686b9a3562b39d9850b63e201b04619.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a4c5c97234f0d6dc46f91df3ba6e279b5686b9a3562b39d9850b63e201b04619-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2ae23a6f5962e5ce696618950c1603224b3a291bac50f4b4efd3a7393c5476eb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2ae23a6f5962e5ce696618950c1603224b3a291bac50f4b4efd3a7393c5476eb-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1 C 6108437', notes=NULL,
    public_notes='Auction 111', purchase_price=49.03,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='66', cert_number='80823251',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a4c5c97234f0d6dc46f91df3ba6e279b5686b9a3562b39d9850b63e201b04619.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a4c5c97234f0d6dc46f91df3ba6e279b5686b9a3562b39d9850b63e201b04619-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2ae23a6f5962e5ce696618950c1603224b3a291bac50f4b4efd3a7393c5476eb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2ae23a6f5962e5ce696618950c1603224b3a291bac50f4b4efd3a7393c5476eb-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 541040);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203929), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500916), 51234773,
     'UNC', 1, FALSE, 'CV 1312602 B',
     NULL, NULL, 5.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CV 1312602 B', notes=NULL,
    public_notes=NULL, purchase_price=5.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500916);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203929), (SELECT id FROM banknote_issues WHERE numista_issue_id = 500916), 75513720,
     'UNC', 1, FALSE, 'AF 5395529 B',
     NULL, 'Auction 172', 38.33, 'EUR',
     'PMG', '67', '2431033-004',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/66f211e91bc6ea87bb20347f0c0b5de733b943538f7198458509513f4b0fa770.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/66f211e91bc6ea87bb20347f0c0b5de733b943538f7198458509513f4b0fa770-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cc83c6fb26e26a54d7efba26b629b69d5758ba5c1b3d1b0f943a88bfa2e0e4bd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cc83c6fb26e26a54d7efba26b629b69d5758ba5c1b3d1b0f943a88bfa2e0e4bd-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AF 5395529 B', notes=NULL,
    public_notes='Auction 172', purchase_price=38.33,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2431033-004',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/66f211e91bc6ea87bb20347f0c0b5de733b943538f7198458509513f4b0fa770.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/66f211e91bc6ea87bb20347f0c0b5de733b943538f7198458509513f4b0fa770-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cc83c6fb26e26a54d7efba26b629b69d5758ba5c1b3d1b0f943a88bfa2e0e4bd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cc83c6fb26e26a54d7efba26b629b69d5758ba5c1b3d1b0f943a88bfa2e0e4bd-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 500916);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203932), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503662), 78342475,
     'UNC', 1, FALSE, '39F 881418',
     NULL, 'Auction 189', 26.6, 'EUR',
     'PMG', '66', '1922228-012',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9d6d63fc7955f6e19cc3c50ee934e1d6431d7e26af3b66aed8a165efae06d144.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9d6d63fc7955f6e19cc3c50ee934e1d6431d7e26af3b66aed8a165efae06d144-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='39F 881418', notes=NULL,
    public_notes='Auction 189', purchase_price=26.6,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1922228-012',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9d6d63fc7955f6e19cc3c50ee934e1d6431d7e26af3b66aed8a165efae06d144.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9d6d63fc7955f6e19cc3c50ee934e1d6431d7e26af3b66aed8a165efae06d144-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503662);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203933), (SELECT id FROM banknote_issues WHERE numista_issue_id = 675052), 73678541,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 675052);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203933), (SELECT id FROM banknote_issues WHERE numista_issue_id = 675052), 73678545,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 675052);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 203999), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501576), 51230864,
     'UNC', 1, FALSE, 'QAR 672343',
     NULL, NULL, 1.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='QAR 672343', notes=NULL,
    public_notes=NULL, purchase_price=1.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501576);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204003), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501584), 51733721,
     'UNC', 1, FALSE, 'AB 1764944',
     NULL, NULL, 1.06, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 1764944', notes=NULL,
    public_notes=NULL, purchase_price=1.06,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501584);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204005), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501586), 51733709,
     'UNC', 1, FALSE, 'AA 8927590',
     NULL, NULL, 0.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 8927590', notes=NULL,
    public_notes=NULL, purchase_price=0.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501586);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204006), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501587), 51733736,
     'UNC', 1, FALSE, 'AB 8843238',
     NULL, NULL, 1.66, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 8843238', notes=NULL,
    public_notes=NULL, purchase_price=1.66,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501587);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204008), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501593), 51733750,
     'UNC', 1, FALSE, 'AA 5719205',
     NULL, NULL, 3.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 5719205', notes=NULL,
    public_notes=NULL, purchase_price=3.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501593);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204030), (SELECT id FROM banknote_issues WHERE numista_issue_id = 626314), 51615346,
     'UNC', 1, FALSE, '871 066158',
     NULL, NULL, 0.29, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='871 066158', notes=NULL,
    public_notes=NULL, purchase_price=0.29,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 626314);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204034), (SELECT id FROM banknote_issues WHERE numista_issue_id = 625175), 51615341,
     'UNC', 1, FALSE, '682 412441',
     NULL, NULL, 0.71, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='682 412441', notes=NULL,
    public_notes=NULL, purchase_price=0.71,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 625175);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204035), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517994), 51234384,
     'UNC', 1, FALSE, 'ZR 8484174',
     NULL, NULL, 1.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ZR 8484174', notes=NULL,
    public_notes=NULL, purchase_price=1.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517994);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204043), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505986), 51274899,
     'UNC', 1, FALSE, '83 636758',
     NULL, NULL, 2.35, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='83 636758', notes=NULL,
    public_notes=NULL, purchase_price=2.35,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505986);

END $$;