CREATE TABLE public.utilisateur (
	id int NOT NULL,
	prenom varchar(255) NOT NULL,
	nom varchar(255) NULL,
	CONSTRAINT utilisateur_pk PRIMARY KEY (id)
);
COMMENT ON TABLE public.utilisateur IS 'Liste de tous les utilisateurs';