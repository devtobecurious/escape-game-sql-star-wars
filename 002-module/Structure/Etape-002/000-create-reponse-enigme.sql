CREATE TABLE reponse_enigme (
	enigme_id int NOT NULL,
	planete_id int NOT NULL,
	reponse varchar(255) NULL,
	CONSTRAINT reponse_enigme_pk PRIMARY KEY (enigme_id,planete_id),
	CONSTRAINT reponse_enigme_fk FOREIGN KEY (enigme_id) REFERENCES enigme(id),
	CONSTRAINT reponse_enigme_fk_1 FOREIGN KEY (planete_id) REFERENCES planete(id)
);
COMMENT ON TABLE reponse_enigme IS 'Réponses des énigmes, par planète';
