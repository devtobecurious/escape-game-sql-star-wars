delete from modele;

INSERT INTO modele
select 
	s.*,
 	CONCAT('PMP', trunc(random() * 5100000)::varchar)
from generate_series(1, 3000) s;

INSERT INTO modele
(id, libelle)
VALUES(3001, 'PMPER5610');

INSERT INTO modele
select 
	s.*, 
 	CONCAT('YDFG', trunc(random() * 5100000)::varchar)
from generate_series(3002, 4000) s;

INSERT INTO modele
(id, libelle)
VALUES(4001, 'YDFG58');

INSERT INTO modele
select 
	s.*,
 	CONCAT('OMPER', trunc(random() * 5100000)::varchar)
from generate_series(4002, 5000) s;

INSERT INTO modele
(id, libelle)
VALUES(5001, 'OMPER5610');

INSERT INTO modele
select 
	s.*,
 	CONCAT('PMPER', trunc(random() * 5100000)::varchar)
from generate_series(5002, 6000) s;

INSERT INTO modele
(id, libelle)
VALUES(6001, 'PMPER5610');

INSERT INTO modele
select 
	s.*,
 	CONCAT('YDFG57', trunc(random() * 5100000)::varchar)
from generate_series(6002, 7000) s;

INSERT INTO modele
(id, libelle)
VALUES(7001, 'YDFG57');

INSERT INTO modele
select 
	s.*,
 	CONCAT('XD', trunc(random() * 5100000)::varchar)
from generate_series(7002, 8000) s;

INSERT INTO modele
(id, libelle)
VALUES(8001, 'XD15201');

INSERT INTO modele
select 
	s.*,
 	CONCAT('XD', trunc(random() * 5100000)::varchar)
from generate_series(8002, 9000) s;

INSERT INTO modele
(id, libelle)
VALUES(9001, 'XD15200');
