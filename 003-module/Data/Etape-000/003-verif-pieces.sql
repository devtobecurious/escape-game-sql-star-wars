select *
from piece;

select 
	piece_id,
	log
from piece;


with pieces as (
	select 
		piece_id,
		split_part(log, '||', 1)  as status
	from piece
),
pieces_statut as (
	select 
	 piece_id,
	 sum(case when status = 'OK' then 0 else 1 end) as defectueux,
	 sum(case when status = 'OK' then 1 else 0 end) as ok
	from pieces
	group by piece_id
)
select 
	piece_id,
	defectueux,
	ok,
	row_number() over (order by defectueux, ok)
from pieces_statut;

with pieces as (
	select 
		piece_id,
		split_part(log, '||', 1)  as status
	from piece
),
pieces_statut as (
	select 
	 piece_id,
	 sum(case when status = 'OK' then 0 else 1 end) as defectueux,
	 sum(case when status = 'OK' then 1 else 0 end) as ok
	from pieces
	group by piece_id
)
select 
	piece_id,
	defectueux,
	ok,
	rank() over (order by defectueux desc, ok)
from pieces_statut;

with pieces as (
	select 
		piece_id,
		split_part(log, '||', 1)  as status
	from piece
),
pieces_statut as (
	select 
	 piece_id,
	 sum(case when status = 'OK' then 0 else 1 end) as defectueux,
	 sum(case when status = 'OK' then 1 else 0 end) as ok
	from pieces
	group by piece_id
)
select 
	piece_id,
	defectueux,
	ok,
	rank() over (order by defectueux desc, ok)
from pieces_statut;


with pieces as (
	select 
		piece_id,
		split_part(log, '||', 1)  as status
	from piece
),
pieces_statut as (
	select 
	 piece_id,
	 sum(case when status = 'NOK' then 1 else 0 end) as defectueux,
	 sum(case when status = 'WARNING' then 1 else 0 end) as warning,
	 sum(case when status = 'OK' then 1 else 0 end) as ok
	from pieces
	group by piece_id
)
select 
	piece_id,
	defectueux,
	ok,
	rank() over (order by defectueux desc, ok)
from pieces_statut;



explain with pieces as (
	select 
		piece_id,
		split_part(log, '||', 1)  as status
	from piece
),
pieces_statut as (
	select 
	 piece_id,
	 sum(case when status = 'NOK' then 1 else 0 end) as defectueux,
	 sum(case when status = 'WARNING' then 1 else 0 end) as warning,
	 sum(case when status = 'OK' then 1 else 0 end) as ok
	from pieces
	group by piece_id
)
select 
	piece_id,
	defectueux,
	ok,
	rank() over (order by defectueux desc, ok)
from pieces_statut;


explain ANALYSE with pieces as (
	select 
		piece_id,
		split_part(log, '||', 1)  as status
	from piece
),
pieces_statut as (
	select 
	 piece_id,
	 sum(case when status = 'NOK' then 1 else 0 end) as defectueux,
	 sum(case when status = 'WARNING' then 1 else 0 end) as warning,
	 sum(case when status = 'OK' then 1 else 0 end) as ok
	from pieces
	group by piece_id
)
select 
	piece_id,
	defectueux,
	ok,
	rank() over (order by defectueux desc, ok)
from pieces_statut;