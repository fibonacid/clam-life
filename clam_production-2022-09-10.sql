--
-- PostgreSQL database dump
--

-- Dumped from database version 10.21 (Debian 10.21-1.pgdg90+1)
-- Dumped by pg_dump version 10.21 (Debian 10.21-1.pgdg90+1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_assets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_assets (
    id integer NOT NULL,
    type character varying,
    video character varying,
    image character varying,
    audio character varying,
    svg character varying,
    field_setting_id integer,
    fieldable_type character varying,
    fieldable_id integer,
    content_type character varying,
    file_size double precision,
    file_width double precision,
    file_height double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_assets_id_seq OWNED BY public.binda_assets.id;


--
-- Name: binda_boards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_boards (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying,
    "position" integer,
    structure_id integer
);


--
-- Name: binda_boards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_boards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_boards_id_seq OWNED BY public.binda_boards.id;


--
-- Name: binda_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying,
    structure_id integer,
    "position" integer,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_categories_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_categories_components (
    category_id integer,
    component_id integer
);


--
-- Name: binda_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_categories_id_seq OWNED BY public.binda_categories.id;


--
-- Name: binda_choices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_choices (
    id integer NOT NULL,
    label character varying,
    value character varying,
    field_setting_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_choices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_choices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_choices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_choices_id_seq OWNED BY public.binda_choices.id;


--
-- Name: binda_choices_selections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_choices_selections (
    id integer NOT NULL,
    choice_id integer,
    selection_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_choices_selections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_choices_selections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_choices_selections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_choices_selections_id_seq OWNED BY public.binda_choices_selections.id;


--
-- Name: binda_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_components (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying,
    publish_state character varying,
    "position" integer,
    structure_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_components_id_seq OWNED BY public.binda_components.id;


--
-- Name: binda_dates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_dates (
    id integer NOT NULL,
    date timestamp without time zone,
    field_setting_id integer,
    fieldable_type character varying,
    fieldable_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_dates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_dates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_dates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_dates_id_seq OWNED BY public.binda_dates.id;


--
-- Name: binda_field_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_field_groups (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying,
    description text,
    "position" integer,
    layout character varying,
    structure_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_field_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_field_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_field_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_field_groups_id_seq OWNED BY public.binda_field_groups.id;


--
-- Name: binda_field_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_field_settings (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying,
    description text,
    "position" integer,
    required boolean DEFAULT false,
    read_only boolean DEFAULT false,
    default_text text,
    field_type character varying,
    field_group_id integer,
    ancestry character varying,
    allow_null boolean DEFAULT true,
    default_choice_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_field_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_field_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_field_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_field_settings_id_seq OWNED BY public.binda_field_settings.id;


--
-- Name: binda_field_settings_structures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_field_settings_structures (
    id integer NOT NULL,
    field_setting_id integer,
    structure_id integer
);


--
-- Name: binda_field_settings_structures_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_field_settings_structures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_field_settings_structures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_field_settings_structures_id_seq OWNED BY public.binda_field_settings_structures.id;


--
-- Name: binda_galleries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_galleries (
    id integer NOT NULL,
    "position" integer,
    field_setting_id integer,
    fieldable_type character varying,
    fieldable_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_galleries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_galleries_id_seq OWNED BY public.binda_galleries.id;


--
-- Name: binda_relation_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_relation_links (
    id integer NOT NULL,
    owner_type character varying,
    owner_id integer,
    dependent_type character varying,
    dependent_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_relation_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_relation_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_relation_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_relation_links_id_seq OWNED BY public.binda_relation_links.id;


--
-- Name: binda_relations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_relations (
    id integer NOT NULL,
    field_setting_id integer,
    fieldable_type character varying,
    fieldable_id integer
);


--
-- Name: binda_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_relations_id_seq OWNED BY public.binda_relations.id;


--
-- Name: binda_repeaters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_repeaters (
    id integer NOT NULL,
    "position" integer,
    field_setting_id integer,
    fieldable_type character varying,
    fieldable_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_repeaters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_repeaters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_repeaters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_repeaters_id_seq OWNED BY public.binda_repeaters.id;


--
-- Name: binda_selections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_selections (
    id integer NOT NULL,
    field_setting_id integer,
    fieldable_type character varying,
    fieldable_id integer,
    type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_selections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_selections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_selections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_selections_id_seq OWNED BY public.binda_selections.id;


--
-- Name: binda_structures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_structures (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying,
    "position" integer,
    has_categories boolean DEFAULT true,
    has_preview boolean DEFAULT false,
    instance_type character varying DEFAULT 'component'::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_structures_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_structures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_structures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_structures_id_seq OWNED BY public.binda_structures.id;


--
-- Name: binda_texts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_texts (
    id integer NOT NULL,
    content text,
    "position" integer,
    field_setting_id integer,
    fieldable_type character varying,
    fieldable_id integer,
    type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_texts_id_seq OWNED BY public.binda_texts.id;


--
-- Name: binda_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.binda_users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    failed_attempts integer DEFAULT 0 NOT NULL,
    unlock_token character varying,
    locked_at timestamp without time zone,
    is_superadmin boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: binda_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.binda_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: binda_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.binda_users_id_seq OWNED BY public.binda_users.id;


--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.friendly_id_slugs (
    id integer NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp without time zone
);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: binda_assets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_assets ALTER COLUMN id SET DEFAULT nextval('public.binda_assets_id_seq'::regclass);


--
-- Name: binda_boards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_boards ALTER COLUMN id SET DEFAULT nextval('public.binda_boards_id_seq'::regclass);


--
-- Name: binda_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_categories ALTER COLUMN id SET DEFAULT nextval('public.binda_categories_id_seq'::regclass);


--
-- Name: binda_choices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_choices ALTER COLUMN id SET DEFAULT nextval('public.binda_choices_id_seq'::regclass);


--
-- Name: binda_choices_selections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_choices_selections ALTER COLUMN id SET DEFAULT nextval('public.binda_choices_selections_id_seq'::regclass);


--
-- Name: binda_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_components ALTER COLUMN id SET DEFAULT nextval('public.binda_components_id_seq'::regclass);


--
-- Name: binda_dates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_dates ALTER COLUMN id SET DEFAULT nextval('public.binda_dates_id_seq'::regclass);


--
-- Name: binda_field_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_field_groups ALTER COLUMN id SET DEFAULT nextval('public.binda_field_groups_id_seq'::regclass);


--
-- Name: binda_field_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_field_settings ALTER COLUMN id SET DEFAULT nextval('public.binda_field_settings_id_seq'::regclass);


--
-- Name: binda_field_settings_structures id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_field_settings_structures ALTER COLUMN id SET DEFAULT nextval('public.binda_field_settings_structures_id_seq'::regclass);


--
-- Name: binda_galleries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_galleries ALTER COLUMN id SET DEFAULT nextval('public.binda_galleries_id_seq'::regclass);


--
-- Name: binda_relation_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_relation_links ALTER COLUMN id SET DEFAULT nextval('public.binda_relation_links_id_seq'::regclass);


--
-- Name: binda_relations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_relations ALTER COLUMN id SET DEFAULT nextval('public.binda_relations_id_seq'::regclass);


--
-- Name: binda_repeaters id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_repeaters ALTER COLUMN id SET DEFAULT nextval('public.binda_repeaters_id_seq'::regclass);


--
-- Name: binda_selections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_selections ALTER COLUMN id SET DEFAULT nextval('public.binda_selections_id_seq'::regclass);


--
-- Name: binda_structures id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_structures ALTER COLUMN id SET DEFAULT nextval('public.binda_structures_id_seq'::regclass);


--
-- Name: binda_texts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_texts ALTER COLUMN id SET DEFAULT nextval('public.binda_texts_id_seq'::regclass);


--
-- Name: binda_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_users ALTER COLUMN id SET DEFAULT nextval('public.binda_users_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-18 13:14:49.70153	2020-04-18 13:14:49.70153
\.


--
-- Data for Name: binda_assets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_assets (id, type, video, image, audio, svg, field_setting_id, fieldable_type, fieldable_id, content_type, file_size, file_width, file_height, created_at, updated_at) FROM stdin;
5	Binda::Image	\N	CLAM_Website_IMG_Product1.jpg	\N	\N	16	Binda::Component	2	image/jpeg	41166	271	271	2020-04-19 17:23:26.8857	2020-04-19 17:24:45.255289
3	Binda::Image	\N	CLAM_Website_IMG_Product2.jpg	\N	\N	16	Binda::Component	1	image/jpeg	42853	271	271	2020-04-19 16:58:02.910592	2020-04-19 17:32:02.174431
2	Binda::Image	\N	CLAM_Website_IMG_3.jpg	\N	\N	15	Binda::Component	1	image/jpeg	119930	423	629	2020-04-19 16:57:29.038311	2020-04-19 17:32:02.358126
7	Binda::Image	\N	CLAM_Website_IMG_Product3.jpg	\N	\N	16	Binda::Component	3	image/jpeg	44417	271	271	2020-04-19 17:32:26.450868	2020-04-19 17:33:28.326261
6	Binda::Image	\N	CLAM_Website_IMG_2.jpg	\N	\N	15	Binda::Component	3	image/jpeg	222795	423	629	2020-04-19 17:32:26.424884	2020-04-19 17:33:28.436079
8	Binda::Image	\N	Clam_Web_OG_Image_1200x630px-01.png	\N	\N	17	Binda::Board	1	image/png	18122	1200	630	2020-05-02 14:28:39.330889	2020-05-02 14:38:40.281439
22	Binda::Image	\N	CLAM009_Website_IMG_Square.jpg	\N	\N	16	Binda::Component	10	image/jpeg	95883	271	271	2021-06-04 13:02:49.989287	2021-06-04 13:10:02.043787
26	Binda::Image	\N	C011.2.jpg	\N	\N	16	Binda::Component	12	image/jpeg	344564	542	542	2022-01-06 12:43:57.482203	2022-01-06 12:56:16.994811
12	Binda::Image	\N	C004.jpg	\N	\N	16	Binda::Component	5	image/jpeg	30298	271	271	2020-12-09 09:29:19.992786	2020-12-09 09:34:17.322296
25	Binda::Image	\N	C0011.2.jpg	\N	\N	15	Binda::Component	12	image/jpeg	1742359	1269	1887	2022-01-06 12:43:57.477367	2022-01-06 12:57:14.115571
14	Binda::Image	\N	C005.jpg	\N	\N	16	Binda::Component	6	image/jpeg	21444	271	271	2020-12-09 09:36:44.894623	2020-12-09 09:40:16.301251
13	Binda::Image	\N	C005.jpg	\N	\N	15	Binda::Component	6	image/jpeg	72857	423	629	2020-12-09 09:36:44.886204	2020-12-09 09:40:16.30392
4	Binda::Image	\N	CLAM_Website_IMG.jpg	\N	\N	15	Binda::Component	2	image/jpeg	157925	423	629	2020-04-19 17:23:26.83531	2020-12-10 12:53:07.909942
27	Binda::Image	\N	CLAM_Website_IMG-24.png	\N	\N	15	Binda::Component	13	image/png	4757251	1763	2622	2022-02-22 13:14:01.773083	2022-02-22 13:43:33.576908
28	Binda::Image	\N	CLAM_Website_IMG-25.png	\N	\N	16	Binda::Component	13	image/png	547966	1130	1130	2022-02-22 13:14:01.781401	2022-02-22 13:43:33.587356
11	Binda::Image	\N	C004_Digital.jpg	\N	\N	15	Binda::Component	5	image/jpeg	129137	423	629	2020-12-09 09:29:19.985685	2021-03-04 20:15:19.800584
15	Binda::Image	\N	CLAM_Website_IMG_Portrait.png	\N	\N	15	Binda::Component	7	image/png	295776	423	629	2021-01-08 13:40:08.977487	2021-03-04 20:16:07.440959
16	Binda::Image	\N	CLAM_Website_IMG.png	\N	\N	16	Binda::Component	7	image/png	132335	271	271	2021-01-08 13:40:08.983285	2021-03-04 20:16:07.443956
21	Binda::Image	\N	CLAM009_Website_IMG_Portrait_2.jpg	\N	\N	15	Binda::Component	10	image/jpeg	238319	423	629	2021-06-04 13:02:49.980119	2021-06-04 17:31:00.571676
17	Binda::Image	\N	CLAM_Website_Talpah_Portrait.jpg	\N	\N	15	Binda::Component	8	image/jpeg	164496	423	629	2021-03-05 11:32:27.574065	2021-03-05 11:39:02.432461
18	Binda::Image	\N	CLAM_Website_Talpah_Square.jpg	\N	\N	16	Binda::Component	8	image/jpeg	89092	271	271	2021-03-05 11:32:27.580562	2021-03-05 11:39:02.435128
19	Binda::Image	\N	CLAM_Website_Skuge_Portrait.jpg	\N	\N	15	Binda::Component	9	image/jpeg	153296	423	629	2021-04-28 16:42:28.670288	2021-04-28 16:47:12.904902
20	Binda::Image	\N	CLAM_Website_Skuge_Square.jpg	\N	\N	16	Binda::Component	9	image/jpeg	80781	271	271	2021-04-28 16:42:28.674537	2021-04-28 16:47:12.909269
23	Binda::Image	\N	C0010.jpg	\N	\N	15	Binda::Component	11	image/jpeg	76856	423	629	2021-10-01 13:07:05.259416	2021-10-01 13:11:38.24691
24	Binda::Image	\N	C010.jpg	\N	\N	16	Binda::Component	11	image/jpeg	40727	271	271	2021-10-01 13:07:05.265854	2021-10-01 13:11:38.249467
29	Binda::Image	\N	CLAM_Website_IMG-26.png	\N	\N	15	Binda::Component	14	image/png	2166478	882	1311	2022-06-01 12:42:17.734557	2022-06-01 17:20:27.03562
30	Binda::Image	\N	CLAM_Website_IMG-27.png	\N	\N	16	Binda::Component	14	image/png	745033	565	565	2022-06-01 12:42:17.74075	2022-06-01 17:20:27.040376
\.


--
-- Data for Name: binda_boards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_boards (id, name, slug, "position", structure_id) FROM stdin;
1	dashboard	dashboard	\N	1
3	Contacts	contacts	\N	4
\.


--
-- Data for Name: binda_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_categories (id, name, slug, structure_id, "position", description, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: binda_categories_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_categories_components (category_id, component_id) FROM stdin;
\.


--
-- Data for Name: binda_choices; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_choices (id, label, value, field_setting_id, created_at, updated_at) FROM stdin;
2	disabled	false	1	2020-04-18 13:19:21.586576	2020-04-18 13:19:21.586576
3	active	true	1	2020-04-18 13:19:21.600952	2020-04-18 13:19:21.600952
\.


--
-- Data for Name: binda_choices_selections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_choices_selections (id, choice_id, selection_id, created_at, updated_at) FROM stdin;
3	2	1	2020-04-18 13:19:21.638171	2020-04-18 13:19:21.638171
\.


--
-- Data for Name: binda_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_components (id, name, slug, publish_state, "position", structure_id, created_at, updated_at) FROM stdin;
1	MIMICRY OF DEATH	mimicry-of-death	published	14	2	2020-04-18 13:29:44.298555	2022-06-01 12:42:14.80482
2	FANTASIA EXFORMATION  PRINCIPLE	fantasia-exformation-principle	published	13	2	2020-04-19 17:23:25.339653	2022-06-01 12:42:15.237667
3	61218	finche-la-barca-va	published	12	2	2020-04-19 17:32:24.466652	2022-06-01 12:42:15.337678
6	K MAJIK 23	k-majik-23	published	9	2	2020-12-09 09:36:43.881871	2022-06-01 12:42:15.593838
5	POLLUTION	pollution	published	10	2	2020-12-09 09:29:19.100835	2022-06-01 12:42:15.727837
7	PHANTASMAGORIA	phantasmagoria	published	8	2	2021-01-08 13:40:07.82953	2022-06-01 12:42:16.209482
9	COMMON PRACTICES	common-practices	published	6	2	2021-04-28 16:42:26.839584	2022-06-01 12:42:16.423229
8	HOW DID I SURVIVE?	how-did-i-survive	published	6	2	2021-03-05 11:32:25.938105	2022-06-01 12:42:16.703295
10	A · • · Z	a-z	published	5	2	2021-06-04 13:02:47.716956	2022-06-01 12:42:16.820832
11	UNCAGED, UNLIMITED	uncaged-unlimited	published	4	2	2021-10-01 13:07:05.160196	2022-06-01 12:42:17.08243
12	BINEAL PONK	bineal-ponk	published	3	2	2022-01-06 12:43:55.008376	2022-06-01 12:42:17.362264
13	EMULATION OF US	emulation-of-us	published	2	2	2022-02-22 13:13:58.902318	2022-06-01 12:42:17.621566
14	SUBBO	subbo	published	1	2	2022-06-01 12:42:14.615057	2022-06-01 12:50:49.527647
\.


--
-- Data for Name: binda_dates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_dates (id, date, field_setting_id, fieldable_type, fieldable_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: binda_field_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_field_groups (id, name, slug, description, "position", layout, structure_id, created_at, updated_at) FROM stdin;
2	General details	release-general-details		1	\N	2	2020-04-18 13:27:18.952942	2020-04-19 16:56:40.88075
3	Media	release-media		2	\N	2	2020-04-19 16:56:40.767021	2020-04-19 16:56:52.039818
1	General details	dashboard-general-details		1	\N	1	2020-04-18 13:17:15.451686	2020-05-02 15:50:29.757717
6	General details	contacts-general-details		1	\N	4	2020-05-02 15:56:06.800716	2020-05-02 15:57:20.212239
7	Social	contacts-social		2	\N	4	2020-05-02 15:56:57.05011	2020-05-02 15:57:20.220133
\.


--
-- Data for Name: binda_field_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_field_settings (id, name, slug, description, "position", required, read_only, default_text, field_type, field_group_id, ancestry, allow_null, default_choice_id, created_at, updated_at) FROM stdin;
1	Maintenance Mode	maintenance-mode		1	f	f	\N	radio	1	\N	f	2	2020-04-18 13:19:19.565286	2020-05-02 14:30:28.332563
3	Website Description	website-description		2	f	f	\N	text	1	\N	t	\N	2020-04-18 13:19:29.295841	2020-05-02 14:30:28.739471
2	Website Name	website-name		3	f	f	\N	string	1	\N	t	\N	2020-04-18 13:19:22.115293	2020-05-02 14:30:29.168502
17	Website Image	website-image		4	f	f	\N	image	1	\N	t	\N	2020-05-02 14:28:18.500048	2020-05-02 14:30:29.614734
4	Catalog Number	release-catalog-number		1	f	f	\N	string	2	\N	t	\N	2020-04-18 13:27:36.797018	2020-04-18 13:50:16.390109
5	Artist Name	release-artist-name		2	f	f	\N	string	2	\N	t	\N	2020-04-18 13:31:06.285284	2020-04-18 13:50:16.814483
7	Publish Date	release-publish-date	Date of pubblication of the release.<br />Follow this pattern DD/MM/YYYY	3	f	f	\N	string	2	\N	t	\N	2020-04-18 13:35:00.896748	2020-04-18 13:50:17.24796
8	Detail	release-detail	Example:&nbsp;200 12&rdquo; VINYLS	4	f	f	\N	string	2	\N	t	\N	2020-04-18 13:39:45.908732	2020-04-18 13:50:17.667699
14	URL	release-url		5	f	f	\N	string	2	\N	t	\N	2020-04-18 13:50:15.533511	2020-04-18 13:50:49.757772
9	TrackList	release-track-list		6	f	f	\N	repeater	2	\N	t	\N	2020-04-18 13:41:33.293458	2020-04-18 14:15:16.703007
15	Cover Image	release-cover-image	<p>This image should have the following dimensions:</p>\r\n<p>Width: 360px<br />Height: 530px</p>	1	f	f	\N	image	3	\N	t	\N	2020-04-19 16:57:03.023559	2020-04-19 17:00:55.712772
16	Image	release-image	The image should have the following dimensions:<br /><br />Width: 200px<br />Height: 200px	2	f	f	\N	image	3	\N	t	\N	2020-04-19 16:57:32.920196	2020-04-19 17:02:09.745134
13	Duration	release-track-duration	Duration of the track.<br /><br />HOURS:MINUTES:SECONDS	3	f	f	\N	string	2	9	t	\N	2020-04-18 13:45:41.083881	2020-04-18 13:48:50.706355
10	Title	release-track-title		1	f	f	\N	string	2	9	t	\N	2020-04-18 13:42:38.172338	2020-04-18 13:49:49.683518
24	Email	contacts-email	\N	1	f	f	\N	string	6	\N	t	\N	2020-05-02 15:57:46.662103	2020-05-02 15:58:15.484005
25	Facebook	contacts-facebook		5	f	f	\N	string	7	\N	t	\N	2020-05-02 15:58:28.889496	2021-03-04 12:25:57.04292
27	Bandcamp	contacts-bandcamp		3	f	f	\N	string	7	\N	t	\N	2020-05-02 15:59:25.225506	2021-03-04 12:25:57.133902
28	SoundCloud	contacts-soundcloud		2	f	f	\N	string	7	\N	t	\N	2020-05-02 16:00:07.327692	2021-03-04 12:25:57.208365
26	Instagram	contacts-instagram		4	f	f	\N	string	7	\N	t	\N	2020-05-02 15:59:07.485942	2021-03-04 12:25:57.302712
29	YouTube	contacts-youtube		1	f	f	\N	string	7	\N	t	\N	2021-03-04 12:25:57.029099	2021-03-04 12:28:59.590879
\.


--
-- Data for Name: binda_field_settings_structures; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_field_settings_structures (id, field_setting_id, structure_id) FROM stdin;
\.


--
-- Data for Name: binda_galleries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_galleries (id, "position", field_setting_id, fieldable_type, fieldable_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: binda_relation_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_relation_links (id, owner_type, owner_id, dependent_type, dependent_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: binda_relations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_relations (id, field_setting_id, fieldable_type, fieldable_id) FROM stdin;
\.


--
-- Data for Name: binda_repeaters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_repeaters (id, "position", field_setting_id, fieldable_type, fieldable_id, created_at, updated_at) FROM stdin;
66	6	9	Binda::Component	8	2021-03-05 11:37:40.698482	2021-03-05 11:38:29.552316
3	0	9	Binda::Component	3	2020-04-19 17:32:26.204614	2020-05-10 12:20:49.228025
23	1	9	Binda::Component	3	2020-05-10 12:20:49.150972	2020-05-10 12:20:49.172752
67	5	9	Binda::Component	8	2021-03-05 11:37:51.65873	2021-03-05 11:38:29.580326
68	4	9	Binda::Component	8	2021-03-05 11:38:03.298412	2021-03-05 11:38:29.608012
69	3	9	Binda::Component	8	2021-03-05 11:38:14.789787	2021-03-05 11:38:29.637561
70	2	9	Binda::Component	8	2021-03-05 11:38:26.823114	2021-03-05 11:38:29.666782
60	2	9	Binda::Component	7	2021-01-08 13:51:31.227704	2021-01-08 13:51:35.241035
51	11	9	Binda::Component	7	2021-01-08 13:50:56.605846	2021-01-08 13:51:35.267888
58	4	9	Binda::Component	7	2021-01-08 13:51:24.483346	2021-01-08 13:51:35.294117
52	10	9	Binda::Component	7	2021-01-08 13:51:03.498929	2021-01-08 13:51:35.320427
30	9	9	Binda::Component	6	2020-12-09 09:37:52.675421	2020-12-09 09:39:30.137939
31	8	9	Binda::Component	6	2020-12-09 09:38:00.662323	2020-12-09 09:39:30.168906
32	7	9	Binda::Component	6	2020-12-09 09:38:12.711717	2020-12-09 09:39:30.200521
25	0	9	Binda::Component	5	2020-12-09 09:29:19.947763	2020-12-09 09:32:25.049096
26	1	9	Binda::Component	5	2020-12-09 09:31:54.088309	2020-12-09 09:32:25.084438
27	2	9	Binda::Component	5	2020-12-09 09:32:12.340164	2020-12-09 09:32:25.110614
28	3	9	Binda::Component	5	2020-12-09 09:32:24.96386	2020-12-09 09:32:25.129165
33	6	9	Binda::Component	6	2020-12-09 09:38:24.536545	2020-12-09 09:39:30.231981
34	5	9	Binda::Component	6	2020-12-09 09:38:35.586297	2020-12-09 09:39:30.267984
35	4	9	Binda::Component	6	2020-12-09 09:38:46.565771	2020-12-09 09:39:30.298757
36	3	9	Binda::Component	6	2020-12-09 09:39:04.874942	2020-12-09 09:39:30.329218
37	2	9	Binda::Component	6	2020-12-09 09:39:10.310847	2020-12-09 09:39:30.3583
29	10	9	Binda::Component	6	2020-12-09 09:36:44.83113	2020-12-09 09:39:30.386879
1	0	9	Binda::Component	1	2020-04-18 13:42:23.923652	2020-05-10 12:15:36.207804
20	1	9	Binda::Component	1	2020-05-10 12:15:01.826963	2020-05-10 12:15:36.25097
21	2	9	Binda::Component	1	2020-05-10 12:15:22.24783	2020-05-10 12:15:36.292595
22	3	9	Binda::Component	1	2020-05-10 12:15:36.16587	2020-05-10 12:15:36.320897
38	1	9	Binda::Component	6	2020-12-09 09:39:30.108279	2020-12-09 09:39:30.406431
61	1	9	Binda::Component	7	2021-01-08 13:51:34.984836	2021-01-08 13:51:35.337842
48	14	9	Binda::Component	7	2021-01-08 13:50:47.572873	2021-01-08 13:51:35.372984
53	9	9	Binda::Component	7	2021-01-08 13:51:07.223821	2021-01-08 13:51:35.400479
7	0	9	Binda::Component	2	2020-05-10 11:24:34.549472	2020-05-10 11:28:32.16906
8	1	9	Binda::Component	2	2020-05-10 11:25:07.556703	2020-05-10 11:28:31.828529
9	2	9	Binda::Component	2	2020-05-10 11:25:33.219482	2020-05-10 11:28:31.856723
10	3	9	Binda::Component	2	2020-05-10 11:25:47.905886	2020-05-10 11:28:31.884271
11	4	9	Binda::Component	2	2020-05-10 11:26:03.463229	2020-05-10 11:28:31.912241
12	5	9	Binda::Component	2	2020-05-10 11:26:21.923411	2020-05-10 11:28:31.939872
13	6	9	Binda::Component	2	2020-05-10 11:26:40.852405	2020-05-10 11:28:31.965921
14	7	9	Binda::Component	2	2020-05-10 11:27:03.863575	2020-05-10 11:28:31.993126
49	13	9	Binda::Component	7	2021-01-08 13:50:50.532793	2021-01-08 13:51:35.455416
50	12	9	Binda::Component	7	2021-01-08 13:50:53.643675	2021-01-08 13:51:35.482592
43	19	9	Binda::Component	7	2021-01-08 13:50:30.587079	2021-01-08 13:51:35.514768
44	18	9	Binda::Component	7	2021-01-08 13:50:34.16185	2021-01-08 13:51:35.54294
15	8	9	Binda::Component	2	2020-05-10 11:27:21.900403	2020-05-10 11:28:32.022236
16	9	9	Binda::Component	2	2020-05-10 11:27:45.121508	2020-05-10 11:28:32.051627
17	10	9	Binda::Component	2	2020-05-10 11:28:02.923033	2020-05-10 11:28:32.084316
18	11	9	Binda::Component	2	2020-05-10 11:28:18.695768	2020-05-10 11:28:32.113485
19	12	9	Binda::Component	2	2020-05-10 11:28:31.797055	2020-05-10 11:28:32.131185
71	1	9	Binda::Component	8	2021-03-05 11:38:29.417444	2021-03-05 11:38:29.684856
56	6	9	Binda::Component	7	2021-01-08 13:51:17.252306	2021-01-08 13:51:35.573256
59	3	9	Binda::Component	7	2021-01-08 13:51:27.808335	2021-01-08 13:51:35.601665
57	5	9	Binda::Component	7	2021-01-08 13:51:21.209499	2021-01-08 13:51:35.62805
45	17	9	Binda::Component	7	2021-01-08 13:50:37.282304	2021-01-08 13:51:35.014489
41	21	9	Binda::Component	7	2021-01-08 13:50:18.852019	2021-01-08 13:51:35.071468
54	8	9	Binda::Component	7	2021-01-08 13:51:10.773924	2021-01-08 13:51:35.09948
78	2	9	Binda::Component	9	2021-04-28 16:45:58.734534	2021-04-28 16:46:04.285657
73	7	9	Binda::Component	9	2021-04-28 16:45:03.140848	2021-04-28 16:46:04.31292
74	6	9	Binda::Component	9	2021-04-28 16:45:12.084453	2021-04-28 16:46:04.339087
75	5	9	Binda::Component	9	2021-04-28 16:45:16.249586	2021-04-28 16:46:04.366009
55	7	9	Binda::Component	7	2021-01-08 13:51:13.998755	2021-01-08 13:51:35.127335
42	20	9	Binda::Component	7	2021-01-08 13:50:23.99034	2021-01-08 13:51:35.16
76	4	9	Binda::Component	9	2021-04-28 16:45:25.945553	2021-04-28 16:46:04.393798
72	8	9	Binda::Component	9	2021-04-28 16:42:28.637235	2021-04-28 16:46:04.42082
46	16	9	Binda::Component	7	2021-01-08 13:50:41.535079	2021-01-08 13:51:35.186936
77	3	9	Binda::Component	9	2021-04-28 16:45:32.364731	2021-04-28 16:46:04.447216
47	15	9	Binda::Component	7	2021-01-08 13:50:44.559815	2021-01-08 13:51:35.213727
64	8	9	Binda::Component	8	2021-03-05 11:36:13.598621	2021-03-05 11:38:29.443374
65	7	9	Binda::Component	8	2021-03-05 11:37:19.663534	2021-03-05 11:38:29.471135
63	8	9	Binda::Component	8	2021-03-05 11:36:13.594791	2021-03-05 11:38:29.497951
62	9	9	Binda::Component	8	2021-03-05 11:32:27.523931	2021-03-05 11:38:29.525275
79	1	9	Binda::Component	9	2021-04-28 16:46:04.255577	2021-04-28 16:46:04.465181
80	2	9	Binda::Component	10	2021-06-04 13:02:49.942405	2021-06-04 13:09:37.007978
81	1	9	Binda::Component	10	2021-06-04 13:09:36.968429	2021-06-04 13:09:37.026901
90	2	9	Binda::Component	11	2021-10-01 13:10:13.030163	2021-10-01 13:10:32.756136
108	4	9	Binda::Component	13	2022-02-22 13:42:50.252421	2022-02-22 13:43:16.455204
91	1	9	Binda::Component	11	2021-10-01 13:10:32.730126	2021-10-01 13:10:32.774412
88	4	9	Binda::Component	11	2021-10-01 13:09:40.844349	2021-10-01 13:10:32.810815
89	3	9	Binda::Component	11	2021-10-01 13:09:55.434894	2021-10-01 13:10:32.837387
106	6	9	Binda::Component	13	2022-02-22 13:42:26.236876	2022-02-22 13:43:16.493495
87	5	9	Binda::Component	11	2021-10-01 13:09:29.165231	2021-10-01 13:10:32.864583
82	9	9	Binda::Component	11	2021-10-01 13:07:05.222028	2021-10-01 13:10:32.895458
83	8	9	Binda::Component	11	2021-10-01 13:08:38.311368	2021-10-01 13:10:32.922919
107	5	9	Binda::Component	13	2022-02-22 13:42:35.399947	2022-02-22 13:43:16.523918
105	7	9	Binda::Component	13	2022-02-22 13:42:12.321933	2022-02-22 13:43:16.549459
84	7	9	Binda::Component	11	2021-10-01 13:08:38.322487	2021-10-01 13:10:32.95539
85	7	9	Binda::Component	11	2021-10-01 13:08:38.593646	2021-10-01 13:10:32.981229
86	6	9	Binda::Component	11	2021-10-01 13:09:19.565035	2021-10-01 13:10:33.008343
118	4	9	Binda::Component	14	2022-06-01 12:45:02.611608	2022-06-01 12:45:23.515274
119	3	9	Binda::Component	14	2022-06-01 12:45:09.314497	2022-06-01 12:45:23.541102
120	2	9	Binda::Component	14	2022-06-01 12:45:16.67312	2022-06-01 12:45:23.566629
121	1	9	Binda::Component	14	2022-06-01 12:45:23.492027	2022-06-01 12:45:23.583176
112	10	9	Binda::Component	14	2022-06-01 12:42:17.687801	2022-06-01 12:45:23.615722
113	9	9	Binda::Component	14	2022-06-01 12:43:57.411213	2022-06-01 12:45:23.640917
114	8	9	Binda::Component	14	2022-06-01 12:44:05.925827	2022-06-01 12:45:23.665913
115	7	9	Binda::Component	14	2022-06-01 12:44:17.927404	2022-06-01 12:45:23.691137
116	6	9	Binda::Component	14	2022-06-01 12:44:26.048351	2022-06-01 12:45:23.716141
117	5	9	Binda::Component	14	2022-06-01 12:44:42.62065	2022-06-01 12:45:23.741907
103	9	9	Binda::Component	13	2022-02-22 13:41:29.58072	2022-02-22 13:43:16.574962
104	8	9	Binda::Component	13	2022-02-22 13:41:38.786791	2022-02-22 13:43:16.600794
102	10	9	Binda::Component	13	2022-02-22 13:14:01.705385	2022-02-22 13:43:16.62669
109	3	9	Binda::Component	13	2022-02-22 13:42:58.266759	2022-02-22 13:43:16.652194
110	2	9	Binda::Component	13	2022-02-22 13:43:11.803224	2022-02-22 13:43:16.678873
111	1	9	Binda::Component	13	2022-02-22 13:43:16.42224	2022-02-22 13:43:16.699181
92	10	9	Binda::Component	12	2022-01-06 12:43:57.43378	2022-01-06 12:46:48.706865
93	9	9	Binda::Component	12	2022-01-06 12:45:34.175067	2022-01-06 12:46:48.733707
94	8	9	Binda::Component	12	2022-01-06 12:45:54.953322	2022-01-06 12:46:48.766153
95	7	9	Binda::Component	12	2022-01-06 12:46:02.759538	2022-01-06 12:46:48.794056
96	6	9	Binda::Component	12	2022-01-06 12:46:04.789831	2022-01-06 12:46:48.821715
97	5	9	Binda::Component	12	2022-01-06 12:46:17.598674	2022-01-06 12:46:48.848733
98	4	9	Binda::Component	12	2022-01-06 12:46:23.809153	2022-01-06 12:46:48.875589
99	3	9	Binda::Component	12	2022-01-06 12:46:33.232912	2022-01-06 12:46:48.902258
100	2	9	Binda::Component	12	2022-01-06 12:46:41.358073	2022-01-06 12:46:48.929701
101	1	9	Binda::Component	12	2022-01-06 12:46:48.682136	2022-01-06 12:46:48.947217
\.


--
-- Data for Name: binda_selections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_selections (id, field_setting_id, fieldable_type, fieldable_id, type, created_at, updated_at) FROM stdin;
1	1	Binda::Board	1	Binda::Radio	2020-04-18 13:19:20.719848	2020-04-18 13:19:20.719848
\.


--
-- Data for Name: binda_structures; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_structures (id, name, slug, "position", has_categories, has_preview, instance_type, created_at, updated_at) FROM stdin;
1	dashboard	dashboard	4	f	f	board	2020-04-18 13:17:15.120012	2020-05-02 15:56:06.972947
2	Release	release	3	f	f	component	2020-04-18 13:27:18.89665	2020-05-02 15:56:07.221566
4	Contacts	contacts	1	f	f	board	2020-05-02 15:56:06.773845	2020-05-02 15:56:07.25976
\.


--
-- Data for Name: binda_texts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_texts (id, content, "position", field_setting_id, fieldable_type, fieldable_id, type, created_at, updated_at) FROM stdin;
6	12/10/2019	\N	7	Binda::Component	1	Binda::String	2020-04-18 13:35:02.240705	2020-04-18 13:38:15.987597
7	200 12”VINYLS	\N	8	Binda::Component	1	Binda::String	2020-04-18 13:39:47.865765	2020-04-18 14:14:32.28622
9	CHAOS PIT	\N	10	Binda::Repeater	1	Binda::String	2020-04-18 13:42:38.608076	2020-04-18 14:14:32.322156
14	\N	\N	13	Binda::Component	1	Binda::String	2020-04-18 14:14:32.535045	2020-04-18 14:14:32.535045
16	\N	\N	10	Binda::Component	1	Binda::String	2020-04-18 14:14:32.646492	2020-04-18 14:14:32.646492
26	\N	\N	13	Binda::Component	2	Binda::String	2020-04-19 17:23:26.919885	2020-04-19 17:23:26.919885
27	\N	\N	10	Binda::Component	2	Binda::String	2020-04-19 17:23:26.952316	2020-04-19 17:23:26.952316
22	200 CDs	\N	8	Binda::Component	2	Binda::String	2020-04-19 17:23:26.546625	2020-04-19 17:24:45.22748
21	13/04/2020	\N	7	Binda::Component	2	Binda::String	2020-04-19 17:23:26.514197	2020-04-19 17:24:45.234687
20	Voronhil	\N	5	Binda::Component	2	Binda::String	2020-04-19 17:23:26.479626	2020-04-19 17:24:45.240925
19	CLAM003	\N	4	Binda::Component	2	Binda::String	2020-04-19 17:23:26.445081	2020-04-19 17:24:45.24823
4	Kuthi Jin	\N	5	Binda::Component	1	Binda::String	2020-04-18 13:31:07.238249	2020-04-19 17:32:02.160098
3	CLAM001	\N	4	Binda::Component	1	Binda::String	2020-04-18 13:29:44.517389	2020-04-19 17:32:02.167044
35	\N	\N	13	Binda::Component	3	Binda::String	2020-04-19 17:32:26.483978	2020-04-19 17:32:26.483978
36	\N	\N	10	Binda::Component	3	Binda::String	2020-04-19 17:32:26.516512	2020-04-19 17:32:26.516512
28	CLAM002	\N	4	Binda::Component	3	Binda::String	2020-04-19 17:32:26.045117	2020-04-19 17:33:28.318036
1	Clam	\N	2	Binda::Board	1	Binda::String	2020-04-18 13:19:22.806128	2020-05-02 14:38:40.264588
44		\N	24	Binda::Board	3	Binda::String	2020-05-02 15:57:47.100555	2020-05-02 16:01:16.481438
189	https://www.youtube.com/channel/UCcPnow6iHgZ6TgkuRY05M5w	\N	29	Binda::Board	3	Binda::String	2021-03-04 12:25:57.450556	2021-03-04 20:24:56.117698
45	https://www.youtube.com/channel/UCcPnow6iHgZ6TgkuRY05M5w	\N	25	Binda::Board	3	Binda::String	2020-05-02 15:58:29.354076	2021-03-04 20:25:34.042937
55	03:03	\N	13	Binda::Repeater	9	Binda::String	2020-05-10 11:25:33.306797	2020-05-10 11:29:53.144096
56	ETERNAL RETURN	\N	10	Binda::Repeater	9	Binda::String	2020-05-10 11:25:33.313409	2020-05-10 11:29:53.145421
57	03:11	\N	13	Binda::Repeater	10	Binda::String	2020-05-10 11:25:48.012056	2020-05-10 11:29:53.151349
58	POWER OUTAGE, SINKING SPACESHIP	\N	10	Binda::Repeater	10	Binda::String	2020-05-10 11:25:48.017723	2020-05-10 11:29:53.152546
197	\N	\N	13	Binda::Component	8	Binda::String	2021-03-05 11:32:27.586246	2021-03-05 11:32:27.586246
198	\N	\N	10	Binda::Component	8	Binda::String	2021-03-05 11:32:27.59123	2021-03-05 11:32:27.59123
23	https://clam-pressure.bandcamp.com/album/clam003-fantasia-exformation-principle	\N	14	Binda::Component	2	Binda::String	2020-04-19 17:23:26.577693	2020-05-10 11:29:53.130873
53	04:04	\N	13	Binda::Repeater	8	Binda::String	2020-05-10 11:25:07.646133	2020-05-10 11:29:53.135801
54	BLEEDING TOOTH	\N	10	Binda::Repeater	8	Binda::String	2020-05-10 11:25:07.652888	2020-05-10 11:29:53.137405
59	02:49	\N	13	Binda::Repeater	11	Binda::String	2020-05-10 11:26:03.646026	2020-05-10 11:29:53.158248
60	DISCARDED EXOSKELETON	\N	10	Binda::Repeater	11	Binda::String	2020-05-10 11:26:03.653672	2020-05-10 11:29:53.159573
61	03:07	\N	13	Binda::Repeater	12	Binda::String	2020-05-10 11:26:22.091654	2020-05-10 11:29:53.165066
62	TON619	\N	10	Binda::Repeater	12	Binda::String	2020-05-10 11:26:22.097177	2020-05-10 11:29:53.166211
63	04:07	\N	13	Binda::Repeater	13	Binda::String	2020-05-10 11:26:41.069536	2020-05-10 11:29:53.171975
64	NEO-WASP	\N	10	Binda::Repeater	13	Binda::String	2020-05-10 11:26:41.076069	2020-05-10 11:29:53.173221
65	03:00	\N	13	Binda::Repeater	14	Binda::String	2020-05-10 11:27:04.122282	2020-05-10 11:29:53.179683
66	SINGULARITY	\N	10	Binda::Repeater	14	Binda::String	2020-05-10 11:27:04.134844	2020-05-10 11:29:53.181116
67	04:31	\N	13	Binda::Repeater	15	Binda::String	2020-05-10 11:27:22.155306	2020-05-10 11:29:53.186983
69	04:08	\N	13	Binda::Repeater	16	Binda::String	2020-05-10 11:27:45.403856	2020-05-10 11:29:53.194641
12	03:44	\N	13	Binda::Repeater	1	Binda::String	2020-04-18 13:45:42.370748	2020-05-10 12:15:52.415644
32	https://clam-pressure.bandcamp.com/album/clam002-161218	\N	14	Binda::Component	3	Binda::String	2020-04-19 17:32:26.174963	2020-05-10 12:21:13.3247
47	https://clam-pressure.bandcamp.com/	\N	27	Binda::Board	3	Binda::String	2020-05-02 15:59:26.132687	2020-05-10 12:29:21.701683
30	02/02/2020	\N	7	Binda::Component	3	Binda::String	2020-04-19 17:32:26.107605	2020-05-10 12:21:13.334689
29	011668 & S280F	\N	5	Binda::Component	3	Binda::String	2020-04-19 17:32:26.075619	2020-05-10 12:21:13.336206
34	TENDRE AEL & S280F - ,/ 161218 (ft. 011668)	\N	10	Binda::Repeater	3	Binda::String	2020-04-19 17:32:26.378772	2020-05-10 12:21:13.338658
33	06:07	\N	13	Binda::Repeater	3	Binda::String	2020-04-19 17:32:26.346739	2020-05-10 12:21:13.339815
48	https://soundcloud.com/clam-pressure	\N	28	Binda::Board	3	Binda::String	2020-05-02 16:00:09.266038	2020-05-10 12:29:21.702731
13	https://clam-pressure.bandcamp.com/album/clam001-mimicry-of-death	\N	14	Binda::Component	1	Binda::String	2020-04-18 13:50:16.363056	2020-05-10 12:22:14.371133
2	THE INFINITE CULT OF PRESSURE PEARLS.	\N	3	Binda::Board	1	\N	2020-04-18 13:19:30.403628	2020-05-10 12:30:20.620123
31	150 BLACK / 50 PINK 12”VINYLS	\N	8	Binda::Component	3	Binda::String	2020-04-19 17:32:26.140815	2020-05-10 12:23:46.675048
180	05	\N	10	Binda::Repeater	57	Binda::String	2021-01-08 13:51:21.690487	2021-01-08 13:51:52.517557
46	https://www.instagram.com/clam.pressure/?hl=en	\N	26	Binda::Board	3	Binda::String	2020-05-02 15:59:08.567001	2020-05-10 12:31:56.195486
166	12	\N	10	Binda::Repeater	50	Binda::String	2021-01-08 13:50:53.917487	2021-01-08 13:51:52.488575
152	19	\N	10	Binda::Repeater	43	Binda::String	2021-01-08 13:50:30.719089	2021-01-08 13:51:52.495017
154	18	\N	10	Binda::Repeater	44	Binda::String	2021-01-08 13:50:34.329665	2021-01-08 13:51:52.500573
178	06	\N	10	Binda::Repeater	56	Binda::String	2021-01-08 13:51:17.766841	2021-01-08 13:51:52.506303
184	03	\N	10	Binda::Repeater	59	Binda::String	2021-01-08 13:51:27.994107	2021-01-08 13:51:52.511987
156	17	\N	10	Binda::Repeater	45	Binda::String	2021-01-08 13:50:37.367626	2021-01-08 13:51:52.523414
148	21	\N	10	Binda::Repeater	41	Binda::String	2021-01-08 13:50:18.9487	2021-01-08 13:51:52.528984
174	08	\N	10	Binda::Repeater	54	Binda::String	2021-01-08 13:51:11.260175	2021-01-08 13:51:52.534674
176	07	\N	10	Binda::Repeater	55	Binda::String	2021-01-08 13:51:14.290168	2021-01-08 13:51:52.540077
150	20	\N	10	Binda::Repeater	42	Binda::String	2021-01-08 13:50:24.10553	2021-01-08 13:51:52.545837
158	16	\N	10	Binda::Repeater	46	Binda::String	2021-01-08 13:50:41.756413	2021-01-08 13:51:52.551458
68	CLUSTERSHOT W/ KUTHI JIN	\N	10	Binda::Repeater	15	Binda::String	2020-05-10 11:27:22.160829	2020-05-10 11:29:53.188286
70	OVEREXPOSURE	\N	10	Binda::Repeater	16	Binda::String	2020-05-10 11:27:45.409281	2020-05-10 11:29:53.195902
71	03:29	\N	13	Binda::Repeater	17	Binda::String	2020-05-10 11:28:03.352418	2020-05-10 11:29:53.20162
72	PURGING DAGGER	\N	10	Binda::Repeater	17	Binda::String	2020-05-10 11:28:03.360092	2020-05-10 11:29:53.202774
73	03:32	\N	13	Binda::Repeater	18	Binda::String	2020-05-10 11:28:19.097107	2020-05-10 11:29:53.208289
74	THE BLACK RAT	\N	10	Binda::Repeater	18	Binda::String	2020-05-10 11:28:19.102492	2020-05-10 11:29:53.209409
75	04:04	\N	13	Binda::Repeater	19	Binda::String	2020-05-10 11:28:32.137689	2020-05-10 11:29:53.214903
76	CLEAN CUTS	\N	10	Binda::Repeater	19	Binda::String	2020-05-10 11:28:32.142866	2020-05-10 11:29:53.216146
51	03:53	\N	13	Binda::Repeater	7	Binda::String	2020-05-10 11:24:34.617722	2020-05-10 11:29:53.222114
52	FERAL RUPTURE	\N	10	Binda::Repeater	7	Binda::String	2020-05-10 11:24:34.623499	2020-05-10 11:29:53.223331
77	02:41	\N	13	Binda::Repeater	20	Binda::String	2020-05-10 12:15:01.942616	2020-05-10 12:15:52.4228
78	LAST RITUAL	\N	10	Binda::Repeater	20	Binda::String	2020-05-10 12:15:01.953676	2020-05-10 12:15:52.424397
79	02:23	\N	13	Binda::Repeater	21	Binda::String	2020-05-10 12:15:22.335792	2020-05-10 12:15:52.431676
80	COMFORT ZONES	\N	10	Binda::Repeater	21	Binda::String	2020-05-10 12:15:22.341611	2020-05-10 12:15:52.433068
81	03:33	\N	13	Binda::Repeater	22	Binda::String	2020-05-10 12:15:36.331757	2020-05-10 12:15:52.4392
82	THE CREATOR?	\N	10	Binda::Repeater	22	Binda::String	2020-05-10 12:15:36.341668	2020-05-10 12:15:52.440547
83	08:47	\N	13	Binda::Repeater	23	Binda::String	2020-05-10 12:20:49.182201	2020-05-10 12:21:13.345411
84	HIGH CHARITY ) RED EARTH PURIFICATION CEREMONY (ft. vvxxii)	\N	10	Binda::Repeater	23	Binda::String	2020-05-10 12:20:49.191149	2020-05-10 12:21:13.346644
200	PRESENT DAY	\N	10	Binda::Repeater	63	Binda::String	2021-03-05 11:36:13.689791	2021-03-05 11:39:02.490448
101	\N	\N	13	Binda::Component	5	Binda::String	2020-12-09 09:29:19.998659	2020-12-09 09:29:19.998659
102	\N	\N	10	Binda::Component	5	Binda::String	2020-12-09 09:29:20.008453	2020-12-09 09:29:20.008453
94	CLAM004	\N	4	Binda::Component	5	Binda::String	2020-12-09 09:29:19.907438	2020-12-09 09:34:17.313063
95	Tropical Interface	\N	5	Binda::Component	5	Binda::String	2020-12-09 09:29:19.91674	2020-12-09 09:34:17.314561
96	04/06/2020	\N	7	Binda::Component	5	Binda::String	2020-12-09 09:29:19.931531	2020-12-09 09:34:17.315805
98	https://clam-pressure.bandcamp.com/album/clam004-pollution	\N	14	Binda::Component	5	Binda::String	2020-12-09 09:29:19.942494	2020-12-09 09:34:17.317843
99	04:37	\N	13	Binda::Repeater	25	Binda::String	2020-12-09 09:29:19.971915	2020-12-09 09:34:17.326175
100	ANCIENT W/ PIXELORD 	\N	10	Binda::Repeater	25	Binda::String	2020-12-09 09:29:19.97728	2020-12-09 09:34:17.327577
103	04:03	\N	13	Binda::Repeater	26	Binda::String	2020-12-09 09:31:54.139344	2020-12-09 09:34:17.333197
104	MELT 	\N	10	Binda::Repeater	26	Binda::String	2020-12-09 09:31:54.144955	2020-12-09 09:34:17.334289
105	04:19	\N	13	Binda::Repeater	27	Binda::String	2020-12-09 09:32:12.514319	2020-12-09 09:34:17.339734
106	REAL MFG 	\N	10	Binda::Repeater	27	Binda::String	2020-12-09 09:32:12.519875	2020-12-09 09:34:17.340813
107	03:31	\N	13	Binda::Repeater	28	Binda::String	2020-12-09 09:32:25.135902	2020-12-09 09:34:17.346071
108	POLLUTION ANTHEM 	\N	10	Binda::Repeater	28	Binda::String	2020-12-09 09:32:25.141241	2020-12-09 09:34:17.347171
97	DIGITAL RELEASE	\N	8	Binda::Component	5	Binda::String	2020-12-09 09:29:19.937318	2020-12-09 09:35:54.389806
116	\N	\N	13	Binda::Component	6	Binda::String	2020-12-09 09:36:44.904515	2020-12-09 09:36:44.904515
117	\N	\N	10	Binda::Component	6	Binda::String	2020-12-09 09:36:44.913674	2020-12-09 09:36:44.913674
224	\N	\N	13	Binda::Component	9	Binda::String	2021-04-28 16:42:28.679587	2021-04-28 16:42:28.679587
225	\N	\N	10	Binda::Component	9	Binda::String	2021-04-28 16:42:28.684381	2021-04-28 16:42:28.684381
112	DIGITAL RELEASE	\N	8	Binda::Component	6	Binda::String	2020-12-09 09:36:44.816912	2020-12-09 09:40:16.2951
113	https://clam-pressure.bandcamp.com/album/clam005-k-majik-23	\N	14	Binda::Component	6	Binda::String	2020-12-09 09:36:44.823448	2020-12-09 09:40:16.296484
109	CLAM005	\N	4	Binda::Component	6	Binda::String	2020-12-09 09:36:44.800216	2020-12-09 09:40:16.297677
110	KUTHI JIN	\N	5	Binda::Component	6	Binda::String	2020-12-09 09:36:44.805576	2020-12-09 09:40:16.298806
111	30/09/2020	\N	7	Binda::Component	6	Binda::String	2020-12-09 09:36:44.811496	2020-12-09 09:40:16.299924
118	06:20	\N	13	Binda::Repeater	30	Binda::String	2020-12-09 09:37:52.741202	2020-12-09 09:40:16.310505
119	KLIT SUIT W/ CAPO 	\N	10	Binda::Repeater	30	Binda::String	2020-12-09 09:37:52.755828	2020-12-09 09:40:16.31209
120	11:34	\N	13	Binda::Repeater	31	Binda::String	2020-12-09 09:38:00.738968	2020-12-09 09:40:16.318734
121	TRIKMAZTER 	\N	10	Binda::Repeater	31	Binda::String	2020-12-09 09:38:00.744291	2020-12-09 09:40:16.32008
122	06:31	\N	13	Binda::Repeater	32	Binda::String	2020-12-09 09:38:12.8648	2020-12-09 09:40:16.325298
123	ANTIKASHIZHA W/ VORONHIL 	\N	10	Binda::Repeater	32	Binda::String	2020-12-09 09:38:12.872788	2020-12-09 09:40:16.326384
124	05:41	\N	13	Binda::Repeater	33	Binda::String	2020-12-09 09:38:24.674267	2020-12-09 09:40:16.331818
125	JWELEZ 	\N	10	Binda::Repeater	33	Binda::String	2020-12-09 09:38:24.679691	2020-12-09 09:40:16.333015
199	03:35	\N	13	Binda::Repeater	63	Binda::String	2021-03-05 11:36:13.682397	2021-04-28 16:49:27.349972
126	05:00	\N	13	Binda::Repeater	34	Binda::String	2020-12-09 09:38:35.75818	2020-12-09 09:40:16.337994
127	VAGINAL GROOVE, KUNG POW PENIS 	\N	10	Binda::Repeater	34	Binda::String	2020-12-09 09:38:35.763359	2020-12-09 09:40:16.340656
128	05:04	\N	13	Binda::Repeater	35	Binda::String	2020-12-09 09:38:46.762493	2020-12-09 09:40:16.346645
129	DROOOL 	\N	10	Binda::Repeater	35	Binda::String	2020-12-09 09:38:46.767524	2020-12-09 09:40:16.348497
130	07:34	\N	13	Binda::Repeater	36	Binda::String	2020-12-09 09:39:05.10684	2020-12-09 09:40:16.354505
131	MAMA, LIFE MIRAKLE 	\N	10	Binda::Repeater	36	Binda::String	2020-12-09 09:39:05.112562	2020-12-09 09:40:16.355674
132	04:00	\N	13	Binda::Repeater	37	Binda::String	2020-12-09 09:39:10.531647	2020-12-09 09:40:16.360869
133	THE LOVE (AGE OF K) 	\N	10	Binda::Repeater	37	Binda::String	2020-12-09 09:39:10.536868	2020-12-09 09:40:16.361943
114	02:08	\N	13	Binda::Repeater	29	Binda::String	2020-12-09 09:36:44.865305	2020-12-09 09:40:16.36705
115	SORTE. . . 	\N	10	Binda::Repeater	29	Binda::String	2020-12-09 09:36:44.873694	2020-12-09 09:40:16.368272
134	06:34	\N	13	Binda::Repeater	38	Binda::String	2020-12-09 09:39:30.413584	2020-12-09 09:40:16.373443
135	MAJIK 23 	\N	10	Binda::Repeater	38	Binda::String	2020-12-09 09:39:30.419205	2020-12-09 09:40:16.374485
143	\N	\N	13	Binda::Component	7	Binda::String	2021-01-08 13:40:08.989092	2021-01-08 13:40:08.989092
144	\N	\N	10	Binda::Component	7	Binda::String	2021-01-08 13:40:08.994183	2021-01-08 13:40:08.994183
138	29/01/2021	\N	7	Binda::Component	7	Binda::String	2021-01-08 13:40:08.921808	2021-01-08 13:49:25.63879
139	DIGITAL RELEASE	\N	8	Binda::Component	7	Binda::String	2021-01-08 13:40:08.926896	2021-01-08 13:49:25.639805
140	https://clam-pressure.bandcamp.com/album/clam006-phantasmagoria	\N	14	Binda::Component	7	Binda::String	2021-01-08 13:40:08.931893	2021-01-08 13:49:25.640818
170	10	\N	10	Binda::Repeater	52	Binda::String	2021-01-08 13:51:03.89636	2021-01-08 13:51:52.459574
188	01	\N	10	Binda::Repeater	61	Binda::String	2021-01-08 13:51:35.349825	2021-01-08 13:51:52.46551
190	CLAM007	\N	4	Binda::Component	8	Binda::String	2021-03-05 11:32:27.493808	2021-03-05 11:39:02.426107
191	TALPAH	\N	5	Binda::Component	8	Binda::String	2021-03-05 11:32:27.503087	2021-03-05 11:39:02.427699
192	01/04/2021	\N	7	Binda::Component	8	Binda::String	2021-03-05 11:32:27.508262	2021-03-05 11:39:02.428915
193	DIGITAL RELEASE	\N	8	Binda::Component	8	Binda::String	2021-03-05 11:32:27.51338	2021-03-05 11:39:02.429967
194	https://clam-pressure.bandcamp.com/album/clam007-how-did-i-survive	\N	14	Binda::Component	8	Binda::String	2021-03-05 11:32:27.518566	2021-03-05 11:39:02.430978
206	HOLE W/ DEEPHO & DERIANSKY	\N	10	Binda::Repeater	66	Binda::String	2021-03-05 11:37:40.846763	2021-03-05 11:39:02.441472
208	INSECURITY	\N	10	Binda::Repeater	67	Binda::String	2021-03-05 11:37:51.829706	2021-03-05 11:39:02.448138
210	TIME BENDING W/ KUTHI JIN	\N	10	Binda::Repeater	68	Binda::String	2021-03-05 11:38:03.498023	2021-03-05 11:39:02.45424
212	THROAT SINGING	\N	10	Binda::Repeater	69	Binda::String	2021-03-05 11:38:15.086015	2021-03-05 11:39:02.46006
213	03:06	\N	13	Binda::Repeater	70	Binda::String	2021-03-05 11:38:27.075978	2021-03-05 11:39:02.465148
214	3MINTRIP W/ DEEPHO	\N	10	Binda::Repeater	70	Binda::String	2021-03-05 11:38:27.080957	2021-03-05 11:39:02.466381
216	TURN ME A	\N	10	Binda::Repeater	71	Binda::String	2021-03-05 11:38:29.696511	2021-03-05 11:39:02.472425
186	02	\N	10	Binda::Repeater	60	Binda::String	2021-01-08 13:51:31.920145	2021-01-08 13:51:52.441384
202	VACUUM W/ TANCA	\N	10	Binda::Repeater	64	Binda::String	2021-03-05 11:36:13.787231	2021-03-05 11:39:02.478357
168	11	\N	10	Binda::Repeater	51	Binda::String	2021-01-08 13:50:56.957545	2021-01-08 13:51:52.447549
182	04	\N	10	Binda::Repeater	58	Binda::String	2021-01-08 13:51:24.595805	2021-01-08 13:51:52.453473
204	NOT FUNNY	\N	10	Binda::Repeater	65	Binda::String	2021-03-05 11:37:19.722228	2021-03-05 11:39:02.484383
162	14	\N	10	Binda::Repeater	48	Binda::String	2021-01-08 13:50:47.83606	2021-01-08 13:51:52.47152
172	09	\N	10	Binda::Repeater	53	Binda::String	2021-01-08 13:51:07.576803	2021-01-08 13:51:52.47728
211	03:42	\N	13	Binda::Repeater	69	Binda::String	2021-03-05 11:38:15.077562	2021-03-12 12:43:28.317366
164	13	\N	10	Binda::Repeater	49	Binda::String	2021-01-08 13:50:50.845491	2021-01-08 13:51:52.482998
201	03:33	\N	13	Binda::Repeater	64	Binda::String	2021-03-05 11:36:13.762902	2021-03-22 08:30:54.784401
136	CLAM006	\N	4	Binda::Component	7	Binda::String	2021-01-08 13:40:08.908776	2021-01-08 13:52:00.438734
181	05:49	\N	13	Binda::Repeater	58	Binda::String	2021-01-08 13:51:24.589784	2021-01-08 14:24:37.888536
205	03:45	\N	13	Binda::Repeater	66	Binda::String	2021-03-05 11:37:40.840915	2021-04-28 16:49:27.290219
167	05:08	\N	13	Binda::Repeater	51	Binda::String	2021-01-08 13:50:56.95242	2021-01-18 16:00:50.192365
137	Voronhil	\N	5	Binda::Component	7	Binda::String	2021-01-08 13:40:08.916733	2021-01-18 16:01:21.269134
185	04:18	\N	13	Binda::Repeater	60	Binda::String	2021-01-08 13:51:31.911135	2021-01-29 13:20:21.182438
169	04:04	\N	13	Binda::Repeater	52	Binda::String	2021-01-08 13:51:03.890636	2021-01-29 13:20:21.188549
187	04:43	\N	13	Binda::Repeater	61	Binda::String	2021-01-08 13:51:35.344435	2021-01-29 13:20:21.19329
161	05:19	\N	13	Binda::Repeater	48	Binda::String	2021-01-08 13:50:47.831235	2021-01-29 13:20:21.198185
171	04:40	\N	13	Binda::Repeater	53	Binda::String	2021-01-08 13:51:07.571381	2021-01-29 13:20:21.202842
163	03:36	\N	13	Binda::Repeater	49	Binda::String	2021-01-08 13:50:50.84034	2021-01-29 13:20:21.207361
165	04:34	\N	13	Binda::Repeater	50	Binda::String	2021-01-08 13:50:53.912056	2021-01-29 13:20:21.212272
207	03:20	\N	13	Binda::Repeater	67	Binda::String	2021-03-05 11:37:51.824477	2021-04-28 16:49:27.307988
209	03:35	\N	13	Binda::Repeater	68	Binda::String	2021-03-05 11:38:03.492422	2021-04-28 16:49:27.320139
215	04:24	\N	13	Binda::Repeater	71	Binda::String	2021-03-05 11:38:29.691219	2021-04-28 16:49:27.327587
203	03:04	\N	13	Binda::Repeater	65	Binda::String	2021-03-05 11:37:19.716855	2021-04-28 16:49:27.338006
195	03:22	\N	13	Binda::Repeater	62	Binda::String	2021-03-05 11:32:27.555974	2021-04-28 16:49:27.359345
160	15	\N	10	Binda::Repeater	47	Binda::String	2021-01-08 13:50:44.807839	2021-01-08 13:51:52.557194
151	05:10	\N	13	Binda::Repeater	43	Binda::String	2021-01-08 13:50:30.714244	2021-01-29 13:20:21.216745
153	03:55	\N	13	Binda::Repeater	44	Binda::String	2021-01-08 13:50:34.324633	2021-01-29 13:20:21.222318
177	04:32	\N	13	Binda::Repeater	56	Binda::String	2021-01-08 13:51:17.761882	2021-01-29 13:20:21.226742
183	05:21	\N	13	Binda::Repeater	59	Binda::String	2021-01-08 13:51:27.989238	2021-01-29 13:20:21.231706
179	04:34	\N	13	Binda::Repeater	57	Binda::String	2021-01-08 13:51:21.685408	2021-01-29 13:20:21.236094
155	04:51	\N	13	Binda::Repeater	45	Binda::String	2021-01-08 13:50:37.362794	2021-01-29 13:20:21.241304
147	08:16	\N	13	Binda::Repeater	41	Binda::String	2021-01-08 13:50:18.94283	2021-01-29 13:20:21.245918
173	04:04	\N	13	Binda::Repeater	54	Binda::String	2021-01-08 13:51:11.251663	2021-01-29 13:20:21.250735
175	04:07	\N	13	Binda::Repeater	55	Binda::String	2021-01-08 13:51:14.285214	2021-01-29 13:20:21.255215
149	06:14	\N	13	Binda::Repeater	42	Binda::String	2021-01-08 13:50:24.100375	2021-01-29 13:20:21.259766
157	04:43	\N	13	Binda::Repeater	46	Binda::String	2021-01-08 13:50:41.751096	2021-01-29 13:20:21.264225
159	04:26	\N	13	Binda::Repeater	47	Binda::String	2021-01-08 13:50:44.802841	2021-01-29 13:20:21.268874
196	THE BEGINNING AND THE END ARE ONE AND THE SAME	\N	10	Binda::Repeater	62	Binda::String	2021-03-05 11:32:27.563499	2021-03-05 11:39:02.496792
217	CLAM008	\N	4	Binda::Component	9	Binda::String	2021-04-28 16:42:28.605561	2021-04-28 16:47:12.899018
218	AMISH BOY	\N	5	Binda::Component	9	Binda::String	2021-04-28 16:42:28.611543	2021-04-28 16:47:12.900318
219	06/05/2021	\N	7	Binda::Component	9	Binda::String	2021-04-28 16:42:28.61662	2021-04-28 16:47:12.901396
220	DIGITAL RELEASE	\N	8	Binda::Component	9	Binda::String	2021-04-28 16:42:28.627611	2021-04-28 16:47:12.902415
236	05:11	\N	13	Binda::Repeater	78	Binda::String	2021-04-28 16:45:58.758629	2021-04-28 16:47:12.914195
237	DISTO SKUGE MEDLEY	\N	10	Binda::Repeater	78	Binda::String	2021-04-28 16:45:58.764093	2021-04-28 16:47:12.915485
227	KITCHEN BEE	\N	10	Binda::Repeater	73	Binda::String	2021-04-28 16:45:03.200857	2021-04-28 16:47:12.922578
229	AUTHORITEIT	\N	10	Binda::Repeater	74	Binda::String	2021-04-28 16:45:12.168633	2021-04-28 16:47:12.929077
231	SOLAR FASCINUUM	\N	10	Binda::Repeater	75	Binda::String	2021-04-28 16:45:16.385372	2021-04-28 16:47:12.935205
232	03:34	\N	13	Binda::Repeater	76	Binda::String	2021-04-28 16:45:26.043052	2021-04-28 16:47:12.940539
233	SHILOH	\N	10	Binda::Repeater	76	Binda::String	2021-04-28 16:45:26.047757	2021-04-28 16:47:12.941634
223	ROCK A BILLY	\N	10	Binda::Repeater	72	Binda::String	2021-04-28 16:42:28.663039	2021-04-28 16:47:12.948112
235	OMETHYLASETHYLIC	\N	10	Binda::Repeater	77	Binda::String	2021-04-28 16:45:32.530632	2021-04-28 16:47:12.954354
239	VASELINE	\N	10	Binda::Repeater	79	Binda::String	2021-04-28 16:46:04.476696	2021-04-28 16:47:12.96053
221	https://clam-pressure.bandcamp.com/album/clam008-common-practices	\N	14	Binda::Component	9	Binda::String	2021-04-28 16:42:28.632653	2021-04-28 16:50:22.733902
226	03:43	\N	13	Binda::Repeater	73	Binda::String	2021-04-28 16:45:03.19492	2021-05-06 10:16:05.817343
228	03:16	\N	13	Binda::Repeater	74	Binda::String	2021-04-28 16:45:12.163793	2021-05-06 10:16:05.842017
230	04:37	\N	13	Binda::Repeater	75	Binda::String	2021-04-28 16:45:16.378549	2021-05-06 10:16:05.853778
222	05:09	\N	13	Binda::Repeater	72	Binda::String	2021-04-28 16:42:28.658316	2021-05-06 10:16:05.859835
234	03:30	\N	13	Binda::Repeater	77	Binda::String	2021-04-28 16:45:32.525163	2021-05-06 10:16:05.864661
238	04:12	\N	13	Binda::Repeater	79	Binda::String	2021-04-28 16:46:04.471659	2021-05-06 10:16:05.869916
247	\N	\N	13	Binda::Component	10	Binda::String	2021-06-04 13:02:49.994997	2021-06-04 13:02:49.994997
248	\N	\N	10	Binda::Component	10	Binda::String	2021-06-04 13:02:50.001525	2021-06-04 13:02:50.001525
240	CLAM009	\N	4	Binda::Component	10	Binda::String	2021-06-04 13:02:49.912057	2021-06-04 13:10:02.036178
241	KUTHI JIN, VORONHIL, TROPICAL INTERFACE	\N	5	Binda::Component	10	Binda::String	2021-06-04 13:02:49.920402	2021-06-04 13:10:02.03808
242	18/06/2021	\N	7	Binda::Component	10	Binda::String	2021-06-04 13:02:49.926381	2021-06-04 13:10:02.039502
243	DIGITAL RELEASE	\N	8	Binda::Component	10	Binda::String	2021-06-04 13:02:49.931801	2021-06-04 13:10:02.040802
244	https://clam-pressure.bandcamp.com/album/clam009-a-z	\N	14	Binda::Component	10	Binda::String	2021-06-04 13:02:49.936998	2021-06-04 13:10:02.042128
245	04:19	\N	13	Binda::Repeater	80	Binda::String	2021-06-04 13:02:49.967324	2021-06-04 13:10:02.052192
246	· • · Z	\N	10	Binda::Repeater	80	Binda::String	2021-06-04 13:02:49.972382	2021-06-04 13:10:02.05414
250	A	\N	10	Binda::Repeater	81	Binda::String	2021-06-04 13:09:37.03879	2021-06-04 13:10:02.063261
249	04:49	\N	13	Binda::Repeater	81	Binda::String	2021-06-04 13:09:37.033654	2021-06-18 15:06:21.8705
258	\N	\N	13	Binda::Component	11	Binda::String	2021-10-01 13:07:05.271347	2021-10-01 13:07:05.271347
259	\N	\N	10	Binda::Component	11	Binda::String	2021-10-01 13:07:05.276294	2021-10-01 13:07:05.276294
251	CLAM010	\N	4	Binda::Component	11	Binda::String	2021-10-01 13:07:05.195119	2021-10-01 13:11:38.240926
271	ONE	\N	10	Binda::Repeater	88	Binda::String	2021-10-01 13:09:40.872043	2021-10-01 13:11:38.268725
285	\N	\N	13	Binda::Component	12	Binda::String	2022-01-06 12:43:57.487574	2022-01-06 12:43:57.487574
286	\N	\N	10	Binda::Component	12	Binda::String	2022-01-06 12:43:57.492697	2022-01-06 12:43:57.492697
252	JENNN	\N	5	Binda::Component	11	Binda::String	2021-10-01 13:07:05.202043	2021-10-01 13:11:38.242124
253	01/10/2021	\N	7	Binda::Component	11	Binda::String	2021-10-01 13:07:05.207193	2021-10-01 13:11:38.243372
254	DIGITAL RELEASE	\N	8	Binda::Component	11	Binda::String	2021-10-01 13:07:05.212205	2021-10-01 13:11:38.24438
255	https://clam-pressure.bandcamp.com/album/clam010-uncaged-unlimited	\N	14	Binda::Component	11	Binda::String	2021-10-01 13:07:05.217013	2021-10-01 13:11:38.24541
274	02:33	\N	13	Binda::Repeater	90	Binda::String	2021-10-01 13:10:13.052928	2021-10-01 13:11:38.254074
275	RE SPITE	\N	10	Binda::Repeater	90	Binda::String	2021-10-01 13:10:13.058266	2021-10-01 13:11:38.255353
276	01:27	\N	13	Binda::Repeater	91	Binda::String	2021-10-01 13:10:32.781068	2021-10-01 13:11:38.260894
277	UNTIL	\N	10	Binda::Repeater	91	Binda::String	2021-10-01 13:10:32.78658	2021-10-01 13:11:38.261958
270	02:43	\N	13	Binda::Repeater	88	Binda::String	2021-10-01 13:09:40.867156	2021-10-01 13:11:38.267509
272	03:49	\N	13	Binda::Repeater	89	Binda::String	2021-10-01 13:09:55.497942	2021-10-01 13:11:38.273991
273	U???	\N	10	Binda::Repeater	89	Binda::String	2021-10-01 13:09:55.503035	2021-10-01 13:11:38.275079
268	03:50	\N	13	Binda::Repeater	87	Binda::String	2021-10-01 13:09:29.190855	2021-10-01 13:11:38.28078
269	BEAST, WORLD	\N	10	Binda::Repeater	87	Binda::String	2021-10-01 13:09:29.196762	2021-10-01 13:11:38.281954
256	04:10	\N	13	Binda::Repeater	82	Binda::String	2021-10-01 13:07:05.245696	2021-10-01 13:11:38.287094
257	UNLIMITED	\N	10	Binda::Repeater	82	Binda::String	2021-10-01 13:07:05.251377	2021-10-01 13:11:38.288535
260	02:24	\N	13	Binda::Repeater	83	Binda::String	2021-10-01 13:08:38.449848	2021-10-01 13:11:38.293541
261	EAT THE SHELL	\N	10	Binda::Repeater	83	Binda::String	2021-10-01 13:08:38.456594	2021-10-01 13:11:38.29465
262	04:17	\N	13	Binda::Repeater	84	Binda::String	2021-10-01 13:08:38.608953	2021-10-01 13:11:38.299941
263	BLESSER	\N	10	Binda::Repeater	84	Binda::String	2021-10-01 13:08:38.619114	2021-10-01 13:11:38.301172
264	02:00	\N	13	Binda::Repeater	85	Binda::String	2021-10-01 13:08:38.716862	2021-10-01 13:11:38.306938
265	PESO	\N	10	Binda::Repeater	85	Binda::String	2021-10-01 13:08:38.721847	2021-10-01 13:11:38.308277
266	04:14	\N	13	Binda::Repeater	86	Binda::String	2021-10-01 13:09:19.693839	2021-10-01 13:11:38.313927
267	PROX	\N	10	Binda::Repeater	86	Binda::String	2021-10-01 13:09:19.698653	2021-10-01 13:11:38.315181
282	https://clam-pressure.bandcamp.com/album/clam011-bineal-ponk	\N	14	Binda::Component	12	Binda::String	2022-01-06 12:43:57.428623	2022-01-06 12:53:36.958731
281	DIGITAL RELEASE	\N	8	Binda::Component	12	Binda::String	2022-01-06 12:43:57.423322	2022-01-06 12:53:36.960486
280	02/02/2022	\N	7	Binda::Component	12	Binda::String	2022-01-06 12:43:57.418196	2022-01-06 12:53:36.961795
279	EKSE & ELAZY	\N	5	Binda::Component	12	Binda::String	2022-01-06 12:43:57.412875	2022-01-06 12:53:36.963038
278	CLAM011	\N	4	Binda::Component	12	Binda::String	2022-01-06 12:43:57.407006	2022-01-06 12:53:36.964098
284	KHALID	\N	10	Binda::Repeater	92	Binda::String	2022-01-06 12:43:57.469774	2022-01-06 12:53:36.974494
288	MARIE ORK	\N	10	Binda::Repeater	93	Binda::String	2022-01-06 12:45:34.232769	2022-01-06 12:53:36.983129
290	INTERZONE	\N	10	Binda::Repeater	94	Binda::String	2022-01-06 12:45:55.049457	2022-01-06 12:53:36.990764
292	XESK	\N	10	Binda::Repeater	95	Binda::String	2022-01-06 12:46:02.887148	2022-01-06 12:53:36.999492
294	NEW CB	\N	10	Binda::Repeater	96	Binda::String	2022-01-06 12:46:04.933715	2022-01-06 12:53:37.009537
296	PHOEBE	\N	10	Binda::Repeater	97	Binda::String	2022-01-06 12:46:17.76535	2022-01-06 12:53:37.018214
300	BUNGO BAGGINS	\N	10	Binda::Repeater	99	Binda::String	2022-01-06 12:46:33.45977	2022-01-06 12:53:37.034373
299	04:44	\N	13	Binda::Repeater	99	Binda::String	2022-01-06 12:46:33.45475	2022-01-06 12:53:37.035966
302	CAINS GIBBET DROP	\N	10	Binda::Repeater	100	Binda::String	2022-01-06 12:46:41.597783	2022-01-06 12:53:37.042368
304	KCK	\N	10	Binda::Repeater	101	Binda::String	2022-01-06 12:46:48.961192	2022-01-06 12:53:37.049837
325	INEMURI NOW	\N	10	Binda::Repeater	108	Binda::String	2022-02-22 13:42:50.27953	2022-02-22 13:43:33.592887
293	04:04	\N	13	Binda::Repeater	96	Binda::String	2022-01-06 12:46:04.928566	2022-01-14 12:16:35.68924
283	03:16	\N	13	Binda::Repeater	92	Binda::String	2022-01-06 12:43:57.46445	2022-01-24 13:29:06.057696
287	02:33	\N	13	Binda::Repeater	93	Binda::String	2022-01-06 12:45:34.227134	2022-02-03 12:18:18.322586
289	03:05	\N	13	Binda::Repeater	94	Binda::String	2022-01-06 12:45:55.043618	2022-02-03 12:18:18.328014
291	02:56	\N	13	Binda::Repeater	95	Binda::String	2022-01-06 12:46:02.881554	2022-02-03 12:18:18.332755
295	04:24	\N	13	Binda::Repeater	97	Binda::String	2022-01-06 12:46:17.760179	2022-02-03 12:18:18.337383
297	02:40	\N	13	Binda::Repeater	98	Binda::String	2022-01-06 12:46:24.009635	2022-02-03 12:18:18.342025
298	HEART SHAPED HEDGES	\N	10	Binda::Repeater	98	Binda::String	2022-01-06 12:46:24.01506	2022-02-03 12:18:18.343263
301	03:08	\N	13	Binda::Repeater	100	Binda::String	2022-01-06 12:46:41.592888	2022-02-03 12:18:18.347958
303	02:29	\N	13	Binda::Repeater	101	Binda::String	2022-01-06 12:46:48.954566	2022-02-03 12:18:18.352911
312	\N	\N	13	Binda::Component	13	Binda::String	2022-02-22 13:14:01.789411	2022-02-22 13:14:01.789411
313	\N	\N	10	Binda::Component	13	Binda::String	2022-02-22 13:14:01.797551	2022-02-22 13:14:01.797551
309		\N	14	Binda::Component	13	Binda::String	2022-02-22 13:14:01.696708	2022-02-22 13:43:33.570928
308	DIGITAL RELEASE	\N	8	Binda::Component	13	Binda::String	2022-02-22 13:14:01.688703	2022-02-22 13:43:33.572393
307	11/03/2022	\N	7	Binda::Component	13	Binda::String	2022-02-22 13:14:01.680231	2022-02-22 13:43:33.573516
306	SINERAW	\N	5	Binda::Component	13	Binda::String	2022-02-22 13:14:01.672054	2022-02-22 13:43:33.574568
305	CLAM012	\N	4	Binda::Component	13	Binda::String	2022-02-22 13:14:01.662595	2022-02-22 13:43:33.5756
321	RELIABLE FACILITIES	\N	10	Binda::Repeater	106	Binda::String	2022-02-22 13:42:26.266427	2022-02-22 13:43:33.599394
323	RAGÙ DESTINO DI LEPRE W/ TVVAASTE	\N	10	Binda::Repeater	107	Binda::String	2022-02-22 13:42:35.452437	2022-02-22 13:43:33.605298
319	FORZANTICA	\N	10	Binda::Repeater	105	Binda::String	2022-02-22 13:42:12.351729	2022-02-22 13:43:33.610867
318	03:59	\N	13	Binda::Repeater	105	Binda::String	2022-02-22 13:42:12.346169	2022-02-22 13:43:33.611906
315	SEXUAL EXPANSION	\N	10	Binda::Repeater	103	Binda::String	2022-02-22 13:41:29.616084	2022-02-22 13:43:33.617073
317	OPERANT PARADIGM TRIGGER	\N	10	Binda::Repeater	104	Binda::String	2022-02-22 13:41:38.856988	2022-02-22 13:43:33.622911
311	SHE IS	\N	10	Binda::Repeater	102	Binda::String	2022-02-22 13:14:01.760232	2022-02-22 13:43:33.629148
327	VERY ANGRY TYPING	\N	10	Binda::Repeater	109	Binda::String	2022-02-22 13:42:58.478046	2022-02-22 13:43:33.634605
329	DISINTEGRATES	\N	10	Binda::Repeater	110	Binda::String	2022-02-22 13:43:12.094432	2022-02-22 13:43:33.639675
331	EMULATION OF US	\N	10	Binda::Repeater	111	Binda::String	2022-02-22 13:43:16.710736	2022-02-22 13:43:33.644813
324	04:23	\N	13	Binda::Repeater	108	Binda::String	2022-02-22 13:42:50.274454	2022-03-11 13:07:21.524514
320	03:38	\N	13	Binda::Repeater	106	Binda::String	2022-02-22 13:42:26.260735	2022-03-11 13:07:21.529961
322	03:22	\N	13	Binda::Repeater	107	Binda::String	2022-02-22 13:42:35.447827	2022-03-11 13:07:21.535248
314	04:48	\N	13	Binda::Repeater	103	Binda::String	2022-02-22 13:41:29.610859	2022-03-11 13:07:21.540325
316	03:09	\N	13	Binda::Repeater	104	Binda::String	2022-02-22 13:41:38.85008	2022-03-11 13:07:21.545785
310	05:00	\N	13	Binda::Repeater	102	Binda::String	2022-02-22 13:14:01.749976	2022-03-11 13:07:21.551208
326	03:43	\N	13	Binda::Repeater	109	Binda::String	2022-02-22 13:42:58.473076	2022-03-11 13:07:21.55644
328	03:06	\N	13	Binda::Repeater	110	Binda::String	2022-02-22 13:43:12.08664	2022-03-11 13:07:21.561294
330	04:16	\N	13	Binda::Repeater	111	Binda::String	2022-02-22 13:43:16.705744	2022-03-11 13:07:21.566122
339	\N	\N	13	Binda::Component	14	Binda::String	2022-06-01 12:42:17.747029	2022-06-01 12:42:17.747029
340	\N	\N	10	Binda::Component	14	Binda::String	2022-06-01 12:42:17.752584	2022-06-01 12:42:17.752584
336	https://clam-pressure.bandcamp.com/album/clam013-subbo	\N	14	Binda::Component	14	Binda::String	2022-06-01 12:42:17.682543	2022-06-01 12:50:49.529454
335	DIGITAL RELEASE	\N	8	Binda::Component	14	Binda::String	2022-06-01 12:42:17.677453	2022-06-01 12:50:49.530713
334	17/06/2022	\N	7	Binda::Component	14	Binda::String	2022-06-01 12:42:17.672085	2022-06-01 12:50:49.531713
333	TONY PEREZ	\N	5	Binda::Component	14	Binda::String	2022-06-01 12:42:17.667012	2022-06-01 12:50:49.532848
332	CLAM013	\N	4	Binda::Component	14	Binda::String	2022-06-01 12:42:17.659206	2022-06-01 12:50:49.533803
352	BETTO	\N	10	Binda::Repeater	118	Binda::String	2022-06-01 12:45:02.840648	2022-06-01 12:50:49.542601
354	GASH SKIT	\N	10	Binda::Repeater	119	Binda::String	2022-06-01 12:45:09.653321	2022-06-01 12:50:49.548839
356	CHERRY	\N	10	Binda::Repeater	120	Binda::String	2022-06-01 12:45:16.921739	2022-06-01 12:50:49.554583
358	ME ON	\N	10	Binda::Repeater	121	Binda::String	2022-06-01 12:45:23.593748	2022-06-01 12:50:49.560284
338	CANDLE	\N	10	Binda::Repeater	112	Binda::String	2022-06-01 12:42:17.725543	2022-06-01 12:50:49.566058
342	EGG SHAPED PENIS	\N	10	Binda::Repeater	113	Binda::String	2022-06-01 12:43:57.465369	2022-06-01 12:50:49.571914
344	ASCENDooo	\N	10	Binda::Repeater	114	Binda::String	2022-06-01 12:44:06.056252	2022-06-01 12:50:49.577644
346	SUBBO	\N	10	Binda::Repeater	115	Binda::String	2022-06-01 12:44:18.034386	2022-06-01 12:50:49.583419
348	L.O.F.T.YU	\N	10	Binda::Repeater	116	Binda::String	2022-06-01 12:44:26.182897	2022-06-01 12:50:49.589123
347	04:16	\N	13	Binda::Repeater	116	Binda::String	2022-06-01 12:44:26.177912	2022-06-01 12:50:49.590349
350	TONY'S TOYS	\N	10	Binda::Repeater	117	Binda::String	2022-06-01 12:44:42.776098	2022-06-01 12:50:49.594997
343	04:17	\N	13	Binda::Repeater	114	Binda::String	2022-06-01 12:44:06.049076	2022-06-07 11:51:22.654962
355	02:58	\N	13	Binda::Repeater	120	Binda::String	2022-06-01 12:45:16.916618	2022-06-13 12:20:10.492037
351	03:18	\N	13	Binda::Repeater	118	Binda::String	2022-06-01 12:45:02.835054	2022-06-16 22:19:33.024018
353	02:31	\N	13	Binda::Repeater	119	Binda::String	2022-06-01 12:45:09.647907	2022-06-16 22:19:33.040482
357	03:59	\N	13	Binda::Repeater	121	Binda::String	2022-06-01 12:45:23.589059	2022-06-16 22:19:33.051858
337	05:12	\N	13	Binda::Repeater	112	Binda::String	2022-06-01 12:42:17.719582	2022-06-16 22:19:33.061802
341	03:23	\N	13	Binda::Repeater	113	Binda::String	2022-06-01 12:43:57.460396	2022-06-16 22:19:33.070603
345	07:12	\N	13	Binda::Repeater	115	Binda::String	2022-06-01 12:44:18.029244	2022-06-16 22:19:33.079417
349	03:10	\N	13	Binda::Repeater	117	Binda::String	2022-06-01 12:44:42.771205	2022-06-16 22:19:33.088574
\.


--
-- Data for Name: binda_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, failed_attempts, unlock_token, locked_at, is_superadmin, created_at, updated_at) FROM stdin;
3	kuthijin@gmail.com	$2a$11$4.IsjvCQCMYeS6imugaRRefC9NbFzQcl6EHm5jPPWBsNzUf5TxmGW	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	f	2020-10-15 20:35:35.032237	2020-10-15 20:35:35.032237
1	lorenzorivosecchi3@gmail.com	$2a$11$lUvcvAyMYieGxXE1sdsxUexwMugZZdrzFnqwLqw/HbHS/abrJGNja	\N	\N	\N	9	2021-03-05 08:50:00.622631	2021-03-04 12:25:07.326187	10.0.1.13	10.0.1.13	\N	\N	\N	\N	0	\N	\N	t	2020-04-18 13:19:19.36396	2021-03-05 08:50:00.623713
2	rredeghieri@gmail.com	$2a$11$wlIbA6Ov4jKtWladoBlOu.LOSNwlUKVyQYZ0p.SKPbIGysSejcNAy	\N	\N	\N	6	2022-06-01 12:35:17.681742	2022-02-03 12:15:09.524808	10.0.1.21	10.0.1.89	\N	\N	\N	\N	0	\N	\N	f	2020-05-09 15:49:50.755998	2022-06-01 12:35:17.683169
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations (version) FROM stdin;
20200418131403
\.


--
-- Name: binda_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_assets_id_seq', 30, true);


--
-- Name: binda_boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_boards_id_seq', 3, true);


--
-- Name: binda_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_categories_id_seq', 1, false);


--
-- Name: binda_choices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_choices_id_seq', 3, true);


--
-- Name: binda_choices_selections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_choices_selections_id_seq', 3, true);


--
-- Name: binda_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_components_id_seq', 14, true);


--
-- Name: binda_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_dates_id_seq', 1, false);


--
-- Name: binda_field_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_field_groups_id_seq', 7, true);


--
-- Name: binda_field_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_field_settings_id_seq', 29, true);


--
-- Name: binda_field_settings_structures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_field_settings_structures_id_seq', 1, false);


--
-- Name: binda_galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_galleries_id_seq', 1, false);


--
-- Name: binda_relation_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_relation_links_id_seq', 1, false);


--
-- Name: binda_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_relations_id_seq', 1, false);


--
-- Name: binda_repeaters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_repeaters_id_seq', 121, true);


--
-- Name: binda_selections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_selections_id_seq', 1, true);


--
-- Name: binda_structures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_structures_id_seq', 4, true);


--
-- Name: binda_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_texts_id_seq', 358, true);


--
-- Name: binda_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_users_id_seq', 3, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: binda_assets binda_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_assets
    ADD CONSTRAINT binda_assets_pkey PRIMARY KEY (id);


--
-- Name: binda_boards binda_boards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_boards
    ADD CONSTRAINT binda_boards_pkey PRIMARY KEY (id);


--
-- Name: binda_categories binda_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_categories
    ADD CONSTRAINT binda_categories_pkey PRIMARY KEY (id);


--
-- Name: binda_choices binda_choices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_choices
    ADD CONSTRAINT binda_choices_pkey PRIMARY KEY (id);


--
-- Name: binda_choices_selections binda_choices_selections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_choices_selections
    ADD CONSTRAINT binda_choices_selections_pkey PRIMARY KEY (id);


--
-- Name: binda_components binda_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_components
    ADD CONSTRAINT binda_components_pkey PRIMARY KEY (id);


--
-- Name: binda_dates binda_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_dates
    ADD CONSTRAINT binda_dates_pkey PRIMARY KEY (id);


--
-- Name: binda_field_groups binda_field_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_field_groups
    ADD CONSTRAINT binda_field_groups_pkey PRIMARY KEY (id);


--
-- Name: binda_field_settings binda_field_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_field_settings
    ADD CONSTRAINT binda_field_settings_pkey PRIMARY KEY (id);


--
-- Name: binda_field_settings_structures binda_field_settings_structures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_field_settings_structures
    ADD CONSTRAINT binda_field_settings_structures_pkey PRIMARY KEY (id);


--
-- Name: binda_galleries binda_galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_galleries
    ADD CONSTRAINT binda_galleries_pkey PRIMARY KEY (id);


--
-- Name: binda_relation_links binda_relation_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_relation_links
    ADD CONSTRAINT binda_relation_links_pkey PRIMARY KEY (id);


--
-- Name: binda_relations binda_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_relations
    ADD CONSTRAINT binda_relations_pkey PRIMARY KEY (id);


--
-- Name: binda_repeaters binda_repeaters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_repeaters
    ADD CONSTRAINT binda_repeaters_pkey PRIMARY KEY (id);


--
-- Name: binda_selections binda_selections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_selections
    ADD CONSTRAINT binda_selections_pkey PRIMARY KEY (id);


--
-- Name: binda_structures binda_structures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_structures
    ADD CONSTRAINT binda_structures_pkey PRIMARY KEY (id);


--
-- Name: binda_texts binda_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_texts
    ADD CONSTRAINT binda_texts_pkey PRIMARY KEY (id);


--
-- Name: binda_users binda_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.binda_users
    ADD CONSTRAINT binda_users_pkey PRIMARY KEY (id);


--
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_binda_assets_on_field_setting_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_assets_on_field_setting_id ON public.binda_assets USING btree (field_setting_id);


--
-- Name: index_binda_assets_on_fieldable_type_and_fieldable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_assets_on_fieldable_type_and_fieldable_id ON public.binda_assets USING btree (fieldable_type, fieldable_id);


--
-- Name: index_binda_boards_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_boards_on_slug ON public.binda_boards USING btree (slug);


--
-- Name: index_binda_boards_on_structure_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_boards_on_structure_id ON public.binda_boards USING btree (structure_id);


--
-- Name: index_binda_categories_components_on_category_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_categories_components_on_category_id ON public.binda_categories_components USING btree (category_id);


--
-- Name: index_binda_categories_components_on_component_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_categories_components_on_component_id ON public.binda_categories_components USING btree (component_id);


--
-- Name: index_binda_categories_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_categories_on_slug ON public.binda_categories USING btree (slug);


--
-- Name: index_binda_categories_on_structure_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_categories_on_structure_id ON public.binda_categories USING btree (structure_id);


--
-- Name: index_binda_choices_on_field_setting_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_choices_on_field_setting_id ON public.binda_choices USING btree (field_setting_id);


--
-- Name: index_binda_choices_selections_on_choice_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_choices_selections_on_choice_id ON public.binda_choices_selections USING btree (choice_id);


--
-- Name: index_binda_choices_selections_on_selection_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_choices_selections_on_selection_id ON public.binda_choices_selections USING btree (selection_id);


--
-- Name: index_binda_components_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_components_on_slug ON public.binda_components USING btree (slug);


--
-- Name: index_binda_components_on_structure_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_components_on_structure_id ON public.binda_components USING btree (structure_id);


--
-- Name: index_binda_dates_on_field_setting_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_dates_on_field_setting_id ON public.binda_dates USING btree (field_setting_id);


--
-- Name: index_binda_dates_on_fieldable_type_and_fieldable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_dates_on_fieldable_type_and_fieldable_id ON public.binda_dates USING btree (fieldable_type, fieldable_id);


--
-- Name: index_binda_field_groups_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_field_groups_on_slug ON public.binda_field_groups USING btree (slug);


--
-- Name: index_binda_field_groups_on_structure_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_field_groups_on_structure_id ON public.binda_field_groups USING btree (structure_id);


--
-- Name: index_binda_field_settings_on_ancestry; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_field_settings_on_ancestry ON public.binda_field_settings USING btree (ancestry);


--
-- Name: index_binda_field_settings_on_default_choice_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_field_settings_on_default_choice_id ON public.binda_field_settings USING btree (default_choice_id);


--
-- Name: index_binda_field_settings_on_field_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_field_settings_on_field_group_id ON public.binda_field_settings USING btree (field_group_id);


--
-- Name: index_binda_field_settings_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_field_settings_on_slug ON public.binda_field_settings USING btree (slug);


--
-- Name: index_binda_field_settings_structures_on_field_setting_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_field_settings_structures_on_field_setting_id ON public.binda_field_settings_structures USING btree (field_setting_id);


--
-- Name: index_binda_field_settings_structures_on_structure_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_field_settings_structures_on_structure_id ON public.binda_field_settings_structures USING btree (structure_id);


--
-- Name: index_binda_galleries_on_field_setting_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_galleries_on_field_setting_id ON public.binda_galleries USING btree (field_setting_id);


--
-- Name: index_binda_galleries_on_fieldable_type_and_fieldable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_galleries_on_fieldable_type_and_fieldable_id ON public.binda_galleries USING btree (fieldable_type, fieldable_id);


--
-- Name: index_binda_relation_links_on_dependent_type_and_dependent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_relation_links_on_dependent_type_and_dependent_id ON public.binda_relation_links USING btree (dependent_type, dependent_id);


--
-- Name: index_binda_relation_links_on_owner_type_and_owner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_relation_links_on_owner_type_and_owner_id ON public.binda_relation_links USING btree (owner_type, owner_id);


--
-- Name: index_binda_relations_on_fieldable_type_and_fieldable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_relations_on_fieldable_type_and_fieldable_id ON public.binda_relations USING btree (fieldable_type, fieldable_id);


--
-- Name: index_binda_repeaters_on_field_setting_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_repeaters_on_field_setting_id ON public.binda_repeaters USING btree (field_setting_id);


--
-- Name: index_binda_repeaters_on_fieldable_type_and_fieldable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_repeaters_on_fieldable_type_and_fieldable_id ON public.binda_repeaters USING btree (fieldable_type, fieldable_id);


--
-- Name: index_binda_selections_on_field_setting_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_selections_on_field_setting_id ON public.binda_selections USING btree (field_setting_id);


--
-- Name: index_binda_selections_on_fieldable_type_and_fieldable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_selections_on_fieldable_type_and_fieldable_id ON public.binda_selections USING btree (fieldable_type, fieldable_id);


--
-- Name: index_binda_structures_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_structures_on_slug ON public.binda_structures USING btree (slug);


--
-- Name: index_binda_texts_on_field_setting_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_texts_on_field_setting_id ON public.binda_texts USING btree (field_setting_id);


--
-- Name: index_binda_texts_on_fieldable_type_and_fieldable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_binda_texts_on_fieldable_type_and_fieldable_id ON public.binda_texts USING btree (fieldable_type, fieldable_id);


--
-- Name: index_binda_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_users_on_confirmation_token ON public.binda_users USING btree (confirmation_token);


--
-- Name: index_binda_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_users_on_email ON public.binda_users USING btree (email);


--
-- Name: index_binda_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_users_on_reset_password_token ON public.binda_users USING btree (reset_password_token);


--
-- Name: index_binda_users_on_unlock_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_binda_users_on_unlock_token ON public.binda_users USING btree (unlock_token);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_id);


--
-- Name: index_friendly_id_slugs_on_sluggable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type ON public.friendly_id_slugs USING btree (sluggable_type);


--
-- PostgreSQL database dump complete
--

