CREATE TABLE ville (
	id int4 NOT NULL,
	libelle varchar(255) NOT NULL,
	planete_id int4 NULL,
	CONSTRAINT ville_pk PRIMARY KEY (id)
);


-- ville foreign keys
ALTER TABLE ville ADD CONSTRAINT ville_fk FOREIGN KEY (planete_id) REFERENCES planete(id);

COMMENT ON TABLE ville IS 'Ville d''une planète';