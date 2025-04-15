PGDMP         7                }           atac    15.4    15.4 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    126833    atac    DATABASE     w   CREATE DATABASE atac WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Italian_Italy.1252';
    DROP DATABASE atac;
                postgres    false            �          0    127012    abbonamento 
   TABLE DATA           ]   COPY public.abbonamento (id, tipo, costo, data_inizio, data_fine, passeggero_id) FROM stdin;
    public          postgres    false    227   �       �          0    127086 	   biglietto 
   TABLE DATA           �   COPY public.biglietto (id, prezzo, data_acquisto, tipo_biglietto, scadenza, stato, validita, metodo_acquisto, passeggero_id, pagamento_id, tratta_id) FROM stdin;
    public          postgres    false    231   Q        �          0    127205    cambi_scali 
   TABLE DATA           n   COPY public.cambi_scali (id, tratta_origine_id, tratta_destinazione_id, tempo_attesa, fermata_id) FROM stdin;
    public          postgres    false    241   !       �          0    126954    controllore 
   TABLE DATA           J   COPY public.controllore (id, nome, matricola, zona_operativa) FROM stdin;
    public          postgres    false    221   F!       �          0    126963    controllore_percorso 
   TABLE DATA           b   COPY public.controllore_percorso (id, controllore_id, percorso_id, data_supervisione) FROM stdin;
    public          postgres    false    223   �!       �          0    127127    fermata 
   TABLE DATA           Z   COPY public.fermata (id, nome, tipo, coordinate_geografiche, citta, linea_id) FROM stdin;
    public          postgres    false    233   '"       �          0    126930    linea 
   TABLE DATA           7   COPY public.linea (id, nome, tipo, colore) FROM stdin;
    public          postgres    false    217   �"       �          0    126892    mezzo_trasporto 
   TABLE DATA           j   COPY public.mezzo_trasporto (id, tipo, modello, capacita, numero_identificazione, stato, gps) FROM stdin;
    public          postgres    false    215   W#       �          0    127163    orario_tratta 
   TABLE DATA           o   COPY public.orario_tratta (id, tratta_id, ora_partenza, ora_arrivo_prevista, ora_arrivo_effettiva) FROM stdin;
    public          postgres    false    237   6$       �          0    127063 	   pagamento 
   TABLE DATA           q   COPY public.pagamento (id, metodo_pagamento, data_pagamento, importo, stato_pagamento, biglietto_id) FROM stdin;
    public          postgres    false    229   �$       �          0    127000 
   passeggero 
   TABLE DATA           j   COPY public.passeggero (id, nome, cognome, email, telefono, tipo_abbonamento, abbonamento_id) FROM stdin;
    public          postgres    false    225   /%       �          0    126937    percorso 
   TABLE DATA           :   COPY public.percorso (id, nome, inizio, fine) FROM stdin;
    public          postgres    false    219   �%       �          0    127189    percorso_tratta 
   TABLE DATA           I   COPY public.percorso_tratta (percorso_id, tratta_id, ordine) FROM stdin;
    public          postgres    false    239   c&       �          0    127228    storico_biglietto 
   TABLE DATA           |   COPY public.storico_biglietto (id, biglietto_id, data_modifica, tipo_modifica, dettagli_modifica, operatore_id) FROM stdin;
    public          postgres    false    243   �&       �          0    127141    tratta 
   TABLE DATA           u   COPY public.tratta (id, fermata_partenza_id, fermata_destinazione_id, durata, costo, mezzo_trasporto_id) FROM stdin;
    public          postgres    false    235   �'       �          0    127174    tratta_fermata 
   TABLE DATA           G   COPY public.tratta_fermata (tratta_id, fermata_id, ordine) FROM stdin;
    public          postgres    false    238   �'       �          0    127340    viaggio 
   TABLE DATA           �   COPY public.viaggio (id_viaggio, passeggero_id, biglietto_id, tratta_id, fermata_id, orario_salita, orario_discesa) FROM stdin;
    public          postgres    false    245   @(       �           0    0    abbonamento_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.abbonamento_id_seq', 5, true);
          public          postgres    false    226            �           0    0    biglietto_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.biglietto_id_seq', 20, true);
          public          postgres    false    230            �           0    0    cambi_scali_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cambi_scali_id_seq', 9, true);
          public          postgres    false    240            �           0    0    controllore_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.controllore_id_seq', 1, false);
          public          postgres    false    220            �           0    0    controllore_percorso_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.controllore_percorso_id_seq', 5, true);
          public          postgres    false    222            �           0    0    fermata_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.fermata_id_seq', 10, true);
          public          postgres    false    232            �           0    0    linea_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.linea_id_seq', 10, true);
          public          postgres    false    216            �           0    0    mezzo_trasporto_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.mezzo_trasporto_id_seq', 1, false);
          public          postgres    false    214            �           0    0    orario_tratta_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orario_tratta_id_seq', 5, true);
          public          postgres    false    236            �           0    0    pagamento_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pagamento_id_seq', 15, true);
          public          postgres    false    228            �           0    0    passeggero_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.passeggero_id_seq', 5, true);
          public          postgres    false    224            �           0    0    percorso_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.percorso_id_seq', 1, false);
          public          postgres    false    218            �           0    0    storico_biglietto_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.storico_biglietto_id_seq', 10, true);
          public          postgres    false    242            �           0    0    tratta_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tratta_id_seq', 15, true);
          public          postgres    false    234            �           0    0    viaggio_id_viaggio_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.viaggio_id_viaggio_seq', 5, true);
          public          postgres    false    244            �   n   x�u�!�0DQ�{�6;�-h��b$P�J�܈���)/��ċ��F'��4X��yN���!�@e�.��8�`��x̚��wT�hU�G4p�y�x��(r�y��+�      �   �   x�}��
�0���W�-�M�՛�
����J $`��7)�H`n���=�4
��J�wJ�>A��3����f��"�����=l�L|��j%IF4���1�a��X��B\�V���KoZ]���N���?�U��9��{���js��$h���f��5O��{IDo��Z      �   /   x�3�44�44�4���44�44���	�r W� �K�      �      x�-�M
�0@���)r���H7Z��fh�L�o!Y^wR�J��sm���L.$���w2��kѕb�{�9{&�rj+��Q��C�p�Շ�טp������}ձ�������0;      �   B   x�3�4B##]c]C+0�2�C��BƘ�2&Nd��2���ȦY db���� �o      �   �   x�Uλ
1��z�)| 	I6�M)ւ�beq����$k��wo�v��gt��08QI�`���i.��ރ@���9S���q9;�������wW������Wo��[�u%:�υ^�h>�Z�Bc�p��O�i���j�_Txc��+7�      �   z   x�3��M-)�Wp�МA����\FPQ'��SN)�1gHQb����K-JI�2�t*-V03�t,-�O*-�t�L����2��w��w,J�K���K�2�4��Xh��B,Z��� �c���� ��E}      �   �   x�U�1��0E��)r �;k�)�"�n���b�8Apz�!����F@3�p��й8�?w-6>�@p�Z`MJ~ Ei8��R�Z2�>��ަ��o�HP��������"O��M��EH��h�����?�����h����f7��Ov�R���B�%Ք��"2��n��Li^�Z+	���Fr�na�_jn�o�{I�N�      �   T   x�=���0��=LeHR5����Qŕx�@� �gE(	b
NM���\-�'o%�_���
�M�,d�à��\�;��r�]�      �   �   x���;�0Dk�)|��C� H��!S��At�@I;zO3�(k=%�yJuQ�mh�7l5���wl�pP0�U\��<W�Q�V��%_y��ٻ��*�����lv��桔-g9HB�i��Ֆ��>J      �   �   x�U����0E�돱�3I��� HT4��#9�� ߏe�s�3W����3�y�Ce9V^��8�>0�(m���!M����{)�WF,"��/�������t��j�b�1�g����̺:�v�����aq�L؅�1U���<���6�~�pXs~�).@12.����x��M�~�u�$�O�
[�      �   X   x�3����KMT�M-)�Wp�I-������L��JTK�K��L�2�*)J�U�@��������r���T	ԑ��
3�+F��� 	�&H      �   (   x�3�44�4�b#N#.#NCc H� y@�)����� j      �   �   x�U�1N�0Ek�s�e=Nv�I�PтDE3�k�Ďl���.\;�H謯?���,�,���AUT���T��x���J$َlR�g���zTձ�
���f�hPmW�
照�ы�i�!O�5(�����f鋽3��������w�3��ֲ�&��>e�F#�~���d"���a鱨d+��X���{Ǚb4֚�w�K�Up�����U&�Au>v�@_}���Eg���U�npO�hW�,�� ���vH      �   E   x�%��� Cѳ=��t��?Gq|����
hT`Ri��#IM�E�����6���Fv���?]��      �   4   x���  �w\�r���A��b���DK0��	�z#�P�i�+����x
      �   o   x�e���0ϫ*� <�>`���#�\�s�ѼA� �������h̡�0��<A�9�^rm����:�۳�S,��@���sغS��$�8��|`���'�v���-�     