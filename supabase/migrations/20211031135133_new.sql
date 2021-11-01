


CREATE TABLE IF NOT EXISTS public.t
(
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t
    OWNER to postgres;

GRANT ALL ON TABLE public.t TO anon;

GRANT ALL ON TABLE public.t TO authenticated;

GRANT ALL ON TABLE public.t TO postgres;

GRANT ALL ON TABLE public.t TO service_role;
