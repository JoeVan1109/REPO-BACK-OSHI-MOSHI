-- MySQL database dump

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- General settings
SET NAMES utf8mb4;
SET sql_mode = 'STRICT_TRANS_TABLES';

-- Create table bar
-- Supprimez d'abord les tables dépendantes





DROP TABLE IF EXIST bar;

CREATE TABLE oshimoshi.bar (
    id INT NOT NULL AUTO_INCREMENT,
    name TEXT NOT NULL,
    adresse TEXT NOT NULL,
    horaire TEXT NOT NULL,
    image1 TEXT,
    image2 TEXT,
    image3 TEXT,
    image4 TEXT,
    image5 TEXT,
    url_map TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at DATETIME,
    PRIMARY KEY (id)
);


-- Create table bubble_tea
DROP TABLE IF EXISTS bubble_tea;

CREATE TABLE oshimoshi.bubble_tea (
    id INT NOT NULL AUTO_INCREMENT,
    name TEXT NOT NULL,
    image TEXT,
    color VARCHAR(7),
    icone TEXT,
    milk_name TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);


-- Create table bubble_tea_pearl
DROP TABLE IF EXISTS bubble_tea_pearl;

CREATE TABLE oshimoshi.bubble_tea_pearl (
    bubble_tea_id INT NOT NULL,
    pearl_id INT NOT NULL,
    PRIMARY KEY (bubble_tea_id, pearl_id)
);


-- Create table bubble_tea_tea
DROP TABLE IF EXISTS bubble_tea_tea;

CREATE TABLE oshimoshi.bubble_tea_tea (
    bubble_tea_id INT NOT NULL,
    tea_id INT NOT NULL,
    PRIMARY KEY (bubble_tea_id, tea_id)
);


-- Create table bubble_tea_topping
DROP TABLE IF EXISTS bubble_tea_topping;

CREATE TABLE oshimoshi.bubble_tea_topping (
    bubble_tea_id INT NOT NULL,
    topping_id INT NOT NULL,
    PRIMARY KEY (bubble_tea_id, topping_id)
);


-- Create table collection
DROP TABLE IF EXISTS collection;

CREATE TABLE oshimoshi.collection (
    id INT NOT NULL AUTO_INCREMENT,
    name TEXT NOT NULL,
    image_collection TEXT,
    prixL INT,
    prixXL INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP,
    bubble_tea_id INT,
    PRIMARY KEY (id)
);

-- Create table collection_bubble_tea
DROP TABLE IF EXISTS collection_bubble_tea;

CREATE TABLE oshimoshi.collection_bubble_tea (
    collection_id INT NOT NULL,
    bubble_tea_id INT NOT NULL,
    PRIMARY KEY (collection_id, bubble_tea_id)
);

-- Create table milk

DROP TABLE IF EXISTS milk;

CREATE TABLE oshimoshi.milk (
    id INT NOT NULL AUTO_INCREMENT,
    name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);

-- Create table pearl

DROP TABLE IF EXISTS pearl;

CREATE TABLE oshimoshi.pearl (
    id INT NOT NULL AUTO_INCREMENT,
    name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);

-- Create table 

DROP TABLE IF EXISTS tea;

CREATE TABLE oshimoshi.tea (
    id INT NOT NULL AUTO_INCREMENT,
    name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);

-- Create table topping

DROP TABLE IF EXISTS topping;

CREATE TABLE oshimoshi.topping (
    id INT NOT NULL AUTO_INCREMENT,
    name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);






--
-- Name: topping_id_seq; Type: SEQUENCE; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE oshimoshi.topping 
MODIFY COLUMN id INT AUTO_INCREMENT;

