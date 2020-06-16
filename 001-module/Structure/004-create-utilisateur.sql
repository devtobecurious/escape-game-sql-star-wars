CREATE TABLE xzump8.utilisateur (
	id int NOT NULL,
	prenom varchar(255) NOT NULL,
	nom varchar(255) NULL,
	CONSTRAINT utilisateur_pk PRIMARY KEY (id)
);
COMMENT ON TABLE xzump8.utilisateur IS 'Liste de tous les utilisateurs';
