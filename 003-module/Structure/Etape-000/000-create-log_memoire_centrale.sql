CREATE TABLE memoire_centrale (
	id int NOT NULL,
	"date" date NOT NULL,
	heure time NOT NULL,
	log varchar(255) NULL,
	ordinateur_id int NOT NULL,
	CONSTRAINT memoire_centrale_pk PRIMARY KEY (id)
);
