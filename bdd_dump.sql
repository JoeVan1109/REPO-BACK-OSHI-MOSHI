-- MySQL database dump

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- General settings
SET NAMES utf8mb4;
SET sql_mode = 'STRICT_TRANS_TABLES';

SET FOREIGN_KEY_CHECKS = 0;



DROP TABLE IF EXISTS oshimoshi.collection_bubble_tea;
DROP TABLE IF EXISTS oshimoshi.bubble_tea_pearl;
DROP TABLE IF EXISTS oshimoshi.bubble_tea_tea;
DROP TABLE IF EXISTS oshimoshi.bubble_tea_topping;
DROP TABLE IF EXISTS oshimoshi.collection;
DROP TABLE IF EXISTS oshimoshi.bubble_tea;
DROP TABLE IF EXISTS oshimoshi.milk;
DROP TABLE IF EXISTS oshimoshi.pearl;
DROP TABLE IF EXISTS oshimoshi.tea;
DROP TABLE IF EXISTS oshimoshi.topping;
DROP TABLE IF EXISTS oshimoshi.bar;

CREATE TABLE IF NOT EXISTS bar (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    horaire VARCHAR(255) NOT NULL,
    image1 VARCHAR(255),
    image2 VARCHAR(255),
    image3 VARCHAR(255),
    image4 VARCHAR(255),
    image5 VARCHAR(255),
    url_map VARCHAR(2048),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS bubble_tea (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    image VARCHAR(255),
    color VARCHAR(7),
    icone VARCHAR(255),
    milk_name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS milk (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS pearl (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tea (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS topping (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS collection (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    image_collection VARCHAR(255),
    prix_l INT,
    prix_xl INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    bubble_tea_id INT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS bubble_tea_pearl (
    bubble_tea_id INT NOT NULL,
    pearl_id INT NOT NULL,
    PRIMARY KEY (bubble_tea_id, pearl_id),
    FOREIGN KEY (bubble_tea_id) REFERENCES bubble_tea(id),
    FOREIGN KEY (pearl_id) REFERENCES pearl(id)
);

CREATE TABLE IF NOT EXISTS bubble_tea_tea (
    bubble_tea_id INT NOT NULL,
    tea_id INT NOT NULL,
    PRIMARY KEY (bubble_tea_id, tea_id),
    FOREIGN KEY (bubble_tea_id) REFERENCES bubble_tea(id),
    FOREIGN KEY (tea_id) REFERENCES tea(id)
);

CREATE TABLE IF NOT EXISTS bubble_tea_topping (
    bubble_tea_id INT NOT NULL,
    topping_id INT NOT NULL,
    PRIMARY KEY (bubble_tea_id, topping_id),
    FOREIGN KEY (bubble_tea_id) REFERENCES bubble_tea(id),
    FOREIGN KEY (topping_id) REFERENCES topping(id)
);

CREATE TABLE IF NOT EXISTS collection_bubble_tea (
    collection_id INT NOT NULL,
    bubble_tea_id INT NOT NULL,
    PRIMARY KEY (collection_id, bubble_tea_id),
    FOREIGN KEY (collection_id) REFERENCES collection(id),
    FOREIGN KEY (bubble_tea_id) REFERENCES bubble_tea(id)
);


--
-- Data for Name: bar; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.bar (id, name, adresse, horaire, image1, image2, image3, image4, image5, url_map, created_at, updated_at) VALUES
(1, 'Oshi-Moshi Plumereau', '3 rue du Change, 37000 TOURS', 'Lun au Dim : 14-21h', 'oshi-moshi-plume.webp', NULL, NULL, NULL, NULL, 'https://www.google.fr/maps/place/Oshi+Moshi+Plumereau+-+Bubble+Tea+Bar+Tours/@47.3941051,0.6792808,17z/data=!3m1!4b1!4m6!3m5!1s0x47fcd5e76eb0fbf1:0x49b3dd10ea394bac!8m2!3d47.3941015!4d0.6818557!16s%2Fg%2F11fp458p2s?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D', '2025-02-28 15:42:56', NULL),
(2, 'Oshi-Moshi Gare', '25 rue Blaise Pascal, 37000 TOURS', 'Lun au Dim : 13-20h', 'oshi-moshi-gare.webp', NULL, NULL, NULL, NULL, 'https://www.google.fr/maps/place/Oshi+Moshi+Gare+-+Bubble+Tea+Bar+Tours/@47.388015,0.6904578,17z/data=!3m1!4b1!4m6!3m5!1s0x47fcd5ca82d62fbf:0x5bc7741283a41c94!8m2!3d47.3880114!4d0.6930327!16s%2Fg%2F12hshxrp2?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D', '2025-02-28 15:42:56', NULL),
(3, 'Oshi-Moshi Angers', '3 rue des Lices, 49100 ANGERS', 'Lun au Sam : 12-19h Dim: 13h-19h', 'oshi-moshi-angers.webp', NULL, NULL, NULL, NULL, 'https://www.google.fr/maps/place/Oshi+Moshi+Angers+-+Bubble+tea+bar+Angers/@47.4689302,-0.5558849,17z/data=!3m1!4b1!4m6!3m5!1s0x480879c28cfdeed5:0xdbbce09cf6de4dee!8m2!3d47.4689266!4d-0.55331!16s%2Fg%2F11sw48n8xv?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D', '2025-02-28 15:42:56', NULL);
(4, 'Oshi-Moshi Poitiers', '51 rue Gambetta, 86000 POITIERS', 'Lun au Dim : 12-19h', 'oshi-moshi-poitiers.webp', NULL, NULL, NULL, NULL, 'https://www.google.com/maps/place/Oshi+Moshi+%7C+Bubble+tea+bar/@46.5813341,0.3397273,17z/data=!3m1!4b1!4m6!3m5!1s0x47fdbf0010367223:0x93da732f8b883a1e!8m2!3d46.5813341!4d0.3397273!16s%2Fg%2F11vwwf7jnv?entry=ttu&g_ep=EgoyMDI1MDQwNi4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D', '2025-04-09 09:03:20', NULL);


-- Insertion dans la table milk
INSERT INTO oshimoshi.milk (id, name, created_at, updated_at) VALUES
(1, 'Thé noir', '2025-02-28 15:42:56', NULL),
(2, 'Fraise', '2025-02-28 15:42:56', NULL),
(3, 'Banane', '2025-02-28 15:42:56', NULL),
(4, 'Taro', '2025-02-28 15:42:56', NULL),
(5, 'Matcha', '2025-02-28 15:42:56', NULL),
(6, 'Vanille', '2025-02-28 15:42:56', NULL),
(7, 'Sésame noir', '2025-02-28 15:42:56', NULL),
(8, 'Lait saveur crème brûlée', '2025-02-28 15:42:56', NULL),
(9, 'Lait au chocolat saveur tiramisu', '2025-02-28 15:42:56', NULL),
(10, 'Lait', '2025-02-28 15:42:56', NULL),
(11, 'Noix de coco', '2025-02-28 15:42:56', NULL);


-- Insertion dans la table pearl
INSERT INTO oshimoshi.pearl (id, name, created_at, updated_at) VALUES
(1, 'Perle Pêche', '2025-02-28 15:42:56', NULL),
(2, 'Perle Myrtille', '2025-02-28 15:42:56', NULL),
(3, 'Perle Fraise', '2025-02-28 15:42:56', NULL),
(4, 'Perle Passion', '2025-02-28 15:42:56', NULL),
(5, 'Perle Pomme verte', '2025-02-28 15:42:56', NULL),
(6, 'Perle Tapioca', '2025-02-28 15:42:56', NULL),
(7, 'Perle Citron vert', '2025-02-28 15:42:56', NULL),
(8, 'Perle Mangue', '2025-02-28 15:42:56', NULL),
(9, 'Perle Ananas', '2025-02-28 15:42:56', NULL);


-- Insertion dans la table tea
INSERT INTO oshimoshi.tea (id, name, created_at, updated_at) VALUES
(1, 'Litchi', '2025-02-28 15:42:56', NULL),
(2, 'Citron', '2025-02-28 15:42:56', NULL),
(3, 'Ananas', '2025-02-28 15:42:56', NULL),
(4, 'Mangue', '2025-02-28 15:42:56', NULL),
(5, 'Passion', '2025-02-28 15:42:56', NULL),
(6, 'Goyave', '2025-02-28 15:42:56', NULL),
(7, 'Cerise', '2025-02-28 15:42:56', NULL),
(8, 'Fraise', '2025-02-28 15:42:56', NULL),
(9, 'Framboise', '2025-02-28 15:42:56', NULL),
(10, 'Myrtille', '2025-02-28 15:42:56', NULL),
(11, 'Kiwi', '2025-02-28 15:42:56', NULL),
(12, 'Rose', '2025-02-28 15:42:56', NULL),
(13, 'Thé bleu', '2025-02-28 15:42:56', NULL),
(14, 'Thé chaï', '2025-02-28 15:42:56', NULL),
(15, 'Citron vert', '2025-02-28 15:42:56', NULL),
(16, 'Violette', '2025-02-28 15:42:56', NULL),
(17, 'Curaçao (sans alcool)', '2025-02-28 15:42:56', NULL),
(18, 'Mojito (sans alcool)', '2025-02-28 15:42:56', NULL),
(19, 'Rhum (sans alcool)', '2025-02-28 15:42:56', NULL),
(20, 'Eau pétillante', '2025-02-28 15:42:56', NULL),
(21, 'Pêche', '2025-02-28 15:42:56', NULL);



-- Insertion dans la table topping
INSERT INTO oshimoshi.topping (id, name, created_at, updated_at) VALUES
(1, 'Crème fouettée', '2025-02-28 15:42:56', NULL),
(2, 'Cream cheese', '2025-02-28 15:42:56', NULL),
(3, 'Dalgona café', '2025-02-28 15:42:56', NULL),
(4, 'Coulis de chocolat noir', '2025-02-28 15:42:56', NULL),
(5, 'Mousse onctueuse', '2025-02-28 15:42:56', NULL),
(6, 'Cacao en poudre', '2025-02-28 15:42:56', NULL),
(7, 'Mousse onctueuse à la vanille', '2025-02-28 15:42:56', NULL),
(8, 'Mousse onctueuse à la noix de coco', '2025-02-28 15:42:56', NULL),
(9, 'Sucre roux caramélisé', '2025-02-28 15:42:56', NULL),
(10, 'Menthe', '2025-02-28 15:42:56', NULL),
(11, 'Noisette', '2025-02-28 15:42:56', NULL),
(12, 'Mousse onctueuse au matcha', '2025-02-28 15:42:56', NULL),
(13, 'Sirop de sucre brun', '2025-02-28 15:42:56', NULL),
(14, 'Caramel', '2025-02-28 15:42:56', NULL),
(15, 'Gingembre', '2025-02-28 15:42:56', NULL),
(16, 'Cardamone', '2025-02-28 15:42:56', NULL),
(17, 'Citron', '2025-02-28 15:42:56', NULL),
(18, 'Fleur de sureau', '2025-02-28 15:42:56', NULL),
(19, 'Basilic', '2025-02-28 15:42:56', NULL),
(20, 'Chocolat', '2025-02-28 15:42:56', NULL);



-- Insertion dans la table bubble_tea
INSERT INTO oshimoshi.bubble_tea (id, name, image, color, icone, milk_name, created_at, updated_at) VALUES
(1, 'Quartz Rose', NULL, '#FB509A', 'florale-quartz.png', NULL, '2025-02-28 15:42:56', NULL),
(2, 'Améthyste', NULL, '#893A9E', 'florale-amethyst.png', NULL, '2025-02-28 15:42:56', NULL),
(3, 'Bloody Mary', NULL, '#AD4546', 'florale-bloody-mary.png', NULL, '2025-02-28 15:42:56', NULL),
(4, 'Tea Licorne', NULL, '#C56798', 'magique-licorne.png', NULL, '2025-02-28 15:42:56', NULL),
(5, 'Tea Sirène', NULL, '#9B87CA', 'magique-sirene.png', NULL, '2025-02-28 15:42:56', NULL),
(6, 'Zeus', NULL, '#EE933A', 'olympe-zeus.png', NULL, '2025-02-28 15:42:56', NULL),
(7, 'Athéna', NULL, '#DD5A3A', 'olympe-athena.png', NULL, '2025-02-28 15:42:56', NULL),
(8, 'Poséidon', NULL, '#41D6F2', 'olympe-poseidon.png', NULL, '2025-02-28 15:42:56', NULL),
(9, 'Arès', NULL, '#FA614A', 'olympe-ares.png', NULL, '2025-02-28 15:42:56', NULL),
(10, 'Hadès', NULL, '#8B5440', 'olympe-hades.png', NULL, '2025-02-28 15:42:56', NULL),
(11, 'Akatsuki', NULL, '#BB2320', 'akatsuki.png', NULL, '2025-02-28 15:42:56', NULL),
(12, 'Crème Brûlée', NULL, '#B89663', 'sweet-creme-brulee.png', 'Lait saveur crème brûlée', '2025-02-28 15:42:56', NULL),
(13, 'Tiramisu', NULL, '#A06012', 'sweet-tiramisu.png', 'Lait au chocolat saveur tiramisu', '2025-02-28 15:42:56', NULL),
(14, 'Mojito Citron', NULL, '#FCC737', 'mojito-citron.png', NULL, '2025-02-28 15:42:56', NULL),
(15, 'Mojito Fraise', NULL, '#E73879', 'mojito-fraise.png', NULL, '2025-02-28 15:42:56', NULL),
(16, 'Mojito Passion', NULL, '#F26B0F', 'mojito-passion.png', NULL, '2025-02-28 15:42:56', NULL);



-- Insertion dans la table collection
INSERT INTO oshimoshi.collection (id, name, image_collection, prixL, prixXL, created_at, updated_at, bubble_tea_id) VALUES
(1, 'Collection Florale', 'collection-florale.png', 6, 7, '2025-02-28 15:42:56', NULL, NULL),
(2, 'Collection Magique', NULL, 8, NULL, '2025-02-28 15:42:56', NULL, NULL),
(3, 'Collection Olympe', NULL, 9, NULL, '2025-02-28 15:42:56', NULL, NULL),
(4, 'Collection Akatsuki', NULL, 8, 9, '2025-02-28 15:42:56', NULL, NULL),
(5, 'Collection Sweet''N Chill', 'collection-sweet-chill.png', 8, 9, '2025-02-28 15:42:56', NULL, NULL),
(6, 'Collection California Dream', 'collection-california-dream.png', 7, 8, '2025-02-28 15:42:56', NULL, NULL);



-- Insertion dans la table bubble_tea_pearl

INSERT INTO oshimoshi.bubble_tea_pearl (bubble_tea_id, pearl_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 4),
(6, 4),
(7, 4),
(8, 5),
(9, 5),
(10, 3),
(11, 3),
(11, 6),
(12, 6),
(13, 6),
(14, 7),
(15, 3),
(16, 4);



-- Insertion dans la table bubble_tea_tea

INSERT INTO oshimoshi.bubble_tea_tea (bubble_tea_id, tea_id) VALUES
(1, 12),
(1, 7),
(2, 16),
(2, 1),
(2, 10),
(3, 12),
(3, 9),
(4, 7),
(4, 13),
(4, 15),
(5, 4),
(5, 13),
(5, 15),
(6, 4),
(7, 21),
(8, 17),
(9, 9),
(10, 8),
(11, 8),
(11, 5),
(14, 18),
(14, 19),
(14, 2),
(14, 13),
(14, 20),
(15, 18),
(15, 19),
(15, 8),
(15, 13),
(15, 20),
(16, 18),
(16, 19),
(16, 5),
(16, 13),
(16, 20);


-- Insertion dans la table bubble_tea_topping

INSERT INTO oshimoshi.bubble_tea_topping (bubble_tea_id, topping_id) VALUES
(6, 15),
(7, 16),
(8, 17),
(9, 18),
(10, 19),
(11, 2),
(12, 7),
(12, 9),
(12, 13),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(14, 10),
(15, 10),
(16, 10);


-- Insertion dans la table collection_bubble_tea

INSERT INTO oshimoshi.collection_bubble_tea (collection_id, bubble_tea_id) VALUES
(1, 1), (1, 2), (1, 3), (2, 4), (2, 5), (3, 6), (3, 7), (3, 8), (3, 9), (3, 10),
(4, 11), (5, 12), (5, 13), (6, 14), (6, 15), (6, 16);





-- Contraintes UNIQUE pour les noms
ALTER TABLE oshimoshi.bar ADD CONSTRAINT bar_name_key UNIQUE (name);
ALTER TABLE oshimoshi.bubble_tea ADD CONSTRAINT bubble_tea_name_key UNIQUE (name);
ALTER TABLE oshimoshi.collection ADD CONSTRAINT collection_name_key UNIQUE (name);
ALTER TABLE oshimoshi.milk ADD CONSTRAINT milk_name_key UNIQUE (name);
ALTER TABLE oshimoshi.pearl ADD CONSTRAINT pearl_name_key UNIQUE (name);
ALTER TABLE oshimoshi.tea ADD CONSTRAINT tea_name_key UNIQUE (name);
ALTER TABLE oshimoshi.topping ADD CONSTRAINT topping_name_key UNIQUE (name);



-- Contraintes de FOREIGN KEY
ALTER TABLE oshimoshi.bubble_tea ADD CONSTRAINT bubble_tea_milk_name_fkey FOREIGN KEY (milk_name) REFERENCES oshimoshi.milk(name);

ALTER TABLE oshimoshi.bubble_tea_pearl ADD CONSTRAINT bubble_tea_pearl_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);

ALTER TABLE oshimoshi.bubble_tea_pearl ADD CONSTRAINT bubble_tea_pearl_pearl_id_fkey FOREIGN KEY (pearl_id) REFERENCES oshimoshi.pearl(id);

ALTER TABLE oshimoshi.bubble_tea_tea ADD CONSTRAINT bubble_tea_tea_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);

ALTER TABLE oshimoshi.bubble_tea_tea ADD CONSTRAINT bubble_tea_tea_tea_id_fkey FOREIGN KEY (tea_id) REFERENCES oshimoshi.tea(id);

ALTER TABLE oshimoshi.bubble_tea_topping ADD CONSTRAINT bubble_tea_topping_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);

ALTER TABLE oshimoshi.bubble_tea_topping ADD CONSTRAINT bubble_tea_topping_topping_id_fkey FOREIGN KEY (topping_id) REFERENCES oshimoshi.topping(id);

ALTER TABLE oshimoshi.collection_bubble_tea ADD CONSTRAINT collection_bubble_tea_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);

ALTER TABLE oshimoshi.collection_bubble_tea ADD CONSTRAINT collection_bubble_tea_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES oshimoshi.collection(id);

ALTER TABLE oshimoshi.collection ADD CONSTRAINT collection_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);


SET FOREIGN_KEY_CHECKS = 1;
