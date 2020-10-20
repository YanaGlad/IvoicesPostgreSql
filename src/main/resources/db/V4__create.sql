CREATE TABLE public."Teachers"
(
    _id integer,
    name character varying(50) NOT NULL,
    salary bigint,
    lesson integer,
    CONSTRAINT teach_pk PRIMARY KEY (_id),
    CONSTRAINT teaching_lesson_fk FOREIGN KEY (lesson)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."Teachers"
    OWNER to postgres;