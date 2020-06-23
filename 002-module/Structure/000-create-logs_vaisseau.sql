CREATE TABLE logs_vaisseau (
	id varchar NOT NULL,
	"date" date NOT NULL,
	heure time NOT NULL,
	vaisseau_id int NOT NULL,
	message varchar(255) NULL,
	CONSTRAINT logs_vaisseau_pk PRIMARY KEY (id),
	CONSTRAINT logs_vaisseau_fk FOREIGN KEY (vaisseau_id) REFERENCES vaisseau(id)
);
