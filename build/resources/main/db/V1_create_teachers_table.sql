CREATE TABLE public."Teachers"
(
    _id integer,
    age integer,
    name character varying(20) NOT NULL,
    salary bigint,
    students_groups integer NOT NULL,
    subject character varying(30) NOT NULL,
    CONSTRAINT teach_pk PRIMARY KEY (_id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."Teachers"
    OWNER to postgres;