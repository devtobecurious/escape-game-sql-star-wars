-- xzump8.modele definition

-- Drop table

-- DROP TABLE xzump8.modele;

CREATE TABLE xzump8.modele (
	id int4 NOT NULL,
	CONSTRAINT modele_pk PRIMARY KEY (id)
);

ALTER TABLE xzump8.modele ADD libelle varchar(255) NOT NULL;

COMMENT ON TABLE xzump8.modele IS 'Modele des vaisseaux de Star Wars;