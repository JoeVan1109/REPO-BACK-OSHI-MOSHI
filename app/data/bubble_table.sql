BEGIN;

INSERT INTO "bar" ("name", "adresse", "horaire", "image1", "image2", "image3", "image4", "image5", "updated_at")
VALUES 
('Oshi-Moshi Plumereau', '3 rue du Change, 37000 TOURS', 'Lun au Dim : 14-21h', 'oshi-moshi-plume.png', NULL, NULL, NULL, NULL, NULL),
('Oshi-Moshi Gare', '25 rue Blazise Pascal, 37000 TOURS', 'Lun au Dim : 13-20h', 'oshi-moshi-gare.png', NULL, NULL, NULL, NULL, NULL),
('Oshi-Moshi Angers', '3 rue des Lices, 49100 ANGERS', 'Lun au Sam : 12-19h Dim: 13h-19h', 'oshi-moshi-angers.png', NULL, NULL, NULL, NULL, NULL);

COMMIT;