CREATE SEQUENCE logs_sequence
  start 2
  increment 2;

delete from logs_vaisseau;
 
INSERT INTO logs_vaisseau 
(id, "date", heure, vaisseau_id, message)
SELECT 
	nextval('logs_sequence'), 
	proprietaire_acquerir_vaisseau.date_acquisition,
	'10:00',
	vaisseau_id, 
	CONCAT('NAMING-', proprietaire_acquerir_vaisseau.nom_vaisseau)
from 
vaisseau
join proprietaire_acquerir_vaisseau on vaisseau.id = proprietaire_acquerir_vaisseau.vaisseau_id;


drop SEQUENCE logs_sequence;



delete from proprietaire_acquerir_vaisseau
where nom_vaisseau = 'Faucon Millénium';