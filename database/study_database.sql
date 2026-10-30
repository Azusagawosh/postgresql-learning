--
-- PostgreSQL database dump
--

\restrict bAeyNfx3iJwyOitYnkMdJjH2EACPN3ZejGxYytayxZB0pZVf2RjzSTQZijX43eb

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: audience; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audience (
    id integer,
    floor integer,
    cabinet integer
);


ALTER TABLE public.audience OWNER TO postgres;

--
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id integer,
    group_name character varying(50)
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- Name: schedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule (
    id integer,
    group_id integer,
    teacher_id integer,
    subject_id integer,
    classroom_id integer,
    lesson_time time without time zone
);


ALTER TABLE public.schedule OWNER TO postgres;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer,
    name character varying(50),
    group_name character varying(50),
    group_id integer
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    id integer,
    title character varying(100),
    hours integer
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    id integer,
    full_name character varying(100),
    subject character varying(50),
    group_id integer
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- Data for Name: audience; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audience (id, floor, cabinet) FROM stdin;
1	1	101
2	1	102
3	1	103
4	1	104
5	1	105
6	1	106
7	1	107
8	1	108
9	1	109
10	1	110
11	1	111
12	1	112
13	1	113
14	1	114
15	1	115
16	1	116
17	2	201
18	2	202
19	2	203
20	2	204
21	2	205
22	2	206
23	2	207
24	2	208
25	2	209
26	2	210
27	2	211
28	2	212
29	2	213
30	2	214
31	2	215
32	2	216
33	3	301
34	3	302
35	3	303
36	3	304
37	3	305
38	3	306
39	3	307
40	3	308
41	3	309
42	3	310
43	3	311
44	3	312
45	3	313
46	3	314
47	3	315
48	3	316
49	4	401
50	4	402
51	4	403
52	4	404
53	4	405
54	4	406
55	4	407
56	4	408
57	4	409
58	4	410
59	4	411
60	4	412
61	4	413
62	4	414
63	4	415
64	4	416
65	5	501
66	5	502
67	5	503
68	5	504
69	5	505
70	5	506
71	5	507
72	5	508
73	5	509
74	5	510
75	5	511
76	5	512
77	5	513
78	5	514
79	5	515
80	5	516
81	6	601
82	6	602
83	6	603
84	6	604
85	6	605
86	6	606
87	6	607
88	6	608
89	6	609
90	6	610
91	6	611
92	6	612
97	7	701
98	7	702
99	7	703
100	7	704
101	7	705
102	7	706
103	7	707
104	7	708
105	7	709
106	7	710
107	7	711
108	7	712
109	7	713
110	7	714
111	7	715
112	7	716
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groups (id, group_name) FROM stdin;
1	IS-21
2	IS-22
3	IS-23
4	IS-24
\.


--
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schedule (id, group_id, teacher_id, subject_id, classroom_id, lesson_time) FROM stdin;
1	1	1	1	1	09:00:00
2	1	5	5	2	10:00:00
3	1	9	9	3	11:00:00
4	1	13	13	4	12:00:00
5	2	2	2	5	09:00:00
6	2	6	6	6	10:00:00
7	2	10	10	7	11:00:00
8	2	14	14	8	12:00:00
9	3	3	3	9	09:00:00
10	3	7	7	10	10:00:00
11	3	11	11	11	11:00:00
12	3	15	15	12	12:00:00
13	4	4	4	13	09:00:00
14	4	8	8	14	10:00:00
15	4	12	12	15	11:00:00
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, name, group_name, group_id) FROM stdin;
1	Alex Morgan	IS-21	\N
2	Daniel Carter	IS-21	\N
3	Michael Brooks	IS-22	\N
4	James Wilson	IS-22	\N
5	Oliver Smith	IS-23	\N
6	Ethan Parker	IS-23	\N
7	Lucas Anderson	IS-21	\N
8	Noah Thompson	IS-24	\N
9	William Davis	IS-24	\N
10	Benjamin Scott	IS-22	\N
11	Sophia Miller	IS-23	\N
12	Emma Johnson	IS-21	\N
13	Olivia Brown	IS-24	\N
14	Isabella Taylor	IS-22	\N
15	Amelia White	IS-23	\N
1	Alex Morgan	IS-21	1
2	Daniel Carter	IS-21	1
3	Michael Brooks	IS-22	2
4	James Wilson	IS-22	2
5	Oliver Smith	IS-23	3
6	Ethan Parker	IS-23	3
7	Lucas Anderson	IS-21	1
8	Noah Thompson	IS-24	4
9	William Davis	IS-24	4
10	Benjamin Scott	IS-22	2
11	Sophia Miller	IS-23	3
12	Emma Johnson	IS-21	1
13	Olivia Brown	IS-24	4
14	Isabella Taylor	IS-22	2
15	Amelia White	IS-23	3
\.


--
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject (id, title, hours) FROM stdin;
1	Rust Programming	120
2	Database Systems	90
3	Linux Administration	100
4	Computer Networks	80
5	Web Development	110
6	Algorithms	95
7	Operating Systems	85
8	Information Security	100
9	Software Engineering	90
10	Mathematics	75
11	Data Structures	95
12	Computer Architecture	70
13	Backend Development	120
14	Git and Version Control	45
15	English	60
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers (id, full_name, subject, group_id) FROM stdin;
1	John Smith	Rust Programming	1
2	Robert Brown	Database Systems	2
3	David Wilson	Linux Administration	3
4	James Taylor	Computer Networks	4
5	William Clark	Web Development	1
6	Thomas Miller	Algorithms	2
7	Daniel Anderson	Operating Systems	3
8	Matthew Thomas	Information Security	4
9	Joseph Martin	Software Engineering	1
10	Andrew White	Mathematics	2
11	Christopher Lee	Data Structures	3
12	Joshua Harris	Computer Architecture	4
13	Ryan Walker	Backend Development	1
14	Anthony Hall	Git and Version Control	2
15	Kevin Young	English	3
\.


--
-- PostgreSQL database dump complete
--

\unrestrict bAeyNfx3iJwyOitYnkMdJjH2EACPN3ZejGxYytayxZB0pZVf2RjzSTQZijX43eb

