CREATE TABLE proprietaire (
	id int NOT NULL,
	utilisateur_id int NOT NULL,
	CONSTRAINT proprietaire_pk PRIMARY KEY (id,utilisateur_id),
	CONSTRAINT proprietaire_fk FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);
COMMENT ON TABLE proprietaire IS 'Propriétaires de vaisseaux';
