delete from enigme;

INSERT INTO enigme
(id, libelle, date_actif, date_fin_actif)
VALUES(10, 'Avant-hier, Catherine avait 17 ans ; l''année prochaine, elle aura 20 ans. Comment est-ce possible ?', '1000/02/01', NULL);

INSERT INTO enigme
(id, libelle, date_actif, date_fin_actif)
VALUES(20, 'si 1 est égal à 5, 2 est égal à 25, 3 à 605, 4 à 10855, 5 est égal a quoi?', '1010/05/12', NULL);

INSERT INTO enigme
(id, libelle, date_actif, date_fin_actif)
VALUES(30, '1 1 2 3 5 3 8 1, trouvez le nombre qui suit', '1510/10/12', NULL);

INSERT INTO enigme
(id, libelle, date_actif, date_fin_actif)
VALUES(40, 'Quand je suis blanc, je suis sale et quand je suis noir, je suis propre. Qui suis-je ?', '1710/09/02', NULL);

-- 3 énigmes ok
INSERT INTO enigme
(id, libelle, date_actif, date_fin_actif)
VALUES(42, 'La somme de l''année d''éveil de nos anciens actifs est la première clef', '1710/08/12', NULL);

INSERT INTO enigme
(id, libelle, date_actif, date_fin_actif)
VALUES(44, '1 + 2 n''est pas égal à 3, à combien ?', '1709/08/12', '1709/09/01');

INSERT INTO enigme
(id, libelle, date_actif, date_fin_actif)
VALUES(46, 'Quel est le propriétaire qui a le plus de vaisseau ? Son âge est la seconde clef', '1710/08/13', NULL);
-- TODO: Ajouter un vaisseau à un propriétaire et une date de naissance

-- Enigme bonne mais appartenant à un gardien mort, donc invalide
INSERT INTO enigme
(id, libelle, date_actif, date_fin_actif)
VALUES(50, 'Une brique pèse 1 kg plus une demi-brique. Combien pèse une brique ?', '1810/12/12', NULL);

-- Autre 
INSERT INTO enigme
(id, libelle, date_actif, date_fin_actif)
VALUES(60, 'Quel est le livre qui est écrit avec seulement quatre lettres ?', '1811/11/27', NULL);


