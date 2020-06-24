delete from logs_vaisseau
where message like 'LANDING%';

CREATE SEQUENCE logs_sequence_2
  start 3000
  increment 1;

select 
    nextval('logs_sequence_2'), 
    TO_DATE( CONCAT((-1000 + nextval('logs_sequence_2')), '0101'), 'YYYYMMDD' ),
    '01:00',
    vaisseau.id,
    CONCAT('LANDING', '-', '3') -- CORUSCANT
from 
    vaisseau;
   

    

INSERT INTO logs_vaisseau 
(id, "date", heure, vaisseau_id, message)
values
(
	nextval('logs_sequence_2'),
	'3000/05/01',
	'18:00',
	4,
	CONCAT('LANDING', '-', '3962', '-', '12') -- Arvina, propriétaire 12
);

INSERT INTO logs_vaisseau 
(id, "date", heure, vaisseau_id, message)
values
(
	nextval('logs_sequence_2'),
	'3000/06/01',
	'16:00',
	4,
	CONCAT('LANDING', '-', '3962', '-', '12') -- Arvina, propriétaire 12
);

INSERT INTO logs_vaisseau 
(id, "date", heure, vaisseau_id, message)
values
(
	nextval('logs_sequence_2'),
	'3000/07/16',
	'15:42',
	4,
	CONCAT('LANDING', '-', '3962', '-', '20') -- Arvina, propriétaire Lando
);

INSERT INTO logs_vaisseau 
(id, "date", heure, vaisseau_id, message)
values
(
	nextval('logs_sequence_2'),
	'3000/08/15',
	'07:00',
	4,
	CONCAT('LANDING', '-', '3962', '-', '12') -- Arvina, propriétaire 12
);



INSERT INTO logs_vaisseau 
(id, "date", heure, vaisseau_id, message)
values
(
	nextval('logs_sequence_2'),
	'3001/02/04',
	'07:00',
	4,
	CONCAT('LANDING', '-', '4001', '-', '12') -- Bellassa, propriétaire 12
);



DROP SEQUENCE logs_sequence_2;
