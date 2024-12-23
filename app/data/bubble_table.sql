BEGIN;

INSERT INTO "bar" ("name", "adresse", "horaire", "image1", "image2", "image3", "image4", "image5", "updated_at")
VALUES 
('Oshi-Moshi Plumereau', '3 rue du Change, 37000 TOURS', 'Lun au Dim : 14-21h', 'oshi-moshi-plume.png', NULL, NULL, NULL, NULL, NULL),
('Oshi-Moshi Gare', '25 rue Blazise Pascal, 37000 TOURS', 'Lun au Dim : 13-20h', 'oshi-moshi-gare.png', NULL, NULL, NULL, NULL, NULL),
('Oshi-Moshi Angers', '3 rue des Lices, 49100 ANGERS', 'Lun au Sam : 12-19h Dim: 13h-19h', 'oshi-moshi-angers.png', NULL, NULL, NULL, NULL, NULL);

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
('Curaçao (sans alccool)', CURRENT_TIMESTAMP, NULL),
('Mojito (sans alccool)', CURRENT_TIMESTAMP, NULL),
('Rhum (sans alccool)', CURRENT_TIMESTAMP, NULL),
('Eau pétillante', CURRENT_TIMESTAMP, NULL),
('Pêche', CURRENT_TIMESTAMP, NULL);


INSERT INTO "milk" ("name", "created_at", "updated_at")
VALUES
('Thé noir', CURRENT_TIMESTAMP, NULL),
('Fraise', CURRENT_TIMESTAMP, NULL),
('Banane', CURRENT_TIMESTAMP, NULL),
('Taro', CURRENT_TIMESTAMP, NULL),
('Matcha', CURRENT_TIMESTAMP, NULL),
('Vanille', CURRENT_TIMESTAMP, NULL),
('Sésame noir', CURRENT_TIMESTAMP, NULL),
('Lait saveur crême brulée', CURRENT_TIMESTAMP, NULL),
('Lait au chocolat saveur tiramisu', CURRENT_TIMESTAMP, NULL),
('Lait', CURRENT_TIMESTAMP, NULL),
('Noix de coco', CURRENT_TIMESTAMP, NULL);

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
('Ananas', CURRENT_TIMESTAMP, NULL);

INSERT INTO "topping" ("name", "created_at", "updated_at")
VALUES
('Crême fouettée', CURRENT_TIMESTAMP, NULL),
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
('Chocolat', CURRENT_TIMESTAMP, NULL);

-- Insertion des données dans la table "bubble_tea"
INSERT INTO "bubble_tea" ("name", "prixL", "prixXL", "image", "icone", "collection_id", "milk_id", "topping_id", "pearl_id", "created_at", "updated_at")
VALUES
('Quartz Rose', 5.90, 6.90, NULL, NULL, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Améthyste', 5.90, 6.90, NULL, NULL, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL),
('Bloody Mary', 5.90, 6.90, NULL, NULL, NULL, NULL, NULL, NULL, CURRENT_TIMESTAMP, NULL);

-- Insertion des relations multiples dans la table de jonction "bubble_tea_tea"
INSERT INTO "bubble_tea_tea" ("bubble_tea_id", "tea_id") VALUES
((SELECT id FROM "bubble_tea" WHERE name = 'Quartz Rose'), 34),
((SELECT id FROM "bubble_tea" WHERE name = 'Quartz Rose'), 29),
((SELECT id FROM "bubble_tea" WHERE name = 'Améthyste'), 38),
((SELECT id FROM "bubble_tea" WHERE name = 'Améthyste'), 23),
((SELECT id FROM "bubble_tea" WHERE name = 'Améthyste'), 32),
((SELECT id FROM "bubble_tea" WHERE name = 'Bloody Mary'), 34),
((SELECT id FROM "bubble_tea" WHERE name = 'Bloody Mary'), 31);

COMMIT;