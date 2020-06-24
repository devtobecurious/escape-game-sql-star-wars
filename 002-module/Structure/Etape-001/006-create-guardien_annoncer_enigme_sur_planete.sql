CREATE TABLE guardien_annoncer_enigme_sur_planete (
	guardien_id int NOT NULL,
	utilisateur_id int NOT NULL,
	planete_id int NOT NULL,
	enigme_id int NOT NULL,
	ordre int NOT NULL,
	CONSTRAINT guardien_annoncer_enigme_sur_planete_pk PRIMARY KEY (guardien_id,utilisateur_id,enigme_id,planete_id),
	CONSTRAINT guardien_annoncer_enigme_sur_planete_fk FOREIGN KEY (enigme_id) REFERENCES enigme(id),
	CONSTRAINT guardien_annoncer_enigme_sur_planete_fk_1 FOREIGN KEY (guardien_id,utilisateur_id) REFERENCES gardien(id,utilisateur_id),
	CONSTRAINT guardien_annoncer_enigme_sur_planete_fk_2 FOREIGN KEY (planete_id) REFERENCES planete(id)
);
COMMENT ON TABLE guardien_annoncer_enigme_sur_planete IS 'Enigmes annoncées par guardien sur chaque planète';
