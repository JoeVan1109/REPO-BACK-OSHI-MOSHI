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

COMMIT;