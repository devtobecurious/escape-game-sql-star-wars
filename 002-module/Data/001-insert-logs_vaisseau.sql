

CREATE SEQUENCE logs_sequence_2
  start 3000
  increment 1;

INSERT INTO logs_vaisseau 
(id, "date", heure, vaisseau_id, message)
select 
    nextval('logs_sequence_2'), 
    TO_DATE( CONCAT((-1000 + nextval('logs_sequence_2')), '0101'), 'YYYYMMDD' ),
    '01:00',
    vaisseau.id,
    CONCAT('LANDING', '-', '3') -- CORUSCANT
from 
    vaisseau;
   
DROP SEQUENCE logs_sequence_2;
    
    