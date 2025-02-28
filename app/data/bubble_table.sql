BEGIN;

TRUNCATE TABLE "collection_bubble_tea", "bubble_tea_tea", "bubble_tea_pearl", "bubble_tea_topping", "bubble_tea", "tea", "milk", "topping", "pearl", "collection", "bar" RESTART IDENTITY CASCADE;

SET client_encoding TO 'UTF8';

-- Insertion des données dans la table "bar"
INSERT INTO "bar" ("name", "adresse", "horaire", "image1", "image2", "image3", "image4", "image5", "url_map")
VALUES 
('Oshi-Moshi Plumereau', '3 rue du Change, 37000 TOURS', 'Lun au Dim : 14-21h', 'oshi-moshi-plume.webp', NULL, NULL, NULL, NULL, 'https://www.google.fr/maps/place/Oshi+Moshi+Plumereau+-+Bubble+Tea+Bar+Tours/@47.3941051,0.6792808,17z/data=!3m1!4b1!4m6!3m5!1s0x47fcd5e76eb0fbf1:0x49b3dd10ea394bac!8m2!3d47.3941015!4d0.6818557!16s%2Fg%2F11fp458p2s?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D'),
('Oshi-Moshi Gare', '25 rue Blazise Pascal, 37000 TOURS', 'Lun au Dim : 13-20h', 'oshi-moshi-gare.webp', NULL, NULL, NULL, NULL, 'https://www.google.fr/maps/place/Oshi+Moshi+Gare+-+Bubble+Tea+Bar+Tours/@47.388015,0.6904578,17z/data=!3m1!4b1!4m6!3m5!1s0x47fcd5ca82d62fbf:0x5bc7741283a41c94!8m2!3d47.3880114!4d0.6930327!16s%2Fg%2F12hshxrp2?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D'),
('Oshi-Moshi Angers', '3 rue des Lices, 49100 ANGERS', 'Lun au Sam : 12-19h Dim: 13h-19h', 'oshi-moshi-angers.webp', NULL, NULL, NULL, NULL, 'https://www.google.fr/maps/place/Oshi+Moshi+Angers+-+Bubble+tea+bar+Angers/@47.4689302,-0.5558849,17z/data=!3m1!4b1!4m6!3m5!1s0x480879c28cfdeed5:0xdbbce09cf6de4dee!8m2!3d47.4689266!4d-0.55331!16s%2Fg%2F11sw48n8xv?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D');


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
('Curaçao (sans alcool)', CURRENT_TIMESTAMP, NULL),
('Mojito (sans alcool)', CURRENT_TIMESTAMP, NULL),
('Rhum (sans alcool)', CURRENT_TIMESTAMP, NULL),
('Eau pétillante', CURRENT_TIMESTAMP, NULL),
('Pêche', CURRENT_TIMESTAMP, NULL);


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
('Noix de coco', CURRENT_TIMESTAMP, NULL);


-- Insertion des données dans la table "pearl"
INSERT INTO "pearl" ("name", "created_at", "updated_at")
VALUES
('Perle Pêche', CURRENT_TIMESTAMP, NULL),
('Perle Myrtille', CURRENT_TIMESTAMP, NULL),
('Perle Fraise', CURRENT_TIMESTAMP, NULL),
('Perle Passion', CURRENT_TIMESTAMP, NULL),
('Perle Pomme verte', CURRENT_TIMESTAMP, NULL),
('Perle Tapioca', CURRENT_TIMESTAMP, NULL),
('Perle Citron vert', CURRENT_TIMESTAMP, NULL),
('Perle Mangue', CURRENT_TIMESTAMP, NULL),
('Perle Ananas', CURRENT_TIMESTAMP, NULL);


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
('Sirop de sucre brun', CURRENT_TIMESTAMP, NULL),
('Caramel', CURRENT_TIMESTAMP, NULL),
('Gingembre', CURRENT_TIMESTAMP, NULL),
('Cardamone', CURRENT_TIMESTAMP, NULL),
('Citron', CURRENT_TIMESTAMP, NULL),
('Fleur de sureau', CURRENT_TIMESTAMP, NULL),
('Basilic', CURRENT_TIMESTAMP, NULL),
('Chocolat', CURRENT_TIMESTAMP, NULL);


