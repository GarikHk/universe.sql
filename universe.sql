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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilization (
    civilization_id integer NOT NULL,
    name character varying(30) NOT NULL,
    "exists" boolean
);


ALTER TABLE public.civilization OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilization_civilization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilization_civilization_id_seq OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilization_civilization_id_seq OWNED BY public.civilization.civilization_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_b_years numeric(4,3),
    num_of_planets integer,
    num_of_stars character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius integer,
    distance integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius_km integer,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_sun boolean,
    galaxy_id integer,
    is_blue_violet boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: civilization civilization_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization ALTER COLUMN civilization_id SET DEFAULT nextval('public.civilization_civilization_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilization VALUES (1, 'China', true);
INSERT INTO public.civilization VALUES (2, 'Armenia', true);
INSERT INTO public.civilization VALUES (3, 'Rome', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1.360, 8, '100billion-400billion');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 0.100, NULL, 'around 1 trillion');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8.000, NULL, 'around 40 billion');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic', 1.500, NULL, 'around 10 billion');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic', 2.000, NULL, 'around 7 billion');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 6.000, NULL, 'around 100 billion');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1737, 384400, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 11, 9378, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 23460, 1);
INSERT INTO public.moon VALUES (4, 'Europa', 1560, 671034, 8);
INSERT INTO public.moon VALUES (5, 'Ganymede', 2631, 1070400, 8);
INSERT INTO public.moon VALUES (6, 'Callisto', 2410, 1882700, 8);
INSERT INTO public.moon VALUES (7, 'Io', 1821, 421700, 8);
INSERT INTO public.moon VALUES (8, 'Titan', 2575, 1221870, 10);
INSERT INTO public.moon VALUES (9, 'Enceladus', 252, 238037, 10);
INSERT INTO public.moon VALUES (10, 'Milas', 198, 185520, 10);
INSERT INTO public.moon VALUES (11, 'Dione', 561, 377400, 10);
INSERT INTO public.moon VALUES (12, 'Tethys', 531, 294660, 10);
INSERT INTO public.moon VALUES (13, 'Rhea', 763, 527040, 10);
INSERT INTO public.moon VALUES (14, 'Hyperion', 135, 1481010, 10);
INSERT INTO public.moon VALUES (15, 'Triton', 1353, 354800, 12);
INSERT INTO public.moon VALUES (16, 'Nereid', 170, 5513400, 12);
INSERT INTO public.moon VALUES (17, 'Anthe', 2, 197700, 10);
INSERT INTO public.moon VALUES (18, 'Metis', 21, 12800, 8);
INSERT INTO public.moon VALUES (19, 'Himalia', 85, 1148000, 8);
INSERT INTO public.moon VALUES (20, 'Amalthea', 167, 181400, 8);
INSERT INTO public.moon VALUES (21, 'Lysithe', 18, 1172000, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', 3389, 'Known as Red Planet', 1);
INSERT INTO public.planet VALUES (2, 'Kepler-438b', 6137, 'A rocky planet', 3);
INSERT INTO public.planet VALUES (3, 'HD 189733b0', 150000, 'A gas giant', 5);
INSERT INTO public.planet VALUES (4, 'Earth', 6371, 'The third plant from the Sun', 1);
INSERT INTO public.planet VALUES (5, 'Gliese 1214 b', 26550, 'A super Earth exoplanet', 2);
INSERT INTO public.planet VALUES (6, 'Kepler-62f', 7161, 'A rocky planet', 3);
INSERT INTO public.planet VALUES (7, 'Venus', 6052, 'The second planet from the Sun', 1);
INSERT INTO public.planet VALUES (8, 'Jupiter', 69911, 'The largest planet in the solar system', 1);
INSERT INTO public.planet VALUES (9, 'Kepler-10b', 18400, 'A rocky exoplanet', 3);
INSERT INTO public.planet VALUES (10, 'Saturn', 58232, 'The sixth planet from the Sun', 1);
INSERT INTO public.planet VALUES (11, 'HD 209458b', 161500, 'A gas giant', 5);
INSERT INTO public.planet VALUES (12, 'Neptune', 24622, 'The eight and farthest planet from the Sun', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 1, false);
INSERT INTO public.star VALUES (2, 'Almach', false, 2, false);
INSERT INTO public.star VALUES (3, 'Wolf-Lundmark-Melotte', false, 3, true);
INSERT INTO public.star VALUES (4, 'R136a1', false, 4, true);
INSERT INTO public.star VALUES (5, 'AB7', false, 5, true);
INSERT INTO public.star VALUES (6, 'V1', false, 6, false);


--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilization_civilization_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: civilization civilization_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_name_key UNIQUE (name);


--
-- Name: civilization civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civilization_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

