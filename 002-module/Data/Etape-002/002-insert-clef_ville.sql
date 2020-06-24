
insert into clef_ville
(
 clef,
 ville_id
)
select 
a.n,
	ville.id 
from
	generate_series(1, 1000) as a(n)
cross join
	ville;