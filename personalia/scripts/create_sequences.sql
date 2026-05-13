CREATE SCHEMA IF NOT EXISTS public;

-- public.pegawai_seq definition

CREATE SEQUENCE IF NOT EXISTS public.pegawai_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START WITH 1
    CACHE 1
    NO CYCLE;

-- public.sdm_jabatan_fungsional_seq definition

CREATE SEQUENCE IF NOT EXISTS public.sdm_jabatan_fungsional_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START WITH 1
    CACHE 1
    NO CYCLE;


-- public.sdm_pangkat_golongan_seq definition

CREATE SEQUENCE IF NOT EXISTS public.sdm_pangkat_golongan_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START WITH 1
    CACHE 1
    NO CYCLE;


-- public.sdm_pegawai_detail_seq definition

CREATE SEQUENCE IF NOT EXISTS public.sdm_pegawai_detail_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START WITH 1
    CACHE 1
    NO CYCLE;


-- public.sdm_satuan_kerja_pegawai_seq definition

CREATE SEQUENCE IF NOT EXISTS public.sdm_satuan_kerja_pegawai_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START WITH 1
    CACHE 1
    NO CYCLE;