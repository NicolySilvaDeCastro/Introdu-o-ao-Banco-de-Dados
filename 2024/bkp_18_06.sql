PGDMP  #                    |            escola3c    16.1    16.0 )    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    155931    escola3c    DATABASE        CREATE DATABASE escola3c WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE escola3c;
                postgres    false            �            1259    155933    aluno    TABLE     �   CREATE TABLE public.aluno (
    matricula integer NOT NULL,
    nome character varying(50),
    turma integer,
    cpf character varying(11),
    data_nasc date
);
    DROP TABLE public.aluno;
       public         heap    postgres    false            �            1259    155932    aluno_matricula_seq    SEQUENCE     �   CREATE SEQUENCE public.aluno_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.aluno_matricula_seq;
       public          postgres    false    216            �           0    0    aluno_matricula_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.aluno_matricula_seq OWNED BY public.aluno.matricula;
          public          postgres    false    215            �            1259    155947    curso    TABLE     �   CREATE TABLE public.curso (
    id integer NOT NULL,
    nome character varying(50),
    cod_professor integer,
    cod_aluno integer,
    duracao_horas integer
);
    DROP TABLE public.curso;
       public         heap    postgres    false            �            1259    155946    curso_id_seq    SEQUENCE     �   CREATE SEQUENCE public.curso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.curso_id_seq;
       public          postgres    false    220            �           0    0    curso_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.curso_id_seq OWNED BY public.curso.id;
          public          postgres    false    219            �            1259    155966    nota    TABLE     �   CREATE TABLE public.nota (
    id_nota integer NOT NULL,
    mat_aluno integer,
    cod_disciplina integer,
    nota double precision,
    data date
);
    DROP TABLE public.nota;
       public         heap    postgres    false            �            1259    155965    nota_id_nota_seq    SEQUENCE     �   CREATE SEQUENCE public.nota_id_nota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.nota_id_nota_seq;
       public          postgres    false    224            �           0    0    nota_id_nota_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.nota_id_nota_seq OWNED BY public.nota.id_nota;
          public          postgres    false    223            �            1259    155959 	   professor    TABLE     �   CREATE TABLE public.professor (
    matricula integer NOT NULL,
    nome character varying(100),
    formacao character varying(50),
    data_nasc date,
    cpf character varying(11)
);
    DROP TABLE public.professor;
       public         heap    postgres    false            �            1259    155958    professor_matricula_seq    SEQUENCE     �   CREATE SEQUENCE public.professor_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.professor_matricula_seq;
       public          postgres    false    222            �           0    0    professor_matricula_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.professor_matricula_seq OWNED BY public.professor.matricula;
          public          postgres    false    221            �            1259    155940    turma    TABLE     �   CREATE TABLE public.turma (
    id integer NOT NULL,
    serie character varying(6),
    curso integer,
    periodo character varying(15)
);
    DROP TABLE public.turma;
       public         heap    postgres    false            �            1259    155939    turma_id_seq    SEQUENCE     �   CREATE SEQUENCE public.turma_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.turma_id_seq;
       public          postgres    false    218            �           0    0    turma_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.turma_id_seq OWNED BY public.turma.id;
          public          postgres    false    217            .           2604    155936    aluno matricula    DEFAULT     r   ALTER TABLE ONLY public.aluno ALTER COLUMN matricula SET DEFAULT nextval('public.aluno_matricula_seq'::regclass);
 >   ALTER TABLE public.aluno ALTER COLUMN matricula DROP DEFAULT;
       public          postgres    false    216    215    216            0           2604    155950    curso id    DEFAULT     d   ALTER TABLE ONLY public.curso ALTER COLUMN id SET DEFAULT nextval('public.curso_id_seq'::regclass);
 7   ALTER TABLE public.curso ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            2           2604    155969    nota id_nota    DEFAULT     l   ALTER TABLE ONLY public.nota ALTER COLUMN id_nota SET DEFAULT nextval('public.nota_id_nota_seq'::regclass);
 ;   ALTER TABLE public.nota ALTER COLUMN id_nota DROP DEFAULT;
       public          postgres    false    223    224    224            1           2604    155962    professor matricula    DEFAULT     z   ALTER TABLE ONLY public.professor ALTER COLUMN matricula SET DEFAULT nextval('public.professor_matricula_seq'::regclass);
 B   ALTER TABLE public.professor ALTER COLUMN matricula DROP DEFAULT;
       public          postgres    false    221    222    222            /           2604    155943    turma id    DEFAULT     d   ALTER TABLE ONLY public.turma ALTER COLUMN id SET DEFAULT nextval('public.turma_id_seq'::regclass);
 7   ALTER TABLE public.turma ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �          0    155933    aluno 
   TABLE DATA           G   COPY public.aluno (matricula, nome, turma, cpf, data_nasc) FROM stdin;
    public          postgres    false    216   �+       �          0    155947    curso 
   TABLE DATA           R   COPY public.curso (id, nome, cod_professor, cod_aluno, duracao_horas) FROM stdin;
    public          postgres    false    220   �+       �          0    155966    nota 
   TABLE DATA           N   COPY public.nota (id_nota, mat_aluno, cod_disciplina, nota, data) FROM stdin;
    public          postgres    false    224   �+       �          0    155959 	   professor 
   TABLE DATA           N   COPY public.professor (matricula, nome, formacao, data_nasc, cpf) FROM stdin;
    public          postgres    false    222   �+       �          0    155940    turma 
   TABLE DATA           :   COPY public.turma (id, serie, curso, periodo) FROM stdin;
    public          postgres    false    218   ,       �           0    0    aluno_matricula_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.aluno_matricula_seq', 1, false);
          public          postgres    false    215            �           0    0    curso_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.curso_id_seq', 1, false);
          public          postgres    false    219            �           0    0    nota_id_nota_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.nota_id_nota_seq', 1, false);
          public          postgres    false    223            �           0    0    professor_matricula_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.professor_matricula_seq', 1, false);
          public          postgres    false    221            �           0    0    turma_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.turma_id_seq', 1, false);
          public          postgres    false    217            4           2606    155938    aluno aluno_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (matricula);
 :   ALTER TABLE ONLY public.aluno DROP CONSTRAINT aluno_pkey;
       public            postgres    false    216            8           2606    155952    curso curso_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.curso DROP CONSTRAINT curso_pkey;
       public            postgres    false    220            <           2606    155971    nota nota_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.nota
    ADD CONSTRAINT nota_pkey PRIMARY KEY (id_nota);
 8   ALTER TABLE ONLY public.nota DROP CONSTRAINT nota_pkey;
       public            postgres    false    224            :           2606    155964    professor professor_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (matricula);
 B   ALTER TABLE ONLY public.professor DROP CONSTRAINT professor_pkey;
       public            postgres    false    222            6           2606    155945    turma turma_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.turma
    ADD CONSTRAINT turma_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.turma DROP CONSTRAINT turma_pkey;
       public            postgres    false    218            =           2606    155953    curso curso_cod_aluno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_cod_aluno_fkey FOREIGN KEY (cod_aluno) REFERENCES public.aluno(matricula);
 D   ALTER TABLE ONLY public.curso DROP CONSTRAINT curso_cod_aluno_fkey;
       public          postgres    false    4660    220    216            >           2606    155972    nota nota_mat_aluno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nota
    ADD CONSTRAINT nota_mat_aluno_fkey FOREIGN KEY (mat_aluno) REFERENCES public.aluno(matricula);
 B   ALTER TABLE ONLY public.nota DROP CONSTRAINT nota_mat_aluno_fkey;
       public          postgres    false    4660    224    216            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     