--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE accounts (
    id integer NOT NULL,
    cpf character varying(255),
    address character varying(255),
    number character varying(255),
    complement character varying(255),
    neighborhood character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    rg character varying(255),
    birth_certificate character varying(255),
    ric character varying(255),
    age integer,
    birth date,
    mother_name character varying(255),
    place_of_birth character varying(255),
    civil_status character varying(255),
    cover_image_uid character varying(255),
    cover_image_name character varying(255),
    anamnesis_id integer,
    name character varying(255),
    user_id integer
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_id_seq OWNER TO postgres;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE accounts_id_seq OWNED BY accounts.id;


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('accounts_id_seq', 2, true);


--
-- Name: anamneses; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE anamneses (
    id integer NOT NULL,
    blood_type character varying(255),
    rh_factor character varying(255),
    weight numeric,
    height numeric,
    sex character varying(255),
    blood_pressure character varying(255),
    smoking boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.anamneses OWNER TO postgres;

--
-- Name: anamneses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE anamneses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anamneses_id_seq OWNER TO postgres;

--
-- Name: anamneses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE anamneses_id_seq OWNED BY anamneses.id;


--
-- Name: anamneses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('anamneses_id_seq', 1, false);


--
-- Name: companies; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE companies (
    id integer NOT NULL,
    name character varying(255),
    brand_name character varying(255),
    cnpj character varying(255),
    state_inscription character varying(255),
    municipal_inscription character varying(255),
    address character varying(255),
    number integer,
    complement character varying(255),
    neighborhood character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    site character varying(255),
    published boolean,
    published_at timestamp without time zone,
    enabled boolean,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    cover_image_uid character varying(255),
    cover_image_name character varying(255),
    account_id integer
);


ALTER TABLE public.companies OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE companies_id_seq OWNED BY companies.id;


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('companies_id_seq', 1, false);


--
-- Name: exams; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE exams (
    id integer NOT NULL,
    user_id integer,
    title character varying(255),
    description text,
    emission timestamp without time zone,
    doctor character varying(255),
    crm character varying(255),
    pdf_file_name character varying(255),
    pdf_content_type character varying(255),
    pdf_file_size integer,
    pdf_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    history_id integer,
    account_id integer,
    company_id integer
);


ALTER TABLE public.exams OWNER TO postgres;

--
-- Name: exams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE exams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exams_id_seq OWNER TO postgres;

--
-- Name: exams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE exams_id_seq OWNED BY exams.id;


--
-- Name: exams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('exams_id_seq', 1, false);


--
-- Name: histories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE histories (
    id integer NOT NULL,
    company_id integer,
    account_id integer,
    entry_date timestamp without time zone,
    exit_date timestamp without time zone,
    description text,
    prescription_drugs text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.histories OWNER TO postgres;

--
-- Name: histories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.histories_id_seq OWNER TO postgres;

--
-- Name: histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE histories_id_seq OWNED BY histories.id;


--
-- Name: histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('histories_id_seq', 1, false);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: taggings; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_id integer,
    taggable_type character varying(255),
    tagger_id integer,
    tagger_type character varying(255),
    context character varying(128),
    created_at timestamp without time zone
);


ALTER TABLE public.taggings OWNER TO postgres;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO postgres;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE taggings_id_seq OWNED BY taggings.id;


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('taggings_id_seq', 1, false);


--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tags_id_seq', 1, false);


--
-- Name: telephones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE telephones (
    id integer NOT NULL,
    ddd character varying(255),
    tel character varying(255),
    type_telephone_id integer,
    branch_line character varying(255),
    published boolean,
    enabled boolean,
    published_at timestamp without time zone,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    account_id integer,
    company_id integer
);


ALTER TABLE public.telephones OWNER TO postgres;

--
-- Name: telephones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE telephones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telephones_id_seq OWNER TO postgres;

--
-- Name: telephones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE telephones_id_seq OWNED BY telephones.id;


--
-- Name: telephones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('telephones_id_seq', 1, false);


--
-- Name: type_telephones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE type_telephones (
    id integer NOT NULL,
    name character varying(255),
    enabled boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.type_telephones OWNER TO postgres;

--
-- Name: type_telephones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE type_telephones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_telephones_id_seq OWNER TO postgres;

--
-- Name: type_telephones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE type_telephones_id_seq OWNED BY type_telephones.id;


--
-- Name: type_telephones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('type_telephones_id_seq', 3, true);


--
-- Name: type_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE type_users (
    id integer NOT NULL,
    name character varying(255),
    enabled boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.type_users OWNER TO postgres;

--
-- Name: type_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE type_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_users_id_seq OWNER TO postgres;

--
-- Name: type_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE type_users_id_seq OWNED BY type_users.id;


--
-- Name: type_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('type_users_id_seq', 5, true);


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    login character varying(255),
    email character varying(255),
    crypted_password character varying(255) NOT NULL,
    password_salt character varying(255) NOT NULL,
    persistence_token character varying(255) NOT NULL,
    login_count integer DEFAULT 0 NOT NULL,
    failed_login_count integer DEFAULT 0 NOT NULL,
    last_request_at timestamp without time zone,
    current_login_at timestamp without time zone,
    last_login_at timestamp without time zone,
    current_login_ip character varying(255),
    last_login_ip character varying(255),
    account_id integer,
    type_user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 13, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY accounts ALTER COLUMN id SET DEFAULT nextval('accounts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY anamneses ALTER COLUMN id SET DEFAULT nextval('anamneses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY companies ALTER COLUMN id SET DEFAULT nextval('companies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exams ALTER COLUMN id SET DEFAULT nextval('exams_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY histories ALTER COLUMN id SET DEFAULT nextval('histories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggings ALTER COLUMN id SET DEFAULT nextval('taggings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY telephones ALTER COLUMN id SET DEFAULT nextval('telephones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY type_telephones ALTER COLUMN id SET DEFAULT nextval('type_telephones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY type_users ALTER COLUMN id SET DEFAULT nextval('type_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY accounts (id, cpf, address, number, complement, neighborhood, city, state, country, created_at, updated_at, rg, birth_certificate, ric, age, birth, mother_name, place_of_birth, civil_status, cover_image_uid, cover_image_name, anamnesis_id, name, user_id) FROM stdin;
1	\N	\N	\N	\N	\N	\N	\N	\N	2012-07-14 13:25:05.037	2012-07-14 13:25:05.037	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	\N	\N	\N	\N	\N	\N	\N	\N	2012-07-28 20:10:41.932	2012-07-28 20:10:41.932	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: anamneses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY anamneses (id, blood_type, rh_factor, weight, height, sex, blood_pressure, smoking, created_at, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY companies (id, name, brand_name, cnpj, state_inscription, municipal_inscription, address, number, complement, neighborhood, city, state, country, site, published, published_at, enabled, deleted_at, created_at, updated_at, cover_image_uid, cover_image_name, account_id) FROM stdin;
\.


--
-- Data for Name: exams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY exams (id, user_id, title, description, emission, doctor, crm, pdf_file_name, pdf_content_type, pdf_file_size, pdf_updated_at, created_at, updated_at, history_id, account_id, company_id) FROM stdin;
\.


--
-- Data for Name: histories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY histories (id, company_id, account_id, entry_date, exit_date, description, prescription_drugs, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20120423222034
20120423223505
20120423223634
20120423223704
20120424221105
20120511223334
20120512012146
20120512114515
20120512120101
20120512121323
20120527171825
20120527182833
20120527183733
20120527200936
20120527210612
20120527230713
20120528002433
20120529002310
20120530005631
20120530194105
20120530195757
20120531112532
20120729220115
20120802002507
20120802002759
20120802013647
20120802013921
\.


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY taggings (id, tag_id, taggable_id, taggable_type, tagger_id, tagger_type, context, created_at) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tags (id, name) FROM stdin;
\.


--
-- Data for Name: telephones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY telephones (id, ddd, tel, type_telephone_id, branch_line, published, enabled, published_at, deleted_at, created_at, updated_at, account_id, company_id) FROM stdin;
\.


--
-- Data for Name: type_telephones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY type_telephones (id, name, enabled, created_at, updated_at) FROM stdin;
1	Residêncial	t	2012-07-14 13:24:47.55	2012-07-14 13:24:47.55
2	Celular	t	2012-07-14 13:24:47.644	2012-07-14 13:24:47.644
3	Trabalho	t	2012-07-14 13:24:47.67	2012-07-14 13:24:47.67
\.


--
-- Data for Name: type_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY type_users (id, name, enabled, created_at, updated_at) FROM stdin;
1	Admin	t	2012-07-14 13:15:35.673	2012-07-14 13:15:35.673
2	Médico	t	2012-07-14 13:15:35.78	2012-07-14 13:15:35.78
3	Paciente	t	2012-07-14 13:15:35.808	2012-07-14 13:15:35.808
4	Enfermeiro	t	2012-07-14 13:15:35.842	2012-07-14 13:15:35.842
5	Setor	t	2012-07-14 13:15:35.878	2012-07-14 13:15:35.878
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, login, email, crypted_password, password_salt, persistence_token, login_count, failed_login_count, last_request_at, current_login_at, last_login_at, current_login_ip, last_login_ip, account_id, type_user_id, created_at, updated_at) FROM stdin;
1	admin	admin@umrbrazil.com	83081564ffdeaa288627c7a27caa4290a93fda39f0250eb9e1b6aae0a7730f35c02e7008ff5b967e535232c4bd11267d6850fdbed86adf6d485d55e56b943fc2	i1RgMKsKLNR5HRvywfJ7	ef9a0bcd57116debacabfaccbbd454377504327aed75738b6d090b7fe9bbb0bf9e1e7aa9ec5eac9500fbb040b7d959bf7cb5dad133ad78ded18cf8bb022341ef	0	0	\N	\N	\N	\N	\N	1	1	2012-07-14 13:25:05.676	2012-07-14 13:25:05.676
2	admin0	admin0@umrbrazil.com	5e031ce6c52207458d5e7b82f17eaeccc7f955391fc4077f0866d57e475543473a6305ff7403298a82ffdcc77265798c1f7780ecd049fca2502e358726fcf046	T5u1i9Mh09BJKjXd077A	680dd382c41c4c9403993c1b6c84f175da2622dc830f56d11f16cb45f42d2e9f39e5362ee4267baf05bca255a94d7325767263d5ae55649824543a9f7fe51e55	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:44.749	2012-07-28 20:10:44.749
3	admin1	admin1@umrbrazil.com	5ebdc6759e581235e676395f070421574b0d6788c1d8632dc55963b86c3f663162d1ca5329bab0cf01a8817ef1253e28bbf63477af962bb86ddfab2a9cc2695a	KnACnsldxrSyi4JKy1	726544e1649cdbc63424788c303e897023e55661037b441a4eb90a32a50466720a040ba61e51914e69234e95e7f376fefb9d011e848319b2543fe371e06c3c7f	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:45.083	2012-07-28 20:10:45.083
4	admin2	admin2@umrbrazil.com	a73ebc434394b4d94789df40443d82e1fe836cb3ad44beb56dbd7ad15a0f92906936b9a54eba8bb632b133465178ff4441f93a6fd342437d015298c4466db983	pW6YM3ovKcs3o8LPWTY	d2bfff4f09073302832d1d4303f3859f6bbb5ea40dd26b311f4a1e238441047ac818a00bc8d9ed478ae19ccda5210fea168c6fc3a1671cfa51387ca00ce34997	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:45.274	2012-07-28 20:10:45.274
5	admin3	admin3@umrbrazil.com	2c1db5829fadbdbfec8552337265f9a5bd74ec70d3ee809d2088aa3c5edc6c737d5e8ef6c3db3181d185de994391f2b8b144069f64ca0866bd7f28da05b24f1b	7gwBo338d5uhULXukY	bb64043c94aae210b74be3e8aa30a2e3479d516e8a590df9438778108306b41bffe91bee134a564f844e2903f2b65fcc5c6d0750291d537ec04748c9424a68d5	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:45.421	2012-07-28 20:10:45.421
6	admin4	admin4@umrbrazil.com	07c533b2dc35366c7506f18ef4271f813ca88a20b422cec0400d2357258e9a1f3d43ae2ea3b104d7c195338276678268445b1d389d31d4e5c572aa834e24da22	2C2KdCChNjILDcSGUgD	83dff262bc371d81b0472cc6a297fde2c099a9b5d338583cdcfb41ce22450fc693ec502e187f4fe09b60543ebcbe745b62846b52810a3329343c0fb6ccf9ecf9	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:45.661	2012-07-28 20:10:45.661
7	admin5	admin5@umrbrazil.com	d42a558ae63c0ddedf9d8c40badd5b54a37a420cc83dd5eef926e6e471ed4a27edfb17d008896ce34dc3d7e4d62279f0aad0d4a132e234632d9d124e69e0c37b	WKtLgx8Moelc3nD6tblS	e70b4fa255ef045bbbfd1cb8a30b498c7d8c3360fd014fb57c77de532ed2d2b9b425864e2e62e1904888c242803cf38840587c8a9b4f69f492d36c2f87ca2745	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:45.748	2012-07-28 20:10:45.748
8	admin6	admin6@umrbrazil.com	455655e91b4bdda19f86760df78e7a12d03f680e584d0c8dfe329c2058230068637881b5df44379a666734808141106b7d01d44fd66c373abef2b8b02d149042	vQJxjXP28HtwiirKtwjv	efb479c21424fde810cf19b30e6be5f9a01635167ae3815956cbac68af5622f4288dee979b9b7057408c58d2c7ad1b44a194e6a3ec823963ad32d7303447888e	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:45.847	2012-07-28 20:10:45.847
9	admin7	admin7@umrbrazil.com	b893558f33c6845d842184dd57263f7be30a227fd772f8f11b69339157b2e7e6a92db75f1f47f5489642451639c381f0f7994c9abfaa0bfbc6ed154a1b4cc11e	NBuf3fv81zd87MPLWJ6Z	de88734a213fd2871d2116b8be68c845a3ecb01b772c51da27ebeb20495d4d59a51aec05cb19ca89e254b0ac158675d13516dcd01d5d65e76651eedf296cb249	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:45.958	2012-07-28 20:10:45.958
10	admin8	admin8@umrbrazil.com	70da692e93160396932e6f9e93138df33cfb748f84ebe9294af09c4c4c752660b06b9e7f65200f8ae3429f7d63236f6627534f3a74ccaa45e9bf9033f2c648ff	Rx3NY64SdczPvzMamn4	6bf12b3e2db78a13a85dc0e5292f3dc465b63bd3b8816ebae9c7096f3a1530c3281df1261c4128dc6d3cacbcd7e809c77e135d373245c28030fc94df1ccb17d3	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:46.056	2012-07-28 20:10:46.056
11	admin9	admin9@umrbrazil.com	078d500597a8862100aa4e5a7cb38c8479fa47f891d9c2bc56d18a1f890595dc3b541311f9cb53b2f1835b14d362e0f8024a73355b3882e09a8a1d45b4d2ac29	Eb3W8MXgol1Gx25wwV60	6eeffff75d88a519c56b2bdfff1c6fe8e423ab0b6f28528c13f077c7dea279defe8d6d158c1d6b3864942d7a56e294592c0828fe596293d2fcd20c01af7547a6	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:46.181	2012-07-28 20:10:46.181
12	admin10	admin10@umrbrazil.com	dc12d808e25a0bf268ecd84d2e80780e0352bef444486cc62bb4e37268f7bbb7356da212cd767da977c58951f5a2ccaf3d5a3728bbfbe4b302f30cfcc5e2aace	rbWIu7z4wsExMol7YQYC	e401e4e632c7c6d649de16cf90e419506d55842853a93a25171084fecd22f0c306b19f416a17dc83278a7b1dda79136b0b6a685b53a5bbb95b7e77cee607af1a	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:46.252	2012-07-28 20:10:46.252
13	admin11	admin11@umrbrazil.com	6f18d1fb46bd2b9f677db558862500bb1bb78541fb50b3d3f2ab2947326aa33715e91a80ac57b55f7cb94c3cef742e71acc694e09f17d8d39559efcf5edb8748	mHeZoHfYho9s7yw8wsmf	51cdefd090fc66f74a8568069ba0ef5e502ef0b1a53589d72ae84c8b38bfe61f9975d9e5e997e178545e71353c3a0a0456e0590455e9c0b40773a48188d26f48	0	0	\N	\N	\N	\N	\N	2	1	2012-07-28 20:10:46.366	2012-07-28 20:10:46.366
\.


--
-- Name: accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: anamneses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY anamneses
    ADD CONSTRAINT anamneses_pkey PRIMARY KEY (id);


--
-- Name: companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: exams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exams
    ADD CONSTRAINT exams_pkey PRIMARY KEY (id);


--
-- Name: histories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY histories
    ADD CONSTRAINT histories_pkey PRIMARY KEY (id);


--
-- Name: taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: telephones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY telephones
    ADD CONSTRAINT telephones_pkey PRIMARY KEY (id);


--
-- Name: type_telephones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY type_telephones
    ADD CONSTRAINT type_telephones_pkey PRIMARY KEY (id);


--
-- Name: type_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY type_users
    ADD CONSTRAINT type_users_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_accounts_on_address; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_address ON accounts USING btree (address);


--
-- Name: index_accounts_on_age; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_age ON accounts USING btree (age);


--
-- Name: index_accounts_on_anamnesis_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_anamnesis_id ON accounts USING btree (anamnesis_id);


--
-- Name: index_accounts_on_birth; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_birth ON accounts USING btree (birth);


--
-- Name: index_accounts_on_birth_certificate; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_birth_certificate ON accounts USING btree (birth_certificate);


--
-- Name: index_accounts_on_city; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_city ON accounts USING btree (city);


--
-- Name: index_accounts_on_civil_status; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_civil_status ON accounts USING btree (civil_status);


--
-- Name: index_accounts_on_complement; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_complement ON accounts USING btree (complement);


--
-- Name: index_accounts_on_country; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_country ON accounts USING btree (country);


--
-- Name: index_accounts_on_cpf; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_cpf ON accounts USING btree (cpf);


--
-- Name: index_accounts_on_mother_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_mother_name ON accounts USING btree (mother_name);


--
-- Name: index_accounts_on_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_name ON accounts USING btree (name);


--
-- Name: index_accounts_on_neighborhood; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_neighborhood ON accounts USING btree (neighborhood);


--
-- Name: index_accounts_on_number; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_number ON accounts USING btree (number);


--
-- Name: index_accounts_on_place_of_birth; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_place_of_birth ON accounts USING btree (place_of_birth);


--
-- Name: index_accounts_on_rg; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_rg ON accounts USING btree (rg);


--
-- Name: index_accounts_on_ric; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_ric ON accounts USING btree (ric);


--
-- Name: index_accounts_on_state; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_state ON accounts USING btree (state);


--
-- Name: index_accounts_on_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_accounts_on_user_id ON accounts USING btree (user_id);


--
-- Name: index_anamneses_on_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_anamneses_on_user_id ON anamneses USING btree (user_id);


--
-- Name: index_companies_on_account_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_account_id ON companies USING btree (account_id);


--
-- Name: index_companies_on_address; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_address ON companies USING btree (address);


--
-- Name: index_companies_on_brand_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_brand_name ON companies USING btree (brand_name);


--
-- Name: index_companies_on_city; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_city ON companies USING btree (city);


--
-- Name: index_companies_on_cnpj; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_cnpj ON companies USING btree (cnpj);


--
-- Name: index_companies_on_complement; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_complement ON companies USING btree (complement);


--
-- Name: index_companies_on_country; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_country ON companies USING btree (country);


--
-- Name: index_companies_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_deleted_at ON companies USING btree (deleted_at);


--
-- Name: index_companies_on_enabled; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_enabled ON companies USING btree (enabled);


--
-- Name: index_companies_on_municipal_inscription; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_municipal_inscription ON companies USING btree (municipal_inscription);


--
-- Name: index_companies_on_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_name ON companies USING btree (name);


--
-- Name: index_companies_on_neighborhood; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_neighborhood ON companies USING btree (neighborhood);


--
-- Name: index_companies_on_number; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_number ON companies USING btree (number);


--
-- Name: index_companies_on_site; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_site ON companies USING btree (site);


--
-- Name: index_companies_on_state; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_state ON companies USING btree (state);


--
-- Name: index_companies_on_state_inscription; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_companies_on_state_inscription ON companies USING btree (state_inscription);


--
-- Name: index_exams_on_account_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_exams_on_account_id ON exams USING btree (account_id);


--
-- Name: index_exams_on_company_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_exams_on_company_id ON exams USING btree (company_id);


--
-- Name: index_exams_on_crm; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_exams_on_crm ON exams USING btree (crm);


--
-- Name: index_exams_on_doctor; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_exams_on_doctor ON exams USING btree (doctor);


--
-- Name: index_exams_on_emission; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_exams_on_emission ON exams USING btree (emission);


--
-- Name: index_exams_on_history_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_exams_on_history_id ON exams USING btree (history_id);


--
-- Name: index_exams_on_title; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_exams_on_title ON exams USING btree (title);


--
-- Name: index_exams_on_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_exams_on_user_id ON exams USING btree (user_id);


--
-- Name: index_histories_on_company_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_histories_on_company_id ON histories USING btree (company_id);


--
-- Name: index_histories_on_entry_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_histories_on_entry_date ON histories USING btree (entry_date);


--
-- Name: index_histories_on_exit_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_histories_on_exit_date ON histories USING btree (exit_date);


--
-- Name: index_histories_on_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_histories_on_user_id ON histories USING btree (account_id);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_taggings_on_tag_id ON taggings USING btree (tag_id);


--
-- Name: index_taggings_on_taggable_id_and_taggable_type_and_context; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: index_telephones_on_account_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_account_id ON telephones USING btree (account_id);


--
-- Name: index_telephones_on_branch_line; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_branch_line ON telephones USING btree (branch_line);


--
-- Name: index_telephones_on_company_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_company_id ON telephones USING btree (company_id);


--
-- Name: index_telephones_on_ddd; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_ddd ON telephones USING btree (ddd);


--
-- Name: index_telephones_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_deleted_at ON telephones USING btree (deleted_at);


--
-- Name: index_telephones_on_enabled; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_enabled ON telephones USING btree (enabled);


--
-- Name: index_telephones_on_published; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_published ON telephones USING btree (published);


--
-- Name: index_telephones_on_published_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_published_at ON telephones USING btree (published_at);


--
-- Name: index_telephones_on_tel; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_tel ON telephones USING btree (tel);


--
-- Name: index_telephones_on_type_telephone_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_telephones_on_type_telephone_id ON telephones USING btree (type_telephone_id);


--
-- Name: index_type_telephones_on_enabled; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_type_telephones_on_enabled ON type_telephones USING btree (enabled);


--
-- Name: index_type_telephones_on_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_type_telephones_on_name ON type_telephones USING btree (name);


--
-- Name: index_type_users_on_enabled; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_type_users_on_enabled ON type_users USING btree (enabled);


--
-- Name: index_type_users_on_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_type_users_on_name ON type_users USING btree (name);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_login; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_login ON users USING btree (login);


--
-- Name: index_users_on_persistence_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_persistence_token ON users USING btree (persistence_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