-- Inser tion collection
INSERT INTO "collection" ("name", "image_collection", "prixL", "prixXL", "created_at", "updated_at")
VALUES
('Collection Florale', 'collection-florale.png', 5.90, 6.90, CURRENT_TIMESTAMP, NULL),
('Collection Magique', NULL, 7.50, NULL, CURRENT_TIMESTAMP, NULL),
('Collection Olympe', NULL,  8.50, NULL, CURRENT_TIMESTAMP, NULL),
('Collection Akatsuki', NULL, 7.90, 8.90, CURRENT_TIMESTAMP, NULL),
('Collection Sweet''N Chill', 'collection-sweet-chill.png', 7.50, 8.50, CURRENT_TIMESTAMP, NULL),
('Collection California Dream', 'collection-california-dream.png', 6.90, 7.90, CURRENT_TIMESTAMP, NULL);

-- Insertion des données dans la table "bubble_tea"
INSERT INTO "bubble_tea" ("name", "image", "color", "icone", "milk_name", "created_at", "updated_at")
VALUES
('Quartz Rose', NULL, '#FB509A', 'florale-quartz.png', NULL, CURRENT_TIMESTAMP, NULL),
('Améthyste', NULL, '#893A9E', 'florale-amethyst.png', NULL, CURRENT_TIMESTAMP, NULL),
('Bloody Mary', NULL, '#AD4546', 'florale-bloody-mary.png', NULL, CURRENT_TIMESTAMP, NULL),
('Tea Licorne', NULL, '#C56798', 'magique-licorne.png', NULL, CURRENT_TIMESTAMP, NULL),
('Tea Sirène', NULL,  '#9B87CA', 'magique-sirene.png', NULL, CURRENT_TIMESTAMP, NULL),
('Zeus', NULL, '#EE933A', 'olympe-zeus.png', NULL, CURRENT_TIMESTAMP, NULL),
('Athéna', NULL, '#DD5A3A', 'olympe-athena.png', NULL, CURRENT_TIMESTAMP, NULL),
('Poséidon', NULL, '#41D6F2', 'olympe-poseidon.png', NULL, CURRENT_TIMESTAMP, NULL),
('Arès', NULL, '#FA614A', 'olympe-ares.png', NULL, CURRENT_TIMESTAMP, NULL),
('Hadès', NULL, '#8B5440', 'olympe-hades.png', NULL, CURRENT_TIMESTAMP, NULL),
('Akatsuki', NULL, '#BB2320', 'akatsuki.png', NULL, CURRENT_TIMESTAMP, NULL),
('Crème Brûlée', NULL, '#B89663', 'sweet-creme-brulee.png', 'Lait saveur crème brûlée', CURRENT_TIMESTAMP, NULL),
('Tiramisu', NULL, '#A06012', 'sweet-tiramisu.png', 'Lait au chocolat saveur tiramisu', CURRENT_TIMESTAMP, NULL),
('Mojito Citron', NULL, '#FCC737', 'mojito-citron.png', NULL, CURRENT_TIMESTAMP, NULL),
('Mojito Fraise', NULL, '#E73879', 'mojito-fraise.png', NULL, CURRENT_TIMESTAMP, NULL),
('Mojito Passion', NULL, '#F26B0F', 'mojito-passion.png', NULL, CURRENT_TIMESTAMP, NULL);



-- Insertion des relations collection
INSERT INTO "collection_bubble_tea" ("bubble_tea_id", "collection_id")
VALUES
-- Quartz Rose
((SELECT id FROM "bubble_tea" WHERE name = 'Quartz Rose'), (SELECT id FROM "collection" WHERE name = 'Collection Florale')),

