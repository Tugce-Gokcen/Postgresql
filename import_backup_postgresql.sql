PGDMP     %    8                w            datas    10.9    10.9 i    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    22883    datas    DATABASE     �   CREATE DATABASE datas WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';
    DROP DATABASE datas;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    22959 	   uuid-ossp 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA pg_catalog;
    DROP EXTENSION "uuid-ossp";
                  false            �           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                       false    1            �            1259    23144    Account    TABLE     �  CREATE TABLE public."Account" (
    "idAccount" uuid DEFAULT uuid_generate_v4() NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedBy" uuid,
    "createdBy" uuid,
    member_id uuid NOT NULL,
    "accountNumber" integer NOT NULL,
    "employerProvince_id" uuid,
    "dateOfDeath" date,
    "dateOfRetirement" date,
    "dateOfTermination" date,
    "dateOfTransferIn" date,
    "dateOfTransferOut" date,
    vested boolean DEFAULT false NOT NULL,
    "dateOfEntry" date,
    "dateOfHire" date,
    "normalRetirementDate" date,
    "earlyRetirementDate" date,
    "earlyUnreducedRetirementDate" date,
    "growIn" boolean DEFAULT false NOT NULL,
    plan_id uuid NOT NULL,
    "customOne" character varying(255),
    "customTwo" character varying(255),
    "customThree" character varying(255),
    "customFour" character varying(255),
    "isDeleted" boolean DEFAULT false NOT NULL,
    idx integer NOT NULL
);
    DROP TABLE public."Account";
       public         postgres    false    4            �            1259    23142    Account_idx_seq    SEQUENCE     �   CREATE SEQUENCE public."Account_idx_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Account_idx_seq";
       public       postgres    false    207    4            �           0    0    Account_idx_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Account_idx_seq" OWNED BY public."Account".idx;
            public       postgres    false    206            �            1259    23230    Contribution    TABLE     !  CREATE TABLE public."Contribution" (
    "idContribution" uuid DEFAULT uuid_generate_v4() NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedBy" uuid,
    "createdBy" uuid,
    account_id uuid,
    "periodEndYear" integer,
    contributions numeric(15,2),
    "contributionNotes" character varying(2000),
    plan_id uuid,
    "customOne" character varying(255),
    "customTwo" character varying(255),
    "customThree" character varying(255),
    "customFour" character varying(255),
    "eeBuybackAmount" numeric(15,2),
    "startDate" date,
    "endDate" date,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "2010cont" character varying,
    "2011cont" character varying,
    "2012cont" character varying,
    "2013cont" character varying,
    "2014cont" character varying,
    "2015cont" character varying,
    "2016cont" character varying,
    "MemberID" character varying,
    "lastName" character varying,
    "firstName" character varying
);
 "   DROP TABLE public."Contribution";
       public         postgres    false    4            �            1259    23021    Country    TABLE     �  CREATE TABLE public."Country" (
    "idCountry" uuid DEFAULT uuid_generate_v4() NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedBy" uuid,
    "createdBy" uuid,
    code character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL
);
    DROP TABLE public."Country";
       public         postgres    false    4            �            1259    23191    Earning    TABLE     �  CREATE TABLE public."Earning" (
    "idEarning" uuid DEFAULT uuid_generate_v4() NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedBy" uuid,
    "createdBy" uuid,
    account_id uuid,
    "periodEndYear" integer,
    "taxYear" integer,
    "pensionEarningsRaw" numeric(15,2),
    "pensionEarningsAdjustment" numeric(15,2),
    "hoursRaw" numeric(15,2),
    "hoursAdjustment" numeric(15,2),
    "serviceRaw" numeric(15,8),
    "serviceAdjustment" numeric(15,8),
    "earningNotes" character varying(2000),
    plan_id uuid,
    "customOne" character varying(255),
    "customTwo" character varying(255),
    "customThree" character varying(255),
    "customFour" character varying(255),
    "hoursAdjustmentNote" character varying(255),
    "serviceAdjustmentNote" character varying(255),
    "startDate" date,
    "endDate" date,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "MemberID" character varying,
    "2016earning" character varying,
    "2015earning" character varying,
    "2014earning" character varying,
    "2013earning" character varying,
    "2012earning" character varying,
    "2011earning" character varying,
    "2010earning" character varying,
    "2009earning" character varying,
    "2008earning" character varying,
    "2007earning" character varying,
    "2006earning" character varying,
    "2005earning" character varying,
    "2004earning" character varying,
    "2003earning" character varying,
    "2002earning" character varying,
    "2001earning" character varying,
    "2000earning" character varying,
    "1999earning" character varying,
    "1998earning" character varying,
    "1997earning" character varying,
    "1996earning" character varying,
    "1995earning" character varying,
    "1994earning" character varying,
    "1993earning" character varying,
    "1992earning" character varying,
    "1991earning" character varying,
    "1990earning" character varying,
    "1989earning" character varying,
    "1988earning" character varying,
    "1987earning" character varying,
    "1986earning" character varying,
    "1985earning" character varying,
    "1984earning" character varying,
    "1983earning" character varying,
    "1982earning" character varying,
    "1981earning" character varying,
    "1980earning" character varying,
    "1979earning" character varying,
    "2016service" character varying,
    "2015service" character varying,
    "2014service" character varying,
    "2013service" character varying,
    "2012service" character varying,
    "2011service" character varying,
    "2010service" character varying,
    "2009service" character varying,
    "2008service" character varying,
    "2007service" character varying,
    "2006service" character varying,
    "2005service" character varying,
    "2004service" character varying,
    "2003service" character varying,
    "2002service" character varying,
    "2001service" character varying,
    "2000service" character varying,
    "1999service" character varying,
    "1998service" character varying,
    "1997service" character varying,
    "1996service" character varying,
    "1995service" character varying,
    "1994service" character varying,
    "1993service" character varying,
    "1992service" character varying,
    "1991service" character varying,
    "1990service" character varying,
    "1989service" character varying,
    "1988service" character varying,
    "1987service" character varying,
    "1986service" character varying,
    "1985service" character varying,
    "1984service" character varying,
    "1983service" character varying,
    "1982service" character varying,
    "1981service" character varying,
    "1980service" character varying,
    "1979service" character varying
);
    DROP TABLE public."Earning";
       public         postgres    false    4            �            1259    23099    Member    TABLE     �  CREATE TABLE public."Member" (
    "idMember" uuid DEFAULT uuid_generate_v4() NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedBy" uuid,
    "createdBy" uuid,
    "SIN" integer,
    "employeeNumber" character varying(255),
    "firstName" character varying(255),
    "lastName" character varying(255),
    "dateOfDeath" date,
    gender text,
    "maritalStatus" character varying(255),
    language character varying(255),
    "maritalBreakdown" boolean,
    address character varying(255),
    "postalCode" character varying(255),
    city character varying(255),
    country_id uuid,
    province_id uuid,
    phone character varying(255),
    email character varying(255),
    "customOne" character varying(255),
    "customTwo" character varying(255),
    "customThree" character varying(255),
    "customFour" character varying(255),
    plan_id uuid,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "dateOfHire" character varying,
    "dateOfEntry" character varying,
    "dateOfBirth" character varying,
    "normalRetirementDate" character varying,
    "statusDate" character varying,
    "earlyRetirementDate" character varying,
    "earlyUnreducedRetirementDate" character varying,
    "latestVestingDate" character varying,
    CONSTRAINT "Member_gender_check" CHECK ((gender = ANY (ARRAY['m'::text, 'f'::text])))
);
    DROP TABLE public."Member";
       public         postgres    false    4            �            1259    23075    Plan    TABLE     �  CREATE TABLE public."Plan" (
    "idPlan" uuid DEFAULT uuid_generate_v4() NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedBy" uuid,
    "createdBy" uuid,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    "isDeleted" boolean DEFAULT false NOT NULL
);
    DROP TABLE public."Plan";
       public         postgres    false    4            �            1259    23045    Province    TABLE     �  CREATE TABLE public."Province" (
    "idProvince" uuid DEFAULT uuid_generate_v4() NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedBy" uuid,
    "createdBy" uuid,
    code character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    country_id uuid,
    "isDeleted" boolean DEFAULT false NOT NULL
);
    DROP TABLE public."Province";
       public         postgres    false    4            �            1259    22994    User    TABLE     :  CREATE TABLE public."User" (
    "idUser" uuid DEFAULT uuid_generate_v4() NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedBy" uuid,
    "createdBy" uuid,
    name character varying(255) NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    locked boolean DEFAULT false NOT NULL,
    password character varying(255),
    "isDeleted" boolean DEFAULT false NOT NULL
);
    DROP TABLE public."User";
       public         postgres    false    4            �            1259    22970    contributions    TABLE       CREATE TABLE public.contributions (
    "MemberID" character varying(8000),
    "Division" character varying(8000),
    "SIN" character varying(8000),
    "lastName" character varying(8000),
    "firstName" character varying(8000),
    "2010cont" character varying(8000),
    "2010cwi" character varying(8000),
    "2011cont" character varying(8000),
    "2011cwi" character varying(8000),
    "2012cont" character varying(8000),
    "2012cwi" character varying(8000),
    "2013cont" character varying(8000),
    "2013cwi" character varying(8000),
    "2014cont" character varying(8000),
    "2014cwi" character varying(8000),
    "2015cont" character varying(8000),
    "2015cwi" character varying(8000),
    "2016cont" character varying(8000),
    "2016cwi" character varying(8000)
);
 !   DROP TABLE public.contributions;
       public         postgres    false    4            �            1259    22976    earnings    TABLE     �  CREATE TABLE public.earnings (
    "MemberID" character varying(8000),
    "2016earning" character varying(8000),
    "2015earning" character varying(8000),
    "2014earning" character varying(8000),
    "2013earning" character varying(8000),
    "2012earning" character varying(8000),
    "2011earning" character varying(8000),
    "2010earning" character varying(8000),
    "2009earning" character varying(8000),
    "2008earning" character varying(8000),
    "2007earning" character varying(8000),
    "2006earning" character varying(8000),
    "2005earning" character varying(8000),
    "2004earning" character varying(8000),
    "2003earning" character varying(8000),
    "2002earning" character varying(8000),
    "2001earning" character varying(8000),
    "2000earning" character varying(8000),
    "1999earning" character varying(8000),
    "1998earning" character varying(8000),
    "1997earning" character varying(8000),
    "1996earning" character varying(8000),
    "1995earning" character varying(8000),
    "1994earning" character varying(8000),
    "1993earning" character varying(8000),
    "1992earning" character varying(8000),
    "1991earning" character varying(8000),
    "1990earning" character varying(8000),
    "1989earning" character varying(8000),
    "1988earning" character varying(8000),
    "1987earning" character varying(8000),
    "1986earning" character varying(8000),
    "1985earning" character varying(8000),
    "1984earning" character varying(8000),
    "1983earning" character varying(8000),
    "1982earning" character varying(8000),
    "1981earning" character varying(8000),
    "1980earning" character varying(8000),
    "1979earning" character varying(8000)
);
    DROP TABLE public.earnings;
       public         postgres    false    4            �            1259    22982 
   memberdata    TABLE     A  CREATE TABLE public.memberdata (
    "MemberID" character varying(8000),
    "planName" character varying(8000),
    "Division" character varying(8000),
    "SIN" character varying(8000),
    name character varying(8000),
    status character varying(8000),
    substatus character varying(8000),
    gender character varying(8000),
    "statusDate" character varying(8000),
    "spouseType" character varying(8000),
    language character varying(8000),
    "dateOfBirth" character varying(8000),
    "dateOfHire" character varying(8000),
    "dateOfEntry" character varying(8000),
    "normalRetirementDate" character varying(8000),
    "earlyRetirementDate" character varying(8000),
    "earlyUnreducedRetirementDate" character varying(8000),
    vested character varying(8000),
    "latestVestingDate" character varying(8000)
);
    DROP TABLE public.memberdata;
       public         postgres    false    4            �            1259    22988    service    TABLE     �  CREATE TABLE public.service (
    "MemberID" character varying(8000),
    "1979service" character varying(8000),
    "1980service" character varying(8000),
    "1981service" character varying(8000),
    "1982service" character varying(8000),
    "1983service" character varying(8000),
    "1984service" character varying(8000),
    "1985service" character varying(8000),
    "1986service" character varying(8000),
    "1987service" character varying(8000),
    "1988service" character varying(8000),
    "1989service" character varying(8000),
    "1990service" character varying(8000),
    "1991service" character varying(8000),
    "1992service" character varying(8000),
    "1993service" character varying(8000),
    "1994service" character varying(8000),
    "1995service" character varying(8000),
    "1996service" character varying(8000),
    "1997service" character varying(8000),
    "1998service" character varying(8000),
    "1999service" character varying(8000),
    "2000service" character varying(8000),
    "2001service" character varying(8000),
    "2002service" character varying(8000),
    "2003service" character varying(8000),
    "2004service" character varying(8000),
    "2005service" character varying(8000),
    "2006service" character varying(8000),
    "2007service" character varying(8000),
    "2008service" character varying(8000),
    "2009service" character varying(8000),
    "2010service" character varying(8000),
    "2011service" character varying(8000),
    "2012service" character varying(8000),
    "2013service" character varying(8000),
    "2014service" character varying(8000),
    "2015service" character varying(8000),
    "2016service" character varying(8000)
);
    DROP TABLE public.service;
       public         postgres    false    4            �
           2604    23153    Account idx    DEFAULT     n   ALTER TABLE ONLY public."Account" ALTER COLUMN idx SET DEFAULT nextval('public."Account_idx_seq"'::regclass);
 <   ALTER TABLE public."Account" ALTER COLUMN idx DROP DEFAULT;
       public       postgres    false    206    207    207            �          0    23144    Account 
   TABLE DATA               �  COPY public."Account" ("idAccount", "createdAt", "updatedAt", "updatedBy", "createdBy", member_id, "accountNumber", "employerProvince_id", "dateOfDeath", "dateOfRetirement", "dateOfTermination", "dateOfTransferIn", "dateOfTransferOut", vested, "dateOfEntry", "dateOfHire", "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", "growIn", plan_id, "customOne", "customTwo", "customThree", "customFour", "isDeleted", idx) FROM stdin;
    public       postgres    false    207   �       �          0    23230    Contribution 
   TABLE DATA               �  COPY public."Contribution" ("idContribution", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id, "periodEndYear", contributions, "contributionNotes", plan_id, "customOne", "customTwo", "customThree", "customFour", "eeBuybackAmount", "startDate", "endDate", "isDeleted", "2010cont", "2011cont", "2012cont", "2013cont", "2014cont", "2015cont", "2016cont", "MemberID", "lastName", "firstName") FROM stdin;
    public       postgres    false    209   �       �          0    23021    Country 
   TABLE DATA               }   COPY public."Country" ("idCountry", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, "isDeleted") FROM stdin;
    public       postgres    false    202   ��       �          0    23191    Earning 
   TABLE DATA               &  COPY public."Earning" ("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id, "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment", "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes", plan_id, "customOne", "customTwo", "customThree", "customFour", "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate", "isDeleted", "MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning", "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning", "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning", "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning", "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning", "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning", "1981earning", "1980earning", "1979earning", "2016service", "2015service", "2014service", "2013service", "2012service", "2011service", "2010service", "2009service", "2008service", "2007service", "2006service", "2005service", "2004service", "2003service", "2002service", "2001service", "2000service", "1999service", "1998service", "1997service", "1996service", "1995service", "1994service", "1993service", "1992service", "1991service", "1990service", "1989service", "1988service", "1987service", "1986service", "1985service", "1984service", "1983service", "1982service", "1981service", "1980service", "1979service") FROM stdin;
    public       postgres    false    208   $�       �          0    23099    Member 
   TABLE DATA               	  COPY public."Member" ("idMember", "createdAt", "updatedAt", "updatedBy", "createdBy", "SIN", "employeeNumber", "firstName", "lastName", "dateOfDeath", gender, "maritalStatus", language, "maritalBreakdown", address, "postalCode", city, country_id, province_id, phone, email, "customOne", "customTwo", "customThree", "customFour", plan_id, "isDeleted", "dateOfHire", "dateOfEntry", "dateOfBirth", "normalRetirementDate", "statusDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", "latestVestingDate") FROM stdin;
    public       postgres    false    205   ��       �          0    23075    Plan 
   TABLE DATA               �   COPY public."Plan" ("idPlan", "createdAt", "updatedAt", "updatedBy", "createdBy", name, code, description, "isDeleted") FROM stdin;
    public       postgres    false    204   }�       �          0    23045    Province 
   TABLE DATA               �   COPY public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id, "isDeleted") FROM stdin;
    public       postgres    false    203   ��       �          0    22994    User 
   TABLE DATA               �   COPY public."User" ("idUser", "createdAt", "updatedAt", "updatedBy", "createdBy", name, "firstName", "lastName", email, locked, password, "isDeleted") FROM stdin;
    public       postgres    false    201   ��       �          0    22970    contributions 
   TABLE DATA                  COPY public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi", "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont", "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi") FROM stdin;
    public       postgres    false    197   ��       �          0    22976    earnings 
   TABLE DATA               h  COPY public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning", "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning", "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning", "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning", "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning", "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning", "1981earning", "1980earning", "1979earning") FROM stdin;
    public       postgres    false    198   5�       �          0    22982 
   memberdata 
   TABLE DATA               .  COPY public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate", "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry", "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested, "latestVestingDate") FROM stdin;
    public       postgres    false    199   �       �          0    22988    service 
   TABLE DATA               g  COPY public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service", "1984service", "1985service", "1986service", "1987service", "1988service", "1989service", "1990service", "1991service", "1992service", "1993service", "1994service", "1995service", "1996service", "1997service", "1998service", "1999service", "2000service", "2001service", "2002service", "2003service", "2004service", "2005service", "2006service", "2007service", "2008service", "2009service", "2010service", "2011service", "2012service", "2013service", "2014service", "2015service", "2016service") FROM stdin;
    public       postgres    false    200   B�       �           0    0    Account_idx_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Account_idx_seq"', 1, false);
            public       postgres    false    206            �
           2606    23158    Account Account_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT "Account_pkey" PRIMARY KEY ("idAccount");
 B   ALTER TABLE ONLY public."Account" DROP CONSTRAINT "Account_pkey";
       public         postgres    false    207            �
           2606    23241    Contribution Contribution_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Contribution"
    ADD CONSTRAINT "Contribution_pkey" PRIMARY KEY ("idContribution");
 L   ALTER TABLE ONLY public."Contribution" DROP CONSTRAINT "Contribution_pkey";
       public         postgres    false    209            �
           2606    23032    Country Country_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "Country_pkey" PRIMARY KEY ("idCountry");
 B   ALTER TABLE ONLY public."Country" DROP CONSTRAINT "Country_pkey";
       public         postgres    false    202            �
           2606    23202    Earning Earning_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Earning"
    ADD CONSTRAINT "Earning_pkey" PRIMARY KEY ("idEarning");
 B   ALTER TABLE ONLY public."Earning" DROP CONSTRAINT "Earning_pkey";
       public         postgres    false    208            �
           2606    23111    Member Member_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Member"
    ADD CONSTRAINT "Member_pkey" PRIMARY KEY ("idMember");
 @   ALTER TABLE ONLY public."Member" DROP CONSTRAINT "Member_pkey";
       public         postgres    false    205            �
           2606    23086    Plan Plan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Plan"
    ADD CONSTRAINT "Plan_pkey" PRIMARY KEY ("idPlan");
 <   ALTER TABLE ONLY public."Plan" DROP CONSTRAINT "Plan_pkey";
       public         postgres    false    204            �
           2606    23056    Province Province_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Province"
    ADD CONSTRAINT "Province_pkey" PRIMARY KEY ("idProvince");
 D   ALTER TABLE ONLY public."Province" DROP CONSTRAINT "Province_pkey";
       public         postgres    false    203            �
           2606    23006    User User_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("idUser");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public         postgres    false    201            �
           2606    23160    Account account_idx_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT account_idx_unique UNIQUE (idx);
 F   ALTER TABLE ONLY public."Account" DROP CONSTRAINT account_idx_unique;
       public         postgres    false    207            �
           2606    23008    User user_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public."User" DROP CONSTRAINT user_name_unique;
       public         postgres    false    201            �
           1259    23187    account_createdby_index    INDEX     T   CREATE INDEX account_createdby_index ON public."Account" USING btree ("createdBy");
 +   DROP INDEX public.account_createdby_index;
       public         postgres    false    207            �
           1259    23189 !   account_employerprovince_id_index    INDEX     h   CREATE INDEX account_employerprovince_id_index ON public."Account" USING btree ("employerProvince_id");
 5   DROP INDEX public.account_employerprovince_id_index;
       public         postgres    false    207            �
           1259    23188    account_member_id_index    INDEX     R   CREATE INDEX account_member_id_index ON public."Account" USING btree (member_id);
 +   DROP INDEX public.account_member_id_index;
       public         postgres    false    207            �
           1259    23190    account_plan_id_index    INDEX     N   CREATE INDEX account_plan_id_index ON public."Account" USING btree (plan_id);
 )   DROP INDEX public.account_plan_id_index;
       public         postgres    false    207            �
           1259    23186    account_updatedby_index    INDEX     T   CREATE INDEX account_updatedby_index ON public."Account" USING btree ("updatedBy");
 +   DROP INDEX public.account_updatedby_index;
       public         postgres    false    207            �
           1259    23264    contribution_account_id_index    INDEX     ^   CREATE INDEX contribution_account_id_index ON public."Contribution" USING btree (account_id);
 1   DROP INDEX public.contribution_account_id_index;
       public         postgres    false    209            �
           1259    23263    contribution_createdby_index    INDEX     ^   CREATE INDEX contribution_createdby_index ON public."Contribution" USING btree ("createdBy");
 0   DROP INDEX public.contribution_createdby_index;
       public         postgres    false    209            �
           1259    23265    contribution_plan_id_index    INDEX     X   CREATE INDEX contribution_plan_id_index ON public."Contribution" USING btree (plan_id);
 .   DROP INDEX public.contribution_plan_id_index;
       public         postgres    false    209            �
           1259    23262    contribution_updatedby_index    INDEX     ^   CREATE INDEX contribution_updatedby_index ON public."Contribution" USING btree ("updatedBy");
 0   DROP INDEX public.contribution_updatedby_index;
       public         postgres    false    209            �
           1259    23044    country_createdby_index    INDEX     T   CREATE INDEX country_createdby_index ON public."Country" USING btree ("createdBy");
 +   DROP INDEX public.country_createdby_index;
       public         postgres    false    202            �
           1259    23043    country_updatedby_index    INDEX     T   CREATE INDEX country_updatedby_index ON public."Country" USING btree ("updatedBy");
 +   DROP INDEX public.country_updatedby_index;
       public         postgres    false    202            �
           1259    23225    earning_account_id_index    INDEX     T   CREATE INDEX earning_account_id_index ON public."Earning" USING btree (account_id);
 ,   DROP INDEX public.earning_account_id_index;
       public         postgres    false    208            �
           1259    23224    earning_createdby_index    INDEX     T   CREATE INDEX earning_createdby_index ON public."Earning" USING btree ("createdBy");
 +   DROP INDEX public.earning_createdby_index;
       public         postgres    false    208            �
           1259    23229    earning_enddate_index    INDEX     P   CREATE INDEX earning_enddate_index ON public."Earning" USING btree ("endDate");
 )   DROP INDEX public.earning_enddate_index;
       public         postgres    false    208            �
           1259    23226    earning_periodendyear_index    INDEX     \   CREATE INDEX earning_periodendyear_index ON public."Earning" USING btree ("periodEndYear");
 /   DROP INDEX public.earning_periodendyear_index;
       public         postgres    false    208            �
           1259    23227    earning_plan_id_index    INDEX     N   CREATE INDEX earning_plan_id_index ON public."Earning" USING btree (plan_id);
 )   DROP INDEX public.earning_plan_id_index;
       public         postgres    false    208            �
           1259    23228    earning_startdate_index    INDEX     T   CREATE INDEX earning_startdate_index ON public."Earning" USING btree ("startDate");
 +   DROP INDEX public.earning_startdate_index;
       public         postgres    false    208            �
           1259    23223    earning_updatedby_index    INDEX     T   CREATE INDEX earning_updatedby_index ON public."Earning" USING btree ("updatedBy");
 +   DROP INDEX public.earning_updatedby_index;
       public         postgres    false    208            �
           1259    23139    member_country_id_index    INDEX     R   CREATE INDEX member_country_id_index ON public."Member" USING btree (country_id);
 +   DROP INDEX public.member_country_id_index;
       public         postgres    false    205            �
           1259    23138    member_createdby_index    INDEX     R   CREATE INDEX member_createdby_index ON public."Member" USING btree ("createdBy");
 *   DROP INDEX public.member_createdby_index;
       public         postgres    false    205            �
           1259    23141    member_plan_id_index    INDEX     L   CREATE INDEX member_plan_id_index ON public."Member" USING btree (plan_id);
 (   DROP INDEX public.member_plan_id_index;
       public         postgres    false    205            �
           1259    23140    member_province_id_index    INDEX     T   CREATE INDEX member_province_id_index ON public."Member" USING btree (province_id);
 ,   DROP INDEX public.member_province_id_index;
       public         postgres    false    205            �
           1259    23137    member_updatedby_index    INDEX     R   CREATE INDEX member_updatedby_index ON public."Member" USING btree ("updatedBy");
 *   DROP INDEX public.member_updatedby_index;
       public         postgres    false    205            �
           1259    23098    plan_createdby_index    INDEX     N   CREATE INDEX plan_createdby_index ON public."Plan" USING btree ("createdBy");
 (   DROP INDEX public.plan_createdby_index;
       public         postgres    false    204            �
           1259    23097    plan_updatedby_index    INDEX     N   CREATE INDEX plan_updatedby_index ON public."Plan" USING btree ("updatedBy");
 (   DROP INDEX public.plan_updatedby_index;
       public         postgres    false    204            �
           1259    23074    province_country_id_index    INDEX     V   CREATE INDEX province_country_id_index ON public."Province" USING btree (country_id);
 -   DROP INDEX public.province_country_id_index;
       public         postgres    false    203            �
           1259    23073    province_createdby_index    INDEX     V   CREATE INDEX province_createdby_index ON public."Province" USING btree ("createdBy");
 ,   DROP INDEX public.province_createdby_index;
       public         postgres    false    203            �
           1259    23072    province_updatedby_index    INDEX     V   CREATE INDEX province_updatedby_index ON public."Province" USING btree ("updatedBy");
 ,   DROP INDEX public.province_updatedby_index;
       public         postgres    false    203            �
           1259    23020    user_createdby_index    INDEX     N   CREATE INDEX user_createdby_index ON public."User" USING btree ("createdBy");
 (   DROP INDEX public.user_createdby_index;
       public         postgres    false    201            �
           1259    23019    user_updatedby_index    INDEX     N   CREATE INDEX user_updatedby_index ON public."User" USING btree ("updatedBy");
 (   DROP INDEX public.user_updatedby_index;
       public         postgres    false    201                       2606    23166 !   Account account_createdby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT account_createdby_foreign FOREIGN KEY ("createdBy") REFERENCES public."User"("idUser");
 M   ALTER TABLE ONLY public."Account" DROP CONSTRAINT account_createdby_foreign;
       public       postgres    false    2765    201    207                       2606    23176 +   Account account_employerprovince_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT account_employerprovince_id_foreign FOREIGN KEY ("employerProvince_id") REFERENCES public."Province"("idProvince");
 W   ALTER TABLE ONLY public."Account" DROP CONSTRAINT account_employerprovince_id_foreign;
       public       postgres    false    2775    203    207                       2606    23171 !   Account account_member_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT account_member_id_foreign FOREIGN KEY (member_id) REFERENCES public."Member"("idMember");
 M   ALTER TABLE ONLY public."Account" DROP CONSTRAINT account_member_id_foreign;
       public       postgres    false    207    205    2784                       2606    23181    Account account_plan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT account_plan_id_foreign FOREIGN KEY (plan_id) REFERENCES public."Plan"("idPlan");
 K   ALTER TABLE ONLY public."Account" DROP CONSTRAINT account_plan_id_foreign;
       public       postgres    false    207    2780    204                       2606    23161 !   Account account_updatedby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT account_updatedby_foreign FOREIGN KEY ("updatedBy") REFERENCES public."User"("idUser");
 M   ALTER TABLE ONLY public."Account" DROP CONSTRAINT account_updatedby_foreign;
       public       postgres    false    201    207    2765                       2606    23252 ,   Contribution contribution_account_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contribution"
    ADD CONSTRAINT contribution_account_id_foreign FOREIGN KEY (account_id) REFERENCES public."Account"("idAccount");
 X   ALTER TABLE ONLY public."Contribution" DROP CONSTRAINT contribution_account_id_foreign;
       public       postgres    false    2791    209    207                       2606    23247 +   Contribution contribution_createdby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contribution"
    ADD CONSTRAINT contribution_createdby_foreign FOREIGN KEY ("createdBy") REFERENCES public."User"("idUser");
 W   ALTER TABLE ONLY public."Contribution" DROP CONSTRAINT contribution_createdby_foreign;
       public       postgres    false    209    201    2765                       2606    23257 )   Contribution contribution_plan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contribution"
    ADD CONSTRAINT contribution_plan_id_foreign FOREIGN KEY (plan_id) REFERENCES public."Plan"("idPlan");
 U   ALTER TABLE ONLY public."Contribution" DROP CONSTRAINT contribution_plan_id_foreign;
       public       postgres    false    209    204    2780                       2606    23242 +   Contribution contribution_updatedby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contribution"
    ADD CONSTRAINT contribution_updatedby_foreign FOREIGN KEY ("updatedBy") REFERENCES public."User"("idUser");
 W   ALTER TABLE ONLY public."Contribution" DROP CONSTRAINT contribution_updatedby_foreign;
       public       postgres    false    2765    201    209                       2606    23038 !   Country country_createdby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT country_createdby_foreign FOREIGN KEY ("createdBy") REFERENCES public."User"("idUser");
 M   ALTER TABLE ONLY public."Country" DROP CONSTRAINT country_createdby_foreign;
       public       postgres    false    201    2765    202                        2606    23033 !   Country country_updatedby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT country_updatedby_foreign FOREIGN KEY ("updatedBy") REFERENCES public."User"("idUser");
 M   ALTER TABLE ONLY public."Country" DROP CONSTRAINT country_updatedby_foreign;
       public       postgres    false    2765    202    201                       2606    23213 "   Earning earning_account_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Earning"
    ADD CONSTRAINT earning_account_id_foreign FOREIGN KEY (account_id) REFERENCES public."Account"("idAccount");
 N   ALTER TABLE ONLY public."Earning" DROP CONSTRAINT earning_account_id_foreign;
       public       postgres    false    208    2791    207                       2606    23208 !   Earning earning_createdby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Earning"
    ADD CONSTRAINT earning_createdby_foreign FOREIGN KEY ("createdBy") REFERENCES public."User"("idUser");
 M   ALTER TABLE ONLY public."Earning" DROP CONSTRAINT earning_createdby_foreign;
       public       postgres    false    2765    201    208                       2606    23218    Earning earning_plan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Earning"
    ADD CONSTRAINT earning_plan_id_foreign FOREIGN KEY (plan_id) REFERENCES public."Plan"("idPlan");
 K   ALTER TABLE ONLY public."Earning" DROP CONSTRAINT earning_plan_id_foreign;
       public       postgres    false    2780    208    204                       2606    23203 !   Earning earning_updatedby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Earning"
    ADD CONSTRAINT earning_updatedby_foreign FOREIGN KEY ("updatedBy") REFERENCES public."User"("idUser");
 M   ALTER TABLE ONLY public."Earning" DROP CONSTRAINT earning_updatedby_foreign;
       public       postgres    false    2765    201    208            	           2606    23122     Member member_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Member"
    ADD CONSTRAINT member_country_id_foreign FOREIGN KEY (country_id) REFERENCES public."Country"("idCountry");
 L   ALTER TABLE ONLY public."Member" DROP CONSTRAINT member_country_id_foreign;
       public       postgres    false    202    205    2771                       2606    23117    Member member_createdby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Member"
    ADD CONSTRAINT member_createdby_foreign FOREIGN KEY ("createdBy") REFERENCES public."User"("idUser");
 K   ALTER TABLE ONLY public."Member" DROP CONSTRAINT member_createdby_foreign;
       public       postgres    false    205    201    2765                       2606    23132    Member member_plan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Member"
    ADD CONSTRAINT member_plan_id_foreign FOREIGN KEY (plan_id) REFERENCES public."Plan"("idPlan");
 I   ALTER TABLE ONLY public."Member" DROP CONSTRAINT member_plan_id_foreign;
       public       postgres    false    205    2780    204            
           2606    23127 !   Member member_province_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Member"
    ADD CONSTRAINT member_province_id_foreign FOREIGN KEY (province_id) REFERENCES public."Province"("idProvince");
 M   ALTER TABLE ONLY public."Member" DROP CONSTRAINT member_province_id_foreign;
       public       postgres    false    203    205    2775                       2606    23112    Member member_updatedby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Member"
    ADD CONSTRAINT member_updatedby_foreign FOREIGN KEY ("updatedBy") REFERENCES public."User"("idUser");
 K   ALTER TABLE ONLY public."Member" DROP CONSTRAINT member_updatedby_foreign;
       public       postgres    false    205    201    2765                       2606    23092    Plan plan_createdby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Plan"
    ADD CONSTRAINT plan_createdby_foreign FOREIGN KEY ("createdBy") REFERENCES public."User"("idUser");
 G   ALTER TABLE ONLY public."Plan" DROP CONSTRAINT plan_createdby_foreign;
       public       postgres    false    2765    201    204                       2606    23087    Plan plan_updatedby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Plan"
    ADD CONSTRAINT plan_updatedby_foreign FOREIGN KEY ("updatedBy") REFERENCES public."User"("idUser");
 G   ALTER TABLE ONLY public."Plan" DROP CONSTRAINT plan_updatedby_foreign;
       public       postgres    false    204    2765    201                       2606    23067 $   Province province_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Province"
    ADD CONSTRAINT province_country_id_foreign FOREIGN KEY (country_id) REFERENCES public."Country"("idCountry");
 P   ALTER TABLE ONLY public."Province" DROP CONSTRAINT province_country_id_foreign;
       public       postgres    false    2771    203    202                       2606    23062 #   Province province_createdby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Province"
    ADD CONSTRAINT province_createdby_foreign FOREIGN KEY ("createdBy") REFERENCES public."User"("idUser");
 O   ALTER TABLE ONLY public."Province" DROP CONSTRAINT province_createdby_foreign;
       public       postgres    false    201    203    2765                       2606    23057 #   Province province_updatedby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."Province"
    ADD CONSTRAINT province_updatedby_foreign FOREIGN KEY ("updatedBy") REFERENCES public."User"("idUser");
 O   ALTER TABLE ONLY public."Province" DROP CONSTRAINT province_updatedby_foreign;
       public       postgres    false    201    203    2765            �
           2606    23014    User user_createdby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_createdby_foreign FOREIGN KEY ("createdBy") REFERENCES public."User"("idUser");
 G   ALTER TABLE ONLY public."User" DROP CONSTRAINT user_createdby_foreign;
       public       postgres    false    2765    201    201            �
           2606    23009    User user_updatedby_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_updatedby_foreign FOREIGN KEY ("updatedBy") REFERENCES public."User"("idUser");
 G   ALTER TABLE ONLY public."User" DROP CONSTRAINT user_updatedby_foreign;
       public       postgres    false    201    201    2765            �      x������ � �      �   �  x��V�n�F<�_�{Ћo��a	l{��6dH��փ���P�-{��=$2 ^J�ꚪ�a�=v� f 6�C����l�̺�R �lC���j��Y�����r�����d5�o�nQ���(Ӑ �e_0?a�Shg�uK�`h@��� -b��|Zd�8cP��u��նr��������&�Uu��U�&k�a �9��A2����ǬBN��̕��=�!�W�9�S�l_(# ���<N�Å�U�xBQ���\�@S��l�x$p>T���f����p6���S̢'����u�gp��B�	/��7��W�~l�<ˮH�
7�z���|"��n�H�����r�j�&>u�5i�.i�(�9����U�_�( �+Q���pz��� _]�$%��/����A+��������7�Idn�c�s`U���r�����!��!sN�}LBE���A���]�p����
�X�Xd!�2��P);
�^�≠���$�k\�Գ����\upߒ��_>����|������Y�/�u��d�$T8I�NR;g�8w]f�ߛ�w	��L6ƚ�q7��lw��QlZ�`Y��$��̋�2D��ꬳ�����bN9��q�9�ԍ��~n|~��+,��~��8�]����J����5j�[M).]A�f'�K��@\}�oV��.W���q]ǁ�e���o:m��Ap��8Jf[��7��GS3�Ϭ3:��3�>��̜��[�d�r�${��b�_�w���~�	m��K:Q�k� v�ԫ�}���%�&�<��{q&�or�w�J�<��o(�l!8-�1TW����~M�����6XN��Y� h	 ��^:���Eۦ��v��s|���S���ʌ4o�-%5��6���P��p���|���_�|�      �   n  x���=�A�x�Wl.5�Gn&�b����I�t���z���Z9�H������x�j����4B�Q�`)����"QG�� )���"��Rz��[|^�s�N����G����<���=q���K6���9I^lA����6u�x�2�ÈR!$ﳦR���`�Rq/�w_��u}|\������wB�%�����8a�����M��Z�f����С���!3i��ۍx[�z;�Y������68X��II�x����B�r���I�n�d��C�-"*8@,W�������td<E>�I�Y��?��?�ݫ��]�z��w����)j��!
V�!*�Ra�i'����tY���5����}-      �   �  x��\[v�8��.����� s1+�� ���I�L�m�-�������E�#2"�b�J�IpLj��ȭ�Z��Z����3y�-q�?j����b�ֆ?�G������z��~T�����ً��~�ǗU���ϴ|��3K2�##�NE��{m�rI�8���m�yX�%��Isϩ�S�:���Л�ZX�N���n�u�uԒ6�N��%�y&�]g�2o�k�\)q���* ������ֹ':�'哒m8˹YoL�7��d�9���Ȟ�\��Q��ىp�8)�`���>�
N��$���x��|�
�2�F@�ْut:����*|sQĥ� �/US�����ˮŨ���Q�i>�E㰽+�c���q�[$����~d�7�����`����5:J�^���A��� ��a��7�3$x9�H.�������"�W��c�&�!��[KIs5ڻI��w��`W*���r��� n�%ΩyZ�(<-��7i]�vs@@'q��j (dK��РH�������P{T��Z�*8��WZ�,�}�Giȸ��8r@qԒ�#����k)�_��:���e�ʞ �>Z�&��������"� �����S2,�fkK��DdMu�7ۚZ"|>����yup����il�4��N�:��{	���D :��ְI�qj:��uo�Z5-v�XÄ�u������Z���5u�9�A͎�AMQd����^[�p2/��:w"��.���$H���OU�c���s/|eP��jA��Z����K��#��,��8w$l��_�7}��O�޸�L�P" 8�[FM�@bA�@�6hs�셼�%�C��V��`�
y	��!� ��(!�A1FH�|����P9����	V/I�X��6��7�$܍#�5���+(4NZF�	~���g�����v�֮#�Р��o�ػ\l��S�ϸ�!pNk��#��B(k��+�,���Z��%��Ⴋ��O`g:K�Ã=|�!����"�	r��3;~պ��/uxӚ���(2nXN��H��Lr.w7��$	�
�Y!���i|�A5������	�Y9��U9��a��#���LD*���k:ϲP�Β��-Ѳs�2۹on����L�V�p-�AQ׫������; v�P�p�BJ�F���Û��x��\�j�:Ҭ\�:���<�}6#_9��}��Zk�K��>��ͯi�'\ڋ'[������΍n��Ms�H���C^�\J���z�Wʡ]��^�(��"� ������ZU#=k���cf8~⑫�-��qZ�6�ߠ���Г�#6�ҹo5츹��X��KH�xd0;j��Z���
�5�J����h��3 ,j�>`���t�&�X�?�E�=��W��&~���\��Z�H6WM,�lYO>��s~A�J-o)i�>���_�U���[\Ek�8W�	^��PP6�K�ڂ�X����/��pbp�Q�Q�G��!��@�� �����t�5C�ǩr�G �f�S�Q�	a�I�Pr+e?y�N2�fAp}���mO�qB����'8xOma�
�/�oNS5���h.W\&q$��M�נ��*�ٻ~���(����˓���$E��2��3���˾���9	"	i����v�	���"-�HP��~�+-�Ae(��	��K7T��$_'HMy���&A���,��@�I%%���R��x�O�^�1::��*��(�TK�>f�s��$Ѹ:k��22� `Q�����oJ�7d�/�l���Mc�ْ6�	B�S{���ݙA_�
h�r�%�~W�V���3���'ƞ�}���h����4�����έw��	Z��>�b!>��ឺ��t�<�Q��2}�|s���Aq�k���F7��?F�}�H'T�'��bi��pʙ{��%-��,i��t�,0v��o�t��O����O� N�y����F����'�����v��"�sI��/U%��+�8U��7��{ڸ*5�R��Z>;��9����7w��j�h�q}r��U(��������������ii�mL���7x��42����<���o�fˀ�J!�^8*`,0��
�1D���\J�v�X* 
�;�N=`����zsO�.��R��݃s� Տ�Z7�k�����uN2��%�����:��,�A�i��k8��S0��t�D��S�
�>BT5f�`���=�]��5&��Йb�o2qF���m��9�׶*�ճ�`Q�蹽�鱿d���a�T�\�+��$�G� ι��i���kK�2<�3^2dg��E���\U��cAx�̹~�je��Kg�#�+��V�轜Ŗ�5�3v�� �5xM���J=o^�fZ�6���[Q�q忛��s���f�\̈́_����V+_O2�i��bd�<1s�3��՟]u�29�X^�5�x���#�dM�|s�إ�);SH��7K;J�	�))��\�a�9 �t�y��� �-�$�OJ��c��GLw0.we-�@�f;2�6���֪]�n ���P8�b�h��Kn�z?.�y����4)W`p_gs���D:��o��7)�2Dw�좻�7G��}B���R SdW�?��S�d��R%?���?�)ft�7L�
؊>�'4�͵�Ҟ��ĔW�S$��,�,��f"!�:�v��\�$�D?��ɦ��l8���u��YRf��h��\��Ҟ���D�x�a.Mb��H	j�"bY�X�Z�9M!���{�@��_k�ȩhLP�&�k�������
p-��K!�&�}���\po�nm��Q��:���̖��� �E+�aCp��	�߽6���%�Ͼ�}l��i����T6�� �
�~6����n>H�i)z�
$�Hk�:	�Jb@N��=>+��(k�>n�p�R�e%�曉Ů[��
ү�����_ן��_�*�d0��t%e�n�$����������A3���9��)C�Ȕ��@�!�����%�)���Y��u�x�X����l�V\ˈ[ίZ��֝3�H���潭$��I�8ֻ7�Jf5��_�V��A�ыy�3���|�"ݯO҉�j�{D��׻��z�k�J��n��>�)��k�|�wu� ��rJ��� h6Q�[�{�{�*4v�sA%{�:ԏ�n���T�A�c������e��![T$������u����=migq��a	F���-OM&���|s�W��5ڦ�]H��������E�b      �   �  x��[Y�[E~>������F $����^mٲ���많=�����F�"�n������҅�St�f���%)D�����q���!\��WJ�ؗ�	��?�����������٢��������o�|��9����/(���zB�8a�b���
B��9N�}��Յ���N�U�����FW\ p5܆@iѯ��p�^]���"~,�"S��V(O����t)�>w��҅sAd)	LT'��
�&h�����?�i�B�����C!��0�G�0�p����A��&���kd�YYC�Y{F����3����I��3���?m�!�o��7�<R���
RD&D/�rS�X8�"*]k�s�̪J6�����$)e
�
)�rA�| Pǃ���=����]��2Qs3��_��$�9W��Bb��e�>��5��N|R�x��KMd���`+�79P���!��e�\u__y{	C��h�L�۷��d�����2�� ��s'B�@m.$� �t*�]�r:�(�13��q~�ޯbXm�����Ʀ0��{�y�3$�2��&�֟;q̨P ϳ)^Fpgz"�M,\�������~w�����z���������)���r�;�j�h���Z�, ��3��;8�,��C��ŏ�����2�u����T�gfz��({�� s�umZj�!2cj@��ŋ����'H�ĦPH6��d�B:�������~����o]�Ȅ���D��-G�9��DD��T1�IRrd��XϧD��AI7�ǿ�)w?.�~1�];���ޣ�"2A[�\Mu�N�P��tk�'B��(�ħ��f�N��������lG�A��}�j����v(�N 0!��Hy�鞪"��c͹'t&*C��	�q��eN\o��@�2^)jF$��_��ܽ�����PD{�Y�2L�n��B�����u�'{�Z��}ZM<�����5E@'��HT��h�rfD�{��ޕ�r~��1�2�eAZ1*������p���4��d&��.|�gU<��Q9����^v���N��E�U��)^;}�%r�|P.�ȵ K����}�^��#V�o�s����)�6�3�t��R"YK��*�֎ߜ{BW7�:gEi��!���[� VH���X����<�ݏ�얇��3r8W���}��ҝ���u�n�s����Q)��Ib
�}�3�X3�(�5;"�/r\���2�V��g���F�$k��=�V�t����+Pd�(�%�JJI�La"g
:����|��ݧsކ��yskk�N_˞(�~��n�L
�R���dH�H�$��g��D�b,.�h��߮�݇��o�w�⣈L6\�)R
����qu׵�Dd�UP�k�c�D&���BXf�FYL#����w��l�󫡈B.h"�_U��o����~o�J֞kt����01�I流T��z�d� �+Y�%�X���M��k��!��up^�=��A�L���o�M�-_#�x}�V����K%���b$[
4>�D���XV�++�P�!�2�ٮ{��v9��XU<ʴ��&p���O^�5P�[aZ5<YI��d�'�1��hG��%)`O%����&Mכܽڴ>.�ȸ��{�LV��E����X�ku�M�25�V��$P�H�'��D�l��e�F��?��W������C�;/��ꖼ�FâT -yT�.�&2GMs�m?�TX~b�hm	�ZjF,ܿ��s�w_��b=���.:��vQ�������_+:�6"G�V��d��<���٨읕bL��>oJ�ޞ����j��u�[�{U��g����=��Y��6�桪�:�觇�ํ$�d�
�	6�]~w B߽?�����q�{�)|5{CZ���m�ܤvT��}N|f6���R�T�x��$!<�4�1Sѻ�by�ݷ����`H��Ed�ֳ�����?l�}F��?���N</�G0�`���<��\ߚb��P��Xs~K<w�]��P<1��d�&&����+���d�Ya�t��4��=Py���=	���_�!d]��������Խ>�7��[E�2d-��۬�Y
i9�nGw�\w�f�o}6�g�����-DQ �p���	X���(�8�~ل�f�˟a�X~h[ŷ��h��Z�S+9������5g�2'����X}�^�Ȇ^�q_����U��qs�C��;��ͧ����]z`�c���!���u���Yo�썊�g�X	\�s�	�::b[� z�to.��|9|������mu�qx�U;�kuy?��a��ղ�8
�1&��%�D���	�ɕ�U*���_]�r�Wq=�2p����F�ۚ���5������軞"��C�����pZ�(�j7"�[�uo���������H�S����;�5,��5��O�63��<�.}q���r��2Fj ��sd����f�f��~�R����涕T�R3!����n�ћh+t6,�dr_�jC\ʉ�hb4��Ɯ�]��/��bz<�w�� &S��t{�DRl9Q�Qխ�Ȅq��*��د)zn�@U
#��Ek6���E������jy>l�a���
��{���Ì�_�M~B������������wr�8C-�2�1�~�?A�{�=.9n�>���#��ِ%Yߴ���&� f�I�`	��1��S!�'�L����#o���n�}����0|����5��߼��t�_}ifI��7��
��۔���� �	
Р�%�
�l�ʨi�i�X��O����מ�%!��l���uf3�䷯��xZ����]3�1X��(%�!xkK!!k�R)�m�M�m��ծ5���`H��pb�X�=w��Y=<"���|��	� ^�B����bI�9[��J�O�0�_�̇�~��2�J��I+�wX�\v
���z&�g�]�7̒���6Ae�0s�1�qD�߆�2u?��b�j���z������=D6�f�|��5������D�M�?��6^ B �CP��:	ũ1��RRʧ��;���>�V½��3#59��E��9����2n{+!ƬB�'i��Df�I`���Q�A�4����e��/G?�R��-v�L�ze�߮�6=zSǋ{_�)�1��*̈́	%)�J��g-�#�����m_M�~��^v��_hDna2�,<5���x�{#ؕmd��L<˜zL��K
2SH����X&jG�˿�O��{�/!φ�%�t���c��hݹ�IH��2�a}é_tЦ��(��Q%kG\c~w�\ӵ{qޤu<o�#]�0�CZ_�A/wIz�"�͸�В4׌��Q&�	X&%^f���PF�}*�9���qN����{SC����=�\:n��sٓk6��z�b�^��O7DWd�䈗���N�O�<�W�M���j����o0�o�7c���� :����d��lJ      �      x������ � �      �   �  x��Y��G�W_�������J�aY���eN�:B'��������`v0]����`s��]�L�6���bUk�ez�7)D�)���%��p�8�R�	�u5\^�������^��л77�=ެg�s#�GyVb�B*�ҴRz/���&�_~�\Ҫ1�Li�H�)S��)w��V�V�&���/�[N�f-�����F��$�.�4�Z|̟^�u.��!Lkz"��ɴ$�o�*�h���W�˼S*խ�I#�d�����5l��Ûf�qY�VK��p�هQa]j�m�/�^0'1����T;q�I:
�H���	��3�H={ �u�
�f�B���	��'o��,Kr�v��l�l9�{x�;�p�������>W�	�oH���Ѭ-Ii�:?~�`F��h�喉K9>�Bq�-Se�]0{����&&���c�\*�5c�v�*�	�w?]0��|��+��7<R5A���ų��Mo�:�\��;�Vf��:!HM̍C^mMy8u0�JͪQ�I\��&�/�&�&�����+?s��Y�0���L5�U���K�?=]��,�ݽ~��>��4c�����]|ݏo�^TUX�L�so�u)�&�����C��4Za�6R4H�ZTb񆖞��b7ޞ��$���P��YR����RlB��ȻHʋ�����`�2N'�a�*����Z�.q�ጰ��4){�8ݡ��j�t#`I�-g��))lm$)�V�ޘLj�T�z�ZD�.������$!6�/2NO�%E�S6Վ�!�]���H37)Q�*c�X'��%R��p���`�t���b�FN���%���<�r�e�tΠx�b(1��o��K�4s�y�����mU(``f�H(A#�zVD}|}� �c�4��t���{�Q|��^e~~wjJfXL�1� ̺#���Ia��E�Vt�8�6�-lu!p�L�*}�:�x��6F����bL�-,
�/-�n���WוL���:���� '|�{����o�p���2�B�ױ� �5m�A;dAѾ�>~w��k]��0̰��")~#�R�A��.�ߞ�x�����B�BVRb��t~��\���^�%*�*�C+��\�Ƚ�mV�W_�D�?�v�Ίi\�aS��3��l��}8W�1��)��[�N^S$�c���ԺK�Π�ܘB/��y�$�U�!��:6��t]1�� ����|h���mz#��?��/*Dhw.�_Ȧ�URE$�&w��!5NlἎ�������0�ٱ�%�<|y<8����s ^���
]�8�0m�����:�
Ƀk^�X�hΒf�3L����]0���K�}FG���Qg����9��.��;���u��e0���)V��\M}�~~q{��(+t9H O�Pm\IZK������QH��y�w��B��,%��\�z�_���t��TY [���T��6FT�vAU(��)�I����C�����~=�o>ܼ����?nB�!g��u<���)�0�Gm����o�Ϟ=�c�@      �   ?   x�30� ]0ag NCKs��!)X����.ab�$JQpdp��/v��S�3�+F��� W&-      �   7  x�uUKo#7>s����D�Xl��b��a/y!��N�����Sֱ��ԉ!H���dc	�$x����uu��y|}�wA^-��!'��7�뫫]��n�kl�plB���"��x_��W�ʇO"ɵE��3���)��J�>o-
�i�^��C�Ic���)բ9f�����y;E�Xd��Z�r����Wo��g�r�=�`�ZHJ���U4��Z�'�8�j>��6����]�"�Q��P��/�t�)
��VA�ɳ�-�� \��̧�q��r������n�����|yM?.?���؀T����d�sd�(K��i0��B�tf����L�/˷�x��?�^�v�$��Nl�+�dh�CUJ�U�f�?� 3j�>�h��5�+hV�8FR�����;��p� ��+� �&�/N�A���o�S�-׀#�B_V���Վ�Y<�6�f��s.��Ⱀ�'.�*;���ik����R ��-E5�M�H%�8)S>A��I���y�Ѣ� �)2�Z��
�9nǧ�͖��p�/�>���I5����,������0�M�����J<�w$��ڳM�oC
C�-�i5#9	}ݭ�����>ݍK�'�
A;Ml�GpV)7���~^Z�>�]���ax�;�)�T�x~�Z,e�� _o��s�S�d	���ƐR	b��)c¡10�5�f��r|Z������߿�[h�����6�bU��q~�z��߮�㯷߻e�}֓�wof,���>9����������_j�qH�4��Uﱈ"b����h�??�0�u���o���ö*�ד_�4��
�s��?�0��7v�      �   �  x�řkzܸD��B}��&f��u��Nb��I�����E�	�QU�C�0�����������[G�<a��6�u�\OX�t�2:�_�����#�s�C3k͊S�0l�3�Y"��d�ԓ�1Q�sƱ��d0�N�c{y��I1�t���;�ئ!g��u��)��^�G�<S_��)�)��\�Ey���kj�[�xE�ӰO�NU��z�e��t?�
o){`�կki�Y���bQ�������Z�$uċսn�9��1C��O�R���{��#	+ݺ��vP�5�8��������e1X���b.�cz�&*g������2����we���o�}�]	<�J� ��������E���ϫ�����e��r�i?au��|M�`�e�Wcş�$�!��-�@ ��:lW��_x�P�<����4���S@���)[�-H���$۠α��I2��n��������	N�Ӈ����m��]<��,Yv(�z
�q��7��lAT�l0w���u��^�|1�Yy�y�`1K\�"��xWO��-[�ˡ��Xn�*���g"Ltl!C}9-�?9p�֓Z�٤�e��٘���ˈ���M�F��B�Q�I:���H��/k�.�֑��7V�W �zk���;d]�o�"
~q@��m�l©�����m�������bmrNwo���q��Ұ
�w{=0�A�awx#�:pѬn�E��2���R�[����G���I��F"H1@�D���!�����ǖ�O�Tv�Ĭb�*"��fVE��,�5P����G��G�ɼv�b=zq�NT�� C4x)ROWcDA�ͫ�(v�D��.a�m��'-��v�����F�\n��œ��a( ��4��!�3O�6y�d�3��t�u�	���mOX"41��`�_f]<V�T0�<�.���l{��Q<q��α\�~�-���K�a1@�6�)�����l, �+��J�p�^��R��P���^H����v������L�ntq��KS�ʾ���!��K�jl��
>A<T���@��
��Qn�MK���k��T�'�
�LyD|�y�q�U�(��!��[8XA���������O8��i(�du�� �Im{1H���̈́�*��?/&ߨ<E���/7��J�����QR��|�r�!�w�A���w����l�Oj5���]:g���v&sQ��_�5˄���!F�C�W�5o �/��C�l���	��=�a��z_�i��.�~���Ry�}�M��Mۨ$7��Νv��q��B(rE��!ހˊB������������(���f���
�Gr:����7����/�	.��Q(��U���ܳ+u��!:��ڟ�@6�*�'k"��ܕ>ۀ��||
h�y]����,G&�Oe�+��.���RDB�#%�[V�u�G H�>�C��QĻ��Ϸ��h����r�(�b>�(`Q:M�s~�M?�de�l_�h:8�;n�PK�ÌG��_�#`o�@b�f�w?:�8]}�n�kZ�v�f��&.�L���d_�u���G�u�7MD�kҞ�ˇ�o/d�3u�9V=�@K�������`�����0��jy�'h6W�	y=R�� !���J�z��C�K~]�UB�Q��9&<����NQ���i�nF�F�<*�vb��h��[M������}�^M��䥣�z����Q������������O#=�~݆f#
<�t@ m}F��}�n��H\��      �     x��[�v�F}�@̠�Λ-/�8�qb9N|� AR�� ���S���MP��c'�B}Q˭�T�H�8J��z�����L�w���CI#!@C��[��f�d:���*x�Vߏ�o���ʋ����~|L���c�$�i��i7E�P�����m9�~_/�9��"OjDkx��u�hL�G�~�K�*�95�N)& �$R���Y$�����c1߮&��U�h�n<��E��k|L��>���:Ҿ:\�ʺ�-#�c��e ��:u��XG<���$":�O��f�"��f~���i�>Tpy���tD��H@^���]2�#C2|>Ș-�[#ٗrU>�K�W�F�(I�ߋ�d1��������L6�a���f�v �iI������ļl�.ύ��!k'�!)�e�� ��ߍ(|���Bz �p)��A��P��&����ͩ���/��`q���ww��,�̝�w����iψ@��,��3��6?<Q��S�W�l�����B�o�P�ƽi�BT��
����2�d�j�~��#%Hĥy#卨4�J��d'Y���R��ɲ�d �ePH�����ò+��u<Ȉ#� Y� Ft��?���*J��]<� $���n�hN�q�[��w��B{�m�������p
O�KC1�]��\@�H�#�Tp��<x������^�<���< ��ɤ�^�]�^s>��H���	)m<8�4���7�H��`"\�U��|��d}8x;#8�`�~vQpOa��%3��x �SG� �Ĥ+�	>���բ>����n5�A�*��t��}_�e>�ߎ�ۇm�;�GtT�/��ؑfuk@�2m�MW*u�9��H�x읨��<`ጛ-�w���h�q�%�^�c��g �T:��b v\1�T���b%26mK⁆��œ�K:�O���8��x�������?~y���i��2��Ҳ���s1�c ��]��s�����!=��&���"E���ڔ-]���r(��U�"������91��d� ?�}�%hl8���_ �*�L�cL��'4bI|]�U�B����O�E�&O���(zŇ���x�}���!���{s)Ŭ�N^ˁgP�_��d:�o ,��){N|0DRƇ؎�.��@01#�;�~�y�h�0��D(l?���hvK���a1y:�C�\�ԠvC���`�0�!�z��b�0�ή}�Ř�](�5�tپ\� ��'���C\v��!S�X�a�~���3��A\�V��h��`]$��*��û�rS�����z�-�G��Ƒ��q�(I����[(��_g�r� ��Ӫ<=�!�b.r�s� � 6�6��띁c�"G��H3r��mC�I@c�Y���ߦ�]
�H�OCSp�֋�Sz?����qW�^J�L��83��H�ĸ}F2��h p���^�I����g����lZ1T<6y99A �������A؞h,��K�M�0@A���	AY�e�z���L$��饱捹��E�v
  6o��E}�\�:J��
