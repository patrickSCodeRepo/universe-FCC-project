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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass numeric,
    volume integer,
    is_real boolean,
    description text
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
    mass numeric,
    volume integer,
    is_real boolean,
    description text,
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
    mass numeric,
    volume integer,
    is_real boolean,
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
    mass numeric,
    volume integer,
    is_real boolean,
    description text,
    galaxy_id integer
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
-- Name: street; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.street (
    name character varying(30) NOT NULL,
    mass numeric,
    volume integer,
    is_real boolean,
    description text,
    street_id integer NOT NULL
);


ALTER TABLE public.street OWNER TO freecodecamp;

--
-- Name: street_street_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.street_street_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.street_street_id_seq OWNER TO freecodecamp;

--
-- Name: street_street_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.street_street_id_seq OWNED BY public.street.street_id;


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
-- Name: street street_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.street ALTER COLUMN street_id SET DEFAULT nextval('public.street_street_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Cigar Galaxy', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel Galaxy', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Paddy Galaxy', NULL, NULL, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (2, 'Europa', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Ganymede', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (4, 'Callisto', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Jupiter V', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Jupiter VI', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Jupiter VII', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Jupiter VIII', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Jupiter IX', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Jupiter X', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Jupiter XI', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Jupiter XII', NULL, NULL, true, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Naiad', NULL, NULL, true, NULL, 8);
INSERT INTO public.moon VALUES (14, 'Thalassa', NULL, NULL, true, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Despina', NULL, NULL, true, NULL, 8);
INSERT INTO public.moon VALUES (16, 'Galatea', NULL, NULL, true, NULL, 8);
INSERT INTO public.moon VALUES (17, 'Larissa', NULL, NULL, true, NULL, 8);
INSERT INTO public.moon VALUES (18, 'Hippocamp', NULL, NULL, true, NULL, 8);
INSERT INTO public.moon VALUES (19, 'Proteus', NULL, NULL, true, NULL, 8);
INSERT INTO public.moon VALUES (20, 'Satellite', NULL, NULL, true, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Ten', NULL, NULL, true, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Eleven', NULL, NULL, true, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Twelve', NULL, NULL, true, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (3, 'Canopus', NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (4, 'Vega', NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (5, 'Rigel', NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (6, 'Procyon', NULL, NULL, true, NULL, 1);


--
-- Data for Name: street; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.street VALUES ('Mine', NULL, NULL, true, NULL, 1);
INSERT INTO public.street VALUES ('The other one', NULL, NULL, true, NULL, 2);
INSERT INTO public.street VALUES ('AFRICA', NULL, NULL, true, NULL, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: street_street_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.street_street_id_seq', 3, true);


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
-- Name: street street_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.street
    ADD CONSTRAINT street_name_key UNIQUE (name);


--
-- Name: street street_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.street
    ADD CONSTRAINT street_pkey PRIMARY KEY (street_id);


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

