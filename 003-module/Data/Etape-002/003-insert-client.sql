delete from client;

INSERT INTO tatooine.client
(prenom, nom)
select 
	prenom, nom 
from 
	xzump8.utilisateur;