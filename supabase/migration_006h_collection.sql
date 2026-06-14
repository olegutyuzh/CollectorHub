-- migration_006h_collection.sql
-- Rows 751–900 of 976
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
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 231996), (SELECT id FROM banknote_issues WHERE numista_issue_id = 569631), 70287504,
     'UNC', 1, FALSE, 'C/387 569847',
     NULL, 'Auction 155', 52.48, 'EUR',
     'PMG', '66', '1918111-044',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/bb259a7d7bdeab509a65b1f3c1d9fd8ebfebb89c6c3a8cc898610c47e343c396.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bb259a7d7bdeab509a65b1f3c1d9fd8ebfebb89c6c3a8cc898610c47e343c396-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9322799f01e028942d3456c3f4215ebb5c2d78eadaee4d104ac2d5a01f6ac7a8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9322799f01e028942d3456c3f4215ebb5c2d78eadaee4d104ac2d5a01f6ac7a8-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C/387 569847', notes=NULL,
    public_notes='Auction 155', purchase_price=52.48,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1918111-044',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/bb259a7d7bdeab509a65b1f3c1d9fd8ebfebb89c6c3a8cc898610c47e343c396.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bb259a7d7bdeab509a65b1f3c1d9fd8ebfebb89c6c3a8cc898610c47e343c396-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9322799f01e028942d3456c3f4215ebb5c2d78eadaee4d104ac2d5a01f6ac7a8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9322799f01e028942d3456c3f4215ebb5c2d78eadaee4d104ac2d5a01f6ac7a8-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 569631);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 232122), (SELECT id FROM banknote_issues WHERE numista_issue_id = 569838), 51236012,
     'UNC', 1, FALSE, 'FJ 702277',
     NULL, NULL, 1.43, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FJ 702277', notes=NULL,
    public_notes=NULL, purchase_price=1.43,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 569838);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 232125), (SELECT id FROM banknote_issues WHERE numista_issue_id = 569842), 51235995,
     'UNC', 1, FALSE, 'C 365246',
     NULL, NULL, 4.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 365246', notes=NULL,
    public_notes=NULL, purchase_price=4.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 569842);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 232947), (SELECT id FROM banknote_issues WHERE numista_issue_id = 571159), 51526344,
     'UNC', 1, FALSE, 'BAJ 151646',
     'The nominee for the “Bank Note of the Year Award” in 2020', NULL, 8.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BAJ 151646', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes=NULL, purchase_price=8.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 571159);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 233360), (SELECT id FROM banknote_issues WHERE numista_issue_id = 571817), 73760742,
     'UNC', 1, FALSE, 'A0942B 7007604',
     NULL, 'Auction 170', 72.51, 'EUR',
     'PMG', '58', '1918107-022',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/59b0ce1aaab3ad4c8ef25bf61ad080adbb0ba63a7634703fdf38bf68d1bdf10d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/59b0ce1aaab3ad4c8ef25bf61ad080adbb0ba63a7634703fdf38bf68d1bdf10d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/896228e979ea0afde72cae50fa50dcb7ed5bfc08cec113ebf856c52aaeac2488.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/896228e979ea0afde72cae50fa50dcb7ed5bfc08cec113ebf856c52aaeac2488-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A0942B 7007604', notes=NULL,
    public_notes='Auction 170', purchase_price=72.51,
    price_currency='EUR', grading_company='PMG',
    grading_score='58', cert_number='1918107-022',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/59b0ce1aaab3ad4c8ef25bf61ad080adbb0ba63a7634703fdf38bf68d1bdf10d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/59b0ce1aaab3ad4c8ef25bf61ad080adbb0ba63a7634703fdf38bf68d1bdf10d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/896228e979ea0afde72cae50fa50dcb7ed5bfc08cec113ebf856c52aaeac2488.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/896228e979ea0afde72cae50fa50dcb7ed5bfc08cec113ebf856c52aaeac2488-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 571817);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 233731), NULL, 70287308,
     'UNC', 1, FALSE, 'U34 204590',
     NULL, 'Auction 155', 95.95, 'EUR',
     'PMG', '65', '1918108-058',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/bdfcb0732074f0b8f0f1ddd0af289b9fe1e954184058583ea3fe1b2bdbdce622.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bdfcb0732074f0b8f0f1ddd0af289b9fe1e954184058583ea3fe1b2bdbdce622-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1b5c10f15d5a577796cf029e9508b0a56e52f5c734a64fb4d01f77235ec67107.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1b5c10f15d5a577796cf029e9508b0a56e52f5c734a64fb4d01f77235ec67107-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='U34 204590', notes=NULL,
    public_notes='Auction 155', purchase_price=95.95,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1918108-058',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/bdfcb0732074f0b8f0f1ddd0af289b9fe1e954184058583ea3fe1b2bdbdce622.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bdfcb0732074f0b8f0f1ddd0af289b9fe1e954184058583ea3fe1b2bdbdce622-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1b5c10f15d5a577796cf029e9508b0a56e52f5c734a64fb4d01f77235ec67107.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1b5c10f15d5a577796cf029e9508b0a56e52f5c734a64fb4d01f77235ec67107-360.jpg"}]'::jsonb,
    issue_id=NULL;

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 233777), (SELECT id FROM banknote_issues WHERE numista_issue_id = 631019), 60053665,
     'AU', 1, FALSE, NULL,
     NULL, NULL, 0.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 631019);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 233785), (SELECT id FROM banknote_issues WHERE numista_issue_id = 842716), 76530405,
     'UNC', 1, FALSE, 'MN 000000',
     NULL, NULL, 24.94, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MN 000000', notes=NULL,
    public_notes=NULL, purchase_price=24.94,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 842716);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 233785), (SELECT id FROM banknote_issues WHERE numista_issue_id = 572480), 76530427,
     'UNC', 1, FALSE, 'LP 843492',
     NULL, NULL, 27.21, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LP 843492', notes=NULL,
    public_notes=NULL, purchase_price=27.21,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 572480);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 234693), (SELECT id FROM banknote_issues WHERE numista_issue_id = 573943), 60343550,
     'UNC', 1, FALSE, '798485',
     NULL, NULL, 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='798485', notes=NULL,
    public_notes=NULL, purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 573943);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 235821), (SELECT id FROM banknote_issues WHERE numista_issue_id = 575785), 51298445,
     'UNC', 1, FALSE, 'SX 5958926',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='SX 5958926', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 575785);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 235823), (SELECT id FROM banknote_issues WHERE numista_issue_id = 575787), 58854323,
     'UNC', 1, FALSE, 'YC 4069359',
     NULL, 'Auction 97', 13.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/dfa537aec445eec2643d6ce841a8baca09b73302c27ad5f10bbc5f05c0ca209d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dfa537aec445eec2643d6ce841a8baca09b73302c27ad5f10bbc5f05c0ca209d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/36b7576aee8041a6bc4e51de1f3841faa7e0ec8d9db56a6365dbe6fa8e65a399.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/36b7576aee8041a6bc4e51de1f3841faa7e0ec8d9db56a6365dbe6fa8e65a399-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='YC 4069359', notes=NULL,
    public_notes='Auction 97', purchase_price=13.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/dfa537aec445eec2643d6ce841a8baca09b73302c27ad5f10bbc5f05c0ca209d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dfa537aec445eec2643d6ce841a8baca09b73302c27ad5f10bbc5f05c0ca209d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/36b7576aee8041a6bc4e51de1f3841faa7e0ec8d9db56a6365dbe6fa8e65a399.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/36b7576aee8041a6bc4e51de1f3841faa7e0ec8d9db56a6365dbe6fa8e65a399-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 575787);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 235866), (SELECT id FROM banknote_issues WHERE numista_issue_id = 575852), 60307033,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.62, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.62,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 575852);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 235867), (SELECT id FROM banknote_issues WHERE numista_issue_id = 575853), 60307037,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.62, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.62,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 575853);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 236491), (SELECT id FROM banknote_issues WHERE numista_issue_id = 576917), 51233570,
     'UNC', 1, FALSE, 'M 7388322',
     NULL, NULL, 4.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='M 7388322', notes=NULL,
    public_notes=NULL, purchase_price=4.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 576917);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 236667), (SELECT id FROM banknote_issues WHERE numista_issue_id = 577381), 78343000,
     'UNC', 1, FALSE, 'CB 261923',
     NULL, 'Auction 189', 76.28, 'EUR',
     'PMG', '67', '1923682-009',
     '["EPQ"]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CB 261923', notes=NULL,
    public_notes='Auction 189', purchase_price=76.28,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1923682-009',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 577381);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 237755), (SELECT id FROM banknote_issues WHERE numista_issue_id = 579339), 60306391,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 579339);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 237875), (SELECT id FROM banknote_issues WHERE numista_issue_id = 579530), 51275257,
     'UNC', 1, FALSE, 'A 6432499',
     NULL, NULL, 10.21, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 6432499', notes=NULL,
    public_notes=NULL, purchase_price=10.21,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 579530);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 239037), (SELECT id FROM banknote_issues WHERE numista_issue_id = 581656), 51231929,
     'UNC', 1, FALSE, 'A 02123051',
     NULL, NULL, 1.81, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 02123051', notes=NULL,
    public_notes=NULL, purchase_price=1.81,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 581656);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 239037), (SELECT id FROM banknote_issues WHERE numista_issue_id = 581656), 73585021,
     'UNC', 1, FALSE, 'A 00590099',
     NULL, NULL, 1.81, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 00590099', notes=NULL,
    public_notes=NULL, purchase_price=1.81,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 581656);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 239312), (SELECT id FROM banknote_issues WHERE numista_issue_id = 582365), 59827782,
     'UNC', 1, FALSE, 'A261 517 Block B',
     NULL, 'Auction 102', 50.29, 'EUR',
     'PMG', '66', '2077299-017',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/bfb9c2dca23857f4445f59169e6f623d69c4839c806e59b7a4b5f8f6d85be16d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bfb9c2dca23857f4445f59169e6f623d69c4839c806e59b7a4b5f8f6d85be16d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b331bd16a9027d8ab5e2c651bbecef294d649606c47fa1ae74c55808bf05f9ec.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b331bd16a9027d8ab5e2c651bbecef294d649606c47fa1ae74c55808bf05f9ec-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A261 517 Block B', notes=NULL,
    public_notes='Auction 102', purchase_price=50.29,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2077299-017',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/bfb9c2dca23857f4445f59169e6f623d69c4839c806e59b7a4b5f8f6d85be16d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bfb9c2dca23857f4445f59169e6f623d69c4839c806e59b7a4b5f8f6d85be16d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b331bd16a9027d8ab5e2c651bbecef294d649606c47fa1ae74c55808bf05f9ec.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b331bd16a9027d8ab5e2c651bbecef294d649606c47fa1ae74c55808bf05f9ec-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 582365);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 239537), (SELECT id FROM banknote_issues WHERE numista_issue_id = 582776), 51234944,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 130, 'UAH',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=130,
    price_currency='UAH', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 582776);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 240602), (SELECT id FROM banknote_issues WHERE numista_issue_id = 1098281), 51432919,
     'AU', 1, FALSE, 'BD 885214',
     NULL, NULL, 24.47, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='BD 885214', notes=NULL,
    public_notes=NULL, purchase_price=24.47,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 1098281);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 241100), (SELECT id FROM banknote_issues WHERE numista_issue_id = 585547), 69702756,
     'UNC', 1, FALSE, '008738E',
     NULL, 'Auction 97', 27, 'EUR',
     'PMG', '64', '1912621-030',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/47eb64512d76c4c7939a19f80f82a24a0433cea769d814626178e1551cf9604b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/47eb64512d76c4c7939a19f80f82a24a0433cea769d814626178e1551cf9604b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/466ce3259baf80aaba39618f61fc364e8e5d0303efa167e3454a7216c765f30f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/466ce3259baf80aaba39618f61fc364e8e5d0303efa167e3454a7216c765f30f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='008738E', notes=NULL,
    public_notes='Auction 97', purchase_price=27,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1912621-030',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/47eb64512d76c4c7939a19f80f82a24a0433cea769d814626178e1551cf9604b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/47eb64512d76c4c7939a19f80f82a24a0433cea769d814626178e1551cf9604b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/466ce3259baf80aaba39618f61fc364e8e5d0303efa167e3454a7216c765f30f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/466ce3259baf80aaba39618f61fc364e8e5d0303efa167e3454a7216c765f30f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 585547);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 241406), (SELECT id FROM banknote_issues WHERE numista_issue_id = 586139), 60306348,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 586139);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 241406), (SELECT id FROM banknote_issues WHERE numista_issue_id = 586139), 60306378,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 586139);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 241998), (SELECT id FROM banknote_issues WHERE numista_issue_id = 587114), 75170143,
     'UNC', 1, FALSE, 'C 016 43504',
     NULL, 'Auction 176', 6.61, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 016 43504', notes=NULL,
    public_notes='Auction 176', purchase_price=6.61,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 587114);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 242024), (SELECT id FROM banknote_issues WHERE numista_issue_id = 587197), 51526540,
     'UNC', 1, FALSE, 'A 034504126',
     'The nominee for the “Bank Note of the Year Award” in 2020', NULL, 8.48, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 034504126', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes=NULL, purchase_price=8.48,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 587197);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 242104), (SELECT id FROM banknote_issues WHERE numista_issue_id = 587358), 51615130,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 587358);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 244728), (SELECT id FROM banknote_issues WHERE numista_issue_id = 591610), 51526592,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 591610);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 244911), (SELECT id FROM banknote_issues WHERE numista_issue_id = 720012), 51297762,
     'UNC', 1, FALSE, 'AY 3510770',
     'The winner of the “Bank Note of the Year Award” for 2020', NULL, 9.34, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AY 3510770', notes='The winner of the “Bank Note of the Year Award” for 2020',
    public_notes=NULL, purchase_price=9.34,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 720012);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 245699), NULL, 69650369,
     'UNC', 1, FALSE, 'F.11 620604',
     NULL, 'Auction 151 - PG 65+', 102.92, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/21f3aaeb2cb70507e4070e60a6c1b7fc5eb2a23f8a636cabb50018ba2f7d0f4e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/21f3aaeb2cb70507e4070e60a6c1b7fc5eb2a23f8a636cabb50018ba2f7d0f4e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c0ca57d6bec49fbdf36ed9f56d3bc52a7e6dc3dce22e043edf92a257f09c83c5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c0ca57d6bec49fbdf36ed9f56d3bc52a7e6dc3dce22e043edf92a257f09c83c5-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='F.11 620604', notes=NULL,
    public_notes='Auction 151 - PG 65+', purchase_price=102.92,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/21f3aaeb2cb70507e4070e60a6c1b7fc5eb2a23f8a636cabb50018ba2f7d0f4e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/21f3aaeb2cb70507e4070e60a6c1b7fc5eb2a23f8a636cabb50018ba2f7d0f4e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c0ca57d6bec49fbdf36ed9f56d3bc52a7e6dc3dce22e043edf92a257f09c83c5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c0ca57d6bec49fbdf36ed9f56d3bc52a7e6dc3dce22e043edf92a257f09c83c5-360.jpg"}]'::jsonb,
    issue_id=NULL;

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 248104), (SELECT id FROM banknote_issues WHERE numista_issue_id = 595849), 51230933,
     'UNC', 1, FALSE, 'A 19244344',
     NULL, NULL, 2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 19244344', notes=NULL,
    public_notes=NULL, purchase_price=2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 595849);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 248199), (SELECT id FROM banknote_issues WHERE numista_issue_id = 595951), 75169963,
     'UNC', 1, FALSE, 'A 30 003970',
     NULL, 'Auction 176', 39.84, 'EUR',
     'PMG', '66', '2520101-011',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/75b2b72195baa2dd4c203aa1211d7735c3b16aa2c3eacd632da7b078a3c4e9a8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/75b2b72195baa2dd4c203aa1211d7735c3b16aa2c3eacd632da7b078a3c4e9a8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9a2f8d6954d0a884059341b29b31b3da4909ece34b463e1ccbf8ac61e2438309.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a2f8d6954d0a884059341b29b31b3da4909ece34b463e1ccbf8ac61e2438309-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 30 003970', notes=NULL,
    public_notes='Auction 176', purchase_price=39.84,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2520101-011',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/75b2b72195baa2dd4c203aa1211d7735c3b16aa2c3eacd632da7b078a3c4e9a8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/75b2b72195baa2dd4c203aa1211d7735c3b16aa2c3eacd632da7b078a3c4e9a8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9a2f8d6954d0a884059341b29b31b3da4909ece34b463e1ccbf8ac61e2438309.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9a2f8d6954d0a884059341b29b31b3da4909ece34b463e1ccbf8ac61e2438309-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 595951);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 248200), (SELECT id FROM banknote_issues WHERE numista_issue_id = 869707), 75169687,
     'UNC', 1, FALSE, 'A 30 003970',
     NULL, 'Auction 176', 46.05, 'EUR',
     'PMG', '67', '2520101-010',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3f0fcdaf3a18cab5b1a8a2082cfb16511fd0b43b456ea6951d98529b8fffbc2d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3f0fcdaf3a18cab5b1a8a2082cfb16511fd0b43b456ea6951d98529b8fffbc2d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4575890bc24cd31a39179ad95ca59657f0a66103001ccc16850a205f7959fa85.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4575890bc24cd31a39179ad95ca59657f0a66103001ccc16850a205f7959fa85-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 30 003970', notes=NULL,
    public_notes='Auction 176', purchase_price=46.05,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2520101-010',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3f0fcdaf3a18cab5b1a8a2082cfb16511fd0b43b456ea6951d98529b8fffbc2d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3f0fcdaf3a18cab5b1a8a2082cfb16511fd0b43b456ea6951d98529b8fffbc2d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4575890bc24cd31a39179ad95ca59657f0a66103001ccc16850a205f7959fa85.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4575890bc24cd31a39179ad95ca59657f0a66103001ccc16850a205f7959fa85-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 869707);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 248202), (SELECT id FROM banknote_issues WHERE numista_issue_id = 869709), 75169754,
     'UNC', 1, FALSE, 'A 30 003970',
     NULL, 'Auction 176', 46.05, 'EUR',
     'PMG', '67', '2520101-009',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/31fbe28f7e02e8d24f26e05f64111654943c83cf42a4f4f0fad6c8f5f0319c41.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/31fbe28f7e02e8d24f26e05f64111654943c83cf42a4f4f0fad6c8f5f0319c41-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a93c8774d84dde330656189cfa5646c4383405092d07c6de77cc5f11f65654f1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a93c8774d84dde330656189cfa5646c4383405092d07c6de77cc5f11f65654f1-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 30 003970', notes=NULL,
    public_notes='Auction 176', purchase_price=46.05,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2520101-009',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/31fbe28f7e02e8d24f26e05f64111654943c83cf42a4f4f0fad6c8f5f0319c41.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/31fbe28f7e02e8d24f26e05f64111654943c83cf42a4f4f0fad6c8f5f0319c41-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a93c8774d84dde330656189cfa5646c4383405092d07c6de77cc5f11f65654f1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a93c8774d84dde330656189cfa5646c4383405092d07c6de77cc5f11f65654f1-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 869709);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 250603), (SELECT id FROM banknote_issues WHERE numista_issue_id = 598991), 51232088,
     'UNC', 1, FALSE, 'B 58005669',
     NULL, NULL, 1.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 58005669', notes=NULL,
    public_notes=NULL, purchase_price=1.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 598991);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 250604), (SELECT id FROM banknote_issues WHERE numista_issue_id = 598992), 51232093,
     'UNC', 1, FALSE, 'A 07734054',
     NULL, NULL, 4.23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 07734054', notes=NULL,
    public_notes=NULL, purchase_price=4.23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 598992);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 254249), (SELECT id FROM banknote_issues WHERE numista_issue_id = 603533), 56645860,
     'UNC', 1, FALSE, 'E 000147381',
     'The nominee for the “Bank Note of the Year Award” in 2020', NULL, 10.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E 000147381', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes=NULL, purchase_price=10.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 603533);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 254249), (SELECT id FROM banknote_issues WHERE numista_issue_id = 603533), 60314563,
     'UNC', 1, FALSE, 'E 000272387',
     'The nominee for the “Bank Note of the Year Award” in 2020', 'Auction 107', 13.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/792267eeea7325287dbbadb967812ba041a76f3ff87f547a2ce6b9af9125d7ef.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/792267eeea7325287dbbadb967812ba041a76f3ff87f547a2ce6b9af9125d7ef-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/784b7252b34fc08b89ee9b89acc218a6d30a58c5a88b73a0f2d9bb46f081a9fb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/784b7252b34fc08b89ee9b89acc218a6d30a58c5a88b73a0f2d9bb46f081a9fb-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E 000272387', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes='Auction 107', purchase_price=13.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/792267eeea7325287dbbadb967812ba041a76f3ff87f547a2ce6b9af9125d7ef.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/792267eeea7325287dbbadb967812ba041a76f3ff87f547a2ce6b9af9125d7ef-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/784b7252b34fc08b89ee9b89acc218a6d30a58c5a88b73a0f2d9bb46f081a9fb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/784b7252b34fc08b89ee9b89acc218a6d30a58c5a88b73a0f2d9bb46f081a9fb-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 603533);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 258191), (SELECT id FROM banknote_issues WHERE numista_issue_id = 608679), 69650438,
     'AU', 1, FALSE, '044500',
     NULL, 'Auction 151', 78.08, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/53150a7851795ad96cb4dc8ad95c58ac773948013b918fda5a5da0fc208fec9b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/53150a7851795ad96cb4dc8ad95c58ac773948013b918fda5a5da0fc208fec9b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8101ba486fdab65addbc9aa226771bccc6762a0d23cae526716bb4d807774648.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8101ba486fdab65addbc9aa226771bccc6762a0d23cae526716bb4d807774648-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='044500', notes=NULL,
    public_notes='Auction 151', purchase_price=78.08,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/53150a7851795ad96cb4dc8ad95c58ac773948013b918fda5a5da0fc208fec9b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/53150a7851795ad96cb4dc8ad95c58ac773948013b918fda5a5da0fc208fec9b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8101ba486fdab65addbc9aa226771bccc6762a0d23cae526716bb4d807774648.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8101ba486fdab65addbc9aa226771bccc6762a0d23cae526716bb4d807774648-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 608679);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 258926), (SELECT id FROM banknote_issues WHERE numista_issue_id = 610181), 51232716,
     'UNC', 1, FALSE, 'J/48 362900',
     NULL, NULL, 4.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J/48 362900', notes=NULL,
    public_notes=NULL, purchase_price=4.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 610181);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 258988), (SELECT id FROM banknote_issues WHERE numista_issue_id = 610260), 51232667,
     'UNC', 1, FALSE, 'J/30 314399',
     NULL, NULL, 0.92, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J/30 314399', notes=NULL,
    public_notes=NULL, purchase_price=0.92,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 610260);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 258989), (SELECT id FROM banknote_issues WHERE numista_issue_id = 610261), 51232706,
     'UNC', 1, FALSE, 'J/67 013623',
     NULL, NULL, 3.04, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J/67 013623', notes=NULL,
    public_notes=NULL, purchase_price=3.04,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 610261);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 259033), (SELECT id FROM banknote_issues WHERE numista_issue_id = 610348), 61006925,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 47, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=47,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 610348);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 259225), (SELECT id FROM banknote_issues WHERE numista_issue_id = 610690), 51233693,
     'UNC', 1, FALSE, 'B 010642739',
     NULL, NULL, 5.64, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 010642739', notes=NULL,
    public_notes=NULL, purchase_price=5.64,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 610690);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 262495), (SELECT id FROM banknote_issues WHERE numista_issue_id = 614849), 51526483,
     'UNC', 1, FALSE, 'E 10738116 A',
     NULL, NULL, 9.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E 10738116 A', notes=NULL,
    public_notes=NULL, purchase_price=9.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 614849);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 264846), (SELECT id FROM banknote_issues WHERE numista_issue_id = 617808), 58871500,
     'AU', 1, FALSE, NULL,
     NULL, 'Auction 97', 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8d67606785d7d8bfeb88f5785406332552fbd76c0f0f4569afb2ed73fdd709bb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8d67606785d7d8bfeb88f5785406332552fbd76c0f0f4569afb2ed73fdd709bb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2feecdf64a052eba76a25f74a7288d13e02ae8693e7c4af6e115aaed49ae99d6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2feecdf64a052eba76a25f74a7288d13e02ae8693e7c4af6e115aaed49ae99d6-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8d67606785d7d8bfeb88f5785406332552fbd76c0f0f4569afb2ed73fdd709bb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8d67606785d7d8bfeb88f5785406332552fbd76c0f0f4569afb2ed73fdd709bb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2feecdf64a052eba76a25f74a7288d13e02ae8693e7c4af6e115aaed49ae99d6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2feecdf64a052eba76a25f74a7288d13e02ae8693e7c4af6e115aaed49ae99d6-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 617808);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 266442), (SELECT id FROM banknote_issues WHERE numista_issue_id = 620690), 56105578,
     'UNC', 1, FALSE, 'AF 3660858',
     NULL, NULL, 1.08, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AF 3660858', notes=NULL,
    public_notes=NULL, purchase_price=1.08,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 620690);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 266443), (SELECT id FROM banknote_issues WHERE numista_issue_id = 620691), 56105595,
     'UNC', 1, FALSE, 'AB 4388913',
     NULL, NULL, 1.47, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 4388913', notes=NULL,
    public_notes=NULL, purchase_price=1.47,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 620691);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 266640), (SELECT id FROM banknote_issues WHERE numista_issue_id = 621155), 51231995,
     'UNC', 1, FALSE, 'AJ 774191',
     NULL, NULL, 3.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AJ 774191', notes=NULL,
    public_notes=NULL, purchase_price=3.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 621155);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 266869), (SELECT id FROM banknote_issues WHERE numista_issue_id = 621492), 51270857,
     'UNC', 1, FALSE, 'AN 176146',
     NULL, NULL, 2.45, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AN 176146', notes=NULL,
    public_notes=NULL, purchase_price=2.45,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 621492);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 266870), (SELECT id FROM banknote_issues WHERE numista_issue_id = 621493), 51270921,
     'UNC', 1, FALSE, 'AD 894893',
     NULL, NULL, 4.26, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AD 894893', notes=NULL,
    public_notes=NULL, purchase_price=4.26,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 621493);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 267582), (SELECT id FROM banknote_issues WHERE numista_issue_id = 623102), 51275675,
     'UNC', 1, FALSE, 'D32 534289',
     NULL, NULL, 1.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D32 534289', notes=NULL,
    public_notes=NULL, purchase_price=1.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 623102);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 268238), (SELECT id FROM banknote_issues WHERE numista_issue_id = 624063), 69650402,
     'UNC', 1, FALSE, 'HQ 6363613',
     NULL, 'Auction 99 - PG 66+', 20.56, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a7898e50af39d1927802052590ad879cbde5129f636f1d9b970f691aa7cd364a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a7898e50af39d1927802052590ad879cbde5129f636f1d9b970f691aa7cd364a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b3f10e7eefcd2621f1a4b955ba69ff389894665729046c0f45ebb247b6158533.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b3f10e7eefcd2621f1a4b955ba69ff389894665729046c0f45ebb247b6158533-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HQ 6363613', notes=NULL,
    public_notes='Auction 99 - PG 66+', purchase_price=20.56,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a7898e50af39d1927802052590ad879cbde5129f636f1d9b970f691aa7cd364a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a7898e50af39d1927802052590ad879cbde5129f636f1d9b970f691aa7cd364a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b3f10e7eefcd2621f1a4b955ba69ff389894665729046c0f45ebb247b6158533.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b3f10e7eefcd2621f1a4b955ba69ff389894665729046c0f45ebb247b6158533-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 624063);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 272725), (SELECT id FROM banknote_issues WHERE numista_issue_id = 631005), 51526476,
     'UNC', 1, FALSE, 'AH648648',
     NULL, NULL, 7.51, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AH648648', notes=NULL,
    public_notes=NULL, purchase_price=7.51,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 631005);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 272725), (SELECT id FROM banknote_issues WHERE numista_issue_id = 779633), 76530892,
     'UNC', 1, FALSE, 'AH 000000',
     NULL, 'Pinholes', 1.99, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AH 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=1.99,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 779633);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 272725), (SELECT id FROM banknote_issues WHERE numista_issue_id = 631005), 76530894,
     'UNC', 1, FALSE, 'AK 028172',
     NULL, NULL, 2.18, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AK 028172', notes=NULL,
    public_notes=NULL, purchase_price=2.18,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 631005);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 272908), (SELECT id FROM banknote_issues WHERE numista_issue_id = 631424), 51271684,
     'UNC', 1, FALSE, 'CU 882086',
     NULL, NULL, 4.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CU 882086', notes=NULL,
    public_notes=NULL, purchase_price=4.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 631424);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 274125), (SELECT id FROM banknote_issues WHERE numista_issue_id = 632788), 51235109,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 632788);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 274740), (SELECT id FROM banknote_issues WHERE numista_issue_id = 633998), 51274708,
     'UNC', 1, FALSE, '2 379621828',
     NULL, NULL, 5.69, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='2 379621828', notes=NULL,
    public_notes=NULL, purchase_price=5.69,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 633998);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 275303), (SELECT id FROM banknote_issues WHERE numista_issue_id = 634671), 60053566,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 634671);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 275349), (SELECT id FROM banknote_issues WHERE numista_issue_id = 634727), 60053682,
     'AU', 1, FALSE, NULL,
     NULL, NULL, 0.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 634727);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 275979), (SELECT id FROM banknote_issues WHERE numista_issue_id = 635758), 77629081,
     'UNC', 1, FALSE, '000000 07011',
     NULL, 'Auction 183', 75.85, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/7ce87c3dbf025f2e88caf3d7a693f200ce8518ec0c260ecefaa489daa80b2eea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7ce87c3dbf025f2e88caf3d7a693f200ce8518ec0c260ecefaa489daa80b2eea-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/dce7ddb58307bb9e2aa3cd2b660c57b57789c134b4b78e8d4fecd28289798b73.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dce7ddb58307bb9e2aa3cd2b660c57b57789c134b4b78e8d4fecd28289798b73-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='000000 07011', notes=NULL,
    public_notes='Auction 183', purchase_price=75.85,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/7ce87c3dbf025f2e88caf3d7a693f200ce8518ec0c260ecefaa489daa80b2eea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7ce87c3dbf025f2e88caf3d7a693f200ce8518ec0c260ecefaa489daa80b2eea-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/dce7ddb58307bb9e2aa3cd2b660c57b57789c134b4b78e8d4fecd28289798b73.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/dce7ddb58307bb9e2aa3cd2b660c57b57789c134b4b78e8d4fecd28289798b73-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 635758);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 276375), (SELECT id FROM banknote_issues WHERE numista_issue_id = 636448), 58871507,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9489de11b76e420b578e61fca17b5e473fff1f6632ff372bfa8cfe972f691100.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9489de11b76e420b578e61fca17b5e473fff1f6632ff372bfa8cfe972f691100-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/044d12772e07d677b64b42a009e0e8f2f8e681aec14d14657259b9a80c983cd5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/044d12772e07d677b64b42a009e0e8f2f8e681aec14d14657259b9a80c983cd5-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9489de11b76e420b578e61fca17b5e473fff1f6632ff372bfa8cfe972f691100.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9489de11b76e420b578e61fca17b5e473fff1f6632ff372bfa8cfe972f691100-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/044d12772e07d677b64b42a009e0e8f2f8e681aec14d14657259b9a80c983cd5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/044d12772e07d677b64b42a009e0e8f2f8e681aec14d14657259b9a80c983cd5-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 636448);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 280476), (SELECT id FROM banknote_issues WHERE numista_issue_id = 741861), 51297939,
     'UNC', 1, FALSE, 'AG 4433989',
     NULL, NULL, 3.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AG 4433989', notes=NULL,
    public_notes=NULL, purchase_price=3.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 741861);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 280487), (SELECT id FROM banknote_issues WHERE numista_issue_id = 642197), 51298269,
     'UNC', 1, FALSE, 'AS 1557681',
     NULL, NULL, 1.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AS 1557681', notes=NULL,
    public_notes=NULL, purchase_price=1.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 642197);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 280487), (SELECT id FROM banknote_issues WHERE numista_issue_id = 642197), 51615295,
     'UNC', 1, FALSE, 'BW 4981355',
     NULL, NULL, 1.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BW 4981355', notes=NULL,
    public_notes=NULL, purchase_price=1.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 642197);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 281700), (SELECT id FROM banknote_issues WHERE numista_issue_id = 643955), 58871375,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 2.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b6e49e4e7430bbba4119b59d5ed6cc47de0d526c52019d6bbf8123e35b0d4c4f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b6e49e4e7430bbba4119b59d5ed6cc47de0d526c52019d6bbf8123e35b0d4c4f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bee3d1ea88ca33c2c9b5fdb80e228169d032310d882bfde0d22c736fe4e9dcef.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bee3d1ea88ca33c2c9b5fdb80e228169d032310d882bfde0d22c736fe4e9dcef-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=2.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b6e49e4e7430bbba4119b59d5ed6cc47de0d526c52019d6bbf8123e35b0d4c4f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b6e49e4e7430bbba4119b59d5ed6cc47de0d526c52019d6bbf8123e35b0d4c4f-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bee3d1ea88ca33c2c9b5fdb80e228169d032310d882bfde0d22c736fe4e9dcef.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bee3d1ea88ca33c2c9b5fdb80e228169d032310d882bfde0d22c736fe4e9dcef-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 643955);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 283221), (SELECT id FROM banknote_issues WHERE numista_issue_id = 645996), 51235315,
     'UNC', 1, FALSE, '0915207',
     NULL, NULL, 2.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='0915207', notes=NULL,
    public_notes=NULL, purchase_price=2.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 645996);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 288344), (SELECT id FROM banknote_issues WHERE numista_issue_id = 654058), 51615378,
     'UNC', 1, FALSE, 'BP 779555',
     NULL, NULL, 0.47, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BP 779555', notes=NULL,
    public_notes=NULL, purchase_price=0.47,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 654058);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 290074), (SELECT id FROM banknote_issues WHERE numista_issue_id = 656658), 51271003,
     'UNC', 1, FALSE, 'AX 171694',
     'The nominee for the “Bank Note of the Year Award” in 2020', NULL, 6.57, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AX 171694', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes=NULL, purchase_price=6.57,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 656658);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 290678), (SELECT id FROM banknote_issues WHERE numista_issue_id = 657508), 58871389,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 2.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/51d8f50fe7bbf8066ef0c805308e541b873f6dc2072f3c1292d8f1541baf5197.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/51d8f50fe7bbf8066ef0c805308e541b873f6dc2072f3c1292d8f1541baf5197-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/09cbea2e701e10af6b5c128dc31a955085b51e0fac82e84997c20e7f4fae99a0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/09cbea2e701e10af6b5c128dc31a955085b51e0fac82e84997c20e7f4fae99a0-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=2.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/51d8f50fe7bbf8066ef0c805308e541b873f6dc2072f3c1292d8f1541baf5197.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/51d8f50fe7bbf8066ef0c805308e541b873f6dc2072f3c1292d8f1541baf5197-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/09cbea2e701e10af6b5c128dc31a955085b51e0fac82e84997c20e7f4fae99a0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/09cbea2e701e10af6b5c128dc31a955085b51e0fac82e84997c20e7f4fae99a0-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 657508);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 290679), (SELECT id FROM banknote_issues WHERE numista_issue_id = 657509), 58871369,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 2.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c6785b897318bb1079e85867ee7fd48893bdb7fa97ee8a371abd44e5160fa430.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c6785b897318bb1079e85867ee7fd48893bdb7fa97ee8a371abd44e5160fa430-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ac4fc8322de4a4759f32e46ddac57752f779f8b15f5efe01c72983181767c5e9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ac4fc8322de4a4759f32e46ddac57752f779f8b15f5efe01c72983181767c5e9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=2.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c6785b897318bb1079e85867ee7fd48893bdb7fa97ee8a371abd44e5160fa430.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c6785b897318bb1079e85867ee7fd48893bdb7fa97ee8a371abd44e5160fa430-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ac4fc8322de4a4759f32e46ddac57752f779f8b15f5efe01c72983181767c5e9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ac4fc8322de4a4759f32e46ddac57752f779f8b15f5efe01c72983181767c5e9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 657509);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 290680), (SELECT id FROM banknote_issues WHERE numista_issue_id = 657510), 58871384,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 2.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/bca1d77f8e2d71efb05d10e0ae55a506efa3e474cda2a67385ca08cf87948300.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bca1d77f8e2d71efb05d10e0ae55a506efa3e474cda2a67385ca08cf87948300-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e1b320b941e8e0050257d967e2f6b07a99d190893084416231fc1fc0b2eb5e02.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e1b320b941e8e0050257d967e2f6b07a99d190893084416231fc1fc0b2eb5e02-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=2.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/bca1d77f8e2d71efb05d10e0ae55a506efa3e474cda2a67385ca08cf87948300.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bca1d77f8e2d71efb05d10e0ae55a506efa3e474cda2a67385ca08cf87948300-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e1b320b941e8e0050257d967e2f6b07a99d190893084416231fc1fc0b2eb5e02.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e1b320b941e8e0050257d967e2f6b07a99d190893084416231fc1fc0b2eb5e02-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 657510);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 292244), (SELECT id FROM banknote_issues WHERE numista_issue_id = 660857), 59827741,
     'UNC', 1, FALSE, 'V.6300 970',
     NULL, NULL, 15.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e59e23a262b4106b8228f0388f98462d2fb6dc1f4faa09c685a9b455045ef3cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e59e23a262b4106b8228f0388f98462d2fb6dc1f4faa09c685a9b455045ef3cc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8729751b4b25da1fdd30819ad71829fd96ec1dd6e5f41228619708edb8b3d517.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8729751b4b25da1fdd30819ad71829fd96ec1dd6e5f41228619708edb8b3d517-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='V.6300 970', notes=NULL,
    public_notes=NULL, purchase_price=15.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e59e23a262b4106b8228f0388f98462d2fb6dc1f4faa09c685a9b455045ef3cc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e59e23a262b4106b8228f0388f98462d2fb6dc1f4faa09c685a9b455045ef3cc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8729751b4b25da1fdd30819ad71829fd96ec1dd6e5f41228619708edb8b3d517.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8729751b4b25da1fdd30819ad71829fd96ec1dd6e5f41228619708edb8b3d517-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 660857);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 292244), (SELECT id FROM banknote_issues WHERE numista_issue_id = 660857), 59827747,
     'UNC', 1, FALSE, 'V.6300 971',
     NULL, NULL, 15.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/993a720aebcd46f04962a0b7d93b62b412872ea955262ea35fcc53b127e1e4ca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/993a720aebcd46f04962a0b7d93b62b412872ea955262ea35fcc53b127e1e4ca-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/abeaa63cdbb13a7c147de44312a619f4fcdc4b4f6c167b77f6a76e95f601c7a6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/abeaa63cdbb13a7c147de44312a619f4fcdc4b4f6c167b77f6a76e95f601c7a6-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='V.6300 971', notes=NULL,
    public_notes=NULL, purchase_price=15.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/993a720aebcd46f04962a0b7d93b62b412872ea955262ea35fcc53b127e1e4ca.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/993a720aebcd46f04962a0b7d93b62b412872ea955262ea35fcc53b127e1e4ca-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/abeaa63cdbb13a7c147de44312a619f4fcdc4b4f6c167b77f6a76e95f601c7a6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/abeaa63cdbb13a7c147de44312a619f4fcdc4b4f6c167b77f6a76e95f601c7a6-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 660857);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 292244), (SELECT id FROM banknote_issues WHERE numista_issue_id = 660857), 59827752,
     'UNC', 1, FALSE, 'V.6300 972',
     NULL, NULL, 15.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a2a0bbfbe71a7220e216a55f80169af4bed5a633d7c283194b03a51038376d9e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2a0bbfbe71a7220e216a55f80169af4bed5a633d7c283194b03a51038376d9e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/aeca970686dd541a7c0e5c76c305253b62ca92bb058b47ea2823e72452df75e5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aeca970686dd541a7c0e5c76c305253b62ca92bb058b47ea2823e72452df75e5-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='V.6300 972', notes=NULL,
    public_notes=NULL, purchase_price=15.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a2a0bbfbe71a7220e216a55f80169af4bed5a633d7c283194b03a51038376d9e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a2a0bbfbe71a7220e216a55f80169af4bed5a633d7c283194b03a51038376d9e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/aeca970686dd541a7c0e5c76c305253b62ca92bb058b47ea2823e72452df75e5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/aeca970686dd541a7c0e5c76c305253b62ca92bb058b47ea2823e72452df75e5-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 660857);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 294054), (SELECT id FROM banknote_issues WHERE numista_issue_id = 666174), 60343294,
     'UNC', 1, FALSE, '11449',
     NULL, NULL, 1.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='11449', notes=NULL,
    public_notes=NULL, purchase_price=1.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 666174);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 295661), (SELECT id FROM banknote_issues WHERE numista_issue_id = 669134), 60306083,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 669134);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 300216), (SELECT id FROM banknote_issues WHERE numista_issue_id = 677787), 51232996,
     'UNC', 1, FALSE, NULL,
     'The nominee for the “Bank Note of the Year Award” in 2021', NULL, 4.79, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes='The nominee for the “Bank Note of the Year Award” in 2021',
    public_notes=NULL, purchase_price=4.79,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 677787);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 300216), (SELECT id FROM banknote_issues WHERE numista_issue_id = 677787), 58134552,
     'UNC', 1, FALSE, 'AA 008967',
     'The nominee for the “Bank Note of the Year Award” in 2021', NULL, 4.26, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 008967', notes='The nominee for the “Bank Note of the Year Award” in 2021',
    public_notes=NULL, purchase_price=4.26,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 677787);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 300636), (SELECT id FROM banknote_issues WHERE numista_issue_id = 678585), 55950514,
     'UNC', 1, FALSE, 'AX 0525066',
     NULL, NULL, 9.08, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AX 0525066', notes=NULL,
    public_notes=NULL, purchase_price=9.08,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 678585);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 300696), (SELECT id FROM banknote_issues WHERE numista_issue_id = 678675), 51272702,
     'UNC', 1, FALSE, 'A 7343606 A',
     NULL, NULL, 3.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 7343606 A', notes=NULL,
    public_notes=NULL, purchase_price=3.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 678675);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 302331), (SELECT id FROM banknote_issues WHERE numista_issue_id = 681259), 51733898,
     'UNC', 1, FALSE, 'BO 4978919',
     NULL, NULL, 3.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BO 4978919', notes=NULL,
    public_notes=NULL, purchase_price=3.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 681259);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 303182), (SELECT id FROM banknote_issues WHERE numista_issue_id = 682956), 51232126,
     'UNC', 1, FALSE, '02421108',
     NULL, NULL, 2.45, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='02421108', notes=NULL,
    public_notes=NULL, purchase_price=2.45,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 682956);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 304715), (SELECT id FROM banknote_issues WHERE numista_issue_id = 685510), 51298438,
     'UNC', 1, FALSE, 'AA 0024358',
     NULL, NULL, 4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 0024358', notes=NULL,
    public_notes=NULL, purchase_price=4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 685510);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 304715), (SELECT id FROM banknote_issues WHERE numista_issue_id = 685510), 51615166,
     'UNC', 1, FALSE, 'AA 0215053',
     NULL, NULL, 3.81, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 0215053', notes=NULL,
    public_notes=NULL, purchase_price=3.81,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 685510);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 304719), (SELECT id FROM banknote_issues WHERE numista_issue_id = 685514), 51233283,
     'UNC', 1, FALSE, 'AB 0023593',
     NULL, NULL, 3.04, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 0023593', notes=NULL,
    public_notes=NULL, purchase_price=3.04,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 685514);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 306846), (SELECT id FROM banknote_issues WHERE numista_issue_id = 689490), 51233562,
     'UNC', 1, FALSE, 'AB 2167046',
     NULL, NULL, 2.34, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 2167046', notes=NULL,
    public_notes=NULL, purchase_price=2.34,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 689490);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 308516), (SELECT id FROM banknote_issues WHERE numista_issue_id = 692008), 51233686,
     'UNC', 1, FALSE, 'C 011502337',
     NULL, NULL, 4.68, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 011502337', notes=NULL,
    public_notes=NULL, purchase_price=4.68,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 692008);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 310606), (SELECT id FROM banknote_issues WHERE numista_issue_id = 695379), 51233588,
     'UNC', 1, FALSE, 'AC 4061704',
     'The winner of the “Bank Note of the Year Award” for 2021', NULL, 5.21, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 4061704', notes='The winner of the “Bank Note of the Year Award” for 2021',
    public_notes=NULL, purchase_price=5.21,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 695379);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 312894), (SELECT id FROM banknote_issues WHERE numista_issue_id = 699145), 51733557,
     'UNC', 1, FALSE, 'B/AA 009895',
     NULL, NULL, 11.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B/AA 009895', notes=NULL,
    public_notes=NULL, purchase_price=11.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 699145);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 312895), (SELECT id FROM banknote_issues WHERE numista_issue_id = 699146), 51233266,
     'UNC', 1, FALSE, 'J 152226062',
     'The nominee for the “Bank Note of the Year Award” in 2021', NULL, 3.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J 152226062', notes='The nominee for the “Bank Note of the Year Award” in 2021',
    public_notes=NULL, purchase_price=3.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 699146);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 312895), (SELECT id FROM banknote_issues WHERE numista_issue_id = 699146), 61244964,
     'UNC', 1, FALSE, 'J 155749239',
     'The nominee for the “Bank Note of the Year Award” in 2021', NULL, 5.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J 155749239', notes='The nominee for the “Bank Note of the Year Award” in 2021',
    public_notes=NULL, purchase_price=5.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 699146);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 312896), (SELECT id FROM banknote_issues WHERE numista_issue_id = 699147), 51233262,
     'UNC', 1, FALSE, 'J 331329872',
     NULL, NULL, 3.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J 331329872', notes=NULL,
    public_notes=NULL, purchase_price=3.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 699147);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 312896), (SELECT id FROM banknote_issues WHERE numista_issue_id = 699147), 61244985,
     'UNC', 1, FALSE, 'J 397273235',
     NULL, NULL, 5.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J 397273235', notes=NULL,
    public_notes=NULL, purchase_price=5.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 699147);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 312896), (SELECT id FROM banknote_issues WHERE numista_issue_id = 699147), 61245116,
     'UNC', 1, FALSE, 'J 234609223',
     NULL, NULL, 21.88, 'EUR',
     'PMG', '66', NULL,
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/71698bc1e4d3d69f16f5ef9ee27041d891c46b60287af75778c31f6993c21100.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/71698bc1e4d3d69f16f5ef9ee27041d891c46b60287af75778c31f6993c21100-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='J 234609223', notes=NULL,
    public_notes=NULL, purchase_price=21.88,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number=NULL,
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/71698bc1e4d3d69f16f5ef9ee27041d891c46b60287af75778c31f6993c21100.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/71698bc1e4d3d69f16f5ef9ee27041d891c46b60287af75778c31f6993c21100-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 699147);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 315784), (SELECT id FROM banknote_issues WHERE numista_issue_id = 704033), 51733689,
     'UNC', 1, FALSE, 'CU 8828165',
     NULL, NULL, 2.09, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CU 8828165', notes=NULL,
    public_notes=NULL, purchase_price=2.09,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 704033);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 316600), (SELECT id FROM banknote_issues WHERE numista_issue_id = 705224), 56167286,
     'UNC', 1, FALSE, 'AA 2156972',
     'The winner of the “Bank Note of the Year Award” for 2022', NULL, 38.09, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 2156972', notes='The winner of the “Bank Note of the Year Award” for 2022',
    public_notes=NULL, purchase_price=38.09,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 705224);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 316600), (SELECT id FROM banknote_issues WHERE numista_issue_id = 811248), 70139770,
     'UNC', 1, FALSE, 'BX3729852',
     'The winner of the “Bank Note of the Year Award” for 2022', NULL, 59.99, 'EUR',
     'PMG', '67', '2360259-039',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d0b373bef3304755d224ffec41cc83f91566716c5d5605c7803d70a53c79be8a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d0b373bef3304755d224ffec41cc83f91566716c5d5605c7803d70a53c79be8a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BX3729852', notes='The winner of the “Bank Note of the Year Award” for 2022',
    public_notes=NULL, purchase_price=59.99,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2360259-039',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d0b373bef3304755d224ffec41cc83f91566716c5d5605c7803d70a53c79be8a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d0b373bef3304755d224ffec41cc83f91566716c5d5605c7803d70a53c79be8a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 811248);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 317249), (SELECT id FROM banknote_issues WHERE numista_issue_id = 706302), 51232606,
     'UNC', 1, FALSE, 'AX 8544826',
     NULL, NULL, 2.43, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AX 8544826', notes=NULL,
    public_notes=NULL, purchase_price=2.43,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 706302);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 317869), (SELECT id FROM banknote_issues WHERE numista_issue_id = 720737), 51232581,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 1.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=1.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 720737);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 318041), (SELECT id FROM banknote_issues WHERE numista_issue_id = 707770), 73626376,
     'UNC', 1, FALSE, 'АЯ 0012360',
     NULL, NULL, 35, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='АЯ 0012360', notes=NULL,
    public_notes=NULL, purchase_price=35,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 707770);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 318041), (SELECT id FROM banknote_issues WHERE numista_issue_id = 707770), 73626388,
     'UNC', 1, FALSE, 'АЯ 0027059',
     NULL, NULL, 35, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='АЯ 0027059', notes=NULL,
    public_notes=NULL, purchase_price=35,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 707770);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 318306), (SELECT id FROM banknote_issues WHERE numista_issue_id = 708172), 51297863,
     'UNC', 1, FALSE, 'X 6069818 AA',
     NULL, NULL, 3.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='X 6069818 AA', notes=NULL,
    public_notes=NULL, purchase_price=3.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 708172);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 318306), (SELECT id FROM banknote_issues WHERE numista_issue_id = 708172), 69650001,
     'UNC', 1, FALSE, 'X 6703318 AA',
     NULL, 'Auction 151 - PG 68+', 16.56, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/189eca91da3aa34a16925285f1e8c25953e58052dd0fc5ac30a19961f1af5ddf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/189eca91da3aa34a16925285f1e8c25953e58052dd0fc5ac30a19961f1af5ddf-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6c325046f7d07695e1b629c4c3dcdf06c2a6c0211a31b06bcd687860841d4b51.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6c325046f7d07695e1b629c4c3dcdf06c2a6c0211a31b06bcd687860841d4b51-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='X 6703318 AA', notes=NULL,
    public_notes='Auction 151 - PG 68+', purchase_price=16.56,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/189eca91da3aa34a16925285f1e8c25953e58052dd0fc5ac30a19961f1af5ddf.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/189eca91da3aa34a16925285f1e8c25953e58052dd0fc5ac30a19961f1af5ddf-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6c325046f7d07695e1b629c4c3dcdf06c2a6c0211a31b06bcd687860841d4b51.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6c325046f7d07695e1b629c4c3dcdf06c2a6c0211a31b06bcd687860841d4b51-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 708172);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 318927), (SELECT id FROM banknote_issues WHERE numista_issue_id = 709093), 51297972,
     'UNC', 1, FALSE, 'AA 318117',
     NULL, NULL, 23.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 318117', notes=NULL,
    public_notes=NULL, purchase_price=23.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 709093);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 319152), (SELECT id FROM banknote_issues WHERE numista_issue_id = 709546), 51526402,
     'UNC', 1, FALSE, 'DA0379210',
     NULL, NULL, 7.42, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DA0379210', notes=NULL,
    public_notes=NULL, purchase_price=7.42,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 709546);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 320406), (SELECT id FROM banknote_issues WHERE numista_issue_id = 711422), 56105664,
     'UNC', 1, FALSE, 'H74123891',
     NULL, NULL, 2.74, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='H74123891', notes=NULL,
    public_notes=NULL, purchase_price=2.74,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 711422);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 320408), (SELECT id FROM banknote_issues WHERE numista_issue_id = 711424), 56167020,
     'UNC', 1, FALSE, 'G69597771',
     NULL, NULL, 6.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='G69597771', notes=NULL,
    public_notes=NULL, purchase_price=6.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 711424);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 320433), (SELECT id FROM banknote_issues WHERE numista_issue_id = 711459), 56105678,
     'UNC', 1, FALSE, 'C54292471',
     NULL, NULL, 8.26, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C54292471', notes=NULL,
    public_notes=NULL, purchase_price=8.26,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 711459);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 320571), (SELECT id FROM banknote_issues WHERE numista_issue_id = 711668), 51615232,
     'UNC', 1, FALSE, 'BC 1323743',
     'The nominee for the “Bank Note of the Year Award” in 2022', NULL, 31.71, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BC 1323743', notes='The nominee for the “Bank Note of the Year Award” in 2022',
    public_notes=NULL, purchase_price=31.71,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 711668);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 320571), (SELECT id FROM banknote_issues WHERE numista_issue_id = 711668), 58134570,
     'UNC', 1, FALSE, 'BC 1095465',
     'The nominee for the “Bank Note of the Year Award” in 2022', NULL, 8.77, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BC 1095465', notes='The nominee for the “Bank Note of the Year Award” in 2022',
    public_notes=NULL, purchase_price=8.77,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 711668);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 320571), (SELECT id FROM banknote_issues WHERE numista_issue_id = 711668), 61244897,
     'UNC', 1, FALSE, 'BC 0422478',
     'The nominee for the “Bank Note of the Year Award” in 2022', NULL, 9.09, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a9a4d094eaa77dce7772cc5c410484b110190061b14aafdfdabc9e6837fb8d70.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a9a4d094eaa77dce7772cc5c410484b110190061b14aafdfdabc9e6837fb8d70-360.webp"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BC 0422478', notes='The nominee for the “Bank Note of the Year Award” in 2022',
    public_notes=NULL, purchase_price=9.09,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a9a4d094eaa77dce7772cc5c410484b110190061b14aafdfdabc9e6837fb8d70.webp", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a9a4d094eaa77dce7772cc5c410484b110190061b14aafdfdabc9e6837fb8d70-360.webp"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 711668);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 321377), (SELECT id FROM banknote_issues WHERE numista_issue_id = 713180), 58871520,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/846110ccb8c3c470db3e1c45a52bc16540e0a3681b56303f708a41107d5d77db.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/846110ccb8c3c470db3e1c45a52bc16540e0a3681b56303f708a41107d5d77db-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8d9d12aa4317c5a8d5f9b41a45311cbf78d5d4ca9c8a5e8db9f720259005c6ce.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8d9d12aa4317c5a8d5f9b41a45311cbf78d5d4ca9c8a5e8db9f720259005c6ce-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/846110ccb8c3c470db3e1c45a52bc16540e0a3681b56303f708a41107d5d77db.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/846110ccb8c3c470db3e1c45a52bc16540e0a3681b56303f708a41107d5d77db-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8d9d12aa4317c5a8d5f9b41a45311cbf78d5d4ca9c8a5e8db9f720259005c6ce.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8d9d12aa4317c5a8d5f9b41a45311cbf78d5d4ca9c8a5e8db9f720259005c6ce-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 713180);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 321390), (SELECT id FROM banknote_issues WHERE numista_issue_id = 713195), 58871491,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2bdaddd15fa94870b1bb2d25861adec3513fe65a3918162dfe7aec800955393e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2bdaddd15fa94870b1bb2d25861adec3513fe65a3918162dfe7aec800955393e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e457143eb49944baa468c13e40f394a350b17bd6107932abb1d0a06436bf8d13.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e457143eb49944baa468c13e40f394a350b17bd6107932abb1d0a06436bf8d13-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2bdaddd15fa94870b1bb2d25861adec3513fe65a3918162dfe7aec800955393e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2bdaddd15fa94870b1bb2d25861adec3513fe65a3918162dfe7aec800955393e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e457143eb49944baa468c13e40f394a350b17bd6107932abb1d0a06436bf8d13.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e457143eb49944baa468c13e40f394a350b17bd6107932abb1d0a06436bf8d13-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 713195);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 321391), (SELECT id FROM banknote_issues WHERE numista_issue_id = 713196), 58871472,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8c46f7963759f7eff97d2768b1710c1b6916f82c989e44ead1d491cfcd021eac.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8c46f7963759f7eff97d2768b1710c1b6916f82c989e44ead1d491cfcd021eac-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a68d4d6679def93b1ed05b18d01f53c31f9346701f4813417fe03501bb3bc855.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a68d4d6679def93b1ed05b18d01f53c31f9346701f4813417fe03501bb3bc855-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8c46f7963759f7eff97d2768b1710c1b6916f82c989e44ead1d491cfcd021eac.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8c46f7963759f7eff97d2768b1710c1b6916f82c989e44ead1d491cfcd021eac-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a68d4d6679def93b1ed05b18d01f53c31f9346701f4813417fe03501bb3bc855.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a68d4d6679def93b1ed05b18d01f53c31f9346701f4813417fe03501bb3bc855-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 713196);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 321392), (SELECT id FROM banknote_issues WHERE numista_issue_id = 713197), 58871512,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/cdbf0a903fae68e4b3744b5ec69f83d5f9571a04a6d25c19502c63a6946093c5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cdbf0a903fae68e4b3744b5ec69f83d5f9571a04a6d25c19502c63a6946093c5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e2b06eab38e53d14846dba463439a828f816845970027efe25c138cd991ebd14.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e2b06eab38e53d14846dba463439a828f816845970027efe25c138cd991ebd14-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/cdbf0a903fae68e4b3744b5ec69f83d5f9571a04a6d25c19502c63a6946093c5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cdbf0a903fae68e4b3744b5ec69f83d5f9571a04a6d25c19502c63a6946093c5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e2b06eab38e53d14846dba463439a828f816845970027efe25c138cd991ebd14.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e2b06eab38e53d14846dba463439a828f816845970027efe25c138cd991ebd14-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 713197);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 323351), (SELECT id FROM banknote_issues WHERE numista_issue_id = 716284), 60311989,
     'UNC', 1, FALSE, '63 549666',
     NULL, NULL, 6.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0da3c894526d63fe439761dd654800004cf1025a331e306bdb96564de6ef7e33.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0da3c894526d63fe439761dd654800004cf1025a331e306bdb96564de6ef7e33-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/39c12fb2fcda08a6204164eeab0a0d549459d8aae19ab366ee4ec60b66e079b5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/39c12fb2fcda08a6204164eeab0a0d549459d8aae19ab366ee4ec60b66e079b5-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='63 549666', notes=NULL,
    public_notes=NULL, purchase_price=6.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0da3c894526d63fe439761dd654800004cf1025a331e306bdb96564de6ef7e33.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0da3c894526d63fe439761dd654800004cf1025a331e306bdb96564de6ef7e33-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/39c12fb2fcda08a6204164eeab0a0d549459d8aae19ab366ee4ec60b66e079b5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/39c12fb2fcda08a6204164eeab0a0d549459d8aae19ab366ee4ec60b66e079b5-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 716284);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 323392), (SELECT id FROM banknote_issues WHERE numista_issue_id = 832799), 60314507,
     'UNC', 1, FALSE, 'Y22 338351',
     NULL, 'Auction 107', 8.15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d0e80301d32e743eb04864a7bb4797c03974eca1eb1ebc1b7a3aebeb77eb450a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d0e80301d32e743eb04864a7bb4797c03974eca1eb1ebc1b7a3aebeb77eb450a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/25c20bf753fc82ffcbb91ec67739130133035985540237874ec45fca06999842.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/25c20bf753fc82ffcbb91ec67739130133035985540237874ec45fca06999842-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Y22 338351', notes=NULL,
    public_notes='Auction 107', purchase_price=8.15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d0e80301d32e743eb04864a7bb4797c03974eca1eb1ebc1b7a3aebeb77eb450a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d0e80301d32e743eb04864a7bb4797c03974eca1eb1ebc1b7a3aebeb77eb450a-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/25c20bf753fc82ffcbb91ec67739130133035985540237874ec45fca06999842.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/25c20bf753fc82ffcbb91ec67739130133035985540237874ec45fca06999842-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 832799);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 323392), (SELECT id FROM banknote_issues WHERE numista_issue_id = 832799), 60314512,
     'UNC', 1, FALSE, 'Y22 338352',
     NULL, 'Auction 107', 8.15, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c80bf501639db9ba43087f223aa0022d06b8e3978a4c2f46bdac73302d54a2b5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c80bf501639db9ba43087f223aa0022d06b8e3978a4c2f46bdac73302d54a2b5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9bc2f6ee4843cce0404d7817f94616ba9de22d63b3b1c1a6a9213e7d8ee9c403.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9bc2f6ee4843cce0404d7817f94616ba9de22d63b3b1c1a6a9213e7d8ee9c403-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Y22 338352', notes=NULL,
    public_notes='Auction 107', purchase_price=8.15,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c80bf501639db9ba43087f223aa0022d06b8e3978a4c2f46bdac73302d54a2b5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c80bf501639db9ba43087f223aa0022d06b8e3978a4c2f46bdac73302d54a2b5-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9bc2f6ee4843cce0404d7817f94616ba9de22d63b3b1c1a6a9213e7d8ee9c403.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9bc2f6ee4843cce0404d7817f94616ba9de22d63b3b1c1a6a9213e7d8ee9c403-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 832799);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 324037), (SELECT id FROM banknote_issues WHERE numista_issue_id = 717750), 51734021,
     'UNC', 1, FALSE, 'FIJ 620240',
     NULL, NULL, 10, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FIJ 620240', notes=NULL,
    public_notes=NULL, purchase_price=10,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 717750);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 324910), (SELECT id FROM banknote_issues WHERE numista_issue_id = 719578), 51526380,
     'UNC', 1, FALSE, 'TQ8070252',
     NULL, NULL, 3.21, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='TQ8070252', notes=NULL,
    public_notes=NULL, purchase_price=3.21,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 719578);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 326931), (SELECT id FROM banknote_issues WHERE numista_issue_id = 722873), 56167044,
     'UNC', 1, FALSE, 'O16831867',
     NULL, NULL, 2.89, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='O16831867', notes=NULL,
    public_notes=NULL, purchase_price=2.89,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 722873);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 326933), (SELECT id FROM banknote_issues WHERE numista_issue_id = 722875), 55950491,
     'UNC', 1, FALSE, 'O 28367585',
     NULL, NULL, 6.23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='O 28367585', notes=NULL,
    public_notes=NULL, purchase_price=6.23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 722875);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 329458), (SELECT id FROM banknote_issues WHERE numista_issue_id = 726953), 58134499,
     'UNC', 1, FALSE, 'AD 196222',
     NULL, NULL, 7.45, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AD 196222', notes=NULL,
    public_notes=NULL, purchase_price=7.45,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 726953);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 329459), (SELECT id FROM banknote_issues WHERE numista_issue_id = 726954), 73562397,
     'UNC', 1, FALSE, 'CK 705353',
     'The nominee for the “Bank Note of the Year Award” in 2023', NULL, 18.89, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CK 705353', notes='The nominee for the “Bank Note of the Year Award” in 2023',
    public_notes=NULL, purchase_price=18.89,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 726954);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 332533), (SELECT id FROM banknote_issues WHERE numista_issue_id = 732350), 51298141,
     'UNC', 1, FALSE, '245 1819851',
     'The nominee for the “Bank Note of the Year Award” in 2022', NULL, 1.91, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='245 1819851', notes='The nominee for the “Bank Note of the Year Award” in 2022',
    public_notes=NULL, purchase_price=1.91,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 732350);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 332533), (SELECT id FROM banknote_issues WHERE numista_issue_id = 732350), 58134541,
     'UNC', 1, FALSE, NULL,
     'The nominee for the “Bank Note of the Year Award” in 2022', NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes='The nominee for the “Bank Note of the Year Award” in 2022',
    public_notes=NULL, purchase_price=1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 732350);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 332533), (SELECT id FROM banknote_issues WHERE numista_issue_id = 732350), 73564415,
     'UNC', 1, FALSE, '37H4657148',
     'The nominee for the “Bank Note of the Year Award” in 2022', NULL, 17.94, 'EUR',
     'PMG', '66', '2376119-042',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4190a935ce487c4fc0f98daadd677e1cfeeea6420a2e130e761dd554a9d1b65d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4190a935ce487c4fc0f98daadd677e1cfeeea6420a2e130e761dd554a9d1b65d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b28d8e9949a0b47659e2ec48f5f96ff442218c7bed7aea4daccd0567fef522ea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b28d8e9949a0b47659e2ec48f5f96ff442218c7bed7aea4daccd0567fef522ea-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='37H4657148', notes='The nominee for the “Bank Note of the Year Award” in 2022',
    public_notes=NULL, purchase_price=17.94,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2376119-042',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4190a935ce487c4fc0f98daadd677e1cfeeea6420a2e130e761dd554a9d1b65d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4190a935ce487c4fc0f98daadd677e1cfeeea6420a2e130e761dd554a9d1b65d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b28d8e9949a0b47659e2ec48f5f96ff442218c7bed7aea4daccd0567fef522ea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b28d8e9949a0b47659e2ec48f5f96ff442218c7bed7aea4daccd0567fef522ea-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 732350);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 332536), (SELECT id FROM banknote_issues WHERE numista_issue_id = 794267), 58134534,
     'UNC', 1, FALSE, NULL,
     'The nominee for the “Bank Note of the Year Award” in 2023', NULL, 2.21, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes='The nominee for the “Bank Note of the Year Award” in 2023',
    public_notes=NULL, purchase_price=2.21,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 794267);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 332536), (SELECT id FROM banknote_issues WHERE numista_issue_id = 794267), 73564326,
     'UNC', 1, FALSE, '6P5789591',
     'The nominee for the “Bank Note of the Year Award” in 2023', NULL, 17.16, 'EUR',
     'PMG', '65', '2375633-060',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e5166b80e97afa5b6b23c8eba006554f995737aa56410d6fc94a8ad9669ba941.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5166b80e97afa5b6b23c8eba006554f995737aa56410d6fc94a8ad9669ba941-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1717c87ef962428d52c0ab42978f315eff42fc4da8dd9779ce507cff1bffcb99.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1717c87ef962428d52c0ab42978f315eff42fc4da8dd9779ce507cff1bffcb99-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='6P5789591', notes='The nominee for the “Bank Note of the Year Award” in 2023',
    public_notes=NULL, purchase_price=17.16,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='2375633-060',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e5166b80e97afa5b6b23c8eba006554f995737aa56410d6fc94a8ad9669ba941.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5166b80e97afa5b6b23c8eba006554f995737aa56410d6fc94a8ad9669ba941-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1717c87ef962428d52c0ab42978f315eff42fc4da8dd9779ce507cff1bffcb99.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1717c87ef962428d52c0ab42978f315eff42fc4da8dd9779ce507cff1bffcb99-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 794267);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 336627), (SELECT id FROM banknote_issues WHERE numista_issue_id = 752354), 56645639,
     'UNC', 1, FALSE, 'AB 19840744',
     NULL, NULL, 17, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AB 19840744', notes=NULL,
    public_notes=NULL, purchase_price=17,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 752354);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 337073), NULL, 56105554,
     'UNC', 1, FALSE, 'AAB 0024455',
     'The nominee for the “Bank Note of the Year Award” in 2022', NULL, 1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AAB 0024455', notes='The nominee for the “Bank Note of the Year Award” in 2022',
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
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 337073), (SELECT id FROM banknote_issues WHERE numista_issue_id = 748303), 73563191,
     'UNC', 1, FALSE, 'AAL 6424778',
     'The nominee for the “Bank Note of the Year Award” in 2022', NULL, 0.86, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AAL 6424778', notes='The nominee for the “Bank Note of the Year Award” in 2022',
    public_notes=NULL, purchase_price=0.86,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 748303);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 338501), (SELECT id FROM banknote_issues WHERE numista_issue_id = 741692), 51526296,
     'UNC', 1, FALSE, 'CAA 182936',
     NULL, NULL, 0.45, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CAA 182936', notes=NULL,
    public_notes=NULL, purchase_price=0.45,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 741692);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 338503), (SELECT id FROM banknote_issues WHERE numista_issue_id = 741696), 51526313,
     'UNC', 1, FALSE, 'LAS 132208',
     NULL, NULL, 0.66, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LAS 132208', notes=NULL,
    public_notes=NULL, purchase_price=0.66,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 741696);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 338505), (SELECT id FROM banknote_issues WHERE numista_issue_id = 741698), 51526325,
     'UNC', 1, FALSE, 'NAB 977936',
     NULL, NULL, 1.09, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='NAB 977936', notes=NULL,
    public_notes=NULL, purchase_price=1.09,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 741698);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 338506), (SELECT id FROM banknote_issues WHERE numista_issue_id = 741699), 51526287,
     'UNC', 1, FALSE, 'AAY 837731',
     NULL, NULL, 3.21, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AAY 837731', notes=NULL,
    public_notes=NULL, purchase_price=3.21,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 741699);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 338508), (SELECT id FROM banknote_issues WHERE numista_issue_id = 741701), 51526334,
     'UNC', 1, FALSE, 'EAT 289007',
     NULL, NULL, 1.94, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='EAT 289007', notes=NULL,
    public_notes=NULL, purchase_price=1.94,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 741701);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 346780), (SELECT id FROM banknote_issues WHERE numista_issue_id = 871300), 58854628,
     'AU', 1, FALSE, '5651422E H',
     NULL, 'Auction 97', 15.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9d33e42ee2694fd73674d5ac59ef6cb02196d2864c85e7496482b5c2834baab9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9d33e42ee2694fd73674d5ac59ef6cb02196d2864c85e7496482b5c2834baab9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7ac28c4566846ff18883b9517ea4547defdc8568973b507c4df8873429ec4015.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7ac28c4566846ff18883b9517ea4547defdc8568973b507c4df8873429ec4015-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='5651422E H', notes=NULL,
    public_notes='Auction 97', purchase_price=15.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9d33e42ee2694fd73674d5ac59ef6cb02196d2864c85e7496482b5c2834baab9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9d33e42ee2694fd73674d5ac59ef6cb02196d2864c85e7496482b5c2834baab9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7ac28c4566846ff18883b9517ea4547defdc8568973b507c4df8873429ec4015.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7ac28c4566846ff18883b9517ea4547defdc8568973b507c4df8873429ec4015-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 871300);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 347532), (SELECT id FROM banknote_issues WHERE numista_issue_id = 755702), 54324841,
     'UNC', 1, FALSE, 'Q/3 802650',
     NULL, NULL, 33.67, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Q/3 802650', notes=NULL,
    public_notes=NULL, purchase_price=33.67,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 755702);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 347532), (SELECT id FROM banknote_issues WHERE numista_issue_id = 755702), 56645727,
     'UNC', 1, FALSE, 'Q/3 128770',
     NULL, NULL, 24.06, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Q/3 128770', notes=NULL,
    public_notes=NULL, purchase_price=24.06,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 755702);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 349608), (SELECT id FROM banknote_issues WHERE numista_issue_id = 759606), 56105612,
     'UNC', 1, FALSE, 'AL 0000856840',
     'The nominee for the “Bank Note of the Year Award” in 2022', NULL, 24.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AL 0000856840', notes='The nominee for the “Bank Note of the Year Award” in 2022',
    public_notes=NULL, purchase_price=24.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 759606);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 353522), (SELECT id FROM banknote_issues WHERE numista_issue_id = 766765), 51433159,
     'UNC', 1, FALSE, 'TA 9410823',
     NULL, NULL, 2.77, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='TA 9410823', notes=NULL,
    public_notes=NULL, purchase_price=2.77,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 766765);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 353523), (SELECT id FROM banknote_issues WHERE numista_issue_id = 766767), 51433168,
     'UNC', 1, FALSE, 'PA 0703526',
     NULL, NULL, 6.19, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='PA 0703526', notes=NULL,
    public_notes=NULL, purchase_price=6.19,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 766767);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 353547), (SELECT id FROM banknote_issues WHERE numista_issue_id = 766823), 77628246,
     'UNC', 1, FALSE, 'MK 0008594',
     NULL, 'Auction 183', 53.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/59f245f7512713f441a8c8fb55dbe04c243332e41ac62b803609cb24bdffe692.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/59f245f7512713f441a8c8fb55dbe04c243332e41ac62b803609cb24bdffe692-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8dcc6800bab0e877f8b03348c15e86db0e37791184a37a881c4eeb1c00370637.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8dcc6800bab0e877f8b03348c15e86db0e37791184a37a881c4eeb1c00370637-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MK 0008594', notes=NULL,
    public_notes='Auction 183', purchase_price=53.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/59f245f7512713f441a8c8fb55dbe04c243332e41ac62b803609cb24bdffe692.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/59f245f7512713f441a8c8fb55dbe04c243332e41ac62b803609cb24bdffe692-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8dcc6800bab0e877f8b03348c15e86db0e37791184a37a881c4eeb1c00370637.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8dcc6800bab0e877f8b03348c15e86db0e37791184a37a881c4eeb1c00370637-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 766823);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 353863), (SELECT id FROM banknote_issues WHERE numista_issue_id = 767241), 73626301,
     'UNC', 1, FALSE, 'ГС 0029770',
     NULL, NULL, 19, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ГС 0029770', notes=NULL,
    public_notes=NULL, purchase_price=19,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 767241);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 353863), (SELECT id FROM banknote_issues WHERE numista_issue_id = 767241), 73626325,
     'UNC', 1, FALSE, 'ГС 0043817',
     NULL, NULL, 19, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ГС 0043817', notes=NULL,
    public_notes=NULL, purchase_price=19,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 767241);

END $$;