delete from vente;

INSERT INTO vente
(piece_id, personne_prenom, personne_nom, "date", heure, avis, prix, quantite)
with clients as (
	select prenom, nom
	from client offset floor(random() * (select count(*) from client) + 1) 
	limit 1000
),
pieces as (
	select
		piece.id 
	from 
		piece 
	where piece.modele_id not in (8001, 7001, 6001, 5001, 4001, 3001, 2001)	
	offset floor(random() * (select count(*) from piece where modele_id not in (8001, 7001, 6001, 5001, 4001, 3001, 2001)) + 1)
	limit 1000
)
select 
	pieces.id,
	clients.prenom, 
	clients.nom,
	TO_DATE('30000403', 'YYYYMMDD') + (random() * (NOW()+'90 days' - NOW())) + '30 days' as date,
	'17:00',
	cast((array['*', '**', '***', '****', '*****'])[floor(random() * 5 + 1)] as varchar) as valeur,
	random() * 1500,
	cast((array['1', '15', '8', '2', '14'])[floor(random() * 5 + 1)] as int)
from 
	pieces,
	clients;
	

INSERT INTO vente
(piece_id, personne_prenom, personne_nom, "date", heure, avis, prix, quantite)
with clients as (
	select prenom, nom
	from client offset floor(random() * (select count(*) from client) + 1) 
	limit 500
),
pieces as (
	select
		piece.id 
	from 
		piece 
	where piece.modele_id in (8001, 7001, 6001, 5001, 4001, 3001, 2001)	
	offset floor(random() * (select count(*) from piece where modele_id in (8001, 7001, 6001, 5001, 4001, 3001, 2001)) + 1)
	limit 500
)
select 
	pieces.id,
	clients.prenom, 
	clients.nom,
	TO_DATE('30000403', 'YYYYMMDD') + (random() * (NOW()+'90 days' - NOW())) + '30 days' as date,
	'17:00',
	cast((array['*', '**', '***', '****', '*****'])[floor(random() * 5 + 1)] as varchar) as valeur,
	random() * 1500,
	cast((array['1', '15', '8', '2', '14'])[floor(random() * 5 + 1)] as int)
from 
	pieces,
	clients;