BEGIN;


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

-- Tea Licorne
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Licorne'), (SELECT id FROM "tea" WHERE name = 'Cerise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Licorne'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Licorne'), (SELECT id FROM "tea" WHERE name = 'Citron vert')),

((SELECT id FROM "bubble_tea" WHERE name = 'Tea Sirène'), (SELECT id FROM "tea" WHERE name = 'Mangue')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Sirène'), (SELECT id FROM "tea" WHERE name = 'Thé bleu')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Sirène'), (SELECT id FROM "tea" WHERE name = 'Citron vert')),

-- Collection Olympe
((SELECT id FROM "bubble_tea" WHERE name = 'Zeus'), (SELECT id FROM "tea" WHERE name = 'Mangue')),
((SELECT id FROM "bubble_tea" WHERE name = 'Athéna'), (SELECT id FROM "tea" WHERE name = 'Pêche')),
((SELECT id FROM "bubble_tea" WHERE name = 'Poséidon'), (SELECT id FROM "tea" WHERE name = 'Curaçao (sans alcool)')),
((SELECT id FROM "bubble_tea" WHERE name = 'Arès'), (SELECT id FROM "tea" WHERE name = 'Framboise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "tea" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "tea" WHERE name = 'Basilic')),

-- Akatsuki
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "tea" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "tea" WHERE name = 'Passion')),

-- Collection California Dream

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
((SELECT id FROM "bubble_tea" WHERE name = 'Bubble Mojito Passion'), (SELECT id FROM "tea" WHERE name = 'Eau pétillante'));



-- Insertion des relations multiples dans la table de jonction "bubble_tea_pearl"
INSERT INTO "bubble_tea_pearl" ("bubble_tea_id", "pearl_id") VALUES

-- Collection florale
((SELECT id FROM "bubble_tea" WHERE name = 'Quartz Rose'), (SELECT id FROM "pearl" WHERE name = 'Pêche')),
((SELECT id FROM "bubble_tea" WHERE name = 'Améthyste'), (SELECT id FROM "pearl" WHERE name = 'Myrtille')),
((SELECT id FROM "bubble_tea" WHERE name = 'Bloody Mary'), (SELECT id FROM "pearl" WHERE name = 'Pêche')),

-- Collection magique
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Licorne'), (SELECT id FROM "pearl" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tea Sirène'), (SELECT id FROM "pearl" WHERE name = 'Passion')),

-- Collection Olympe
((SELECT id FROM "bubble_tea" WHERE name = 'Zeus'), (SELECT id FROM "pearl" WHERE name = 'Passion')),
((SELECT id FROM "bubble_tea" WHERE name = 'Athéna'), (SELECT id FROM "pearl" WHERE name = 'Passion')),
((SELECT id FROM "bubble_tea" WHERE name = 'Poséidon'), (SELECT id FROM "pearl" WHERE name = 'Pomme verte')),
((SELECT id FROM "bubble_tea" WHERE name = 'Arès'), (SELECT id FROM "pearl" WHERE name = 'Pomme verte')),
((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "pearl" WHERE name = 'Fraise')),

-- Collection Akatsuki
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "pearl" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "pearl" WHERE name = 'Tapioca')),

-- Collection Sweet'N Chill
((SELECT id FROM "bubble_tea" WHERE name = 'Crème Brûlée'), (SELECT id FROM "pearl" WHERE name = 'Tapioca')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "pearl" WHERE name = 'Tapioca')),

-- Collection California Dream
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "pearl" WHERE name = 'Citron vert')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "pearl" WHERE name = 'Fraise')),
((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "pearl" WHERE name = 'Passion'));


-- Insertion des relations multiples dans la table de jonction "bubble_tea_topping"
INSERT INTO "bubble_tea_topping" ("bubble_tea_id", "topping_id") VALUES


-- Collection Olympe
((SELECT id FROM "bubble_tea" WHERE name = 'Zeus'), (SELECT id FROM "topping" WHERE name = 'Gimgembre')),
((SELECT id FROM "bubble_tea" WHERE name = 'Athéna'), (SELECT id FROM "topping" WHERE name = 'Cardamone')),
((SELECT id FROM "bubble_tea" WHERE name = 'Poséidon'), (SELECT id FROM "topping" WHERE name = 'Citron')),
((SELECT id FROM "bubble_tea" WHERE name = 'Arès'), (SELECT id FROM "topping" WHERE name = 'Fleur de sureau')),
((SELECT id FROM "bubble_tea" WHERE name = 'Hadès'), (SELECT id FROM "topping" WHERE name = 'Basilic')),

-- Collection Akatsuki
((SELECT id FROM "bubble_tea" WHERE name = 'Akatsuki'), (SELECT id FROM "topping" WHERE name = 'Cream Cheese')),

-- Collection Sweet'N Chill
((SELECT id FROM "bubble_tea" WHERE name = 'Crème Brûlée'), (SELECT id FROM "topping" WHERE name = 'Mousse onctueuse à la vanille')),
((SELECT id FROM "bubble_tea" WHERE name = 'Crème Brûlée'), (SELECT id FROM "topping" WHERE name = 'Sucre roux caramélisé')),
((SELECT id FROM "bubble_tea" WHERE name = 'Crème Brûlée'), (SELECT id FROM "topping" WHERE name = 'Sirop de sucre brun')),

((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "topping" WHERE name = 'Dalgona café')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "topping" WHERE name = 'Coulis de chocolat noir')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "topping" WHERE name = 'Mousse onctueuse')),
((SELECT id FROM "bubble_tea" WHERE name = 'Tiramisu'), (SELECT id FROM "topping" WHERE name = 'Cacaco en poudre')),

-- Collection California Dream

((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Citron'), (SELECT id FROM "topping" WHERE name = 'Menthe')),

((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Fraise'), (SELECT id FROM "topping" WHERE name = 'Menthe')),

((SELECT id FROM "bubble_tea" WHERE name = 'Mojito Passion'), (SELECT id FROM "topping" WHERE name = 'Menthe'));

COMMIT;