--
-- Data for Name: bar; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.bar (id, name, adresse, horaire, image1, image2, image3, image4, image5, url_map, created_at, updated_at) FROM stdin;
1	Oshi-Moshi Plumereau	3 rue du Change, 37000 TOURS	Lun au Dim : 14-21h	oshi-moshi-plume.webp	\N	\N	\N	\N	https://www.google.fr/maps/place/Oshi+Moshi+Plumereau+-+Bubble+Tea+Bar+Tours/@47.3941051,0.6792808,17z/data=!3m1!4b1!4m6!3m5!1s0x47fcd5e76eb0fbf1:0x49b3dd10ea394bac!8m2!3d47.3941015!4d0.6818557!16s%2Fg%2F11fp458p2s?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D	2025-02-28 15:42:56.73386	\N
2	Oshi-Moshi Gare	25 rue Blazise Pascal, 37000 TOURS	Lun au Dim : 13-20h	oshi-moshi-gare.webp	\N	\N	\N	\N	https://www.google.fr/maps/place/Oshi+Moshi+Gare+-+Bubble+Tea+Bar+Tours/@47.388015,0.6904578,17z/data=!3m1!4b1!4m6!3m5!1s0x47fcd5ca82d62fbf:0x5bc7741283a41c94!8m2!3d47.3880114!4d0.6930327!16s%2Fg%2F12hshxrp2?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D	2025-02-28 15:42:56.73386	\N
3	Oshi-Moshi Angers	3 rue des Lices, 49100 ANGERS	Lun au Sam : 12-19h Dim: 13h-19h	oshi-moshi-angers.webp	\N	\N	\N	\N	https://www.google.fr/maps/place/Oshi+Moshi+Angers+-+Bubble+tea+bar+Angers/@47.4689302,-0.5558849,17z/data=!3m1!4b1!4m6!3m5!1s0x480879c28cfdeed5:0xdbbce09cf6de4dee!8m2!3d47.4689266!4d-0.55331!16s%2Fg%2F11sw48n8xv?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D	2025-02-28 15:42:56.73386	\N
\.


--
-- Data for Name: bubble_tea; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.bubble_tea (id, name, image, color, icone, milk_name, created_at, updated_at) FROM stdin;
1	Quartz Rose	\N	#FB509A	florale-quartz.png	\N	2025-02-28 15:42:56.73386+01	\N
2	Am├®thyste	\N	#893A9E	florale-amethyst.png	\N	2025-02-28 15:42:56.73386+01	\N
3	Bloody Mary	\N	#AD4546	florale-bloody-mary.png	\N	2025-02-28 15:42:56.73386+01	\N
4	Tea Licorne	\N	#C56798	magique-licorne.png	\N	2025-02-28 15:42:56.73386+01	\N
5	Tea Sir├¿ne	\N	#9B87CA	magique-sirene.png	\N	2025-02-28 15:42:56.73386+01	\N
6	Zeus	\N	#EE933A	olympe-zeus.png	\N	2025-02-28 15:42:56.73386+01	\N
7	Ath├®na	\N	#DD5A3A	olympe-athena.png	\N	2025-02-28 15:42:56.73386+01	\N
8	Pos├®idon	\N	#41D6F2	olympe-poseidon.png	\N	2025-02-28 15:42:56.73386+01	\N
9	Ar├¿s	\N	#FA614A	olympe-ares.png	\N	2025-02-28 15:42:56.73386+01	\N
10	Had├¿s	\N	#8B5440	olympe-hades.png	\N	2025-02-28 15:42:56.73386+01	\N
11	Akatsuki	\N	#BB2320	akatsuki.png	\N	2025-02-28 15:42:56.73386+01	\N
12	Cr├¿me Br├╗l├®e	\N	#B89663	sweet-creme-brulee.png	Lait saveur cr├¿me br├╗l├®e	2025-02-28 15:42:56.73386+01	\N
13	Tiramisu	\N	#A06012	sweet-tiramisu.png	Lait au chocolat saveur tiramisu	2025-02-28 15:42:56.73386+01	\N
14	Mojito Citron	\N	#FCC737	mojito-citron.png	\N	2025-02-28 15:42:56.73386+01	\N
15	Mojito Fraise	\N	#E73879	mojito-fraise.png	\N	2025-02-28 15:42:56.73386+01	\N
16	Mojito Passion	\N	#F26B0F	mojito-passion.png	\N	2025-02-28 15:42:56.73386+01	\N
\.


--
-- Data for Name: bubble_tea_pearl; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.bubble_tea_pearl (bubble_tea_id, pearl_id) FROM stdin;
1	1
2	2
3	1
4	3
5	4
6	4
7	4
8	5
9	5
10	3
11	3
11	6
12	6
13	6
14	7
15	3
16	4
\.


--
-- Data for Name: bubble_tea_tea; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.bubble_tea_tea (bubble_tea_id, tea_id) FROM stdin;
1	12
1	7
2	16
2	1
2	10
3	12
3	9
4	7
4	13
4	15
5	4
5	13
5	15
6	4
7	21
8	17
9	9
10	8
11	8
11	5
14	18
14	19
14	2
14	13
14	20
15	18
15	19
15	8
15	13
15	20
16	18
16	19
16	5
16	13
16	20
\.


