--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    nama character varying(100) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    order_id integer,
    product_id integer,
    jumlah_order integer DEFAULT 0
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer,
    tanggal date,
    alamat character varying(255),
    telepon character varying(20)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    nama character varying(100) NOT NULL,
    jumlah integer DEFAULT 0,
    harga numeric DEFAULT 0
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, nama, email) FROM stdin;
1	Terry Medhurst	TerryMedhurst@gmail.com
2	Sheldon Quigley	SheldonQuigley@gmail.com
3	Terrill Hills	TerrillHills@gmail.com
4	Miles Cummerata	MilesCummerata@gmail.com
5	Mavis Schultz	MavisSchultz@gmail.com
6	Alison Reichert	AlisonReichert@gmail.com
7	Oleta Abbott	OletaAbbott@gmail.com
8	Ewell Mueller	EwellMueller@gmail.com
9	Demetrius Corkery	DemetriusCorkery@gmail.com
10	Eleanora Price	EleanoraPrice@gmail.com
11	Marcel Jones	MarcelJones@gmail.com
12	Assunta Rath	AssuntaRath@gmail.com
13	Trace Douglas	TraceDouglas@gmail.com
14	Enoch Lynch	EnochLynch@gmail.com
15	Jeanne Halvorson	JeanneHalvorson@gmail.com
16	Trycia Fadel	TryciaFadel@gmail.com
17	Bradford Prohaska	BradfordProhaska@gmail.com
18	Arely Skiles	ArelySkiles@gmail.com
19	Gust Purdy	GustPurdy@gmail.com
20	Lenna Renner	LennaRenner@gmail.com
21	Doyle Ernser	DoyleErnser@gmail.com
22	Tressa Weber	TressaWeber@gmail.com
23	Felicity O'Reilly	FelicityO'Reilly@gmail.com
24	Jocelyn Schuster	JocelynSchuster@gmail.com
25	Edwina Ernser	EdwinaErnser@gmail.com
26	Griffin Braun	GriffinBraun@gmail.com
27	Piper Schowalter	PiperSchowalter@gmail.com
28	Kody Terry	KodyTerry@gmail.com
29	Macy Greenfelder	MacyGreenfelder@gmail.com
30	Maurine Stracke	MaurineStracke@gmail.com
31	Luciano Sauer	LucianoSauer@gmail.com
32	Kaya Emard	KayaEmard@gmail.com
33	Lee Schmidt	LeeSchmidt@gmail.com
34	Darien Witting	DarienWitting@gmail.com
35	Jacklyn Schimmel	JacklynSchimmel@gmail.com
36	Angelica Baumbach	AngelicaBaumbach@gmail.com
37	Delfina Ziemann	DelfinaZiemann@gmail.com
38	Thaddeus McCullough	ThaddeusMcCullough@gmail.com
39	Salvatore Fisher	SalvatoreFisher@gmail.com
40	Jasmin Hermiston	JasminHermiston@gmail.com
41	Nicklaus Cruickshank	NicklausCruickshank@gmail.com
42	Tiara Rolfson	TiaraRolfson@gmail.com
43	Garret Klocko	GarretKlocko@gmail.com
44	Reginald Wisoky	ReginaldWisoky@gmail.com
45	Humberto Botsford	HumbertoBotsford@gmail.com
46	Justus Sipes	JustusSipes@gmail.com
47	Coralie Boyle	CoralieBoyle@gmail.com
48	Felicita Gibson	FelicitaGibson@gmail.com
49	Pearl Blick	PearlBlick@gmail.com
50	Johnathon Predovic	JohnathonPredovic@gmail.com
\.


