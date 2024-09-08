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
    guesses integer DEFAULT 999 NOT NULL
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

INSERT INTO public.games VALUES (2, 9, 4);
INSERT INTO public.games VALUES (3, 13, 84);
INSERT INTO public.games VALUES (4, 13, 918);
INSERT INTO public.games VALUES (5, 14, 177);
INSERT INTO public.games VALUES (6, 14, 734);
INSERT INTO public.games VALUES (7, 13, 769);
INSERT INTO public.games VALUES (8, 13, 798);
INSERT INTO public.games VALUES (9, 13, 46);
INSERT INTO public.games VALUES (10, 15, 396);
INSERT INTO public.games VALUES (11, 15, 338);
INSERT INTO public.games VALUES (12, 16, 984);
INSERT INTO public.games VALUES (13, 16, 512);
INSERT INTO public.games VALUES (14, 15, 966);
INSERT INTO public.games VALUES (15, 15, 275);
INSERT INTO public.games VALUES (16, 15, 319);
INSERT INTO public.games VALUES (17, 17, 824);
INSERT INTO public.games VALUES (18, 17, 664);
INSERT INTO public.games VALUES (19, 18, 813);
INSERT INTO public.games VALUES (20, 18, 373);
INSERT INTO public.games VALUES (21, 17, 308);
INSERT INTO public.games VALUES (22, 17, 979);
INSERT INTO public.games VALUES (23, 17, 379);
INSERT INTO public.games VALUES (24, 19, 105);
INSERT INTO public.games VALUES (25, 19, 781);
INSERT INTO public.games VALUES (26, 20, 254);
INSERT INTO public.games VALUES (27, 20, 814);
INSERT INTO public.games VALUES (28, 19, 698);
INSERT INTO public.games VALUES (29, 19, 141);
INSERT INTO public.games VALUES (30, 19, 495);
INSERT INTO public.games VALUES (31, 21, 118);
INSERT INTO public.games VALUES (32, 21, 729);
INSERT INTO public.games VALUES (33, 22, 931);
INSERT INTO public.games VALUES (34, 22, 875);
INSERT INTO public.games VALUES (35, 21, 608);
INSERT INTO public.games VALUES (36, 21, 997);
INSERT INTO public.games VALUES (37, 21, 513);
INSERT INTO public.games VALUES (38, 23, 396);
INSERT INTO public.games VALUES (39, 23, 70);
INSERT INTO public.games VALUES (40, 24, 535);
INSERT INTO public.games VALUES (41, 24, 879);
INSERT INTO public.games VALUES (42, 23, 321);
INSERT INTO public.games VALUES (43, 23, 875);
INSERT INTO public.games VALUES (44, 23, 221);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1725775971979');
INSERT INTO public.users VALUES (2, 'user_1725775971978');
INSERT INTO public.users VALUES (3, 'user_1725776054499');
INSERT INTO public.users VALUES (4, 'user_1725776054498');
INSERT INTO public.users VALUES (5, 'user_1725776080971');
INSERT INTO public.users VALUES (6, 'user_1725776080970');
INSERT INTO public.users VALUES (7, 'user_1725776133039');
INSERT INTO public.users VALUES (8, 'user_1725776133038');
INSERT INTO public.users VALUES (9, 'igor');
INSERT INTO public.users VALUES (10, 'user_1725776205261');
INSERT INTO public.users VALUES (11, 'user_1725776205260');
INSERT INTO public.users VALUES (12, '');
INSERT INTO public.users VALUES (13, 'user_1725776516210');
INSERT INTO public.users VALUES (14, 'user_1725776516209');
INSERT INTO public.users VALUES (15, 'user_1725776565121');
INSERT INTO public.users VALUES (16, 'user_1725776565120');
INSERT INTO public.users VALUES (17, 'user_1725777005402');
INSERT INTO public.users VALUES (18, 'user_1725777005401');
INSERT INTO public.users VALUES (19, 'user_1725777065558');
INSERT INTO public.users VALUES (20, 'user_1725777065557');
INSERT INTO public.users VALUES (21, 'user_1725777076949');
INSERT INTO public.users VALUES (22, 'user_1725777076948');
INSERT INTO public.users VALUES (23, 'user_1725777136190');
INSERT INTO public.users VALUES (24, 'user_1725777136189');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users uniq_username; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uniq_username UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

