-- migration_006i_collection.sql
-- Rows 901–976 of 976
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
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 357153), (SELECT id FROM banknote_issues WHERE numista_issue_id = 773247), 55950410,
     'UNC', 1, FALSE, 'ЗС 0287274',
     NULL, NULL, 5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ЗС 0287274', notes=NULL,
    public_notes=NULL, purchase_price=5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 773247);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 362935), (SELECT id FROM banknote_issues WHERE numista_issue_id = 783140), 60787083,
     'XF', 1, FALSE, '362935',
     NULL, 'Auction 111', 19.67, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d9e4599bc37d2991189cd9526d1436bb23c05037a38483a3cc94e989c7489220.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d9e4599bc37d2991189cd9526d1436bb23c05037a38483a3cc94e989c7489220-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a673cf856059df55f8b4912fbb9d001351b9159bd1baa8d874515aec80319093.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a673cf856059df55f8b4912fbb9d001351b9159bd1baa8d874515aec80319093-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='XF', quantity=1, for_trade=FALSE,
    serial_number='362935', notes=NULL,
    public_notes='Auction 111', purchase_price=19.67,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d9e4599bc37d2991189cd9526d1436bb23c05037a38483a3cc94e989c7489220.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d9e4599bc37d2991189cd9526d1436bb23c05037a38483a3cc94e989c7489220-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a673cf856059df55f8b4912fbb9d001351b9159bd1baa8d874515aec80319093.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a673cf856059df55f8b4912fbb9d001351b9159bd1baa8d874515aec80319093-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 783140);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 365097), (SELECT id FROM banknote_issues WHERE numista_issue_id = 786586), 58134510,
     'UNC', 1, FALSE, 'AB 61757788',
     NULL, NULL, 2.02, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 61757788', notes=NULL,
    public_notes=NULL, purchase_price=2.02,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 786586);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 365097), (SELECT id FROM banknote_issues WHERE numista_issue_id = 786586), 60313003,
     'UNC', 1, FALSE, 'AB 69933393 A',
     NULL, 'Auction 104', 2.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/cf58576faabfdaaa585851a6946b45f3f94f4c0d0a6b3b16c69937c6b2a49f3e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cf58576faabfdaaa585851a6946b45f3f94f4c0d0a6b3b16c69937c6b2a49f3e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a7091ce2aaffba046f282a7c4aa3e076615163b060ac68c815db71df807cdc27.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a7091ce2aaffba046f282a7c4aa3e076615163b060ac68c815db71df807cdc27-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 69933393 A', notes=NULL,
    public_notes='Auction 104', purchase_price=2.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/cf58576faabfdaaa585851a6946b45f3f94f4c0d0a6b3b16c69937c6b2a49f3e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cf58576faabfdaaa585851a6946b45f3f94f4c0d0a6b3b16c69937c6b2a49f3e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a7091ce2aaffba046f282a7c4aa3e076615163b060ac68c815db71df807cdc27.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a7091ce2aaffba046f282a7c4aa3e076615163b060ac68c815db71df807cdc27-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 786586);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 365097), (SELECT id FROM banknote_issues WHERE numista_issue_id = 786586), 60313009,
     'UNC', 1, FALSE, 'AB 69933394 A',
     NULL, 'Auction 104', 2.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2df58877e9fed8d42e2ffd5f60e597c19789a10b4440fdad927b1342662f861c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2df58877e9fed8d42e2ffd5f60e597c19789a10b4440fdad927b1342662f861c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/81ee4d4800179eaea895ae43129985efa87de8e509ec2cf742fdb90022431f71.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/81ee4d4800179eaea895ae43129985efa87de8e509ec2cf742fdb90022431f71-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 69933394 A', notes=NULL,
    public_notes='Auction 104', purchase_price=2.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2df58877e9fed8d42e2ffd5f60e597c19789a10b4440fdad927b1342662f861c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2df58877e9fed8d42e2ffd5f60e597c19789a10b4440fdad927b1342662f861c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/81ee4d4800179eaea895ae43129985efa87de8e509ec2cf742fdb90022431f71.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/81ee4d4800179eaea895ae43129985efa87de8e509ec2cf742fdb90022431f71-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 786586);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 365097), (SELECT id FROM banknote_issues WHERE numista_issue_id = 786586), 60313017,
     'UNC', 1, FALSE, 'AB 69933395 A',
     NULL, 'Auction 104', 2.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/be5be5a753091cc9fa417b8c3029f6c8008a0b3ca21a8609300312f760b353b0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/be5be5a753091cc9fa417b8c3029f6c8008a0b3ca21a8609300312f760b353b0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7b1a1012520c3dd709c3e0ecef5ffd00c19c8870d62b36d36a2b31d63e2cd758.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7b1a1012520c3dd709c3e0ecef5ffd00c19c8870d62b36d36a2b31d63e2cd758-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 69933395 A', notes=NULL,
    public_notes='Auction 104', purchase_price=2.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/be5be5a753091cc9fa417b8c3029f6c8008a0b3ca21a8609300312f760b353b0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/be5be5a753091cc9fa417b8c3029f6c8008a0b3ca21a8609300312f760b353b0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7b1a1012520c3dd709c3e0ecef5ffd00c19c8870d62b36d36a2b31d63e2cd758.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7b1a1012520c3dd709c3e0ecef5ffd00c19c8870d62b36d36a2b31d63e2cd758-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 786586);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 365097), (SELECT id FROM banknote_issues WHERE numista_issue_id = 786586), 60313020,
     'UNC', 1, FALSE, 'AB 69933396 A',
     NULL, 'Auction 104', 2.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a2fc7400b3f34e24356ea4e0f9501bc7290391eb2316a1e64784fe1628b758cb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2fc7400b3f34e24356ea4e0f9501bc7290391eb2316a1e64784fe1628b758cb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5e69729d1c5f97842068eca9a653a11ab8ea6743a0bd569eecad77e226f75a74.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5e69729d1c5f97842068eca9a653a11ab8ea6743a0bd569eecad77e226f75a74-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 69933396 A', notes=NULL,
    public_notes='Auction 104', purchase_price=2.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a2fc7400b3f34e24356ea4e0f9501bc7290391eb2316a1e64784fe1628b758cb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2fc7400b3f34e24356ea4e0f9501bc7290391eb2316a1e64784fe1628b758cb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5e69729d1c5f97842068eca9a653a11ab8ea6743a0bd569eecad77e226f75a74.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5e69729d1c5f97842068eca9a653a11ab8ea6743a0bd569eecad77e226f75a74-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 786586);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 365097), (SELECT id FROM banknote_issues WHERE numista_issue_id = 786586), 60313029,
     'UNC', 1, FALSE, 'AB 69933397 A',
     NULL, 'Auction 104', 2.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1aa7dc9d43959971225f6098c664902eb97dd73117dcf596be2526d67d492ada.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1aa7dc9d43959971225f6098c664902eb97dd73117dcf596be2526d67d492ada-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d001d836aaabeac0df05e8d36d31d9f47157e674ee4ce406f2ee836ea8a166c1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d001d836aaabeac0df05e8d36d31d9f47157e674ee4ce406f2ee836ea8a166c1-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 69933397 A', notes=NULL,
    public_notes='Auction 104', purchase_price=2.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1aa7dc9d43959971225f6098c664902eb97dd73117dcf596be2526d67d492ada.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1aa7dc9d43959971225f6098c664902eb97dd73117dcf596be2526d67d492ada-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d001d836aaabeac0df05e8d36d31d9f47157e674ee4ce406f2ee836ea8a166c1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d001d836aaabeac0df05e8d36d31d9f47157e674ee4ce406f2ee836ea8a166c1-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 786586);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 365101), (SELECT id FROM banknote_issues WHERE numista_issue_id = 786590), 70287472,
     'UNC', 1, FALSE, 'AC 32135291 B',
     NULL, 'Auction 155', 31.37, 'EUR',
     'PMG', '66', '2362429-082',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9f90e0cf5727095df9cb0aa12401de2878707f9b5501feb85ceb9cdaef0cdb65.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9f90e0cf5727095df9cb0aa12401de2878707f9b5501feb85ceb9cdaef0cdb65-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a7d474eb3f3f8afba0c44f99e9a3aa10d70543d5be63ae8d0fa63cc09ae83537.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a7d474eb3f3f8afba0c44f99e9a3aa10d70543d5be63ae8d0fa63cc09ae83537-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 32135291 B', notes=NULL,
    public_notes='Auction 155', purchase_price=31.37,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2362429-082',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9f90e0cf5727095df9cb0aa12401de2878707f9b5501feb85ceb9cdaef0cdb65.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9f90e0cf5727095df9cb0aa12401de2878707f9b5501feb85ceb9cdaef0cdb65-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a7d474eb3f3f8afba0c44f99e9a3aa10d70543d5be63ae8d0fa63cc09ae83537.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a7d474eb3f3f8afba0c44f99e9a3aa10d70543d5be63ae8d0fa63cc09ae83537-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 786590);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 365103), (SELECT id FROM banknote_issues WHERE numista_issue_id = 786592), 73563714,
     'UNC', 1, FALSE, 'AC 53202112 C',
     'The nominee for the “Bank Note of the Year Award” in 2023', NULL, 9.35, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 53202112 C', notes='The nominee for the “Bank Note of the Year Award” in 2023',
    public_notes=NULL, purchase_price=9.35,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 786592);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 366923), (SELECT id FROM banknote_issues WHERE numista_issue_id = 789510), 58134664,
     'UNC', 1, FALSE, '26788348 B',
     'The nominee for the “Bank Note of the Year Award” in 2023', NULL, 7.64, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='26788348 B', notes='The nominee for the “Bank Note of the Year Award” in 2023',
    public_notes=NULL, purchase_price=7.64,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 789510);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 366923), (SELECT id FROM banknote_issues WHERE numista_issue_id = 789510), 73564186,
     'UNC', 1, FALSE, '39135254 B',
     'The nominee for the “Bank Note of the Year Award” in 2023', NULL, 17.16, 'EUR',
     'PMG', '64', '2373031-077',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1ce2e49d2503e2c6d76fc35062e6d7b43e15cb6d055e912ec78398f22f90d87c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1ce2e49d2503e2c6d76fc35062e6d7b43e15cb6d055e912ec78398f22f90d87c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9e3577f8e30ec3fd60e201fd730db1b618dbd3d0375b544ae7b3ae98d50e2aa3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9e3577f8e30ec3fd60e201fd730db1b618dbd3d0375b544ae7b3ae98d50e2aa3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='39135254 B', notes='The nominee for the “Bank Note of the Year Award” in 2023',
    public_notes=NULL, purchase_price=17.16,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='2373031-077',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1ce2e49d2503e2c6d76fc35062e6d7b43e15cb6d055e912ec78398f22f90d87c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1ce2e49d2503e2c6d76fc35062e6d7b43e15cb6d055e912ec78398f22f90d87c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9e3577f8e30ec3fd60e201fd730db1b618dbd3d0375b544ae7b3ae98d50e2aa3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9e3577f8e30ec3fd60e201fd730db1b618dbd3d0375b544ae7b3ae98d50e2aa3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 789510);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 367021), (SELECT id FROM banknote_issues WHERE numista_issue_id = 789712), 51733799,
     'UNC', 1, FALSE, 'BK 670719',
     NULL, NULL, 0.37, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BK 670719', notes=NULL,
    public_notes=NULL, purchase_price=0.37,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 789712);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 367517), (SELECT id FROM banknote_issues WHERE numista_issue_id = 790546), 73563642,
     'UNC', 1, FALSE, 'SI/23 015099',
     'The nominee for the “Bank Note of the Year Award” in 2023', NULL, 3.86, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='SI/23 015099', notes='The nominee for the “Bank Note of the Year Award” in 2023',
    public_notes=NULL, purchase_price=3.86,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 790546);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 369460), (SELECT id FROM banknote_issues WHERE numista_issue_id = 794220), 51526371,
     'UNC', 1, FALSE, 'KX7406351',
     NULL, NULL, 1.94, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='KX7406351', notes=NULL,
    public_notes=NULL, purchase_price=1.94,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 794220);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 370853), (SELECT id FROM banknote_issues WHERE numista_issue_id = 835060), 73563257,
     'UNC', 1, FALSE, 'Z 5187537',
     'The nominee for the “Bank Note of the Year Award” in 2023', NULL, 0.86, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Z 5187537', notes='The nominee for the “Bank Note of the Year Award” in 2023',
    public_notes=NULL, purchase_price=0.86,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 835060);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 372606), (SELECT id FROM banknote_issues WHERE numista_issue_id = 799123), 73561857,
     'UNC', 1, FALSE, 'E5810769',
     NULL, NULL, 2.58, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E5810769', notes=NULL,
    public_notes=NULL, purchase_price=2.58,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 799123);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 373808), (SELECT id FROM banknote_issues WHERE numista_issue_id = 801327), 58134467,
     'UNC', 1, FALSE, 'CB 19760448',
     NULL, NULL, 12.77, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CB 19760448', notes=NULL,
    public_notes=NULL, purchase_price=12.77,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 801327);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 385520), (SELECT id FROM banknote_issues WHERE numista_issue_id = 819946), 73561129,
     'UNC', 1, FALSE, 'AA412815MQ',
     'The nominee for the “Bank Note of the Year Award” in 2024', NULL, 9.91, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA412815MQ', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes=NULL, purchase_price=9.91,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 819946);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 386522), (SELECT id FROM banknote_issues WHERE numista_issue_id = 821238), 73561809,
     'UNC', 1, FALSE, 'E38354613',
     NULL, NULL, 5.15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E38354613', notes=NULL,
    public_notes=NULL, purchase_price=5.15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 821238);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 388977), (SELECT id FROM banknote_issues WHERE numista_issue_id = 824802), 61245006,
     'UNC', 1, FALSE, 'AB 567201',
     'The winner of the “Bank Note of the Year Award” for 2023', NULL, 5.41, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 567201', notes='The winner of the “Bank Note of the Year Award” for 2023',
    public_notes=NULL, purchase_price=5.41,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 824802);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 393958), (SELECT id FROM banknote_issues WHERE numista_issue_id = 833380), 61245050,
     'UNC', 1, FALSE, 'AA 0085368',
     NULL, NULL, 5.19, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9b8411bcfe88408e2ef288faee5674051d48be0dc801628592a68f42f6a47c0b.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9b8411bcfe88408e2ef288faee5674051d48be0dc801628592a68f42f6a47c0b-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 0085368', notes=NULL,
    public_notes=NULL, purchase_price=5.19,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9b8411bcfe88408e2ef288faee5674051d48be0dc801628592a68f42f6a47c0b.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9b8411bcfe88408e2ef288faee5674051d48be0dc801628592a68f42f6a47c0b-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 833380);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 394749), (SELECT id FROM banknote_issues WHERE numista_issue_id = 834546), 61244796,
     'UNC', 1, FALSE, 'J061891897',
     'The nominee for the “Bank Note of the Year Award” in 2024', NULL, 11.47, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4b725c040e9b18008870938c24530c3ee433b0fcf2e3eab67605e3d8da5994b5.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4b725c040e9b18008870938c24530c3ee433b0fcf2e3eab67605e3d8da5994b5-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J061891897', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes=NULL, purchase_price=11.47,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4b725c040e9b18008870938c24530c3ee433b0fcf2e3eab67605e3d8da5994b5.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4b725c040e9b18008870938c24530c3ee433b0fcf2e3eab67605e3d8da5994b5-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 834546);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 396840), (SELECT id FROM banknote_issues WHERE numista_issue_id = 837402), 51272380,
     'UNC', 1, FALSE, '201 N 0796549',
     NULL, NULL, 0.71, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='201 N 0796549', notes=NULL,
    public_notes=NULL, purchase_price=0.71,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 837402);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 396843), (SELECT id FROM banknote_issues WHERE numista_issue_id = 837410), 51271905,
     'UNC', 1, FALSE, '207 H 1168006',
     NULL, NULL, 3.71, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='207 H 1168006', notes=NULL,
    public_notes=NULL, purchase_price=3.71,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 837410);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 397454), (SELECT id FROM banknote_issues WHERE numista_issue_id = 838279), 73563522,
     'UNC', 1, FALSE, 'CC 0005559',
     'The nominee for the “Bank Note of the Year Award” in 2024', NULL, 14.25, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CC 0005559', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes=NULL, purchase_price=14.25,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 838279);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 400595), (SELECT id FROM banknote_issues WHERE numista_issue_id = 842638), 73562207,
     'UNC', 1, FALSE, 'AB623438',
     NULL, NULL, 2.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB623438', notes=NULL,
    public_notes=NULL, purchase_price=2.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 842638);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 400597), (SELECT id FROM banknote_issues WHERE numista_issue_id = 842641), 73562240,
     'UNC', 1, FALSE, 'AA097423',
     NULL, NULL, 2.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA097423', notes=NULL,
    public_notes=NULL, purchase_price=2.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 842641);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 400603), (SELECT id FROM banknote_issues WHERE numista_issue_id = 842647), 73562173,
     'UNC', 1, FALSE, 'AM 585875',
     NULL, NULL, 2.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AM 585875', notes=NULL,
    public_notes=NULL, purchase_price=2.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 842647);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 400604), (SELECT id FROM banknote_issues WHERE numista_issue_id = 842648), 73562145,
     'UNC', 1, FALSE, 'AL 770370',
     'The nominee for the “Bank Note of the Year Award” in 2024', NULL, 2.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AL 770370', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes=NULL, purchase_price=2.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 842648);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 414108), (SELECT id FROM banknote_issues WHERE numista_issue_id = 861546), 73561785,
     'UNC', 1, FALSE, 'A01386221',
     'The nominee for the “Bank Note of the Year Award” in 2024', NULL, 17.17, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A01386221', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes=NULL, purchase_price=17.17,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 861546);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 422155), (SELECT id FROM banknote_issues WHERE numista_issue_id = 874891), 73561311,
     'UNC', 1, FALSE, 'AA 10870241',
     NULL, NULL, 1.62, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 10870241', notes=NULL,
    public_notes=NULL, purchase_price=1.62,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 874891);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 422155), (SELECT id FROM banknote_issues WHERE numista_issue_id = 874891), 75169312,
     'UNC', 1, FALSE, 'AA 02051437',
     NULL, NULL, 2.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 02051437', notes=NULL,
    public_notes=NULL, purchase_price=2.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 874891);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 422160), (SELECT id FROM banknote_issues WHERE numista_issue_id = 874896), 73561344,
     'UNC', 1, FALSE, 'BA 18359145',
     'The nominee for the “Bank Note of the Year Award” in 2024', NULL, 1.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BA 18359145', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes=NULL, purchase_price=1.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 874896);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 422160), (SELECT id FROM banknote_issues WHERE numista_issue_id = 874896), 75169353,
     'UNC', 1, FALSE, 'BA 18056034',
     'The nominee for the “Bank Note of the Year Award” in 2024', 'Auction 176', 3.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0555916c7392cc66837803c86c19813c46baa93a9cdd1bfbd4dc3b5c0e22696a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0555916c7392cc66837803c86c19813c46baa93a9cdd1bfbd4dc3b5c0e22696a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f2d13377227a3a287642c22c2eaf38fc4fa1759277ad8c1852d99b7b404dfdb2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f2d13377227a3a287642c22c2eaf38fc4fa1759277ad8c1852d99b7b404dfdb2-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BA 18056034', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes='Auction 176', purchase_price=3.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0555916c7392cc66837803c86c19813c46baa93a9cdd1bfbd4dc3b5c0e22696a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0555916c7392cc66837803c86c19813c46baa93a9cdd1bfbd4dc3b5c0e22696a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f2d13377227a3a287642c22c2eaf38fc4fa1759277ad8c1852d99b7b404dfdb2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f2d13377227a3a287642c22c2eaf38fc4fa1759277ad8c1852d99b7b404dfdb2-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 874896);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 422177), (SELECT id FROM banknote_issues WHERE numista_issue_id = 874916), 75169280,
     'UNC', 1, FALSE, 'CA 10114613',
     NULL, 'Auction 176', 6.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f75dd23f8687706193464d13a14b02fca0788a283828db9f348f1fe89ed87f49.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f75dd23f8687706193464d13a14b02fca0788a283828db9f348f1fe89ed87f49-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2183a2d607c16b798309fcb2772d5271f71de71980bae222ea4b3cf26542a0f2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2183a2d607c16b798309fcb2772d5271f71de71980bae222ea4b3cf26542a0f2-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CA 10114613', notes=NULL,
    public_notes='Auction 176', purchase_price=6.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f75dd23f8687706193464d13a14b02fca0788a283828db9f348f1fe89ed87f49.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f75dd23f8687706193464d13a14b02fca0788a283828db9f348f1fe89ed87f49-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2183a2d607c16b798309fcb2772d5271f71de71980bae222ea4b3cf26542a0f2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2183a2d607c16b798309fcb2772d5271f71de71980bae222ea4b3cf26542a0f2-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 874916);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 425299), (SELECT id FROM banknote_issues WHERE numista_issue_id = 880805), 75169161,
     'UNC', 1, FALSE, 'FA 10969170',
     NULL, 'Auction 176', 32, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/59192c2f084849a1ce00c546fac5895c75d95b054b81f9e6bca330177fa9966b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/59192c2f084849a1ce00c546fac5895c75d95b054b81f9e6bca330177fa9966b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/039d955f59f013d4c6bfc95ec48c79afd176eb8a11bc63dc8a35563058396715.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/039d955f59f013d4c6bfc95ec48c79afd176eb8a11bc63dc8a35563058396715-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FA 10969170', notes=NULL,
    public_notes='Auction 176', purchase_price=32,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/59192c2f084849a1ce00c546fac5895c75d95b054b81f9e6bca330177fa9966b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/59192c2f084849a1ce00c546fac5895c75d95b054b81f9e6bca330177fa9966b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/039d955f59f013d4c6bfc95ec48c79afd176eb8a11bc63dc8a35563058396715.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/039d955f59f013d4c6bfc95ec48c79afd176eb8a11bc63dc8a35563058396715-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 880805);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 425341), (SELECT id FROM banknote_issues WHERE numista_issue_id = 880871), 75169251,
     'UNC', 1, FALSE, 'DA 24536725',
     NULL, 'Auction 176', 14, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c9865201fbc0bd11633e335ec7c33091f265e5c0c42831b3fdee164b0eb1258d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c9865201fbc0bd11633e335ec7c33091f265e5c0c42831b3fdee164b0eb1258d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9a9eed5d536354c7aa120a04e530ed24ff97845b139e31dfd80c03eaf2651c8d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a9eed5d536354c7aa120a04e530ed24ff97845b139e31dfd80c03eaf2651c8d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DA 24536725', notes=NULL,
    public_notes='Auction 176', purchase_price=14,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c9865201fbc0bd11633e335ec7c33091f265e5c0c42831b3fdee164b0eb1258d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c9865201fbc0bd11633e335ec7c33091f265e5c0c42831b3fdee164b0eb1258d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9a9eed5d536354c7aa120a04e530ed24ff97845b139e31dfd80c03eaf2651c8d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a9eed5d536354c7aa120a04e530ed24ff97845b139e31dfd80c03eaf2651c8d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 880871);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 425343), (SELECT id FROM banknote_issues WHERE numista_issue_id = 880873), 75169203,
     'UNC', 1, FALSE, 'EA 16036548',
     NULL, 'Auction 176', 23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8f98c278347789b3afccbd4727f0b57d80a8f94e78388f459ad8d325b9067c38.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8f98c278347789b3afccbd4727f0b57d80a8f94e78388f459ad8d325b9067c38-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6e1a04208071b67c976b0b296b6cefa958d23a38467d073695a6cd95ae12d297.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6e1a04208071b67c976b0b296b6cefa958d23a38467d073695a6cd95ae12d297-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EA 16036548', notes=NULL,
    public_notes='Auction 176', purchase_price=23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8f98c278347789b3afccbd4727f0b57d80a8f94e78388f459ad8d325b9067c38.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8f98c278347789b3afccbd4727f0b57d80a8f94e78388f459ad8d325b9067c38-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6e1a04208071b67c976b0b296b6cefa958d23a38467d073695a6cd95ae12d297.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6e1a04208071b67c976b0b296b6cefa958d23a38467d073695a6cd95ae12d297-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 880873);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 429035), (SELECT id FROM banknote_issues WHERE numista_issue_id = 910392), 73563778,
     'UNC', 1, FALSE, 'B 00872015 A',
     'The nominee for the “Bank Note of the Year Award” in 2024', NULL, 0.85, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 00872015 A', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes=NULL, purchase_price=0.85,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 910392);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 433177), (SELECT id FROM banknote_issues WHERE numista_issue_id = 893813), 73563416,
     'UNC', 1, FALSE, 'MI 0322734',
     'The nominee for the “Bank Note of the Year Award” in 2024', NULL, 5.15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MI 0322734', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes=NULL, purchase_price=5.15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 893813);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 433179), (SELECT id FROM banknote_issues WHERE numista_issue_id = 893815), 73563384,
     'UNC', 1, FALSE, 'IA 0409977',
     NULL, NULL, 4.29, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='IA 0409977', notes=NULL,
    public_notes=NULL, purchase_price=4.29,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 893815);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 444384), (SELECT id FROM banknote_issues WHERE numista_issue_id = 911387), 76392830,
     'UNC', 1, FALSE, 'RB 002323',
     NULL, NULL, 54.29, 'EUR',
     'PMG', '66', '2372856-089',
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='RB 002323', notes=NULL,
    public_notes=NULL, purchase_price=54.29,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2372856-089',
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 911387);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 444488), (SELECT id FROM banknote_issues WHERE numista_issue_id = 911600), 76392763,
     'UNC', 1, FALSE, 'LA 019019',
     'Repeater S/N', NULL, 43.09, 'EUR',
     'PMG', '67', '2448617-074',
     '["EPQ"]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LA 019019', notes='Repeater S/N',
    public_notes=NULL, purchase_price=43.09,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2448617-074',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 911600);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 444491), (SELECT id FROM banknote_issues WHERE numista_issue_id = 911603), 76392796,
     'UNC', 1, FALSE, 'NB 680680',
     'Repeater S/N', NULL, 34.64, 'EUR',
     'PMG', '67', '2452764-020',
     '["EPQ"]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='NB 680680', notes='Repeater S/N',
    public_notes=NULL, purchase_price=34.64,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2452764-020',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 911603);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 446654), (SELECT id FROM banknote_issues WHERE numista_issue_id = 914883), 70139990,
     'UNC', 1, FALSE, 'AC8053429',
     'The nominee for the “Bank Note of the Year Award” in 2024', NULL, 38.99, 'EUR',
     'PMG', '67', '2373030-025',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/65e8b11e5ff6800398354d8731a60b54c394bed50523dc452b76aa1a7235c8da.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/65e8b11e5ff6800398354d8731a60b54c394bed50523dc452b76aa1a7235c8da-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC8053429', notes='The nominee for the “Bank Note of the Year Award” in 2024',
    public_notes=NULL, purchase_price=38.99,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2373030-025',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/65e8b11e5ff6800398354d8731a60b54c394bed50523dc452b76aa1a7235c8da.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/65e8b11e5ff6800398354d8731a60b54c394bed50523dc452b76aa1a7235c8da-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 914883);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 446774), (SELECT id FROM banknote_issues WHERE numista_issue_id = 915018), 70139949,
     'UNC', 1, FALSE, 'AC1503036',
     NULL, NULL, 26.99, 'EUR',
     'PMG', '67', '2373030-031',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b526f4bbc4b2ca00423ba464c78ed66362656771a3e36c2f8149f786bc71a928.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b526f4bbc4b2ca00423ba464c78ed66362656771a3e36c2f8149f786bc71a928-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC1503036', notes=NULL,
    public_notes=NULL, purchase_price=26.99,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2373030-031',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b526f4bbc4b2ca00423ba464c78ed66362656771a3e36c2f8149f786bc71a928.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b526f4bbc4b2ca00423ba464c78ed66362656771a3e36c2f8149f786bc71a928-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 915018);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 446780), (SELECT id FROM banknote_issues WHERE numista_issue_id = 915044), 70139901,
     'UNC', 1, FALSE, 'AG6792999',
     NULL, NULL, 21.99, 'EUR',
     'PMG', '67', '2373030-027',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3d1b616700476e477a53bf197518288151168705a013f8aaec62b35dcf749628.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3d1b616700476e477a53bf197518288151168705a013f8aaec62b35dcf749628-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AG6792999', notes=NULL,
    public_notes=NULL, purchase_price=21.99,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2373030-027',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3d1b616700476e477a53bf197518288151168705a013f8aaec62b35dcf749628.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3d1b616700476e477a53bf197518288151168705a013f8aaec62b35dcf749628-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 915044);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 447195), (SELECT id FROM banknote_issues WHERE numista_issue_id = 915692), 73563587,
     'UNC', 1, FALSE, 'J 026075045',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 6.86, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J 026075045', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=6.86,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 915692);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 456482), (SELECT id FROM banknote_issues WHERE numista_issue_id = 930679), 76531151,
     'UNC', 1, FALSE, 'AB 882677',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 882677', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 930679);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 458812), (SELECT id FROM banknote_issues WHERE numista_issue_id = 934206), 76532513,
     'UNC', 1, FALSE, 'HGG 0154093',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HGG 0154093', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 934206);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 460163), (SELECT id FROM banknote_issues WHERE numista_issue_id = 936341), 76531099,
     'UNC', 1, FALSE, '3109 175486',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 4.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='3109 175486', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=4.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 936341);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 462121), (SELECT id FROM banknote_issues WHERE numista_issue_id = 939370), 76532586,
     'UNC', 1, FALSE, 'OO 58888 SS',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 30, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='OO 58888 SS', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=30,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 939370);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 464541), (SELECT id FROM banknote_issues WHERE numista_issue_id = 943417), 73564010,
     'UNC', 1, FALSE, 'S210566312',
     NULL, NULL, 34.34, 'EUR',
     'PMG', '65', '2444827-043',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f6a4eb8de9678390bc4397aff80c31cc672e7e6235fef4053838b68669521a5f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f6a4eb8de9678390bc4397aff80c31cc672e7e6235fef4053838b68669521a5f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0462ffbf4351a9b9eb8965b3c9e56b1d09d824b70b613ab64256533ac652297f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0462ffbf4351a9b9eb8965b3c9e56b1d09d824b70b613ab64256533ac652297f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='S210566312', notes=NULL,
    public_notes=NULL, purchase_price=34.34,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='2444827-043',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f6a4eb8de9678390bc4397aff80c31cc672e7e6235fef4053838b68669521a5f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f6a4eb8de9678390bc4397aff80c31cc672e7e6235fef4053838b68669521a5f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0462ffbf4351a9b9eb8965b3c9e56b1d09d824b70b613ab64256533ac652297f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0462ffbf4351a9b9eb8965b3c9e56b1d09d824b70b613ab64256533ac652297f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 943417);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 466014), (SELECT id FROM banknote_issues WHERE numista_issue_id = 946001), 76531134,
     'UNC', 1, FALSE, '2/24 2095147',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='2/24 2095147', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 946001);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 467667), (SELECT id FROM banknote_issues WHERE numista_issue_id = 948834), 76530633,
     'UNC', 1, FALSE, 'EZ 808441',
     NULL, 'SPECIMEN', 10.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EZ 808441', notes=NULL,
    public_notes='SPECIMEN', purchase_price=10.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 948834);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 467667), (SELECT id FROM banknote_issues WHERE numista_issue_id = 948834), 76530759,
     'UNC', 1, FALSE, 'FN 259721',
     NULL, NULL, 10.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FN 259721', notes=NULL,
    public_notes=NULL, purchase_price=10.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 948834);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 470634), (SELECT id FROM banknote_issues WHERE numista_issue_id = 953510), 78902789,
     'UNC', 1, FALSE, '1535944',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 11.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1535944', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=11.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 953510);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 480195), (SELECT id FROM banknote_issues WHERE numista_issue_id = 969329), 76531054,
     'UNC', 1, FALSE, 'FA 994164',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 90, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FA 994164', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=90,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 969329);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 483424), (SELECT id FROM banknote_issues WHERE numista_issue_id = 974600), 76532545,
     'UNC', 1, FALSE, 'CB 08883757',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 11, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CB 08883757', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=11,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 974600);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 484713), (SELECT id FROM banknote_issues WHERE numista_issue_id = 976560), 76532531,
     'UNC', 1, FALSE, 'AE 25314113',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AE 25314113', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 976560);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 484737), (SELECT id FROM banknote_issues WHERE numista_issue_id = 976596), 73561723,
     'UNC', 1, FALSE, 'A005916',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 36.81, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A005916', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=36.81,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 976596);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 492781), (SELECT id FROM banknote_issues WHERE numista_issue_id = 986565), 76532629,
     'UNC', 1, FALSE, 'AA 5912605',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 5912605', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 986565);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 532534), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1030717), 76531126,
     'UNC', 1, FALSE, 'AA 0802191',
     NULL, NULL, 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 0802191', notes=NULL,
    public_notes=NULL, purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1030717);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 541774), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1042629), 76478749,
     'UNC', 1, FALSE, 'AA 046129',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 8.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 046129', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=8.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1042629);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 541774), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1042629), 76531085,
     'UNC', 1, FALSE, 'AB 008014',
     'The nominee for the “Bank Note of the Year Award” in 2025', NULL, 5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 008014', notes='The nominee for the “Bank Note of the Year Award” in 2025',
    public_notes=NULL, purchase_price=5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1042629);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 541778), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1042633), 76478588,
     'UNC', 1, FALSE, 'AA 038227',
     NULL, NULL, 12, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 038227', notes=NULL,
    public_notes=NULL, purchase_price=12,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1042633);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 541780), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1042635), 76478559,
     'UNC', 1, FALSE, 'AA 021832',
     NULL, NULL, 23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 021832', notes=NULL,
    public_notes=NULL, purchase_price=23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1042635);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 541781), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1042636), 76478444,
     'UNC', 1, FALSE, 'AA 038224',
     NULL, NULL, 42, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 038224', notes=NULL,
    public_notes=NULL, purchase_price=42,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1042636);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 541782), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1042637), 76478399,
     'UNC', 1, FALSE, 'AA 038227',
     NULL, NULL, 70, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 038227', notes=NULL,
    public_notes=NULL, purchase_price=70,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1042637);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 548848), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1050606), 77438248,
     'UNC', 1, FALSE, 'A/05 8673292',
     NULL, NULL, 1.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/aa00b738acc5447120d8e2ae4f1a34fee7c0452b0826da14819f03a354fb2e32.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aa00b738acc5447120d8e2ae4f1a34fee7c0452b0826da14819f03a354fb2e32-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/05 8673292', notes=NULL,
    public_notes=NULL, purchase_price=1.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/aa00b738acc5447120d8e2ae4f1a34fee7c0452b0826da14819f03a354fb2e32.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aa00b738acc5447120d8e2ae4f1a34fee7c0452b0826da14819f03a354fb2e32-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1050606);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 548849), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1050607), 77438265,
     'UNC', 1, FALSE, 'A/07 6835057',
     NULL, NULL, 2.36, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b20ac69de546f33708e6c624fb4fb5bf69ea1cf130f37ae92eba2ff311332e5c.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b20ac69de546f33708e6c624fb4fb5bf69ea1cf130f37ae92eba2ff311332e5c-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/07 6835057', notes=NULL,
    public_notes=NULL, purchase_price=2.36,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b20ac69de546f33708e6c624fb4fb5bf69ea1cf130f37ae92eba2ff311332e5c.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b20ac69de546f33708e6c624fb4fb5bf69ea1cf130f37ae92eba2ff311332e5c-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1050607);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 548850), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1050608), 77438290,
     'UNC', 1, FALSE, 'A/08 2963697',
     NULL, NULL, 4.71, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e5582b4fe43835464686b25039e8a009defbb61b26944c242527e171e6cbaebd.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5582b4fe43835464686b25039e8a009defbb61b26944c242527e171e6cbaebd-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/08 2963697', notes=NULL,
    public_notes=NULL, purchase_price=4.71,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e5582b4fe43835464686b25039e8a009defbb61b26944c242527e171e6cbaebd.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5582b4fe43835464686b25039e8a009defbb61b26944c242527e171e6cbaebd-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1050608);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 548851), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1050609), 77438316,
     'UNC', 1, FALSE, 'A/03 9106809',
     NULL, NULL, 6.39, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b4e301ab13d615ae9d3a42f01121f0f68fc1f9d36878fe214017e9d95d6480aa.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b4e301ab13d615ae9d3a42f01121f0f68fc1f9d36878fe214017e9d95d6480aa-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/03 9106809', notes=NULL,
    public_notes=NULL, purchase_price=6.39,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b4e301ab13d615ae9d3a42f01121f0f68fc1f9d36878fe214017e9d95d6480aa.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b4e301ab13d615ae9d3a42f01121f0f68fc1f9d36878fe214017e9d95d6480aa-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1050609);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 548854), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1050612), 77438352,
     'UNC', 1, FALSE, 'A/10 4095598',
     NULL, NULL, 10.65, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2ec30707a88d45a6ab49512eab23929187a6bf72ba642c46249c2134032fa6bf.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2ec30707a88d45a6ab49512eab23929187a6bf72ba642c46249c2134032fa6bf-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/10 4095598', notes=NULL,
    public_notes=NULL, purchase_price=10.65,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2ec30707a88d45a6ab49512eab23929187a6bf72ba642c46249c2134032fa6bf.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2ec30707a88d45a6ab49512eab23929187a6bf72ba642c46249c2134032fa6bf-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1050612);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 553416), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1056533), 77438224,
     'UNC', 1, FALSE, 'A/03 9313197',
     NULL, NULL, 0.94, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/db4ba8cf0b1d89ad6e41cdea802f1aabf3c526b6f67ae6b8b421ed2389b947c7.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/db4ba8cf0b1d89ad6e41cdea802f1aabf3c526b6f67ae6b8b421ed2389b947c7-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/03 9313197', notes=NULL,
    public_notes=NULL, purchase_price=0.94,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/db4ba8cf0b1d89ad6e41cdea802f1aabf3c526b6f67ae6b8b421ed2389b947c7.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/db4ba8cf0b1d89ad6e41cdea802f1aabf3c526b6f67ae6b8b421ed2389b947c7-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1056533);

END $$;