--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.6

-- Started on 2024-10-29 13:05:27

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
-- TOC entry 216 (class 1259 OID 16415)
-- Name: t_point; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_point (
    user_name character varying(100),
    task_name character varying(100),
    score numeric,
    remark character varying(2000),
    created_date timestamp without time zone
);


ALTER TABLE public.t_point OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16410)
-- Name: t_task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_task (
    task_name character varying(100),
    task_type character varying(30),
    task_desc character varying(2000),
    created_date timestamp without time zone
);


ALTER TABLE public.t_task OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16407)
-- Name: t_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_user (
    user_name character varying(100),
    created_date timestamp without time zone,
    status "char"
);


ALTER TABLE public.t_user OWNER TO postgres;

--
-- TOC entry 3324 (class 0 OID 16415)
-- Dependencies: 216
-- Data for Name: t_point; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_point (user_name, task_name, score, remark, created_date) FROM stdin;
ZacharyF	01-minterface	10.01	test	2024-03-24 00:00:00
JonahT	01-minterface	5.01	test	2024-03-24 00:00:00
Makaylee	01-minterface	3.0	test	2024-03-24 00:00:00
AJM	01-minterface	10.0	performance remark	2024-03-24 00:00:00
BennettR	01-minterface	0.0	test	2024-03-24 00:00:00
AidenW	01-minterface	0.0	test	2024-03-24 00:00:00
MarkA	01-minterface	0.0	test	2024-03-24 00:00:00
JordanS	01-minterface	0.0	test	2024-03-24 00:00:00
NathanimP	01-minterface	0.0	test	2024-03-24 00:00:00
MatthewC	01-minterface	0.0	test	2024-03-24 00:00:00
ReidB	01-minterface	0.0	test	2024-03-24 00:00:00
JackP	01-minterface	0.0	test	2024-03-24 00:00:00
ZacharyF	01-numinterface	100	N/A	2024-10-29 12:43:09.671522
JonahT	01-numinterface	210	N/A	2024-10-29 12:49:41.98123
Makaylee	01-numinterface	10	N/A	2024-10-29 12:49:41.983773
AJM	01-numinterface	2	N/A	2024-10-29 12:50:21.419389
BennettR	01-numinterface	22	N/A	2024-10-29 12:54:03.270366
\.


--
-- TOC entry 3323 (class 0 OID 16410)
-- Dependencies: 215
-- Data for Name: t_task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_task (task_name, task_type, task_desc, created_date) FROM stdin;
01-numinterface	pafw	description	2024-10-29 12:37:45.653286
\.


--
-- TOC entry 3322 (class 0 OID 16407)
-- Dependencies: 214
-- Data for Name: t_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_user (user_name, created_date, status) FROM stdin;
ZacharyF	2024-03-24 00:00:00	A
JonahT	2024-03-24 00:00:00	A
Makaylee	2024-03-24 00:00:00	A
AJM	2024-03-24 00:00:00	A
BennettR	2024-03-24 00:00:00	A
AidenW	2024-03-24 00:00:00	A
MarkA	2024-03-24 00:00:00	A
JordanS	2024-03-24 00:00:00	A
NathanimP	2024-03-24 00:00:00	A
MatthewC	2024-03-24 00:00:00	A
ReidB	2024-03-24 00:00:00	A
JackP	2024-03-24 00:00:00	A
\.


-- Completed on 2024-10-29 13:05:27

--
-- PostgreSQL database dump complete
--

