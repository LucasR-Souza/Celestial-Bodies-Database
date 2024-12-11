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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    type character varying(20),
    mass_in_earth bigint,
    name character varying(25) NOT NULL,
    galaxy_center boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    shape character varying(20),
    name character varying(25) NOT NULL,
    galaxy_group character varying(25),
    distance_from_the_earth integer NOT NULL
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
    name character varying(25) NOT NULL,
    age_in_billion_of_years smallint,
    size_in_earth_moons numeric(10,2) NOT NULL,
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
    name character varying(25) NOT NULL,
    age_in_billions_of_years integer,
    distance_from_earth integer NOT NULL,
    has_life boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: COLUMN planet.distance_from_earth; Type: COMMENT; Schema: public; Owner: freecodecamp
--

COMMENT ON COLUMN public.planet.distance_from_earth IS 'distance in light years.';


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
    name character varying(25) NOT NULL,
    temp_in_celsius integer,
    age_in_billions_of_years integer,
    color character varying(20) NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Supermassive', 4000000, 'Sagittarius A*', true, 1);
INSERT INTO public.black_hole VALUES (2, 'Supermassive', 14000000, 'Andromeda Black Hole', true, 2);
INSERT INTO public.black_hole VALUES (3, 'Intermediate', 1000000, 'Triangulum Black Hole', true, 6);
INSERT INTO public.black_hole VALUES (4, 'Supermassive', 6600000000, 'Messier 87 Black Hole', true, 5);
INSERT INTO public.black_hole VALUES (5, 'Intermediate', 300000, 'Large Magellanic Cloud BH', false, 3);
INSERT INTO public.black_hole VALUES (6, 'Stellar', 30, 'Sombrero BH', false, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral', 'Milky Way', 'Local Group', 0);
INSERT INTO public.galaxy VALUES (2, 'Elliptical', 'Andromeda', 'Local Group', 2537000);
INSERT INTO public.galaxy VALUES (3, 'Irregular', 'Large Magellanic Cloud', 'Local Group', 163000);
INSERT INTO public.galaxy VALUES (4, 'Spiral', 'Sombrero', 'Virgo Cluster', 32000000);
INSERT INTO public.galaxy VALUES (5, 'Lenticular', 'Messier 87', 'Virgo Cluster', 53000000);
INSERT INTO public.galaxy VALUES (6, 'Irregular', 'Triangulum', 'Local Group', 3000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 5, 1.00, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 5, 0.15, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 5, 0.12, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 1.51, 12);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 0.90, 12);
INSERT INTO public.moon VALUES (6, 'Titan', 5, 1.48, 3);
INSERT INTO public.moon VALUES (7, 'Enceladus', 5, 0.19, 3);
INSERT INTO public.moon VALUES (8, 'Andromeda-Moon1', 3, 0.50, 10);
INSERT INTO public.moon VALUES (9, 'Andromeda-Moon2', 3, 0.45, 11);
INSERT INTO public.moon VALUES (10, 'Sombrero-Moon1', 2, 0.75, 8);
INSERT INTO public.moon VALUES (11, 'Sombrero-Moon2', 2, 0.65, 9);
INSERT INTO public.moon VALUES (12, 'Proxima-MoonA', 0, 0.80, 4);
INSERT INTO public.moon VALUES (13, 'Proxima-MoonB', 0, 0.70, 4);
INSERT INTO public.moon VALUES (14, 'Alpha-Centauri-Moon1', 1, 0.95, 5);
INSERT INTO public.moon VALUES (15, 'Alpha-Centauri-Moon2', 1, 0.85, 5);
INSERT INTO public.moon VALUES (16, 'Betelgeuse-MoonX', 1, 0.92, 7);
INSERT INTO public.moon VALUES (17, 'Betelgeuse-MoonY', 0, 0.89, 7);
INSERT INTO public.moon VALUES (18, 'Triangulum-Moon1', 2, 1.10, 12);
INSERT INTO public.moon VALUES (19, 'Triangulum-Moon2', 2, 1.12, 12);
INSERT INTO public.moon VALUES (20, 'Rigel-Moon1', 4, 0.95, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 5, 0, true, 'Home to diverse life forms.', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 5, 0, false, 'Known as the Red Planet.', 1);
INSERT INTO public.planet VALUES (3, 'Venus', 5, 0, false, 'Hot and toxic atmosphere.', 1);
INSERT INTO public.planet VALUES (4, 'Proxima b', 1, 4, NULL, 'Possibly habitable exoplanet.', 3);
INSERT INTO public.planet VALUES (5, 'Alpha Centauri Bb', 2, 4, NULL, 'Orbiting Alpha Centauri.', 6);
INSERT INTO public.planet VALUES (6, 'Rigel b', 2, 860, false, 'Gas giant near Rigel.', 4);
INSERT INTO public.planet VALUES (7, 'Betelgeuse c', 2, 643, false, 'Rocky planet near Betelgeuse.', 5);
INSERT INTO public.planet VALUES (8, 'Sombrero-1', 1, 32000000, false, 'Orbits a star in Sombrero Galaxy.', 4);
INSERT INTO public.planet VALUES (9, 'Sombrero-2', 1, 32000000, false, 'Gas giant in Sombrero.', 4);
INSERT INTO public.planet VALUES (10, 'Andromeda-X1', 4, 2537000, false, 'Exoplanet in Andromeda.', 2);
INSERT INTO public.planet VALUES (11, 'Andromeda-Y2', 2, 2537000, false, 'Potential for moons.', 2);
INSERT INTO public.planet VALUES (12, 'Triangulum-Z', 2, 3000000, false, 'Unique terrain.', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5500, 5, 'Yellow', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 9940, 0, 'White', 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 3042, 5, 'Red', 1);
INSERT INTO public.star VALUES (4, 'Rigel', 12000, 8, 'Blue', 4);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 3500, 10, 'Red', 4);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 5790, 5, 'Yellow', 2);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 6, true);


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
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

