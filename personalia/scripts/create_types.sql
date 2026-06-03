CREATE SCHEMA IF NOT EXISTS "public";

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_type t
    JOIN pg_namespace n ON n.oid = t.typnamespace
    WHERE n.nspname = 'public'
      AND t.typname = 'jk'
  ) THEN
    CREATE TYPE public.jk AS ENUM ('L', 'P');
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_type t
    JOIN pg_namespace n ON n.oid = t.typnamespace
    WHERE n.nspname = 'public'
      AND t.typname = 'aktiftidak'
  ) THEN
    CREATE TYPE public.aktiftidak AS ENUM ('Aktif', 'Tidak Aktif');
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_type t
    JOIN pg_namespace n ON n.oid = t.typnamespace
    WHERE n.nspname = 'public'
      AND t.typname = 'enum_type_yes_no'
  ) THEN
    CREATE TYPE public.enum_type_yes_no AS ENUM ('Ya', 'Tidak');
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_type t
    JOIN pg_namespace n ON n.oid = t.typnamespace
    WHERE n.nspname = 'public'
      AND t.typname = 'pegstatuswarganeg'
  ) THEN
    CREATE TYPE public.pegstatuswarganeg AS ENUM ('Asing', 'Lokal');
  END IF;
END $$;

CREATE SCHEMA IF NOT EXISTS simpeg;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_type t
    JOIN pg_namespace n ON n.oid = t.typnamespace
    WHERE n.nspname = 'simpeg'
      AND t.typname = 'regshift'
  ) THEN
    CREATE TYPE simpeg.regshift AS ENUM ('reguler', 'shift siang', 'shift malam');
  END IF;
END $$;

CREATE SCHEMA IF NOT EXISTS "ref";

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM pg_type t
        JOIN pg_namespace n ON n.oid = t.typnamespace
        WHERE n.nspname = 'ref'
          AND t.typname = 'kompgajidtstatusseting'
    ) THEN
        CREATE TYPE "ref"."kompgajidtstatusseting" AS ENUM (
            'persen',
            'nominal'
        );
    END IF;
END $$;