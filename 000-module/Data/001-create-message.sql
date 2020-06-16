-- Drop table

-- DROP TABLE archives.message;

CREATE TABLE archives.message (
	id int4 NOT NULL,
	message varchar NULL,
	"date" date NOT NULL,
	heure time NULL,
	de_bibliothecaire int4 NOT NULL,
	vers_bibliothecaire int4 NULL,
	CONSTRAINT message_pk PRIMARY KEY (id),
	CONSTRAINT message_fk FOREIGN KEY (de_bibliothecaire) REFERENCES archives.bibliothequaire(id),
	CONSTRAINT message_fk_1 FOREIGN KEY (vers_bibliothecaire) REFERENCES archives.bibliothequaire(id)
);
