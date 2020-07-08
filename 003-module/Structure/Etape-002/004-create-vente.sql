CREATE TABLE vente (
	piece_id int NULL,
	personne_prenom varchar NULL,
	personne_nom varchar NULL,
	"date" date NULL,
	heure time NULL,
	avis varchar NULL
);
ALTER TABLE vente ADD prix float4 NULL;
ALTER TABLE vente ADD quantite int NULL;