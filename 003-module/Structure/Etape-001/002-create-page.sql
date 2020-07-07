CREATE TABLE page (
	id int NOT NULL,
	manuel_bord_id int NOT NULL,
	categorie_id int NOT NULL,
	"content" varchar(max) NOT NULL,
	CONSTRAINT newtable_pk PRIMARY KEY (id),
	CONSTRAINT newtable_fk FOREIGN KEY (manuel_bord_id) REFERENCES "ordinateurdebordYT492727ZED".manuel_de_bord(id),
	CONSTRAINT newtable_fk_1 FOREIGN KEY (categorie_id) REFERENCES "ordinateurdebordYT492727ZED".categorie(id)
);

ALTER TABLE page ALTER COLUMN "content" TYPE varchar USING "content"::varchar;
