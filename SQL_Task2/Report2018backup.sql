PGDMP                      |         
   Report2018    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41190 
   Report2018    DATABASE        CREATE DATABASE "Report2018" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "Report2018";
                postgres    false            �            1259    41192    product_details    TABLE     �   CREATE TABLE public.product_details (
    id integer NOT NULL,
    product_id character varying(100),
    product_name character varying(500),
    category character varying(150),
    sub_category character varying(150),
    is_active boolean
);
 #   DROP TABLE public.product_details;
       public         heap    postgres    false            �            1259    41191    product_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_details_id_seq;
       public          postgres    false    216                        0    0    product_details_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_details_id_seq OWNED BY public.product_details.id;
          public          postgres    false    215            �            1259    41217 
   report2018    TABLE     �  CREATE TABLE public.report2018 (
    id integer NOT NULL,
    customer_name character varying(150),
    order_id character varying(150),
    order_date date,
    ship_date date,
    ship_mode character varying(150),
    customer_id character varying(150),
    segment character varying(50),
    city character varying(50),
    state_country character varying(150),
    region character varying(150),
    market character varying(50),
    product_details_id integer,
    sales_data_id integer
);
    DROP TABLE public.report2018;
       public         heap    postgres    false            �            1259    41216    report2018_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report2018_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.report2018_id_seq;
       public          postgres    false    220                       0    0    report2018_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.report2018_id_seq OWNED BY public.report2018.id;
          public          postgres    false    219            �            1259    41201 
   sales_data    TABLE     �   CREATE TABLE public.sales_data (
    id integer NOT NULL,
    sales integer,
    quantity integer,
    discount integer,
    profit integer,
    shiping_cost integer,
    order_priority character varying(150),
    is_active boolean
);
    DROP TABLE public.sales_data;
       public         heap    postgres    false            �            1259    41200    sales_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sales_data_id_seq;
       public          postgres    false    218                       0    0    sales_data_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sales_data_id_seq OWNED BY public.sales_data.id;
          public          postgres    false    217            Z           2604    41195    product_details id    DEFAULT     x   ALTER TABLE ONLY public.product_details ALTER COLUMN id SET DEFAULT nextval('public.product_details_id_seq'::regclass);
 A   ALTER TABLE public.product_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            \           2604    41220    report2018 id    DEFAULT     n   ALTER TABLE ONLY public.report2018 ALTER COLUMN id SET DEFAULT nextval('public.report2018_id_seq'::regclass);
 <   ALTER TABLE public.report2018 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            [           2604    41204    sales_data id    DEFAULT     n   ALTER TABLE ONLY public.sales_data ALTER COLUMN id SET DEFAULT nextval('public.sales_data_id_seq'::regclass);
 <   ALTER TABLE public.sales_data ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    41192    product_details 
   TABLE DATA           j   COPY public.product_details (id, product_id, product_name, category, sub_category, is_active) FROM stdin;
    public          postgres    false    216   �        �          0    41217 
   report2018 
   TABLE DATA           �   COPY public.report2018 (id, customer_name, order_id, order_date, ship_date, ship_mode, customer_id, segment, city, state_country, region, market, product_details_id, sales_data_id) FROM stdin;
    public          postgres    false    220   :"       �          0    41201 
   sales_data 
   TABLE DATA           t   COPY public.sales_data (id, sales, quantity, discount, profit, shiping_cost, order_priority, is_active) FROM stdin;
    public          postgres    false    218   �$                  0    0    product_details_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_details_id_seq', 9, true);
          public          postgres    false    215                       0    0    report2018_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.report2018_id_seq', 9, true);
          public          postgres    false    219                       0    0    sales_data_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sales_data_id_seq', 9, true);
          public          postgres    false    217            ^           2606    41199 $   product_details product_details_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.product_details
    ADD CONSTRAINT product_details_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.product_details DROP CONSTRAINT product_details_pkey;
       public            postgres    false    216            b           2606    41224    report2018 report2018_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.report2018
    ADD CONSTRAINT report2018_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.report2018 DROP CONSTRAINT report2018_pkey;
       public            postgres    false    220            `           2606    41206    sales_data sales_data_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_data
    ADD CONSTRAINT sales_data_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_data DROP CONSTRAINT sales_data_pkey;
       public            postgres    false    218            c           2606    41225 -   report2018 report2018_product_details_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.report2018
    ADD CONSTRAINT report2018_product_details_id_fkey FOREIGN KEY (product_details_id) REFERENCES public.product_details(id);
 W   ALTER TABLE ONLY public.report2018 DROP CONSTRAINT report2018_product_details_id_fkey;
       public          postgres    false    216    220    4702            d           2606    41230 (   report2018 report2018_sales_data_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.report2018
    ADD CONSTRAINT report2018_sales_data_id_fkey FOREIGN KEY (sales_data_id) REFERENCES public.sales_data(id);
 R   ALTER TABLE ONLY public.report2018 DROP CONSTRAINT report2018_sales_data_id_fkey;
       public          postgres    false    220    218    4704            �   �  x�e��n�0���)�\���I�څ"�K/�d �:vd;�y�5N�"qk�}��̔��-/�<��e�	�,����r���X�c�`�p�����PG��ד{+K�my:�RV9T����:���-���A����R�e�q7<x�������\b�[X�C���h)2a~��<���Z�DG���R�����������.Mhќ튜o�h�X��<�9{G��V+��p��'%x��vT�JK}��ͭTiP�2>�����J������<���]a�:�?��<�.RV��^`��W�#*݉���ꚬ�F��EXi����H��������^����Ux�s�k�$I�^����$�EP��v\C-	�Z^�[5���,ԉ��G���d2��LȮ      �   C  x���ݎ�0��O��/��v����Z@����:oc�ح���O_/K�#*E�$�_�L8T�!s�v���;�g��&�#8?��r~�T�}M����jN�t��a�
�TYU�΁T����_m�r}אI���j����O<�#Y�7m����K�"A))g�F��-�Ò��n��sU+�f��.��# �V��-����1j%y1.�@��s(Q��㏊��+I�g�}yz�����{{#�4�`��kK*<yua(��)K/�9~���`f��$m���u�m�ݣ� K�3��d��(�^q6a{qؘ�2�0�gC�me�{��MyR�V�d�w��OZ�:�l���<E���	���فf;�����v�(v��F}�R@����ݡ!��m��-�	���-y�����m4����_�c��k��0	0�w�q'�q�}h�GD%���a͉<��ìr�|�E^���ܗ<J�h�HLg�Z�W{�5��M��>���F��{Kd���bF�,�X�/��+�����*I�5����1pD���A����B{a�8��)I�h�      �   �   x�M�11��ck'ι��\� q��A��4Yr1����
�K�=7��$�*rP5Ώ{����`p��8�����(�O�����]�:�=�d�b�c�P�JF/��:�^G5:f�(6��;_)�?ߐ.�     