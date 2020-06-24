CREATE TABLE gardien_garde_planete (
	gardien_id int NOT NULL,
	utilisateur_id int NOT NULL,
	planete_id int NOT NULL,
	CONSTRAINT gardien_garde_planete_pk PRIMARY KEY (gardien_id,utilisateur_id,planete_id),
	CONSTRAINT gardien_garde_planete_fk FOREIGN KEY (planete_id) REFERENCES planete(id),
	CONSTRAINT gardien_garde_planete_fk_1 FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);
COMMENT ON TABLE gardien_garde_planete IS 'Gardiens de chaque planète';