-- Améthyste
((SELECT id FROM "bubble_tea" WHERE name = 'Améthyste'), (SELECT id FROM "collection" WHERE name = 'Collection Florale')),

-- Bloody Mary
((SELECT id FROM "bubble_tea" WHERE name = 'Bloody Mary'), (SELECT id FROM "collection" WHERE name = 'Collection Florale')),

-- Tea Magique
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Licorne'), (SELECT id FROM "collection" WHERE name = 'Collection Magique')),

((SELECT id FROM "bubble_tea" WHERE name = 'Tea Sirène'), (SELECT id FROM "collection" WHERE name = 'Collection Magique')),

-- Collection Olympe

((SELECT id FROM "bubble_tea" WHERE name = 'Zeus'), (SELECT id FROM "collection" WHERE name = 'Collection Olympe')),

((SELECT id FROM "bubble_tea" WHERE name = 'Athéna'), (SELECT id FROM "collection" WHERE name = 'Collection Olympe')),

((SELECT id FROM "bubble_tea" WHERE name = 'Poséidon'), (SELECT id FROM "collection" WHERE name = 'Collection Olympe')),

((SELECT id FROM "bubble_tea" WHERE name = 'Arès'), (SELECT id FROM "collection" WHERE name = 'Collection Olympe')),

((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "collection" WHERE name = 'Collection Olympe')),

-- Collection Akatsuki
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "collection" WHERE name = 'Collection Akatsuki')),

-- Collection Sweet'N Chill
((SELECT id FROM "bubble_tea" WHERE name = 'Crème Brûlée'), (SELECT id FROM "collection" WHERE name = 'Collection Sweet''N Chill')),

((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "collection" WHERE name = 'Collection Sweet''N Chill')),

-- Collection California Dream
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "collection" WHERE name = 'Collection California Dream')),

((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "collection" WHERE name = 'Collection California Dream')),

((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "collection" WHERE name = 'Collection California Dream'));



-- Insertion des relations tea
INSERT INTO "bubble_tea_tea" ("bubble_tea_id", "tea_id")
VALUES
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

-- Tea Licorne
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Licorne'), (SELECT id FROM "tea" WHERE name = 'Cerise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Licorne'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Licorne'), (SELECT id FROM "tea" WHERE name = 'Citron vert')),

-- Tea Sirène
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Sirène'), (SELECT id FROM "tea" WHERE name = 'Mangue')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Sirène'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Sirène'), (SELECT id FROM "tea" WHERE name = 'Citron vert')),

-- Collection Olympe
((SELECT id FROM "bubble_tea" WHERE name = 'Zeus'), (SELECT id FROM "tea" WHERE name = 'Mangue')),
((SELECT id FROM "bubble_tea" WHERE name = 'Athéna'), (SELECT id FROM "tea" WHERE name = 'Pêche')),
((SELECT id FROM "bubble_tea" WHERE name = 'Poséidon'), (SELECT id FROM "tea" WHERE name = 'Curaçao (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Arès'), (SELECT id FROM "tea" WHERE name = 'Framboise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "tea" WHERE name = 'Fraise')),

-- Akatsuki
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "tea" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "tea" WHERE name = 'Passion')),

-- Collection California Dream

