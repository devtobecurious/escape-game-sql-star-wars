CREATE TABLE public.ville (
	id int4 NOT NULL,
	libelle varchar(255) NOT NULL,
	planete_id int4 NULL,
	CONSTRAINT ville_pk PRIMARY KEY (id)
);


-- public.ville foreign keys
ALTER TABLE public.ville ADD CONSTRAINT ville_fk FOREIGN KEY (planete_id) REFERENCES planete(id);

COMMENT ON TABLE public.ville IS 'Ville d''une planète';