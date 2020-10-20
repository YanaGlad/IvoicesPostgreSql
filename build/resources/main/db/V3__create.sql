CREATE TABLE public."Students"
(
    _id integer,
    age integer,
    name character varying(30) NOT NULL,
    course integer,
    group_schedule integer,
    degree bigint,
    CONSTRAINT student_pk PRIMARY KEY (_id),
    CONSTRAINT group_sched_fk FOREIGN KEY (group_schedule)
        REFERENCES public."Schedule" (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."Students"
    OWNER to postgres;