�
�5UY�G�0A�2���]&jWyN=&t»��j�0b�E�;����C>�+C�. ��L��M�2'rw٨�E�M��ɺ.b4�!Cz�J�{
�o(��w�����t��"KsXWY��91y��\�����Ǹd��Ӗ8:mX�i!��!�[�
	HQok��%R`�1��*kV�ax��0]�1����mS��	�����n�K�����"|77Mexg"����*-�����������f���M�nR! �.~����:jxa?]��|
��:j���'҂E��B�)�	�� �/���Pf��}|-p7�*Y;��7��-c�j�Xv�]��~Ɉ�CPH�R��P@g8pJ)T�fr���@q�X�܃�k@�[gm�՟Ih�����K���mm#��x�?
,_�m�?6�
$+���kئ�Q�clk|�p,��W	Ǹ
靹�?G"�淔y�fc
aH���f��k��ܔ������ Go�����"��%sy���z�K�^��A381�e(�M�8�s�6�:�?�6���
�5�vPIl�M$���a�S�n@/щ��M���f���}D(�#aF�ov�&5˻m:)�W���.?��{���"h�G��[�G�2z�r�1&(y�hV�W����W�0�a�VL���|Y�6�W��A8tnh�A�s�~?����A�*��WP�u��~������w��
I$�r	8��d����l��������h�SBz�=�9V��{�v"\#��� P�roM�8iG���m�>��E^���	vHm�tN-=_9F�1.�0 �5����L��)�<��N�z{h�r�8��
����5\��!3iΎ�ԎvN=�����ڎ2i�e������3e��������f�\�a]:4���K��
�M�C�ia!�c� �#�6���Z�!s�gVb>��8� ��ʏk�;��Gp�̼�W-��ww�jp_ƥǄ�lA�x���6�$g������n��s@��~:sV��ތtr�x�����զ���V����������|]lH��w�M]^���;!���(m͹��l�"PHֹ�ݙ2-�'��Q@:�����4~��� a�����b�π_�/W@�d�Md�z�5�6�U�@3G�!ӎVp�J�����Q9R�=�;E��X$Rm@:	��!���m^Wˣ�=h������8���:2uU%�Cl�Kb3��O�F+��*�^�]ެ����S6��1�]P]4Ӧ�v�q�Cfn�&�v�{��}%���#���羴iV���.B��s���Yfz�U6/�x&�Q�GJ�Y��v�u �u�̥w����(�L@MUaڱ�)D$�ɜ$��5u���?g�i�wD��_ /BWN�*˫��P�Эzڼ!F�K�n�ϑ���}�ڰ�4ۥ�Y.��5	�ė�<��q_$����vȰ^��� ����	��8'�"x��ծ�-���/ӵ5�u��)(�u�캴82"Y2ڏ����W	�-�6o{�	���,��n�Uꈋ�Q���թ6�,�����j�{�VSP�z[q]o*�����t=i�qxwڜ�'G\d���z4"G���X�uȰ^!ؚ�h�6���l7|Y�Vپ���o�������P��2�ui���'��3���q�l����kg����t�k�Mi�ǫ���"=A=c��l��]ɦ�N��^��i,Cz,�=ZV?r��_���/9��      �   �  x���K��0D��]���%�?�4�EG��bK�G�	t��F˃���[G���R��rM�+5�(�5���r���A�I�=��yZ��--J��Q�ֶթ}V�v��B���В���a�k�Ա�e�/:�
ʚ�)U;�7G�aB-t�rW��2h�8������J)��?��3��y�Gs.���o��Op��@�xP�;�����A͝��O������+�y+�|��,�3W��(���řߑ��\�n�|Q��XwC�ƚuz�_ɿ�}�����[�BKf�S�"�Y�\��6ˍ��HR�O��8/RI�i�r��m��Q�~�v��� ���k��ux���'�&��G���w��0Mt����Pz���=��z�1��������8��Y��Gs���7��z�`�ed2{�}g���~!U���zXd��Bn�N���G�۰�<�G��@�a��� u�&f�*xD�:�=�����[i�fr�9/���A�c.1�������<���J1�     