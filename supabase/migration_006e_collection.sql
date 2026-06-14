-- migration_006e_collection.sql
-- Rows 301–450 of 976
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
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204093), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501865), 51233907,
     'UNC', 1, FALSE, 'A 7864045605 A',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 7864045605 A', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501865);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204094), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501867), 51230869,
     'UNC', 1, FALSE, 'LBB 294126',
     NULL, NULL, 0.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LBB 294126', notes=NULL,
    public_notes=NULL, purchase_price=0.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501867);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204098), (SELECT id FROM banknote_issues WHERE numista_issue_id = 501876), 51230885,
     'UNC', 1, FALSE, 'CAZ 254994',
     NULL, NULL, 0.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CAZ 254994', notes=NULL,
    public_notes=NULL, purchase_price=0.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 501876);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204143), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502138), 51235505,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 35, 'UAH',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=35,
    price_currency='UAH', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502138);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204145), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502144), 51298460,
     'UNC', 1, FALSE, 'A 7371561',
     NULL, NULL, 1.46, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 7371561', notes=NULL,
    public_notes=NULL, purchase_price=1.46,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502144);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204150), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502157), 60313987,
     'AU', 1, FALSE, 'FD 758931',
     NULL, 'Auction 107', 19.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a26efde8c566be0bbfe81d8452faad96801a744a98e7861fc881d1324fc83dad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a26efde8c566be0bbfe81d8452faad96801a744a98e7861fc881d1324fc83dad-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0071065e2d450af66209929c09ef99b5bc8c9957d5a98a336037362af6a30573.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0071065e2d450af66209929c09ef99b5bc8c9957d5a98a336037362af6a30573-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='FD 758931', notes=NULL,
    public_notes='Auction 107', purchase_price=19.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a26efde8c566be0bbfe81d8452faad96801a744a98e7861fc881d1324fc83dad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a26efde8c566be0bbfe81d8452faad96801a744a98e7861fc881d1324fc83dad-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0071065e2d450af66209929c09ef99b5bc8c9957d5a98a336037362af6a30573.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0071065e2d450af66209929c09ef99b5bc8c9957d5a98a336037362af6a30573-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502157);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204170), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502427), 61752074,
     'VF', 1, FALSE, 'HHG 531027',
     NULL, 'Auction 113', 20.02, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a9f7660b4f01ace1d7e41b57a317b70586385bdc0459ba0464665b82add60a98.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a9f7660b4f01ace1d7e41b57a317b70586385bdc0459ba0464665b82add60a98-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bb24fa64067204b7fa42a11a1c422d4b699834d698a02ea98b87665fce89bacd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bb24fa64067204b7fa42a11a1c422d4b699834d698a02ea98b87665fce89bacd-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='VF', quantity=1, for_trade=FALSE,
    serial_number='HHG 531027', notes=NULL,
    public_notes='Auction 113', purchase_price=20.02,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a9f7660b4f01ace1d7e41b57a317b70586385bdc0459ba0464665b82add60a98.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a9f7660b4f01ace1d7e41b57a317b70586385bdc0459ba0464665b82add60a98-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bb24fa64067204b7fa42a11a1c422d4b699834d698a02ea98b87665fce89bacd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bb24fa64067204b7fa42a11a1c422d4b699834d698a02ea98b87665fce89bacd-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502427);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204170), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502417), 77329710,
     'UNC', 1, FALSE, 'FJF 833073',
     NULL, 'Auction 185', 79.85, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/50198acde18e939e4b059cc2c653c7ad438bd6f104ea265391b53c13b0ace41d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/50198acde18e939e4b059cc2c653c7ad438bd6f104ea265391b53c13b0ace41d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FJF 833073', notes=NULL,
    public_notes='Auction 185', purchase_price=79.85,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/50198acde18e939e4b059cc2c653c7ad438bd6f104ea265391b53c13b0ace41d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/50198acde18e939e4b059cc2c653c7ad438bd6f104ea265391b53c13b0ace41d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502417);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204172), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502432), 60313967,
     'UNC', 1, FALSE, '6RR 090472',
     NULL, 'Auction 107', 17.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5e7d775defa04c9cdd8235f227ac85eddbb3702cd580b2c87c7f193887f15e3e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5e7d775defa04c9cdd8235f227ac85eddbb3702cd580b2c87c7f193887f15e3e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d308107fa4bce0510e17fca35daebbf968c5af418f623fdc5aac8b970a5cec14.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d308107fa4bce0510e17fca35daebbf968c5af418f623fdc5aac8b970a5cec14-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='6RR 090472', notes=NULL,
    public_notes='Auction 107', purchase_price=17.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5e7d775defa04c9cdd8235f227ac85eddbb3702cd580b2c87c7f193887f15e3e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5e7d775defa04c9cdd8235f227ac85eddbb3702cd580b2c87c7f193887f15e3e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d308107fa4bce0510e17fca35daebbf968c5af418f623fdc5aac8b970a5cec14.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d308107fa4bce0510e17fca35daebbf968c5af418f623fdc5aac8b970a5cec14-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502432);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204186), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502499), 75169007,
     'UNC', 1, FALSE, 'ZMN 585786',
     NULL, 'Auction 176', 73.37, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0f981a90433f1f42ee87d9fdd4280683e2d2655370d75330e60427868ad4c771.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0f981a90433f1f42ee87d9fdd4280683e2d2655370d75330e60427868ad4c771-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/90bc97b6985e94fd33beb314d305e6114da66448e37d579d117284dbbf780ca3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/90bc97b6985e94fd33beb314d305e6114da66448e37d579d117284dbbf780ca3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ZMN 585786', notes=NULL,
    public_notes='Auction 176', purchase_price=73.37,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0f981a90433f1f42ee87d9fdd4280683e2d2655370d75330e60427868ad4c771.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0f981a90433f1f42ee87d9fdd4280683e2d2655370d75330e60427868ad4c771-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/90bc97b6985e94fd33beb314d305e6114da66448e37d579d117284dbbf780ca3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/90bc97b6985e94fd33beb314d305e6114da66448e37d579d117284dbbf780ca3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502499);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204186), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502488), 77330022,
     'UNC', 1, FALSE, 'HCJ 706659',
     NULL, 'Auction 185', 79.85, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/71164e535a20d547d36f1b92c954e0c5c36a5874f76397f79cb156fd624fa19c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/71164e535a20d547d36f1b92c954e0c5c36a5874f76397f79cb156fd624fa19c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b9cdecfe3107dd5113ed3a680d899af95b0b44e9b084ebda5bc7247b8f94df81.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b9cdecfe3107dd5113ed3a680d899af95b0b44e9b084ebda5bc7247b8f94df81-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HCJ 706659', notes=NULL,
    public_notes='Auction 185', purchase_price=79.85,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/71164e535a20d547d36f1b92c954e0c5c36a5874f76397f79cb156fd624fa19c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/71164e535a20d547d36f1b92c954e0c5c36a5874f76397f79cb156fd624fa19c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b9cdecfe3107dd5113ed3a680d899af95b0b44e9b084ebda5bc7247b8f94df81.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b9cdecfe3107dd5113ed3a680d899af95b0b44e9b084ebda5bc7247b8f94df81-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502488);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204196), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502585), 51236753,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 1.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=1.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502585);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204198), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502614), 77330110,
     'UNC', 1, FALSE, 'XNP 227412',
     NULL, 'Auction 185', 89.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c63cf2e4f61946b96d096057aeb74ff9adf348593bfd4feb531e8d6ce6c70a5b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c63cf2e4f61946b96d096057aeb74ff9adf348593bfd4feb531e8d6ce6c70a5b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7f06017551050f94b0dccc885ee1803ec914b1384bf274f6b4e7f13b55c2703e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7f06017551050f94b0dccc885ee1803ec914b1384bf274f6b4e7f13b55c2703e-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='XNP 227412', notes=NULL,
    public_notes='Auction 185', purchase_price=89.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c63cf2e4f61946b96d096057aeb74ff9adf348593bfd4feb531e8d6ce6c70a5b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c63cf2e4f61946b96d096057aeb74ff9adf348593bfd4feb531e8d6ce6c70a5b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7f06017551050f94b0dccc885ee1803ec914b1384bf274f6b4e7f13b55c2703e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7f06017551050f94b0dccc885ee1803ec914b1384bf274f6b4e7f13b55c2703e-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502614);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204240), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506378), 51234125,
     'UNC', 1, FALSE, 'C 0893043515 A',
     NULL, NULL, 11, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 0893043515 A', notes=NULL,
    public_notes=NULL, purchase_price=11,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506378);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204253), (SELECT id FROM banknote_issues WHERE numista_issue_id = 502982), 60625195,
     'UNC', 1, FALSE, 'IA 03494700',
     NULL, NULL, 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a2e35b0280a9a7c9732d430ce0ab634a8a3bf44841d57e7ff98b01a3ff739222.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2e35b0280a9a7c9732d430ce0ab634a8a3bf44841d57e7ff98b01a3ff739222-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d9fb6878a769ad1e3ed5f93e810b4212281e1fc128f1b6a07c9dcabd8f07bd1f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d9fb6878a769ad1e3ed5f93e810b4212281e1fc128f1b6a07c9dcabd8f07bd1f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='IA 03494700', notes=NULL,
    public_notes=NULL, purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a2e35b0280a9a7c9732d430ce0ab634a8a3bf44841d57e7ff98b01a3ff739222.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2e35b0280a9a7c9732d430ce0ab634a8a3bf44841d57e7ff98b01a3ff739222-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d9fb6878a769ad1e3ed5f93e810b4212281e1fc128f1b6a07c9dcabd8f07bd1f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d9fb6878a769ad1e3ed5f93e810b4212281e1fc128f1b6a07c9dcabd8f07bd1f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 502982);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204267), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503044), 51233665,
     'UNC', 1, FALSE, 'BCN 02557691',
     NULL, NULL, 6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BCN 02557691', notes=NULL,
    public_notes=NULL, purchase_price=6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503044);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204268), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503046), 51234861,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503046);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204269), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503051), 51233650,
     'UNC', 1, FALSE, 'A/1 10132157',
     NULL, NULL, 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/1 10132157', notes=NULL,
    public_notes=NULL, purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503051);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204298), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503110), 51232158,
     'UNC', 1, FALSE, 'AC 030721',
     NULL, NULL, 4.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 030721', notes=NULL,
    public_notes=NULL, purchase_price=4.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503110);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204305), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503124), 51232116,
     'UNC', 1, FALSE, 'AG 476179',
     NULL, NULL, 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AG 476179', notes=NULL,
    public_notes=NULL, purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503124);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204321), (SELECT id FROM banknote_issues WHERE numista_issue_id = 537207), 60624862,
     'UNC', 1, FALSE, 'A2793E',
     NULL, NULL, 14.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/08d1756e9277cf33cd319ac8bcecada266d700fe6321bc3d1ba48cb2c88c0a1b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/08d1756e9277cf33cd319ac8bcecada266d700fe6321bc3d1ba48cb2c88c0a1b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d03cf45359b54b6e024a9f73dff0e55dc28f8ab07ea06e3569ceab503ea3775c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d03cf45359b54b6e024a9f73dff0e55dc28f8ab07ea06e3569ceab503ea3775c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A2793E', notes=NULL,
    public_notes=NULL, purchase_price=14.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/08d1756e9277cf33cd319ac8bcecada266d700fe6321bc3d1ba48cb2c88c0a1b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/08d1756e9277cf33cd319ac8bcecada266d700fe6321bc3d1ba48cb2c88c0a1b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d03cf45359b54b6e024a9f73dff0e55dc28f8ab07ea06e3569ceab503ea3775c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d03cf45359b54b6e024a9f73dff0e55dc28f8ab07ea06e3569ceab503ea3775c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 537207);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204321), (SELECT id FROM banknote_issues WHERE numista_issue_id = 537217), 69664282,
     'UNC', 1, FALSE, 'C1812J 0804770',
     NULL, 'Auction 124', 40, 'EUR',
     'PMG', '66', '1913421-057',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/053f94dcc2c944cba2e7f2791b761d63d0ec06fcff4a64e256cc020d07e0d8c5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/053f94dcc2c944cba2e7f2791b761d63d0ec06fcff4a64e256cc020d07e0d8c5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/05b133aebebf3c7de38ef25b90069b63f3fb155c9f12f76048169d7eacbdb23d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/05b133aebebf3c7de38ef25b90069b63f3fb155c9f12f76048169d7eacbdb23d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C1812J 0804770', notes=NULL,
    public_notes='Auction 124', purchase_price=40,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1913421-057',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/053f94dcc2c944cba2e7f2791b761d63d0ec06fcff4a64e256cc020d07e0d8c5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/053f94dcc2c944cba2e7f2791b761d63d0ec06fcff4a64e256cc020d07e0d8c5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/05b133aebebf3c7de38ef25b90069b63f3fb155c9f12f76048169d7eacbdb23d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/05b133aebebf3c7de38ef25b90069b63f3fb155c9f12f76048169d7eacbdb23d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 537217);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204324), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503178), 51733842,
     'UNC', 1, FALSE, 'AH 1395242',
     NULL, NULL, 0.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AH 1395242', notes=NULL,
    public_notes=NULL, purchase_price=0.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503178);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204329), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503194), 51733866,
     'UNC', 1, FALSE, 'AL 5860978',
     NULL, NULL, 1.75, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AL 5860978', notes=NULL,
    public_notes=NULL, purchase_price=1.75,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503194);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204331), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503207), 51733875,
     'UNC', 1, FALSE, 'AA 8168309',
     NULL, NULL, 4.12, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 8168309', notes=NULL,
    public_notes=NULL, purchase_price=4.12,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503207);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204347), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503270), 51232239,
     'UNC', 1, FALSE, 'FF 97463119',
     NULL, NULL, 3.62, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FF 97463119', notes=NULL,
    public_notes=NULL, purchase_price=3.62,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503270);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204358), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503308), 51234983,
     'UNC', 1, FALSE, '5521213620',
     NULL, NULL, 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='5521213620', notes=NULL,
    public_notes=NULL, purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503308);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204358), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503308), 70287451,
     'UNC', 1, FALSE, '5456451366',
     NULL, 'Auction 155', 30.12, 'EUR',
     'PMG', '64', '1921342-005',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0220b6dfe57e22ed5fc05b4a94fecf6dd5db0e09d2e4f4b0064cd1ca4308b967.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0220b6dfe57e22ed5fc05b4a94fecf6dd5db0e09d2e4f4b0064cd1ca4308b967-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/18e84ec55fc63d9170f570c38838a1cfe1edccb1c7b1804c8713d426d6e2820e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/18e84ec55fc63d9170f570c38838a1cfe1edccb1c7b1804c8713d426d6e2820e-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='5456451366', notes=NULL,
    public_notes='Auction 155', purchase_price=30.12,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1921342-005',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0220b6dfe57e22ed5fc05b4a94fecf6dd5db0e09d2e4f4b0064cd1ca4308b967.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0220b6dfe57e22ed5fc05b4a94fecf6dd5db0e09d2e4f4b0064cd1ca4308b967-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/18e84ec55fc63d9170f570c38838a1cfe1edccb1c7b1804c8713d426d6e2820e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/18e84ec55fc63d9170f570c38838a1cfe1edccb1c7b1804c8713d426d6e2820e-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503308);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204378), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503357), 60314278,
     'UNC', 1, FALSE, 'G.033 137873',
     NULL, 'Auction 107', 27.95, 'EUR',
     'PMG', '66', '1911486-013',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3149e2fca7afe1dec5132946675ee9e7dbbec3eab947f8e37db860d2ae47886b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3149e2fca7afe1dec5132946675ee9e7dbbec3eab947f8e37db860d2ae47886b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7e0f1b4a73fdc5590321e1f6a70474a2ec46eb67c51f24fec3e128174c101d54.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7e0f1b4a73fdc5590321e1f6a70474a2ec46eb67c51f24fec3e128174c101d54-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='G.033 137873', notes=NULL,
    public_notes='Auction 107', purchase_price=27.95,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1911486-013',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3149e2fca7afe1dec5132946675ee9e7dbbec3eab947f8e37db860d2ae47886b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3149e2fca7afe1dec5132946675ee9e7dbbec3eab947f8e37db860d2ae47886b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7e0f1b4a73fdc5590321e1f6a70474a2ec46eb67c51f24fec3e128174c101d54.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7e0f1b4a73fdc5590321e1f6a70474a2ec46eb67c51f24fec3e128174c101d54-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503357);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204402), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503459), 59828184,
     'UNC', 1, FALSE, 'Y 015659977',
     NULL, 'Auction 102', 28.33, 'EUR',
     'PMG', '67', '1911486-002',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a15e622722e90ef854a7d662411ac44d03deb38b6617aebf4cde151d4ef1ce49.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a15e622722e90ef854a7d662411ac44d03deb38b6617aebf4cde151d4ef1ce49-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/74d167ed5bb51ade801e1b3ce0b75dac7adbc9a2c07b337ae74b69af961c100e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/74d167ed5bb51ade801e1b3ce0b75dac7adbc9a2c07b337ae74b69af961c100e-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Y 015659977', notes=NULL,
    public_notes='Auction 102', purchase_price=28.33,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1911486-002',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a15e622722e90ef854a7d662411ac44d03deb38b6617aebf4cde151d4ef1ce49.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a15e622722e90ef854a7d662411ac44d03deb38b6617aebf4cde151d4ef1ce49-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/74d167ed5bb51ade801e1b3ce0b75dac7adbc9a2c07b337ae74b69af961c100e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/74d167ed5bb51ade801e1b3ce0b75dac7adbc9a2c07b337ae74b69af961c100e-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503459);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204424), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503614), 60313725,
     'AU', 1, FALSE, 'S 325976',
     NULL, 'Auction 107', 35.27, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7b5b40c2b777b82543b946b112734ffbd1fefede3c15331c306a69a4e130da55.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7b5b40c2b777b82543b946b112734ffbd1fefede3c15331c306a69a4e130da55-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0618f2b71c34915493ea57816f192a127253ce2fb16d1e6d8e911853f701ff74.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0618f2b71c34915493ea57816f192a127253ce2fb16d1e6d8e911853f701ff74-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='S 325976', notes=NULL,
    public_notes='Auction 107', purchase_price=35.27,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7b5b40c2b777b82543b946b112734ffbd1fefede3c15331c306a69a4e130da55.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7b5b40c2b777b82543b946b112734ffbd1fefede3c15331c306a69a4e130da55-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0618f2b71c34915493ea57816f192a127253ce2fb16d1e6d8e911853f701ff74.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0618f2b71c34915493ea57816f192a127253ce2fb16d1e6d8e911853f701ff74-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503614);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204426), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503619), 59828098,
     'UNC', 1, FALSE, 'Q279502517',
     NULL, 'Auction 102', 30.77, 'EUR',
     'PMG', '64', '1914813-011',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d5d307302b1d1422a8c4805fcb2674db719ecb54aa718884ed8eed7931ba7bed.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d5d307302b1d1422a8c4805fcb2674db719ecb54aa718884ed8eed7931ba7bed-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8abf7a304627e60bc1a0325470dfbe1bfa718bb391cbcc547e96c83db2930439.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8abf7a304627e60bc1a0325470dfbe1bfa718bb391cbcc547e96c83db2930439-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Q279502517', notes=NULL,
    public_notes='Auction 102', purchase_price=30.77,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1914813-011',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d5d307302b1d1422a8c4805fcb2674db719ecb54aa718884ed8eed7931ba7bed.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d5d307302b1d1422a8c4805fcb2674db719ecb54aa718884ed8eed7931ba7bed-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8abf7a304627e60bc1a0325470dfbe1bfa718bb391cbcc547e96c83db2930439.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8abf7a304627e60bc1a0325470dfbe1bfa718bb391cbcc547e96c83db2930439-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503619);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204444), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503815), 56637182,
     'UNC', 1, FALSE, 'AJ 958804',
     NULL, NULL, 16.62, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AJ 958804', notes=NULL,
    public_notes=NULL, purchase_price=16.62,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503815);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204444), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503815), 75168545,
     'UNC', 1, FALSE, 'AL 658130',
     NULL, 'Auction 176', 65.91, 'EUR',
     'PCGS Banknote', '67', 'AL658130',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/90e7336e1598ca697c451d59ea40b8cb707a07a38d5e716588c13aa49f7f5e4e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/90e7336e1598ca697c451d59ea40b8cb707a07a38d5e716588c13aa49f7f5e4e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/63592487ade87d653091a029c08f9f078a6c697c23653465eb5f6164a00d2bbd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/63592487ade87d653091a029c08f9f078a6c697c23653465eb5f6164a00d2bbd-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AL 658130', notes=NULL,
    public_notes='Auction 176', purchase_price=65.91,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='67', cert_number='AL658130',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/90e7336e1598ca697c451d59ea40b8cb707a07a38d5e716588c13aa49f7f5e4e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/90e7336e1598ca697c451d59ea40b8cb707a07a38d5e716588c13aa49f7f5e4e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/63592487ade87d653091a029c08f9f078a6c697c23653465eb5f6164a00d2bbd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/63592487ade87d653091a029c08f9f078a6c697c23653465eb5f6164a00d2bbd-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503815);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204450), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503829), 51235211,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 2.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=2.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503829);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204465), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503872), 51233896,
     'UNC', 1, FALSE, 'A 7603073745 A',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 7603073745 A', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503872);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204473), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503888), 58870929,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0817010059dbda062e8cd690a29ea539bd121b055467e57b9ced3b4319a22e0d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0817010059dbda062e8cd690a29ea539bd121b055467e57b9ced3b4319a22e0d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9c021478be3ea88bccd0045883586a8b86271a454c542786583d565ce8e173be.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9c021478be3ea88bccd0045883586a8b86271a454c542786583d565ce8e173be-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0817010059dbda062e8cd690a29ea539bd121b055467e57b9ced3b4319a22e0d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0817010059dbda062e8cd690a29ea539bd121b055467e57b9ced3b4319a22e0d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9c021478be3ea88bccd0045883586a8b86271a454c542786583d565ce8e173be.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9c021478be3ea88bccd0045883586a8b86271a454c542786583d565ce8e173be-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503888);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204476), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503894), 58870851,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c03738bf4eb36e31101ddb03593f8bb9af478b3aaa01c6113205ec992057068c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c03738bf4eb36e31101ddb03593f8bb9af478b3aaa01c6113205ec992057068c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/49702e233729cf1921e856e987caa2c11fcd886bec98fb39f855cef2994e101b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/49702e233729cf1921e856e987caa2c11fcd886bec98fb39f855cef2994e101b-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c03738bf4eb36e31101ddb03593f8bb9af478b3aaa01c6113205ec992057068c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c03738bf4eb36e31101ddb03593f8bb9af478b3aaa01c6113205ec992057068c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/49702e233729cf1921e856e987caa2c11fcd886bec98fb39f855cef2994e101b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/49702e233729cf1921e856e987caa2c11fcd886bec98fb39f855cef2994e101b-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503894);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204479), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503901), 70287152,
     'AU', 1, FALSE, '11526',
     NULL, 'Auction 155', 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='11526', notes=NULL,
    public_notes='Auction 155', purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503901);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204487), (SELECT id FROM banknote_issues WHERE numista_issue_id = 503916), 51235837,
     'UNC', 1, FALSE, '7B 3363852',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='7B 3363852', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 503916);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204530), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504163), 60312379,
     'UNC', 1, FALSE, 'MM 006660',
     NULL, 'Auction 104', 52.92, 'EUR',
     'PMG', '67', '1914913-006',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4623228222e051d946942439874ab2e0dc7a7437d52f8a13aab361c3c7cb7180.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4623228222e051d946942439874ab2e0dc7a7437d52f8a13aab361c3c7cb7180-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d2d0b120ed48c72fbfed561f03c36d1fd4853e1e2ed94f99bb6a1a4023800f8c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d2d0b120ed48c72fbfed561f03c36d1fd4853e1e2ed94f99bb6a1a4023800f8c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MM 006660', notes=NULL,
    public_notes='Auction 104', purchase_price=52.92,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1914913-006',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4623228222e051d946942439874ab2e0dc7a7437d52f8a13aab361c3c7cb7180.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4623228222e051d946942439874ab2e0dc7a7437d52f8a13aab361c3c7cb7180-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d2d0b120ed48c72fbfed561f03c36d1fd4853e1e2ed94f99bb6a1a4023800f8c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d2d0b120ed48c72fbfed561f03c36d1fd4853e1e2ed94f99bb6a1a4023800f8c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504163);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204569), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504312), 51233721,
     'UNC', 1, FALSE, 'AO 11362320',
     NULL, NULL, 3.21, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AO 11362320', notes=NULL,
    public_notes=NULL, purchase_price=3.21,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504312);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204584), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504346), 60787250,
     'AU', 1, FALSE, 'SB 483596D',
     NULL, 'Auction 111', 39.27, 'EUR',
     'PMG', '58', '1911351-001',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/552bc1186cb04a154184768eb4e1e6ea1bd0aabafd28d8ef53b139afb892767e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/552bc1186cb04a154184768eb4e1e6ea1bd0aabafd28d8ef53b139afb892767e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2cb8a66dcf74ccfb78e68b991db7f45a52ea9843952af667649178567b70cf15.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2cb8a66dcf74ccfb78e68b991db7f45a52ea9843952af667649178567b70cf15-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='SB 483596D', notes=NULL,
    public_notes='Auction 111', purchase_price=39.27,
    price_currency='EUR', grading_company='PMG',
    grading_score='58', cert_number='1911351-001',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/552bc1186cb04a154184768eb4e1e6ea1bd0aabafd28d8ef53b139afb892767e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/552bc1186cb04a154184768eb4e1e6ea1bd0aabafd28d8ef53b139afb892767e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2cb8a66dcf74ccfb78e68b991db7f45a52ea9843952af667649178567b70cf15.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2cb8a66dcf74ccfb78e68b991db7f45a52ea9843952af667649178567b70cf15-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504346);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204591), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504365), 60313790,
     'UNC', 1, FALSE, '3T4878907',
     NULL, 'Auction 107', 16.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f4cea4ab8360f2d81d9e6d8bbd8c62ede761fed450f77ba80b50578776ccc1d6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f4cea4ab8360f2d81d9e6d8bbd8c62ede761fed450f77ba80b50578776ccc1d6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c1f254da81239cfd0944f0f92ddf72fb62527e0c86d3698a657b6c2e15f697cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c1f254da81239cfd0944f0f92ddf72fb62527e0c86d3698a657b6c2e15f697cc-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='3T4878907', notes=NULL,
    public_notes='Auction 107', purchase_price=16.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f4cea4ab8360f2d81d9e6d8bbd8c62ede761fed450f77ba80b50578776ccc1d6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f4cea4ab8360f2d81d9e6d8bbd8c62ede761fed450f77ba80b50578776ccc1d6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c1f254da81239cfd0944f0f92ddf72fb62527e0c86d3698a657b6c2e15f697cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c1f254da81239cfd0944f0f92ddf72fb62527e0c86d3698a657b6c2e15f697cc-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504365);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204591), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504365), 60313805,
     'UNC', 1, FALSE, '3T4878908',
     NULL, 'Auction 107', 16.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e7bbc7bbf859f70a61034a0288a7745a8425015572e450d0e391eb9a132ce21e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e7bbc7bbf859f70a61034a0288a7745a8425015572e450d0e391eb9a132ce21e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c36a67388f4957a2656fcb27df071956bccada312957272ce7e17363ee38f42a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c36a67388f4957a2656fcb27df071956bccada312957272ce7e17363ee38f42a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='3T4878908', notes=NULL,
    public_notes='Auction 107', purchase_price=16.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e7bbc7bbf859f70a61034a0288a7745a8425015572e450d0e391eb9a132ce21e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e7bbc7bbf859f70a61034a0288a7745a8425015572e450d0e391eb9a132ce21e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c36a67388f4957a2656fcb27df071956bccada312957272ce7e17363ee38f42a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c36a67388f4957a2656fcb27df071956bccada312957272ce7e17363ee38f42a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504365);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204600), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504389), 60777693,
     'UNC', 1, FALSE, 'A 26 68984',
     NULL, 'Auction 111', 47.81, 'EUR',
     'PMG', '65', '1913933-009',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c9258beae23b99cecb4a5fb974ed106bc7097bc561c2af8d8e331aacda7d7c95.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c9258beae23b99cecb4a5fb974ed106bc7097bc561c2af8d8e331aacda7d7c95-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b32595e6de570c927f95119b4d79b3f07ac553fe0dce34f22d52542c27387634.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b32595e6de570c927f95119b4d79b3f07ac553fe0dce34f22d52542c27387634-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 26 68984', notes=NULL,
    public_notes='Auction 111', purchase_price=47.81,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1913933-009',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c9258beae23b99cecb4a5fb974ed106bc7097bc561c2af8d8e331aacda7d7c95.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c9258beae23b99cecb4a5fb974ed106bc7097bc561c2af8d8e331aacda7d7c95-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b32595e6de570c927f95119b4d79b3f07ac553fe0dce34f22d52542c27387634.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b32595e6de570c927f95119b4d79b3f07ac553fe0dce34f22d52542c27387634-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504389);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204614), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504468), 51234781,
     'UNC', 1, FALSE, 'DM 3801779 C',
     NULL, NULL, 14, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DM 3801779 C', notes=NULL,
    public_notes=NULL, purchase_price=14,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504468);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204640), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507770), 51234407,
     'UNC', 1, FALSE, 'XN 5181159',
     NULL, NULL, 0.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='XN 5181159', notes=NULL,
    public_notes=NULL, purchase_price=0.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507770);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204643), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504525), 51233657,
     'UNC', 1, FALSE, 'A 01276174',
     NULL, NULL, 1.17, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 01276174', notes=NULL,
    public_notes=NULL, purchase_price=1.17,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504525);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204650), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504541), 51526607,
     'UNC', 1, FALSE, 'AA20531273',
     NULL, NULL, 5.55, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA20531273', notes=NULL,
    public_notes=NULL, purchase_price=5.55,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504541);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204689), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504671), 59828277,
     'UNC', 1, FALSE, 'E3479896',
     NULL, 'Auction 102', 46.63, 'EUR',
     'PMG', '66', '1914725-062',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e6eddbedecbc9f45188a42461f343527ebf78a4a0de339f5becb363609073001.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e6eddbedecbc9f45188a42461f343527ebf78a4a0de339f5becb363609073001-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4612064450c166662409aea64524cf5b7b084c1f1eaaf704034f5a2508e6ccf5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4612064450c166662409aea64524cf5b7b084c1f1eaaf704034f5a2508e6ccf5-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E3479896', notes=NULL,
    public_notes='Auction 102', purchase_price=46.63,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1914725-062',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e6eddbedecbc9f45188a42461f343527ebf78a4a0de339f5becb363609073001.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e6eddbedecbc9f45188a42461f343527ebf78a4a0de339f5becb363609073001-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4612064450c166662409aea64524cf5b7b084c1f1eaaf704034f5a2508e6ccf5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4612064450c166662409aea64524cf5b7b084c1f1eaaf704034f5a2508e6ccf5-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504671);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204707), (SELECT id FROM banknote_issues WHERE numista_issue_id = 522526), 60313943,
     'AU', 1, FALSE, 'E 9809634',
     NULL, 'Auction 107', 19.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/fe2b316a474c45d3b777691daa7dd35ee562befb2ea82e17490a75e6ab9425f4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fe2b316a474c45d3b777691daa7dd35ee562befb2ea82e17490a75e6ab9425f4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9f600a98a32c9cf1fd7f6e340ac3b6c8e8c1c7253874dec7dd67ef9794a330c8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9f600a98a32c9cf1fd7f6e340ac3b6c8e8c1c7253874dec7dd67ef9794a330c8-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='E 9809634', notes=NULL,
    public_notes='Auction 107', purchase_price=19.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/fe2b316a474c45d3b777691daa7dd35ee562befb2ea82e17490a75e6ab9425f4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fe2b316a474c45d3b777691daa7dd35ee562befb2ea82e17490a75e6ab9425f4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9f600a98a32c9cf1fd7f6e340ac3b6c8e8c1c7253874dec7dd67ef9794a330c8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9f600a98a32c9cf1fd7f6e340ac3b6c8e8c1c7253874dec7dd67ef9794a330c8-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 522526);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204734), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504941), 60312088,
     'UNC', 1, FALSE, '204734',
     NULL, 'Auction 104', 18.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/172b6b0fd7fb9642e5f94e3a5991769d7ae9296e33b21c1a82a2ac1a9ae2ccd3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/172b6b0fd7fb9642e5f94e3a5991769d7ae9296e33b21c1a82a2ac1a9ae2ccd3-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c68e658ee2326b46769cb09b361b93a5603cb38203a6680b07f327a6bd90c6be.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c68e658ee2326b46769cb09b361b93a5603cb38203a6680b07f327a6bd90c6be-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='204734', notes=NULL,
    public_notes='Auction 104', purchase_price=18.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/172b6b0fd7fb9642e5f94e3a5991769d7ae9296e33b21c1a82a2ac1a9ae2ccd3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/172b6b0fd7fb9642e5f94e3a5991769d7ae9296e33b21c1a82a2ac1a9ae2ccd3-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c68e658ee2326b46769cb09b361b93a5603cb38203a6680b07f327a6bd90c6be.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c68e658ee2326b46769cb09b361b93a5603cb38203a6680b07f327a6bd90c6be-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504941);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204738), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504948), 73678507,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.75, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.75,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504948);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204746), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504973), 51234756,
     'UNC', 1, FALSE, 'AT 1915134 A',
     NULL, NULL, 2.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AT 1915134 A', notes=NULL,
    public_notes=NULL, purchase_price=2.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504973);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204746), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504973), 58854484,
     'UNC', 1, FALSE, 'A 08434803 A',
     NULL, 'Auction 97', 2.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a09b793a08374beb235fe8db0be406eb690cf6e143bd468b83f8aa697d0145c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a09b793a08374beb235fe8db0be406eb690cf6e143bd468b83f8aa697d0145c7-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3a63a91e967a6810b603ec462db8ec031c1671d50723afe6f6ecebeffc15bad8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3a63a91e967a6810b603ec462db8ec031c1671d50723afe6f6ecebeffc15bad8-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 08434803 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a09b793a08374beb235fe8db0be406eb690cf6e143bd468b83f8aa697d0145c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a09b793a08374beb235fe8db0be406eb690cf6e143bd468b83f8aa697d0145c7-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3a63a91e967a6810b603ec462db8ec031c1671d50723afe6f6ecebeffc15bad8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3a63a91e967a6810b603ec462db8ec031c1671d50723afe6f6ecebeffc15bad8-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504973);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204746), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504973), 58854491,
     'UNC', 1, FALSE, 'A 08434815 A',
     NULL, 'Auction 97', 2.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/159abf5514f88bd71b4778bd87066bdd2594d8b4ae8646a3bc1ab4fc04073f2c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/159abf5514f88bd71b4778bd87066bdd2594d8b4ae8646a3bc1ab4fc04073f2c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4569c01da6bcec1f1ee4737e1b094121b48f63c6bd786df0b704b77f056a1fbf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4569c01da6bcec1f1ee4737e1b094121b48f63c6bd786df0b704b77f056a1fbf-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 08434815 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/159abf5514f88bd71b4778bd87066bdd2594d8b4ae8646a3bc1ab4fc04073f2c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/159abf5514f88bd71b4778bd87066bdd2594d8b4ae8646a3bc1ab4fc04073f2c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4569c01da6bcec1f1ee4737e1b094121b48f63c6bd786df0b704b77f056a1fbf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4569c01da6bcec1f1ee4737e1b094121b48f63c6bd786df0b704b77f056a1fbf-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504973);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204746), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504973), 58854499,
     'UNC', 1, FALSE, 'A 08434821 A',
     NULL, 'Auction 97', 2.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0bcdb4cd69492698cf0364798c07465f55484758aab2761d4d9fd439c8d59c1b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0bcdb4cd69492698cf0364798c07465f55484758aab2761d4d9fd439c8d59c1b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/67c36ac452e60dd49a314608e1b036955468098484e3242364408c4ca76814e1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/67c36ac452e60dd49a314608e1b036955468098484e3242364408c4ca76814e1-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 08434821 A', notes=NULL,
    public_notes='Auction 97', purchase_price=2.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0bcdb4cd69492698cf0364798c07465f55484758aab2761d4d9fd439c8d59c1b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0bcdb4cd69492698cf0364798c07465f55484758aab2761d4d9fd439c8d59c1b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/67c36ac452e60dd49a314608e1b036955468098484e3242364408c4ca76814e1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/67c36ac452e60dd49a314608e1b036955468098484e3242364408c4ca76814e1-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504973);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204747), (SELECT id FROM banknote_issues WHERE numista_issue_id = 504975), 51232228,
     'UNC', 1, FALSE, 'FB 40237989',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FB 40237989', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 504975);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204777), (SELECT id FROM banknote_issues WHERE numista_issue_id = 733014), 76530903,
     'UNC', 1, FALSE, 'AA 000000',
     NULL, 'Pinholes', 1.99, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=1.99,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 733014);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204777), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505061), 76530907,
     'UNC', 1, FALSE, 'AD 319968',
     NULL, NULL, 2.18, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AD 319968', notes=NULL,
    public_notes=NULL, purchase_price=2.18,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505061);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204798), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505175), 51235759,
     'UNC', 2, FALSE, NULL,
     NULL, NULL, 5.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=2, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=5.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505175);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204799), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505176), 60312256,
     'UNC', 1, FALSE, 'E 246 014088',
     NULL, 'Auction 104', 18.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/ae756f6666454fc01532c1d75dc302e75b06ff718bbfcd1677d1df3ed3821ee8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ae756f6666454fc01532c1d75dc302e75b06ff718bbfcd1677d1df3ed3821ee8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/863738f9ef639a865fca708da7949d0535fbba41dfa93e40169f637ca81d6dbe.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/863738f9ef639a865fca708da7949d0535fbba41dfa93e40169f637ca81d6dbe-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E 246 014088', notes=NULL,
    public_notes='Auction 104', purchase_price=18.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/ae756f6666454fc01532c1d75dc302e75b06ff718bbfcd1677d1df3ed3821ee8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ae756f6666454fc01532c1d75dc302e75b06ff718bbfcd1677d1df3ed3821ee8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/863738f9ef639a865fca708da7949d0535fbba41dfa93e40169f637ca81d6dbe.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/863738f9ef639a865fca708da7949d0535fbba41dfa93e40169f637ca81d6dbe-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505176);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204799), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505176), 60314019,
     'AU', 1, FALSE, 'E 304 089820',
     NULL, 'Auction 107', 11.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/85643237ef1004662f99cbe20672876c87021e6f065df6d0677ec0e679324c0a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/85643237ef1004662f99cbe20672876c87021e6f065df6d0677ec0e679324c0a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/931d594793540301b94484dab69d756e9bdcaaca9128b0cca804af6b91e7aaf3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/931d594793540301b94484dab69d756e9bdcaaca9128b0cca804af6b91e7aaf3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='E 304 089820', notes=NULL,
    public_notes='Auction 107', purchase_price=11.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/85643237ef1004662f99cbe20672876c87021e6f065df6d0677ec0e679324c0a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/85643237ef1004662f99cbe20672876c87021e6f065df6d0677ec0e679324c0a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/931d594793540301b94484dab69d756e9bdcaaca9128b0cca804af6b91e7aaf3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/931d594793540301b94484dab69d756e9bdcaaca9128b0cca804af6b91e7aaf3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505176);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204838), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505268), 51235089,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 1.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=1.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505268);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204854), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505290), 51433117,
     'UNC', 1, FALSE, 'AK 15945370',
     NULL, NULL, 10.66, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AK 15945370', notes=NULL,
    public_notes=NULL, purchase_price=10.66,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505290);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204863), (SELECT id FROM banknote_issues WHERE numista_issue_id = 566709), 75513890,
     'UNC', 1, FALSE, 'A0992M 626528M',
     NULL, 'Auction 172', 58.2, 'EUR',
     'PMG', '67', '2431064-008',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/6355abab81ae6d68a21ef7423037958858b983ec37808a21bb05e866a8979971.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6355abab81ae6d68a21ef7423037958858b983ec37808a21bb05e866a8979971-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/696f40ce445152ef7ac39b50b9d7a3c6030a21d0e7c714201d58747f48c75aaa.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/696f40ce445152ef7ac39b50b9d7a3c6030a21d0e7c714201d58747f48c75aaa-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A0992M 626528M', notes=NULL,
    public_notes='Auction 172', purchase_price=58.2,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2431064-008',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/6355abab81ae6d68a21ef7423037958858b983ec37808a21bb05e866a8979971.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6355abab81ae6d68a21ef7423037958858b983ec37808a21bb05e866a8979971-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/696f40ce445152ef7ac39b50b9d7a3c6030a21d0e7c714201d58747f48c75aaa.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/696f40ce445152ef7ac39b50b9d7a3c6030a21d0e7c714201d58747f48c75aaa-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 566709);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204866), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505355), 51733620,
     'UNC', 1, FALSE, 'DE 0934151',
     NULL, NULL, 0.59, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DE 0934151', notes=NULL,
    public_notes=NULL, purchase_price=0.59,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505355);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204867), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505359), 51733642,
     'UNC', 1, FALSE, 'CM 3302990',
     NULL, NULL, 0.84, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CM 3302990', notes=NULL,
    public_notes=NULL, purchase_price=0.84,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505359);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204868), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505361), 51733661,
     'UNC', 1, FALSE, 'DA 3407085',
     NULL, NULL, 1.02, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DA 3407085', notes=NULL,
    public_notes=NULL, purchase_price=1.02,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505361);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204875), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505374), 60314187,
     'UNC', 1, FALSE, 'U 011139304',
     NULL, 'Auction 107', 17.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2c0e152dec71fe67594b674e503b1e030ec24d0cffceadf566fa3ecf0ca9a902.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c0e152dec71fe67594b674e503b1e030ec24d0cffceadf566fa3ecf0ca9a902-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4f4907493f6d6280d882c688203190e463e91f60441a901c3bef4eb513694980.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4f4907493f6d6280d882c688203190e463e91f60441a901c3bef4eb513694980-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='U 011139304', notes=NULL,
    public_notes='Auction 107', purchase_price=17.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2c0e152dec71fe67594b674e503b1e030ec24d0cffceadf566fa3ecf0ca9a902.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c0e152dec71fe67594b674e503b1e030ec24d0cffceadf566fa3ecf0ca9a902-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4f4907493f6d6280d882c688203190e463e91f60441a901c3bef4eb513694980.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4f4907493f6d6280d882c688203190e463e91f60441a901c3bef4eb513694980-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505374);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204875), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505374), 69664402,
     'UNC', 1, FALSE, 'R025298247',
     NULL, 'Auction 124', 58, 'EUR',
     'PMG', '66', '1916225-055',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/13ac24c0b8a5da672375a85fd5a403f2a9969ec1657c4e1907c1c63a370bae14.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/13ac24c0b8a5da672375a85fd5a403f2a9969ec1657c4e1907c1c63a370bae14-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/606b6807700800d1d09343879abc3667a4a12281d9dccd21cfa332387ef1f06f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/606b6807700800d1d09343879abc3667a4a12281d9dccd21cfa332387ef1f06f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='R025298247', notes=NULL,
    public_notes='Auction 124', purchase_price=58,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1916225-055',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/13ac24c0b8a5da672375a85fd5a403f2a9969ec1657c4e1907c1c63a370bae14.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/13ac24c0b8a5da672375a85fd5a403f2a9969ec1657c4e1907c1c63a370bae14-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/606b6807700800d1d09343879abc3667a4a12281d9dccd21cfa332387ef1f06f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/606b6807700800d1d09343879abc3667a4a12281d9dccd21cfa332387ef1f06f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505374);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204892), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505425), 77628475,
     'UNC', 1, FALSE, 'B 063524029',
     NULL, 'Auction 183', 26.17, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a8faa9c9ac84adb9a4cef44c619b84ca73c0aacc3c3be797278a9b2dd3266b3d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a8faa9c9ac84adb9a4cef44c619b84ca73c0aacc3c3be797278a9b2dd3266b3d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4d7a9bfb25cc9ba4434f5662263ef65feaff42975a0c0bca6036c3a1a25aaab3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4d7a9bfb25cc9ba4434f5662263ef65feaff42975a0c0bca6036c3a1a25aaab3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 063524029', notes=NULL,
    public_notes='Auction 183', purchase_price=26.17,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a8faa9c9ac84adb9a4cef44c619b84ca73c0aacc3c3be797278a9b2dd3266b3d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a8faa9c9ac84adb9a4cef44c619b84ca73c0aacc3c3be797278a9b2dd3266b3d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4d7a9bfb25cc9ba4434f5662263ef65feaff42975a0c0bca6036c3a1a25aaab3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4d7a9bfb25cc9ba4434f5662263ef65feaff42975a0c0bca6036c3a1a25aaab3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505425);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204899), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505438), 51231398,
     'UNC', 1, FALSE, '5B 4987210',
     NULL, NULL, 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='5B 4987210', notes=NULL,
    public_notes=NULL, purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505438);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204901), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505442), 78342655,
     'AU', 1, FALSE, 'HX 03199',
     NULL, 'Auction 189', 154.52, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='HX 03199', notes=NULL,
    public_notes='Auction 189', purchase_price=154.52,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505442);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204942), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505556), 58872019,
     'UNC', 1, FALSE, 'A 1166078',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b92ed47ec90ae8c534e63b564dbdb4a6dda5b83d3001257b43b7dfe09228da29.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b92ed47ec90ae8c534e63b564dbdb4a6dda5b83d3001257b43b7dfe09228da29-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/726e39f85ebfd3b2163125efeb6911c91f7b25e07ee046f3b582e4c5faac1241.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/726e39f85ebfd3b2163125efeb6911c91f7b25e07ee046f3b582e4c5faac1241-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 1166078', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b92ed47ec90ae8c534e63b564dbdb4a6dda5b83d3001257b43b7dfe09228da29.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b92ed47ec90ae8c534e63b564dbdb4a6dda5b83d3001257b43b7dfe09228da29-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/726e39f85ebfd3b2163125efeb6911c91f7b25e07ee046f3b582e4c5faac1241.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/726e39f85ebfd3b2163125efeb6911c91f7b25e07ee046f3b582e4c5faac1241-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505556);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204942), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505556), 58872025,
     'UNC', 1, FALSE, 'A 1166079',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9be9989fcb37a32e69794e328e31932c04ec8c1eb7bce6000f1b1635dfc8525b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9be9989fcb37a32e69794e328e31932c04ec8c1eb7bce6000f1b1635dfc8525b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ea8401feac9090064825149dd0c29fa4537fa7d4a9163506bd247502eb6e426b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ea8401feac9090064825149dd0c29fa4537fa7d4a9163506bd247502eb6e426b-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 1166079', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9be9989fcb37a32e69794e328e31932c04ec8c1eb7bce6000f1b1635dfc8525b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9be9989fcb37a32e69794e328e31932c04ec8c1eb7bce6000f1b1635dfc8525b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ea8401feac9090064825149dd0c29fa4537fa7d4a9163506bd247502eb6e426b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ea8401feac9090064825149dd0c29fa4537fa7d4a9163506bd247502eb6e426b-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505556);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204942), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505556), 58872029,
     'UNC', 1, FALSE, 'A 1166080',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f3707c0ff28274a72ef308b835b234e2b7cc229d0762071653fe9f6eb55a84ff.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f3707c0ff28274a72ef308b835b234e2b7cc229d0762071653fe9f6eb55a84ff-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5480f23763251a4939d0511406ed810823441312a5e166e99d17ca194284c125.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5480f23763251a4939d0511406ed810823441312a5e166e99d17ca194284c125-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 1166080', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f3707c0ff28274a72ef308b835b234e2b7cc229d0762071653fe9f6eb55a84ff.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f3707c0ff28274a72ef308b835b234e2b7cc229d0762071653fe9f6eb55a84ff-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5480f23763251a4939d0511406ed810823441312a5e166e99d17ca194284c125.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5480f23763251a4939d0511406ed810823441312a5e166e99d17ca194284c125-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505556);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204942), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505556), 58872040,
     'UNC', 1, FALSE, 'A 1166081',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/63f2ce5e2c38aa68bae7e7dff227274fae795b6a32bdf2236846b25f77f1ae61.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/63f2ce5e2c38aa68bae7e7dff227274fae795b6a32bdf2236846b25f77f1ae61-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/465f6f95154d2677bccc06d518526d078a85e4e771163e2e887c2dccc35fd68a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/465f6f95154d2677bccc06d518526d078a85e4e771163e2e887c2dccc35fd68a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 1166081', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/63f2ce5e2c38aa68bae7e7dff227274fae795b6a32bdf2236846b25f77f1ae61.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/63f2ce5e2c38aa68bae7e7dff227274fae795b6a32bdf2236846b25f77f1ae61-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/465f6f95154d2677bccc06d518526d078a85e4e771163e2e887c2dccc35fd68a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/465f6f95154d2677bccc06d518526d078a85e4e771163e2e887c2dccc35fd68a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505556);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204942), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505556), 58872041,
     'UNC', 1, FALSE, 'A 1166082',
     NULL, 'Auction 97', 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a2cb96edb7e8012c682f219a69326e328ba723d7f5258aec85a81e4db59ae830.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2cb96edb7e8012c682f219a69326e328ba723d7f5258aec85a81e4db59ae830-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b4026437ac7986fb4d5dad64ebed6b31e9cae5d575b9ff17e302b5f127dd6540.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b4026437ac7986fb4d5dad64ebed6b31e9cae5d575b9ff17e302b5f127dd6540-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 1166082', notes=NULL,
    public_notes='Auction 97', purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a2cb96edb7e8012c682f219a69326e328ba723d7f5258aec85a81e4db59ae830.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2cb96edb7e8012c682f219a69326e328ba723d7f5258aec85a81e4db59ae830-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b4026437ac7986fb4d5dad64ebed6b31e9cae5d575b9ff17e302b5f127dd6540.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b4026437ac7986fb4d5dad64ebed6b31e9cae5d575b9ff17e302b5f127dd6540-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505556);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204942), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505556), 60313634,
     'UNC', 1, FALSE, 'A 1099422',
     NULL, 'Auction 107', 27.95, 'EUR',
     'PCGS Banknote', '66', '629529.66/84768291',
     '["OPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5be0eabaff98ef8dd31f683200fa2fb8a0dfa05087e885f896b8599ed7f65272.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5be0eabaff98ef8dd31f683200fa2fb8a0dfa05087e885f896b8599ed7f65272-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/12ec3928cec9bf53da1d87a9e086d5f5246eb3440ab44a241c891758895a62ed.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/12ec3928cec9bf53da1d87a9e086d5f5246eb3440ab44a241c891758895a62ed-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 1099422', notes=NULL,
    public_notes='Auction 107', purchase_price=27.95,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='66', cert_number='629529.66/84768291',
    grading_designations='["OPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5be0eabaff98ef8dd31f683200fa2fb8a0dfa05087e885f896b8599ed7f65272.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5be0eabaff98ef8dd31f683200fa2fb8a0dfa05087e885f896b8599ed7f65272-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/12ec3928cec9bf53da1d87a9e086d5f5246eb3440ab44a241c891758895a62ed.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/12ec3928cec9bf53da1d87a9e086d5f5246eb3440ab44a241c891758895a62ed-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505556);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204945), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505561), 51275223,
     'UNC', 1, FALSE, 'A 0055613',
     NULL, NULL, 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 0055613', notes=NULL,
    public_notes=NULL, purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505561);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204972), (SELECT id FROM banknote_issues WHERE numista_issue_id = 512767), 51232942,
     'UNC', 1, FALSE, 'BC 52162422',
     NULL, NULL, 1.28, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BC 52162422', notes=NULL,
    public_notes=NULL, purchase_price=1.28,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 512767);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204995), (SELECT id FROM banknote_issues WHERE numista_issue_id = 505909), 51233149,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 9.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=9.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 505909);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 204995), (SELECT id FROM banknote_issues WHERE numista_issue_id = 509026), 56166990,
     'UNC', 1, FALSE, 'A/I 003204',
     NULL, NULL, 9.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/I 003204', notes=NULL,
    public_notes=NULL, purchase_price=9.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 509026);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205013), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506072), 51233716,
     'UNC', 1, FALSE, 'AO 32557309',
     NULL, NULL, 6.04, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AO 32557309', notes=NULL,
    public_notes=NULL, purchase_price=6.04,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506072);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205028), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506145), 51234034,
     'UNC', 1, FALSE, 'B 5100011218 B',
     NULL, NULL, 1.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 5100011218 B', notes=NULL,
    public_notes=NULL, purchase_price=1.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506145);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205080), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506483), 76392749,
     'UNC', 1, FALSE, 'J1488321',
     NULL, NULL, 21.96, 'EUR',
     'PMG', '67', '8075468-080',
     '["EPQ"]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J1488321', notes=NULL,
    public_notes=NULL, purchase_price=21.96,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='8075468-080',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506483);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205091), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506532), 55950531,
     'UNC', 1, FALSE, 'X00 Y030993',
     'The nominee for the “Bank Note of the Year Award” in 2012', NULL, 7.73, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='X00 Y030993', notes='The nominee for the “Bank Note of the Year Award” in 2012',
    public_notes=NULL, purchase_price=7.73,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506532);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205096), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506558), 51233632,
     'UNC', 1, FALSE, 'A/113316029',
     NULL, NULL, 1.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/113316029', notes=NULL,
    public_notes=NULL, purchase_price=1.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506558);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205097), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506559), 51233638,
     'UNC', 1, FALSE, 'A 13926224',
     NULL, NULL, 1.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 13926224', notes=NULL,
    public_notes=NULL, purchase_price=1.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506559);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205146), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506758), 58870662,
     'UNC', 1, FALSE, '2304A 028615',
     NULL, 'Auction 97', 6.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a77f1b16d56bda75e262bb828741297fb30684625920e181b215b42611d90298.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a77f1b16d56bda75e262bb828741297fb30684625920e181b215b42611d90298-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/acc97c81dac0ec2f39a2c9ec49ae2bb4708b0cf36fdc09b9234f57b3c13c3bdf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/acc97c81dac0ec2f39a2c9ec49ae2bb4708b0cf36fdc09b9234f57b3c13c3bdf-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='2304A 028615', notes=NULL,
    public_notes='Auction 97', purchase_price=6.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a77f1b16d56bda75e262bb828741297fb30684625920e181b215b42611d90298.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a77f1b16d56bda75e262bb828741297fb30684625920e181b215b42611d90298-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/acc97c81dac0ec2f39a2c9ec49ae2bb4708b0cf36fdc09b9234f57b3c13c3bdf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/acc97c81dac0ec2f39a2c9ec49ae2bb4708b0cf36fdc09b9234f57b3c13c3bdf-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506758);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205196), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511186), 51733986,
     'UNC', 1, FALSE, 'Aa 0223746',
     NULL, NULL, 3.37, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Aa 0223746', notes=NULL,
    public_notes=NULL, purchase_price=3.37,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511186);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205201), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506872), 51232419,
     'UNC', 1, FALSE, 'AJ 3248208',
     NULL, NULL, 1.91, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AJ 3248208', notes=NULL,
    public_notes=NULL, purchase_price=1.91,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506872);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205202), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506873), 51232381,
     'UNC', 1, FALSE, 'AG 2254513',
     NULL, NULL, 1.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AG 2254513', notes=NULL,
    public_notes=NULL, purchase_price=1.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506873);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205208), (SELECT id FROM banknote_issues WHERE numista_issue_id = 506880), 51274799,
     'UNC', 1, FALSE, 'AK 01117529',
     NULL, NULL, 2.74, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AK 01117529', notes=NULL,
    public_notes=NULL, purchase_price=2.74,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 506880);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205255), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507086), 51234205,
     'UNC', 1, FALSE, 'BC 474653',
     NULL, NULL, 25.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BC 474653', notes=NULL,
    public_notes=NULL, purchase_price=25.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507086);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205276), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507177), 51274763,
     'UNC', 1, FALSE, 'GB 3439283',
     NULL, NULL, 2.45, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GB 3439283', notes=NULL,
    public_notes=NULL, purchase_price=2.45,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507177);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205282), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507200), 51271589,
     'UNC', 1, FALSE, '08157331',
     NULL, NULL, 0.83, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='08157331', notes=NULL,
    public_notes=NULL, purchase_price=0.83,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507200);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205294), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507245), 51234185,
     'UNC', 1, FALSE, 'AM 445176',
     NULL, NULL, 1.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AM 445176', notes=NULL,
    public_notes=NULL, purchase_price=1.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507245);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205295), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507248), 51234178,
     'UNC', 1, FALSE, 'AJ 445176',
     NULL, NULL, 1.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AJ 445176', notes=NULL,
    public_notes=NULL, purchase_price=1.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507248);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205332), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507372), 51733447,
     'UNC', 1, FALSE, 'D 745450',
     NULL, NULL, 8.25, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D 745450', notes=NULL,
    public_notes=NULL, purchase_price=8.25,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507372);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205341), (SELECT id FROM banknote_issues WHERE numista_issue_id = 531223), 51274836,
     'UNC', 1, FALSE, 'D5 311703',
     NULL, NULL, 3.83, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D5 311703', notes=NULL,
    public_notes=NULL, purchase_price=3.83,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 531223);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205390), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507535), 51235346,
     'UNC', 1, FALSE, 'V/2 564526',
     NULL, NULL, 6.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='V/2 564526', notes=NULL,
    public_notes=NULL, purchase_price=6.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507535);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205392), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507543), 51235362,
     'UNC', 1, FALSE, 'U/I 808835',
     NULL, NULL, 2.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='U/I 808835', notes=NULL,
    public_notes=NULL, purchase_price=2.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507543);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205405), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507577), 56105737,
     'UNC', 1, FALSE, 'CF/88 313406',
     NULL, NULL, 5.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CF/88 313406', notes=NULL,
    public_notes=NULL, purchase_price=5.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507577);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205407), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507582), 78342607,
     'UNC', 1, FALSE, 'BV 147469',
     NULL, 'Auction 189', 55.16, 'EUR',
     'PMG', '55', '1915535-025',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/911de1fca55ced47460a672d677759fb53627687c7c58341640d3c5d419eeb4e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/911de1fca55ced47460a672d677759fb53627687c7c58341640d3c5d419eeb4e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6e27663ef48ec15fe07c813f481d43b4f7c678506b118ea5fda06a31eb5bb6ba.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6e27663ef48ec15fe07c813f481d43b4f7c678506b118ea5fda06a31eb5bb6ba-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BV 147469', notes=NULL,
    public_notes='Auction 189', purchase_price=55.16,
    price_currency='EUR', grading_company='PMG',
    grading_score='55', cert_number='1915535-025',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/911de1fca55ced47460a672d677759fb53627687c7c58341640d3c5d419eeb4e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/911de1fca55ced47460a672d677759fb53627687c7c58341640d3c5d419eeb4e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6e27663ef48ec15fe07c813f481d43b4f7c678506b118ea5fda06a31eb5bb6ba.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6e27663ef48ec15fe07c813f481d43b4f7c678506b118ea5fda06a31eb5bb6ba-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507582);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205413), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507594), 76530841,
     'UNC', 1, FALSE, 'AA 000000',
     NULL, NULL, 4.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 000000', notes=NULL,
    public_notes=NULL, purchase_price=4.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507594);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205413), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507593), 76530852,
     'UNC', 1, FALSE, 'GB 471210',
     NULL, NULL, 5.44, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GB 471210', notes=NULL,
    public_notes=NULL, purchase_price=5.44,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507593);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205417), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507599), 76530980,
     'UNC', 1, FALSE, 'HD 000000',
     NULL, NULL, 9.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HD 000000', notes=NULL,
    public_notes=NULL, purchase_price=9.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507599);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205417), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507598), 76530990,
     'UNC', 1, FALSE, 'HE 772121',
     NULL, NULL, 10.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HE 772121', notes=NULL,
    public_notes=NULL, purchase_price=10.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507598);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205424), (SELECT id FROM banknote_issues WHERE numista_issue_id = 912546), 76530442,
     'UNC', 1, FALSE, 'HJ 804620',
     NULL, NULL, 19.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HJ 804620', notes=NULL,
    public_notes=NULL, purchase_price=19.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 912546);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205424), (SELECT id FROM banknote_issues WHERE numista_issue_id = 912546), 76530464,
     'UNC', 1, FALSE, 'GA 000000',
     NULL, 'Pinholes', 19.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GA 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=19.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 912546);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205424), (SELECT id FROM banknote_issues WHERE numista_issue_id = 948837), 76530489,
     'UNC', 1, FALSE, 'GX 921669',
     NULL, NULL, 21.76, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GX 921669', notes=NULL,
    public_notes=NULL, purchase_price=21.76,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 948837);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205424), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507609), 76530778,
     'UNC', 1, FALSE, 'GK 925697',
     NULL, NULL, 21.76, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GK 925697', notes=NULL,
    public_notes=NULL, purchase_price=21.76,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507609);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205484), (SELECT id FROM banknote_issues WHERE numista_issue_id = 507752), 60313888,
     'UNC', 1, FALSE, '3J 3435142',
     NULL, 'Auction 107', 16.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9ba63961c45227b5fe382e82fd4cbf2efa1ee848c31c0aa1ef0848ffa285caa8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9ba63961c45227b5fe382e82fd4cbf2efa1ee848c31c0aa1ef0848ffa285caa8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6f8e288814d43faae5be8a6f43fef769e68e55ca2bee5e79f9d60c8e837649fa.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6f8e288814d43faae5be8a6f43fef769e68e55ca2bee5e79f9d60c8e837649fa-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='3J 3435142', notes=NULL,
    public_notes='Auction 107', purchase_price=16.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9ba63961c45227b5fe382e82fd4cbf2efa1ee848c31c0aa1ef0848ffa285caa8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9ba63961c45227b5fe382e82fd4cbf2efa1ee848c31c0aa1ef0848ffa285caa8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6f8e288814d43faae5be8a6f43fef769e68e55ca2bee5e79f9d60c8e837649fa.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6f8e288814d43faae5be8a6f43fef769e68e55ca2bee5e79f9d60c8e837649fa-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 507752);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205589), (SELECT id FROM banknote_issues WHERE numista_issue_id = 565681), 73760657,
     'UNC', 1, FALSE, 'C8851433 5891433',
     NULL, 'Auction 170', 68, 'EUR',
     'PMG', '66', '1916442-006',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/85cdd513496f1bffc6a186cf23460f25e9bb7454af664cc4067640d02659bc86.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/85cdd513496f1bffc6a186cf23460f25e9bb7454af664cc4067640d02659bc86-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/832f52b94441bfe1d90625b163e1842f02c71280919e1f599b164e2b0eb01187.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/832f52b94441bfe1d90625b163e1842f02c71280919e1f599b164e2b0eb01187-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C8851433 5891433', notes=NULL,
    public_notes='Auction 170', purchase_price=68,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1916442-006',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/85cdd513496f1bffc6a186cf23460f25e9bb7454af664cc4067640d02659bc86.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/85cdd513496f1bffc6a186cf23460f25e9bb7454af664cc4067640d02659bc86-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/832f52b94441bfe1d90625b163e1842f02c71280919e1f599b164e2b0eb01187.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/832f52b94441bfe1d90625b163e1842f02c71280919e1f599b164e2b0eb01187-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 565681);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205596), (SELECT id FROM banknote_issues WHERE numista_issue_id = 508510), 59828049,
     'UNC', 1, FALSE, '2626106337',
     NULL, 'Auction 102', 14.71, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/834a441cc50e9dcf67771d9870f4bb17e892c579c090438182624f8705fe31c4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/834a441cc50e9dcf67771d9870f4bb17e892c579c090438182624f8705fe31c4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1871b1c1f1eb8186621e2010cc7cbcfabab2fdb510432dd87b94612b243e8f01.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1871b1c1f1eb8186621e2010cc7cbcfabab2fdb510432dd87b94612b243e8f01-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='2626106337', notes=NULL,
    public_notes='Auction 102', purchase_price=14.71,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/834a441cc50e9dcf67771d9870f4bb17e892c579c090438182624f8705fe31c4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/834a441cc50e9dcf67771d9870f4bb17e892c579c090438182624f8705fe31c4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1871b1c1f1eb8186621e2010cc7cbcfabab2fdb510432dd87b94612b243e8f01.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1871b1c1f1eb8186621e2010cc7cbcfabab2fdb510432dd87b94612b243e8f01-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 508510);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205642), (SELECT id FROM banknote_issues WHERE numista_issue_id = 508745), 69704360,
     'UNC', 1, FALSE, 'N 816316',
     NULL, 'Auction 115', 42, 'EUR',
     'PMG', '66', '1828667-008',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c23fa080f680263fe55ff1706923f3ee251325134e466babdf8183b7f2228ea1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c23fa080f680263fe55ff1706923f3ee251325134e466babdf8183b7f2228ea1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e9213ee72cdb771a4d88d2d1fb2c53c22f515521fa2dc6be891bdf8a2496ec16.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e9213ee72cdb771a4d88d2d1fb2c53c22f515521fa2dc6be891bdf8a2496ec16-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='N 816316', notes=NULL,
    public_notes='Auction 115', purchase_price=42,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1828667-008',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c23fa080f680263fe55ff1706923f3ee251325134e466babdf8183b7f2228ea1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c23fa080f680263fe55ff1706923f3ee251325134e466babdf8183b7f2228ea1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e9213ee72cdb771a4d88d2d1fb2c53c22f515521fa2dc6be891bdf8a2496ec16.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e9213ee72cdb771a4d88d2d1fb2c53c22f515521fa2dc6be891bdf8a2496ec16-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 508745);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205672), (SELECT id FROM banknote_issues WHERE numista_issue_id = 508906), 51234971,
     'UNC', 1, FALSE, 'AC 8998914',
     NULL, NULL, 0.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 8998914', notes=NULL,
    public_notes=NULL, purchase_price=0.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 508906);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205679), (SELECT id FROM banknote_issues WHERE numista_issue_id = 508935), 51274550,
     'UNC', 1, FALSE, 'BB 82131a72',
     NULL, NULL, 3.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BB 82131a72', notes=NULL,
    public_notes=NULL, purchase_price=3.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 508935);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205700), (SELECT id FROM banknote_issues WHERE numista_issue_id = 738488), 60313848,
     'AU', 1, FALSE, '1B 0183306',
     NULL, 'Auction 107', 13.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/edd0de65a8d82d210fbc5ae06bf4baafc99d93723043cfd840a3b0d507b234cd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/edd0de65a8d82d210fbc5ae06bf4baafc99d93723043cfd840a3b0d507b234cd-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/08af0ba1c7eb3d3f8713fe5a64414170ab43821bc2dcc6a7621c25d2fba3bd62.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/08af0ba1c7eb3d3f8713fe5a64414170ab43821bc2dcc6a7621c25d2fba3bd62-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='1B 0183306', notes=NULL,
    public_notes='Auction 107', purchase_price=13.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/edd0de65a8d82d210fbc5ae06bf4baafc99d93723043cfd840a3b0d507b234cd.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/edd0de65a8d82d210fbc5ae06bf4baafc99d93723043cfd840a3b0d507b234cd-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/08af0ba1c7eb3d3f8713fe5a64414170ab43821bc2dcc6a7621c25d2fba3bd62.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/08af0ba1c7eb3d3f8713fe5a64414170ab43821bc2dcc6a7621c25d2fba3bd62-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 738488);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205730), (SELECT id FROM banknote_issues WHERE numista_issue_id = 567487), 60314337,
     'UNC', 1, FALSE, 'B941E 244371E',
     NULL, 'Auction 107', 34.05, 'EUR',
     'PMG', '67', '1912618-059',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/212a4d005bfebd29794994d46025696591de4088ae02a8f5801622b060173458.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/212a4d005bfebd29794994d46025696591de4088ae02a8f5801622b060173458-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/63d76b9e2f43d1322132533bbef1f83f84d0c0796e592ea57b25481aa9b07647.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/63d76b9e2f43d1322132533bbef1f83f84d0c0796e592ea57b25481aa9b07647-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B941E 244371E', notes=NULL,
    public_notes='Auction 107', purchase_price=34.05,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1912618-059',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/212a4d005bfebd29794994d46025696591de4088ae02a8f5801622b060173458.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/212a4d005bfebd29794994d46025696591de4088ae02a8f5801622b060173458-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/63d76b9e2f43d1322132533bbef1f83f84d0c0796e592ea57b25481aa9b07647.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/63d76b9e2f43d1322132533bbef1f83f84d0c0796e592ea57b25481aa9b07647-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 567487);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205791), (SELECT id FROM banknote_issues WHERE numista_issue_id = 509240), 59828302,
     'UNC', 1, FALSE, 'F031336',
     NULL, 'Auction 102', 31.99, 'EUR',
     'PMG', '65', '1914814-025',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/873d12e79119039d4c986c1e03b3f08ef6b581cad4cd0466ab78deeead7fc2d5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/873d12e79119039d4c986c1e03b3f08ef6b581cad4cd0466ab78deeead7fc2d5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c837ab2f71f03255abc5aad23f9cf79ac76d65d881dc3beb8dfd5a74b98f85ca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c837ab2f71f03255abc5aad23f9cf79ac76d65d881dc3beb8dfd5a74b98f85ca-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F031336', notes=NULL,
    public_notes='Auction 102', purchase_price=31.99,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1914814-025',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/873d12e79119039d4c986c1e03b3f08ef6b581cad4cd0466ab78deeead7fc2d5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/873d12e79119039d4c986c1e03b3f08ef6b581cad4cd0466ab78deeead7fc2d5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c837ab2f71f03255abc5aad23f9cf79ac76d65d881dc3beb8dfd5a74b98f85ca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c837ab2f71f03255abc5aad23f9cf79ac76d65d881dc3beb8dfd5a74b98f85ca-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 509240);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205791), (SELECT id FROM banknote_issues WHERE numista_issue_id = 509242), 59828317,
     'UNC', 1, FALSE, 'B586238',
     NULL, 'Auction 102', 31.99, 'EUR',
     'PMG', '66', '1914814-026',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c37033201941ff4bceb419034d8b22480a660763c0abc670dc5c961d5bf5e1d1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c37033201941ff4bceb419034d8b22480a660763c0abc670dc5c961d5bf5e1d1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6e0340f4fd066b786da39d032520fa0963aa97296be686c0741e9a08e2255aa3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6e0340f4fd066b786da39d032520fa0963aa97296be686c0741e9a08e2255aa3-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B586238', notes=NULL,
    public_notes='Auction 102', purchase_price=31.99,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1914814-026',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c37033201941ff4bceb419034d8b22480a660763c0abc670dc5c961d5bf5e1d1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c37033201941ff4bceb419034d8b22480a660763c0abc670dc5c961d5bf5e1d1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6e0340f4fd066b786da39d032520fa0963aa97296be686c0741e9a08e2255aa3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6e0340f4fd066b786da39d032520fa0963aa97296be686c0741e9a08e2255aa3-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 509242);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205825), (SELECT id FROM banknote_issues WHERE numista_issue_id = 509448), 73760632,
     'UNC', 1, FALSE, 'A4781F 5622945',
     NULL, 'Auction 170', 72.51, 'EUR',
     'PMG', '66', '1916442-016',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/96b3ddb33e967376528f291eecf776b849d28c7ed02c3ef66abd395848316ad1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/96b3ddb33e967376528f291eecf776b849d28c7ed02c3ef66abd395848316ad1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6d7654bebffbc2832e5f01df5cf76230d93cd2decb677661fb927bb600ed6c84.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6d7654bebffbc2832e5f01df5cf76230d93cd2decb677661fb927bb600ed6c84-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A4781F 5622945', notes=NULL,
    public_notes='Auction 170', purchase_price=72.51,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1916442-016',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/96b3ddb33e967376528f291eecf776b849d28c7ed02c3ef66abd395848316ad1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/96b3ddb33e967376528f291eecf776b849d28c7ed02c3ef66abd395848316ad1-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6d7654bebffbc2832e5f01df5cf76230d93cd2decb677661fb927bb600ed6c84.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6d7654bebffbc2832e5f01df5cf76230d93cd2decb677661fb927bb600ed6c84-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 509448);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205827), NULL, 73678594,
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
    issue_id=NULL;

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205860), (SELECT id FROM banknote_issues WHERE numista_issue_id = 509613), 51235542,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.69, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.69,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 509613);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205902), (SELECT id FROM banknote_issues WHERE numista_issue_id = 509786), 51230973,
     'UNC', 1, FALSE, '51590283 A',
     NULL, NULL, 0.77, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='51590283 A', notes=NULL,
    public_notes=NULL, purchase_price=0.77,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 509786);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205903), (SELECT id FROM banknote_issues WHERE numista_issue_id = 509787), 76392814,
     'UNC', 1, FALSE, 'PK 281316',
     NULL, NULL, 45.64, 'EUR',
     'PMG', '67', '8083909-082',
     '["EPQ"]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='PK 281316', notes=NULL,
    public_notes=NULL, purchase_price=45.64,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='8083909-082',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 509787);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 205953), (SELECT id FROM banknote_issues WHERE numista_issue_id = 510101), 78342932,
     'UNC', 1, FALSE, 'D 999557',
     NULL, 'Auction 189', 26.6, 'EUR',
     'PMG', '66', '1917537-015',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2d1824387978e61a9d868792c8d22844af8c05c8871f297bdad79ddd665f954a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d1824387978e61a9d868792c8d22844af8c05c8871f297bdad79ddd665f954a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D 999557', notes=NULL,
    public_notes='Auction 189', purchase_price=26.6,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1917537-015',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2d1824387978e61a9d868792c8d22844af8c05c8871f297bdad79ddd665f954a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2d1824387978e61a9d868792c8d22844af8c05c8871f297bdad79ddd665f954a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 510101);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206006), (SELECT id FROM banknote_issues WHERE numista_issue_id = 510364), 51272483,
     'UNC', 1, FALSE, 'AD 97228335',
     NULL, NULL, 5.64, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AD 97228335', notes=NULL,
    public_notes=NULL, purchase_price=5.64,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 510364);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206019), (SELECT id FROM banknote_issues WHERE numista_issue_id = 510577), 51275759,
     'UNC', 1, FALSE, '34 391402',
     NULL, NULL, 2.65, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='34 391402', notes=NULL,
    public_notes=NULL, purchase_price=2.65,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 510577);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206020), (SELECT id FROM banknote_issues WHERE numista_issue_id = 510578), 51275718,
     'UNC', 1, FALSE, '84 501251',
     NULL, NULL, 3.57, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='84 501251', notes=NULL,
    public_notes=NULL, purchase_price=3.57,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 510578);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206098), (SELECT id FROM banknote_issues WHERE numista_issue_id = 521681), 51233960,
     'UNC', 1, FALSE, 'A 8445070301 A',
     NULL, NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 8445070301 A', notes=NULL,
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 521681);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206099), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511103), 51233974,
     'UNC', 1, FALSE, 'A 5422004825 A',
     NULL, NULL, 1.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 5422004825 A', notes=NULL,
    public_notes=NULL, purchase_price=1.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511103);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206100), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511108), 51233978,
     'UNC', 1, FALSE, 'A 7060050339 A',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 7060050339 A', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511108);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206137), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511181), 51274450,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 194, 'UAH',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=194,
    price_currency='UAH', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511181);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206153), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511207), 58870758,
     'UNC', 1, FALSE, '3150A 043419',
     NULL, 'Auction 97', 3.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/80db5e89f480ecd3f4dbd0950af36c88975edf9e47676226319d8d64c7c9cff0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/80db5e89f480ecd3f4dbd0950af36c88975edf9e47676226319d8d64c7c9cff0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3c9673be4f15213275fc78f123812d1b0e221d578159c9bf9ae3fd22e6b2e21c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3c9673be4f15213275fc78f123812d1b0e221d578159c9bf9ae3fd22e6b2e21c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='3150A 043419', notes=NULL,
    public_notes='Auction 97', purchase_price=3.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/80db5e89f480ecd3f4dbd0950af36c88975edf9e47676226319d8d64c7c9cff0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/80db5e89f480ecd3f4dbd0950af36c88975edf9e47676226319d8d64c7c9cff0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3c9673be4f15213275fc78f123812d1b0e221d578159c9bf9ae3fd22e6b2e21c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3c9673be4f15213275fc78f123812d1b0e221d578159c9bf9ae3fd22e6b2e21c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511207);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206177), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511281), 58870696,
     'UNC', 1, FALSE, '1076A 058411',
     NULL, 'Auction 97', 6.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/fdca601145ed87be825d16d0d82e6fbb73ed560a19d8f52f8f238652fc381ab0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fdca601145ed87be825d16d0d82e6fbb73ed560a19d8f52f8f238652fc381ab0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9bdb409ab03ff53e23a68dd02e30821d39c77f6cc14c606adb0c08b7da3763f6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9bdb409ab03ff53e23a68dd02e30821d39c77f6cc14c606adb0c08b7da3763f6-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1076A 058411', notes=NULL,
    public_notes='Auction 97', purchase_price=6.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/fdca601145ed87be825d16d0d82e6fbb73ed560a19d8f52f8f238652fc381ab0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fdca601145ed87be825d16d0d82e6fbb73ed560a19d8f52f8f238652fc381ab0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9bdb409ab03ff53e23a68dd02e30821d39c77f6cc14c606adb0c08b7da3763f6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9bdb409ab03ff53e23a68dd02e30821d39c77f6cc14c606adb0c08b7da3763f6-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511281);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206197), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511313), 60312942,
     'UNC', 1, FALSE, 'KK 184614',
     NULL, 'Auction 104', 35.84, 'EUR',
     'PMG', '66', '1913496-020',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/39113f7563fb8d8f06079f34632d32df06f06f0ab956ee62905ce68aa9dcf294.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/39113f7563fb8d8f06079f34632d32df06f06f0ab956ee62905ce68aa9dcf294-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/60d4f3fb14670d2afa95869904f9ee14530d0f80e8dcbbc56194a740e96ab238.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/60d4f3fb14670d2afa95869904f9ee14530d0f80e8dcbbc56194a740e96ab238-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='KK 184614', notes=NULL,
    public_notes='Auction 104', purchase_price=35.84,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1913496-020',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/39113f7563fb8d8f06079f34632d32df06f06f0ab956ee62905ce68aa9dcf294.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/39113f7563fb8d8f06079f34632d32df06f06f0ab956ee62905ce68aa9dcf294-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/60d4f3fb14670d2afa95869904f9ee14530d0f80e8dcbbc56194a740e96ab238.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/60d4f3fb14670d2afa95869904f9ee14530d0f80e8dcbbc56194a740e96ab238-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511313);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206217), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511340), 60312901,
     'UNC', 1, FALSE, 'E 24 306880',
     NULL, 'Auction 104', 66.34, 'EUR',
     'PMG', '67', '1910460-006',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f3b5e210d670c7dbbea622c6caf1bf2d5dbbb89b1da62cd3352e57374b31aab6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f3b5e210d670c7dbbea622c6caf1bf2d5dbbb89b1da62cd3352e57374b31aab6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b27df99b7d230b01774490f43ee27f63da276889e55e59681bf9cac140c93c28.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b27df99b7d230b01774490f43ee27f63da276889e55e59681bf9cac140c93c28-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E 24 306880', notes=NULL,
    public_notes='Auction 104', purchase_price=66.34,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1910460-006',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f3b5e210d670c7dbbea622c6caf1bf2d5dbbb89b1da62cd3352e57374b31aab6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f3b5e210d670c7dbbea622c6caf1bf2d5dbbb89b1da62cd3352e57374b31aab6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b27df99b7d230b01774490f43ee27f63da276889e55e59681bf9cac140c93c28.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b27df99b7d230b01774490f43ee27f63da276889e55e59681bf9cac140c93c28-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511340);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206220), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511345), 73760842,
     'UNC', 1, FALSE, 'THL 499534',
     NULL, 'Auction 170', 29.04, 'EUR',
     'PMG', '64', '1916635-075',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9495da95eb2a8e4c3fcba2809c6785ed84ade0b41f2eda66c3ae0203c210dd6d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9495da95eb2a8e4c3fcba2809c6785ed84ade0b41f2eda66c3ae0203c210dd6d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a3e5bcd0f7d865a34a9925c6d570899f7824257ffe1e83b65c0b5b876b8d84c4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a3e5bcd0f7d865a34a9925c6d570899f7824257ffe1e83b65c0b5b876b8d84c4-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='THL 499534', notes=NULL,
    public_notes='Auction 170', purchase_price=29.04,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1916635-075',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9495da95eb2a8e4c3fcba2809c6785ed84ade0b41f2eda66c3ae0203c210dd6d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9495da95eb2a8e4c3fcba2809c6785ed84ade0b41f2eda66c3ae0203c210dd6d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a3e5bcd0f7d865a34a9925c6d570899f7824257ffe1e83b65c0b5b876b8d84c4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a3e5bcd0f7d865a34a9925c6d570899f7824257ffe1e83b65c0b5b876b8d84c4-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511345);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206239), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511384), 60312847,
     'AU', 1, FALSE, '1013 026913',
     NULL, 'Auction 104', 14.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/aeacb56a8c6509469fbc817566ea3b840559f881b2481c842e3b72bed2e41da6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aeacb56a8c6509469fbc817566ea3b840559f881b2481c842e3b72bed2e41da6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8b04db8f07fd4044542d689d7cdf2f7d91ea984958e95c6e7cd0e79f98f55562.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8b04db8f07fd4044542d689d7cdf2f7d91ea984958e95c6e7cd0e79f98f55562-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='1013 026913', notes=NULL,
    public_notes='Auction 104', purchase_price=14.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/aeacb56a8c6509469fbc817566ea3b840559f881b2481c842e3b72bed2e41da6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aeacb56a8c6509469fbc817566ea3b840559f881b2481c842e3b72bed2e41da6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8b04db8f07fd4044542d689d7cdf2f7d91ea984958e95c6e7cd0e79f98f55562.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8b04db8f07fd4044542d689d7cdf2f7d91ea984958e95c6e7cd0e79f98f55562-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511384);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206248), (SELECT id FROM banknote_issues WHERE numista_issue_id = 522061), 51235404,
     'UNC', 1, FALSE, 'J/353 686265',
     NULL, NULL, 3.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J/353 686265', notes=NULL,
    public_notes=NULL, purchase_price=3.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 522061);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206250), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511397), 51235150,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511397);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206266), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511422), 51230962,
     'UNC', 1, FALSE, '34004617 B',
     NULL, NULL, 0.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='34004617 B', notes=NULL,
    public_notes=NULL, purchase_price=0.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511422);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206378), (SELECT id FROM banknote_issues WHERE numista_issue_id = 511673), 59826778,
     'UNC', 1, FALSE, 'F67436275',
     NULL, 'Auction 99', 32.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/333497291ef4b857fbde6cdd1c5726eb9523b08a210e87542bc3564004b72bf2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/333497291ef4b857fbde6cdd1c5726eb9523b08a210e87542bc3564004b72bf2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b03bf0c29142222f8d10c742cb0a252ea301a4771f3d1bf9533f3d806ee449db.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b03bf0c29142222f8d10c742cb0a252ea301a4771f3d1bf9533f3d806ee449db-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F67436275', notes=NULL,
    public_notes='Auction 99', purchase_price=32.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/333497291ef4b857fbde6cdd1c5726eb9523b08a210e87542bc3564004b72bf2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/333497291ef4b857fbde6cdd1c5726eb9523b08a210e87542bc3564004b72bf2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b03bf0c29142222f8d10c742cb0a252ea301a4771f3d1bf9533f3d806ee449db.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b03bf0c29142222f8d10c742cb0a252ea301a4771f3d1bf9533f3d806ee449db-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 511673);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206382), (SELECT id FROM banknote_issues WHERE numista_issue_id = 581855), 51232305,
     'UNC', 1, FALSE, 'D161 685442',
     NULL, NULL, 1.06, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D161 685442', notes=NULL,
    public_notes=NULL, purchase_price=1.06,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 581855);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 206382), (SELECT id FROM banknote_issues WHERE numista_issue_id = 581855), 73680379,
     'UNC', 1, FALSE, 'D123 874886',
     NULL, NULL, 1.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D123 874886', notes=NULL,
    public_notes=NULL, purchase_price=1.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 581855);

END $$;