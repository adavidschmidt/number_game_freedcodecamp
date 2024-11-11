--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guessing;
--
-- Name: number_guessing; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing OWNER TO freecodecamp;

\connect number_guessing

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
    secret_number integer NOT NULL,
    guess_count integer NOT NULL,
    user_id integer NOT NULL
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

INSERT INTO public.games VALUES (1, 846, 846, 1);
INSERT INTO public.games VALUES (2, 924, 924, 1);
INSERT INTO public.games VALUES (3, 605, 605, 2);
INSERT INTO public.games VALUES (4, 100, 100, 2);
INSERT INTO public.games VALUES (5, 320, 322, 1);
INSERT INTO public.games VALUES (6, 776, 776, 1);
INSERT INTO public.games VALUES (7, 730, 17, 3);
INSERT INTO public.games VALUES (8, 221, 221, 4);
INSERT INTO public.games VALUES (9, 592, 592, 4);
INSERT INTO public.games VALUES (10, 955, 955, 5);
INSERT INTO public.games VALUES (11, 828, 828, 5);
INSERT INTO public.games VALUES (12, 613, 615, 4);
INSERT INTO public.games VALUES (13, 881, 881, 4);
INSERT INTO public.games VALUES (14, 736, 736, 6);
INSERT INTO public.games VALUES (15, 395, 395, 6);
INSERT INTO public.games VALUES (16, 422, 422, 7);
INSERT INTO public.games VALUES (17, 127, 127, 7);
INSERT INTO public.games VALUES (18, 936, 938, 6);
INSERT INTO public.games VALUES (19, 901, 901, 6);
INSERT INTO public.games VALUES (20, 677, 10, 3);
INSERT INTO public.games VALUES (21, 571, 2, 3);
INSERT INTO public.games VALUES (22, 644, 645, 8);
INSERT INTO public.games VALUES (23, 455, 456, 8);
INSERT INTO public.games VALUES (24, 579, 580, 9);
INSERT INTO public.games VALUES (25, 45, 46, 9);
INSERT INTO public.games VALUES (26, 820, 823, 8);
INSERT INTO public.games VALUES (27, 422, 423, 8);
INSERT INTO public.games VALUES (28, 538, 539, 10);
INSERT INTO public.games VALUES (29, 429, 430, 10);
INSERT INTO public.games VALUES (30, 76, 77, 11);
INSERT INTO public.games VALUES (31, 362, 363, 11);
INSERT INTO public.games VALUES (32, 685, 688, 10);
INSERT INTO public.games VALUES (33, 792, 793, 10);
INSERT INTO public.games VALUES (34, 351, 352, 12);
INSERT INTO public.games VALUES (35, 810, 811, 12);
INSERT INTO public.games VALUES (36, 325, 326, 13);
INSERT INTO public.games VALUES (37, 913, 914, 13);
INSERT INTO public.games VALUES (38, 7, 10, 12);
INSERT INTO public.games VALUES (39, 187, 188, 12);
INSERT INTO public.games VALUES (40, 913, 914, 14);
INSERT INTO public.games VALUES (41, 820, 821, 14);
INSERT INTO public.games VALUES (42, 766, 767, 15);
INSERT INTO public.games VALUES (43, 971, 972, 15);
INSERT INTO public.games VALUES (44, 478, 481, 14);
INSERT INTO public.games VALUES (45, 258, 259, 14);
INSERT INTO public.games VALUES (46, 236, 237, 16);
INSERT INTO public.games VALUES (47, 960, 961, 16);
INSERT INTO public.games VALUES (48, 139, 140, 17);
INSERT INTO public.games VALUES (49, 825, 826, 17);
INSERT INTO public.games VALUES (50, 771, 774, 16);
INSERT INTO public.games VALUES (51, 189, 190, 16);
INSERT INTO public.games VALUES (52, 993, 994, 18);
INSERT INTO public.games VALUES (53, 746, 747, 18);
INSERT INTO public.games VALUES (54, 551, 552, 19);
INSERT INTO public.games VALUES (55, 251, 252, 19);
INSERT INTO public.games VALUES (56, 731, 734, 18);
INSERT INTO public.games VALUES (57, 111, 112, 18);
INSERT INTO public.games VALUES (58, 109, 110, 20);
INSERT INTO public.games VALUES (59, 632, 633, 20);
INSERT INTO public.games VALUES (60, 236, 237, 21);
INSERT INTO public.games VALUES (61, 997, 998, 21);
INSERT INTO public.games VALUES (62, 593, 596, 20);
INSERT INTO public.games VALUES (63, 171, 172, 20);
INSERT INTO public.games VALUES (64, 698, 699, 22);
INSERT INTO public.games VALUES (65, 506, 507, 22);
INSERT INTO public.games VALUES (66, 686, 687, 23);
INSERT INTO public.games VALUES (67, 271, 272, 23);
INSERT INTO public.games VALUES (68, 226, 229, 22);
INSERT INTO public.games VALUES (69, 392, 393, 22);
INSERT INTO public.games VALUES (70, 263, 264, 24);
INSERT INTO public.games VALUES (71, 655, 656, 24);
INSERT INTO public.games VALUES (72, 251, 252, 25);
INSERT INTO public.games VALUES (73, 591, 592, 25);
INSERT INTO public.games VALUES (74, 162, 165, 24);
INSERT INTO public.games VALUES (75, 130, 131, 24);
INSERT INTO public.games VALUES (76, 75, 76, 26);
INSERT INTO public.games VALUES (77, 244, 245, 26);
INSERT INTO public.games VALUES (78, 720, 721, 27);
INSERT INTO public.games VALUES (79, 262, 263, 27);
INSERT INTO public.games VALUES (80, 991, 994, 26);
INSERT INTO public.games VALUES (81, 573, 574, 26);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1731352889011');
INSERT INTO public.users VALUES (2, 'user_1731352889010');
INSERT INTO public.users VALUES (3, 'Andrew');
INSERT INTO public.users VALUES (4, 'user_1731353086766');
INSERT INTO public.users VALUES (5, 'user_1731353086765');
INSERT INTO public.users VALUES (6, 'user_1731353127784');
INSERT INTO public.users VALUES (7, 'user_1731353127783');
INSERT INTO public.users VALUES (8, 'user_1731353439622');
INSERT INTO public.users VALUES (9, 'user_1731353439621');
INSERT INTO public.users VALUES (10, 'user_1731353454679');
INSERT INTO public.users VALUES (11, 'user_1731353454678');
INSERT INTO public.users VALUES (12, 'user_1731353475899');
INSERT INTO public.users VALUES (13, 'user_1731353475898');
INSERT INTO public.users VALUES (14, 'user_1731353499052');
INSERT INTO public.users VALUES (15, 'user_1731353499051');
INSERT INTO public.users VALUES (16, 'user_1731353504545');
INSERT INTO public.users VALUES (17, 'user_1731353504543');
INSERT INTO public.users VALUES (18, 'user_1731353506673');
INSERT INTO public.users VALUES (19, 'user_1731353506672');
INSERT INTO public.users VALUES (20, 'user_1731353508597');
INSERT INTO public.users VALUES (21, 'user_1731353508596');
INSERT INTO public.users VALUES (22, 'user_1731353576747');
INSERT INTO public.users VALUES (23, 'user_1731353576746');
INSERT INTO public.users VALUES (24, 'user_1731353615624');
INSERT INTO public.users VALUES (25, 'user_1731353615623');
INSERT INTO public.users VALUES (26, 'user_1731353622730');
INSERT INTO public.users VALUES (27, 'user_1731353622729');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 81, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


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

