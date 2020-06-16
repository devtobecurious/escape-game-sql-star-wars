CREATE TABLE xzump8.proprietaire_acquerir_vaisseau (
	proprietaire_id int NOT NULL,
	utilisateur_id int NOT NULL,
	vaisseau_id int NOT NULL,
	date_acquisition date NOT NULL,
	nom_vaisseau varchar(255) NULL,
	CONSTRAINT proprietaire_acquerir_vaisseau_pk PRIMARY KEY (proprietaire_id,utilisateur_id,vaisseau_id,date_acquisition),
	CONSTRAINT proprietaire_acquerir_vaisseau_fk FOREIGN KEY (proprietaire_id,utilisateur_id) REFERENCES xzump8.proprietaire(id,utilisateur_id),
	CONSTRAINT proprietaire_acquerir_vaisseau_fk_1 FOREIGN KEY (vaisseau_id) REFERENCES xzump8.vaisseau(id)
);
COMMENT ON TABLE xzump8.proprietaire_acquerir_vaisseau IS 'Vaisseaux acquis par propriétaires';
