-- migration_006g_collection.sql
-- Rows 601–750 of 976
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
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212902), (SELECT id FROM banknote_issues WHERE numista_issue_id = 912547), 76530355,
     'UNC', 1, FALSE, 'JA 000000',
     NULL, NULL, 49.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='JA 000000', notes=NULL,
    public_notes=NULL, purchase_price=49.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 912547);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212919), (SELECT id FROM banknote_issues WHERE numista_issue_id = 814276), 76530859,
     'UNC', 1, FALSE, 'JQ 000000',
     NULL, 'Pinholes', 4.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='JQ 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=4.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 814276);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212923), (SELECT id FROM banknote_issues WHERE numista_issue_id = 817533), 76530932,
     'UNC', 1, FALSE, 'LP 000000',
     NULL, 'Pinholes', 9.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='LP 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=9.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 817533);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212923), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529440), 76530949,
     'UNC', 1, FALSE, 'HU 364837',
     NULL, NULL, 10.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HU 364837', notes=NULL,
    public_notes=NULL, purchase_price=10.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529440);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212923), (SELECT id FROM banknote_issues WHERE numista_issue_id = 817533), 76530965,
     'UNC', 1, FALSE, 'HS 000000',
     NULL, 'Pinholes', 9.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HS 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=9.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 817533);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212924), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529442), 76530524,
     'UNC', 1, FALSE, 'JB 000000',
     NULL, 'Pinholes', 19.95, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='JB 000000', notes=NULL,
    public_notes='Pinholes', purchase_price=19.95,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529442);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212924), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529441), 76530606,
     'UNC', 1, FALSE, 'JB 016942',
     NULL, NULL, 21.76, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='JB 016942', notes=NULL,
    public_notes=NULL, purchase_price=21.76,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529441);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212925), (SELECT id FROM banknote_issues WHERE numista_issue_id = 802738), 76477731,
     'UNC', 1, FALSE, 'A/13 518067',
     NULL, NULL, 23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/13 518067', notes=NULL,
    public_notes=NULL, purchase_price=23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 802738);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212927), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529449), 76530372,
     'UNC', 1, FALSE, 'KA 000000',
     NULL, NULL, 49.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='KA 000000', notes=NULL,
    public_notes=NULL, purchase_price=49.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529449);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212927), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529448), 76530393,
     'UNC', 1, FALSE, 'KK 774617',
     NULL, NULL, 54.41, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='KK 774617', notes=NULL,
    public_notes=NULL, purchase_price=54.41,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529448);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212947), (SELECT id FROM banknote_issues WHERE numista_issue_id = 677449), 51275194,
     'UNC', 1, FALSE, 'OD 5553937W',
     NULL, NULL, 1.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='OD 5553937W', notes=NULL,
    public_notes=NULL, purchase_price=1.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 677449);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212947), (SELECT id FROM banknote_issues WHERE numista_issue_id = 677449), 51733337,
     'UNC', 1, FALSE, 'OD 5553936W',
     NULL, NULL, 2.55, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='OD 5553936W', notes=NULL,
    public_notes=NULL, purchase_price=2.55,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 677449);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 212968), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529513), 51234622,
     'UNC', 1, FALSE, 'PD 9257571 U',
     NULL, NULL, 1.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='PD 9257571 U', notes=NULL,
    public_notes=NULL, purchase_price=1.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529513);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213042), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529605), 78342837,
     'UNC', 1, FALSE, 'A/1 099969',
     NULL, 'Auction 189', 29.08, 'EUR',
     'PMG', '65', '1917730-028',
     '["EPQ"]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/1 099969', notes=NULL,
    public_notes='Auction 189', purchase_price=29.08,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1917730-028',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529605);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213184), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529962), 51232035,
     'UNC', 1, FALSE, 'FB 856461',
     NULL, NULL, 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='FB 856461', notes=NULL,
    public_notes=NULL, purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529962);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213201), (SELECT id FROM banknote_issues WHERE numista_issue_id = 529992), 70287598,
     'UNC', 1, FALSE, 'S/Y 482837',
     NULL, 'Auction 155', 27.64, 'EUR',
     'PMG', '66', '1917086-013',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5f6056dd9c4ab479d551da665ca4bbb1adfe672e8bfd34fd0d6a98a2cdbacb21.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5f6056dd9c4ab479d551da665ca4bbb1adfe672e8bfd34fd0d6a98a2cdbacb21-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7fd5c78ed534ee2d093fd5a90fb31831e72ca38c303e332dea578ebdef56e489.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7fd5c78ed534ee2d093fd5a90fb31831e72ca38c303e332dea578ebdef56e489-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='S/Y 482837', notes=NULL,
    public_notes='Auction 155', purchase_price=27.64,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1917086-013',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5f6056dd9c4ab479d551da665ca4bbb1adfe672e8bfd34fd0d6a98a2cdbacb21.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5f6056dd9c4ab479d551da665ca4bbb1adfe672e8bfd34fd0d6a98a2cdbacb21-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/7fd5c78ed534ee2d093fd5a90fb31831e72ca38c303e332dea578ebdef56e489.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/7fd5c78ed534ee2d093fd5a90fb31831e72ca38c303e332dea578ebdef56e489-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 529992);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213240), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530074), 60625027,
     'UNC', 1, FALSE, '68-A 830666',
     NULL, NULL, 3.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/cf768ce34273b42268dd42a190baad158ee3cc26b8d37ddfa259fe98f1bf4df8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cf768ce34273b42268dd42a190baad158ee3cc26b8d37ddfa259fe98f1bf4df8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5c13074c550791201eece9c19bf9e569b5430e3e2be64b07607a54de0ef44c0e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5c13074c550791201eece9c19bf9e569b5430e3e2be64b07607a54de0ef44c0e-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='68-A 830666', notes=NULL,
    public_notes=NULL, purchase_price=3.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/cf768ce34273b42268dd42a190baad158ee3cc26b8d37ddfa259fe98f1bf4df8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cf768ce34273b42268dd42a190baad158ee3cc26b8d37ddfa259fe98f1bf4df8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5c13074c550791201eece9c19bf9e569b5430e3e2be64b07607a54de0ef44c0e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5c13074c550791201eece9c19bf9e569b5430e3e2be64b07607a54de0ef44c0e-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530074);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213242), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530078), 60625069,
     'UNC', 1, FALSE, '52-A 883460',
     NULL, NULL, 8.24, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/bffde366af87f53659218a32820c82261a4ceead04b62255ee2e9b7e9c08b8e9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bffde366af87f53659218a32820c82261a4ceead04b62255ee2e9b7e9c08b8e9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/99d6c4e1f0b45c9118a1545d8f543a19f5b8ca2c06e7371c2dd82294b245c34d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/99d6c4e1f0b45c9118a1545d8f543a19f5b8ca2c06e7371c2dd82294b245c34d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='52-A 883460', notes=NULL,
    public_notes=NULL, purchase_price=8.24,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/bffde366af87f53659218a32820c82261a4ceead04b62255ee2e9b7e9c08b8e9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bffde366af87f53659218a32820c82261a4ceead04b62255ee2e9b7e9c08b8e9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/99d6c4e1f0b45c9118a1545d8f543a19f5b8ca2c06e7371c2dd82294b245c34d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/99d6c4e1f0b45c9118a1545d8f543a19f5b8ca2c06e7371c2dd82294b245c34d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530078);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213285), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530154), 51233662,
     'UNC', 1, FALSE, 'A/1 05673611',
     NULL, NULL, 5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/1 05673611', notes=NULL,
    public_notes=NULL, purchase_price=5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530154);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213291), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530164), 60306145,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530164);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213292), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530165), 60306156,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530165);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213293), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530166), 60306165,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530166);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213294), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530167), 60306173,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530167);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213295), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530168), 60306184,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530168);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213373), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530296), 60314598,
     'UNC', 1, FALSE, 'D/00 0085190',
     'The nominee for the “Bank Note of the Year Award” in 2015', 'Auction 107', 19.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b392305bbfbfd506fff7d2e9982c4e030497d03ed20250e56683d91a2fda56a4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b392305bbfbfd506fff7d2e9982c4e030497d03ed20250e56683d91a2fda56a4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d8e4ec405366613ab3935cca7190132baac84e9059feb363ff90d71fa402acd9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d8e4ec405366613ab3935cca7190132baac84e9059feb363ff90d71fa402acd9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D/00 0085190', notes='The nominee for the “Bank Note of the Year Award” in 2015',
    public_notes='Auction 107', purchase_price=19.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b392305bbfbfd506fff7d2e9982c4e030497d03ed20250e56683d91a2fda56a4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b392305bbfbfd506fff7d2e9982c4e030497d03ed20250e56683d91a2fda56a4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/d8e4ec405366613ab3935cca7190132baac84e9059feb363ff90d71fa402acd9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d8e4ec405366613ab3935cca7190132baac84e9059feb363ff90d71fa402acd9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530296);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213495), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530464), 60313581,
     'UNC', 1, FALSE, '16618479',
     NULL, 'Auction 107', 40.15, 'EUR',
     'PMG', '65', '1914755-056',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e5622071018b7f62cf47f43f980f0b15af554fff0919c6afb4fff3a26453bea2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5622071018b7f62cf47f43f980f0b15af554fff0919c6afb4fff3a26453bea2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5b8f40530c2f5925ec8da46915ffd474c186ef01b95b5fee4112249e5977bb7a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5b8f40530c2f5925ec8da46915ffd474c186ef01b95b5fee4112249e5977bb7a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='16618479', notes=NULL,
    public_notes='Auction 107', purchase_price=40.15,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1914755-056',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e5622071018b7f62cf47f43f980f0b15af554fff0919c6afb4fff3a26453bea2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5622071018b7f62cf47f43f980f0b15af554fff0919c6afb4fff3a26453bea2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/5b8f40530c2f5925ec8da46915ffd474c186ef01b95b5fee4112249e5977bb7a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5b8f40530c2f5925ec8da46915ffd474c186ef01b95b5fee4112249e5977bb7a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530464);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213548), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530648), 51231241,
     'UNC', 1, FALSE, 'UU 01344292',
     NULL, NULL, 2.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='UU 01344292', notes=NULL,
    public_notes=NULL, purchase_price=2.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530648);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213603), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530766), 51275948,
     'UNC', 1, FALSE, '1392768',
     NULL, NULL, 1.18, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1392768', notes=NULL,
    public_notes=NULL, purchase_price=1.18,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530766);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 213702), (SELECT id FROM banknote_issues WHERE numista_issue_id = 530943), 59827953,
     'UNC', 1, FALSE, 'G/208 947578',
     NULL, NULL, 21.71, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1a8fca3e5276e1a9c089229b141956e7198b05d491b223c9f86b43c01f8f11d0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1a8fca3e5276e1a9c089229b141956e7198b05d491b223c9f86b43c01f8f11d0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ac3b523bba42df5b4107d00cd9c289a755b76107d89cb759142003fa159849ae.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ac3b523bba42df5b4107d00cd9c289a755b76107d89cb759142003fa159849ae-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='G/208 947578', notes=NULL,
    public_notes=NULL, purchase_price=21.71,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1a8fca3e5276e1a9c089229b141956e7198b05d491b223c9f86b43c01f8f11d0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1a8fca3e5276e1a9c089229b141956e7198b05d491b223c9f86b43c01f8f11d0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ac3b523bba42df5b4107d00cd9c289a755b76107d89cb759142003fa159849ae.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ac3b523bba42df5b4107d00cd9c289a755b76107d89cb759142003fa159849ae-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 530943);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214001), (SELECT id FROM banknote_issues WHERE numista_issue_id = 531557), 51234660,
     'UNC', 1, FALSE, 'CM 0612228',
     NULL, NULL, 1.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CM 0612228', notes=NULL,
    public_notes=NULL, purchase_price=1.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 531557);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214058), (SELECT id FROM banknote_issues WHERE numista_issue_id = 531684), 58854129,
     'UNC', 1, FALSE, 'A/I 354914',
     NULL, 'Auction 97', 44.01, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a35244cf6c6ae309ba34c20adfdba94ebac7cb969794008ea36696b0387d9ec3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a35244cf6c6ae309ba34c20adfdba94ebac7cb969794008ea36696b0387d9ec3-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/444c7b8749510eb32256be5757e97327f810126411e17af20eb4208574ae844f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/444c7b8749510eb32256be5757e97327f810126411e17af20eb4208574ae844f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/I 354914', notes=NULL,
    public_notes='Auction 97', purchase_price=44.01,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a35244cf6c6ae309ba34c20adfdba94ebac7cb969794008ea36696b0387d9ec3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a35244cf6c6ae309ba34c20adfdba94ebac7cb969794008ea36696b0387d9ec3-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/444c7b8749510eb32256be5757e97327f810126411e17af20eb4208574ae844f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/444c7b8749510eb32256be5757e97327f810126411e17af20eb4208574ae844f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 531684);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214058), (SELECT id FROM banknote_issues WHERE numista_issue_id = 531684), 78342900,
     'UNC', 1, FALSE, 'A/1 200532',
     NULL, 'Auction 189', 36.53, 'EUR',
     'PMG', '67', '1913093-003',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0ad3da38f5345175bb63cfc485511337b4a11c76aff0708da4f475cd3a192210.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0ad3da38f5345175bb63cfc485511337b4a11c76aff0708da4f475cd3a192210-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/1 200532', notes=NULL,
    public_notes='Auction 189', purchase_price=36.53,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='1913093-003',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0ad3da38f5345175bb63cfc485511337b4a11c76aff0708da4f475cd3a192210.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0ad3da38f5345175bb63cfc485511337b4a11c76aff0708da4f475cd3a192210-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 531684);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214107), (SELECT id FROM banknote_issues WHERE numista_issue_id = 531822), 51234627,
     'UNC', 1, FALSE, 'U 8857352 A',
     NULL, NULL, 3.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='U 8857352 A', notes=NULL,
    public_notes=NULL, purchase_price=3.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 531822);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214261), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532090), 60787148,
     'AU', 1, FALSE, '129528',
     NULL, 'Auction 111', 44.15, 'EUR',
     'PMG', '58', '1912137-007',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/eb430b6e0aa6586c80bd18980b9439e29e10fb732e7893340bf3d0650ccd5bdc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/eb430b6e0aa6586c80bd18980b9439e29e10fb732e7893340bf3d0650ccd5bdc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6001f97070f9ab755bd2275110e5422858ab043106a90ee50ee1bb37966d202f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6001f97070f9ab755bd2275110e5422858ab043106a90ee50ee1bb37966d202f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='129528', notes=NULL,
    public_notes='Auction 111', purchase_price=44.15,
    price_currency='EUR', grading_company='PMG',
    grading_score='58', cert_number='1912137-007',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/eb430b6e0aa6586c80bd18980b9439e29e10fb732e7893340bf3d0650ccd5bdc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/eb430b6e0aa6586c80bd18980b9439e29e10fb732e7893340bf3d0650ccd5bdc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6001f97070f9ab755bd2275110e5422858ab043106a90ee50ee1bb37966d202f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6001f97070f9ab755bd2275110e5422858ab043106a90ee50ee1bb37966d202f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532090);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214285), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532123), 51231738,
     'UNC', 1, FALSE, 'A 3711762',
     'The nominee for the “Bank Note of the Year Award” in 2020', NULL, 5.32, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 3711762', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes=NULL, purchase_price=5.32,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532123);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214285), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532123), 60313083,
     'UNC', 1, FALSE, 'A 0900588',
     'The nominee for the “Bank Note of the Year Award” in 2020', 'Auction 104', 3.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/86ab21238b0c2cc5af4168ff4a4dd79bcae5a6fe9f8059d5203b401781072bbb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/86ab21238b0c2cc5af4168ff4a4dd79bcae5a6fe9f8059d5203b401781072bbb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4f7854a879075bcb7567f482ad8c49277fa0ca9a84ed14e32a12f780b92ed613.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4f7854a879075bcb7567f482ad8c49277fa0ca9a84ed14e32a12f780b92ed613-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 0900588', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes='Auction 104', purchase_price=3.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/86ab21238b0c2cc5af4168ff4a4dd79bcae5a6fe9f8059d5203b401781072bbb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/86ab21238b0c2cc5af4168ff4a4dd79bcae5a6fe9f8059d5203b401781072bbb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/4f7854a879075bcb7567f482ad8c49277fa0ca9a84ed14e32a12f780b92ed613.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4f7854a879075bcb7567f482ad8c49277fa0ca9a84ed14e32a12f780b92ed613-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532123);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214285), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532123), 60313084,
     'UNC', 1, FALSE, 'A 0900589',
     'The nominee for the “Bank Note of the Year Award” in 2020', 'Auction 104', 3.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c6f2582650fad679e6aa7830c52ba44f101112b6e75257b52abe410461430df4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c6f2582650fad679e6aa7830c52ba44f101112b6e75257b52abe410461430df4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/fe947bcca365a7b402fdc77b974372e61770bb270b0c1300a5797d20316a0b24.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fe947bcca365a7b402fdc77b974372e61770bb270b0c1300a5797d20316a0b24-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 0900589', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes='Auction 104', purchase_price=3.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c6f2582650fad679e6aa7830c52ba44f101112b6e75257b52abe410461430df4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c6f2582650fad679e6aa7830c52ba44f101112b6e75257b52abe410461430df4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/fe947bcca365a7b402fdc77b974372e61770bb270b0c1300a5797d20316a0b24.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fe947bcca365a7b402fdc77b974372e61770bb270b0c1300a5797d20316a0b24-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532123);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214285), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532123), 60313090,
     'UNC', 1, FALSE, 'A 0900590',
     'The nominee for the “Bank Note of the Year Award” in 2020', 'Auction 104', 3.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/29a5c4de984e71d5ffe9804b679c43c1fffc5d83c39ee2a023a9567b66fe6ca4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/29a5c4de984e71d5ffe9804b679c43c1fffc5d83c39ee2a023a9567b66fe6ca4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cc22aaed6678bd1783bb439916dd2121f871ea1fbbe9555aea314cb2573b0770.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cc22aaed6678bd1783bb439916dd2121f871ea1fbbe9555aea314cb2573b0770-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 0900590', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes='Auction 104', purchase_price=3.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/29a5c4de984e71d5ffe9804b679c43c1fffc5d83c39ee2a023a9567b66fe6ca4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/29a5c4de984e71d5ffe9804b679c43c1fffc5d83c39ee2a023a9567b66fe6ca4-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/cc22aaed6678bd1783bb439916dd2121f871ea1fbbe9555aea314cb2573b0770.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/cc22aaed6678bd1783bb439916dd2121f871ea1fbbe9555aea314cb2573b0770-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532123);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214285), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532123), 60313092,
     'UNC', 1, FALSE, 'A 0900591',
     'The nominee for the “Bank Note of the Year Award” in 2020', 'Auction 104', 3.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/378ecd03b6fd644f10737ebb597783dbfc22b375c1c5f2b103d013f2b35ffdd3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/378ecd03b6fd644f10737ebb597783dbfc22b375c1c5f2b103d013f2b35ffdd3-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9624161a75c147fe23312d4a5e744e0ab2ead3c520be31881b117a8834d0d1a6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9624161a75c147fe23312d4a5e744e0ab2ead3c520be31881b117a8834d0d1a6-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 0900591', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes='Auction 104', purchase_price=3.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/378ecd03b6fd644f10737ebb597783dbfc22b375c1c5f2b103d013f2b35ffdd3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/378ecd03b6fd644f10737ebb597783dbfc22b375c1c5f2b103d013f2b35ffdd3-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/9624161a75c147fe23312d4a5e744e0ab2ead3c520be31881b117a8834d0d1a6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9624161a75c147fe23312d4a5e744e0ab2ead3c520be31881b117a8834d0d1a6-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532123);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214285), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532123), 60313098,
     'UNC', 1, FALSE, 'A 0900592',
     'The nominee for the “Bank Note of the Year Award” in 2020', 'Auction 104', 3.2, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c6f5b48f82ce775862310ce62287c5467d1dd5e1070a100ded6b2237bc8506a0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c6f5b48f82ce775862310ce62287c5467d1dd5e1070a100ded6b2237bc8506a0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bf1c243eea4a30e9da073499c45f92aa40f56560bdeb517c522dabc00e3b6673.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bf1c243eea4a30e9da073499c45f92aa40f56560bdeb517c522dabc00e3b6673-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 0900592', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes='Auction 104', purchase_price=3.2,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c6f5b48f82ce775862310ce62287c5467d1dd5e1070a100ded6b2237bc8506a0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c6f5b48f82ce775862310ce62287c5467d1dd5e1070a100ded6b2237bc8506a0-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bf1c243eea4a30e9da073499c45f92aa40f56560bdeb517c522dabc00e3b6673.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bf1c243eea4a30e9da073499c45f92aa40f56560bdeb517c522dabc00e3b6673-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532123);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214639), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532725), 51297952,
     'UNC', 1, FALSE, 'BD 082100',
     NULL, NULL, 9.07, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BD 082100', notes=NULL,
    public_notes=NULL, purchase_price=9.07,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532725);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214696), NULL, 60312532,
     'UNC', 1, FALSE, 'A 2112322354',
     NULL, 'Auction 104', 19.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e65d520f2decefd80ba84bd438592bde923e14d4bc0266f786e649d1814c22fc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e65d520f2decefd80ba84bd438592bde923e14d4bc0266f786e649d1814c22fc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6b1cca63b61b4064d77adbb88014150c807178e82a84918f910e62dd53f39dd4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6b1cca63b61b4064d77adbb88014150c807178e82a84918f910e62dd53f39dd4-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 2112322354', notes=NULL,
    public_notes='Auction 104', purchase_price=19.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e65d520f2decefd80ba84bd438592bde923e14d4bc0266f786e649d1814c22fc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e65d520f2decefd80ba84bd438592bde923e14d4bc0266f786e649d1814c22fc-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6b1cca63b61b4064d77adbb88014150c807178e82a84918f910e62dd53f39dd4.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6b1cca63b61b4064d77adbb88014150c807178e82a84918f910e62dd53f39dd4-360.jpg"}]'::jsonb,
    issue_id=NULL;

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214696), (SELECT id FROM banknote_issues WHERE numista_issue_id = 872022), 73760783,
     'UNC', 1, FALSE, '2112322406',
     NULL, 'Auction 170', 32.77, 'EUR',
     'PMG', '66', '1921335-037',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f6a5db6dbce40e9e9fdc434d95d7842561db2bc163e4bb5870c61d764773c99c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f6a5db6dbce40e9e9fdc434d95d7842561db2bc163e4bb5870c61d764773c99c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8388119e607d1dc5ced0715878d9a244f43140974d0ad6d8de78b4bf28bff3b0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8388119e607d1dc5ced0715878d9a244f43140974d0ad6d8de78b4bf28bff3b0-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='2112322406', notes=NULL,
    public_notes='Auction 170', purchase_price=32.77,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1921335-037',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f6a5db6dbce40e9e9fdc434d95d7842561db2bc163e4bb5870c61d764773c99c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f6a5db6dbce40e9e9fdc434d95d7842561db2bc163e4bb5870c61d764773c99c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8388119e607d1dc5ced0715878d9a244f43140974d0ad6d8de78b4bf28bff3b0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8388119e607d1dc5ced0715878d9a244f43140974d0ad6d8de78b4bf28bff3b0-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 872022);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214720), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532928), 60305817,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532928);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214724), (SELECT id FROM banknote_issues WHERE numista_issue_id = 532936), 58854418,
     'UNC', 1, FALSE, 'P/I 5250497',
     NULL, 'Auction 97', 12.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5f4237ab56e20e4cb7ec7b1bb55683409ab8ffa2491b844aa6c5dc40b01534c9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5f4237ab56e20e4cb7ec7b1bb55683409ab8ffa2491b844aa6c5dc40b01534c9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c8b7fc582d7d07832e05a35d9454c9cfa166eb8a70724c5f07b6a2336db466c9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c8b7fc582d7d07832e05a35d9454c9cfa166eb8a70724c5f07b6a2336db466c9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='P/I 5250497', notes=NULL,
    public_notes='Auction 97', purchase_price=12.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5f4237ab56e20e4cb7ec7b1bb55683409ab8ffa2491b844aa6c5dc40b01534c9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5f4237ab56e20e4cb7ec7b1bb55683409ab8ffa2491b844aa6c5dc40b01534c9-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c8b7fc582d7d07832e05a35d9454c9cfa166eb8a70724c5f07b6a2336db466c9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c8b7fc582d7d07832e05a35d9454c9cfa166eb8a70724c5f07b6a2336db466c9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 532936);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214851), (SELECT id FROM banknote_issues WHERE numista_issue_id = 533133), 51274388,
     'UNC', 1, FALSE, 'A27 4244716',
     NULL, NULL, 1.09, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A27 4244716', notes=NULL,
    public_notes=NULL, purchase_price=1.09,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 533133);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 214989), (SELECT id FROM banknote_issues WHERE numista_issue_id = 533307), 75513511,
     'UNC', 1, FALSE, 'AC 0011973',
     NULL, 'Auction 172', 40.82, 'EUR',
     'PMG', '66', '2431061-013',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/12dd4adb8077849bbc89e37d9fecab453929856a6609184fb726afe7e8283808.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/12dd4adb8077849bbc89e37d9fecab453929856a6609184fb726afe7e8283808-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/70de8a8f9f3885b12d9db4d537c5cffa30366c13d40406b15eca65d898242b7a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/70de8a8f9f3885b12d9db4d537c5cffa30366c13d40406b15eca65d898242b7a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 0011973', notes=NULL,
    public_notes='Auction 172', purchase_price=40.82,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2431061-013',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/12dd4adb8077849bbc89e37d9fecab453929856a6609184fb726afe7e8283808.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/12dd4adb8077849bbc89e37d9fecab453929856a6609184fb726afe7e8283808-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/70de8a8f9f3885b12d9db4d537c5cffa30366c13d40406b15eca65d898242b7a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/70de8a8f9f3885b12d9db4d537c5cffa30366c13d40406b15eca65d898242b7a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 533307);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215409), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534085), 58870802,
     'UNC', 1, FALSE, NULL,
     NULL, 'Auction 97', 3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/ebb09736170efbc19c51acadb3ef38bf03682aff57389cb806a6b48a47dc2591.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ebb09736170efbc19c51acadb3ef38bf03682aff57389cb806a6b48a47dc2591-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a3dabca375dfa3bfffc1bc1629b3599bfed912c026981f5f31b77de1c3aacdea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a3dabca375dfa3bfffc1bc1629b3599bfed912c026981f5f31b77de1c3aacdea-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes='Auction 97', purchase_price=3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/ebb09736170efbc19c51acadb3ef38bf03682aff57389cb806a6b48a47dc2591.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ebb09736170efbc19c51acadb3ef38bf03682aff57389cb806a6b48a47dc2591-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a3dabca375dfa3bfffc1bc1629b3599bfed912c026981f5f31b77de1c3aacdea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a3dabca375dfa3bfffc1bc1629b3599bfed912c026981f5f31b77de1c3aacdea-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534085);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215453), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534165), 51232354,
     'UNC', 1, FALSE, 'AF 0008397',
     NULL, NULL, 2.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AF 0008397', notes=NULL,
    public_notes=NULL, purchase_price=2.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534165);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215455), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534167), 51232341,
     'UNC', 1, FALSE, 'AA 2402513',
     'The nominee for the “Bank Note of the Year Award” in 2020', NULL, 5.32, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 2402513', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes=NULL, purchase_price=5.32,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534167);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215455), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534167), 73585414,
     'UNC', 1, FALSE, 'AA 2402523',
     'The nominee for the “Bank Note of the Year Award” in 2020', NULL, 5.32, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 2402523', notes='The nominee for the “Bank Note of the Year Award” in 2020',
    public_notes=NULL, purchase_price=5.32,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534167);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215533), (SELECT id FROM banknote_issues WHERE numista_issue_id = 652074), 60306877,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.85, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.85,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 652074);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215537), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534333), 51231902,
     'UNC', 1, FALSE, 'BW 946654',
     NULL, NULL, 6.17, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BW 946654', notes=NULL,
    public_notes=NULL, purchase_price=6.17,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534333);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215561), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534407), 51235028,
     'UNC', 1, FALSE, 'C 02130295',
     NULL, NULL, 1.22, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C 02130295', notes=NULL,
    public_notes=NULL, purchase_price=1.22,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534407);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215562), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534408), 75513678,
     'UNC', 1, FALSE, 'B/11 1661298',
     NULL, 'Auction 172', 32.12, 'EUR',
     'PMG', '66', '2431029-017',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/c7f47fd722e92149cf2d938fbf5eff78f98bcc7c4235a1737965c3f63394fb85.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c7f47fd722e92149cf2d938fbf5eff78f98bcc7c4235a1737965c3f63394fb85-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c025d3b5795f75b57ea4a5f49e839068e655d1a55b29f0b8700aa05b2c0bf5c8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c025d3b5795f75b57ea4a5f49e839068e655d1a55b29f0b8700aa05b2c0bf5c8-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B/11 1661298', notes=NULL,
    public_notes='Auction 172', purchase_price=32.12,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='2431029-017',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/c7f47fd722e92149cf2d938fbf5eff78f98bcc7c4235a1737965c3f63394fb85.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c7f47fd722e92149cf2d938fbf5eff78f98bcc7c4235a1737965c3f63394fb85-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/c025d3b5795f75b57ea4a5f49e839068e655d1a55b29f0b8700aa05b2c0bf5c8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/c025d3b5795f75b57ea4a5f49e839068e655d1a55b29f0b8700aa05b2c0bf5c8-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534408);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215563), (SELECT id FROM banknote_issues WHERE numista_issue_id = 593318), 51274991,
     'UNC', 1, FALSE, 'S07 5437527',
     NULL, NULL, 2.11, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='S07 5437527', notes=NULL,
    public_notes=NULL, purchase_price=2.11,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 593318);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215575), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534433), 51275236,
     'UNC', 1, FALSE, 'A 019962',
     NULL, NULL, 5.57, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 019962', notes=NULL,
    public_notes=NULL, purchase_price=5.57,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534433);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215596), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534484), 51231667,
     'UNC', 1, FALSE, 'GR 020732',
     NULL, NULL, 7.23, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GR 020732', notes=NULL,
    public_notes=NULL, purchase_price=7.23,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534484);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215596), (SELECT id FROM banknote_issues WHERE numista_issue_id = 534484), 77628872,
     'UNC', 1, FALSE, 'GV 477365',
     NULL, 'Auction 183', 41.08, 'EUR',
     'PMG', '67', '2346944-040',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/47c81232e56a6b26f243a5f2d32b41061520be0b8b7a24f9f503f0c58782b296.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/47c81232e56a6b26f243a5f2d32b41061520be0b8b7a24f9f503f0c58782b296-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8a8b269cb8f0b030506b5e62c9d238fff11a610845a5c30d3fed402dd60ff43f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8a8b269cb8f0b030506b5e62c9d238fff11a610845a5c30d3fed402dd60ff43f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GV 477365', notes=NULL,
    public_notes='Auction 183', purchase_price=41.08,
    price_currency='EUR', grading_company='PMG',
    grading_score='67', cert_number='2346944-040',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/47c81232e56a6b26f243a5f2d32b41061520be0b8b7a24f9f503f0c58782b296.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/47c81232e56a6b26f243a5f2d32b41061520be0b8b7a24f9f503f0c58782b296-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8a8b269cb8f0b030506b5e62c9d238fff11a610845a5c30d3fed402dd60ff43f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8a8b269cb8f0b030506b5e62c9d238fff11a610845a5c30d3fed402dd60ff43f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 534484);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 215931), (SELECT id FROM banknote_issues WHERE numista_issue_id = 535111), 51297846,
     'UNC', 1, FALSE, 'B 6315198 AC',
     NULL, NULL, 7.73, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='B 6315198 AC', notes=NULL,
    public_notes=NULL, purchase_price=7.73,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 535111);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 216115), (SELECT id FROM banknote_issues WHERE numista_issue_id = 535539), 60314717,
     'UNC', 1, FALSE, 'D/00 0034037',
     'The nominee for the “Bank Note of the Year Award” in 2013', 'Auction 107', 21.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3218151c1df897c479ac6b8afd439016baaf4d2933042359a62970802e1fe782.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3218151c1df897c479ac6b8afd439016baaf4d2933042359a62970802e1fe782-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bf64f2b801d03b26bc1eec67e9421d4ee8ec8156ee51608fb5ee2d8baca4dec1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bf64f2b801d03b26bc1eec67e9421d4ee8ec8156ee51608fb5ee2d8baca4dec1-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D/00 0034037', notes='The nominee for the “Bank Note of the Year Award” in 2013',
    public_notes='Auction 107', purchase_price=21.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3218151c1df897c479ac6b8afd439016baaf4d2933042359a62970802e1fe782.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3218151c1df897c479ac6b8afd439016baaf4d2933042359a62970802e1fe782-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/bf64f2b801d03b26bc1eec67e9421d4ee8ec8156ee51608fb5ee2d8baca4dec1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/bf64f2b801d03b26bc1eec67e9421d4ee8ec8156ee51608fb5ee2d8baca4dec1-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 535539);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 216120), (SELECT id FROM banknote_issues WHERE numista_issue_id = 723788), 60314687,
     'UNC', 1, FALSE, 'D/00 0005903',
     NULL, 'Auction 107', 18.33, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/024f9497a417084e2026d948e89fe2fe82c6ad9be2e9e1e2a23c84e34f64d38c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/024f9497a417084e2026d948e89fe2fe82c6ad9be2e9e1e2a23c84e34f64d38c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/be1a3db9104e1429f95e9fc0f0f6cc3b27e66f1b605714afbfd9b6019428df8b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/be1a3db9104e1429f95e9fc0f0f6cc3b27e66f1b605714afbfd9b6019428df8b-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D/00 0005903', notes=NULL,
    public_notes='Auction 107', purchase_price=18.33,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/024f9497a417084e2026d948e89fe2fe82c6ad9be2e9e1e2a23c84e34f64d38c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/024f9497a417084e2026d948e89fe2fe82c6ad9be2e9e1e2a23c84e34f64d38c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/be1a3db9104e1429f95e9fc0f0f6cc3b27e66f1b605714afbfd9b6019428df8b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/be1a3db9104e1429f95e9fc0f0f6cc3b27e66f1b605714afbfd9b6019428df8b-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 723788);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 216167), (SELECT id FROM banknote_issues WHERE numista_issue_id = 535623), 51275156,
     'UNC', 1, FALSE, 'BA01 34794',
     NULL, NULL, 0.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BA01 34794', notes=NULL,
    public_notes=NULL, purchase_price=0.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 535623);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 216169), (SELECT id FROM banknote_issues WHERE numista_issue_id = 535625), 51297538,
     'UNC', 1, FALSE, 'CC 0284990',
     NULL, NULL, 2.32, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='CC 0284990', notes=NULL,
    public_notes=NULL, purchase_price=2.32,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 535625);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 216432), (SELECT id FROM banknote_issues WHERE numista_issue_id = 536094), 60343334,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.82, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.82,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 536094);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 216627), (SELECT id FROM banknote_issues WHERE numista_issue_id = 536385), 60312305,
     'UNC', 1, FALSE, '1290 22961',
     NULL, 'Auction 104', 44.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9cd834d66bdfd5399895a186443b257d852217e9181478581856487326742d03.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9cd834d66bdfd5399895a186443b257d852217e9181478581856487326742d03-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1004bb5c74b5585a5b1ed40f75619eff8766929a1065152159b29b0884dd14a0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1004bb5c74b5585a5b1ed40f75619eff8766929a1065152159b29b0884dd14a0-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1290 22961', notes=NULL,
    public_notes='Auction 104', purchase_price=44.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9cd834d66bdfd5399895a186443b257d852217e9181478581856487326742d03.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9cd834d66bdfd5399895a186443b257d852217e9181478581856487326742d03-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/1004bb5c74b5585a5b1ed40f75619eff8766929a1065152159b29b0884dd14a0.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1004bb5c74b5585a5b1ed40f75619eff8766929a1065152159b29b0884dd14a0-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 536385);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 216729), (SELECT id FROM banknote_issues WHERE numista_issue_id = 536578), 60306229,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 536578);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 216730), (SELECT id FROM banknote_issues WHERE numista_issue_id = 536579), 60053460,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 536579);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 217033), (SELECT id FROM banknote_issues WHERE numista_issue_id = 537268), 51615202,
     'UNC', 1, FALSE, 'MA 1340535',
     'The nominee for the “Bank Note of the Year Award” in 2019', NULL, 6.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MA 1340535', notes='The nominee for the “Bank Note of the Year Award” in 2019',
    public_notes=NULL, purchase_price=6.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 537268);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 217036), (SELECT id FROM banknote_issues WHERE numista_issue_id = 537271), 51615213,
     'UNC', 1, FALSE, 'MA 3660533',
     NULL, NULL, 6.87, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='MA 3660533', notes=NULL,
    public_notes=NULL, purchase_price=6.87,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 537271);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 217160), (SELECT id FROM banknote_issues WHERE numista_issue_id = 537519), 58854528,
     'UNC', 1, FALSE, 'U01517648',
     NULL, 'Auction 97', 14.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b9aa859d81483f39a4b020085544101dd27d9c4e496ac59975b428b8d610c9ac.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b9aa859d81483f39a4b020085544101dd27d9c4e496ac59975b428b8d610c9ac-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='U01517648', notes=NULL,
    public_notes='Auction 97', purchase_price=14.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b9aa859d81483f39a4b020085544101dd27d9c4e496ac59975b428b8d610c9ac.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b9aa859d81483f39a4b020085544101dd27d9c4e496ac59975b428b8d610c9ac-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 537519);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 217160), (SELECT id FROM banknote_issues WHERE numista_issue_id = 537521), 75170051,
     'UNC', 1, FALSE, 'T 020 19604',
     NULL, 'Auction 176', 6.61, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/39e91d9849cd94caf1f8b8a9d0d78113b377e4d07097ca12778233a0fe6e98ea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/39e91d9849cd94caf1f8b8a9d0d78113b377e4d07097ca12778233a0fe6e98ea-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/717d4a2b71ed51f5b898914b3c3f06c96ce2985c025281db148ce7f6711b299c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/717d4a2b71ed51f5b898914b3c3f06c96ce2985c025281db148ce7f6711b299c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='T 020 19604', notes=NULL,
    public_notes='Auction 176', purchase_price=6.61,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/39e91d9849cd94caf1f8b8a9d0d78113b377e4d07097ca12778233a0fe6e98ea.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/39e91d9849cd94caf1f8b8a9d0d78113b377e4d07097ca12778233a0fe6e98ea-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/717d4a2b71ed51f5b898914b3c3f06c96ce2985c025281db148ce7f6711b299c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/717d4a2b71ed51f5b898914b3c3f06c96ce2985c025281db148ce7f6711b299c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 537521);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 217505), (SELECT id FROM banknote_issues WHERE numista_issue_id = 538090), 51615274,
     'UNC', 1, FALSE, 'AJ 789734',
     NULL, NULL, 16.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AJ 789734', notes=NULL,
    public_notes=NULL, purchase_price=16.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 538090);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 217841), (SELECT id FROM banknote_issues WHERE numista_issue_id = 538887), 60306153,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 538887);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 217842), (SELECT id FROM banknote_issues WHERE numista_issue_id = 538889), 60306138,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 538889);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 218452), (SELECT id FROM banknote_issues WHERE numista_issue_id = 540292), 60053056,
     'UNC', 1, FALSE, 'O 34345',
     NULL, NULL, 0.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='O 34345', notes=NULL,
    public_notes=NULL, purchase_price=0.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 540292);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 218452), (SELECT id FROM banknote_issues WHERE numista_issue_id = 561285), 60053110,
     'UNC', 1, FALSE, 'S 32674',
     NULL, NULL, 0.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='S 32674', notes=NULL,
    public_notes=NULL, purchase_price=0.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 561285);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 218452), (SELECT id FROM banknote_issues WHERE numista_issue_id = 561286), 60053137,
     'UNC', 1, FALSE, 'E 25572',
     NULL, NULL, 0.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='E 25572', notes=NULL,
    public_notes=NULL, purchase_price=0.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 561286);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 218452), (SELECT id FROM banknote_issues WHERE numista_issue_id = 561287), 60053149,
     'UNC', 1, FALSE, '40503',
     NULL, NULL, 0.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='40503', notes=NULL,
    public_notes=NULL, purchase_price=0.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 561287);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 218857), (SELECT id FROM banknote_issues WHERE numista_issue_id = 541191), 60306792,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 541191);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 218858), (SELECT id FROM banknote_issues WHERE numista_issue_id = 541192), 60306800,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 541192);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 218860), (SELECT id FROM banknote_issues WHERE numista_issue_id = 541194), 60306806,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 541194);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 218918), (SELECT id FROM banknote_issues WHERE numista_issue_id = 541280), 51275390,
     'UNC', 1, FALSE, 'HB 1106571',
     NULL, NULL, 0.97, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='HB 1106571', notes=NULL,
    public_notes=NULL, purchase_price=0.97,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 541280);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 219062), (SELECT id FROM banknote_issues WHERE numista_issue_id = 541592), 51234579,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 2.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=2.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 541592);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 219537), (SELECT id FROM banknote_issues WHERE numista_issue_id = 542794), 60313511,
     'UNC', 1, FALSE, 'I 0039249',
     NULL, 'Auction 107', 65.77, 'EUR',
     'PMG', '66', '1915533-011',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/48c900feec94c6ad99481d4e1d40cc03f4a21956cd448063967f2de9fa119420.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/48c900feec94c6ad99481d4e1d40cc03f4a21956cd448063967f2de9fa119420-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/450a0862f042c76b3cddaa026d3867d0010e7689adb63797b94a7c8ff196c1ad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/450a0862f042c76b3cddaa026d3867d0010e7689adb63797b94a7c8ff196c1ad-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='I 0039249', notes=NULL,
    public_notes='Auction 107', purchase_price=65.77,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1915533-011',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/48c900feec94c6ad99481d4e1d40cc03f4a21956cd448063967f2de9fa119420.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/48c900feec94c6ad99481d4e1d40cc03f4a21956cd448063967f2de9fa119420-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/450a0862f042c76b3cddaa026d3867d0010e7689adb63797b94a7c8ff196c1ad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/450a0862f042c76b3cddaa026d3867d0010e7689adb63797b94a7c8ff196c1ad-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 542794);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 220457), (SELECT id FROM banknote_issues WHERE numista_issue_id = 544929), 75170312,
     'UNC', 1, FALSE, '6 U/237 233517',
     NULL, 'Auction 176', 10, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e27b79bc463c80305bf7116f6f0f4012ea52569ae73c86e97d227151629563ac.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e27b79bc463c80305bf7116f6f0f4012ea52569ae73c86e97d227151629563ac-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b3fc551b2298ca59b808f1b2800eddb810e9933bdad7d3314f7210a1614f526a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b3fc551b2298ca59b808f1b2800eddb810e9933bdad7d3314f7210a1614f526a-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='6 U/237 233517', notes=NULL,
    public_notes='Auction 176', purchase_price=10,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e27b79bc463c80305bf7116f6f0f4012ea52569ae73c86e97d227151629563ac.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e27b79bc463c80305bf7116f6f0f4012ea52569ae73c86e97d227151629563ac-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b3fc551b2298ca59b808f1b2800eddb810e9933bdad7d3314f7210a1614f526a.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b3fc551b2298ca59b808f1b2800eddb810e9933bdad7d3314f7210a1614f526a-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 544929);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 220873), (SELECT id FROM banknote_issues WHERE numista_issue_id = 545872), 51233178,
     'UNC', 1, FALSE, 'GA 95980603',
     NULL, NULL, 0.3, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='GA 95980603', notes=NULL,
    public_notes=NULL, purchase_price=0.3,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 545872);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 222466), (SELECT id FROM banknote_issues WHERE numista_issue_id = 551016), 69649927,
     'UNC', 1, FALSE, 'AD 823280',
     NULL, 'Auction 151', 55.72, 'EUR',
     'PCGS Banknote', '66', '78455266/49033302',
     '["PPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/02e76adbd47353953171a85ef65ee33d23008887b43861d9d3ca7f18c340bbb8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/02e76adbd47353953171a85ef65ee33d23008887b43861d9d3ca7f18c340bbb8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/60decc451ee25a2560c3a95f7b605a8dd97a5665e1ef73e9bbdc8234d7a3996f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/60decc451ee25a2560c3a95f7b605a8dd97a5665e1ef73e9bbdc8234d7a3996f-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AD 823280', notes=NULL,
    public_notes='Auction 151', purchase_price=55.72,
    price_currency='EUR', grading_company='PCGS Banknote',
    grading_score='66', cert_number='78455266/49033302',
    grading_designations='["PPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/02e76adbd47353953171a85ef65ee33d23008887b43861d9d3ca7f18c340bbb8.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/02e76adbd47353953171a85ef65ee33d23008887b43861d9d3ca7f18c340bbb8-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/60decc451ee25a2560c3a95f7b605a8dd97a5665e1ef73e9bbdc8234d7a3996f.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/60decc451ee25a2560c3a95f7b605a8dd97a5665e1ef73e9bbdc8234d7a3996f-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 551016);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 222650), (SELECT id FROM banknote_issues WHERE numista_issue_id = 551332), 61751945,
     'UNC', 1, FALSE, 'A 0872 F 0880877',
     NULL, 'Auction 113', 75.06, 'EUR',
     'PMG', '66', '1914813-025',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9389ef0ed73146d293e63e1bc25663315322ac87fd2dd1e535290cee3ec9c59c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9389ef0ed73146d293e63e1bc25663315322ac87fd2dd1e535290cee3ec9c59c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/71623713a3ecfaf67efb1498cc5d2f9afe0cbfd216c8cc055dd9d86077e28a84.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/71623713a3ecfaf67efb1498cc5d2f9afe0cbfd216c8cc055dd9d86077e28a84-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A 0872 F 0880877', notes=NULL,
    public_notes='Auction 113', purchase_price=75.06,
    price_currency='EUR', grading_company='PMG',
    grading_score='66', cert_number='1914813-025',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9389ef0ed73146d293e63e1bc25663315322ac87fd2dd1e535290cee3ec9c59c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9389ef0ed73146d293e63e1bc25663315322ac87fd2dd1e535290cee3ec9c59c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/71623713a3ecfaf67efb1498cc5d2f9afe0cbfd216c8cc055dd9d86077e28a84.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/71623713a3ecfaf67efb1498cc5d2f9afe0cbfd216c8cc055dd9d86077e28a84-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 551332);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 222908), (SELECT id FROM banknote_issues WHERE numista_issue_id = 551935), 60306256,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 551935);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223074), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552324), 51273006,
     'UNC', 1, FALSE, 'KC 861453',
     NULL, NULL, 2.85, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='KC 861453', notes=NULL,
    public_notes=NULL, purchase_price=2.85,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552324);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223078), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552328), 60306249,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552328);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223094), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552357), 60306239,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552357);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223116), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552406), 60306077,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223174), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552550), 61752202,
     'UNC', 1, FALSE, '1 AY/52 242880',
     NULL, 'Auction 113', 32.36, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/3cd404cf45e4e7953e10b5d58ea1eaeee8590b7ea974e195ed4fd61301acdf96.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3cd404cf45e4e7953e10b5d58ea1eaeee8590b7ea974e195ed4fd61301acdf96-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/538f211165b3047f324b31aeec3ffd376a006741f8b489918512f17a52a7acec.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/538f211165b3047f324b31aeec3ffd376a006741f8b489918512f17a52a7acec-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1 AY/52 242880', notes=NULL,
    public_notes='Auction 113', purchase_price=32.36,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/3cd404cf45e4e7953e10b5d58ea1eaeee8590b7ea974e195ed4fd61301acdf96.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3cd404cf45e4e7953e10b5d58ea1eaeee8590b7ea974e195ed4fd61301acdf96-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/538f211165b3047f324b31aeec3ffd376a006741f8b489918512f17a52a7acec.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/538f211165b3047f324b31aeec3ffd376a006741f8b489918512f17a52a7acec-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552550);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223174), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552550), 75170234,
     'UNC', 1, FALSE, '1 E/67  321603',
     NULL, 'Auction 176', 20, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8a779dcdae8427efeaa11bd8a21546e450df096e509f4a8cd7c5429be3d2dd8c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8a779dcdae8427efeaa11bd8a21546e450df096e509f4a8cd7c5429be3d2dd8c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/824f311e29e2a6ba20b565c5ac08a14db004c99034c6759e4cb618725fe9c736.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/824f311e29e2a6ba20b565c5ac08a14db004c99034c6759e4cb618725fe9c736-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='1 E/67  321603', notes=NULL,
    public_notes='Auction 176', purchase_price=20,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8a779dcdae8427efeaa11bd8a21546e450df096e509f4a8cd7c5429be3d2dd8c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8a779dcdae8427efeaa11bd8a21546e450df096e509f4a8cd7c5429be3d2dd8c-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/824f311e29e2a6ba20b565c5ac08a14db004c99034c6759e4cb618725fe9c736.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/824f311e29e2a6ba20b565c5ac08a14db004c99034c6759e4cb618725fe9c736-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552550);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223216), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552646), 60306072,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552646);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223218), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552648), 60305984,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552648);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223221), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552651), 60306064,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552651);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223311), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552911), 59826878,
     'UNC', 1, FALSE, 'AE 699250',
     NULL, 'Auction 99', 64.92, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/29a6a2debf84eabb73ed6082e5b2c0df4c4d86a36c211106d60e94258049202d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/29a6a2debf84eabb73ed6082e5b2c0df4c4d86a36c211106d60e94258049202d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b0cdbfbb9ef827ba1e2a2cf177144cc10b6d6de11fe999ad16987a9c905b473e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b0cdbfbb9ef827ba1e2a2cf177144cc10b6d6de11fe999ad16987a9c905b473e-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AE 699250', notes=NULL,
    public_notes='Auction 99', purchase_price=64.92,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/29a6a2debf84eabb73ed6082e5b2c0df4c4d86a36c211106d60e94258049202d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/29a6a2debf84eabb73ed6082e5b2c0df4c4d86a36c211106d60e94258049202d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/b0cdbfbb9ef827ba1e2a2cf177144cc10b6d6de11fe999ad16987a9c905b473e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b0cdbfbb9ef827ba1e2a2cf177144cc10b6d6de11fe999ad16987a9c905b473e-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552911);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223311), (SELECT id FROM banknote_issues WHERE numista_issue_id = 552911), 59826915,
     'UNC', 1, FALSE, 'AE 750050',
     NULL, 'Auction 99', 98.4, 'EUR',
     'PMG', '64', '1913430-019',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2f1cb21f2be8740da9db8b87270df610090b13bb7d132f17dfdea2adc8671930.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2f1cb21f2be8740da9db8b87270df610090b13bb7d132f17dfdea2adc8671930-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2ff1f6d1fa459e66268d12baf7725be25fb33c192473058bdf4d60f0e431861d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2ff1f6d1fa459e66268d12baf7725be25fb33c192473058bdf4d60f0e431861d-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AE 750050', notes=NULL,
    public_notes='Auction 99', purchase_price=98.4,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1913430-019',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2f1cb21f2be8740da9db8b87270df610090b13bb7d132f17dfdea2adc8671930.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2f1cb21f2be8740da9db8b87270df610090b13bb7d132f17dfdea2adc8671930-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2ff1f6d1fa459e66268d12baf7725be25fb33c192473058bdf4d60f0e431861d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2ff1f6d1fa459e66268d12baf7725be25fb33c192473058bdf4d60f0e431861d-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 552911);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223554), (SELECT id FROM banknote_issues WHERE numista_issue_id = 553501), 60343456,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 553501);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223582), (SELECT id FROM banknote_issues WHERE numista_issue_id = 553622), 51233090,
     'UNC', 1, FALSE, 'Q/I 294714',
     NULL, NULL, 5.91, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Q/I 294714', notes=NULL,
    public_notes=NULL, purchase_price=5.91,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 553622);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223676), (SELECT id FROM banknote_issues WHERE numista_issue_id = 553858), 59827578,
     'UNC', 1, FALSE, 'BM 00036896',
     NULL, 'Auction 102', 40.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b0d5fa20a3abb9440e1bc384243b1e341c097ba2b50853f94f324e34a31430c6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b0d5fa20a3abb9440e1bc384243b1e341c097ba2b50853f94f324e34a31430c6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a32f070c93551c81a9c1b7aaa2f48c27d02e23ea342988d2b2fd90f29baeb746.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a32f070c93551c81a9c1b7aaa2f48c27d02e23ea342988d2b2fd90f29baeb746-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BM 00036896', notes=NULL,
    public_notes='Auction 102', purchase_price=40.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b0d5fa20a3abb9440e1bc384243b1e341c097ba2b50853f94f324e34a31430c6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b0d5fa20a3abb9440e1bc384243b1e341c097ba2b50853f94f324e34a31430c6-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a32f070c93551c81a9c1b7aaa2f48c27d02e23ea342988d2b2fd90f29baeb746.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a32f070c93551c81a9c1b7aaa2f48c27d02e23ea342988d2b2fd90f29baeb746-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 553858);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223754), (SELECT id FROM banknote_issues WHERE numista_issue_id = 554144), 60053466,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 554144);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223755), (SELECT id FROM banknote_issues WHERE numista_issue_id = 554145), 60053440,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 554145);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223764), (SELECT id FROM banknote_issues WHERE numista_issue_id = 554161), 60343453,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 554161);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 223834), (SELECT id FROM banknote_issues WHERE numista_issue_id = 554264), 60053518,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 554264);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 224144), (SELECT id FROM banknote_issues WHERE numista_issue_id = 554978), 60306281,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 554978);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 224212), (SELECT id FROM banknote_issues WHERE numista_issue_id = 555088), 58854550,
     'UNC', 1, FALSE, '58/1 243769',
     NULL, NULL, 10.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/4ee37fbf331413044094135dbcde0c6a05b5069852a21b7bf21205d486de615b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4ee37fbf331413044094135dbcde0c6a05b5069852a21b7bf21205d486de615b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3249f86e60b2e5cf2084ca931f8b9233063c3dbf15bc7565c598102a429eab74.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3249f86e60b2e5cf2084ca931f8b9233063c3dbf15bc7565c598102a429eab74-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='58/1 243769', notes=NULL,
    public_notes=NULL, purchase_price=10.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/4ee37fbf331413044094135dbcde0c6a05b5069852a21b7bf21205d486de615b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/4ee37fbf331413044094135dbcde0c6a05b5069852a21b7bf21205d486de615b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/3249f86e60b2e5cf2084ca931f8b9233063c3dbf15bc7565c598102a429eab74.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/3249f86e60b2e5cf2084ca931f8b9233063c3dbf15bc7565c598102a429eab74-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 555088);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 224232), (SELECT id FROM banknote_issues WHERE numista_issue_id = 555137), 51235084,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 555137);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 224277), (SELECT id FROM banknote_issues WHERE numista_issue_id = 555225), 51232053,
     'UNC', 1, FALSE, 'AQ 228667',
     NULL, NULL, 7.53, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AQ 228667', notes=NULL,
    public_notes=NULL, purchase_price=7.53,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 555225);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 224283), (SELECT id FROM banknote_issues WHERE numista_issue_id = 555245), 75170107,
     'UNC', 1, FALSE, 'V 017 19505',
     NULL, 'Auction 176', 6.61, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2dd100cc4ab2ce54dfde12e4941f7acd68f9f038c58397ea85f1bf303d9e00b2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2dd100cc4ab2ce54dfde12e4941f7acd68f9f038c58397ea85f1bf303d9e00b2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/414374c83d8e56a5da781aa20cfc86f915f56a2bf8ed65dbabc808c75d6e2541.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/414374c83d8e56a5da781aa20cfc86f915f56a2bf8ed65dbabc808c75d6e2541-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='V 017 19505', notes=NULL,
    public_notes='Auction 176', purchase_price=6.61,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2dd100cc4ab2ce54dfde12e4941f7acd68f9f038c58397ea85f1bf303d9e00b2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2dd100cc4ab2ce54dfde12e4941f7acd68f9f038c58397ea85f1bf303d9e00b2-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/414374c83d8e56a5da781aa20cfc86f915f56a2bf8ed65dbabc808c75d6e2541.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/414374c83d8e56a5da781aa20cfc86f915f56a2bf8ed65dbabc808c75d6e2541-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 555245);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 224436), (SELECT id FROM banknote_issues WHERE numista_issue_id = 555715), 51272840,
     'UNC', 1, FALSE, 'ZK 827298',
     NULL, NULL, 3.72, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='ZK 827298', notes=NULL,
    public_notes=NULL, purchase_price=3.72,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 555715);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 224448), (SELECT id FROM banknote_issues WHERE numista_issue_id = 805390), 61751658,
     'UNC', 1, FALSE, '711201',
     NULL, 'Auction 113', 12.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/757a5a8b2958cf633eadd128726c6d8b259b5d5be381e2a7a59b414040ed048d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/757a5a8b2958cf633eadd128726c6d8b259b5d5be381e2a7a59b414040ed048d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6a814e95b91d3769d082e0dcc45a98027e14671ccde27594556d3b33e8055de2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6a814e95b91d3769d082e0dcc45a98027e14671ccde27594556d3b33e8055de2-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='711201', notes=NULL,
    public_notes='Auction 113', purchase_price=12.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/757a5a8b2958cf633eadd128726c6d8b259b5d5be381e2a7a59b414040ed048d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/757a5a8b2958cf633eadd128726c6d8b259b5d5be381e2a7a59b414040ed048d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6a814e95b91d3769d082e0dcc45a98027e14671ccde27594556d3b33e8055de2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6a814e95b91d3769d082e0dcc45a98027e14671ccde27594556d3b33e8055de2-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 805390);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 224448), (SELECT id FROM banknote_issues WHERE numista_issue_id = 805390), 61751666,
     'UNC', 1, FALSE, '711202',
     NULL, 'Auction 113', 12.5, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0403b1193f8bfb341ba09dcaf66b375c7b5822beb99d684fac11df53f8edc794.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0403b1193f8bfb341ba09dcaf66b375c7b5822beb99d684fac11df53f8edc794-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/96c644e57d590f8a7ce3b0bc4b634c3fbdb8906adedc554f260a167aca333261.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/96c644e57d590f8a7ce3b0bc4b634c3fbdb8906adedc554f260a167aca333261-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='711202', notes=NULL,
    public_notes='Auction 113', purchase_price=12.5,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0403b1193f8bfb341ba09dcaf66b375c7b5822beb99d684fac11df53f8edc794.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0403b1193f8bfb341ba09dcaf66b375c7b5822beb99d684fac11df53f8edc794-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/96c644e57d590f8a7ce3b0bc4b634c3fbdb8906adedc554f260a167aca333261.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/96c644e57d590f8a7ce3b0bc4b634c3fbdb8906adedc554f260a167aca333261-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 805390);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 224675), (SELECT id FROM banknote_issues WHERE numista_issue_id = 556194), 51733528,
     'UNC', 1, FALSE, 'AA 41870701',
     NULL, NULL, 4.59, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AA 41870701', notes=NULL,
    public_notes=NULL, purchase_price=4.59,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 556194);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 225353), (SELECT id FROM banknote_issues WHERE numista_issue_id = 557680), 60626586,
     'UNC', 1, FALSE, 'TU 03404026',
     NULL, NULL, 5.96, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/92ef4b02ff59ecee5c491b1ae819d28f09417d46c320c8c81929816dc8e36807.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/92ef4b02ff59ecee5c491b1ae819d28f09417d46c320c8c81929816dc8e36807-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ac2a0ecf6c6a1d619006e0e3536e1bc2543b576899b28287dd15efaab16d0124.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ac2a0ecf6c6a1d619006e0e3536e1bc2543b576899b28287dd15efaab16d0124-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='TU 03404026', notes=NULL,
    public_notes=NULL, purchase_price=5.96,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/92ef4b02ff59ecee5c491b1ae819d28f09417d46c320c8c81929816dc8e36807.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/92ef4b02ff59ecee5c491b1ae819d28f09417d46c320c8c81929816dc8e36807-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ac2a0ecf6c6a1d619006e0e3536e1bc2543b576899b28287dd15efaab16d0124.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ac2a0ecf6c6a1d619006e0e3536e1bc2543b576899b28287dd15efaab16d0124-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 557680);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 225364), (SELECT id FROM banknote_issues WHERE numista_issue_id = 557714), 58854594,
     'UNC', 1, FALSE, '63/1 413064',
     NULL, 'Auction 97', 12.31, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/5982574878c5e349a6a98f1f81023fd3e1078a5a484c53b344eb686ebcf1353b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5982574878c5e349a6a98f1f81023fd3e1078a5a484c53b344eb686ebcf1353b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2fe22547ab891f9b204fa2e0e2a3e61676823a697271bd849631d71b808d8dfc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2fe22547ab891f9b204fa2e0e2a3e61676823a697271bd849631d71b808d8dfc-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='63/1 413064', notes=NULL,
    public_notes='Auction 97', purchase_price=12.31,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/5982574878c5e349a6a98f1f81023fd3e1078a5a484c53b344eb686ebcf1353b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/5982574878c5e349a6a98f1f81023fd3e1078a5a484c53b344eb686ebcf1353b-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2fe22547ab891f9b204fa2e0e2a3e61676823a697271bd849631d71b808d8dfc.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2fe22547ab891f9b204fa2e0e2a3e61676823a697271bd849631d71b808d8dfc-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 557714);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 225425), (SELECT id FROM banknote_issues WHERE numista_issue_id = 557825), 61751704,
     'AU', 1, FALSE, 'A 318 099906',
     NULL, 'Auction 113', 17.08, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/045b488ab32865d41274155db8dde28cf962130ee68a4e5a767dde3062d26592.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/045b488ab32865d41274155db8dde28cf962130ee68a4e5a767dde3062d26592-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/023bfef762bb059e9940d62cb6f1ab3ef19209f4a9f14914fa74e3a55946daa2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/023bfef762bb059e9940d62cb6f1ab3ef19209f4a9f14914fa74e3a55946daa2-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='A 318 099906', notes=NULL,
    public_notes='Auction 113', purchase_price=17.08,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/045b488ab32865d41274155db8dde28cf962130ee68a4e5a767dde3062d26592.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/045b488ab32865d41274155db8dde28cf962130ee68a4e5a767dde3062d26592-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/023bfef762bb059e9940d62cb6f1ab3ef19209f4a9f14914fa74e3a55946daa2.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/023bfef762bb059e9940d62cb6f1ab3ef19209f4a9f14914fa74e3a55946daa2-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 557825);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 225651), (SELECT id FROM banknote_issues WHERE numista_issue_id = 558220), 58871280,
     'UNC', 1, FALSE, '44909',
     NULL, 'Auction 97', 2.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a86c90920a1963cd06297f4dde47c5b5fc473f94899c251d228030c6984ecc2d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a86c90920a1963cd06297f4dde47c5b5fc473f94899c251d228030c6984ecc2d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/da4f3ffda07508cce8279402cc5968f5d252e4e8ba81ed5d3ec9fc9de0cd4441.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/da4f3ffda07508cce8279402cc5968f5d252e4e8ba81ed5d3ec9fc9de0cd4441-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='44909', notes=NULL,
    public_notes='Auction 97', purchase_price=2.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a86c90920a1963cd06297f4dde47c5b5fc473f94899c251d228030c6984ecc2d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a86c90920a1963cd06297f4dde47c5b5fc473f94899c251d228030c6984ecc2d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/da4f3ffda07508cce8279402cc5968f5d252e4e8ba81ed5d3ec9fc9de0cd4441.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/da4f3ffda07508cce8279402cc5968f5d252e4e8ba81ed5d3ec9fc9de0cd4441-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 558220);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 225652), (SELECT id FROM banknote_issues WHERE numista_issue_id = 558222), 58871292,
     'UNC', 1, FALSE, '45185',
     NULL, 'Auction 97', 2.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/d4566e68b46d57fbc7f640ce8a5553265b8919900cb0f363a9b6785a5622d800.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d4566e68b46d57fbc7f640ce8a5553265b8919900cb0f363a9b6785a5622d800-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ca08a7372f8087c4d9b7bba9e1dcbc2196c2d409775cbf55efaba654ea8a6bf1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ca08a7372f8087c4d9b7bba9e1dcbc2196c2d409775cbf55efaba654ea8a6bf1-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='45185', notes=NULL,
    public_notes='Auction 97', purchase_price=2.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/d4566e68b46d57fbc7f640ce8a5553265b8919900cb0f363a9b6785a5622d800.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/d4566e68b46d57fbc7f640ce8a5553265b8919900cb0f363a9b6785a5622d800-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ca08a7372f8087c4d9b7bba9e1dcbc2196c2d409775cbf55efaba654ea8a6bf1.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ca08a7372f8087c4d9b7bba9e1dcbc2196c2d409775cbf55efaba654ea8a6bf1-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 558222);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 225653), (SELECT id FROM banknote_issues WHERE numista_issue_id = 558224), 58871333,
     'UNC', 1, FALSE, '45386',
     NULL, 'Auction 97', 2.9, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/8ab97a3c958c0714981873e3bff0b9006a4501600b7d27813de83fdc5b53127d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8ab97a3c958c0714981873e3bff0b9006a4501600b7d27813de83fdc5b53127d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/afbd5979b3d0bb4625fa74074b5698732358d8b02b4b1b3931e4cf3654a9767b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/afbd5979b3d0bb4625fa74074b5698732358d8b02b4b1b3931e4cf3654a9767b-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='45386', notes=NULL,
    public_notes='Auction 97', purchase_price=2.9,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/8ab97a3c958c0714981873e3bff0b9006a4501600b7d27813de83fdc5b53127d.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8ab97a3c958c0714981873e3bff0b9006a4501600b7d27813de83fdc5b53127d-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/afbd5979b3d0bb4625fa74074b5698732358d8b02b4b1b3931e4cf3654a9767b.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/afbd5979b3d0bb4625fa74074b5698732358d8b02b4b1b3931e4cf3654a9767b-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 558224);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 225828), (SELECT id FROM banknote_issues WHERE numista_issue_id = 558568), 60305855,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 558568);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 226115), (SELECT id FROM banknote_issues WHERE numista_issue_id = 559186), 60306890,
     'UNC', 1, FALSE, NULL,
     NULL, NULL, 0.85, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number=NULL, notes=NULL,
    public_notes=NULL, purchase_price=0.85,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 559186);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 226184), (SELECT id FROM banknote_issues WHERE numista_issue_id = 559335), 59827975,
     'XF', 1, FALSE, 'A 3390942',
     NULL, 'Auction 102', 30.77, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/862474eae93fc825fa74a87be722b1cb22c5c03b4b767ad327f1fb8aebfdcf55.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/862474eae93fc825fa74a87be722b1cb22c5c03b4b767ad327f1fb8aebfdcf55-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2c2c4dbab4e094f84e1f1dcb2ef8e34219dac98a634ca5cb39d4ee8fe734b4da.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c2c4dbab4e094f84e1f1dcb2ef8e34219dac98a634ca5cb39d4ee8fe734b4da-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='XF', quantity=1, for_trade=FALSE,
    serial_number='A 3390942', notes=NULL,
    public_notes='Auction 102', purchase_price=30.77,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/862474eae93fc825fa74a87be722b1cb22c5c03b4b767ad327f1fb8aebfdcf55.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/862474eae93fc825fa74a87be722b1cb22c5c03b4b767ad327f1fb8aebfdcf55-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2c2c4dbab4e094f84e1f1dcb2ef8e34219dac98a634ca5cb39d4ee8fe734b4da.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c2c4dbab4e094f84e1f1dcb2ef8e34219dac98a634ca5cb39d4ee8fe734b4da-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 559335);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 226453), (SELECT id FROM banknote_issues WHERE numista_issue_id = 559923), 58871422,
     'UNC', 1, FALSE, '24923',
     NULL, NULL, 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2c174aa496997417fe80b662f29f16de54c59716435767ad71ac875129941256.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c174aa496997417fe80b662f29f16de54c59716435767ad71ac875129941256-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2704bbea486386670b6679b62768db473d70d9b834e1ff0084842c282b0334c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2704bbea486386670b6679b62768db473d70d9b834e1ff0084842c282b0334c7-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='24923', notes=NULL,
    public_notes=NULL, purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2c174aa496997417fe80b662f29f16de54c59716435767ad71ac875129941256.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2c174aa496997417fe80b662f29f16de54c59716435767ad71ac875129941256-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/2704bbea486386670b6679b62768db473d70d9b834e1ff0084842c282b0334c7.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2704bbea486386670b6679b62768db473d70d9b834e1ff0084842c282b0334c7-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 559923);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 226636), (SELECT id FROM banknote_issues WHERE numista_issue_id = 560301), 60777637,
     'UNC', 1, FALSE, 'BA 393078',
     NULL, 'Auction 111', 56.35, 'EUR',
     'PMG', '64', '1910779-001',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/2e823ed50f5257c9ae9f8d60b24f3fb3fb89e4d8b9c8eabf3bcde1a2afcc3469.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2e823ed50f5257c9ae9f8d60b24f3fb3fb89e4d8b9c8eabf3bcde1a2afcc3469-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a4f956118b4e5600f000be01fa878d49addaf7a0b6c69ff0dd46f90b0ec04e41.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a4f956118b4e5600f000be01fa878d49addaf7a0b6c69ff0dd46f90b0ec04e41-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='BA 393078', notes=NULL,
    public_notes='Auction 111', purchase_price=56.35,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1910779-001',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/2e823ed50f5257c9ae9f8d60b24f3fb3fb89e4d8b9c8eabf3bcde1a2afcc3469.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/2e823ed50f5257c9ae9f8d60b24f3fb3fb89e4d8b9c8eabf3bcde1a2afcc3469-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/a4f956118b4e5600f000be01fa878d49addaf7a0b6c69ff0dd46f90b0ec04e41.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a4f956118b4e5600f000be01fa878d49addaf7a0b6c69ff0dd46f90b0ec04e41-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 560301);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 227036), (SELECT id FROM banknote_issues WHERE numista_issue_id = 561135), 77629184,
     'AU', 1, FALSE, '41 441102',
     NULL, 'Auction 183', 68.4, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/b4b553cc48f0693c3bba722eedbab49419c7d5866a331201a217f403bcd11e7e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b4b553cc48f0693c3bba722eedbab49419c7d5866a331201a217f403bcd11e7e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ee45de311b9ccf0fc5a1eef9661cee4a8ca22df273ab779d9b287dce751bd536.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ee45de311b9ccf0fc5a1eef9661cee4a8ca22df273ab779d9b287dce751bd536-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='41 441102', notes=NULL,
    public_notes='Auction 183', purchase_price=68.4,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/b4b553cc48f0693c3bba722eedbab49419c7d5866a331201a217f403bcd11e7e.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/b4b553cc48f0693c3bba722eedbab49419c7d5866a331201a217f403bcd11e7e-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/ee45de311b9ccf0fc5a1eef9661cee4a8ca22df273ab779d9b287dce751bd536.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/ee45de311b9ccf0fc5a1eef9661cee4a8ca22df273ab779d9b287dce751bd536-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 561135);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 227045), (SELECT id FROM banknote_issues WHERE numista_issue_id = 561144), 69649887,
     'UNC', 1, FALSE, '7007902',
     NULL, 'Auction 151', 90.5, 'EUR',
     'PMG', '64', '1920380-026',
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/1c42283b7323de82c121e5bcd88f20fa20fe72eb2e5e0f0705dfe3698adcad41.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1c42283b7323de82c121e5bcd88f20fa20fe72eb2e5e0f0705dfe3698adcad41-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e8c7495608bcdd610eb29313d46a9c1ef68e47142825918536a3e0a5a198b8f9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e8c7495608bcdd610eb29313d46a9c1ef68e47142825918536a3e0a5a198b8f9-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='7007902', notes=NULL,
    public_notes='Auction 151', purchase_price=90.5,
    price_currency='EUR', grading_company='PMG',
    grading_score='64', cert_number='1920380-026',
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/1c42283b7323de82c121e5bcd88f20fa20fe72eb2e5e0f0705dfe3698adcad41.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/1c42283b7323de82c121e5bcd88f20fa20fe72eb2e5e0f0705dfe3698adcad41-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/e8c7495608bcdd610eb29313d46a9c1ef68e47142825918536a3e0a5a198b8f9.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e8c7495608bcdd610eb29313d46a9c1ef68e47142825918536a3e0a5a198b8f9-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 561144);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 227211), (SELECT id FROM banknote_issues WHERE numista_issue_id = 561377), 58871430,
     'UNC', 1, FALSE, '42423',
     NULL, NULL, 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/a4b6b2acf96ba0df45924a29557883276e21489396e706303c49212dbc6fd6db.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a4b6b2acf96ba0df45924a29557883276e21489396e706303c49212dbc6fd6db-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8bab979eefd1e3013ed62e784c8789778d16851726559937bdd36326a47f1c1c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8bab979eefd1e3013ed62e784c8789778d16851726559937bdd36326a47f1c1c-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='42423', notes=NULL,
    public_notes=NULL, purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/a4b6b2acf96ba0df45924a29557883276e21489396e706303c49212dbc6fd6db.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/a4b6b2acf96ba0df45924a29557883276e21489396e706303c49212dbc6fd6db-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/8bab979eefd1e3013ed62e784c8789778d16851726559937bdd36326a47f1c1c.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/8bab979eefd1e3013ed62e784c8789778d16851726559937bdd36326a47f1c1c-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 561377);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 227237), (SELECT id FROM banknote_issues WHERE numista_issue_id = 561406), 60343492,
     'UNC', 1, FALSE, '945785',
     NULL, NULL, 0.6, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='945785', notes=NULL,
    public_notes=NULL, purchase_price=0.6,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 561406);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 228180), (SELECT id FROM banknote_issues WHERE numista_issue_id = 668023), 60343595,
     'UNC', 1, FALSE, '2141',
     NULL, NULL, 1.1, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='2141', notes=NULL,
    public_notes=NULL, purchase_price=1.1,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 668023);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 228745), (SELECT id FROM banknote_issues WHERE numista_issue_id = 563698), 56105783,
     'UNC', 1, FALSE, 'Q/2 001399',
     NULL, NULL, 6.38, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='Q/2 001399', notes=NULL,
    public_notes=NULL, purchase_price=6.38,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 563698);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 228840), (SELECT id FROM banknote_issues WHERE numista_issue_id = 638298), 51298393,
     'UNC', 1, FALSE, 'DR 480059',
     NULL, NULL, 2.11, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='DR 480059', notes=NULL,
    public_notes=NULL, purchase_price=2.11,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 638298);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 229559), (SELECT id FROM banknote_issues WHERE numista_issue_id = 564901), 61752266,
     'AU', 1, FALSE, 'PC684220',
     NULL, 'Auction 113', 25.04, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/0935447b405fbc748f6f9bc66fc6242554d12b5abf9545368b8d3d775a02ab63.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0935447b405fbc748f6f9bc66fc6242554d12b5abf9545368b8d3d775a02ab63-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/fb31fff4d020dda4a9653b737dda171545aa2d182e1ca59a289ec54cb66ff0f6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fb31fff4d020dda4a9653b737dda171545aa2d182e1ca59a289ec54cb66ff0f6-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='AU', quantity=1, for_trade=FALSE,
    serial_number='PC684220', notes=NULL,
    public_notes='Auction 113', purchase_price=25.04,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/0935447b405fbc748f6f9bc66fc6242554d12b5abf9545368b8d3d775a02ab63.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0935447b405fbc748f6f9bc66fc6242554d12b5abf9545368b8d3d775a02ab63-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/fb31fff4d020dda4a9653b737dda171545aa2d182e1ca59a289ec54cb66ff0f6.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/fb31fff4d020dda4a9653b737dda171545aa2d182e1ca59a289ec54cb66ff0f6-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 564901);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 229944), (SELECT id FROM banknote_issues WHERE numista_issue_id = 565441), 60343564,
     'UNC', 1, FALSE, '921670',
     NULL, NULL, 0.8, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='921670', notes=NULL,
    public_notes=NULL, purchase_price=0.8,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 565441);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 229946), (SELECT id FROM banknote_issues WHERE numista_issue_id = 565445), 60306302,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 565445);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 230286), (SELECT id FROM banknote_issues WHERE numista_issue_id = 566169), 60306292,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 566169);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 230307), (SELECT id FROM banknote_issues WHERE numista_issue_id = 566198), 58871440,
     'UNC', 1, FALSE, '47420',
     NULL, NULL, 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9f5c60a2be76c9d265f3bbba37dae846c3774dda264be65cb8c6952d23b01cd3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9f5c60a2be76c9d265f3bbba37dae846c3774dda264be65cb8c6952d23b01cd3-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/39febf9225474b77df871085960ce4427e60dd07eb12dba8380d8434fd71e832.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/39febf9225474b77df871085960ce4427e60dd07eb12dba8380d8434fd71e832-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='47420', notes=NULL,
    public_notes=NULL, purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9f5c60a2be76c9d265f3bbba37dae846c3774dda264be65cb8c6952d23b01cd3.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9f5c60a2be76c9d265f3bbba37dae846c3774dda264be65cb8c6952d23b01cd3-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/39febf9225474b77df871085960ce4427e60dd07eb12dba8380d8434fd71e832.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/39febf9225474b77df871085960ce4427e60dd07eb12dba8380d8434fd71e832-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 566198);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 230308), (SELECT id FROM banknote_issues WHERE numista_issue_id = 566199), 58871448,
     'UNC', 1, FALSE, '33925',
     NULL, NULL, 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/9b2cf9c28aebf266618d86e02c361abaf5e033736d7f91ec89663cc524701678.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9b2cf9c28aebf266618d86e02c361abaf5e033736d7f91ec89663cc524701678-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6ad6d5bbde4b36f2cf821224c70976fcc0f3a88b5a38961b9ad7cde4f2bbb510.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6ad6d5bbde4b36f2cf821224c70976fcc0f3a88b5a38961b9ad7cde4f2bbb510-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='33925', notes=NULL,
    public_notes=NULL, purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/9b2cf9c28aebf266618d86e02c361abaf5e033736d7f91ec89663cc524701678.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/9b2cf9c28aebf266618d86e02c361abaf5e033736d7f91ec89663cc524701678-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/6ad6d5bbde4b36f2cf821224c70976fcc0f3a88b5a38961b9ad7cde4f2bbb510.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/6ad6d5bbde4b36f2cf821224c70976fcc0f3a88b5a38961b9ad7cde4f2bbb510-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 566199);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 230309), (SELECT id FROM banknote_issues WHERE numista_issue_id = 566200), 58871452,
     'UNC', 1, FALSE, '27420',
     NULL, NULL, 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/e5e23feb3a9b118dfdec502329332c0e157374285baf83b8623bd236a390dceb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5e23feb3a9b118dfdec502329332c0e157374285baf83b8623bd236a390dceb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/236530831e56b5ee1994b5af61f0b2c61aca7877c56152ed8577d9bc1fecf839.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/236530831e56b5ee1994b5af61f0b2c61aca7877c56152ed8577d9bc1fecf839-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='27420', notes=NULL,
    public_notes=NULL, purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/e5e23feb3a9b118dfdec502329332c0e157374285baf83b8623bd236a390dceb.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/e5e23feb3a9b118dfdec502329332c0e157374285baf83b8623bd236a390dceb-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/236530831e56b5ee1994b5af61f0b2c61aca7877c56152ed8577d9bc1fecf839.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/236530831e56b5ee1994b5af61f0b2c61aca7877c56152ed8577d9bc1fecf839-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 566200);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 230311), (SELECT id FROM banknote_issues WHERE numista_issue_id = 566202), 58871458,
     'UNC', 1, FALSE, '46923',
     NULL, NULL, 1.7, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/406cbae2a2312b4fb9b4a9193c3725631d9903cf2d26db306af8f3362ef25675.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/406cbae2a2312b4fb9b4a9193c3725631d9903cf2d26db306af8f3362ef25675-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/72d45c2debfbe027f4c11a7b531dd7e31704f4588fa4b75f3e662ed454babc70.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/72d45c2debfbe027f4c11a7b531dd7e31704f4588fa4b75f3e662ed454babc70-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='46923', notes=NULL,
    public_notes=NULL, purchase_price=1.7,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/406cbae2a2312b4fb9b4a9193c3725631d9903cf2d26db306af8f3362ef25675.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/406cbae2a2312b4fb9b4a9193c3725631d9903cf2d26db306af8f3362ef25675-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/72d45c2debfbe027f4c11a7b531dd7e31704f4588fa4b75f3e662ed454babc70.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/72d45c2debfbe027f4c11a7b531dd7e31704f4588fa4b75f3e662ed454babc70-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 566202);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 230480), (SELECT id FROM banknote_issues WHERE numista_issue_id = 566455), 73680264,
     'UNC', 1, FALSE, '9Q 9131634',
     NULL, NULL, 20, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='9Q 9131634', notes=NULL,
    public_notes=NULL, purchase_price=20,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 566455);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 230582), (SELECT id FROM banknote_issues WHERE numista_issue_id = 733013), 76530874,
     'UNC', 1, FALSE, 'A/I 000000',
     NULL, NULL, 4.98, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='A/I 000000', notes=NULL,
    public_notes=NULL, purchase_price=4.98,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 733013);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 230583), (SELECT id FROM banknote_issues WHERE numista_issue_id = 566770), 76530997,
     'UNC', 1, FALSE, 'D/4 071456',
     NULL, NULL, 10.88, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='D/4 071456', notes=NULL,
    public_notes=NULL, purchase_price=10.88,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 566770);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 231200), (SELECT id FROM banknote_issues WHERE numista_issue_id = 567860), 60343299,
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
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 567860);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 231565), (SELECT id FROM banknote_issues WHERE numista_issue_id = 568504), 51275455,
     'UNC', 1, FALSE, 'AC 1768841 C',
     NULL, NULL, 1.01, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='AC 1768841 C', notes=NULL,
    public_notes=NULL, purchase_price=1.01,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 568504);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 231759), (SELECT id FROM banknote_issues WHERE numista_issue_id = 568986), 77628810,
     'UNC', 1, FALSE, '613743',
     NULL, 'Auction 183', 19.82, 'EUR',
     NULL, NULL, NULL,
     '[]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/181b2600cf171e192a4270fffe086a20bf403b6f16ea915d15292ae394605296.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/181b2600cf171e192a4270fffe086a20bf403b6f16ea915d15292ae394605296-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0cc920d38d2396f778d78986663bf1e97da0ca2d42b5a14524f8bc7531b4dbf5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0cc920d38d2396f778d78986663bf1e97da0ca2d42b5a14524f8bc7531b4dbf5-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='613743', notes=NULL,
    public_notes='Auction 183', purchase_price=19.82,
    price_currency='EUR', grading_company=NULL,
    grading_score=NULL, cert_number=NULL,
    grading_designations='[]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/181b2600cf171e192a4270fffe086a20bf403b6f16ea915d15292ae394605296.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/181b2600cf171e192a4270fffe086a20bf403b6f16ea915d15292ae394605296-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/0cc920d38d2396f778d78986663bf1e97da0ca2d42b5a14524f8bc7531b4dbf5.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/0cc920d38d2396f778d78986663bf1e97da0ca2d42b5a14524f8bc7531b4dbf5-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 568986);

  INSERT INTO user_collections
    (user_id, banknote_id, issue_id, numista_item_id,
     grade, quantity, for_trade, serial_number,
     notes, public_notes, purchase_price, price_currency,
     grading_company, grading_score, cert_number,
     grading_designations, user_pictures)
  VALUES
    (v_user_id, (SELECT id FROM banknotes WHERE numista_type_id = 231996), (SELECT id FROM banknote_issues WHERE numista_issue_id = 569621), 61751738,
     'UNC', 1, FALSE, 'C/395 373234',
     NULL, 'Auction 113', 97.02, 'EUR',
     'PMG', '65', '1915784-034',
     '["EPQ"]'::jsonb, '[{"url": "https://en.numista.com/vous/pictures/277656/f0ef9fc21113355b5b165c95f8d2911870df513bad6d02c060e7e81d1d69a0ad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f0ef9fc21113355b5b165c95f8d2911870df513bad6d02c060e7e81d1d69a0ad-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f5538d35c7c9a236f9ca3d2a7d986a3e041ee21c3062f7ab2427ce8044a8e421.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f5538d35c7c9a236f9ca3d2a7d986a3e041ee21c3062f7ab2427ce8044a8e421-360.jpg"}]'::jsonb)
  ON CONFLICT (numista_item_id) WHERE numista_item_id IS NOT NULL DO UPDATE SET
    grade='UNC', quantity=1, for_trade=FALSE,
    serial_number='C/395 373234', notes=NULL,
    public_notes='Auction 113', purchase_price=97.02,
    price_currency='EUR', grading_company='PMG',
    grading_score='65', cert_number='1915784-034',
    grading_designations='["EPQ"]'::jsonb,
    user_pictures='[{"url": "https://en.numista.com/vous/pictures/277656/f0ef9fc21113355b5b165c95f8d2911870df513bad6d02c060e7e81d1d69a0ad.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f0ef9fc21113355b5b165c95f8d2911870df513bad6d02c060e7e81d1d69a0ad-360.jpg"}, {"url": "https://en.numista.com/vous/pictures/277656/f5538d35c7c9a236f9ca3d2a7d986a3e041ee21c3062f7ab2427ce8044a8e421.jpg", "thumbnail_url": "https://en.numista.com/vous/pictures/277656/f5538d35c7c9a236f9ca3d2a7d986a3e041ee21c3062f7ab2427ce8044a8e421-360.jpg"}]'::jsonb,
    issue_id=(SELECT id FROM banknote_issues WHERE numista_issue_id = 569621);

END $$;