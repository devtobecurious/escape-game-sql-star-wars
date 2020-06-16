-- modele definition

-- Drop table

-- DROP TABLE modele;

CREATE TABLE modele (
	id int4 NOT NULL,
	CONSTRAINT modele_pk PRIMARY KEY (id)
);

ALTER TABLE modele ADD libelle varchar(255) NOT NULL;

COMMENT ON TABLE modele IS 'Modele des vaisseaux de Star Wars;