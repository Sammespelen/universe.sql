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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    quadrant integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation_id integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_type character varying(30),
    active boolean NOT NULL,
    diameter_in_lightyears integer NOT NULL,
    magnitude numeric,
    galaxy_id integer NOT NULL,
    constellation_id integer
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    radius_in_km numeric,
    discovery_year text,
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    radius_in_km numeric,
    discovery_year text,
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
    name character varying(30) NOT NULL,
    age integer,
    solar_mass numeric,
    distance_in_lightyears numeric NOT NULL,
    star_id integer NOT NULL,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Andromeda', 1);
INSERT INTO public.constellation VALUES (1, 'Cassiopeia', 2);
INSERT INTO public.constellation VALUES (1, 'Pegasus', 3);
INSERT INTO public.constellation VALUES (1, 'Perseus', 4);
INSERT INTO public.constellation VALUES (2, 'Orion', 5);
INSERT INTO public.constellation VALUES (2, 'Gemini', 6);
INSERT INTO public.constellation VALUES (2, 'Taurus', 7);
INSERT INTO public.constellation VALUES (2, 'Cancer', 8);
INSERT INTO public.constellation VALUES (3, 'Draco', 9);
INSERT INTO public.constellation VALUES (3, 'Ursa Major', 10);
INSERT INTO public.constellation VALUES (3, 'Ursa Minor', 11);
INSERT INTO public.constellation VALUES (3, 'Hercules', 12);
INSERT INTO public.constellation VALUES (4, 'Sagittarius', 13);
INSERT INTO public.constellation VALUES (4, 'Scorpius', 14);
INSERT INTO public.constellation VALUES (4, 'Libra', 15);
INSERT INTO public.constellation VALUES (4, 'Ophiuchus', 16);
INSERT INTO public.constellation VALUES (5, 'Aquarius', 17);
INSERT INTO public.constellation VALUES (5, 'Pisces', 18);
INSERT INTO public.constellation VALUES (5, 'Capricornus', 19);
INSERT INTO public.constellation VALUES (5, 'Aries', 20);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Spiral', true, 105700, -20.8, 1, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 'Spiral', true, 220000, -21.5, 2, 1);
INSERT INTO public.galaxy VALUES ('Triangulum', 'Spiral', true, 60000, -19.4, 3, 2);
INSERT INTO public.galaxy VALUES ('Sombrero', 'Spiral', true, 49000, -22.0, 4, 3);
INSERT INTO public.galaxy VALUES ('Whirlpool', 'Spiral', true, 76000, -21.2, 5, 4);
INSERT INTO public.galaxy VALUES ('Pinwheel', 'Spiral', true, 170000, -20.9, 6, 5);
INSERT INTO public.galaxy VALUES ('Messier 87', 'Elliptical', false, 120000, -23.0, 7, 6);
INSERT INTO public.galaxy VALUES ('Centaurus A', 'Elliptical', false, 60000, -22.1, 8, 7);
INSERT INTO public.galaxy VALUES ('Messier 110', 'Elliptical', false, 15000, -18.8, 9, 8);
INSERT INTO public.galaxy VALUES ('Messier 32', 'Elliptical', false, 8000, -16.5, 10, 9);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 'Irregular', true, 14000, -18.1, 11, 10);
INSERT INTO public.galaxy VALUES ('Small Magellanic Cloud', 'Irregular', true, 7000, -17.1, 12, 11);
INSERT INTO public.galaxy VALUES ('NGC 6822', 'Irregular', true, 8800, -16.8, 13, 12);
INSERT INTO public.galaxy VALUES ('NGC 1569', 'Irregular', true, 3000, -16.3, 14, 13);
INSERT INTO public.galaxy VALUES ('IC 10', 'Irregular', true, 4900, -16.6, 15, 14);
INSERT INTO public.galaxy VALUES ('Canis Major', 'Dwarf', false, 2000, -14.5, 16, 15);
INSERT INTO public.galaxy VALUES ('Sagittarius Dwarf', 'Dwarf', false, 1000, -13.9, 17, 16);
INSERT INTO public.galaxy VALUES ('Draco Dwarf', 'Dwarf', false, 700, -13.8, 18, 17);
INSERT INTO public.galaxy VALUES ('Sculptor Dwarf', 'Dwarf', false, 500, -12.6, 19, 18);
INSERT INTO public.galaxy VALUES ('Fornax Dwarf', 'Dwarf', false, 400, -12.3, 20, 19);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 23, 1737, 'Prehistoric', 67);
INSERT INTO public.moon VALUES ('Phobos', 24, 22, 'Prehistoric', 68);
INSERT INTO public.moon VALUES ('Deimos', 25, 12, 'Prehistoric', 68);
INSERT INTO public.moon VALUES ('Io', 26, 1821, 'Prehistoric', 69);
INSERT INTO public.moon VALUES ('Europa', 27, 1560, 'Prehistoric', 69);
INSERT INTO public.moon VALUES ('Ganymede', 28, 2634, 'Prehistoric', 69);
INSERT INTO public.moon VALUES ('Callisto', 29, 2400, 'Prehistoric', 69);
INSERT INTO public.moon VALUES ('Titan', 30, 2575, 'Prehistoric', 70);
INSERT INTO public.moon VALUES ('Rhea', 31, 764, 'Prehistoric', 70);
INSERT INTO public.moon VALUES ('Iapetus', 32, 735, 'Prehistoric', 70);
INSERT INTO public.moon VALUES ('Dione', 33, 561, 'Prehistoric', 70);
INSERT INTO public.moon VALUES ('Tethys', 34, 533, 'Prehistoric', 70);
INSERT INTO public.moon VALUES ('Mimas', 35, 396, 'Prehistoric', 70);
INSERT INTO public.moon VALUES ('Enceladus', 36, 504, 'Prehistoric', 70);
INSERT INTO public.moon VALUES ('Miranda', 37, 235, 'Prehistoric', 71);
INSERT INTO public.moon VALUES ('Ariel', 38, 578, 'Prehistoric', 71);
INSERT INTO public.moon VALUES ('Umbriel', 39, 584, 'Prehistoric', 71);
INSERT INTO public.moon VALUES ('Titania', 40, 788, 'Prehistoric', 71);
INSERT INTO public.moon VALUES ('Oberon', 41, 761, 'Prehistoric', 71);
INSERT INTO public.moon VALUES ('Triton', 42, 1353, '1846', 72);
INSERT INTO public.moon VALUES ('Nereid', 43, 170, '1949', 72);
INSERT INTO public.moon VALUES ('Proteus', 44, 418, '1989', 72);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 67, true, 6371, 'Prehistoric', 44);
INSERT INTO public.planet VALUES ('Mars', 68, false, 3389, 'Prehistoric', 44);
INSERT INTO public.planet VALUES ('Venus', 69, false, 6051, 'Prehistoric', 44);
INSERT INTO public.planet VALUES ('Jupiter', 70, false, 69911, 'Prehistoric', 44);
INSERT INTO public.planet VALUES ('Saturn', 71, false, 58232, 'Prehistoric', 44);
INSERT INTO public.planet VALUES ('Uranus', 72, false, 25362, 'Prehistoric', 44);
INSERT INTO public.planet VALUES ('Neptune', 73, false, 24622, 'Prehistoric', 44);
INSERT INTO public.planet VALUES ('Pluto', 74, false, 1188, '1930', 44);
INSERT INTO public.planet VALUES ('Kepler-22b', 75, false, 17350, '2011', 22);
INSERT INTO public.planet VALUES ('Proxima b', 76, false, 14000, '2016', 23);
INSERT INTO public.planet VALUES ('Gliese 581g', 77, false, 14500, '2010', 24);
INSERT INTO public.planet VALUES ('HD 209458 b', 78, false, 13700, '1999', 25);
INSERT INTO public.planet VALUES ('Kepler-62f', 79, false, 15900, '2013', 26);
INSERT INTO public.planet VALUES ('Trappist-1e', 80, false, 12250, '2017', 27);
INSERT INTO public.planet VALUES ('GJ 667 Cc', 81, false, 11950, '2012', 28);
INSERT INTO public.planet VALUES ('Tau Ceti e', 82, false, 11500, '2012', 29);
INSERT INTO public.planet VALUES ('Kepler-186f', 83, false, 11300, '2014', 30);
INSERT INTO public.planet VALUES ('LHS 1140 b', 84, false, 12750, '2017', 31);
INSERT INTO public.planet VALUES ('K2-18b', 85, false, 14500, '2015', 32);
INSERT INTO public.planet VALUES ('Kepler-452b', 86, false, 14000, '2015', 33);
INSERT INTO public.planet VALUES ('K2-72e', 87, false, 12350, '2017', 34);
INSERT INTO public.planet VALUES ('Ross 128 b', 88, false, 11000, '2017', 35);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 230, 2.1, 8.6, 22, 1);
INSERT INTO public.star VALUES ('Alpha Centauri A', 4500, 1.1, 4.37, 23, 2);
INSERT INTO public.star VALUES ('Alpha Centauri B', 4500, 0.9, 4.37, 24, 2);
INSERT INTO public.star VALUES ('Betelgeuse', 1000000, 20.0, 642.5, 25, 3);
INSERT INTO public.star VALUES ('Rigel', 800000, 21.0, 860, 26, 3);
INSERT INTO public.star VALUES ('Proxima Centauri', 12000, 0.1, 4.24, 27, 2);
INSERT INTO public.star VALUES ('Aldebaran', 6500000, 1.5, 65.1, 28, 4);
INSERT INTO public.star VALUES ('Antares', 1200000, 15.0, 550, 29, 4);
INSERT INTO public.star VALUES ('Arcturus', 7500000, 1.5, 36.7, 30, 5);
INSERT INTO public.star VALUES ('Spica', 1000000, 10.0, 250, 31, 5);
INSERT INTO public.star VALUES ('Vega', 4500000, 2.1, 25, 32, 6);
INSERT INTO public.star VALUES ('Altair', 2000000, 1.8, 16.7, 33, 6);
INSERT INTO public.star VALUES ('Capella', 7000000, 2.0, 42.2, 34, 7);
INSERT INTO public.star VALUES ('Rigel Kentaurus', 4500, 1.6, 4.37, 35, 8);
INSERT INTO public.star VALUES ('Deneb', 1000000, 20.0, 1427, 36, 8);
INSERT INTO public.star VALUES ('Canopus', 10000000, 8.0, 310, 37, 9);
INSERT INTO public.star VALUES ('Fomalhaut', 4400000, 1.9, 25, 38, 9);
INSERT INTO public.star VALUES ('Sadr', 1000000, 8.0, 1600, 39, 10);
INSERT INTO public.star VALUES ('Zeta Reticuli', 5000, 1.0, 39, 40, 11);
INSERT INTO public.star VALUES ('Procyon', 1500000, 1.5, 11.5, 41, 12);
INSERT INTO public.star VALUES ('Altair Proxima', 1000000, 1.7, 16.7, 42, 13);
INSERT INTO public.star VALUES ('Sirius B', 1200000, 1.0, 8.6, 43, 14);
INSERT INTO public.star VALUES ('Sun', 46000, 1.0, 0, 44, 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 44, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 88, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 44, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy fk_constellation_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_constellation_id FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

