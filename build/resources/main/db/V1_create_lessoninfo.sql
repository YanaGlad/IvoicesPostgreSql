CREATE TABLE public."LessonInfo"
(
    _id integer,
    lesson_id integer,
    student_id integer,
    attendance character varying(15) NOT NULL,
    hometasks character varying(10) NOT NULL,
    CONSTRAINT info_pk PRIMARY KEY (_id),
    CONSTRAINT lesson_fk FOREIGN KEY (_id)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT student_fk FOREIGN KEY (_id)
        REFERENCES public.Students (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."LessonInfo"
    OWNER to postgres;