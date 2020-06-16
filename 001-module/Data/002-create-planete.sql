CREATE TABLE public.planete (
	id int NOT NULL,
	libelle varchar(255) NOT NULL,
	CONSTRAINT planete_pk PRIMARY KEY (id)
);
COMMENT ON TABLE public.planete IS 'Planete dans Star wars';
