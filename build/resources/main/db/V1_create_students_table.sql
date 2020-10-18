CREATE TABLE public."Students"
(
    _id integer NOT NULL,
    age integer,
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "group" integer NOT NULL,
    course integer NOT NULL,
    degree bigint,
    CONSTRAINT stud_pk PRIMARY KEY (_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Students"
    OWNER to postgres;