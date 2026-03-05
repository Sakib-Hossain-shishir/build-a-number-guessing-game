--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (10, 4, 4);
INSERT INTO public.games VALUES (11, 5, 305);
INSERT INTO public.games VALUES (12, 5, 544);
INSERT INTO public.games VALUES (13, 6, 175);
INSERT INTO public.games VALUES (14, 6, 22);
INSERT INTO public.games VALUES (15, 5, 145);
INSERT INTO public.games VALUES (16, 5, 661);
INSERT INTO public.games VALUES (17, 5, 694);
INSERT INTO public.games VALUES (18, 7, 58);
INSERT INTO public.games VALUES (19, 7, 408);
INSERT INTO public.games VALUES (20, 8, 915);
INSERT INTO public.games VALUES (21, 8, 27);
INSERT INTO public.games VALUES (22, 7, 239);
INSERT INTO public.games VALUES (23, 7, 223);
INSERT INTO public.games VALUES (24, 7, 225);
INSERT INTO public.games VALUES (25, 4, 1);
INSERT INTO public.games VALUES (26, 4, 5);
INSERT INTO public.games VALUES (27, 9, 262);
INSERT INTO public.games VALUES (28, 9, 398);
INSERT INTO public.games VALUES (29, 10, 793);
INSERT INTO public.games VALUES (30, 10, 918);
INSERT INTO public.games VALUES (31, 9, 44);
INSERT INTO public.games VALUES (32, 9, 927);
INSERT INTO public.games VALUES (33, 9, 805);
INSERT INTO public.games VALUES (34, 11, 228);
INSERT INTO public.games VALUES (35, 11, 345);
INSERT INTO public.games VALUES (36, 12, 235);
INSERT INTO public.games VALUES (37, 12, 83);
INSERT INTO public.games VALUES (38, 11, 513);
INSERT INTO public.games VALUES (39, 11, 87);
INSERT INTO public.games VALUES (40, 11, 403);
INSERT INTO public.games VALUES (41, 13, 199);
INSERT INTO public.games VALUES (42, 13, 564);
INSERT INTO public.games VALUES (43, 14, 676);
INSERT INTO public.games VALUES (44, 14, 937);
INSERT INTO public.games VALUES (45, 13, 55);
INSERT INTO public.games VALUES (46, 13, 869);
INSERT INTO public.games VALUES (47, 13, 266);
INSERT INTO public.games VALUES (48, 15, 977);
INSERT INTO public.games VALUES (49, 15, 184);
INSERT INTO public.games VALUES (50, 16, 550);
INSERT INTO public.games VALUES (51, 16, 112);
INSERT INTO public.games VALUES (52, 15, 400);
INSERT INTO public.games VALUES (53, 15, 543);
INSERT INTO public.games VALUES (54, 15, 75);
INSERT INTO public.games VALUES (55, 17, 233);
INSERT INTO public.games VALUES (56, 17, 277);
INSERT INTO public.games VALUES (57, 18, 324);
INSERT INTO public.games VALUES (58, 18, 312);
INSERT INTO public.games VALUES (59, 17, 481);
INSERT INTO public.games VALUES (60, 17, 694);
INSERT INTO public.games VALUES (61, 17, 191);
INSERT INTO public.games VALUES (62, 19, 970);
INSERT INTO public.games VALUES (63, 19, 314);
INSERT INTO public.games VALUES (64, 20, 800);
INSERT INTO public.games VALUES (65, 20, 790);
INSERT INTO public.games VALUES (66, 19, 102);
INSERT INTO public.games VALUES (67, 19, 283);
INSERT INTO public.games VALUES (68, 19, 846);
INSERT INTO public.games VALUES (69, 4, 1);
INSERT INTO public.games VALUES (70, 4, 2);
INSERT INTO public.games VALUES (71, 4, 1);
INSERT INTO public.games VALUES (72, 21, 572);
INSERT INTO public.games VALUES (73, 21, 979);
INSERT INTO public.games VALUES (74, 22, 738);
INSERT INTO public.games VALUES (75, 22, 900);
INSERT INTO public.games VALUES (76, 21, 156);
INSERT INTO public.games VALUES (77, 21, 992);
INSERT INTO public.games VALUES (78, 21, 830);
INSERT INTO public.games VALUES (79, 23, 768);
INSERT INTO public.games VALUES (80, 23, 467);
INSERT INTO public.games VALUES (81, 24, 348);
INSERT INTO public.games VALUES (82, 24, 190);
INSERT INTO public.games VALUES (83, 23, 507);
INSERT INTO public.games VALUES (84, 23, 965);
INSERT INTO public.games VALUES (85, 23, 603);
INSERT INTO public.games VALUES (86, 25, 561);
INSERT INTO public.games VALUES (87, 25, 775);
INSERT INTO public.games VALUES (88, 26, 378);
INSERT INTO public.games VALUES (89, 26, 77);
INSERT INTO public.games VALUES (90, 25, 756);
INSERT INTO public.games VALUES (91, 25, 37);
INSERT INTO public.games VALUES (92, 25, 562);
INSERT INTO public.games VALUES (93, 27, 712);
INSERT INTO public.games VALUES (94, 27, 940);
INSERT INTO public.games VALUES (95, 28, 458);
INSERT INTO public.games VALUES (96, 28, 319);
INSERT INTO public.games VALUES (97, 27, 684);
INSERT INTO public.games VALUES (98, 27, 958);
INSERT INTO public.games VALUES (99, 27, 914);
INSERT INTO public.games VALUES (100, 29, 802);
INSERT INTO public.games VALUES (101, 29, 99);
INSERT INTO public.games VALUES (102, 30, 713);
INSERT INTO public.games VALUES (103, 30, 890);
INSERT INTO public.games VALUES (104, 29, 862);
INSERT INTO public.games VALUES (105, 29, 72);
INSERT INTO public.games VALUES (106, 29, 529);
INSERT INTO public.games VALUES (107, 4, 8);
INSERT INTO public.games VALUES (108, 31, 638);
INSERT INTO public.games VALUES (109, 31, 359);
INSERT INTO public.games VALUES (110, 32, 305);
INSERT INTO public.games VALUES (111, 32, 651);
INSERT INTO public.games VALUES (112, 31, 923);
INSERT INTO public.games VALUES (113, 31, 358);
INSERT INTO public.games VALUES (114, 31, 653);
INSERT INTO public.games VALUES (115, 33, 14);
INSERT INTO public.games VALUES (116, 33, 684);
INSERT INTO public.games VALUES (117, 34, 507);
INSERT INTO public.games VALUES (118, 34, 457);
INSERT INTO public.games VALUES (119, 33, 211);
INSERT INTO public.games VALUES (120, 33, 726);
INSERT INTO public.games VALUES (121, 33, 622);
INSERT INTO public.games VALUES (122, 35, 835);
INSERT INTO public.games VALUES (123, 35, 192);
INSERT INTO public.games VALUES (124, 36, 153);
INSERT INTO public.games VALUES (125, 36, 802);
INSERT INTO public.games VALUES (126, 35, 54);
INSERT INTO public.games VALUES (127, 35, 841);
INSERT INTO public.games VALUES (128, 35, 18);
INSERT INTO public.games VALUES (129, 38, 3354);
INSERT INTO public.games VALUES (130, 38, 2146);
INSERT INTO public.games VALUES (131, 39, 2070);
INSERT INTO public.games VALUES (132, 39, 2095);
INSERT INTO public.games VALUES (133, 38, 2114);
INSERT INTO public.games VALUES (134, 38, 90);
INSERT INTO public.games VALUES (135, 38, 2180);
INSERT INTO public.games VALUES (136, 40, 145);
INSERT INTO public.games VALUES (137, 40, 628);
INSERT INTO public.games VALUES (138, 41, 157);
INSERT INTO public.games VALUES (139, 41, 70);
INSERT INTO public.games VALUES (140, 40, 150);
INSERT INTO public.games VALUES (141, 40, 1);
INSERT INTO public.games VALUES (142, 40, 604);
INSERT INTO public.games VALUES (143, 42, 291);
INSERT INTO public.games VALUES (144, 42, 20);
INSERT INTO public.games VALUES (145, 43, 192);
INSERT INTO public.games VALUES (146, 43, 129);
INSERT INTO public.games VALUES (147, 42, 831);
INSERT INTO public.games VALUES (148, 42, 821);
INSERT INTO public.games VALUES (149, 44, 855);
INSERT INTO public.games VALUES (150, 44, 550);
INSERT INTO public.games VALUES (151, 45, 499);
INSERT INTO public.games VALUES (152, 45, 352);
INSERT INTO public.games VALUES (153, 44, 517);
INSERT INTO public.games VALUES (154, 44, 36);
INSERT INTO public.games VALUES (155, 44, 389);
INSERT INTO public.games VALUES (156, 46, 543);
INSERT INTO public.games VALUES (157, 46, 171);
INSERT INTO public.games VALUES (158, 47, 399);
INSERT INTO public.games VALUES (159, 47, 116);
INSERT INTO public.games VALUES (160, 46, 927);
INSERT INTO public.games VALUES (161, 46, 954);
INSERT INTO public.games VALUES (162, 46, 405);
INSERT INTO public.games VALUES (163, 48, 869);
INSERT INTO public.games VALUES (164, 48, 414);
INSERT INTO public.games VALUES (165, 49, 277);
INSERT INTO public.games VALUES (166, 49, 129);
INSERT INTO public.games VALUES (167, 48, 328);
INSERT INTO public.games VALUES (168, 48, 255);
INSERT INTO public.games VALUES (169, 48, 193);
INSERT INTO public.games VALUES (170, 50, 594);
INSERT INTO public.games VALUES (171, 50, 136);
INSERT INTO public.games VALUES (172, 51, 854);
INSERT INTO public.games VALUES (173, 51, 609);
INSERT INTO public.games VALUES (174, 50, 740);
INSERT INTO public.games VALUES (175, 50, 72);
INSERT INTO public.games VALUES (176, 50, 604);
INSERT INTO public.games VALUES (177, 52, 693);
INSERT INTO public.games VALUES (178, 52, 675);
INSERT INTO public.games VALUES (179, 53, 272);
INSERT INTO public.games VALUES (180, 53, 548);
INSERT INTO public.games VALUES (181, 52, 98);
INSERT INTO public.games VALUES (182, 52, 441);
INSERT INTO public.games VALUES (183, 52, 108);
INSERT INTO public.games VALUES (184, 54, 286);
INSERT INTO public.games VALUES (185, 54, 313);
INSERT INTO public.games VALUES (186, 55, 54);
INSERT INTO public.games VALUES (187, 55, 642);
INSERT INTO public.games VALUES (188, 54, 69);
INSERT INTO public.games VALUES (189, 54, 936);
INSERT INTO public.games VALUES (190, 54, 672);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (4, 'Sakib');
INSERT INTO public.users VALUES (5, 'user_1772693271596');
INSERT INTO public.users VALUES (6, 'user_1772693271595');
INSERT INTO public.users VALUES (7, 'user_1772693400156');
INSERT INTO public.users VALUES (8, 'user_1772693400155');
INSERT INTO public.users VALUES (9, 'user_1772693571592');
INSERT INTO public.users VALUES (10, 'user_1772693571591');
INSERT INTO public.users VALUES (11, 'user_1772693635457');
INSERT INTO public.users VALUES (12, 'user_1772693635456');
INSERT INTO public.users VALUES (13, 'user_1772693751653');
INSERT INTO public.users VALUES (14, 'user_1772693751652');
INSERT INTO public.users VALUES (15, 'user_1772693803805');
INSERT INTO public.users VALUES (16, 'user_1772693803804');
INSERT INTO public.users VALUES (17, 'user_1772693846441');
INSERT INTO public.users VALUES (18, 'user_1772693846440');
INSERT INTO public.users VALUES (19, 'user_1772693865812');
INSERT INTO public.users VALUES (20, 'user_1772693865811');
INSERT INTO public.users VALUES (21, 'user_1772694240424');
INSERT INTO public.users VALUES (22, 'user_1772694240423');
INSERT INTO public.users VALUES (23, 'user_1772694413709');
INSERT INTO public.users VALUES (24, 'user_1772694413708');
INSERT INTO public.users VALUES (25, 'user_1772694451232');
INSERT INTO public.users VALUES (26, 'user_1772694451231');
INSERT INTO public.users VALUES (27, 'user_1772694478682');
INSERT INTO public.users VALUES (28, 'user_1772694478681');
INSERT INTO public.users VALUES (29, 'user_1772694503866');
INSERT INTO public.users VALUES (30, 'user_1772694503865');
INSERT INTO public.users VALUES (31, 'user_1772694599514');
INSERT INTO public.users VALUES (32, 'user_1772694599513');
INSERT INTO public.users VALUES (33, 'user_1772694632448');
INSERT INTO public.users VALUES (34, 'user_1772694632447');
INSERT INTO public.users VALUES (35, 'user_1772694722398');
INSERT INTO public.users VALUES (36, 'user_1772694722397');
INSERT INTO public.users VALUES (37, 'Shishir');
INSERT INTO public.users VALUES (38, 'user_1772695627374');
INSERT INTO public.users VALUES (39, 'user_1772695627373');
INSERT INTO public.users VALUES (40, 'user_1772695742309');
INSERT INTO public.users VALUES (41, 'user_1772695742308');
INSERT INTO public.users VALUES (42, 'user_1772695760065');
INSERT INTO public.users VALUES (43, 'user_1772695760064');
INSERT INTO public.users VALUES (44, 'user_1772695785411');
INSERT INTO public.users VALUES (45, 'user_1772695785410');
INSERT INTO public.users VALUES (46, 'user_1772695821072');
INSERT INTO public.users VALUES (47, 'user_1772695821071');
INSERT INTO public.users VALUES (48, 'user_1772695862516');
INSERT INTO public.users VALUES (49, 'user_1772695862515');
INSERT INTO public.users VALUES (50, 'user_1772695965635');
INSERT INTO public.users VALUES (51, 'user_1772695965634');
INSERT INTO public.users VALUES (52, 'user_1772696026788');
INSERT INTO public.users VALUES (53, 'user_1772696026787');
INSERT INTO public.users VALUES (54, 'user_1772696063429');
INSERT INTO public.users VALUES (55, 'user_1772696063428');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 190, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 55, true);


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

