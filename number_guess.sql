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
    number_of_guesses integer NOT NULL,
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

INSERT INTO public.games VALUES (1, 25, 1);
INSERT INTO public.games VALUES (2, 59, 10);
INSERT INTO public.games VALUES (3, 361, 10);
INSERT INTO public.games VALUES (4, 956, 11);
INSERT INTO public.games VALUES (5, 34, 11);
INSERT INTO public.games VALUES (6, 283, 10);
INSERT INTO public.games VALUES (7, 329, 10);
INSERT INTO public.games VALUES (8, 543, 10);
INSERT INTO public.games VALUES (9, 361, 12);
INSERT INTO public.games VALUES (10, 862, 12);
INSERT INTO public.games VALUES (11, 510, 13);
INSERT INTO public.games VALUES (12, 762, 13);
INSERT INTO public.games VALUES (13, 499, 12);
INSERT INTO public.games VALUES (14, 695, 12);
INSERT INTO public.games VALUES (15, 354, 12);
INSERT INTO public.games VALUES (16, 347, 14);
INSERT INTO public.games VALUES (17, 900, 14);
INSERT INTO public.games VALUES (18, 835, 15);
INSERT INTO public.games VALUES (19, 297, 15);
INSERT INTO public.games VALUES (20, 239, 14);
INSERT INTO public.games VALUES (21, 515, 14);
INSERT INTO public.games VALUES (22, 344, 14);
INSERT INTO public.games VALUES (23, 544, 16);
INSERT INTO public.games VALUES (24, 965, 16);
INSERT INTO public.games VALUES (25, 901, 17);
INSERT INTO public.games VALUES (26, 111, 17);
INSERT INTO public.games VALUES (27, 496, 16);
INSERT INTO public.games VALUES (28, 849, 16);
INSERT INTO public.games VALUES (29, 782, 16);
INSERT INTO public.games VALUES (30, 8, 1);
INSERT INTO public.games VALUES (31, 882, 18);
INSERT INTO public.games VALUES (32, 474, 18);
INSERT INTO public.games VALUES (33, 389, 19);
INSERT INTO public.games VALUES (34, 759, 19);
INSERT INTO public.games VALUES (35, 105, 18);
INSERT INTO public.games VALUES (36, 482, 18);
INSERT INTO public.games VALUES (37, 374, 18);
INSERT INTO public.games VALUES (38, 758, 20);
INSERT INTO public.games VALUES (39, 667, 20);
INSERT INTO public.games VALUES (40, 302, 21);
INSERT INTO public.games VALUES (41, 858, 21);
INSERT INTO public.games VALUES (42, 949, 20);
INSERT INTO public.games VALUES (43, 57, 20);
INSERT INTO public.games VALUES (44, 892, 20);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Peter');
INSERT INTO public.users VALUES (2, 'PETER');
INSERT INTO public.users VALUES (3, 'Sam');
INSERT INTO public.users VALUES (4, 'user_1721365560996');
INSERT INTO public.users VALUES (5, 'user_1721365560995');
INSERT INTO public.users VALUES (6, 'user_1721367505823');
INSERT INTO public.users VALUES (7, 'user_1721367505822');
INSERT INTO public.users VALUES (8, 'user_1721368761205');
INSERT INTO public.users VALUES (9, 'user_1721368761204');
INSERT INTO public.users VALUES (10, 'user_1721369658346');
INSERT INTO public.users VALUES (11, 'user_1721369658345');
INSERT INTO public.users VALUES (12, 'user_1721369704110');
INSERT INTO public.users VALUES (13, 'user_1721369704109');
INSERT INTO public.users VALUES (14, 'user_1721369956118');
INSERT INTO public.users VALUES (15, 'user_1721369956117');
INSERT INTO public.users VALUES (16, 'user_1721370091875');
INSERT INTO public.users VALUES (17, 'user_1721370091874');
INSERT INTO public.users VALUES (18, 'user_1721370273124');
INSERT INTO public.users VALUES (19, 'user_1721370273123');
INSERT INTO public.users VALUES (20, 'user_1721370325268');
INSERT INTO public.users VALUES (21, 'user_1721370325267');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

