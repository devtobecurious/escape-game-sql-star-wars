-- Drop table

-- DROP TABLE vaisseau;
CREATE TABLE vaisseau (
	nom varchar(255) NOT NULL,
	modele_id int4 NULL,
	id int4 NOT NULL,
	CONSTRAINT vaisseau_pk PRIMARY KEY (id)
);


-- xzump8.vaisseau foreign keys
ALTER TABLE vaisseau ADD CONSTRAINT vaisseau_fk FOREIGN KEY (modele_id) REFERENCES modele(id);


COMMENT ON TABLE vaisseau IS 'Vaisseau dans Star wars';