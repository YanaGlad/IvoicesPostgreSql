CREATE TABLE public."Schedule"
(
    monday integer,
    tuesday integer,
    wednesday integer,
    thursday integer,
    friday integer,
    saturday integer,
    _id integer,
    CONSTRAINT sched_pk PRIMARY KEY (_id),
    CONSTRAINT m_fk FOREIGN KEY (monday)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT t_fk FOREIGN KEY (tuesday)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT w_fk FOREIGN KEY (wednesday)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT th_fk FOREIGN KEY (thursday)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT f_fk FOREIGN KEY (friday)
        REFERENCES public.Lessons (_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT s_fk FOREIGN KEY (saturday)
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