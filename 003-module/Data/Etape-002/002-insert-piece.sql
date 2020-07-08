delete from piece;

CREATE SEQUENCE piece_sequence_2
  start 500
  increment 1;

INSERT INTO piece
(id, libelle, "version")
with versions as (
	select 
		trunc(random() * 5100)::varchar as value
	from
		generate_series(1, 500) s
),
symbols(characters) as (
	VALUES ('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789')
)
select 
	nextval('piece_sequence_2'),
	concat(items.libelle, versions.value), 
	versions.value
from
	versions
join (select 
		string_agg(substr(characters, (random() * length(characters) + 1) :: INTEGER, 1), '') as libelle
	from 
		symbols
	join generate_series(1,8) as word(chr_idx) on 1 = 1 -- word length
	join generate_series(1,1) as words(idx) on 1 = 1 -- # of words
	group by idx) as items on 1 = 1;
	
DROP SEQUENCE piece_sequence_2;

UPDATE piece
SET modele_id = trunc(random() * 10000)::int;


update piece delete from piece;

CREATE SEQUENCE piece_sequence_2
  start 500
  increment 1;

INSERT INTO piece
(id, libelle, "version")
with versions as (
	select 
		trunc(random() * 5100)::varchar as value
	from
		generate_series(1, 500) s
),
symbols(characters) as (
	VALUES ('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789')
)
select 
	nextval('piece_sequence_2'),
	concat(items.libelle, versions.value), 
	versions.value
from
	versions
join (select 
		string_agg(substr(characters, (random() * length(characters) + 1) :: INTEGER, 1), '') as libelle
	from 
		symbols
	join generate_series(1,8) as word(chr_idx) on 1 = 1 -- word length
	join generate_series(1,1) as words(idx) on 1 = 1 -- # of words
	group by idx) as items on 1 = 1;
	
DROP SEQUENCE piece_sequence_2;

UPDATE piece
SET modele_id = trunc(random() * 10000)::int;


delete from piece;

CREATE SEQUENCE piece_sequence_2
  start 500
  increment 1;

INSERT INTO piece
(id, libelle, "version")
with versions as (
	select 
		trunc(random() * 5100)::varchar as value
	from
		generate_series(1, 500) s
),
symbols(characters) as (
	VALUES ('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789')
)
select 
	nextval('piece_sequence_2'),
	concat(items.libelle, versions.value), 
	versions.value
from
	versions
join (select 
		string_agg(substr(characters, (random() * length(characters) + 1) :: INTEGER, 1), '') as libelle
	from 
		symbols
	join generate_series(1,8) as word(chr_idx) on 1 = 1 -- word length
	join generate_series(1,1) as words(idx) on 1 = 1 -- # of words
	group by idx) as items on 1 = 1;
	
DROP SEQUENCE piece_sequence_2;

UPDATE piece
SET modele_id = trunc(random() * 10000)::int;

UPDATE piece
SET modele_id =	cast((array['9001', '8001', '7001', '6001', '5001', '4001', '3001', '2001'])[floor(random() * 6 + 1)] as int)
from 
	generate_series(1, 1000)
where 
	piece.id < 1500;

