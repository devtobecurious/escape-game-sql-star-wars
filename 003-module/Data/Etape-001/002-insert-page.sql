delete from page;

CREATE SEQUENCE page_sequence_1
  start 1
  increment 1;


INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 4, 'Le Faucon Millenium est un cargo corellien de type YT-13006. Ce modèle était très populaire à la fin de la République galactique. Avec ses 34 mètres de longueur, 20 mètres d''envergure et sa capacité de 100 tonnes de fret. Son équipage maximal est de 6 personnes (2 pilotes, 2 navigateurs et 2 canonniers).');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 3, 'L''ordinateur de bord permet de suivre toutes les démarrages et arrêts du vaisseau. Il permet d''avoir une vision d''ensemble du moteur des des pièces du moteur, et de leurs états de fonctionnement');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 3, 'A noter : l''ordinateur de bord est très sensible, au moindre problème il peut s''arrêter.');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 1, 'Le moteur est couplé à un système hyperdrive. Il atteint les 105 MGLT, et 1 200 km/h. Son hyperpropulsion de classe 0.5.');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 1, 'Plusieurs pièces sont essentielles dans le moteur. Si certaines tombent en pannes, le moteur ne peut plus redémarrer.');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 1, 'Les pièces essentielles sont : le modèle XD15200, le modèle XD15201 et le modèle YDFG57.');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 2, 'Modèle YDFG58 : ');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 2, 'Modèle OMPER5610 : Système de contrôle de l''hyperdrive. Permet de vérifier les fuites de combustion et de condensat énergétique. ');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 2, 'Modèle PMPER5610 : Système d''accélération atmosphérique');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 2, 'Modèle YDFG57 : Un des trois noeuds de l''hyperpropulsion');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 2, 'Modèle XD15201 : Un des trois noeuds de l''hyperpropulsion');

INSERT INTO page
(id, manuel_bord_id, categorie_id, "content")
VALUES(nextval('page_sequence_1'), 1, 2, 'Modèle XD15200 : Un des trois noeuds de l''hyperpropulsion');

DROP SEQUENCE page_sequence_1;
