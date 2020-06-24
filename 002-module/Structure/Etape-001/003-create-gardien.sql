CREATE TABLE gardien (
	id int4 NOT NULL,
	utilisateur_id int4 NOT NULL,
	grade_id int4 NULL,
	CONSTRAINT gardien_pk PRIMARY KEY (id, utilisateur_id),
	CONSTRAINT gardien_fk FOREIGN KEY (grade_id) REFERENCES grade(id),
	CONSTRAINT gardien_u_fk FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);

COMMENT ON TABLE gardien IS 'Gardien des planètes sacrées';
