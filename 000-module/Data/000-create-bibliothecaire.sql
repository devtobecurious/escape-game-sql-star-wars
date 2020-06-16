CREATE TABLE archives.bibliothequaire (
	id int NOT NULL,
	prenom varchar(255) NOT NULL,
	age int NULL,
	CONSTRAINT bibliothequaire_pk PRIMARY KEY (id)
);
COMMENT ON TABLE archives.bibliothequaire IS 'Personnes de la grande bibliothèque';
