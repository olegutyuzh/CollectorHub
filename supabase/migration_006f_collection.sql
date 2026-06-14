-- migration_006f_collection.sql
-- Rows 451–600 of 976
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
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206382), (SELECT id FROM banknote_issues WHERE numista_issue_id = 721971), 77437785,
     'UNC', 1, FALSE, 'F 248 658054',
     NULL, NULL, 0.55, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1b0541cdc5cb2891e050b348b0e61df62af3f68a0cdb9678fdada340c823ed7e.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1b0541cdc5cb2891e050b348b0e61df62af3f68a0cdb9678fdada340c823ed7e-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F 248 658054', notes=NULL,
    public_notes=NULL, purchase_price=0.55,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1b0541cdc5cb2891e050b348b0e61df62af3f68a0cdb9678fdada340c823ed7e.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1b0541cdc5cb2891e050b348b0e61df62af3f68a0cdb9678fdada340c823ed7e-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 721971);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206385), (SELECT id FROM banknote_issues WHERE numista_issue_id = 649135), 51273730,
     'UNC', 1, FALSE, 'D121 123258',
     NULL, NULL, 1.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D121 123258', notes=NULL,
    public_notes=NULL, purchase_price=1.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 649135);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206385), (SELECT id FROM banknote_issues WHERE numista_issue_id = 725283), 77437853,
     'UNC', 1, FALSE, 'F 174 167573',
     NULL, NULL, 1.67, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7ec1a7e6d28e1e9923f2c28e7341469d86e01ddbfe1ead5ac978164eaa77187a.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7ec1a7e6d28e1e9923f2c28e7341469d86e01ddbfe1ead5ac978164eaa77187a-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F 174 167573', notes=NULL,
    public_notes=NULL, purchase_price=1.67,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7ec1a7e6d28e1e9923f2c28e7341469d86e01ddbfe1ead5ac978164eaa77187a.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7ec1a7e6d28e1e9923f2c28e7341469d86e01ddbfe1ead5ac978164eaa77187a-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 725283);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206387), (SELECT id FROM banknote_issues WHERE numista_issue_id = 579976), 51273829,
     'UNC', 1, FALSE, 'У232 212334',
     NULL, NULL, 2.99, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='У232 212334', notes=NULL,
    public_notes=NULL, purchase_price=2.99,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 579976);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206387), (SELECT id FROM banknote_issues WHERE numista_issue_id = 711347), 77437937,
     'UNC', 1, FALSE, 'G 200 851349',
     NULL, NULL, 2.03, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e59190683600128f10e336028af0a8606fa88e8564dbf57d90dfad1809612339.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e59190683600128f10e336028af0a8606fa88e8564dbf57d90dfad1809612339-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='G 200 851349', notes=NULL,
    public_notes=NULL, purchase_price=2.03,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e59190683600128f10e336028af0a8606fa88e8564dbf57d90dfad1809612339.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e59190683600128f10e336028af0a8606fa88e8564dbf57d90dfad1809612339-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 711347);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206390), (SELECT id FROM banknote_issues WHERE numista_issue_id = 923541), 77437991,
     'UNC', 1, FALSE, 'G 004 686818',
     NULL, NULL, 6.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2952127c683832bf13cad61e5ace0f3e18aaead438871bb02652fb00955cd334.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2952127c683832bf13cad61e5ace0f3e18aaead438871bb02652fb00955cd334-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='G 004 686818', notes=NULL,
    public_notes=NULL, purchase_price=6.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2952127c683832bf13cad61e5ace0f3e18aaead438871bb02652fb00955cd334.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2952127c683832bf13cad61e5ace0f3e18aaead438871bb02652fb00955cd334-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 923541);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206391), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517087), 51234789,
     'UNC', 1, FALSE, 'HH 7251883 A',
     NULL, NULL, 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HH 7251883 A', notes=NULL,
    public_notes=NULL, purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517087);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206392), (SELECT id FROM banknote_issues WHERE numista_issue_id = 725284), 77438037,
     'UNC', 1, FALSE, 'G 356 121927',
     NULL, NULL, 9.04, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e08b6e42eb7253101d76b939e6fce3eb859d55782547c6a54bc2aa06407f3b1c.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e08b6e42eb7253101d76b939e6fce3eb859d55782547c6a54bc2aa06407f3b1c-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='G 356 121927', notes=NULL,
    public_notes=NULL, purchase_price=9.04,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e08b6e42eb7253101d76b939e6fce3eb859d55782547c6a54bc2aa06407f3b1c.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e08b6e42eb7253101d76b939e6fce3eb859d55782547c6a54bc2aa06407f3b1c-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 725284);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206511), (SELECT id FROM banknote_issues WHERE numista_issue_id = 514956), 70287370,
     'UNC', 1, FALSE, 'P 38 589778',
     NULL, 'Auction 155', 36.33, 'EUR',
     'PMG', '67', '1921342-026',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a1bd455d75b10b876a037fcd7797ce05668c086a7aca7794fb28d6323ed2000e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a1bd455d75b10b876a037fcd7797ce05668c086a7aca7794fb28d6323ed2000e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1f668fef39501de2d1ed327ee8bcbd1f5204d59604047334f50b8e191f15756d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1f668fef39501de2d1ed327ee8bcbd1f5204d59604047334f50b8e191f15756d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='P 38 589778', notes=NULL,
    public_notes='Auction 155', purchase_price=36.33,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1921342-026',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a1bd455d75b10b876a037fcd7797ce05668c086a7aca7794fb28d6323ed2000e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a1bd455d75b10b876a037fcd7797ce05668c086a7aca7794fb28d6323ed2000e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1f668fef39501de2d1ed327ee8bcbd1f5204d59604047334f50b8e191f15756d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1f668fef39501de2d1ed327ee8bcbd1f5204d59604047334f50b8e191f15756d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 514956);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206523), (SELECT id FROM banknote_issues WHERE numista_issue_id = 528799), 51235133,
     'UNC', 3, FALSE, NULL,
     NULL, NULL, 0.73, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=3, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.73,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 528799);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206525), (SELECT id FROM banknote_issues WHERE numista_issue_id = 512198), 60312884,
     'UNC', 1, FALSE, 'F 32 006044',
     NULL, 'Auction 104', 66.34, 'EUR',
     'PMG', '67', '1910460-007',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2b7623d1296465beacbbd77c163c7ef3dc787c2674a49581dfd5eb7ff7653983.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2b7623d1296465beacbbd77c163c7ef3dc787c2674a49581dfd5eb7ff7653983-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2d3d57bf9d2463b8b034e6b1aa6b7e27b6796d29d5dc12ddc3d672b68d471191.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d3d57bf9d2463b8b034e6b1aa6b7e27b6796d29d5dc12ddc3d672b68d471191-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F 32 006044', notes=NULL,
    public_notes='Auction 104', purchase_price=66.34,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1910460-007',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2b7623d1296465beacbbd77c163c7ef3dc787c2674a49581dfd5eb7ff7653983.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2b7623d1296465beacbbd77c163c7ef3dc787c2674a49581dfd5eb7ff7653983-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2d3d57bf9d2463b8b034e6b1aa6b7e27b6796d29d5dc12ddc3d672b68d471191.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d3d57bf9d2463b8b034e6b1aa6b7e27b6796d29d5dc12ddc3d672b68d471191-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 512198);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206535), (SELECT id FROM banknote_issues WHERE numista_issue_id = 541534), 60777606,
     'AU', 1, FALSE, '02 A 763952',
     NULL, 'Auction 111', 33.17, 'EUR',
     'PMG', '58', '2177520-026',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d2996bf09426f9ad0b43172b139fdba8e7333065f72ca7fed8542b97ce8e2c9a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d2996bf09426f9ad0b43172b139fdba8e7333065f72ca7fed8542b97ce8e2c9a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a0901fa907aa139e0964487957d4a6b034ae538ced1fb48ef4ed088e1a901735.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a0901fa907aa139e0964487957d4a6b034ae538ced1fb48ef4ed088e1a901735-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='02 A 763952', notes=NULL,
    public_notes='Auction 111', purchase_price=33.17,
    price_currency='EUR', grading_company='PMG',
    grading_score='58', cert_number='2177520-026',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d2996bf09426f9ad0b43172b139fdba8e7333065f72ca7fed8542b97ce8e2c9a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d2996bf09426f9ad0b43172b139fdba8e7333065f72ca7fed8542b97ce8e2c9a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a0901fa907aa139e0964487957d4a6b034ae538ced1fb48ef4ed088e1a901735.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a0901fa907aa139e0964487957d4a6b034ae538ced1fb48ef4ed088e1a901735-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 541534);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206562), (SELECT id FROM banknote_issues WHERE numista_issue_id = 862879), 77438067,
     'UNC', 1, FALSE, 'H 630 457982',
     NULL, NULL, 15.06, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3d855c817d0c9401a518d305b6c959c154e441ab272622a5fe6ccbd21ba2a6cc.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3d855c817d0c9401a518d305b6c959c154e441ab272622a5fe6ccbd21ba2a6cc-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='H 630 457982', notes=NULL,
    public_notes=NULL, purchase_price=15.06,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3d855c817d0c9401a518d305b6c959c154e441ab272622a5fe6ccbd21ba2a6cc.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3d855c817d0c9401a518d305b6c959c154e441ab272622a5fe6ccbd21ba2a6cc-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 862879);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206599), (SELECT id FROM banknote_issues WHERE numista_issue_id = 512827), 51234566,
     'UNC', 1, FALSE, 'B 0616947 R',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 0616947 R', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 512827);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206600), (SELECT id FROM banknote_issues WHERE numista_issue_id = 512829), 51234570,
     'UNC', 1, FALSE, 'C 2669272 S',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 2669272 S', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 512829);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206601), (SELECT id FROM banknote_issues WHERE numista_issue_id = 512831), 51234559,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 512831);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206614), (SELECT id FROM banknote_issues WHERE numista_issue_id = 512876), 51297918,
     'UNC', 1, FALSE, 'AD 6003159',
     NULL, NULL, 2.32, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AD 6003159', notes=NULL,
    public_notes=NULL, purchase_price=2.32,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 512876);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206691), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513119), 51230979,
     'UNC', 1, FALSE, '62639863 A',
     'The nominee for the “Bank Note of the Year Award” in 2015', NULL, 4.45, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='62639863 A', notes='The nominee for the “Bank Note of the Year Award” in 2015',
    public_notes=NULL, purchase_price=4.45,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513119);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206693), (SELECT id FROM banknote_issues WHERE numista_issue_id = 585255), 51230983,
     'UNC', 1, FALSE, '00123817 A',
     'The winner of the “Bank Note of the Year Award” for 2018', NULL, 2.45, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='00123817 A', notes='The winner of the “Bank Note of the Year Award” for 2018',
    public_notes=NULL, purchase_price=2.45,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 585255);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206729), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513211), 51231026,
     'UNC', 1, FALSE, '35852605 U',
     'The nominee for the “Bank Note of the Year Award” in 2012', NULL, 6.81, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='35852605 U', notes='The nominee for the “Bank Note of the Year Award” in 2012',
    public_notes=NULL, purchase_price=6.81,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513211);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206732), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513217), 51231038,
     'UNC', 1, FALSE, '00016739 A',
     NULL, NULL, 3.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='00016739 A', notes=NULL,
    public_notes=NULL, purchase_price=3.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513217);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206765), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513272), 70287229,
     'UNC', 1, FALSE, '1262 958714',
     NULL, 'Auction 155', 40.06, 'EUR',
     'PMG', '64', '1916431-017',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a89d3509f1a1c8d8712e3e37310fb6a227fc361dc95ff285c7390e271f0ad104.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a89d3509f1a1c8d8712e3e37310fb6a227fc361dc95ff285c7390e271f0ad104-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/22dfb737b589b307ad4e29c9e94379b82b6a86c4f41a3c659d8f274560697aee.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/22dfb737b589b307ad4e29c9e94379b82b6a86c4f41a3c659d8f274560697aee-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1262 958714', notes=NULL,
    public_notes='Auction 155', purchase_price=40.06,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1916431-017',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a89d3509f1a1c8d8712e3e37310fb6a227fc361dc95ff285c7390e271f0ad104.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a89d3509f1a1c8d8712e3e37310fb6a227fc361dc95ff285c7390e271f0ad104-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/22dfb737b589b307ad4e29c9e94379b82b6a86c4f41a3c659d8f274560697aee.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/22dfb737b589b307ad4e29c9e94379b82b6a86c4f41a3c659d8f274560697aee-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513272);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206766), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513273), 60314487,
     'UNC', 1, FALSE, '1200 411672',
     NULL, 'Auction 107', 76.75, 'EUR',
     'PMG', '67', '1913431-002',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/bed08f28188ff06b28e063c40aa7947244f536739b2f2f6128c08b11fc7f6083.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bed08f28188ff06b28e063c40aa7947244f536739b2f2f6128c08b11fc7f6083-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/dc8bf8c348da3e03d21948d0e24750136b9f21b0a93571f130ce3af044749fa8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dc8bf8c348da3e03d21948d0e24750136b9f21b0a93571f130ce3af044749fa8-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1200 411672', notes=NULL,
    public_notes='Auction 107', purchase_price=76.75,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1913431-002',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/bed08f28188ff06b28e063c40aa7947244f536739b2f2f6128c08b11fc7f6083.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bed08f28188ff06b28e063c40aa7947244f536739b2f2f6128c08b11fc7f6083-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/dc8bf8c348da3e03d21948d0e24750136b9f21b0a93571f130ce3af044749fa8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dc8bf8c348da3e03d21948d0e24750136b9f21b0a93571f130ce3af044749fa8-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513273);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206831), (SELECT id FROM banknote_issues WHERE numista_issue_id = 525028), 73760672,
     'UNC', 1, FALSE, 'F1952D 580263D',
     NULL, 'Auction 170', 78.72, 'EUR',
     'PMG', '65', '1916442-004',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4f1e90bfe774e37ac4896d5affa58518e5a6091176bf04b43bb79b2f536c6a4f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4f1e90bfe774e37ac4896d5affa58518e5a6091176bf04b43bb79b2f536c6a4f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8fd50b2a50b63a651be7f0a82997113d184282d79f098d119d8d283b8cf7df8d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8fd50b2a50b63a651be7f0a82997113d184282d79f098d119d8d283b8cf7df8d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F1952D 580263D', notes=NULL,
    public_notes='Auction 170', purchase_price=78.72,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1916442-004',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4f1e90bfe774e37ac4896d5affa58518e5a6091176bf04b43bb79b2f536c6a4f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4f1e90bfe774e37ac4896d5affa58518e5a6091176bf04b43bb79b2f536c6a4f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8fd50b2a50b63a651be7f0a82997113d184282d79f098d119d8d283b8cf7df8d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8fd50b2a50b63a651be7f0a82997113d184282d79f098d119d8d283b8cf7df8d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 525028);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206836), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513466), 51275975,
     'UNC', 1, FALSE, '7257753',
     NULL, NULL, 0.42, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='7257753', notes=NULL,
    public_notes=NULL, purchase_price=0.42,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513466);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206844), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517103), 51235009,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 1.02, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=1.02,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517103);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206849), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513549), 56645824,
     'UNC', 1, FALSE, '090342H',
     NULL, NULL, 12.03, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='090342H', notes=NULL,
    public_notes=NULL, purchase_price=12.03,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513549);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206851), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513551), 60312577,
     'UNC', 1, FALSE, '078443 H',
     NULL, 'Auction 104 - ICG 68 Gem Unc', 40.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/bd64e48df08f9c853fcf9733ec76dbdd463fb2aa873dae55e71093feac411c19.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bd64e48df08f9c853fcf9733ec76dbdd463fb2aa873dae55e71093feac411c19-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2b9c0488454806b7926d7514854e594c9a9513d04c1770dc0e1f8d5bba0bfb2f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2b9c0488454806b7926d7514854e594c9a9513d04c1770dc0e1f8d5bba0bfb2f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='078443 H', notes=NULL,
    public_notes='Auction 104 - ICG 68 Gem Unc', purchase_price=40.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/bd64e48df08f9c853fcf9733ec76dbdd463fb2aa873dae55e71093feac411c19.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bd64e48df08f9c853fcf9733ec76dbdd463fb2aa873dae55e71093feac411c19-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2b9c0488454806b7926d7514854e594c9a9513d04c1770dc0e1f8d5bba0bfb2f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2b9c0488454806b7926d7514854e594c9a9513d04c1770dc0e1f8d5bba0bfb2f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513551);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206860), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513576), 60306133,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513576);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206948), (SELECT id FROM banknote_issues WHERE numista_issue_id = 513830), 60777721,
     'AU', 1, FALSE, '2307 015759',
     NULL, 'Auction 111', 33.17, 'EUR',
     'PMG', '50', '1912725-006',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/74ec9fc8b8a22f79cb6b0e9723081a9b8c28a5568d00a65902801bf8e525068c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/74ec9fc8b8a22f79cb6b0e9723081a9b8c28a5568d00a65902801bf8e525068c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bdf3f59c97bffb092ac39136bdb63800af3eb83551c0b649fc814b170f13703d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bdf3f59c97bffb092ac39136bdb63800af3eb83551c0b649fc814b170f13703d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='2307 015759', notes=NULL,
    public_notes='Auction 111', purchase_price=33.17,
    price_currency='EUR', grading_company='PMG',
    grading_score='50', cert_number='1912725-006',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/74ec9fc8b8a22f79cb6b0e9723081a9b8c28a5568d00a65902801bf8e525068c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/74ec9fc8b8a22f79cb6b0e9723081a9b8c28a5568d00a65902801bf8e525068c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bdf3f59c97bffb092ac39136bdb63800af3eb83551c0b649fc814b170f13703d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bdf3f59c97bffb092ac39136bdb63800af3eb83551c0b649fc814b170f13703d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 513830);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207001), (SELECT id FROM banknote_issues WHERE numista_issue_id = 514185), 55950469,
     'UNC', 1, FALSE, 'NH 00874510',
     NULL, NULL, 6.28, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='NH 00874510', notes=NULL,
    public_notes=NULL, purchase_price=6.28,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 514185);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207005), (SELECT id FROM banknote_issues WHERE numista_issue_id = 514217), 51733997,
     'UNC', 1, FALSE, 'KC 7334400',
     NULL, NULL, 3.06, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='KC 7334400', notes=NULL,
    public_notes=NULL, purchase_price=3.06,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 514217);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207046), (SELECT id FROM banknote_issues WHERE numista_issue_id = 514337), 51235056,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 2.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=2.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 514337);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207055), (SELECT id FROM banknote_issues WHERE numista_issue_id = 514348), 51231576,
     'UNC', 1, FALSE, NULL,
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 2.45, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=2.45,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 514348);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207290), (SELECT id FROM banknote_issues WHERE numista_issue_id = 514968), 70287141,
     'AU', 1, FALSE, '219444',
     NULL, 'Auction 155', 4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='219444', notes=NULL,
    public_notes='Auction 155', purchase_price=4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 514968);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207305), (SELECT id FROM banknote_issues WHERE numista_issue_id = 515051), 70287397,
     'UNC', 1, FALSE, 'S 45 N 650640',
     NULL, 'Auction 155', 58.69, 'EUR',
     'PMG', '64', '1920384-006',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7608693187eedfc9bb589781dc319b623e82879f914446a9cb8dec06212a1150.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7608693187eedfc9bb589781dc319b623e82879f914446a9cb8dec06212a1150-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a43701638710f09cfaa9479ed664077d047cc496cadd75bb68bc3e4c37a1f9f3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a43701638710f09cfaa9479ed664077d047cc496cadd75bb68bc3e4c37a1f9f3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='S 45 N 650640', notes=NULL,
    public_notes='Auction 155', purchase_price=58.69,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1920384-006',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7608693187eedfc9bb589781dc319b623e82879f914446a9cb8dec06212a1150.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7608693187eedfc9bb589781dc319b623e82879f914446a9cb8dec06212a1150-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a43701638710f09cfaa9479ed664077d047cc496cadd75bb68bc3e4c37a1f9f3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a43701638710f09cfaa9479ed664077d047cc496cadd75bb68bc3e4c37a1f9f3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 515051);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207309), (SELECT id FROM banknote_issues WHERE numista_issue_id = 536698), 60314397,
     'UNC', 1, FALSE, 'B 4771 H 8921544',
     NULL, 'Auction 107', 21.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d5ffe4b29d3857a82c7bd3f317e78dea989c5c7412c4fddc8eabed7bda5a8310.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d5ffe4b29d3857a82c7bd3f317e78dea989c5c7412c4fddc8eabed7bda5a8310-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e91b5dabd4486932559a2e2e2e38ea79ea8a0320772da4169083623e9357bdf3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e91b5dabd4486932559a2e2e2e38ea79ea8a0320772da4169083623e9357bdf3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 4771 H 8921544', notes=NULL,
    public_notes='Auction 107', purchase_price=21.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d5ffe4b29d3857a82c7bd3f317e78dea989c5c7412c4fddc8eabed7bda5a8310.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d5ffe4b29d3857a82c7bd3f317e78dea989c5c7412c4fddc8eabed7bda5a8310-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e91b5dabd4486932559a2e2e2e38ea79ea8a0320772da4169083623e9357bdf3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e91b5dabd4486932559a2e2e2e38ea79ea8a0320772da4169083623e9357bdf3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 536698);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207309), (SELECT id FROM banknote_issues WHERE numista_issue_id = 536692), 60624885,
     'UNC', 1, FALSE, 'B7771H',
     NULL, NULL, 6.91, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8ffc529dd2a9fc8a84234001d6c44d446bfa8cc87ab959d228acf42731f90426.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8ffc529dd2a9fc8a84234001d6c44d446bfa8cc87ab959d228acf42731f90426-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8be4b12274805d296e629de8172a8129c3859fc52433b6323da1824e977d2857.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8be4b12274805d296e629de8172a8129c3859fc52433b6323da1824e977d2857-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B7771H', notes=NULL,
    public_notes=NULL, purchase_price=6.91,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8ffc529dd2a9fc8a84234001d6c44d446bfa8cc87ab959d228acf42731f90426.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8ffc529dd2a9fc8a84234001d6c44d446bfa8cc87ab959d228acf42731f90426-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8be4b12274805d296e629de8172a8129c3859fc52433b6323da1824e977d2857.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8be4b12274805d296e629de8172a8129c3859fc52433b6323da1824e977d2857-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 536692);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207328), (SELECT id FROM banknote_issues WHERE numista_issue_id = 515138), 70287338,
     'AU', 1, FALSE, 'A 07 292259',
     NULL, 'Auction 155', 42.54, 'EUR',
     'PMG', '58', '1920812-017',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c6ef589325dfecd456b2319768218733cb86d2a804f92b5010eac1e80da3fb0f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c6ef589325dfecd456b2319768218733cb86d2a804f92b5010eac1e80da3fb0f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/14d279faa00906522dbd8824aa837c61f3e2c96268524111a0eb9446af73b84b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/14d279faa00906522dbd8824aa837c61f3e2c96268524111a0eb9446af73b84b-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='A 07 292259', notes=NULL,
    public_notes='Auction 155', purchase_price=42.54,
    price_currency='EUR', grading_company='PMG',
    grading_score='58', cert_number='1920812-017',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c6ef589325dfecd456b2319768218733cb86d2a804f92b5010eac1e80da3fb0f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c6ef589325dfecd456b2319768218733cb86d2a804f92b5010eac1e80da3fb0f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/14d279faa00906522dbd8824aa837c61f3e2c96268524111a0eb9446af73b84b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/14d279faa00906522dbd8824aa837c61f3e2c96268524111a0eb9446af73b84b-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 515138);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207355), (SELECT id FROM banknote_issues WHERE numista_issue_id = 515194), 51235556,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 515194);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207395), (SELECT id FROM banknote_issues WHERE numista_issue_id = 515329), 51235375,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 515329);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207401), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517124), 51234691,
     'UNC', 1, FALSE, 'BU 1303667',
     NULL, NULL, 2.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BU 1303667', notes=NULL,
    public_notes=NULL, purchase_price=2.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517124);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207549), (SELECT id FROM banknote_issues WHERE numista_issue_id = 515735), 70287269,
     'UNC', 1, FALSE, 'F 15032104',
     NULL, 'Auction 155', 32.61, 'EUR',
     'PMG', '66', '1908657-016',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/ffb5a56783c00c7c15464727636f3e430297ca3bdf5a92940ebce1a9df43954b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ffb5a56783c00c7c15464727636f3e430297ca3bdf5a92940ebce1a9df43954b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0152a1eb08dbda3b99d940dd4995f5f635152cf50b6be56811d3cdac17e43686.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0152a1eb08dbda3b99d940dd4995f5f635152cf50b6be56811d3cdac17e43686-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F 15032104', notes=NULL,
    public_notes='Auction 155', purchase_price=32.61,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1908657-016',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/ffb5a56783c00c7c15464727636f3e430297ca3bdf5a92940ebce1a9df43954b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ffb5a56783c00c7c15464727636f3e430297ca3bdf5a92940ebce1a9df43954b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0152a1eb08dbda3b99d940dd4995f5f635152cf50b6be56811d3cdac17e43686.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0152a1eb08dbda3b99d940dd4995f5f635152cf50b6be56811d3cdac17e43686-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 515735);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207666), (SELECT id FROM banknote_issues WHERE numista_issue_id = 516655), 51235222,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 3.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=3.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 516655);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207669), (SELECT id FROM banknote_issues WHERE numista_issue_id = 516665), 75513617,
     'UNC', 1, FALSE, '73 0190610',
     NULL, 'Auction 172', 91.74, 'EUR',
     'PMG', '63', '1923337-004',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/ff2695b5e29cbb9f3377e3fdea37d823c8af833caf51918f83cf3441179d2bf9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ff2695b5e29cbb9f3377e3fdea37d823c8af833caf51918f83cf3441179d2bf9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b7a6b1900830851b561b33ad11c5f98a3a792e13e98033f0a2372527ec723704.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b7a6b1900830851b561b33ad11c5f98a3a792e13e98033f0a2372527ec723704-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='73 0190610', notes=NULL,
    public_notes='Auction 172', purchase_price=91.74,
    price_currency='EUR', grading_company='PMG',
    grading_score='63', cert_number='1923337-004',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/ff2695b5e29cbb9f3377e3fdea37d823c8af833caf51918f83cf3441179d2bf9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ff2695b5e29cbb9f3377e3fdea37d823c8af833caf51918f83cf3441179d2bf9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b7a6b1900830851b561b33ad11c5f98a3a792e13e98033f0a2372527ec723704.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b7a6b1900830851b561b33ad11c5f98a3a792e13e98033f0a2372527ec723704-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 516665);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207672), (SELECT id FROM banknote_issues WHERE numista_issue_id = 516670), 59826842,
     'UNC', 1, FALSE, '31 0142477',
     NULL, 'Auction 99', 79.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/37f2eb5a0f2474228d50fca4f88bde3dd5325eec39c24785cf407c4153e558f8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/37f2eb5a0f2474228d50fca4f88bde3dd5325eec39c24785cf407c4153e558f8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4f549de4502663c177953579761593d4cc622545de27fd86092d4bc540eb2a59.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4f549de4502663c177953579761593d4cc622545de27fd86092d4bc540eb2a59-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='31 0142477', notes=NULL,
    public_notes='Auction 99', purchase_price=79.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/37f2eb5a0f2474228d50fca4f88bde3dd5325eec39c24785cf407c4153e558f8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/37f2eb5a0f2474228d50fca4f88bde3dd5325eec39c24785cf407c4153e558f8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4f549de4502663c177953579761593d4cc622545de27fd86092d4bc540eb2a59.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4f549de4502663c177953579761593d4cc622545de27fd86092d4bc540eb2a59-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 516670);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207677), (SELECT id FROM banknote_issues WHERE numista_issue_id = 544590), 59827086,
     'AU', 1, FALSE, 'AO199',
     NULL, 'Auction 99', 66.16, 'EUR',
     'PMG', '58', '2516621-011',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/fb0d23c8bc77d17a6404c372957588df70bec9391b91aa2a6e71d33beeb85300.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fb0d23c8bc77d17a6404c372957588df70bec9391b91aa2a6e71d33beeb85300-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e64eb5393a1f61d42fc1684728ed366365bf06d085e930722e28d77cd3edaef1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e64eb5393a1f61d42fc1684728ed366365bf06d085e930722e28d77cd3edaef1-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='AO199', notes=NULL,
    public_notes='Auction 99', purchase_price=66.16,
    price_currency='EUR', grading_company='PMG',
    grading_score='58', cert_number='2516621-011',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/fb0d23c8bc77d17a6404c372957588df70bec9391b91aa2a6e71d33beeb85300.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fb0d23c8bc77d17a6404c372957588df70bec9391b91aa2a6e71d33beeb85300-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e64eb5393a1f61d42fc1684728ed366365bf06d085e930722e28d77cd3edaef1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e64eb5393a1f61d42fc1684728ed366365bf06d085e930722e28d77cd3edaef1-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 544590);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207677), (SELECT id FROM banknote_issues WHERE numista_issue_id = 544591), 59827118,
     'UNC', 1, FALSE, 'AO246',
     NULL, 'Auction 99', 97.16, 'EUR',
     'PMG', '63', '2516621-012',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/fa53f1be4f44b18205dcf6f809d49a384c75b080f38b00c66d5de026d0f4608a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fa53f1be4f44b18205dcf6f809d49a384c75b080f38b00c66d5de026d0f4608a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3c4acd038103b7a9552f9254eb7dac6b61f2129fef9e7aa044c075567e854e10.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3c4acd038103b7a9552f9254eb7dac6b61f2129fef9e7aa044c075567e854e10-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AO246', notes=NULL,
    public_notes='Auction 99', purchase_price=97.16,
    price_currency='EUR', grading_company='PMG',
    grading_score='63', cert_number='2516621-012',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/fa53f1be4f44b18205dcf6f809d49a384c75b080f38b00c66d5de026d0f4608a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fa53f1be4f44b18205dcf6f809d49a384c75b080f38b00c66d5de026d0f4608a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3c4acd038103b7a9552f9254eb7dac6b61f2129fef9e7aa044c075567e854e10.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3c4acd038103b7a9552f9254eb7dac6b61f2129fef9e7aa044c075567e854e10-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 544591);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207689), (SELECT id FROM banknote_issues WHERE numista_issue_id = 516820), 58854449,
     'UNC', 1, FALSE, 'B4 87 131005',
     NULL, 'Auction 97', 12.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1007f11131e87e652b51c509f5207fedd398801e0c9c4523751f10be8cd3e841.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1007f11131e87e652b51c509f5207fedd398801e0c9c4523751f10be8cd3e841-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f9991f943f28ecd3fcbecc4a2559a3fded78961725bb260a18ef25e6ce36d9ba.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f9991f943f28ecd3fcbecc4a2559a3fded78961725bb260a18ef25e6ce36d9ba-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B4 87 131005', notes=NULL,
    public_notes='Auction 97', purchase_price=12.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1007f11131e87e652b51c509f5207fedd398801e0c9c4523751f10be8cd3e841.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1007f11131e87e652b51c509f5207fedd398801e0c9c4523751f10be8cd3e841-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f9991f943f28ecd3fcbecc4a2559a3fded78961725bb260a18ef25e6ce36d9ba.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f9991f943f28ecd3fcbecc4a2559a3fded78961725bb260a18ef25e6ce36d9ba-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 516820);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207733), (SELECT id FROM banknote_issues WHERE numista_issue_id = 762421), 58854263,
     'UNC', 1, FALSE, 'M/12 116696',
     NULL, 'Auction 97', 10.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/48eff06c295a5d53206541ea9885af2347b1de2208c69e8b11b7022e82ec946a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/48eff06c295a5d53206541ea9885af2347b1de2208c69e8b11b7022e82ec946a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/225335af0f26e52fef6439d4cda2ee5c5cabb545dd9c677273727945348afed8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/225335af0f26e52fef6439d4cda2ee5c5cabb545dd9c677273727945348afed8-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='M/12 116696', notes=NULL,
    public_notes='Auction 97', purchase_price=10.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/48eff06c295a5d53206541ea9885af2347b1de2208c69e8b11b7022e82ec946a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/48eff06c295a5d53206541ea9885af2347b1de2208c69e8b11b7022e82ec946a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/225335af0f26e52fef6439d4cda2ee5c5cabb545dd9c677273727945348afed8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/225335af0f26e52fef6439d4cda2ee5c5cabb545dd9c677273727945348afed8-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 762421);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207734), (SELECT id FROM banknote_issues WHERE numista_issue_id = 525666), 51298329,
     'UNC', 1, FALSE, 'JV 0475235',
     NULL, NULL, 2.82, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='JV 0475235', notes=NULL,
    public_notes=NULL, purchase_price=2.82,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 525666);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207734), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517047), 61751600,
     'UNC', 1, FALSE, 'DY 3678423',
     NULL, 'Auction 113', 13.08, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7484e99718563f6fdbcb209efae693b5cf609e84cd107a82fbc5b1cd3f6ba383.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7484e99718563f6fdbcb209efae693b5cf609e84cd107a82fbc5b1cd3f6ba383-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/14d151e795ac2eaa5835cde10ee57864ba1acac743e61dfeac6500b1274f8889.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/14d151e795ac2eaa5835cde10ee57864ba1acac743e61dfeac6500b1274f8889-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DY 3678423', notes=NULL,
    public_notes='Auction 113', purchase_price=13.08,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7484e99718563f6fdbcb209efae693b5cf609e84cd107a82fbc5b1cd3f6ba383.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7484e99718563f6fdbcb209efae693b5cf609e84cd107a82fbc5b1cd3f6ba383-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/14d151e795ac2eaa5835cde10ee57864ba1acac743e61dfeac6500b1274f8889.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/14d151e795ac2eaa5835cde10ee57864ba1acac743e61dfeac6500b1274f8889-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517047);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207739), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517960), 69704584,
     'UNC', 1, FALSE, 'A8213546',
     NULL, 'Auction 115', 20, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b18b01c7306b65a901624e46d3a709385da98b6c1f6f6437d205058b32fdaa37.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b18b01c7306b65a901624e46d3a709385da98b6c1f6f6437d205058b32fdaa37-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/91ed36720227396ca31319036aad89be1d30a7da77fd2a2092cc4642e326777c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/91ed36720227396ca31319036aad89be1d30a7da77fd2a2092cc4642e326777c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A8213546', notes=NULL,
    public_notes='Auction 115', purchase_price=20,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b18b01c7306b65a901624e46d3a709385da98b6c1f6f6437d205058b32fdaa37.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b18b01c7306b65a901624e46d3a709385da98b6c1f6f6437d205058b32fdaa37-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/91ed36720227396ca31319036aad89be1d30a7da77fd2a2092cc4642e326777c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/91ed36720227396ca31319036aad89be1d30a7da77fd2a2092cc4642e326777c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517960);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207745), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517107), 59828035,
     'UNC', 1, FALSE, '6381954243',
     NULL, 'Auction 102', 18.71, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2b61d7bbba5f7296728f20f0dd1674da0bf4ad7f851208a6136c492ba48cfa0b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2b61d7bbba5f7296728f20f0dd1674da0bf4ad7f851208a6136c492ba48cfa0b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/442c289ae08871bb22665b86fa18b498ae4325436a3b5a0ab3a239eb5a70a0d1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/442c289ae08871bb22665b86fa18b498ae4325436a3b5a0ab3a239eb5a70a0d1-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='6381954243', notes=NULL,
    public_notes='Auction 102', purchase_price=18.71,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2b61d7bbba5f7296728f20f0dd1674da0bf4ad7f851208a6136c492ba48cfa0b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2b61d7bbba5f7296728f20f0dd1674da0bf4ad7f851208a6136c492ba48cfa0b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/442c289ae08871bb22665b86fa18b498ae4325436a3b5a0ab3a239eb5a70a0d1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/442c289ae08871bb22665b86fa18b498ae4325436a3b5a0ab3a239eb5a70a0d1-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517107);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207820), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518113), 75170273,
     'UNC', 1, FALSE, '6 1/358 778113',
     NULL, 'Auction 176', 10, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1aa00a880f5e3ea27fe011d77e85b0e9d7f1973fb2c66abc2483b8eed6e9e1b4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1aa00a880f5e3ea27fe011d77e85b0e9d7f1973fb2c66abc2483b8eed6e9e1b4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a8018820483b054264ee4ca57ad665f588c0552407cda131e8a664c1aeb685fc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a8018820483b054264ee4ca57ad665f588c0552407cda131e8a664c1aeb685fc-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='6 1/358 778113', notes=NULL,
    public_notes='Auction 176', purchase_price=10,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1aa00a880f5e3ea27fe011d77e85b0e9d7f1973fb2c66abc2483b8eed6e9e1b4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1aa00a880f5e3ea27fe011d77e85b0e9d7f1973fb2c66abc2483b8eed6e9e1b4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a8018820483b054264ee4ca57ad665f588c0552407cda131e8a664c1aeb685fc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a8018820483b054264ee4ca57ad665f588c0552407cda131e8a664c1aeb685fc-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518113);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207855), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532924), 51298077,
     'UNC', 1, FALSE, 'CQ 001705',
     NULL, NULL, 7.43, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CQ 001705', notes=NULL,
    public_notes=NULL, purchase_price=7.43,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532924);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207883), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517474), 60787218,
     'UNC', 1, FALSE, 'SB 543489 Q',
     NULL, 'Auction 111', 28.29, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8516cd627214991179881c72bb33ee01d0f4bd8b79f18513a312d4c9e7b972a2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8516cd627214991179881c72bb33ee01d0f4bd8b79f18513a312d4c9e7b972a2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/69a73159442001176ef12f663a00c37a103162639d7cd3c31781af605bd108ab.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/69a73159442001176ef12f663a00c37a103162639d7cd3c31781af605bd108ab-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='SB 543489 Q', notes=NULL,
    public_notes='Auction 111', purchase_price=28.29,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8516cd627214991179881c72bb33ee01d0f4bd8b79f18513a312d4c9e7b972a2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8516cd627214991179881c72bb33ee01d0f4bd8b79f18513a312d4c9e7b972a2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/69a73159442001176ef12f663a00c37a103162639d7cd3c31781af605bd108ab.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/69a73159442001176ef12f663a00c37a103162639d7cd3c31781af605bd108ab-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517474);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207929), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517552), 51235246,
     'UNC', 1, FALSE, 'CH 0138644',
     NULL, NULL, 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CH 0138644', notes=NULL,
    public_notes=NULL, purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517552);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207929), (SELECT id FROM banknote_issues WHERE numista_issue_id = 519142), 51235248,
     'UNC', 1, FALSE, 'FH 7556521',
     NULL, NULL, 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FH 7556521', notes=NULL,
    public_notes=NULL, purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 519142);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207947), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517612), 69704611,
     'UNC', 1, FALSE, '1601220',
     NULL, 'Auction 115', 73, 'EUR',
     'PMG', '66', '1914558-006',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/44f4a4cd70ca209f11605cd4b7f35078c765c94a137e32ff2d7f73ae6bbd82e1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/44f4a4cd70ca209f11605cd4b7f35078c765c94a137e32ff2d7f73ae6bbd82e1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f8f5eb632717e2987cee73826b200aafccd8fc477b4796a97ca1da79d0669fb7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f8f5eb632717e2987cee73826b200aafccd8fc477b4796a97ca1da79d0669fb7-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1601220', notes=NULL,
    public_notes='Auction 115', purchase_price=73,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1914558-006',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/44f4a4cd70ca209f11605cd4b7f35078c765c94a137e32ff2d7f73ae6bbd82e1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/44f4a4cd70ca209f11605cd4b7f35078c765c94a137e32ff2d7f73ae6bbd82e1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f8f5eb632717e2987cee73826b200aafccd8fc477b4796a97ca1da79d0669fb7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f8f5eb632717e2987cee73826b200aafccd8fc477b4796a97ca1da79d0669fb7-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517612);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 207949), (SELECT id FROM banknote_issues WHERE numista_issue_id = 531241), 77628948,
     'UNC', 1, FALSE, 'B 87 534599',
     NULL, 'Auction 183', 53.5, 'EUR',
     'PMG', '65', '8027445-062',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/67facbf3cc0f5b61110266b333151dc51725f433811be6bb57deac15e93622de.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/67facbf3cc0f5b61110266b333151dc51725f433811be6bb57deac15e93622de-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a7af539a4428471a135ba66e55b933800242925913da4573ada3446a43d20f4c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a7af539a4428471a135ba66e55b933800242925913da4573ada3446a43d20f4c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 87 534599', notes=NULL,
    public_notes='Auction 183', purchase_price=53.5,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='8027445-062',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/67facbf3cc0f5b61110266b333151dc51725f433811be6bb57deac15e93622de.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/67facbf3cc0f5b61110266b333151dc51725f433811be6bb57deac15e93622de-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a7af539a4428471a135ba66e55b933800242925913da4573ada3446a43d20f4c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a7af539a4428471a135ba66e55b933800242925913da4573ada3446a43d20f4c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 531241);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208059), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517979), 61751913,
     'UNC', 1, FALSE, 'BL 2708022 D',
     NULL, 'Auction 113', 16.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8fa5c7c7e80dd0c03d86b237e4c9b421d5ce7175bea3ee03f7671fdb7ddf76eb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8fa5c7c7e80dd0c03d86b237e4c9b421d5ce7175bea3ee03f7671fdb7ddf76eb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6761ee09e0bb80ec43811af0cd064a86578ff03dfbb3ab67d616bf5ec7c9a8ca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6761ee09e0bb80ec43811af0cd064a86578ff03dfbb3ab67d616bf5ec7c9a8ca-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BL 2708022 D', notes=NULL,
    public_notes='Auction 113', purchase_price=16.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8fa5c7c7e80dd0c03d86b237e4c9b421d5ce7175bea3ee03f7671fdb7ddf76eb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8fa5c7c7e80dd0c03d86b237e4c9b421d5ce7175bea3ee03f7671fdb7ddf76eb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6761ee09e0bb80ec43811af0cd064a86578ff03dfbb3ab67d616bf5ec7c9a8ca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6761ee09e0bb80ec43811af0cd064a86578ff03dfbb3ab67d616bf5ec7c9a8ca-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517979);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208059), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517979), 61751919,
     'UNC', 1, FALSE, 'BL 2708023 D',
     NULL, 'Auction 113', 16.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/fbc4e37a9246fddb1d187c74b66a7e60e10445b15ba08d0f52dfa84cb5bbabbd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fbc4e37a9246fddb1d187c74b66a7e60e10445b15ba08d0f52dfa84cb5bbabbd-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/144b1fcdb628f65a31e31cc0f4cbdc0b4f184a5098432b87d0a0306aa84a50ea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/144b1fcdb628f65a31e31cc0f4cbdc0b4f184a5098432b87d0a0306aa84a50ea-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BL 2708023 D', notes=NULL,
    public_notes='Auction 113', purchase_price=16.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/fbc4e37a9246fddb1d187c74b66a7e60e10445b15ba08d0f52dfa84cb5bbabbd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fbc4e37a9246fddb1d187c74b66a7e60e10445b15ba08d0f52dfa84cb5bbabbd-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/144b1fcdb628f65a31e31cc0f4cbdc0b4f184a5098432b87d0a0306aa84a50ea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/144b1fcdb628f65a31e31cc0f4cbdc0b4f184a5098432b87d0a0306aa84a50ea-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517979);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208060), (SELECT id FROM banknote_issues WHERE numista_issue_id = 517980), 51298296,
     'UNC', 1, FALSE, 'AB 1086839',
     NULL, NULL, 1.09, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 1086839', notes=NULL,
    public_notes=NULL, purchase_price=1.09,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 517980);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208100), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518168), 51298165,
     'UNC', 1, FALSE, 'CH 75419926',
     NULL, NULL, 1.14, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CH 75419926', notes=NULL,
    public_notes=NULL, purchase_price=1.14,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518168);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208103), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518190), 51298199,
     'UNC', 1, FALSE, 'DG 79423818',
     NULL, NULL, 1.04, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DG 79423818', notes=NULL,
    public_notes=NULL, purchase_price=1.04,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518190);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208155), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518355), 73760541,
     'UNC', 1, FALSE, '6256 U 0702',
     NULL, NULL, 99.05, 'EUR',
     'PMG', '64', '2268160-010',
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='6256 U 0702', notes=NULL,
    public_notes=NULL, purchase_price=99.05,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='2268160-010',
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518355);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208171), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518377), 60626961,
     'UNC', 1, FALSE, 'H208734464',
     NULL, NULL, 2.66, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/966008a70f0922f6cb5d081aa53ec53e189dcb6317cc1f6723578fb11e47e8f5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/966008a70f0922f6cb5d081aa53ec53e189dcb6317cc1f6723578fb11e47e8f5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/aa7993eb5eebaa43fcf9c4b2815ee4bbddf53648c85d8fd8662c8356c526bb69.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aa7993eb5eebaa43fcf9c4b2815ee4bbddf53648c85d8fd8662c8356c526bb69-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='H208734464', notes=NULL,
    public_notes=NULL, purchase_price=2.66,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/966008a70f0922f6cb5d081aa53ec53e189dcb6317cc1f6723578fb11e47e8f5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/966008a70f0922f6cb5d081aa53ec53e189dcb6317cc1f6723578fb11e47e8f5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/aa7993eb5eebaa43fcf9c4b2815ee4bbddf53648c85d8fd8662c8356c526bb69.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aa7993eb5eebaa43fcf9c4b2815ee4bbddf53648c85d8fd8662c8356c526bb69-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518377);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208199), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518460), 51233986,
     'UNC', 1, FALSE, 'A 4738030328 A',
     NULL, NULL, 1.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 4738030328 A', notes=NULL,
    public_notes=NULL, purchase_price=1.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518460);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208247), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518579), 51275988,
     'UNC', 1, FALSE, '5965547',
     NULL, NULL, 0.61, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='5965547', notes=NULL,
    public_notes=NULL, purchase_price=0.61,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518579);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208293), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518709), 51236730,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518709);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208316), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518736), 69703138,
     'UNC', 1, FALSE, '583542',
     NULL, 'Auction 102', 33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/76b94017edee8a329ae03db197bc55db0497d4f1682fb0207e6d39f9573ef095.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/76b94017edee8a329ae03db197bc55db0497d4f1682fb0207e6d39f9573ef095-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/022798f174ec64174bfe6636bf65afd3ee13da1a636ce1db0a0960d80109ace3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/022798f174ec64174bfe6636bf65afd3ee13da1a636ce1db0a0960d80109ace3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='583542', notes=NULL,
    public_notes='Auction 102', purchase_price=33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/76b94017edee8a329ae03db197bc55db0497d4f1682fb0207e6d39f9573ef095.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/76b94017edee8a329ae03db197bc55db0497d4f1682fb0207e6d39f9573ef095-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/022798f174ec64174bfe6636bf65afd3ee13da1a636ce1db0a0960d80109ace3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/022798f174ec64174bfe6636bf65afd3ee13da1a636ce1db0a0960d80109ace3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518736);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208335), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518779), 51275781,
     'UNC', 1, FALSE, '333 075617',
     NULL, NULL, 0.57, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='333 075617', notes=NULL,
    public_notes=NULL, purchase_price=0.57,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518779);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208341), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518802), 51232180,
     'UNC', 1, FALSE, 'FG 95499658',
     NULL, NULL, 1.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FG 95499658', notes=NULL,
    public_notes=NULL, purchase_price=1.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518802);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208375), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518891), 75168832,
     'UNC', 1, FALSE, 'MM 0382435',
     NULL, 'Auction 176', 67.11, 'EUR',
     'PCGS Banknote', '67', '1151503.67/46220165',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/13b819a9e76c86cb2381f24871f5a0b76c1a6585db97613bf88902fe40203cd1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/13b819a9e76c86cb2381f24871f5a0b76c1a6585db97613bf88902fe40203cd1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7b8fd21de5cef5c5576db06d1333fb9489e0c5ae49c961a6cc8e1053928a35a9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7b8fd21de5cef5c5576db06d1333fb9489e0c5ae49c961a6cc8e1053928a35a9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MM 0382435', notes=NULL,
    public_notes='Auction 176', purchase_price=67.11,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='67', cert_number='1151503.67/46220165',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/13b819a9e76c86cb2381f24871f5a0b76c1a6585db97613bf88902fe40203cd1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/13b819a9e76c86cb2381f24871f5a0b76c1a6585db97613bf88902fe40203cd1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7b8fd21de5cef5c5576db06d1333fb9489e0c5ae49c961a6cc8e1053928a35a9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7b8fd21de5cef5c5576db06d1333fb9489e0c5ae49c961a6cc8e1053928a35a9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518891);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208375), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518892), 75168927,
     'UNC', 1, FALSE, 'Y2K 06127',
     NULL, 'Auction 176', 67.11, 'EUR',
     'PCGS Banknote', '65', '783497.65/46220166',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/22a552d22612f3a31fa47b349b847d4c08866f79b43b17e45f9c063fe85ca74e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/22a552d22612f3a31fa47b349b847d4c08866f79b43b17e45f9c063fe85ca74e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6fcd6fa4ff9bdd957811330dadf4457e087e4487c5231da7b55ec9a5f471e213.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6fcd6fa4ff9bdd957811330dadf4457e087e4487c5231da7b55ec9a5f471e213-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Y2K 06127', notes=NULL,
    public_notes='Auction 176', purchase_price=67.11,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='65', cert_number='783497.65/46220166',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/22a552d22612f3a31fa47b349b847d4c08866f79b43b17e45f9c063fe85ca74e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/22a552d22612f3a31fa47b349b847d4c08866f79b43b17e45f9c063fe85ca74e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6fcd6fa4ff9bdd957811330dadf4457e087e4487c5231da7b55ec9a5f471e213.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6fcd6fa4ff9bdd957811330dadf4457e087e4487c5231da7b55ec9a5f471e213-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518892);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208407), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518962), 51236994,
     'VG', 1, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='VG', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518962);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208407), (SELECT id FROM banknote_issues WHERE numista_issue_id = 518963), 51236999,
     'VG', 2, FALSE, NULL,
     NULL, NULL, 0.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='VG', quantity=2, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 518963);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208461), (SELECT id FROM banknote_issues WHERE numista_issue_id = 519263), 60314077,
     'UNC', 1, FALSE, '3 a 080 422 432',
     NULL, 'Auction 107', 27.95, 'EUR',
     'PMG', '65', '1915368-055',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/6a3ab6f6ddf28f2766aedfc1cfc30eeeeee1a914ae3134eafc0b5a2cf2f779c6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6a3ab6f6ddf28f2766aedfc1cfc30eeeeee1a914ae3134eafc0b5a2cf2f779c6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ddcf4e511a4fe28a7a5347b37940afcd4115d78a71b51e02a3160d226ff4db77.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ddcf4e511a4fe28a7a5347b37940afcd4115d78a71b51e02a3160d226ff4db77-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='3 a 080 422 432', notes=NULL,
    public_notes='Auction 107', purchase_price=27.95,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1915368-055',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/6a3ab6f6ddf28f2766aedfc1cfc30eeeeee1a914ae3134eafc0b5a2cf2f779c6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6a3ab6f6ddf28f2766aedfc1cfc30eeeeee1a914ae3134eafc0b5a2cf2f779c6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ddcf4e511a4fe28a7a5347b37940afcd4115d78a71b51e02a3160d226ff4db77.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ddcf4e511a4fe28a7a5347b37940afcd4115d78a71b51e02a3160d226ff4db77-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 519263);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208467), (SELECT id FROM banknote_issues WHERE numista_issue_id = 519277), 51233668,
     'UNC', 1, FALSE, 'A 08867376',
     'The nominee for the “Bank Note of the Year Award” in 2015', NULL, 2.34, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 08867376', notes='The nominee for the “Bank Note of the Year Award” in 2015',
    public_notes=NULL, purchase_price=2.34,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 519277);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208470), (SELECT id FROM banknote_issues WHERE numista_issue_id = 519280), 51232874,
     'UNC', 1, FALSE, 'A 37934577',
     NULL, NULL, 4.04, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 37934577', notes=NULL,
    public_notes=NULL, purchase_price=4.04,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 519280);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208516), (SELECT id FROM banknote_issues WHERE numista_issue_id = 519374), 51232924,
     'UNC', 1, FALSE, 'AB 27040382',
     NULL, NULL, 2.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 27040382', notes=NULL,
    public_notes=NULL, purchase_price=2.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 519374);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208548), (SELECT id FROM banknote_issues WHERE numista_issue_id = 519461), 56105895,
     'UNC', 1, FALSE, 'BI 1012045',
     NULL, NULL, 4.06, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BI 1012045', notes=NULL,
    public_notes=NULL, purchase_price=4.06,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 519461);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208570), (SELECT id FROM banknote_issues WHERE numista_issue_id = 528659), 51232974,
     'UNC', 1, FALSE, 'AA 7463505',
     NULL, NULL, 3.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 7463505', notes=NULL,
    public_notes=NULL, purchase_price=3.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 528659);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208598), (SELECT id FROM banknote_issues WHERE numista_issue_id = 519578), 70287167,
     'UNC', 1, FALSE, '1101',
     NULL, 'Auction 155', 4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/64038fa541b04386c728caaa6f362c1fca62ff2f5baf391d2ac75cb46b2ba734.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/64038fa541b04386c728caaa6f362c1fca62ff2f5baf391d2ac75cb46b2ba734-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2528b2daba43d756a443021c3aff1105143d9fc62ae43b60537b62b7acc53290.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2528b2daba43d756a443021c3aff1105143d9fc62ae43b60537b62b7acc53290-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1101', notes=NULL,
    public_notes='Auction 155', purchase_price=4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/64038fa541b04386c728caaa6f362c1fca62ff2f5baf391d2ac75cb46b2ba734.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/64038fa541b04386c728caaa6f362c1fca62ff2f5baf391d2ac75cb46b2ba734-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2528b2daba43d756a443021c3aff1105143d9fc62ae43b60537b62b7acc53290.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2528b2daba43d756a443021c3aff1105143d9fc62ae43b60537b62b7acc53290-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 519578);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208761), (SELECT id FROM banknote_issues WHERE numista_issue_id = 519842), 51297483,
     'UNC', 1, FALSE, 'W/HY 417392',
     'The nominee for the “Bank Note of the Year Award” in 2017', NULL, 23.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='W/HY 417392', notes='The nominee for the “Bank Note of the Year Award” in 2017',
    public_notes=NULL, purchase_price=23.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 519842);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208838), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520267), 60625618,
     'UNC', 1, FALSE, 'LM 02084660',
     NULL, NULL, 1.91, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/76938beed7937d7295e68c60b8ceca616292c137baf066d83fadf4fb5b42805c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/76938beed7937d7295e68c60b8ceca616292c137baf066d83fadf4fb5b42805c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5512d858a8fa2920b42c6d681bddd0c9e4845f3990ddfddcdd90dbb423c1192d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5512d858a8fa2920b42c6d681bddd0c9e4845f3990ddfddcdd90dbb423c1192d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LM 02084660', notes=NULL,
    public_notes=NULL, purchase_price=1.91,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/76938beed7937d7295e68c60b8ceca616292c137baf066d83fadf4fb5b42805c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/76938beed7937d7295e68c60b8ceca616292c137baf066d83fadf4fb5b42805c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5512d858a8fa2920b42c6d681bddd0c9e4845f3990ddfddcdd90dbb423c1192d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5512d858a8fa2920b42c6d681bddd0c9e4845f3990ddfddcdd90dbb423c1192d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520267);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208853), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520203), 70287127,
     'UNC', 1, FALSE, '292',
     NULL, 'Auction 155', 5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e48a74a195b41eaf63c9371dc0626982a8aab6a89ab5a421cb1d6546f45ec97e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e48a74a195b41eaf63c9371dc0626982a8aab6a89ab5a421cb1d6546f45ec97e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9a2e59f89793203757d07b99cf55db770846f250326bf8938614e5de4343f893.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a2e59f89793203757d07b99cf55db770846f250326bf8938614e5de4343f893-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='292', notes=NULL,
    public_notes='Auction 155', purchase_price=5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e48a74a195b41eaf63c9371dc0626982a8aab6a89ab5a421cb1d6546f45ec97e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e48a74a195b41eaf63c9371dc0626982a8aab6a89ab5a421cb1d6546f45ec97e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9a2e59f89793203757d07b99cf55db770846f250326bf8938614e5de4343f893.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a2e59f89793203757d07b99cf55db770846f250326bf8938614e5de4343f893-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520203);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208857), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520238), 51232979,
     'UNC', 1, FALSE, 'AC 2460705',
     NULL, NULL, 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 2460705', notes=NULL,
    public_notes=NULL, purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520238);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208875), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520328), 51297994,
     'UNC', 1, FALSE, 'D21 6692086',
     NULL, NULL, 8.01, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D21 6692086', notes=NULL,
    public_notes=NULL, purchase_price=8.01,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520328);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208926), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520450), 70287421,
     'UNC', 1, FALSE, '1050286896',
     NULL, 'Auction 155', 27.64, 'EUR',
     'PCGS Banknote', NULL, '622641.67/45127895',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/eaa693e8e8d57adb9cadfa0de1080dfc05bef5ee9f872af6e89f7c1174fd1ec2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/eaa693e8e8d57adb9cadfa0de1080dfc05bef5ee9f872af6e89f7c1174fd1ec2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/518ba7c6fd723433228bee33a0f9e75fc7ed82c33714e72b0967bc150b367522.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/518ba7c6fd723433228bee33a0f9e75fc7ed82c33714e72b0967bc150b367522-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1050286896', notes=NULL,
    public_notes='Auction 155', purchase_price=27.64,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score=NULL, cert_number='622641.67/45127895',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/eaa693e8e8d57adb9cadfa0de1080dfc05bef5ee9f872af6e89f7c1174fd1ec2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/eaa693e8e8d57adb9cadfa0de1080dfc05bef5ee9f872af6e89f7c1174fd1ec2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/518ba7c6fd723433228bee33a0f9e75fc7ed82c33714e72b0967bc150b367522.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/518ba7c6fd723433228bee33a0f9e75fc7ed82c33714e72b0967bc150b367522-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520450);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 208932), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520462), 61751974,
     'UNC', 1, FALSE, 'MM 0199253',
     NULL, 'Auction 113', 25.04, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7e29a43c4657490d414ac6df871e1c02867a106ac61633d0a0247fa5082aa541.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7e29a43c4657490d414ac6df871e1c02867a106ac61633d0a0247fa5082aa541-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4e871d64a34558bfd4a6048869a2d92c8e07a378d6175c3c2f028c429b88b170.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4e871d64a34558bfd4a6048869a2d92c8e07a378d6175c3c2f028c429b88b170-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MM 0199253', notes=NULL,
    public_notes='Auction 113', purchase_price=25.04,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7e29a43c4657490d414ac6df871e1c02867a106ac61633d0a0247fa5082aa541.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7e29a43c4657490d414ac6df871e1c02867a106ac61633d0a0247fa5082aa541-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4e871d64a34558bfd4a6048869a2d92c8e07a378d6175c3c2f028c429b88b170.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4e871d64a34558bfd4a6048869a2d92c8e07a378d6175c3c2f028c429b88b170-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520462);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209000), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520581), 75513700,
     'UNC', 1, FALSE, 'DM 7307199 B',
     NULL, 'Auction 172', 44.54, 'EUR',
     'PMG', '66', '2431033-001',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8df260f4f0cfed4c8297ff87f8965cad8bc0d94764e44940cc0abac2438cf254.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8df260f4f0cfed4c8297ff87f8965cad8bc0d94764e44940cc0abac2438cf254-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/68213840b0dbb8865b8755ca8a9855c9dc5853dfc9574770a0e14249724393dc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/68213840b0dbb8865b8755ca8a9855c9dc5853dfc9574770a0e14249724393dc-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DM 7307199 B', notes=NULL,
    public_notes='Auction 172', purchase_price=44.54,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2431033-001',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8df260f4f0cfed4c8297ff87f8965cad8bc0d94764e44940cc0abac2438cf254.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8df260f4f0cfed4c8297ff87f8965cad8bc0d94764e44940cc0abac2438cf254-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/68213840b0dbb8865b8755ca8a9855c9dc5853dfc9574770a0e14249724393dc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/68213840b0dbb8865b8755ca8a9855c9dc5853dfc9574770a0e14249724393dc-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520581);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209022), (SELECT id FROM banknote_issues WHERE numista_issue_id = 522468), 76530921,
     'UNC', 1, FALSE, 'GT 000000',
     NULL, 'Pinholes', 9.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GT 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=9.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 522468);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209027), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520648), 56645845,
     'UNC', 1, FALSE, 'A 1124099',
     NULL, NULL, 9.57, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 1124099', notes=NULL,
    public_notes=NULL, purchase_price=9.57,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520648);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209077), (SELECT id FROM banknote_issues WHERE numista_issue_id = 520717), 69704479,
     'UNC', 1, FALSE, 'A/I 475019',
     NULL, 'Auction 115', 45, 'EUR',
     'PMG', '65', '1914516-018',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2b937be5975f727a108ef9deb6430dd271f3b5075b396dca8c982f94b2632d7a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2b937be5975f727a108ef9deb6430dd271f3b5075b396dca8c982f94b2632d7a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bd8582366a11c837d97b148bc148650cb57a62bbebe2248119dbabd3dfc85bb4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bd8582366a11c837d97b148bc148650cb57a62bbebe2248119dbabd3dfc85bb4-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/I 475019', notes=NULL,
    public_notes='Auction 115', purchase_price=45,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1914516-018',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2b937be5975f727a108ef9deb6430dd271f3b5075b396dca8c982f94b2632d7a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2b937be5975f727a108ef9deb6430dd271f3b5075b396dca8c982f94b2632d7a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bd8582366a11c837d97b148bc148650cb57a62bbebe2248119dbabd3dfc85bb4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bd8582366a11c837d97b148bc148650cb57a62bbebe2248119dbabd3dfc85bb4-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 520717);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209302), (SELECT id FROM banknote_issues WHERE numista_issue_id = 521357), 60313677,
     'AU', 1, FALSE, 'C499368',
     NULL, 'Auction 107', 16.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0ff08dfbd810cbb10c5d2d4d3a4d76a4cb63b317a5971ed9bd1b286a0397a76b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0ff08dfbd810cbb10c5d2d4d3a4d76a4cb63b317a5971ed9bd1b286a0397a76b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/fe0e0bad55a8833a39fe99d65cd28a2cf1375cdf079dc6ce5d803afbd23833f0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fe0e0bad55a8833a39fe99d65cd28a2cf1375cdf079dc6ce5d803afbd23833f0-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='C499368', notes=NULL,
    public_notes='Auction 107', purchase_price=16.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0ff08dfbd810cbb10c5d2d4d3a4d76a4cb63b317a5971ed9bd1b286a0397a76b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0ff08dfbd810cbb10c5d2d4d3a4d76a4cb63b317a5971ed9bd1b286a0397a76b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/fe0e0bad55a8833a39fe99d65cd28a2cf1375cdf079dc6ce5d803afbd23833f0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fe0e0bad55a8833a39fe99d65cd28a2cf1375cdf079dc6ce5d803afbd23833f0-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 521357);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209469), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532400), 60626537,
     'UNC', 1, FALSE, 'LS 06436585',
     NULL, NULL, 2.02, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e0618d3491ed844eea66f8367ddc01ba082d861c203c08f9490ff2c2787ee721.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e0618d3491ed844eea66f8367ddc01ba082d861c203c08f9490ff2c2787ee721-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bfc85ccfa72a15f9722495b3251b298db4fc45aedca651f4d6e3870f29cbccd8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bfc85ccfa72a15f9722495b3251b298db4fc45aedca651f4d6e3870f29cbccd8-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LS 06436585', notes=NULL,
    public_notes=NULL, purchase_price=2.02,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e0618d3491ed844eea66f8367ddc01ba082d861c203c08f9490ff2c2787ee721.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e0618d3491ed844eea66f8367ddc01ba082d861c203c08f9490ff2c2787ee721-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bfc85ccfa72a15f9722495b3251b298db4fc45aedca651f4d6e3870f29cbccd8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bfc85ccfa72a15f9722495b3251b298db4fc45aedca651f4d6e3870f29cbccd8-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532400);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209526), (SELECT id FROM banknote_issues WHERE numista_issue_id = 521782), 60777619,
     'UNC', 1, FALSE, 'B / 16 367510',
     NULL, 'Auction 111 - ACG 62 Uncirculated EPQ', 46.59, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f0e98cf20fd9cf0c31eb912e088d0de8f2e998b249235d4865d5ba625048dbad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f0e98cf20fd9cf0c31eb912e088d0de8f2e998b249235d4865d5ba625048dbad-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b681d0d92f4cef8a39596a117da30b5e08eaa8a76161244b0f74395b273f6971.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b681d0d92f4cef8a39596a117da30b5e08eaa8a76161244b0f74395b273f6971-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B / 16 367510', notes=NULL,
    public_notes='Auction 111 - ACG 62 Uncirculated EPQ', purchase_price=46.59,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f0e98cf20fd9cf0c31eb912e088d0de8f2e998b249235d4865d5ba625048dbad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f0e98cf20fd9cf0c31eb912e088d0de8f2e998b249235d4865d5ba625048dbad-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b681d0d92f4cef8a39596a117da30b5e08eaa8a76161244b0f74395b273f6971.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b681d0d92f4cef8a39596a117da30b5e08eaa8a76161244b0f74395b273f6971-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 521782);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209645), (SELECT id FROM banknote_issues WHERE numista_issue_id = 521943), 58870825,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f426bd093a40b7bbdfd55779443e20a0e05d570f17c71b59f36580c5382459ca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f426bd093a40b7bbdfd55779443e20a0e05d570f17c71b59f36580c5382459ca-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6bb8601413cc3a4e8fb0269f7d2591e158b5b1bef6fc18f2f19e975ffe4c1adc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6bb8601413cc3a4e8fb0269f7d2591e158b5b1bef6fc18f2f19e975ffe4c1adc-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f426bd093a40b7bbdfd55779443e20a0e05d570f17c71b59f36580c5382459ca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f426bd093a40b7bbdfd55779443e20a0e05d570f17c71b59f36580c5382459ca-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6bb8601413cc3a4e8fb0269f7d2591e158b5b1bef6fc18f2f19e975ffe4c1adc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6bb8601413cc3a4e8fb0269f7d2591e158b5b1bef6fc18f2f19e975ffe4c1adc-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 521943);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209797), (SELECT id FROM banknote_issues WHERE numista_issue_id = 522225), 51234087,
     'UNC', 1, FALSE, 'F 1286014769 C',
     NULL, NULL, 9.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F 1286014769 C', notes=NULL,
    public_notes=NULL, purchase_price=9.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 522225);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 209854), (SELECT id FROM banknote_issues WHERE numista_issue_id = 522574), 51233923,
     'UNC', 1, FALSE, 'A 0779067312 A',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 0779067312 A', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 522574);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210043), (SELECT id FROM banknote_issues WHERE numista_issue_id = 522955), 61239912,
     'UNC', 1, FALSE, 'J105074082',
     'The nominee for the “Bank Note of the Year Award” in 2018', NULL, 14.61, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/948668067f73ffddba03dddbbc011f48cd4bedd93ad45b02bd8533349688a827.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/948668067f73ffddba03dddbbc011f48cd4bedd93ad45b02bd8533349688a827-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J105074082', notes='The nominee for the “Bank Note of the Year Award” in 2018',
    public_notes=NULL, purchase_price=14.61,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/948668067f73ffddba03dddbbc011f48cd4bedd93ad45b02bd8533349688a827.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/948668067f73ffddba03dddbbc011f48cd4bedd93ad45b02bd8533349688a827-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 522955);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210045), (SELECT id FROM banknote_issues WHERE numista_issue_id = 522957), 61245153,
     'UNC', 1, FALSE, 'J 3282388126',
     'The nominee for the “Bank Note of the Year Award” in 2015', NULL, 34.85, 'EUR',
     'PMG', '66', NULL,
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d86a014b262ebd9e64839476d2e3b2cd38d32466653726706ea3399d1c3a5a37.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d86a014b262ebd9e64839476d2e3b2cd38d32466653726706ea3399d1c3a5a37-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J 3282388126', notes='The nominee for the “Bank Note of the Year Award” in 2015',
    public_notes=NULL, purchase_price=34.85,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number=NULL,
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d86a014b262ebd9e64839476d2e3b2cd38d32466653726706ea3399d1c3a5a37.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d86a014b262ebd9e64839476d2e3b2cd38d32466653726706ea3399d1c3a5a37-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 522957);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210126), (SELECT id FROM banknote_issues WHERE numista_issue_id = 523121), 77628370,
     'UNC', 1, FALSE, 'B 838372',
     NULL, 'Auction 183', 28.66, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/13d86415f8894097cf1173932615625c13ca37cda9aa2e28e09da5ea4ef7f250.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/13d86415f8894097cf1173932615625c13ca37cda9aa2e28e09da5ea4ef7f250-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d73a84f103b2ed0c97decbd4f3d1d0b5f195e63d753baeee02684994fddf03b9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d73a84f103b2ed0c97decbd4f3d1d0b5f195e63d753baeee02684994fddf03b9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 838372', notes=NULL,
    public_notes='Auction 183', purchase_price=28.66,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/13d86415f8894097cf1173932615625c13ca37cda9aa2e28e09da5ea4ef7f250.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/13d86415f8894097cf1173932615625c13ca37cda9aa2e28e09da5ea4ef7f250-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d73a84f103b2ed0c97decbd4f3d1d0b5f195e63d753baeee02684994fddf03b9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d73a84f103b2ed0c97decbd4f3d1d0b5f195e63d753baeee02684994fddf03b9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 523121);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210247), (SELECT id FROM banknote_issues WHERE numista_issue_id = 523419), 69704566,
     'UNC', 1, FALSE, 'M 4418956',
     NULL, 'Auction 115', 46, 'EUR',
     'PMG', '64', '2084604-091',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c311df822313ff5e77aac92e11e2093d34cf1913fb7efa807878117d7c6cc800.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c311df822313ff5e77aac92e11e2093d34cf1913fb7efa807878117d7c6cc800-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/46be6da74c4de05cc4f9da8cca2bcc7a4799c87389512b2ab03e7cf8e371b7ff.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/46be6da74c4de05cc4f9da8cca2bcc7a4799c87389512b2ab03e7cf8e371b7ff-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='M 4418956', notes=NULL,
    public_notes='Auction 115', purchase_price=46,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='2084604-091',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c311df822313ff5e77aac92e11e2093d34cf1913fb7efa807878117d7c6cc800.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c311df822313ff5e77aac92e11e2093d34cf1913fb7efa807878117d7c6cc800-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/46be6da74c4de05cc4f9da8cca2bcc7a4799c87389512b2ab03e7cf8e371b7ff.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/46be6da74c4de05cc4f9da8cca2bcc7a4799c87389512b2ab03e7cf8e371b7ff-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 523419);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210318), (SELECT id FROM banknote_issues WHERE numista_issue_id = 523646), 59827882,
     'UNC', 1, FALSE, '583542',
     NULL, NULL, 35.65, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a6efa4fdb485cf0e28a6341efe1bd7b1e4a8a9bfc34a303cc2c8fdf6e2f17637.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a6efa4fdb485cf0e28a6341efe1bd7b1e4a8a9bfc34a303cc2c8fdf6e2f17637-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5c5bde08fd8c9016489cabb43a8a1e4772880361206a95215c994b205bc42673.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5c5bde08fd8c9016489cabb43a8a1e4772880361206a95215c994b205bc42673-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='583542', notes=NULL,
    public_notes=NULL, purchase_price=35.65,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a6efa4fdb485cf0e28a6341efe1bd7b1e4a8a9bfc34a303cc2c8fdf6e2f17637.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a6efa4fdb485cf0e28a6341efe1bd7b1e4a8a9bfc34a303cc2c8fdf6e2f17637-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5c5bde08fd8c9016489cabb43a8a1e4772880361206a95215c994b205bc42673.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5c5bde08fd8c9016489cabb43a8a1e4772880361206a95215c994b205bc42673-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 523646);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210342), (SELECT id FROM banknote_issues WHERE numista_issue_id = 523690), 51615145,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 523690);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210421), (SELECT id FROM banknote_issues WHERE numista_issue_id = 523971), 51235282,
     'UNC', 1, FALSE, 'A/4 971481',
     NULL, NULL, 7.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/4 971481', notes=NULL,
    public_notes=NULL, purchase_price=7.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 523971);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210440), (SELECT id FROM banknote_issues WHERE numista_issue_id = 523993), 51235293,
     'XF', 1, FALSE, 'H/15 132297',
     NULL, NULL, 7.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='XF', quantity=1, for_trade=FALSE,
    serial_number='H/15 132297', notes=NULL,
    public_notes=NULL, purchase_price=7.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 523993);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210443), (SELECT id FROM banknote_issues WHERE numista_issue_id = 523997), 51235299,
     'XF', 1, FALSE, 'K/10 317005',
     NULL, NULL, 15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='XF', quantity=1, for_trade=FALSE,
    serial_number='K/10 317005', notes=NULL,
    public_notes=NULL, purchase_price=15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 523997);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210479), (SELECT id FROM banknote_issues WHERE numista_issue_id = 524058), 51234341,
     'UNC', 1, FALSE, '011354228 A',
     NULL, NULL, 7.62, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='011354228 A', notes=NULL,
    public_notes=NULL, purchase_price=7.62,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 524058);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210533), (SELECT id FROM banknote_issues WHERE numista_issue_id = 524163), 58134636,
     'UNC', 1, FALSE, 'CD 16564129',
     NULL, NULL, 16.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CD 16564129', notes=NULL,
    public_notes=NULL, purchase_price=16.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 524163);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210666), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534652), 51274655,
     'UNC', 1, FALSE, 'GE 9384346',
     NULL, NULL, 5.64, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GE 9384346', notes=NULL,
    public_notes=NULL, purchase_price=5.64,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534652);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210679), (SELECT id FROM banknote_issues WHERE numista_issue_id = 524419), 78342543,
     'UNC', 1, FALSE, 'C12 55066',
     NULL, 'Auction 189', 45.23, 'EUR',
     'PMG', '66', '1920805-009',
     '["EPQ"]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C12 55066', notes=NULL,
    public_notes='Auction 189', purchase_price=45.23,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1920805-009',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 524419);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210715), (SELECT id FROM banknote_issues WHERE numista_issue_id = 524503), 51234192,
     'UNC', 1, FALSE, 'AK 905131',
     NULL, NULL, 1.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AK 905131', notes=NULL,
    public_notes=NULL, purchase_price=1.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 524503);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210723), (SELECT id FROM banknote_issues WHERE numista_issue_id = 524512), 60306980,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 524512);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210726), (SELECT id FROM banknote_issues WHERE numista_issue_id = 524515), 60306974,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 524515);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210860), (SELECT id FROM banknote_issues WHERE numista_issue_id = 524790), 51235266,
     'UNC', 1, FALSE, 'BB 2411174',
     NULL, NULL, 2.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BB 2411174', notes=NULL,
    public_notes=NULL, purchase_price=2.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 524790);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210874), (SELECT id FROM banknote_issues WHERE numista_issue_id = 524979), 51233120,
     'UNC', 1, FALSE, 'C/4 949759',
     NULL, NULL, 10, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C/4 949759', notes=NULL,
    public_notes=NULL, purchase_price=10,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 524979);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210887), (SELECT id FROM banknote_issues WHERE numista_issue_id = 525132), 55950540,
     'UNC', 1, FALSE, 'X02 Y148264',
     'The nominee for the “Bank Note of the Year Award” in 2019', NULL, 6.02, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='X02 Y148264', notes='The nominee for the “Bank Note of the Year Award” in 2019',
    public_notes=NULL, purchase_price=6.02,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 525132);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210891), (SELECT id FROM banknote_issues WHERE numista_issue_id = 691403), 51233219,
     'UNC', 1, FALSE, '2/18 1403992',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='2/18 1403992', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 691403);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 210952), (SELECT id FROM banknote_issues WHERE numista_issue_id = 525298), 51233604,
     'UNC', 1, FALSE, 'W 2425953',
     NULL, NULL, 5.74, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='W 2425953', notes=NULL,
    public_notes=NULL, purchase_price=5.74,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 525298);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 211064), (SELECT id FROM banknote_issues WHERE numista_issue_id = 525510), 51297505,
     'UNC', 1, FALSE, 'EB 0655193',
     NULL, NULL, 4.23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EB 0655193', notes=NULL,
    public_notes=NULL, purchase_price=4.23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 525510);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 211536), (SELECT id FROM banknote_issues WHERE numista_issue_id = 526531), 70287538,
     'AU', 1, FALSE, 'C 478803 T',
     NULL, 'Auction 155', 27.64, 'EUR',
     'PMG', '58', '2126340-009',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/ad76b62eb19e97e911490a01f2a4b2bea63d7ce6a3f230823ee9ecd27e95cfcf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ad76b62eb19e97e911490a01f2a4b2bea63d7ce6a3f230823ee9ecd27e95cfcf-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8173453f6930320f396f7c4f25b94cb2a75f158b4ea065f869f6ad344782be10.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8173453f6930320f396f7c4f25b94cb2a75f158b4ea065f869f6ad344782be10-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='C 478803 T', notes=NULL,
    public_notes='Auction 155', purchase_price=27.64,
    price_currency='EUR', grading_company='PMG',
    grading_score='58', cert_number='2126340-009',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/ad76b62eb19e97e911490a01f2a4b2bea63d7ce6a3f230823ee9ecd27e95cfcf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ad76b62eb19e97e911490a01f2a4b2bea63d7ce6a3f230823ee9ecd27e95cfcf-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8173453f6930320f396f7c4f25b94cb2a75f158b4ea065f869f6ad344782be10.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8173453f6930320f396f7c4f25b94cb2a75f158b4ea065f869f6ad344782be10-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 526531);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 211537), (SELECT id FROM banknote_issues WHERE numista_issue_id = 526534), 51433140,
     'UNC', 1, FALSE, 'DE 9587655',
     NULL, NULL, 3.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DE 9587655', notes=NULL,
    public_notes=NULL, purchase_price=3.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 526534);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 211537), (SELECT id FROM banknote_issues WHERE numista_issue_id = 526534), 73584195,
     'UNC', 1, FALSE, 'DC 5179891',
     NULL, NULL, 3.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DC 5179891', notes=NULL,
    public_notes=NULL, purchase_price=3.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 526534);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 211545), (SELECT id FROM banknote_issues WHERE numista_issue_id = 526547), 51272613,
     'UNC', 1, FALSE, 'C 7096693 R',
     NULL, NULL, 3.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 7096693 R', notes=NULL,
    public_notes=NULL, purchase_price=3.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 526547);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 211571), (SELECT id FROM banknote_issues WHERE numista_issue_id = 526591), 51235258,
     'UNC', 1, FALSE, 'AD 2884844',
     NULL, NULL, 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AD 2884844', notes=NULL,
    public_notes=NULL, purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 526591);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 211582), (SELECT id FROM banknote_issues WHERE numista_issue_id = 526623), 51235478,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 49, 'UAH',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=49,
    price_currency='UAH', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 526623);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 211789), (SELECT id FROM banknote_issues WHERE numista_issue_id = 527543), 60312478,
     'XF', 1, FALSE, '3922',
     NULL, 'Auction 104', 14.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/451bc7010e991f53e8921ec766e534f24113bd8a88c13e9afaafd391e6b1b952.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/451bc7010e991f53e8921ec766e534f24113bd8a88c13e9afaafd391e6b1b952-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5e8bd57924dad1e2465cfebda50455ab117b3fbb7dd8a5729f739f74067051f7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5e8bd57924dad1e2465cfebda50455ab117b3fbb7dd8a5729f739f74067051f7-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='XF', quantity=1, for_trade=FALSE,
    serial_number='3922', notes=NULL,
    public_notes='Auction 104', purchase_price=14.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/451bc7010e991f53e8921ec766e534f24113bd8a88c13e9afaafd391e6b1b952.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/451bc7010e991f53e8921ec766e534f24113bd8a88c13e9afaafd391e6b1b952-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5e8bd57924dad1e2465cfebda50455ab117b3fbb7dd8a5729f739f74067051f7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5e8bd57924dad1e2465cfebda50455ab117b3fbb7dd8a5729f739f74067051f7-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 527543);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 211980), (SELECT id FROM banknote_issues WHERE numista_issue_id = 527529), 51433198,
     'UNC', 1, FALSE, 'CE 1471569',
     NULL, NULL, 10.64, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CE 1471569', notes=NULL,
    public_notes=NULL, purchase_price=10.64,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 527529);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212087), (SELECT id FROM banknote_issues WHERE numista_issue_id = 527710), 51298179,
     'UNC', 1, FALSE, 'GD 53626280',
     NULL, NULL, 3.15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GD 53626280', notes=NULL,
    public_notes=NULL, purchase_price=3.15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 527710);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212104), (SELECT id FROM banknote_issues WHERE numista_issue_id = 535413), 58854383,
     'UNC', 1, FALSE, 'X/I 3724185',
     NULL, 'Auction 97', 7.15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f693e78e6e3663ef41ecb967158d86a366bae6dab2dd23ecb187751b4a2d6145.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f693e78e6e3663ef41ecb967158d86a366bae6dab2dd23ecb187751b4a2d6145-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bc4aabccb67813955f0d27bca5c0e3e8716d322d0d44feaca2c2687b348ebf99.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bc4aabccb67813955f0d27bca5c0e3e8716d322d0d44feaca2c2687b348ebf99-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='X/I 3724185', notes=NULL,
    public_notes='Auction 97', purchase_price=7.15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f693e78e6e3663ef41ecb967158d86a366bae6dab2dd23ecb187751b4a2d6145.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f693e78e6e3663ef41ecb967158d86a366bae6dab2dd23ecb187751b4a2d6145-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bc4aabccb67813955f0d27bca5c0e3e8716d322d0d44feaca2c2687b348ebf99.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bc4aabccb67813955f0d27bca5c0e3e8716d322d0d44feaca2c2687b348ebf99-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 535413);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212104), (SELECT id FROM banknote_issues WHERE numista_issue_id = 535413), 58854394,
     'UNC', 1, FALSE, 'A/2 0073105',
     NULL, 'Auction 97', 7.15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5b082394d6416a9674836199230f797aa9a9426af3d11dfd3152fbc8b9ee7f15.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5b082394d6416a9674836199230f797aa9a9426af3d11dfd3152fbc8b9ee7f15-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0ac047b6e61f550700e6afd7d070c7683ae3432cb8d52d29c3d03bf754010ec7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0ac047b6e61f550700e6afd7d070c7683ae3432cb8d52d29c3d03bf754010ec7-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/2 0073105', notes=NULL,
    public_notes='Auction 97', purchase_price=7.15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5b082394d6416a9674836199230f797aa9a9426af3d11dfd3152fbc8b9ee7f15.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5b082394d6416a9674836199230f797aa9a9426af3d11dfd3152fbc8b9ee7f15-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0ac047b6e61f550700e6afd7d070c7683ae3432cb8d52d29c3d03bf754010ec7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0ac047b6e61f550700e6afd7d070c7683ae3432cb8d52d29c3d03bf754010ec7-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 535413);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212165), (SELECT id FROM banknote_issues WHERE numista_issue_id = 527913), 51236816,
     'VG', 2, FALSE, NULL,
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='VG', quantity=2, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 527913);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212177), (SELECT id FROM banknote_issues WHERE numista_issue_id = 527942), 51297630,
     'UNC', 1, FALSE, 'C 2137081',
     NULL, NULL, 20.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 2137081', notes=NULL,
    public_notes=NULL, purchase_price=20.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 527942);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212210), (SELECT id FROM banknote_issues WHERE numista_issue_id = 527983), 51275434,
     'UNC', 1, FALSE, 'AC 1741307 I',
     NULL, NULL, 2.02, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 1741307 I', notes=NULL,
    public_notes=NULL, purchase_price=2.02,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 527983);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212492), (SELECT id FROM banknote_issues WHERE numista_issue_id = 579641), 60312209,
     'UNC', 1, FALSE, 'B 03558845',
     NULL, 'Auction 104', 17.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e71cd51d9e28da415f6f689b111832f1a48f5aa0ec9c469c8fea5b8f4a1e3f26.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e71cd51d9e28da415f6f689b111832f1a48f5aa0ec9c469c8fea5b8f4a1e3f26-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5cdb73fe9705053974612f538833a08d21fbf37a9570cee1f1a5f92b21e2ab16.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5cdb73fe9705053974612f538833a08d21fbf37a9570cee1f1a5f92b21e2ab16-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 03558845', notes=NULL,
    public_notes='Auction 104', purchase_price=17.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e71cd51d9e28da415f6f689b111832f1a48f5aa0ec9c469c8fea5b8f4a1e3f26.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e71cd51d9e28da415f6f689b111832f1a48f5aa0ec9c469c8fea5b8f4a1e3f26-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5cdb73fe9705053974612f538833a08d21fbf37a9570cee1f1a5f92b21e2ab16.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5cdb73fe9705053974612f538833a08d21fbf37a9570cee1f1a5f92b21e2ab16-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 579641);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212590), (SELECT id FROM banknote_issues WHERE numista_issue_id = 528681), 51234108,
     'UNC', 1, FALSE, 'A 3990009340 C',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 3990009340 C', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 528681);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212656), (SELECT id FROM banknote_issues WHERE numista_issue_id = 528870), 51234074,
     'UNC', 1, FALSE, 'C 0001063830 C',
     NULL, NULL, 4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 0001063830 C', notes=NULL,
    public_notes=NULL, purchase_price=4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 528870);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212790), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529092), 51733387,
     'UNC', 1, FALSE, 'CC 277250',
     NULL, NULL, 17.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CC 277250', notes=NULL,
    public_notes=NULL, purchase_price=17.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529092);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212790), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529092), 76530797,
     'UNC', 1, FALSE, 'ZC 174238',
     NULL, NULL, 5.44, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ZC 174238', notes=NULL,
    public_notes=NULL, purchase_price=5.44,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529092);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212790), (SELECT id FROM banknote_issues WHERE numista_issue_id = 912545), 76530804,
     'UNC', 1, FALSE, 'CA 000000',
     NULL, 'Pinholes', 4.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CA 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=4.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 912545);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212793), (SELECT id FROM banknote_issues WHERE numista_issue_id = 765677), 76530643,
     'UNC', 1, FALSE, 'EA 000000',
     NULL, 'Pinholes', 10.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EA 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=10.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 765677);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212793), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529095), 76530660,
     'UNC', 1, FALSE, 'EF 449691',
     NULL, NULL, 10.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EF 449691', notes=NULL,
    public_notes=NULL, purchase_price=10.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529095);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212798), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529113), 60624988,
     'AU', 1, FALSE, '11-B 824400',
     NULL, NULL, 7.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4ea2566f46e391d5662104fd8f86c4ffcd398b7a0f143365ecf57ed27b18c743.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4ea2566f46e391d5662104fd8f86c4ffcd398b7a0f143365ecf57ed27b18c743-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/853975f14c8f97893b7a8d41da72b7d4b4ed23ce8678410752caf28d93fe4d69.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/853975f14c8f97893b7a8d41da72b7d4b4ed23ce8678410752caf28d93fe4d69-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='11-B 824400', notes=NULL,
    public_notes=NULL, purchase_price=7.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4ea2566f46e391d5662104fd8f86c4ffcd398b7a0f143365ecf57ed27b18c743.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4ea2566f46e391d5662104fd8f86c4ffcd398b7a0f143365ecf57ed27b18c743-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/853975f14c8f97893b7a8d41da72b7d4b4ed23ce8678410752caf28d93fe4d69.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/853975f14c8f97893b7a8d41da72b7d4b4ed23ce8678410752caf28d93fe4d69-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529113);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212854), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529263), 75513663,
     'UNC', 1, FALSE, 'TH/351 106132',
     NULL, 'Auction 172', 39.57, 'EUR',
     'PMG', '66', '2431029-012',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/10f385d594b10a219b34c64ea7193fd7326f9c5366fbfa46e708768e2c37392c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/10f385d594b10a219b34c64ea7193fd7326f9c5366fbfa46e708768e2c37392c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1040d6b49938026b7c056539833de70b1477db6fa9697a0322f92a28b612bab8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1040d6b49938026b7c056539833de70b1477db6fa9697a0322f92a28b612bab8-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='TH/351 106132', notes=NULL,
    public_notes='Auction 172', purchase_price=39.57,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2431029-012',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/10f385d594b10a219b34c64ea7193fd7326f9c5366fbfa46e708768e2c37392c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/10f385d594b10a219b34c64ea7193fd7326f9c5366fbfa46e708768e2c37392c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1040d6b49938026b7c056539833de70b1477db6fa9697a0322f92a28b612bab8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1040d6b49938026b7c056539833de70b1477db6fa9697a0322f92a28b612bab8-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529263);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212897), (SELECT id FROM banknote_issues WHERE numista_issue_id = 535878), 51235396,
     'UNC', 1, FALSE, 'K/218 559659',
     NULL, NULL, NULL, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='K/218 559659', notes=NULL,
    public_notes=NULL, purchase_price=NULL,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 535878);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212902), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529404), 76530324,
     'UNC', 1, FALSE, 'JA 447331',
     NULL, NULL, 54.41, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='JA 447331', notes=NULL,
    public_notes=NULL, purchase_price=54.41,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529404);

END $$;