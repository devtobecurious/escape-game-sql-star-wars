CREATE TABLE xzump8.ville (
	id int4 NOT NULL,
	libelle varchar(255) NOT NULL,
	planete_id int4 NULL,
	CONSTRAINT ville_pk PRIMARY KEY (id)
);


-- xzump8.ville foreign keys
ALTER TABLE xzump8.ville ADD CONSTRAINT ville_fk FOREIGN KEY (planete_id) REFERENCES planete(id);

COMMENT ON TABLE xzump8.ville IS 'Ville d''une planète';