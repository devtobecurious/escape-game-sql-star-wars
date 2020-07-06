delete from piece;

CREATE SEQUENCE piece_sequence_1
  start 3000
  increment 1;

-- 3100/01/08
-- RAS


-- 3100/01/09
INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/09', '11:01:10', 'OK||XD15200', 2, 10);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/09', '11:01:10', 'OK||XD15201', 2, 11);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/09', '11:01:11', 'OK||YDFG58', 2, 11145);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/09', '11:01:12', 'OK||YDFG57', 2, 2210);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/09', '11:01:35', 'OK||OMPER5610', 2, 874520);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/09', '11:01:35', 'OK||PMPER5610', 2, 4871);


-- 3100/01/11
-- La 11 pose problème une fois
INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:04:10', 'OK||XD15200', 2, 10);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:04:10', 'NOK||XD15201', 2, 11); 

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:04:11', 'OK||YDFG58', 2, 11145);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:04:12', 'OK||YDFG57', 2, 2210);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:04:35', 'OK||OMPER5610', 2, 874520);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:04:35', 'OK||PMPER5610', 2, 4871);

-- 
INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:07:01', 'OK||XD15200', 2, 10);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:07:10', 'OK||XD15201', 2, 11); 

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:07:11', 'OK||YDFG58', 2, 11145);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:07:12', 'OK||YDFG57', 2, 2210);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:07:35', 'OK||OMPER5610', 2, 874520);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/11', '11:07:35', 'OK||PMPER5610', 2, 4871);


-- 3100/01/30 
-- 11 et 2210 sont en défaut
-- 4871 en warning
INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/30', '11:04:10', 'OK||XD15200', 2, 10);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/30', '11:04:10', 'NOK||XD15201', 2, 11);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/30', '11:04:11', 'OK||YDFG58', 2, 11145);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/30', '11:04:12', 'NOK||YDFG57', 2, 2210);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/30', '11:04:35', 'OK||OMPER5610', 2, 874520);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/09', '11:04:35', 'WARNING||PMPER5610', 2, 4871);

-- Seule la 10 plante => elle est importante, nécessaire !
INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/30', '11:04:10', 'NOK||XD15200', 2, 10);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/30', '18:32:30', 'NOK||XD15200', 2, 10);


-- 3100/01/31
-- 11 et 874520 en problème
-- 11145 en warning
INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:03:10', 'OK||XD15200', 2, 10);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:03:10', 'NOK||XD15201', 2, 11);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:03:11', 'WARNING||YDFG58', 2, 11145);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:03:12', 'OK||YDFG57', 2, 2210);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:03:35', 'NOK||OMPER5610', 2, 874520);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:03:35', 'OK||PMPER5610', 2, 4871);

-- 

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:07:10', 'OK||XD15200', 2, 10);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:07:10', 'OK||XD15201', 2, 11);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:07:11', 'WARNING||YDFG58', 2, 11145);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:07:12', 'OK||YDFG57', 2, 2210);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:07:35', 'WARNING||OMPER5610', 2, 874520);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/01/31', '11:07:35', 'OK||PMPER5610', 2, 4871);


-- 3100/03/30
-- 10 en warning
-- 11 et 874520 en problème
INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:04:10', 'WARNING||XD15200', 2, 10);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:04:10', 'NOK||XD15201', 2, 11);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:04:11', 'OK||YDFG58', 2, 11145);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:04:12', 'OK||YDFG57', 2, 2210);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:04:18', 'NOK||OMPER5610', 2, 874520);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:04:47', 'OK||PMPER5610', 2, 4871);

-- 
INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:11', 'WARNING||XD15200', 2, 10);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:11', 'WARNING||XD15201', 2, 11);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:12', 'WARNING||YDFG58', 2, 11145);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:13', 'WARNING||YDFG57', 2, 2210);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:18', 'WARNING||OMPER5610', 2, 874520);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:47', 'WARNING||PMPER5610', 2, 4871);

-- 
INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:49', 'NOK||YDFG58', 2, 11145);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:51', 'NOK||OMPER5610', 2, 874520);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:52', 'NOK||PMPER5610', 2, 4871);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:50', 'NOK||YDFG57', 2, 2210);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:48', 'NOK||XD15201', 2, 11);

INSERT INTO piece
(id, "date", heure, log, moteur_id, piece_id)
VALUES(nextval('piece_sequence_1'), '3100/03/30', '11:06:47', 'NOK||XD15200', 2, 10);


DROP SEQUENCE piece_sequence_1;