CREATE TABLE public."Schedule"
(
    _id integer,
    week_day character varying(15) NOT NULL,
    lesson1_id integer,
    lesson2_id integer,
    lesson3_id integer,
    lesson4_id integer,
    lesson5_id integer,
    lesson6_id integer,
    CONSTRAINT sched_pk PRIMARY KEY (_id),
    CONSTRAINT monday FOREIGN KEY (lesson1_id)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT tuesday FOREIGN KEY (lesson2_id)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT wednesday FOREIGN KEY (lesson3_id)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT thursday FOREIGN KEY (lesson4_id)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT friday FOREIGN KEY (lesson5_id)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT saturday FOREIGN KEY (lesson6_id)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."Schedule"
    OWNER to postgres;