-- Mojito Citron
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Mojito (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Rhum (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Citron')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "tea" WHERE name = 'Eau pétillante')),

-- Mojito Fraise
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Mojito (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Rhum (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "tea" WHERE name = 'Eau pétillante')),

-- Mojito Passion
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Mojito (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Rhum (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Passion')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Eau pétillante'));



-- Insertion des relations multiples dans la table de jonction "bubble_tea_topping"
INSERT INTO "bubble_tea_topping" ("bubble_tea_id", "topping_id") VALUES

-- Collection Olympe
((SELECT id FROM "bubble_tea" WHERE name = 'Zeus'), (SELECT id FROM "topping" WHERE name = 'Gingembre')),
((SELECT id FROM "bubble_tea" WHERE name = 'Athéna'), (SELECT id FROM "topping" WHERE name = 'Cardamone')),
((SELECT id FROM "bubble_tea" WHERE name = 'Poséidon'), (SELECT id FROM "topping" WHERE name = 'Citron')),
((SELECT id FROM "bubble_tea" WHERE name = 'Arès'), (SELECT id FROM "topping" WHERE name = 'Fleur de sureau')),
((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "topping" WHERE name = 'Basilic')),

-- Collection Akatsuki
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "topping" WHERE name = 'Cream cheese')),

-- Collection Sweet'N Chill
((SELECT id FROM "bubble_tea" WHERE name = 'Crème Brûlée'), (SELECT id FROM "topping" WHERE name = 'Mousse onctueuse à la vanille')),
((SELECT id FROM "bubble_tea" WHERE name = 'Crème Brûlée'), (SELECT id FROM "topping" WHERE name = 'Sucre roux caramélisé')),
((SELECT id FROM "bubble_tea" WHERE name = 'Crème Brûlée'), (SELECT id FROM "topping" WHERE name = 'Sirop de sucre brun')),

((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "topping" WHERE name = 'Dalgona café')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "topping" WHERE name = 'Coulis de chocolat noir')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "topping" WHERE name = 'Mousse onctueuse')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "topping" WHERE name = 'Cacao en poudre')),

-- Collection California Dream
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "topping" WHERE name = 'Menthe')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "topping" WHERE name = 'Menthe')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "topping" WHERE name = 'Menthe'));


-- Insertion des relations multiples dans la table de jonction "bubble_tea_pearl"
INSERT INTO "bubble_tea_pearl" ("bubble_tea_id", "pearl_id") VALUES

-- Collection florale
((SELECT id FROM "bubble_tea" WHERE name = 'Quartz Rose'), (SELECT id FROM "pearl" WHERE name = 'Perle Pêche')),
((SELECT id FROM "bubble_tea" WHERE name = 'Améthyste'), (SELECT id FROM "pearl" WHERE name = 'Perle Myrtille')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bloody Mary'), (SELECT id FROM "pearl" WHERE name = 'Perle Pêche')),

-- Collection magique
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Licorne'), (SELECT id FROM "pearl" WHERE name = 'Perle Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Sirène'), (SELECT id FROM "pearl" WHERE name = 'Perle Passion')),

-- Collection Olympe
((SELECT id FROM "bubble_tea" WHERE name = 'Zeus'), (SELECT id FROM "pearl" WHERE name = 'Perle Passion')),
((SELECT id FROM "bubble_tea" WHERE name = 'Athéna'), (SELECT id FROM "pearl" WHERE name = 'Perle Passion')),
((SELECT id FROM "bubble_tea" WHERE name = 'Poséidon'), (SELECT id FROM "pearl" WHERE name = 'Perle Pomme verte')),
((SELECT id FROM "bubble_tea" WHERE name = 'Arès'), (SELECT id FROM "pearl" WHERE name = 'Perle Pomme verte')),
((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "pearl" WHERE name = 'Perle Fraise')),

-- Collection Akatsuki
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "pearl" WHERE name = 'Perle Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "pearl" WHERE name = 'Perle Tapioca')),

-- Collection Sweet'N Chill
((SELECT id FROM "bubble_tea" WHERE name = 'Crème Brûlée'), (SELECT id FROM "pearl" WHERE name = 'Perle Tapioca')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "pearl" WHERE name = 'Perle Tapioca')),

-- Collection California Dream
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "pearl" WHERE name = 'Perle Citron vert')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "pearl" WHERE name = 'Perle Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "pearl" WHERE name = 'Perle Passion'));

COMMIT;