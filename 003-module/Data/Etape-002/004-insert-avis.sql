delete from avis;


INSERT INTO avis
(piece_id, client_prenom, client_nom, "date", note)
with clients as (
	select prenom, nom
	from client offset floor(random() * (select count(*) from client)) 
	limit 1000
),
pieces as (
	select 
		piece.id
	from piece 
	where
		modele_id in (8001, 7001, 6001, 5001, 4001, 3001, 2001)
)
select 
	pieces.id,
	clients.prenom, 
	clients.nom,
	TO_DATE('30000101', 'YYYYMMDD') + (random() * (NOW()+'90 days' - NOW())) + '30 days',
	cast((array['archi null', 'null', 'mouais', 'bien', 'excellent', 'magnifique'])[floor(random() * 6 + 1)] as varchar) as valeur
from 
	pieces,
	clients;

select 
	m.id,
	sum(
	case when a.note = 'excellent' then 1
		 when a.note = 'maginifique' then 1
		 else 0
	end)
from 
	avis a 
join
	piece p on a.piece_id = p.id 
join 
	modele m on p.modele_id = m.id 
group by m.id