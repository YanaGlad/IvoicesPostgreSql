CREATE TABLE public."Lessons"
(
    _id integer NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Lessons_pkey" PRIMARY KEY (_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Lessons"
    OWNER to postgres;