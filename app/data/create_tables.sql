BEGIN;

-- Suppression des tables existantes pour éviter les conflits
DROP TABLE IF EXISTS "bar", "bubble_tea_tea", "bubble_tea_pearl", "bubble_tea_topping", "bubble_tea", "tea", "milk", "topping", "pearl", "collection";

-- Création de la table "bar"
CREATE TABLE "bar" (
    "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL UNIQUE,
    "adresse" text NOT NULL,
    "horaire" text NOT NULL,
    "image1" text,
    "image2" text,
    "image3" text,
    "image4" text,
    "image5" text,
    "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz
);

-- Création des tables de base sans dépendances
CREATE TABLE "tea" (
    "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL UNIQUE,
    "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz
);

CREATE TABLE "milk" (
    "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL UNIQUE,
    "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz
);

CREATE TABLE "topping" (
    "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL UNIQUE,
    "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz
);

CREATE TABLE "pearl" (
    "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL UNIQUE,
    "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz
);

-- Création de la table "collection" sans la référence à "bubble_tea"
CREATE TABLE "collection" (
    "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL UNIQUE,
    "image_collection" text,
    "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz
);

DROP TABLE IF EXISTS "bubble_tea";

-- Création de la table "bubble_tea" avec toutes ses références
CREATE TABLE "bubble_tea" (
    "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL UNIQUE,
    "prixL" INTEGER NULL,
    "prixXL" INTEGER NULL,
    "image" text,
    "icone" text,
    "milk_name" text REFERENCES "milk"("name"),
    "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz
);

-- Création de la table de jonction "collection_bubble_collection" pour gérer la relation plusieurs à plusieurs entre "collection" et "bubble_tea"
CREATE TABLE "collection_bubble_tea" (
    "collection_id" integer REFERENCES "collection"("id"),
    "bubble_tea_id" integer REFERENCES "bubble_tea"("id"),
    PRIMARY KEY ("collection_id", "bubble_tea_id")
);

-- Création de la table de jonction "bubble_tea_tea" pour gérer la relation plusieurs à plusieurs entre "bubble_tea" et "tea"
CREATE TABLE "bubble_tea_tea" (
    "bubble_tea_id" integer REFERENCES "bubble_tea"("id"),
    "tea_id" integer REFERENCES "tea"("id"),
    PRIMARY KEY ("bubble_tea_id", "tea_id")
);

-- Création de la table de jonction "bubble_tea_pearl" pour gérer la relation plusieurs à plusieurs entre "bubble_tea" et "pearl"
CREATE TABLE "bubble_tea_pearl" (
    "bubble_tea_id" integer REFERENCES "bubble_tea"("id"),
    "pearl_id" integer REFERENCES "pearl"("id"),
    PRIMARY KEY ("bubble_tea_id", "pearl_id")
);

-- Création de la table de jonction "bubble_tea_topping" pour gérer la relation plusieurs à plusieurs entre "bubble_tea" et "topping"
CREATE TABLE "bubble_tea_topping" (
    "bubble_tea_id" integer REFERENCES "bubble_tea"("id"),
    "topping_id" integer REFERENCES "topping"("id"),
    PRIMARY KEY ("bubble_tea_id", "topping_id")
);

-- Ajout de la référence à "bubble_tea" dans la table "collection"
-- Cette étape est nécessaire pour éviter une référence circulaire lors de la création initiale des tables
ALTER TABLE "collection" ADD COLUMN "bubble_tea_id" INTEGER REFERENCES "bubble_tea"("id");

COMMIT;