CREATE TABLE clef_ville (
	clef int NOT NULL,
	ville_id int NOT NULL,
	CONSTRAINT clef_ville_pk PRIMARY KEY (clef,ville_id),
	CONSTRAINT clef_ville_fk FOREIGN KEY (ville_id) REFERENCES ville(id)
);
COMMENT ON TABLE clef_ville IS 'Clefs de chaque ville. Certaines ont fonctionné ... d''autres n''ont jamais été essayé ...
Il existe pourtant un moyen de savoir !';
