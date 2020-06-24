CREATE TABLE histoire (
	id int4 NOT NULL,
	contenu varchar(255) NOT NULL,
	"index" int4 NOT NULL,
	etape_id int NULL,
	CONSTRAINT histoire_pk PRIMARY KEY (id)
);
COMMENT ON TABLE histoire IS 'Du préquel jusqu''à la fin, des aides, un prequel, un peu l''histoire du jeu, à vous d''interpréter :)';
