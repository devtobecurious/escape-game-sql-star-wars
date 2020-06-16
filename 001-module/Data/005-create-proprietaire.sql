CREATE TABLE public.proprietaire (
	id int NOT NULL,
	utilisateur_id int NOT NULL,
	CONSTRAINT proprietaire_pk PRIMARY KEY (id,utilisateur_id),
	CONSTRAINT proprietaire_fk FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateur(id)
);
COMMENT ON TABLE public.proprietaire IS 'Propriétaires de vaisseaux';
