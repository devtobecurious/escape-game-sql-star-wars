drop table if exists default_answers;

CREATE TEMPORARY TABLE default_answers (answer varchar(255), index int);


insert into default_answers (answer, index)
values
(
    'C', 1
);

insert into default_answers (answer, index)
values
(
    'e', 2
);

insert into default_answers (answer, index)
values
(
    ' ', 3
);

insert into default_answers (answer, index)
values
(
    'n', 4
);

insert into default_answers (answer, index)
values
(
    '''', 5
);

insert into default_answers (answer, index)
values
(
    'e', 6
);

insert into default_answers (answer, index)
values
(
    's', 7
);

insert into default_answers (answer, index)
values
(
    't', 8
);

insert into default_answers (answer, index)
values
(
    ' ', 9
);

insert into default_answers (answer, index)
values
(
    'p', 10
);

insert into default_answers (answer, index)
values
(
    'a', 11
);

insert into default_answers (answer, index)
values
(
    's', 12
);

insert into default_answers (answer, index)
values
(
    ' ', 13
);

insert into default_answers (answer, index)
values
(
    'u', 14
);

insert into default_answers (answer, index)
values
(
    'n', 15
);

insert into default_answers (answer, index)
values
(
    'e', 16
);

insert into default_answers (answer, index)
values
(
    ' ', 17
);

insert into default_answers (answer, index)
values
(
    'b', 18
);

insert into default_answers (answer, index)
values
(
    'o', 19
);

insert into default_answers (answer, index)
values
(
    'n', 20
);

insert into default_answers (answer, index)
values
(
    'n', 21
);

insert into default_answers (answer, index)
values
(
    'e', 22
);

insert into default_answers (answer, index)
values
(
    ' ', 23
);

insert into default_answers (answer, index)
values
(
    'i', 24
);

insert into default_answers (answer, index)
values
(
    'd', 25
);

insert into default_answers (answer, index)
values
(
    'é', 26
);

insert into default_answers (answer, index)
values
(
    'e', 27
);

delete from reponse_enigme;

INSERT INTO reponse_enigme
(enigme_id, planete_id, reponse)
with gaesp as
(
	select 
		enigme_id,
	    planete_id,		
		row_number() over (order by enigme_id, planete_id) as index
	from guardien_annoncer_enigme_sur_planete
)
select
    gaesp.enigme_id,
    gaesp.planete_id,
    default_answers.answer
from 
    gaesp
join    
	default_answers on gaesp.index = default_answers.index;

delete from reponse_enigme
where 
	enigme_id in (42, 46, 49, 50, 51);


INSERT INTO reponse_enigme
(enigme_id, planete_id, reponse)
values
(
    51, 3997, 'Chaque ville a une unique clef, trouvez la bonne combinaison ....'
)