--
-- Data for Name: bubble_tea_topping; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.bubble_tea_topping (bubble_tea_id, topping_id) FROM stdin;
6	15
7	16
8	17
9	18
10	19
11	2
12	7
12	9
12	13
13	3
13	4
13	5
13	6
14	10
15	10
16	10
\.


--
-- Data for Name: collection; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.collection (id, name, image_collection, "prixL", "prixXL", created_at, updated_at, bubble_tea_id) FROM stdin;
1	Collection Florale	collection-florale.png	6	7	2025-02-28 15:42:56.73386+01	\N	\N
2	Collection Magique	\N	8	\N	2025-02-28 15:42:56.73386+01	\N	\N
3	Collection Olympe	\N	9	\N	2025-02-28 15:42:56.73386+01	\N	\N
4	Collection Akatsuki	\N	8	9	2025-02-28 15:42:56.73386+01	\N	\N
5	Collection Sweet'N Chill	collection-sweet-chill.png	8	9	2025-02-28 15:42:56.73386+01	\N	\N
6	Collection California Dream	collection-california-dream.png	7	8	2025-02-28 15:42:56.73386+01	\N	\N
\.


--
-- Data for Name: collection_bubble_tea; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.collection_bubble_tea (collection_id, bubble_tea_id) FROM stdin;
1	1
1	2
1	3
2	4
2	5
3	6
3	7
3	8
3	9
3	10
4	11
5	12
5	13
6	14
6	15
6	16
\.


--
-- Data for Name: milk; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.milk (id, name, created_at, updated_at) FROM stdin;
1	Th├® noir	2025-02-28 15:42:56.73386+01	\N
2	Fraise	2025-02-28 15:42:56.73386+01	\N
3	Banane	2025-02-28 15:42:56.73386+01	\N
4	Taro	2025-02-28 15:42:56.73386+01	\N
5	Matcha	2025-02-28 15:42:56.73386+01	\N
6	Vanille	2025-02-28 15:42:56.73386+01	\N
7	S├®same noir	2025-02-28 15:42:56.73386+01	\N
8	Lait saveur cr├¿me br├╗l├®e	2025-02-28 15:42:56.73386+01	\N
9	Lait au chocolat saveur tiramisu	2025-02-28 15:42:56.73386+01	\N
10	Lait	2025-02-28 15:42:56.73386+01	\N
11	Noix de coco	2025-02-28 15:42:56.73386+01	\N
\.


--
-- Data for Name: pearl; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.pearl (id, name, created_at, updated_at) FROM stdin;
1	Perle P├¬che	2025-02-28 15:42:56.73386+01	\N
2	Perle Myrtille	2025-02-28 15:42:56.73386+01	\N
3	Perle Fraise	2025-02-28 15:42:56.73386+01	\N
4	Perle Passion	2025-02-28 15:42:56.73386+01	\N
5	Perle Pomme verte	2025-02-28 15:42:56.73386+01	\N
6	Perle Tapioca	2025-02-28 15:42:56.73386+01	\N
7	Perle Citron vert	2025-02-28 15:42:56.73386+01	\N
8	Perle Mangue	2025-02-28 15:42:56.73386+01	\N
9	Perle Ananas	2025-02-28 15:42:56.73386+01	\N
\.


--
-- Data for Name: tea; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.tea (id, name, created_at, updated_at) FROM stdin;
1	Litchi	2025-02-28 15:42:56.73386+01	\N
2	Citron	2025-02-28 15:42:56.73386+01	\N
3	Ananas	2025-02-28 15:42:56.73386+01	\N
4	Mangue	2025-02-28 15:42:56.73386+01	\N
5	Passion	2025-02-28 15:42:56.73386+01	\N
6	Goyave	2025-02-28 15:42:56.73386+01	\N
7	Cerise	2025-02-28 15:42:56.73386+01	\N
8	Fraise	2025-02-28 15:42:56.73386+01	\N
9	Framboise	2025-02-28 15:42:56.73386+01	\N
10	Myrtille	2025-02-28 15:42:56.73386+01	\N
11	Kiwi	2025-02-28 15:42:56.73386+01	\N
12	Rose	2025-02-28 15:42:56.73386+01	\N
13	Th├® bleu	2025-02-28 15:42:56.73386+01	\N
14	Th├® cha├»	2025-02-28 15:42:56.73386+01	\N
15	Citron vert	2025-02-28 15:42:56.73386+01	\N
16	Violette	2025-02-28 15:42:56.73386+01	\N
17	Cura├ºao (sans alcool)	2025-02-28 15:42:56.73386+01	\N
18	Mojito (sans alcool)	2025-02-28 15:42:56.73386+01	\N
19	Rhum (sans alcool)	2025-02-28 15:42:56.73386+01	\N
20	Eau p├®tillante	2025-02-28 15:42:56.73386+01	\N
21	P├¬che	2025-02-28 15:42:56.73386+01	\N
\.


