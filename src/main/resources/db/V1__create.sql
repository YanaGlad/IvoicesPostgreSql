CREATE TABLE public."Lessons"
(
    _id integer,
    name character varying(40) NOT NULL,
    CONSTRAINT lesson_pk PRIMARY KEY (_id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."Lessons"
    OWNER to postgres;