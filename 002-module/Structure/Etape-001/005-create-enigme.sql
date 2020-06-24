CREATE TABLE enigme (
	id int NOT NULL,
	libelle varchar(255) NOT NULL,
	date_actif date NOT NULL,
	date_fin_actif date NULL,
	CONSTRAINT enigme_pk PRIMARY KEY (id)
);
COMMENT ON TABLE enigme IS 'Enigmes posées par les gardiens';