--
-- Data for Name: topping; Type: TABLE DATA; Schema: oshimoshi; Owner: red_bull_002
--

INSERT INTO oshimoshi.topping (id, name, created_at, updated_at) FROM stdin;
1	Cr├¿me fouett├®e	2025-02-28 15:42:56.73386+01	\N
2	Cream cheese	2025-02-28 15:42:56.73386+01	\N
3	Dalgona caf├®	2025-02-28 15:42:56.73386+01	\N
4	Coulis de chocolat noir	2025-02-28 15:42:56.73386+01	\N
5	Mousse onctueuse	2025-02-28 15:42:56.73386+01	\N
6	Cacao en poudre	2025-02-28 15:42:56.73386+01	\N
7	Mousse onctueuse ├á la vanille	2025-02-28 15:42:56.73386+01	\N
8	Mousse onctueuse ├á la noix de coco	2025-02-28 15:42:56.73386+01	\N
9	Sucre roux caram├®lis├®	2025-02-28 15:42:56.73386+01	\N
10	Menthe	2025-02-28 15:42:56.73386+01	\N
11	Noisette	2025-02-28 15:42:56.73386+01	\N
12	Mousse onctueuse au matcha	2025-02-28 15:42:56.73386+01	\N
13	Sirop de sucre brun	2025-02-28 15:42:56.73386+01	\N
14	Caramel	2025-02-28 15:42:56.73386+01	\N
15	Gingembre	2025-02-28 15:42:56.73386+01	\N
16	Cardamone	2025-02-28 15:42:56.73386+01	\N
17	Citron	2025-02-28 15:42:56.73386+01	\N
18	Fleur de sureau	2025-02-28 15:42:56.73386+01	\N
19	Basilic	2025-02-28 15:42:56.73386+01	\N
20	Chocolat	2025-02-28 15:42:56.73386+01	\N
\.


--
-- Name: bar_id_seq; Type: SEQUENCE SET; Schema: oshimoshi; Owner: red_bull_002
--

SELECT pg_catalog.setval('oshimoshi.bar_id_seq', 3, true);


--
-- Name: bubble_tea_id_seq; Type: SEQUENCE SET; Schema: oshimoshi; Owner: red_bull_002
--

SELECT pg_catalog.setval('oshimoshi.bubble_tea_id_seq', 16, true);


--
-- Name: collection_id_seq; Type: SEQUENCE SET; Schema: oshimoshi; Owner: red_bull_002
--

SELECT pg_catalog.setval('oshimoshi.collection_id_seq', 6, true);


--
-- Name: milk_id_seq; Type: SEQUENCE SET; Schema: oshimoshi; Owner: red_bull_002
--

SELECT pg_catalog.setval('oshimoshi.milk_id_seq', 11, true);


--
-- Name: pearl_id_seq; Type: SEQUENCE SET; Schema: oshimoshi; Owner: red_bull_002
--

SELECT pg_catalog.setval('oshimoshi.pearl_id_seq', 9, true);


--
-- Name: tea_id_seq; Type: SEQUENCE SET; Schema: oshimoshi; Owner: red_bull_002
--

SELECT pg_catalog.setval('oshimoshi.tea_id_seq', 21, true);


--
-- Name: topping_id_seq; Type: SEQUENCE SET; Schema: oshimoshi; Owner: red_bull_002
--

SELECT pg_catalog.setval('oshimoshi.topping_id_seq', 20, true);


--
-- Name: bar bar_name_key; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bar
    ADD CONSTRAINT bar_name_key UNIQUE (name);


--
-- Name: bar bar_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bar
    ADD CONSTRAINT bar_pkey PRIMARY KEY (id);


--
-- Name: bubble_tea bubble_tea_name_key; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea
    ADD CONSTRAINT bubble_tea_name_key UNIQUE (name);


--
-- Name: bubble_tea_pearl bubble_tea_pearl_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea_pearl
    ADD CONSTRAINT bubble_tea_pearl_pkey PRIMARY KEY (bubble_tea_id, pearl_id);


