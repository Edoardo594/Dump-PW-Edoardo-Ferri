--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2025-04-02 12:43:08

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
-- TOC entry 3505 (class 1262 OID 126833)
-- Name: atac; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE atac WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Italian_Italy.1252';


ALTER DATABASE atac OWNER TO postgres;

\connect atac

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
-- TOC entry 3483 (class 0 OID 127012)
-- Dependencies: 227
-- Data for Name: abbonamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abbonamento (id, tipo, costo, data_inizio, data_fine, passeggero_id) FROM stdin;
1	Mensile	30.00	2025-03-01	2025-03-31	1
2	Annuale	300.00	2025-01-01	2025-12-31	2
3	Settimanale	10.00	2025-03-10	2025-03-17	3
4	Annuale	300.00	2025-02-01	2026-01-31	4
5	Mensile	30.00	2025-03-15	2025-04-14	5
\.


--
-- TOC entry 3487 (class 0 OID 127086)
-- Dependencies: 231
-- Data for Name: biglietto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.biglietto (id, prezzo, data_acquisto, tipo_biglietto, scadenza, stato, validita, metodo_acquisto, passeggero_id, pagamento_id, tratta_id) FROM stdin;
16	1.50	2025-03-01 00:00:00	Singolo	2025-03-01	Valido	true	Online	1	15	11
17	2.00	2025-03-02 00:00:00	Singolo	2025-03-02	Scaduto	false	Online	2	14	12
18	1.80	2025-03-03 00:00:00	Singolo	2025-03-03	Valido	true	Fisico	3	13	14
19	1.50	2025-03-04 00:00:00	Singolo	2025-03-04	Annullato	false	Fisico	4	12	13
20	2.50	2025-03-05 00:00:00	Singolo	2025-03-05	Valido	true	Online	5	11	15
\.


--
-- TOC entry 3497 (class 0 OID 127205)
-- Dependencies: 241
-- Data for Name: cambi_scali; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cambi_scali (id, tratta_origine_id, tratta_destinazione_id, tempo_attesa, fermata_id) FROM stdin;
7	11	13	5	8
8	12	14	8	9
9	13	15	10	10
\.


--
-- TOC entry 3477 (class 0 OID 126954)
-- Dependencies: 221
-- Data for Name: controllore; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.controllore (id, nome, matricola, zona_operativa) FROM stdin;
1	Mario Rossi	CTR001	Zona Centro
2	Luca Bianchi	CTR002	Zona Sud
3	Giulia Verdi	CTR003	Zona Nord
4	Antonio Neri	CTR004	Zona Est
5	Sara Gialli	CTR005	Zona Ovest
\.


--
-- TOC entry 3479 (class 0 OID 126963)
-- Dependencies: 223
-- Data for Name: controllore_percorso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.controllore_percorso (id, controllore_id, percorso_id, data_supervisione) FROM stdin;
1	1	1	2024-03-10 00:00:00
2	2	2	2024-03-12 00:00:00
3	3	3	2024-03-14 00:00:00
4	4	1	2024-03-16 00:00:00
5	5	2	2024-03-18 00:00:00
\.


--
-- TOC entry 3489 (class 0 OID 127127)
-- Dependencies: 233
-- Data for Name: fermata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fermata (id, nome, tipo, coordinate_geografiche, citta, linea_id) FROM stdin;
6	Termini	Metro	41.9010,12.5013	Roma	1
7	Colosseo	Metro	41.8902,12.4922	Roma	1
8	Piazza Venezia	Autobus	41.8967,12.4823	Roma	2
9	Trastevere	Tram	41.8777,12.4662	Roma	3
10	Piramide	Metro	41.8755,12.4823	Roma	4
\.


--
-- TOC entry 3473 (class 0 OID 126930)
-- Dependencies: 217
-- Data for Name: linea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.linea (id, nome, tipo, colore) FROM stdin;
1	Metro A	Metro	Rosso
2	Metro B	Metro	Blu
3	Tram 8	Tram	Verde
4	Bus 64	Autobus	Giallo
5	Metro C	Metro	Arancione
6	Bus 93	Autobus	Rosso
7	Metro B	Metro	Blu
8	Tram 8	Tram	Verde
9	Bus 64	Autobus	Giallo
10	Metro A	Metro	Arancione
\.


--
-- TOC entry 3471 (class 0 OID 126892)
-- Dependencies: 215
-- Data for Name: mezzo_trasporto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mezzo_trasporto (id, tipo, modello, capacita, numero_identificazione, stato, gps) FROM stdin;
1	Autobus	Mercedes Citaro	100	AB123	Attivo	41.9028,12.4964
2	Tram	Fiat Cityway	200	TR456	Attivo	41.9098,12.5050
3	Metro	CAF Serie	500	MT789	Fuori Servizio	41.9032,12.4829
4	Autobus	Iveco Urbanway	120	AB321	Attivo	41.8902,12.4922
5	Tram	Hitachi Sirio	180	TR654	Manutenzione	41.8928,12.4809
\.


