--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Debian 10.12-2.pgdg90+1)
-- Dumped by pg_dump version 10.12 (Debian 10.12-2.pgdg90+1)

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
\.


--
-- Data for Name: binda_boards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_boards (id, name, slug, "position", structure_id) FROM stdin;
1	dashboard	dashboard	\N	1
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
1	MIMICRY OF DEATH	mimicry-of-death	published	1	2	2020-04-18 13:29:44.298555	2020-04-18 13:29:44.464564
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
1	General details	dashboard-general-details	\N	2	\N	1	2020-04-18 13:17:15.451686	2020-04-18 13:17:15.603812
2	General details	release-general-details		2	\N	2	2020-04-18 13:27:18.952942	2020-04-18 13:38:54.598263
\.


--
-- Data for Name: binda_field_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_field_settings (id, name, slug, description, "position", required, read_only, default_text, field_type, field_group_id, ancestry, allow_null, default_choice_id, created_at, updated_at) FROM stdin;
1	Maintenance Mode	maintenance-mode	\N	4	f	f	\N	radio	1	\N	f	2	2020-04-18 13:19:19.565286	2020-04-18 13:19:29.328627
2	Website Name	website-name	\N	4	f	f	\N	string	1	\N	t	\N	2020-04-18 13:19:22.115293	2020-04-18 13:19:29.695434
3	Website Description	website-description	\N	4	f	f	\N	text	1	\N	t	\N	2020-04-18 13:19:29.295841	2020-04-18 13:19:30.591058
4	Catalog Number	release-catalog-number		1	f	f	\N	string	2	\N	t	\N	2020-04-18 13:27:36.797018	2020-04-18 13:50:16.390109
5	Artist Name	release-artist-name		2	f	f	\N	string	2	\N	t	\N	2020-04-18 13:31:06.285284	2020-04-18 13:50:16.814483
7	Publish Date	release-publish-date	Date of pubblication of the release.<br />Follow this pattern DD/MM/YYYY	3	f	f	\N	string	2	\N	t	\N	2020-04-18 13:35:00.896748	2020-04-18 13:50:17.24796
8	Detail	release-detail	Example:&nbsp;200 12&rdquo; VINYLS	4	f	f	\N	string	2	\N	t	\N	2020-04-18 13:39:45.908732	2020-04-18 13:50:17.667699
14	URL	release-url		5	f	f	\N	string	2	\N	t	\N	2020-04-18 13:50:15.533511	2020-04-18 13:50:49.757772
9	TrackList	release-track-list		6	f	f	\N	repeater	2	\N	t	\N	2020-04-18 13:41:33.293458	2020-04-18 14:15:16.703007
13	Duration	release-track-duration	Duration of the track.<br /><br />HOURS:MINUTES:SECONDS	3	f	f	\N	string	2	9	t	\N	2020-04-18 13:45:41.083881	2020-04-18 13:48:50.706355
10	Title	release-track-title		1	f	f	\N	string	2	9	t	\N	2020-04-18 13:42:38.172338	2020-04-18 13:49:49.683518
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
1	1	9	Binda::Component	1	2020-04-18 13:42:23.923652	2020-04-18 13:42:24.078497
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
1	dashboard	dashboard	2	f	f	board	2020-04-18 13:17:15.120012	2020-04-18 13:27:19.181178
2	Release	release	1	f	f	component	2020-04-18 13:27:18.89665	2020-04-18 13:38:54.58903
\.


--
-- Data for Name: binda_texts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_texts (id, content, "position", field_setting_id, fieldable_type, fieldable_id, type, created_at, updated_at) FROM stdin;
1	Clam\n	\N	2	Binda::Board	1	Binda::String	2020-04-18 13:19:22.806128	2020-04-18 13:19:29.244541
2	A website about the world	\N	3	Binda::Board	1	\N	2020-04-18 13:19:30.403628	2020-04-18 13:19:39.033091
3	CLAM001	\N	4	Binda::Component	1	Binda::String	2020-04-18 13:29:44.517389	2020-04-18 13:30:25.915289
6	12/10/2019	\N	7	Binda::Component	1	Binda::String	2020-04-18 13:35:02.240705	2020-04-18 13:38:15.987597
4	Kuthi Jin	\N	5	Binda::Component	1	Binda::String	2020-04-18 13:31:07.238249	2020-04-18 13:38:15.998261
13	https://bandcamp.com	\N	14	Binda::Component	1	Binda::String	2020-04-18 13:50:16.363056	2020-04-18 14:14:32.271292
7	200 12”VINYLS	\N	8	Binda::Component	1	Binda::String	2020-04-18 13:39:47.865765	2020-04-18 14:14:32.28622
12	09:44	\N	13	Binda::Repeater	1	Binda::String	2020-04-18 13:45:42.370748	2020-04-18 14:14:32.301779
9	CHAOS PIT	\N	10	Binda::Repeater	1	Binda::String	2020-04-18 13:42:38.608076	2020-04-18 14:14:32.322156
14	\N	\N	13	Binda::Component	1	Binda::String	2020-04-18 14:14:32.535045	2020-04-18 14:14:32.535045
16	\N	\N	10	Binda::Component	1	Binda::String	2020-04-18 14:14:32.646492	2020-04-18 14:14:32.646492
\.


--
-- Data for Name: binda_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.binda_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, failed_attempts, unlock_token, locked_at, is_superadmin, created_at, updated_at) FROM stdin;
1	lorenzorivosecchi3@gmail.com	$2a$11$lUvcvAyMYieGxXE1sdsxUexwMugZZdrzFnqwLqw/HbHS/abrJGNja	\N	\N	\N	1	2020-04-18 13:25:07.764493	2020-04-18 13:25:07.764493	172.26.0.1	172.26.0.1	\N	\N	\N	\N	0	\N	\N	t	2020-04-18 13:19:19.36396	2020-04-18 13:25:07.776262
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

SELECT pg_catalog.setval('public.binda_assets_id_seq', 1, true);


--
-- Name: binda_boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_boards_id_seq', 1, true);


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

SELECT pg_catalog.setval('public.binda_components_id_seq', 1, true);


--
-- Name: binda_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_dates_id_seq', 1, false);


--
-- Name: binda_field_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_field_groups_id_seq', 2, true);


--
-- Name: binda_field_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_field_settings_id_seq', 14, true);


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

SELECT pg_catalog.setval('public.binda_repeaters_id_seq', 1, true);


--
-- Name: binda_selections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_selections_id_seq', 1, true);


--
-- Name: binda_structures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_structures_id_seq', 2, true);


--
-- Name: binda_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_texts_id_seq', 16, true);


--
-- Name: binda_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.binda_users_id_seq', 1, true);


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