--
-- Name: bubble_tea bubble_tea_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea
    ADD CONSTRAINT bubble_tea_pkey PRIMARY KEY (id);


--
-- Name: bubble_tea_tea bubble_tea_tea_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea_tea
    ADD CONSTRAINT bubble_tea_tea_pkey PRIMARY KEY (bubble_tea_id, tea_id);


--
-- Name: bubble_tea_topping bubble_tea_topping_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea_topping
    ADD CONSTRAINT bubble_tea_topping_pkey PRIMARY KEY (bubble_tea_id, topping_id);


--
-- Name: collection_bubble_tea collection_bubble_tea_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.collection_bubble_tea
    ADD CONSTRAINT collection_bubble_tea_pkey PRIMARY KEY (collection_id, bubble_tea_id);


--
-- Name: collection collection_name_key; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.collection
    ADD CONSTRAINT collection_name_key UNIQUE (name);


--
-- Name: collection collection_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.collection
    ADD CONSTRAINT collection_pkey PRIMARY KEY (id);


--
-- Name: milk milk_name_key; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.milk
    ADD CONSTRAINT milk_name_key UNIQUE (name);


--
-- Name: milk milk_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.milk
    ADD CONSTRAINT milk_pkey PRIMARY KEY (id);


--
-- Name: pearl pearl_name_key; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.pearl
    ADD CONSTRAINT pearl_name_key UNIQUE (name);


--
-- Name: pearl pearl_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.pearl
    ADD CONSTRAINT pearl_pkey PRIMARY KEY (id);


--
-- Name: tea tea_name_key; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.tea
    ADD CONSTRAINT tea_name_key UNIQUE (name);


--
-- Name: tea tea_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.tea
    ADD CONSTRAINT tea_pkey PRIMARY KEY (id);


--
-- Name: topping topping_name_key; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.topping
    ADD CONSTRAINT topping_name_key UNIQUE (name);


--
-- Name: topping topping_pkey; Type: CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.topping
    ADD CONSTRAINT topping_pkey PRIMARY KEY (id);


--
-- Name: bubble_tea bubble_tea_milk_name_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea
    ADD CONSTRAINT bubble_tea_milk_name_fkey FOREIGN KEY (milk_name) REFERENCES oshimoshi.milk(name);


--
-- Name: bubble_tea_pearl bubble_tea_pearl_bubble_tea_id_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea_pearl
    ADD CONSTRAINT bubble_tea_pearl_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);


--
-- Name: bubble_tea_pearl bubble_tea_pearl_pearl_id_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea_pearl
    ADD CONSTRAINT bubble_tea_pearl_pearl_id_fkey FOREIGN KEY (pearl_id) REFERENCES oshimoshi.pearl(id);


--
-- Name: bubble_tea_tea bubble_tea_tea_bubble_tea_id_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea_tea
    ADD CONSTRAINT bubble_tea_tea_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);


--
-- Name: bubble_tea_tea bubble_tea_tea_tea_id_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea_tea
    ADD CONSTRAINT bubble_tea_tea_tea_id_fkey FOREIGN KEY (tea_id) REFERENCES oshimoshi.tea(id);


--
-- Name: bubble_tea_topping bubble_tea_topping_bubble_tea_id_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea_topping
    ADD CONSTRAINT bubble_tea_topping_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);


--
-- Name: bubble_tea_topping bubble_tea_topping_topping_id_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.bubble_tea_topping
    ADD CONSTRAINT bubble_tea_topping_topping_id_fkey FOREIGN KEY (topping_id) REFERENCES oshimoshi.topping(id);


--
-- Name: collection_bubble_tea collection_bubble_tea_bubble_tea_id_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.collection_bubble_tea
    ADD CONSTRAINT collection_bubble_tea_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);


--
-- Name: collection_bubble_tea collection_bubble_tea_collection_id_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.collection_bubble_tea
    ADD CONSTRAINT collection_bubble_tea_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES oshimoshi.collection(id);


--
-- Name: collection collection_bubble_tea_id_fkey; Type: FK CONSTRAINT; Schema: oshimoshi; Owner: red_bull_002
--

ALTER TABLE ONLY oshimoshi.collection
    ADD CONSTRAINT collection_bubble_tea_id_fkey FOREIGN KEY (bubble_tea_id) REFERENCES oshimoshi.bubble_tea(id);


--
-- PostgreSQL database dump complete
--