--
-- TOC entry 3493 (class 0 OID 127163)
-- Dependencies: 237
-- Data for Name: orario_tratta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orario_tratta (id, tratta_id, ora_partenza, ora_arrivo_prevista, ora_arrivo_effettiva) FROM stdin;
1	11	08:00:00	08:10:00	08:09:00
2	12	09:15:00	09:30:00	09:28:00
3	13	10:00:00	10:20:00	10:21:00
4	14	11:30:00	11:42:00	11:40:00
5	15	12:00:00	12:25:00	12:26:00
\.


--
-- TOC entry 3485 (class 0 OID 127063)
-- Dependencies: 229
-- Data for Name: pagamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pagamento (id, metodo_pagamento, data_pagamento, importo, stato_pagamento, biglietto_id) FROM stdin;
11	Carta di Credito	2025-04-02 11:47:30.335131	1.50	Completato	16
12	PayPal	2025-04-02 11:47:30.335131	2.00	Completato	19
13	Contanti	2025-04-02 11:47:30.335131	1.80	Completato	18
14	Carta di Credito	2025-04-02 11:47:30.335131	1.50	Annullato	20
15	PayPal	2025-04-02 11:47:30.335131	2.50	Completato	17
\.


--
-- TOC entry 3481 (class 0 OID 127000)
-- Dependencies: 225
-- Data for Name: passeggero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.passeggero (id, nome, cognome, email, telefono, tipo_abbonamento, abbonamento_id) FROM stdin;
1	Mario	Rossi	mario.rossi@email.com	3331234567	Mensile	1
2	Luca	Bianchi	luca.bianchi@email.com	3399876543	Annuale	2
3	Anna	Verdi	anna.verdi@email.com	3454567890	Settimanale	3
4	Sofia	Neri	sofia.neri@email.com	3201122334	Annuale	4
5	Giovanni	Gialli	giovanni.gialli@email.com	3665566778	Mensile	5
\.


--
-- TOC entry 3475 (class 0 OID 126937)
-- Dependencies: 219
-- Data for Name: percorso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.percorso (id, nome, inizio, fine) FROM stdin;
1	Linea Metro A	Termini	Piazza Venezia
2	Linea Tram 8	Piazza Venezia	Trastevere
3	Linea Metro B	Piramide	Termini
\.


--
-- TOC entry 3495 (class 0 OID 127189)
-- Dependencies: 239
-- Data for Name: percorso_tratta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.percorso_tratta (percorso_id, tratta_id, ordine) FROM stdin;
1	11	1
1	12	2
2	13	1
2	14	2
3	15	1
\.


--
-- TOC entry 3499 (class 0 OID 127228)
-- Dependencies: 243
-- Data for Name: storico_biglietto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.storico_biglietto (id, biglietto_id, data_modifica, tipo_modifica, dettagli_modifica, operatore_id) FROM stdin;
6	16	2024-03-10 12:30:00	Cambio data	Biglietto spostato al 12/03/2024	1
7	17	2024-03-12 09:45:00	Rimborso	Importo rimborsato per cancellazione tratta	2
8	18	2024-03-15 14:00:00	Aggiornamento stato	Validità estesa di 2 giorni	3
9	19	2024-03-18 17:20:00	Cambio passeggero	Biglietto assegnato a nuovo passeggero	1
10	20	2024-03-20 11:10:00	Sospensione	Biglietto sospeso per verifica pagamento	2
\.


--
-- TOC entry 3491 (class 0 OID 127141)
-- Dependencies: 235
-- Data for Name: tratta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tratta (id, fermata_partenza_id, fermata_destinazione_id, durata, costo, mezzo_trasporto_id) FROM stdin;
11	6	7	10	1.50	3
12	7	8	15	2.00	2
13	8	9	20	1.80	4
14	9	10	12	1.50	1
15	10	6	25	2.50	5
\.


--
-- TOC entry 3494 (class 0 OID 127174)
-- Dependencies: 238
-- Data for Name: tratta_fermata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tratta_fermata (tratta_id, fermata_id, ordine) FROM stdin;
11	6	1
11	7	2
12	7	1
12	8	2
13	8	1
13	9	2
14	9	1
14	10	2
15	10	1
15	6	2
\.


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 226
-- Name: abbonamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abbonamento_id_seq', 5, true);


--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 230
-- Name: biglietto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.biglietto_id_seq', 20, true);


--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 240
-- Name: cambi_scali_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cambi_scali_id_seq', 9, true);


--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 220
-- Name: controllore_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.controllore_id_seq', 1, false);


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 222
-- Name: controllore_percorso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.controllore_percorso_id_seq', 5, true);


--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 232
-- Name: fermata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fermata_id_seq', 10, true);


--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 216
-- Name: linea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.linea_id_seq', 10, true);


--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 214
-- Name: mezzo_trasporto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mezzo_trasporto_id_seq', 1, false);


--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 236
-- Name: orario_tratta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orario_tratta_id_seq', 5, true);


--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 228
-- Name: pagamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pagamento_id_seq', 15, true);


--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 224
-- Name: passeggero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.passeggero_id_seq', 5, true);


--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 218
-- Name: percorso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.percorso_id_seq', 1, false);


--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 242
-- Name: storico_biglietto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.storico_biglietto_id_seq', 10, true);


--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 234
-- Name: tratta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tratta_id_seq', 15, true);


-- Completed on 2025-04-02 12:43:08

--
-- PostgreSQL database dump complete
--

