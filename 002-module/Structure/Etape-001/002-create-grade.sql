CREATE TABLE grade (
	id int NOT NULL,
	libelle varchar(255) NOT NULL,
	CONSTRAINT grade_pk PRIMARY KEY (id)
);
COMMENT ON TABLE grade IS 'Grade (niveau des gardiens)';
