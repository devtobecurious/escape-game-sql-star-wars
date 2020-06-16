-- public.modele definition

-- Drop table

-- DROP TABLE public.modele;

CREATE TABLE public.modele (
	id int4 NOT NULL,
	CONSTRAINT modele_pk PRIMARY KEY (id)
);

ALTER TABLE public.modele ADD libelle varchar(255) NOT NULL;

COMMENT ON TABLE public.modele IS 'Modele des vaisseaux de Star Wars;