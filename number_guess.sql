--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 711, 51);
INSERT INTO public.games VALUES (2, 651, 51);
INSERT INTO public.games VALUES (3, 476, 52);
INSERT INTO public.games VALUES (4, 480, 52);
INSERT INTO public.games VALUES (5, 848, 51);
INSERT INTO public.games VALUES (6, 679, 51);
INSERT INTO public.games VALUES (7, 591, 51);
INSERT INTO public.games VALUES (8, 701, 53);
INSERT INTO public.games VALUES (9, 359, 53);
INSERT INTO public.games VALUES (10, 907, 54);
INSERT INTO public.games VALUES (11, 594, 54);
INSERT INTO public.games VALUES (12, 309, 53);
INSERT INTO public.games VALUES (13, 672, 53);
INSERT INTO public.games VALUES (14, 873, 53);
INSERT INTO public.games VALUES (15, 1, 55);
INSERT INTO public.games VALUES (16, 481, 55);
INSERT INTO public.games VALUES (17, 765, 56);
INSERT INTO public.games VALUES (18, 672, 56);
INSERT INTO public.games VALUES (19, 319, 55);
INSERT INTO public.games VALUES (20, 342, 55);
INSERT INTO public.games VALUES (21, 25, 55);
INSERT INTO public.games VALUES (22, 15, 57);
INSERT INTO public.games VALUES (23, 412, 58);
INSERT INTO public.games VALUES (24, 932, 58);
INSERT INTO public.games VALUES (25, 904, 59);
INSERT INTO public.games VALUES (26, 511, 59);
INSERT INTO public.games VALUES (27, 996, 58);
INSERT INTO public.games VALUES (28, 592, 58);
INSERT INTO public.games VALUES (29, 194, 58);
INSERT INTO public.games VALUES (30, 59, 60);
INSERT INTO public.games VALUES (31, 756, 60);
INSERT INTO public.games VALUES (32, 828, 61);
INSERT INTO public.games VALUES (33, 231, 61);
INSERT INTO public.games VALUES (34, 201, 60);
INSERT INTO public.games VALUES (35, 64, 60);
INSERT INTO public.games VALUES (36, 734, 60);
INSERT INTO public.games VALUES (37, 12, 62);
INSERT INTO public.games VALUES (38, 960, 63);
INSERT INTO public.games VALUES (39, 882, 63);
INSERT INTO public.games VALUES (40, 883, 64);
INSERT INTO public.games VALUES (41, 916, 64);
INSERT INTO public.games VALUES (42, 705, 63);
INSERT INTO public.games VALUES (43, 12, 63);
INSERT INTO public.games VALUES (44, 746, 63);
INSERT INTO public.games VALUES (45, 10, 62);
INSERT INTO public.games VALUES (46, 702, 65);
INSERT INTO public.games VALUES (47, 120, 65);
INSERT INTO public.games VALUES (48, 866, 66);
INSERT INTO public.games VALUES (49, 838, 66);
INSERT INTO public.games VALUES (50, 206, 65);
INSERT INTO public.games VALUES (51, 778, 65);
INSERT INTO public.games VALUES (52, 624, 65);
INSERT INTO public.games VALUES (53, 816, 67);
INSERT INTO public.games VALUES (54, 899, 67);
INSERT INTO public.games VALUES (55, 206, 68);
INSERT INTO public.games VALUES (56, 565, 68);
INSERT INTO public.games VALUES (57, 654, 67);
INSERT INTO public.games VALUES (58, 22, 67);
INSERT INTO public.games VALUES (59, 950, 67);
INSERT INTO public.games VALUES (60, 1, 69);
INSERT INTO public.games VALUES (61, 742, 69);
INSERT INTO public.games VALUES (62, 986, 70);
INSERT INTO public.games VALUES (63, 297, 70);
INSERT INTO public.games VALUES (64, 280, 69);
INSERT INTO public.games VALUES (65, 455, 69);
INSERT INTO public.games VALUES (66, 282, 69);
INSERT INTO public.games VALUES (67, 362, 71);
INSERT INTO public.games VALUES (68, 617, 71);
INSERT INTO public.games VALUES (69, 452, 72);
INSERT INTO public.games VALUES (70, 468, 72);
INSERT INTO public.games VALUES (71, 346, 71);
INSERT INTO public.games VALUES (72, 672, 71);
INSERT INTO public.games VALUES (73, 356, 71);
INSERT INTO public.games VALUES (74, 1, 73);
INSERT INTO public.games VALUES (75, 426, 73);
INSERT INTO public.games VALUES (76, 26, 74);
INSERT INTO public.games VALUES (77, 816, 74);
INSERT INTO public.games VALUES (78, 308, 73);
INSERT INTO public.games VALUES (79, 293, 73);
INSERT INTO public.games VALUES (80, 431, 73);
INSERT INTO public.games VALUES (81, 1, 75);
INSERT INTO public.games VALUES (82, 242, 75);
INSERT INTO public.games VALUES (83, 375, 76);
INSERT INTO public.games VALUES (84, 133, 76);
INSERT INTO public.games VALUES (85, 559, 75);
INSERT INTO public.games VALUES (86, 26, 75);
INSERT INTO public.games VALUES (87, 687, 75);
INSERT INTO public.games VALUES (88, 415, 77);
INSERT INTO public.games VALUES (89, 767, 77);
INSERT INTO public.games VALUES (90, 65, 78);
INSERT INTO public.games VALUES (91, 728, 78);
INSERT INTO public.games VALUES (92, 955, 77);
INSERT INTO public.games VALUES (93, 633, 77);
INSERT INTO public.games VALUES (94, 363, 77);
INSERT INTO public.games VALUES (95, 335, 79);
INSERT INTO public.games VALUES (96, 503, 79);
INSERT INTO public.games VALUES (97, 308, 80);
INSERT INTO public.games VALUES (98, 660, 80);
INSERT INTO public.games VALUES (99, 354, 79);
INSERT INTO public.games VALUES (100, 924, 79);
INSERT INTO public.games VALUES (101, 668, 79);
INSERT INTO public.games VALUES (102, 15, 62);
INSERT INTO public.games VALUES (103, 673, 81);
INSERT INTO public.games VALUES (104, 450, 81);
INSERT INTO public.games VALUES (105, 1, 82);
INSERT INTO public.games VALUES (106, 954, 82);
INSERT INTO public.games VALUES (107, 225, 81);
INSERT INTO public.games VALUES (108, 369, 81);
INSERT INTO public.games VALUES (109, 513, 81);
INSERT INTO public.games VALUES (110, 351, 83);
INSERT INTO public.games VALUES (111, 51, 83);
INSERT INTO public.games VALUES (112, 799, 84);
INSERT INTO public.games VALUES (113, 820, 84);
INSERT INTO public.games VALUES (114, 992, 83);
INSERT INTO public.games VALUES (115, 490, 83);
INSERT INTO public.games VALUES (116, 7, 83);
INSERT INTO public.games VALUES (117, 964, 85);
INSERT INTO public.games VALUES (118, 792, 85);
INSERT INTO public.games VALUES (119, 912, 86);
INSERT INTO public.games VALUES (120, 368, 86);
INSERT INTO public.games VALUES (121, 609, 85);
INSERT INTO public.games VALUES (122, 611, 85);
INSERT INTO public.games VALUES (123, 684, 85);
INSERT INTO public.games VALUES (124, 1, 87);
INSERT INTO public.games VALUES (125, 370, 87);
INSERT INTO public.games VALUES (126, 787, 88);
INSERT INTO public.games VALUES (127, 969, 88);
INSERT INTO public.games VALUES (128, 699, 87);
INSERT INTO public.games VALUES (129, 567, 87);
INSERT INTO public.games VALUES (130, 481, 87);
INSERT INTO public.games VALUES (131, 937, 89);
INSERT INTO public.games VALUES (132, 70, 89);
INSERT INTO public.games VALUES (133, 245, 90);
INSERT INTO public.games VALUES (134, 194, 90);
INSERT INTO public.games VALUES (135, 869, 90);
INSERT INTO public.games VALUES (136, 183, 91);
INSERT INTO public.games VALUES (137, 58, 91);
INSERT INTO public.games VALUES (138, 673, 92);
INSERT INTO public.games VALUES (139, 355, 92);
INSERT INTO public.games VALUES (140, 283, 91);
INSERT INTO public.games VALUES (141, 660, 91);
INSERT INTO public.games VALUES (142, 106, 91);
INSERT INTO public.games VALUES (143, 1, 93);
INSERT INTO public.games VALUES (144, 637, 93);
INSERT INTO public.games VALUES (145, 439, 94);
INSERT INTO public.games VALUES (146, 42, 94);
INSERT INTO public.games VALUES (147, 736, 93);
INSERT INTO public.games VALUES (148, 8, 93);
INSERT INTO public.games VALUES (149, 673, 93);
INSERT INTO public.games VALUES (150, 146, 95);
INSERT INTO public.games VALUES (151, 467, 95);
INSERT INTO public.games VALUES (152, 1, 96);
INSERT INTO public.games VALUES (153, 504, 96);
INSERT INTO public.games VALUES (154, 74, 95);
INSERT INTO public.games VALUES (155, 815, 95);
INSERT INTO public.games VALUES (156, 152, 95);
INSERT INTO public.games VALUES (157, 787, 97);
INSERT INTO public.games VALUES (158, 531, 97);
INSERT INTO public.games VALUES (159, 161, 98);
INSERT INTO public.games VALUES (160, 727, 98);
INSERT INTO public.games VALUES (161, 702, 97);
INSERT INTO public.games VALUES (162, 673, 97);
INSERT INTO public.games VALUES (163, 291, 97);
INSERT INTO public.games VALUES (164, 1, 99);
INSERT INTO public.games VALUES (165, 226, 99);
INSERT INTO public.games VALUES (166, 254, 100);
INSERT INTO public.games VALUES (167, 770, 100);
INSERT INTO public.games VALUES (168, 231, 99);
INSERT INTO public.games VALUES (169, 772, 99);
INSERT INTO public.games VALUES (170, 389, 99);
INSERT INTO public.games VALUES (171, 1, 101);
INSERT INTO public.games VALUES (172, 930, 101);
INSERT INTO public.games VALUES (173, 836, 102);
INSERT INTO public.games VALUES (174, 548, 102);
INSERT INTO public.games VALUES (175, 339, 101);
INSERT INTO public.games VALUES (176, 232, 101);
INSERT INTO public.games VALUES (177, 343, 101);
INSERT INTO public.games VALUES (178, 343, 103);
INSERT INTO public.games VALUES (179, 225, 103);
INSERT INTO public.games VALUES (180, 794, 104);
INSERT INTO public.games VALUES (181, 294, 104);
INSERT INTO public.games VALUES (182, 687, 103);
INSERT INTO public.games VALUES (183, 876, 103);
INSERT INTO public.games VALUES (184, 977, 103);
INSERT INTO public.games VALUES (185, 542, 105);
INSERT INTO public.games VALUES (186, 591, 105);
INSERT INTO public.games VALUES (187, 996, 106);
INSERT INTO public.games VALUES (188, 762, 106);
INSERT INTO public.games VALUES (189, 93, 105);
INSERT INTO public.games VALUES (190, 201, 105);
INSERT INTO public.games VALUES (191, 804, 105);
INSERT INTO public.games VALUES (192, 318, 107);
INSERT INTO public.games VALUES (193, 82, 107);
INSERT INTO public.games VALUES (194, 137, 108);
INSERT INTO public.games VALUES (195, 233, 108);
INSERT INTO public.games VALUES (196, 15, 107);
INSERT INTO public.games VALUES (197, 511, 107);
INSERT INTO public.games VALUES (198, 409, 107);
INSERT INTO public.games VALUES (225, 840, 140);
INSERT INTO public.games VALUES (226, 351, 140);
INSERT INTO public.games VALUES (227, 327, 141);
INSERT INTO public.games VALUES (228, 188, 141);
INSERT INTO public.games VALUES (229, 976, 140);
INSERT INTO public.games VALUES (230, 133, 140);
INSERT INTO public.games VALUES (231, 517, 140);
INSERT INTO public.games VALUES (232, 1, 142);
INSERT INTO public.games VALUES (233, 748, 142);
INSERT INTO public.games VALUES (234, 333, 143);
INSERT INTO public.games VALUES (235, 659, 143);
INSERT INTO public.games VALUES (236, 953, 142);
INSERT INTO public.games VALUES (237, 87, 142);
INSERT INTO public.games VALUES (238, 963, 142);
INSERT INTO public.games VALUES (239, 35, 144);
INSERT INTO public.games VALUES (240, 644, 144);
INSERT INTO public.games VALUES (241, 1, 145);
INSERT INTO public.games VALUES (242, 775, 145);
INSERT INTO public.games VALUES (243, 879, 144);
INSERT INTO public.games VALUES (244, 113, 144);
INSERT INTO public.games VALUES (245, 143, 144);
INSERT INTO public.games VALUES (246, 1, 146);
INSERT INTO public.games VALUES (247, 819, 146);
INSERT INTO public.games VALUES (248, 912, 147);
INSERT INTO public.games VALUES (249, 570, 147);
INSERT INTO public.games VALUES (250, 966, 146);
INSERT INTO public.games VALUES (251, 208, 146);
INSERT INTO public.games VALUES (252, 741, 146);
INSERT INTO public.games VALUES (253, 550, 148);
INSERT INTO public.games VALUES (254, 639, 148);
INSERT INTO public.games VALUES (255, 993, 149);
INSERT INTO public.games VALUES (256, 41, 149);
INSERT INTO public.games VALUES (257, 371, 148);
INSERT INTO public.games VALUES (258, 896, 148);
INSERT INTO public.games VALUES (259, 366, 148);
INSERT INTO public.games VALUES (260, 459, 150);
INSERT INTO public.games VALUES (261, 205, 150);
INSERT INTO public.games VALUES (262, 429, 151);
INSERT INTO public.games VALUES (263, 851, 151);
INSERT INTO public.games VALUES (264, 329, 150);
INSERT INTO public.games VALUES (265, 605, 150);
INSERT INTO public.games VALUES (266, 438, 150);
INSERT INTO public.games VALUES (267, 801, 152);
INSERT INTO public.games VALUES (268, 281, 152);
INSERT INTO public.games VALUES (269, 192, 153);
INSERT INTO public.games VALUES (270, 457, 153);
INSERT INTO public.games VALUES (271, 363, 152);
INSERT INTO public.games VALUES (272, 812, 152);
INSERT INTO public.games VALUES (273, 184, 152);
INSERT INTO public.games VALUES (274, 261, 154);
INSERT INTO public.games VALUES (275, 618, 154);
INSERT INTO public.games VALUES (276, 327, 155);
INSERT INTO public.games VALUES (277, 862, 155);
INSERT INTO public.games VALUES (278, 662, 154);
INSERT INTO public.games VALUES (279, 597, 154);
INSERT INTO public.games VALUES (280, 598, 154);
INSERT INTO public.games VALUES (281, 275, 156);
INSERT INTO public.games VALUES (282, 252, 156);
INSERT INTO public.games VALUES (283, 714, 157);
INSERT INTO public.games VALUES (284, 768, 157);
INSERT INTO public.games VALUES (285, 290, 156);
INSERT INTO public.games VALUES (286, 350, 156);
INSERT INTO public.games VALUES (287, 206, 156);
INSERT INTO public.games VALUES (288, 1, 158);
INSERT INTO public.games VALUES (289, 343, 158);
INSERT INTO public.games VALUES (290, 577, 159);
INSERT INTO public.games VALUES (291, 424, 159);
INSERT INTO public.games VALUES (292, 935, 158);
INSERT INTO public.games VALUES (293, 184, 158);
INSERT INTO public.games VALUES (294, 329, 158);
INSERT INTO public.games VALUES (295, 1, 160);
INSERT INTO public.games VALUES (296, 766, 160);
INSERT INTO public.games VALUES (297, 1, 161);
INSERT INTO public.games VALUES (298, 107, 161);
INSERT INTO public.games VALUES (299, 311, 160);
INSERT INTO public.games VALUES (300, 835, 160);
INSERT INTO public.games VALUES (301, 600, 160);
INSERT INTO public.games VALUES (302, 220, 162);
INSERT INTO public.games VALUES (303, 599, 162);
INSERT INTO public.games VALUES (304, 1, 163);
INSERT INTO public.games VALUES (305, 866, 163);
INSERT INTO public.games VALUES (306, 298, 162);
INSERT INTO public.games VALUES (307, 972, 162);
INSERT INTO public.games VALUES (308, 45, 162);
INSERT INTO public.games VALUES (309, 963, 164);
INSERT INTO public.games VALUES (310, 559, 164);
INSERT INTO public.games VALUES (311, 191, 165);
INSERT INTO public.games VALUES (312, 696, 165);
INSERT INTO public.games VALUES (313, 69, 164);
INSERT INTO public.games VALUES (314, 145, 164);
INSERT INTO public.games VALUES (315, 274, 164);
INSERT INTO public.games VALUES (316, 851, 166);
INSERT INTO public.games VALUES (317, 546, 166);
INSERT INTO public.games VALUES (318, 171, 167);
INSERT INTO public.games VALUES (319, 978, 167);
INSERT INTO public.games VALUES (320, 792, 166);
INSERT INTO public.games VALUES (321, 618, 166);
INSERT INTO public.games VALUES (322, 676, 166);
INSERT INTO public.games VALUES (323, 1, 168);
INSERT INTO public.games VALUES (324, 842, 168);
INSERT INTO public.games VALUES (325, 118, 169);
INSERT INTO public.games VALUES (326, 71, 169);
INSERT INTO public.games VALUES (327, 847, 168);
INSERT INTO public.games VALUES (328, 609, 168);
INSERT INTO public.games VALUES (329, 599, 168);
INSERT INTO public.games VALUES (330, 1, 170);
INSERT INTO public.games VALUES (331, 287, 170);
INSERT INTO public.games VALUES (332, 322, 171);
INSERT INTO public.games VALUES (333, 313, 171);
INSERT INTO public.games VALUES (334, 60, 170);
INSERT INTO public.games VALUES (335, 883, 170);
INSERT INTO public.games VALUES (336, 343, 170);
INSERT INTO public.games VALUES (337, 419, 172);
INSERT INTO public.games VALUES (338, 103, 172);
INSERT INTO public.games VALUES (339, 760, 173);
INSERT INTO public.games VALUES (340, 95, 173);
INSERT INTO public.games VALUES (341, 522, 172);
INSERT INTO public.games VALUES (342, 127, 172);
INSERT INTO public.games VALUES (343, 423, 172);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, NULL);
INSERT INTO public.users VALUES (2, NULL);
INSERT INTO public.users VALUES (3, NULL);
INSERT INTO public.users VALUES (4, NULL);
INSERT INTO public.users VALUES (5, NULL);
INSERT INTO public.users VALUES (6, NULL);
INSERT INTO public.users VALUES (7, NULL);
INSERT INTO public.users VALUES (8, NULL);
INSERT INTO public.users VALUES (9, NULL);
INSERT INTO public.users VALUES (10, NULL);
INSERT INTO public.users VALUES (11, NULL);
INSERT INTO public.users VALUES (43, NULL);
INSERT INTO public.users VALUES (44, NULL);
INSERT INTO public.users VALUES (45, NULL);
INSERT INTO public.users VALUES (46, NULL);
INSERT INTO public.users VALUES (47, NULL);
INSERT INTO public.users VALUES (48, NULL);
INSERT INTO public.users VALUES (49, NULL);
INSERT INTO public.users VALUES (50, NULL);
INSERT INTO public.users VALUES (51, NULL);
INSERT INTO public.users VALUES (52, NULL);
INSERT INTO public.users VALUES (53, NULL);
INSERT INTO public.users VALUES (54, NULL);
INSERT INTO public.users VALUES (55, 'user_1677793455786');
INSERT INTO public.users VALUES (56, 'user_1677793455785');
INSERT INTO public.users VALUES (57, 'Hola');
INSERT INTO public.users VALUES (58, 'user_1677793555406');
INSERT INTO public.users VALUES (59, 'user_1677793555405');
INSERT INTO public.users VALUES (60, 'user_1677793718548');
INSERT INTO public.users VALUES (61, 'user_1677793718547');
INSERT INTO public.users VALUES (62, 'D');
INSERT INTO public.users VALUES (63, 'user_1677793780401');
INSERT INTO public.users VALUES (64, 'user_1677793780400');
INSERT INTO public.users VALUES (65, 'user_1677793861133');
INSERT INTO public.users VALUES (66, 'user_1677793861132');
INSERT INTO public.users VALUES (67, 'user_1677793903059');
INSERT INTO public.users VALUES (68, 'user_1677793903058');
INSERT INTO public.users VALUES (69, 'user_1677793930282');
INSERT INTO public.users VALUES (70, 'user_1677793930281');
INSERT INTO public.users VALUES (71, 'user_1677793944284');
INSERT INTO public.users VALUES (72, 'user_1677793944283');
INSERT INTO public.users VALUES (73, 'user_1677794077754');
INSERT INTO public.users VALUES (74, 'user_1677794077753');
INSERT INTO public.users VALUES (75, 'user_1677794177784');
INSERT INTO public.users VALUES (76, 'user_1677794177783');
INSERT INTO public.users VALUES (77, 'user_1677794202146');
INSERT INTO public.users VALUES (78, 'user_1677794202145');
INSERT INTO public.users VALUES (79, 'user_1677794249385');
INSERT INTO public.users VALUES (80, 'user_1677794249384');
INSERT INTO public.users VALUES (81, 'user_1677794320487');
INSERT INTO public.users VALUES (82, 'user_1677794320486');
INSERT INTO public.users VALUES (83, 'user_1677794342830');
INSERT INTO public.users VALUES (84, 'user_1677794342829');
INSERT INTO public.users VALUES (85, 'user_1677794353299');
INSERT INTO public.users VALUES (86, 'user_1677794353298');
INSERT INTO public.users VALUES (87, 'user_1677794372894');
INSERT INTO public.users VALUES (88, 'user_1677794372893');
INSERT INTO public.users VALUES (89, 'user_1677794754723');
INSERT INTO public.users VALUES (90, 'user_1677794754724');
INSERT INTO public.users VALUES (91, 'user_1677794772048');
INSERT INTO public.users VALUES (92, 'user_1677794772047');
INSERT INTO public.users VALUES (93, 'user_1677794789191');
INSERT INTO public.users VALUES (94, 'user_1677794789190');
INSERT INTO public.users VALUES (95, 'user_1677794803494');
INSERT INTO public.users VALUES (96, 'user_1677794803493');
INSERT INTO public.users VALUES (97, 'user_1677794820684');
INSERT INTO public.users VALUES (98, 'user_1677794820683');
INSERT INTO public.users VALUES (99, 'user_1677794836330');
INSERT INTO public.users VALUES (100, 'user_1677794836329');
INSERT INTO public.users VALUES (101, 'user_1677794876649');
INSERT INTO public.users VALUES (102, 'user_1677794876648');
INSERT INTO public.users VALUES (103, 'user_1677794912522');
INSERT INTO public.users VALUES (104, 'user_1677794912521');
INSERT INTO public.users VALUES (105, 'user_1677794935389');
INSERT INTO public.users VALUES (106, 'user_1677794935388');
INSERT INTO public.users VALUES (107, 'user_1677795144755');
INSERT INTO public.users VALUES (108, 'user_1677795144754');
INSERT INTO public.users VALUES (140, 'user_1677830151332');
INSERT INTO public.users VALUES (141, 'user_1677830151331');
INSERT INTO public.users VALUES (142, 'user_1677830168268');
INSERT INTO public.users VALUES (143, 'user_1677830168267');
INSERT INTO public.users VALUES (144, 'user_1677830178978');
INSERT INTO public.users VALUES (145, 'user_1677830178977');
INSERT INTO public.users VALUES (146, 'user_1677830193981');
INSERT INTO public.users VALUES (147, 'user_1677830193980');
INSERT INTO public.users VALUES (148, 'user_1677830201693');
INSERT INTO public.users VALUES (149, 'user_1677830201692');
INSERT INTO public.users VALUES (150, 'user_1677830214670');
INSERT INTO public.users VALUES (151, 'user_1677830214669');
INSERT INTO public.users VALUES (152, 'user_1677830226749');
INSERT INTO public.users VALUES (153, 'user_1677830226748');
INSERT INTO public.users VALUES (154, 'user_1677830236863');
INSERT INTO public.users VALUES (155, 'user_1677830236862');
INSERT INTO public.users VALUES (156, 'user_1677830258267');
INSERT INTO public.users VALUES (157, 'user_1677830258266');
INSERT INTO public.users VALUES (158, 'user_1677830285880');
INSERT INTO public.users VALUES (159, 'user_1677830285879');
INSERT INTO public.users VALUES (160, 'user_1677830301151');
INSERT INTO public.users VALUES (161, 'user_1677830301150');
INSERT INTO public.users VALUES (162, 'user_1677830330056');
INSERT INTO public.users VALUES (163, 'user_1677830330055');
INSERT INTO public.users VALUES (164, 'user_1677830340992');
INSERT INTO public.users VALUES (165, 'user_1677830340991');
INSERT INTO public.users VALUES (166, 'user_1677830353332');
INSERT INTO public.users VALUES (167, 'user_1677830353330');
INSERT INTO public.users VALUES (168, 'user_1677830392196');
INSERT INTO public.users VALUES (169, 'user_1677830392195');
INSERT INTO public.users VALUES (170, 'user_1677830403033');
INSERT INTO public.users VALUES (171, 'user_1677830403032');
INSERT INTO public.users VALUES (172, 'user_1677830410567');
INSERT INTO public.users VALUES (173, 'user_1677830410566');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 343, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 173, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

