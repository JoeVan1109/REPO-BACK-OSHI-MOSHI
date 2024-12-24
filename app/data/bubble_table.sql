BEGIN;

-- Insertion des données dans la table "bar"
INSERT INTO "bar" ("name", "adresse", "horaire", "image1", "image2", "image3", "image4", "image5", "updated_at")
VALUES 
('Oshi-Moshi Plumereau', '3 rue du Change, 37000 TOURS', 'Lun au Dim : 14-21h', 'oshi-moshi-plume.png', NULL, NULL, NULL, NULL, NULL),
('Oshi-Moshi Gare', '25 rue Blazise Pascal, 37000 TOURS', 'Lun au Dim : 13-20h', 'oshi-moshi-gare.png', NULL, NULL, NULL, NULL, NULL),
('Oshi-Moshi Angers', '3 rue des Lices, 49100 ANGERS', 'Lun au Sam : 12-19h Dim: 13h-19h', 'oshi-moshi-angers.png', NULL, NULL, NULL, NULL, NULL)
ON CONFLICT ("name") DO NOTHING;

-- Insertion des données dans la table "tea"
INSERT INTO "tea" ("name", "created_at", "updated_at")
VALUES
('Litchi', CURRENT_TIMESTAMP, NULL),
('Citron', CURRENT_TIMESTAMP, NULL),
('Ananas', CURRENT_TIMESTAMP, NULL),
('Mangue', CURRENT_TIMESTAMP, NULL),
('Passion', CURRENT_TIMESTAMP, NULL),
('Goyave', CURRENT_TIMESTAMP, NULL),
('Cerise', CURRENT_TIMESTAMP, NULL),
('Fraise', CURRENT_TIMESTAMP, NULL),
('Framboise', CURRENT_TIMESTAMP, NULL),
('Myrtille', CURRENT_TIMESTAMP, NULL),
('Kiwi', CURRENT_TIMESTAMP, NULL),
('Rose', CURRENT_TIMESTAMP, NULL),
('Thé bleu', CURRENT_TIMESTAMP, NULL),
('Thé chaï', CURRENT_TIMESTAMP, NULL),
('Citron vert', CURRENT_TIMESTAMP, NULL),
('Violette', CURRENT_TIMESTAMP, NULL),
('Basilic', CURRENT_TIMESTAMP, NULL),
('Curaçao (sans alcool)', CURRENT_TIMESTAMP, NULL),
('Mojito (sans alcool)', CURRENT_TIMESTAMP, NULL),
('Rhum (sans alcool)', CURRENT_TIMESTAMP, NULL),
('Eau pétillante', CURRENT_TIMESTAMP, NULL),
('Pêche', CURRENT_TIMESTAMP, NULL)
ON CONFLICT ("name") DO NOTHING;

-- Insertion des données dans la table "milk"
INSERT INTO "milk" ("name", "created_at", "updated_at")
VALUES
('Thé noir', CURRENT_TIMESTAMP, NULL),
('Fraise', CURRENT_TIMESTAMP, NULL),
('Banane', CURRENT_TIMESTAMP, NULL),
('Taro', CURRENT_TIMESTAMP, NULL),
('Matcha', CURRENT_TIMESTAMP, NULL),
('Vanille', CURRENT_TIMESTAMP, NULL),
('Sésame noir', CURRENT_TIMESTAMP, NULL),
('Lait saveur crème brûlée', CURRENT_TIMESTAMP, NULL),
('Lait au chocolat saveur tiramisu', CURRENT_TIMESTAMP, NULL),
('Lait', CURRENT_TIMESTAMP, NULL),
('Noix de coco', CURRENT_TIMESTAMP, NULL)
ON CONFLICT ("name") DO NOTHING;

-- Insertion des données dans la table "pearl"
INSERT INTO "pearl" ("name", "created_at", "updated_at")
VALUES
('Pêche', CURRENT_TIMESTAMP, NULL),
('Myrtille', CURRENT_TIMESTAMP, NULL),
('Fraise', CURRENT_TIMESTAMP, NULL),
('Passion', CURRENT_TIMESTAMP, NULL),
('Pomme verte', CURRENT_TIMESTAMP, NULL),
('Tapioca', CURRENT_TIMESTAMP, NULL),
('Citron vert', CURRENT_TIMESTAMP, NULL),
('Mangue', CURRENT_TIMESTAMP, NULL),
('Ananas', CURRENT_TIMESTAMP, NULL)
ON CONFLICT ("name") DO NOTHING;

