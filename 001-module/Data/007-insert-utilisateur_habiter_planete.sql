delete from utilisateur_habiter_planete;

INSERT INTO utilisateur_habiter_planete
(utilisateur_id, planete_id, date_emmenagement)
with planetes as 
(
select p.id as planete_id, row_number() over (order by p.id) as num 
from planete p 
limit (select count(*) from utilisateur u)
),
utilisateurs as
(
select u2.id as utilisateur_id, row_number() over (order by u2.id) as num
from utilisateur u2 
)
select 
 utilisateurs.utilisateur_id, 
 planetes.planete_id,
 TO_DATE( CONCAT( (2500 + planetes.num), '0101'), 'YYYYMMDD')
from utilisateurs 
join planetes on utilisateurs.num = planetes.num;


-- Chewbacca 
INSERT INTO utilisateur_habiter_planete
(utilisateur_id, planete_id, date_emmenagement)
VALUES
(
    1639, 111, '2500/02/03'
);