--
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_details (order_id, product_id, jumlah_order) FROM stdin;
1	1	1
1	6	9
2	2	3
2	7	2
2	6	9
2	12	4
3	3	6
3	7	4
3	12	10
3	2	10
4	6	5
4	10	7
4	8	7
5	13	9
5	14	5
5	15	3
5	1	10
5	2	10
6	8	3
6	10	4
6	13	4
7	8	6
7	1	10
8	3	8
8	9	9
8	12	5
9	3	2
10	2	5
10	7	4
10	6	6
11	7	3
11	15	1
11	3	10
11	8	3
12	3	9
12	12	4
12	7	4
12	11	2
12	1	7
13	9	9
13	5	8
13	1	4
13	10	1
13	15	4
14	7	2
14	6	9
14	12	2
14	1	9
14	8	6
15	15	5
15	1	10
16	5	5
16	6	2
16	4	9
16	10	7
17	7	1
17	6	10
17	14	5
17	9	5
17	1	5
18	6	10
19	4	6
19	13	6
19	8	2
19	14	1
19	7	3
20	1	2
20	13	3
20	6	10
21	6	3
22	8	5
23	11	1
23	14	4
23	5	10
24	14	7
24	6	5
24	9	3
24	15	6
24	3	9
25	14	6
26	14	10
26	15	4
26	4	10
27	2	4
27	10	4
27	15	5
28	9	4
28	1	5
28	10	1
29	4	3
30	1	10
30	2	8
31	7	9
31	5	3
31	9	9
32	10	1
32	9	7
33	12	9
33	2	2
33	11	8
33	1	3
34	14	7
34	7	2
34	2	5
35	12	3
35	2	6
36	5	10
37	8	6
37	15	5
37	2	10
37	14	4
38	8	6
38	2	9
38	11	7
38	1	10
38	3	5
39	6	4
40	10	4
41	6	6
41	5	1
41	15	9
41	11	2
42	3	4
42	10	2
42	14	10
43	6	2
43	14	5
43	8	6
44	3	10
45	4	8
45	2	1
45	15	3
45	11	7
46	12	2
46	11	2
46	4	5
47	12	10
47	4	4
48	15	6
48	11	1
48	6	2
48	1	10
48	13	5
49	7	7
49	4	3
49	3	1
50	7	4
50	15	4
51	7	3
51	8	1
51	11	10
51	2	9
51	4	2
52	1	1
52	2	4
52	7	6
52	14	4
53	15	8
53	12	10
53	4	1
53	8	8
54	7	8
55	4	2
55	15	4
55	13	1
56	3	8
56	6	7
56	15	3
56	8	7
56	4	10
57	11	10
57	15	10
57	1	10
57	5	2
57	4	2
58	9	9
59	5	7
60	15	7
60	11	10
61	1	9
61	7	9
61	8	9
61	10	6
62	13	2
63	10	2
63	1	3
63	14	8
63	7	1
63	3	2
64	11	1
64	1	3
64	6	3
64	9	7
64	4	4
65	4	5
65	5	6
66	1	8
66	9	4
66	15	4
66	12	9
66	13	2
67	4	4
68	15	2
69	11	7
69	13	9
69	8	3
69	2	9
70	2	2
70	4	10
70	14	1
70	8	6
71	2	10
71	7	6
71	15	3
71	14	2
71	3	7
72	8	2
72	11	5
72	2	4
72	3	5
72	12	10
73	8	5
74	14	6
74	10	2
74	7	2
74	13	6
75	7	8
76	13	1
76	14	1
76	3	7
76	6	6
77	10	3
77	1	1
77	13	3
78	9	8
78	7	9
78	4	4
79	1	5
80	2	1
80	11	10
80	7	10
80	14	4
81	1	9
81	4	3
81	3	8
81	2	2
82	10	10
82	12	2
82	1	2
82	11	2
83	8	2
83	15	6
83	14	7
84	10	3
84	6	8
85	14	2
85	6	3
86	2	5
86	3	7
86	13	10
86	6	3
86	14	5
87	12	8
87	3	10
87	6	1
87	8	10
87	11	10
88	11	3
88	15	9
88	12	8
89	2	6
89	7	6
89	11	9
90	8	6
90	7	9
90	10	1
90	2	2
90	11	3
91	5	5
91	14	6
91	11	6
91	1	7
91	8	7
92	9	4
92	5	10
92	2	4
92	15	9
93	3	5
93	15	7
93	11	10
94	14	3
94	8	2
94	11	3
94	12	3
94	10	2
95	6	2
95	13	10
95	12	2
95	8	3
95	5	7
96	6	10
97	6	9
97	4	8
97	5	8
98	13	3
98	12	6
98	4	8
99	5	1
99	12	5
100	10	4
100	8	9
100	6	8
101	1	7
101	6	4
101	9	10
102	15	1
102	5	4
103	1	2
104	15	6
104	4	4
104	2	4
104	10	10
105	5	2
105	15	2
106	3	10
106	13	3
106	11	8
106	2	4
107	9	1
107	1	10
107	8	9
107	7	2
108	2	7
108	11	9
109	7	4
110	1	4
110	4	10
110	11	3
110	8	4
110	10	1
111	5	6
111	2	6
111	1	10
111	10	9
112	12	9
113	14	9
113	12	7
113	11	5
113	8	9
113	10	2
114	3	3
115	11	1
116	5	6
116	2	6
116	6	8
116	8	4
116	12	7
117	5	7
117	7	7
117	15	3
118	13	6
119	8	10
119	6	3
119	2	7
119	15	8
120	8	1
120	5	8
120	3	2
121	2	3
121	4	6
121	14	10
122	5	7
122	4	6
122	2	4
123	9	5
124	9	2
125	12	6
126	5	2
127	10	8
127	9	5
127	1	3
128	9	5
128	5	10
128	7	3
128	10	9
128	6	10
129	7	5
129	8	3
129	6	1
129	9	10
129	3	6
130	14	1
131	3	9
131	1	5
131	12	1
132	14	10
133	4	3
133	10	2
134	1	3
134	4	6
134	12	6
134	3	4
134	15	2
135	2	7
135	9	7
135	13	10
135	15	10
135	8	9
136	4	1
136	7	1
137	5	8
137	1	7
137	4	2
137	2	6
138	13	9
138	2	1
138	3	1
138	5	7
139	9	3
139	12	10
139	2	5
139	14	3
140	13	10
140	15	6
141	14	2
141	1	4
141	6	4
141	8	4
142	12	9
142	8	4
143	6	2
143	12	9
143	14	8
143	5	7
144	2	5
144	15	7
145	6	8
145	14	5
146	5	8
147	2	10
148	1	3
149	5	8
149	10	8
150	11	3
151	4	6
151	1	10
151	3	4
151	12	7
152	14	8
152	8	2
152	11	7
153	10	9
154	15	6
154	9	8
154	1	9
154	13	7
155	10	10
155	11	8
155	14	5
156	4	7
156	9	8
157	1	1
157	7	8
157	13	4
158	13	7
158	6	7
158	10	9
159	15	2
159	8	4
159	13	7
159	5	5
160	10	3
160	4	2
160	1	8
160	5	9
161	3	10
161	5	9
162	7	8
162	13	3
163	1	1
163	9	1
163	14	5
164	13	10
165	12	5
165	15	10
166	12	6
166	6	6
166	8	7
166	1	9
166	3	9
167	14	3
168	15	7
168	11	2
168	7	10
168	2	3
169	6	1
170	3	6
170	15	9
170	9	7
170	6	3
171	8	8
171	6	6
171	10	1
171	3	10
171	13	9
172	2	9
172	11	3
172	14	3
172	10	7
172	6	1
173	5	5
173	7	6
173	3	4
173	12	3
173	15	2
174	13	4
174	7	6
174	9	6
174	1	3
175	5	9
175	8	5
175	1	8
175	2	6
176	14	4
176	12	7
176	9	1
176	5	2
177	15	3
177	7	1
177	14	5
177	5	7
178	8	8
178	7	8
179	12	3
179	1	1
179	2	10
180	14	7
181	4	3
181	6	1
181	14	3
181	2	4
181	11	6
182	7	10
183	4	10
184	7	7
184	14	8
184	12	3
185	14	1
185	2	1
185	13	6
185	11	10
186	9	5
186	6	4
186	3	9
186	4	8
187	9	1
187	8	3
187	2	6
187	11	2
188	11	3
188	14	1
188	12	2
189	6	7
190	11	6
191	1	4
191	5	10
191	12	5
191	10	5
191	7	3
192	15	2
192	1	4
192	7	8
193	9	7
193	5	9
193	3	2
194	4	1
195	6	8
195	4	6
195	2	3
196	10	9
196	1	9
196	8	4
196	9	5
196	11	8
197	6	9
197	13	9
198	1	2
198	12	10
199	2	7
199	5	4
199	11	5
200	12	5
200	13	6
200	4	6
200	6	4
200	2	3
201	13	9
201	12	1
201	7	3
201	3	6
201	10	3
202	9	6
202	14	1
202	4	7
202	5	6
203	4	6
203	14	2
203	6	6
204	6	7
204	1	1
204	12	7
205	7	10
205	9	2
205	15	6
205	2	4
205	12	3
206	10	4
206	13	8
207	15	6
207	13	1
207	10	4
207	6	8
208	14	6
209	9	2
209	14	9
209	6	8
209	1	9
210	1	3
210	6	4
210	4	7
210	5	2
211	15	3
212	14	2
212	15	10
213	12	4
214	10	8
214	5	10
215	13	4
215	15	2
215	2	5
215	4	9
215	14	9
216	4	9
216	11	1
216	7	7
216	15	9
216	5	4
217	4	5
217	12	10
218	15	5
218	5	10
219	11	8
220	15	3
221	2	10
221	3	5
221	13	1
222	5	5
222	11	2
222	14	10
222	1	2
222	2	9
223	2	7
223	15	10
223	10	5
224	11	5
224	9	6
224	1	7
224	12	10
225	13	10
226	10	6
226	2	7
226	4	3
226	13	4
227	4	10
227	1	9
227	7	6
227	5	8
227	9	1
228	12	1
228	14	3
229	6	8
230	11	8
231	1	1
231	10	6
231	13	10
231	15	7
231	8	5
232	15	4
232	3	8
232	14	7
232	4	5
233	4	3
233	3	4
234	13	9
234	4	3
234	7	6
235	2	10
236	8	4
236	6	5
237	11	9
237	10	2
237	1	3
238	3	10
238	12	1
238	6	4
238	2	2
238	7	2
239	15	2
239	3	2
239	7	8
240	4	9
240	2	3
240	15	7
240	1	7
240	7	8
241	1	4
241	10	2
241	2	7
241	11	4
241	3	4
242	3	9
242	12	7
242	6	6
242	1	10
243	10	8
243	7	5
243	2	1
243	9	6
244	1	5
244	6	1
244	4	8
244	2	10
245	11	5
245	6	2
245	15	10
245	9	6
245	14	7
246	7	5
246	15	7
246	14	2
246	6	3
247	14	3
247	2	10
247	9	8
248	9	4
249	3	7
249	7	3
249	15	3
250	2	9
250	15	3
250	14	7
250	1	4
251	5	8
251	15	8
251	8	8
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, customer_id, tanggal, alamat, telepon) FROM stdin;
1	48	2022-10-05	Jakarta	085837636207
2	8	2022-10-06	Tangerang	089825014752
3	33	2022-10-19	Tangerang	083520004887
4	24	2022-10-16	Bandung	084891935648
5	16	2022-10-19	Depok	089100792284
6	25	2022-10-03	Depok	089751169261
7	11	2022-10-09	Tangerang	089163529879
8	33	2022-10-20	Bekasi	088397786837
9	29	2022-10-18	Bandung	086567957449
10	33	2022-10-16	Bekasi	088774268162
11	5	2022-10-02	Jakarta	084540791634
12	17	2022-10-04	Depok	089573946731
13	19	2022-10-01	Bekasi	082449292185
14	27	2022-10-02	Jakarta	085684586609
15	37	2022-10-14	Bandung	081310824097
16	14	2022-10-18	Bogor	084195300222
17	24	2022-10-12	Jakarta	085872552931
18	22	2022-10-01	Bandung	083828859034
19	48	2022-10-06	Depok	089087433546
20	42	2022-10-21	Depok	087378978502
21	3	2022-10-11	Tangerang	082166400434
22	15	2022-10-20	Depok	088530290391
23	12	2022-10-08	Tangerang	087127472165
24	1	2022-10-18	Bekasi	082979433732
25	33	2022-10-05	Bekasi	083521763775
26	22	2022-10-19	Bandung	082947843861
27	11	2022-10-21	Tangerang	089810282960
28	22	2022-10-11	Bekasi	081073419584
29	29	2022-10-16	Bekasi	084816684473
30	11	2022-10-18	Depok	081917920752
31	31	2022-10-20	Bekasi	089558418991
32	46	2022-10-02	Tangerang	082741002723
33	37	2022-10-20	Depok	089191800434
34	8	2022-10-15	Bekasi	089020454825
35	17	2022-10-21	Bekasi	087811475191
36	46	2022-10-11	Bandung	085836320151
37	35	2022-10-10	Bekasi	081437325349
38	20	2022-10-06	Bogor	084638208428
39	35	2022-10-12	Jakarta	081999117419
40	22	2022-10-02	Tangerang	083562794278
41	14	2022-10-20	Bandung	085516556015
42	41	2022-10-16	Bekasi	084308027624
43	4	2022-10-06	Jakarta	086184144558
44	44	2022-10-19	Bekasi	085354524666
45	4	2022-10-12	Jakarta	081671342300
46	49	2022-10-02	Bekasi	082219622382
47	50	2022-10-04	Depok	082452881710
48	37	2022-10-02	Jakarta	081736970852
49	23	2022-10-16	Tangerang	086107849672
50	38	2022-10-12	Bekasi	087238450866
51	45	2022-10-16	Jakarta	088475529677
52	38	2022-10-11	Bekasi	083987993752
53	25	2022-10-21	Bandung	085992697386
54	46	2022-10-07	Bogor	083338434607
55	35	2022-10-02	Depok	088304189967
56	13	2022-10-20	Tangerang	082938751294
57	4	2022-10-15	Bandung	084837862280
58	3	2022-10-08	Tangerang	083429519842
59	35	2022-10-11	Bandung	089199176432
60	7	2022-10-02	Bekasi	084616668632
61	44	2022-10-08	Depok	086439388203
62	10	2022-10-17	Jakarta	085043290175
63	10	2022-10-07	Bogor	085593262441
64	29	2022-10-02	Depok	084554793252
65	44	2022-10-14	Bekasi	085567642017
66	29	2022-10-04	Jakarta	083681483978
67	8	2022-10-01	Depok	081197015942
68	40	2022-10-01	Tangerang	082545887122
69	4	2022-10-03	Jakarta	086509931476
70	34	2022-10-19	Tangerang	088489874769
71	45	2022-10-21	Bekasi	082453931230
72	1	2022-10-13	Bandung	089349157423
73	14	2022-10-19	Bekasi	084918675061
74	37	2022-10-08	Depok	087349652021
75	13	2022-10-03	Bandung	081865816640
76	48	2022-10-20	Bogor	084514669961
77	40	2022-10-09	Bandung	089532461720
78	26	2022-10-06	Tangerang	086703124771
79	45	2022-10-06	Jakarta	081904766706
80	13	2022-10-14	Bekasi	085050524973
81	23	2022-10-15	Depok	081762891119
82	18	2022-10-14	Bandung	088039427293
83	12	2022-10-08	Bekasi	082022368581
84	33	2022-10-10	Bandung	082940569421
85	4	2022-10-05	Tangerang	083285566628
86	43	2022-10-19	Jakarta	088920279345
87	10	2022-10-17	Bekasi	084311621506
88	15	2022-10-05	Tangerang	082065922329
89	4	2022-10-21	Bandung	085418491648
90	30	2022-10-02	Bogor	089537668848
91	46	2022-10-19	Bogor	086448405069
92	31	2022-10-12	Bekasi	087542171659
93	41	2022-10-15	Jakarta	089609051785
94	28	2022-10-12	Bandung	084375591158
95	49	2022-10-06	Jakarta	086553976336
96	8	2022-10-11	Bandung	086472323708
97	4	2022-10-11	Bogor	089498056188
98	47	2022-10-12	Tangerang	089650992601
99	2	2022-10-10	Bekasi	086791221749
100	27	2022-10-01	Bandung	084750474176
101	6	2022-10-09	Tangerang	087147891934
102	2	2022-10-10	Depok	084612725464
103	35	2022-10-03	Bogor	083676413859
104	39	2022-10-10	Depok	083738494864
105	42	2022-10-01	Depok	083052468211
106	16	2022-10-04	Tangerang	083824842045
107	12	2022-10-19	Tangerang	081788803198
108	15	2022-10-13	Depok	081445062659
109	16	2022-10-06	Bogor	088740792325
110	5	2022-10-13	Bandung	089351261367
111	30	2022-10-09	Bandung	082267703813
112	13	2022-10-16	Bogor	082742349046
113	35	2022-10-15	Bogor	081839102895
114	11	2022-10-09	Tangerang	085316476247
115	26	2022-10-06	Bekasi	088165739269
116	22	2022-10-20	Bandung	084084647355
117	7	2022-10-19	Tangerang	083242229594
118	11	2022-10-19	Bandung	084947526447
119	4	2022-10-03	Bandung	087691633979
120	8	2022-10-07	Bogor	084509899591
121	24	2022-10-10	Bogor	084866365681
122	22	2022-10-14	Jakarta	089230935241
123	1	2022-10-07	Depok	082639142295
124	50	2022-10-09	Tangerang	083370311512
125	4	2022-10-08	Bekasi	088205470290
126	42	2022-10-14	Tangerang	086083161282
127	4	2022-10-12	Bandung	084042216490
128	50	2022-10-08	Depok	089215157114
129	33	2022-10-18	Tangerang	084231264079
130	45	2022-10-06	Depok	085688441571
131	17	2022-10-03	Bandung	087501397951
132	43	2022-10-18	Jakarta	088780009703
133	42	2022-10-14	Depok	085848511365
134	39	2022-10-16	Bandung	081958004324
135	13	2022-10-18	Bogor	089087028567
136	36	2022-10-11	Jakarta	089872601307
137	29	2022-10-10	Jakarta	089132939587
138	50	2022-10-11	Tangerang	082102315159
139	13	2022-10-12	Tangerang	082119370229
140	20	2022-10-17	Bekasi	084712171656
141	46	2022-10-21	Bekasi	086398286732
142	48	2022-10-15	Bandung	082865730809
143	21	2022-10-21	Jakarta	089951842769
144	11	2022-10-13	Bekasi	086132844324
145	2	2022-10-15	Bogor	081838040332
146	3	2022-10-07	Tangerang	084300626003
147	37	2022-10-11	Bogor	088207263497
148	8	2022-10-21	Bogor	085359592206
149	31	2022-10-06	Bogor	084994846518
150	7	2022-10-19	Bandung	082529928153
151	35	2022-10-16	Bogor	089453618106
152	30	2022-10-09	Depok	085765800533
153	14	2022-10-18	Jakarta	088858900183
154	29	2022-10-12	Bandung	084873144007
155	44	2022-10-13	Bekasi	082917188813
156	5	2022-10-12	Tangerang	081268941229
157	29	2022-10-13	Tangerang	081457297703
158	46	2022-10-01	Bogor	082861581283
159	22	2022-10-17	Bandung	082578697187
160	26	2022-10-02	Tangerang	082272179408
161	5	2022-10-01	Tangerang	086830359121
162	25	2022-10-04	Depok	084326516307
163	11	2022-10-01	Bogor	088276951039
164	35	2022-10-01	Bogor	083538601878
165	10	2022-10-06	Bekasi	083895738798
166	31	2022-10-12	Bogor	086365442026
167	39	2022-10-17	Tangerang	081991460804
168	42	2022-10-20	Bandung	089196669604
169	14	2022-10-20	Bekasi	089897759397
170	49	2022-10-06	Bekasi	088545860306
171	2	2022-10-08	Jakarta	089311122014
172	24	2022-10-16	Tangerang	088473993869
173	41	2022-10-11	Bekasi	084639032636
174	42	2022-10-02	Bogor	084798050568
175	20	2022-10-10	Tangerang	086453290176
176	16	2022-10-14	Bogor	085475174219
177	33	2022-10-13	Tangerang	084762688796
178	47	2022-10-13	Bekasi	086031854983
179	29	2022-10-10	Jakarta	083281148611
180	20	2022-10-11	Jakarta	086285918587
181	45	2022-10-19	Bekasi	084700694143
182	7	2022-10-11	Bogor	081826680006
183	35	2022-10-12	Bogor	086598056789
184	41	2022-10-05	Bogor	081033256969
185	31	2022-10-11	Tangerang	087311280420
186	47	2022-10-16	Bandung	082971410911
187	41	2022-10-03	Depok	088203480279
188	50	2022-10-08	Bandung	088382984696
189	48	2022-10-02	Depok	081344983257
190	46	2022-10-01	Tangerang	085223471757
191	20	2022-10-10	Tangerang	081178655895
192	9	2022-10-05	Bekasi	081572206425
193	4	2022-10-05	Bekasi	083613892235
194	23	2022-10-21	Depok	081419265862
195	44	2022-10-14	Jakarta	088537038721
196	34	2022-10-20	Bogor	083520952934
197	18	2022-10-09	Bekasi	085111682986
198	17	2022-10-13	Jakarta	081094781738
199	5	2022-10-18	Depok	087154595938
200	27	2022-10-08	Jakarta	086501057351
201	15	2022-10-21	Bekasi	081300312356
202	44	2022-10-06	Bandung	081076856964
203	5	2022-10-04	Bogor	083642223351
204	38	2022-10-21	Depok	086938025593
205	28	2022-10-02	Bekasi	087695622056
206	4	2022-10-06	Bekasi	087894441053
207	19	2022-10-07	Bogor	083256695441
208	12	2022-10-17	Tangerang	088508411701
209	7	2022-10-21	Bandung	082648146698
210	41	2022-10-02	Jakarta	088310074330
211	46	2022-10-10	Bekasi	087392243591
212	17	2022-10-13	Bogor	083654341162
213	23	2022-10-12	Tangerang	086806973896
214	4	2022-10-13	Depok	085782380581
215	41	2022-10-09	Tangerang	089744690568
216	35	2022-10-16	Bekasi	087684028188
217	16	2022-10-15	Bekasi	085935492831
218	41	2022-10-06	Tangerang	083107128156
219	16	2022-10-15	Bandung	082534596349
220	35	2022-10-02	Bogor	083363334215
221	36	2022-10-21	Bandung	082427895443
222	33	2022-10-17	Bogor	085194341475
223	46	2022-10-13	Bogor	081910809423
224	36	2022-10-21	Bandung	083946365263
225	36	2022-10-01	Tangerang	083088194009
226	4	2022-10-08	Tangerang	087023186015
227	47	2022-10-07	Bandung	088182007418
228	2	2022-10-21	Bandung	084934145316
229	13	2022-10-05	Bogor	085647431481
230	11	2022-10-05	Bogor	084512784793
231	28	2022-10-10	Tangerang	083209131635
232	48	2022-10-01	Tangerang	083440291766
233	27	2022-10-06	Tangerang	086792746005
234	42	2022-10-12	Jakarta	089341052606
235	29	2022-10-04	Depok	084118231914
236	16	2022-10-09	Bogor	084888339451
237	20	2022-10-15	Bekasi	083441911279
238	13	2022-10-08	Bekasi	086877796608
239	38	2022-10-12	Tangerang	087741890361
240	10	2022-10-03	Tangerang	081284490993
241	49	2022-10-17	Depok	082971169481
242	43	2022-10-09	Bogor	087773426031
243	3	2022-10-13	Depok	088595124563
244	24	2022-10-21	Bandung	087507813058
245	23	2022-10-02	Jakarta	087351341478
246	39	2022-10-13	Jakarta	082993636989
247	23	2022-10-12	Bandung	088824772463
248	13	2022-10-04	Jakarta	089004723055
249	32	2022-10-16	Depok	081089960852
250	39	2022-10-12	Jakarta	085586123263
251	35	2022-10-17	Bogor	083014858964
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, nama, jumlah, harga) FROM stdin;
1	tomat	104	30000
2	wortel	72	24000
3	selada	107	23000
4	cabai merah	61	17000
5	cabai hijau	78	15000
6	cabai rawit	145	29000
7	bawang merah	63	16000
8	bawang putih	132	19000
9	bayam	97	21000
10	kentang	107	23000
11	kubis	79	19000
12	brokoli	127	19000
13	kembang kol	102	21000
14	sawi	93	15000
15	singkong	61	17000
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: order_details order_details_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: order_details order_details_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- PostgreSQL database dump complete
--

