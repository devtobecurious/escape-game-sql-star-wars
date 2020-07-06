CREATE TABLE piece (
	id int NOT NULL,
	"date" date NOT NULL,
	heure time NOT NULL,
	log varchar(255) NULL,
	moteur_id int NULL,
	piece_id int NULL,
	CONSTRAINT piece_pk PRIMARY KEY (id)
);
