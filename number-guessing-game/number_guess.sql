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
    number_of_guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 962);
INSERT INTO public.games VALUES (2, 1, 518);
INSERT INTO public.games VALUES (3, 2, 134);
INSERT INTO public.games VALUES (4, 2, 569);
INSERT INTO public.games VALUES (5, 1, 378);
INSERT INTO public.games VALUES (6, 1, 208);
INSERT INTO public.games VALUES (7, 1, 994);
INSERT INTO public.games VALUES (8, 3, 429);
INSERT INTO public.games VALUES (9, 3, 831);
INSERT INTO public.games VALUES (10, 4, 581);
INSERT INTO public.games VALUES (11, 4, 148);
INSERT INTO public.games VALUES (12, 3, 408);
INSERT INTO public.games VALUES (13, 3, 729);
INSERT INTO public.games VALUES (14, 3, 607);
INSERT INTO public.games VALUES (15, 5, 401);
INSERT INTO public.games VALUES (16, 5, 713);
INSERT INTO public.games VALUES (17, 6, 693);
INSERT INTO public.games VALUES (18, 6, 576);
INSERT INTO public.games VALUES (19, 5, 439);
INSERT INTO public.games VALUES (20, 5, 418);
INSERT INTO public.games VALUES (21, 5, 402);
INSERT INTO public.games VALUES (22, 7, 119);
INSERT INTO public.games VALUES (23, 7, 985);
INSERT INTO public.games VALUES (24, 8, 729);
INSERT INTO public.games VALUES (25, 8, 332);
INSERT INTO public.games VALUES (26, 9, 187);
INSERT INTO public.games VALUES (27, 9, 679);
INSERT INTO public.games VALUES (28, 8, 351);
INSERT INTO public.games VALUES (29, 8, 521);
INSERT INTO public.games VALUES (30, 8, 928);
INSERT INTO public.games VALUES (31, 10, 956);
INSERT INTO public.games VALUES (32, 10, 625);
INSERT INTO public.games VALUES (33, 11, 143);
INSERT INTO public.games VALUES (34, 11, 259);
INSERT INTO public.games VALUES (35, 10, 33);
INSERT INTO public.games VALUES (36, 10, 480);
INSERT INTO public.games VALUES (37, 10, 620);
INSERT INTO public.games VALUES (38, 12, 857);
INSERT INTO public.games VALUES (39, 12, 237);
INSERT INTO public.games VALUES (40, 13, 814);
INSERT INTO public.games VALUES (41, 13, 193);
INSERT INTO public.games VALUES (42, 12, 535);
INSERT INTO public.games VALUES (43, 12, 380);
INSERT INTO public.games VALUES (44, 12, 762);
INSERT INTO public.games VALUES (45, 14, 144);
INSERT INTO public.games VALUES (46, 14, 968);
INSERT INTO public.games VALUES (47, 15, 356);
INSERT INTO public.games VALUES (48, 15, 233);
INSERT INTO public.games VALUES (49, 14, 221);
INSERT INTO public.games VALUES (50, 14, 567);
INSERT INTO public.games VALUES (51, 14, 750);
INSERT INTO public.games VALUES (52, 16, 978);
INSERT INTO public.games VALUES (53, 16, 839);
INSERT INTO public.games VALUES (54, 17, 431);
INSERT INTO public.games VALUES (55, 17, 694);
INSERT INTO public.games VALUES (56, 16, 551);
INSERT INTO public.games VALUES (57, 16, 504);
INSERT INTO public.games VALUES (58, 16, 545);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1794934448871');
INSERT INTO public.users VALUES (2, 'user_1794934448870');
INSERT INTO public.users VALUES (3, 'user_1794934462365');
INSERT INTO public.users VALUES (4, 'user_1794934462364');
INSERT INTO public.users VALUES (5, 'user_1794934475706');
INSERT INTO public.users VALUES (6, 'user_1794934475705');
INSERT INTO public.users VALUES (7, 'u000000000001794934549');
INSERT INTO public.users VALUES (8, 'user_1794934572286');
INSERT INTO public.users VALUES (9, 'user_1794934572285');
INSERT INTO public.users VALUES (10, 'user_1794934665900');
INSERT INTO public.users VALUES (11, 'user_1794934665899');
INSERT INTO public.users VALUES (12, 'user_1794934756246');
INSERT INTO public.users VALUES (13, 'user_1794934756245');
INSERT INTO public.users VALUES (14, 'user_1794934793985');
INSERT INTO public.users VALUES (15, 'user_1794934793984');
INSERT INTO public.users VALUES (16, 'user_1794934806982');
INSERT INTO public.users VALUES (17, 'user_1794934806981');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 58, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


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

