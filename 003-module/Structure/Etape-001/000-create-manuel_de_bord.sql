CREATE TABLE manuel_de_bord (
	id int NOT NULL,
	contenu varchar(255) NOT NULL,
	date_derniere_modification date NULL,
	CONSTRAINT manuel_de_bord_pk PRIMARY KEY (id)
);
