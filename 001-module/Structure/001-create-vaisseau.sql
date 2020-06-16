-- Drop table

-- DROP TABLE public.vaisseau;

CREATE TABLE public.vaisseau (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	nom varchar(255) NOT NULL,
	modele_id int4 NULL,
	CONSTRAINT vaisseau_pk PRIMARY KEY (id),
	CONSTRAINT vaisseau_fk FOREIGN KEY (id) REFERENCES modele(id)
);


COMMENT ON TABLE public.vaisseau IS 'Vaisseau dans Star wars';