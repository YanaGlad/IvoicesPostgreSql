CREATE TABLE public."StudentLessonInfo"
(
    _id integer,
    lesson_id integer,
    student_id integer,
    attendance character varying(10),
    homework character varying(10),
    CONSTRAINT lesson_info_pk PRIMARY KEY (_id),
    CONSTRAINT info_student_fk FOREIGN KEY (student_id)
        REFERENCES public.Students (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT info_lesson_fk FOREIGN KEY (lesson_id)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."StudentLessonInfo"
    OWNER to postgres;