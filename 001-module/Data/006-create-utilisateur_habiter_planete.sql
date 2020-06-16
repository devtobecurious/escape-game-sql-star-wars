CREATE TABLE public.utilisateur_habiter_planete (
	utilisateur_id int NOT NULL,
	planete_id int NOT NULL,
	date_emmenagement date NOT NULL,
	CONSTRAINT utilisateur_habiter_planete_pk PRIMARY KEY (utilisateur_id,planete_id)
);
COMMENT ON TABLE public.utilisateur_habiter_planete IS 'Liste des planètes où les propriétaires ont habité';
