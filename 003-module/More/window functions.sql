-- compare price for one sell by sell by piece
select 
	vente.personne_nom, vente.personne_prenom, vente.prix * vente.quantite, avg(vente.prix * vente.quantite) over (partition by piece_id) 
from vente;

-- compare price for one sell by sell by modele
select 
	vente.personne_nom, vente.personne_prenom, vente.prix * vente.quantite, avg(vente.prix * vente.quantite) over (partition by piece.modele_id) 
from vente
join piece on vente.piece_id = piece.id

-- rank order by price, partition by piece
select 
	vente.personne_nom, vente.personne_prenom, vente.prix, rank() over (partition by piece.id order by vente.prix desc) 
from vente
join piece on vente.piece_id = piece.id
order by vente.personne_nom, vente.personne_prenom;

-- window partition is the same as the sum
SELECT prix, sum(prix) OVER () FROM vente;

-- window partition is not the same : it takes the same to the current item
SELECT prix, sum(prix) OVER (order by prix) FROM vente;