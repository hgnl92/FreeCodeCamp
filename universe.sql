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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    total_size numeric(20,2),
    planet_types text,
    galaxy_types text,
    is_spherical boolean NOT NULL
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
    planet_id integer,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    total_size numeric(20,2),
    planet_types text,
    galaxy_types text,
    is_spherical boolean NOT NULL
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
    star_id integer,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    total_size numeric(20,2),
    planet_types text,
    galaxy_types text,
    is_spherical boolean NOT NULL
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
-- Name: programmer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.programmer (
    programmer_id integer NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    age_in_years integer NOT NULL,
    height numeric(20,2)
);


ALTER TABLE public.programmer OWNER TO freecodecamp;

--
-- Name: programmer_programmer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.programmer_programmer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.programmer_programmer_id_seq OWNER TO freecodecamp;

--
-- Name: programmer_programmer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.programmer_programmer_id_seq OWNED BY public.programmer.programmer_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    total_size numeric(20,2),
    planet_types text,
    galaxy_types text,
    is_spherical boolean NOT NULL
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
-- Name: programmer programmer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.programmer ALTER COLUMN programmer_id SET DEFAULT nextval('public.programmer_programmer_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, age_in_millions_of_years, distance_from_earth, total_size, planet_types, galaxy_types, is_spherical) FROM stdin;
1	Andromeda	10000	2537000	220000000000.00	Terrestrial, Gas Giant	Spiral	t
2	Milky Way	13600	0	256000000000.00	Terrestrial, Gas Giant, Ice Giant	Spiral	t
3	Triangulum	5000	3000000	60000000000.00	Rocky, Ice	Spiral	t
4	Messier 87	12000	53000000	1200000000000.00	Gas Giant	Elliptical	t
5	Whirlpool	8000	23000000	300000000000.00	Terrestrial, Gas Giant	Spiral	t
6	Sombrero	9000	29000000	800000000000.00	Ice Giant	Elliptical	t
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, planet_id, name, age_in_millions_of_years, distance_from_earth, total_size, planet_types, galaxy_types, is_spherical) FROM stdin;
1	1	Luna	4500	0	0.01	Terrestrial	Spiral	t
2	3	Io	4500	778	0.02	Terrestrial	Spiral	t
3	3	Europa	4500	778	0.01	Terrestrial	Spiral	t
4	3	Ganymede	4500	778	0.03	Terrestrial	Spiral	t
5	3	Callisto	4500	778	0.02	Terrestrial	Spiral	t
6	4	Triton	4500	4500	0.01	Ice Giant	Spiral	t
7	5	Proxima Moon	4800	4	0.00	Terrestrial	Spiral	t
8	6	Vega I Alpha	500	25	0.00	Rocky	Spiral	t
9	6	Vega I Beta	500	25	0.00	Rocky	Spiral	t
10	7	Vega II Alpha	500	27	0.00	Rocky	Spiral	t
11	8	Sirius Moon 1	700	8	0.01	Terrestrial	Elliptical	t
12	9	Sirius Moon 2	700	9	0.01	Terrestrial	Elliptical	t
13	10	Andromeda Satellite 1	5000	2500000	0.00	Ice Giant	Spiral	t
14	10	Andromeda Satellite 2	5000	2500000	0.00	Ice Giant	Spiral	t
15	11	Andromeda Secundus I	5000	2500001	0.00	Terrestrial	Spiral	t
16	11	Andromeda Secundus II	5000	2500001	0.00	Terrestrial	Spiral	t
17	12	Sombrero Moon	7000	29000000	0.00	Rocky	Elliptical	t
18	12	Sombrero Tiny 1	7000	29000000	0.00	Rocky	Elliptical	t
19	12	Sombrero Tiny 2	7000	29000000	0.00	Rocky	Elliptical	t
20	12	Sombrero Tiny 3	7000	29000000	0.00	Rocky	Elliptical	t
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, star_id, name, age_in_millions_of_years, distance_from_earth, total_size, planet_types, galaxy_types, is_spherical) FROM stdin;
1	2	Earth	4500	0	1.00	Terrestrial	Spiral	t
2	2	Mars	4500	225	0.53	Terrestrial	Spiral	t
3	2	Jupiter	4500	778	318.00	Gas Giant	Spiral	t
4	2	Neptune	4500	4500	17.10	Ice Giant	Spiral	t
5	1	Proxima b	4800	4	1.27	Terrestrial	Spiral	t
6	3	Vega I	500	25	2.40	Rocky	Spiral	t
7	3	Vega II	500	27	1.10	Rocky	Spiral	t
8	4	Sirius A1	700	8	5.30	Terrestrial	Elliptical	t
9	4	Sirius A2	700	9	3.20	Terrestrial	Elliptical	t
10	5	Andromeda Prime	5000	2500000	3.90	Ice Giant	Spiral	t
11	5	Andromeda Secundus	5000	2500001	2.50	Terrestrial	Spiral	t
12	6	Sombrero Terra	7000	29000000	4.10	Rocky	Elliptical	t
\.


--
-- Data for Name: programmer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.programmer (programmer_id, planet_id, name, age_in_years, height) FROM stdin;
1	1	Ada Lovelace	36	1.65
2	2	Alan Turing	41	1.78
3	5	Grace Hopper	85	1.70
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, galaxy_id, name, age_in_millions_of_years, distance_from_earth, total_size, planet_types, galaxy_types, is_spherical) FROM stdin;
1	1	Alpha Centauri	6000	437	1.10	Terrestrial, Gas Giant	Spiral	t
2	2	Sun	4600	0	1.00	Terrestrial, Gas Giant, Ice Giant	Spiral	t
3	2	Betelgeuse	8000	642	887.00	Gas Giant	Spiral	t
4	3	Vega	450	25	2.10	Terrestrial	Spiral	t
5	4	Sirius	300	8	2.02	Terrestrial, Ice Giant	Elliptical	t
6	5	Proxima Centauri	4800	4	0.15	Terrestrial	Spiral	t
\.


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
-- Name: programmer_programmer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.programmer_programmer_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: programmer programmer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.programmer
    ADD CONSTRAINT programmer_name_key UNIQUE (name);


--
-- Name: programmer programmer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.programmer
    ADD CONSTRAINT programmer_pkey PRIMARY KEY (programmer_id);


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
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: programmer fk_programmer; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.programmer
    ADD CONSTRAINT fk_programmer FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

