
with test as (
	select libelle
	from "type" t 
)
select
 * 
from test;

with test as (
	select libelle
	from "type" t 
	where t.libelle ilike '%rpg%'
)
select
 * 
from test
;

with test as (
	select libelle
	from "type" t 
	where lower(t.libelle) like '%rpg%'
),
test2 as (
	select 
		upper(libelle) as libelle
	from test
)
select
 * 
from test2
left join test on test.libelle = test2.libelle
;

with test as (
	select libelle
	from "type" t 
	where lower(t.libelle) like '%rpg%'
),
test2 as (
	select 
		upper(libelle) as libelle
	from test
)
select
 * 
from test2
full outer join test on test.libelle = test2.libelle
;