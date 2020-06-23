delete from proprietaire_acquerir_vaisseau;

CREATE TEMPORARY TABLE days (day INT);

INSERT INTO days
VALUES(1);

INSERT INTO days
VALUES(2);

INSERT INTO days
VALUES(3);

INSERT INTO days
VALUES(4);

INSERT INTO days
VALUES(5);

INSERT INTO days
VALUES(6);

INSERT INTO days
VALUES(8);

INSERT INTO days
VALUES(9);


INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
select 
proprietaire.id, proprietaire.utilisateur_id, vaisseau.id, TO_DATE(CONCAT('300004', day), 'YYYYMMDD'), CONCAT(vaisseau.nom, day)
from 
proprietaire,
vaisseau,
days;

drop table days;


delete from proprietaire_acquerir_vaisseau
where proprietaire_id = 1;

INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    18, 1686,
    2,
    '3001/04/01',
    'Falcon'
);

INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    18, 1686,
    2,
    '3001/04/02',
    'Falcon !'
);

INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    18, 1686,
    2,
    '3001/10/02',
    'Falcon star'
);

-- Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    3,
    '3010/03/10',
    'Mille'
);

-- Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    3,
    '3012/01/01',
    'Takodona'
);

-- Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    3,
    '3012/01/02',
    'Takodona'
);

-- Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    3,
    '3013/10/08',
    'YT 1300 F8'
);

-- Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    3,
    '3013/12/08',
    'Faucon Millénium'
);



-- Pas Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    4,
    '3010/03/10',
    'Mille'
);

-- Pas Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    4,
    '3012/01/01',
    'Takodona'
);

-- Pas Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    4,
    '3012/01/02',
    'Takodona'
);

-- Pas Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    4,
    '3013/10/08',
    'Faucon milenium'
);

-- Pas Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    13, 1681,
    4,
    '3013/12/08',
    'YT 1300 49'
);

-- Faucon millenium
INSERT INTO proprietaire_acquerir_vaisseau
(proprietaire_id, utilisateur_id, vaisseau_id, date_acquisition, nom_vaisseau)
VALUES
(
    1, 1639,
    3,
    '3014/01/15',
    '492727ÉPI'
);

