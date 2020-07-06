CREATE TABLE moteur (
	id int NOT NULL,
	"date" date NOT NULL,
	heure time NOT NULL,
	log varchar(255) NULL,
	memoire_centrale_id int NULL,
	CONSTRAINT moteur_pk PRIMARY KEY (id)
);

ALTER TABLE moteur ADD moteur_id int NOT NULL;
ALTER TABLE moteur DROP COLUMN memoire_centrale_id;