-- Insertion des données dans la table "topping"
INSERT INTO "topping" ("name", "created_at", "updated_at")
VALUES
('Crème fouettée', CURRENT_TIMESTAMP, NULL),
('Cream cheese', CURRENT_TIMESTAMP, NULL),
('Dalgona café', CURRENT_TIMESTAMP, NULL),
('Coulis de chocolat noir', CURRENT_TIMESTAMP, NULL),
('Mousse onctueuse', CURRENT_TIMESTAMP, NULL),
('Cacao en poudre', CURRENT_TIMESTAMP, NULL),
('Mousse onctueuse à la vanille', CURRENT_TIMESTAMP, NULL),
('Mousse onctueuse à la noix de coco', CURRENT_TIMESTAMP, NULL),
('Sucre roux caramélisé', CURRENT_TIMESTAMP, NULL),
('Menthe', CURRENT_TIMESTAMP, NULL),
('Noisette', CURRENT_TIMESTAMP, NULL),
('Mousse onctueuse au matcha', CURRENT_TIMESTAMP, NULL),
('Mousse onctueuse matcha', CURRENT_TIMESTAMP, NULL),
('Sirop de sucre brun', CURRENT_TIMESTAMP, NULL),
('Caramel', CURRENT_TIMESTAMP, NULL),
('Gingembre', CURRENT_TIMESTAMP, NULL),
('Cardamone', CURRENT_TIMESTAMP, NULL),
('Citron', CURRENT_TIMESTAMP, NULL),
('Fleur de sureau', CURRENT_TIMESTAMP, NULL),
('Chocolat', CURRENT_TIMESTAMP, NULL)
ON CONFLICT ("name") DO NOTHING;

-- Insertion des données dans la table "bubble_tea"
INSERT INTO "bubble_tea" ("name", "prixL", "prixXL", "image", "icone", "collection_id", "milk_id", "created_at", "updated_at")
VALUES
('Quartz Rose', 5.90, 6.90, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Améthyste', 5.90, 6.90, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Bloody Mary', 5.90, 6.90, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Bubble Tea Licorne', NULL, 7.50, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Bubble Tea Sirène', NULL, 7.50, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Zeus', NULL, 8.50, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Athéna', NULL, 8.50, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Poséidon', NULL, 8.50, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Arès', NULL, 8.50, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Hadès', NULL, 8.50, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Akatsuki', 7.90, 8.90, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Crême Brulée', 7.50, 8.50, NULL, NULL, NULL, 19, CURRENT_TIMESTAMP, NULL),
('Tiramisu', 7.50, 8.50, NULL, NULL, NULL, 20, CURRENT_TIMESTAMP, NULL),
('Bubble Mojito Citron', 6.90, 7.90, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Bubble Mojito Fraise', 6.90, 7.90, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Bubble Mojito Passion', 6.90, 7.90, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL)
ON CONFLICT ("name") DO NOTHING;

-- Insertion des relations multiples dans la table de jonction "bubble_tea_tea"
INSERT INTO "bubble_tea_tea" ("bubble_tea_id", "tea_id") VALUES

-- Quartz Rose
((SELECT id FROM "bubble_tea" WHERE name = 'Quartz Rose'), (SELECT id FROM "tea" WHERE name = 'Rose')),
((SELECT id FROM "bubble_tea" WHERE name = 'Quartz Rose'), (SELECT id FROM "tea" WHERE name = 'Cerise')),

-- Améthyste
((SELECT id FROM "bubble_tea" WHERE name = 'Améthyste'), (SELECT id FROM "tea" WHERE name = 'Violette')),
((SELECT id FROM "bubble_tea" WHERE name = 'Améthyste'), (SELECT id FROM "tea" WHERE name = 'Litchi')),
((SELECT id FROM "bubble_tea" WHERE name = 'Améthyste'), (SELECT id FROM "tea" WHERE name = 'Myrtille')),

-- Bloody Mary
((SELECT id FROM "bubble_tea" WHERE name = 'Bloody Mary'), (SELECT id FROM "tea" WHERE name = 'Rose')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bloody Mary'), (SELECT id FROM "tea" WHERE name = 'Framboise')),

-- Bubble Tea Licorne
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Tea Licorne'), (SELECT id FROM "tea" WHERE name = 'Cerise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Tea Licorne'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Tea Licorne'), (SELECT id FROM "tea" WHERE name = 'Citron vert')),

-- Bubble Tea Sirène
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Tea Sirène'), (SELECT id FROM "tea" WHERE name = 'Mangue')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Tea Sirène'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Tea Sirène'), (SELECT id FROM "tea" WHERE name = 'Citron vert')),

-- Zeus
((SELECT id FROM "bubble_tea" WHERE name = 'Zeus'), (SELECT id FROM "tea" WHERE name = 'Mangue')),

-- Athéna
((SELECT id FROM "bubble_tea" WHERE name = 'Athéna'), (SELECT id FROM "tea" WHERE name = 'Pêche')),

-- Poséidon
((SELECT id FROM "bubble_tea" WHERE name = 'Poséidon'), (SELECT id FROM "tea" WHERE name = 'Curaçao (sans alcool)')),

-- Arès
((SELECT id FROM "bubble_tea" WHERE name = 'Arès'), (SELECT id FROM "tea" WHERE name = 'Framboise')),

-- Hadès
((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "tea" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "tea" WHERE name = 'Basilic')),

-- Akatsuki
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "tea" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "tea" WHERE name = 'Passion')),

-- Mojito Citron
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Mojito (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Rhum (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Citron')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Eau pétillante')),

-- Mojito Fraise
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Mojito (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Rhum (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Eau pétillante')),

-- Mojito Passion
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Mojito (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Rhum (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Passion')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Eau pétillante'))

ON CONFLICT (bubble_tea_id, tea_id) DO NOTHING;

COMMIT;