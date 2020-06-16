CREATE TABLE public.proprietaire_acquerir_vaisseau (
	proprietaire_id int NOT NULL,
	utilisateur_id int NOT NULL,
	vaisseau_id int NOT NULL,
	date_acquisition date NOT NULL,
	nom_vaisseau varchar(255) NULL,
	CONSTRAINT proprietaire_acquerir_vaisseau_pk PRIMARY KEY (proprietaire_id,utilisateur_id,vaisseau_id,date_acquisition),
	CONSTRAINT proprietaire_acquerir_vaisseau_fk FOREIGN KEY (proprietaire_id,utilisateur_id) REFERENCES public.proprietaire(id,utilisateur_id),
	CONSTRAINT proprietaire_acquerir_vaisseau_fk_1 FOREIGN KEY (vaisseau_id) REFERENCES public.vaisseau(id)
);
COMMENT ON TABLE public.proprietaire_acquerir_vaisseau IS 'Vaisseaux acquis par propriétaires';
