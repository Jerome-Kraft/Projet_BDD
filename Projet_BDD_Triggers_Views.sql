/* => VERIFIE */  /* Limiter le nombre de livres empruntés à 3 pour chaque employé Oracle
+ Employés Oracle comme emprunteurs : */
CREATE OR REPLACE TRIGGER limite_emprunt_employe
BEFORE INSERT
    ON emprunts
    FOR EACH ROW

DECLARE
employe emprunteurs.id_employe%type;
nbre int;

BEGIN
    SELECT id_employe INTO employe FROM emprunteurs e WHERE :new.id_emprunteur = e.id_emprunteur;
    SELECT nombre_emprunt INTO nbre FROM emprunteurs e WHERE :new.id_emprunteur = e.id_emprunteur;
    IF employe IS NOT NULL AND nbre >= 3 THEN
      raise_application_error(-20007, 'Les employés de la société Oracle ne peuvent pas emprunter plus de 3 livres', True);
    END IF;
END;

/* => VERIFIE */  /* Rafraichit le nombre d'emprunts d'un emprunteur */
CREATE OR REPLACE trigger refresh_emprunt
BEFORE INSERT
    ON emprunts
    FOR EACH ROW

BEGIN
    UPDATE emprunteurs SET nombre_emprunt = nombre_emprunt+1 WHERE :new.id_emprunteur = emprunteurs.id_emprunteur;
END;

/* => VERIFIE */   /* Empêcher l'emprunt de plus d'1 exemplaire d'un même livre par un même emprunteur */
CREATE OR REPLACE TRIGGER limite_emprunt_exemplaire_livre
BEFORE INSERT ON emprunts
FOR EACH ROW

DECLARE
nbre_livres int;

BEGIN
    SELECT COUNT (*) INTO nbre_livres
    FROM
        (SELECT id_livre FROM EMPRUNTS WHERE id_emprunteur = :new.id_emprunteur
        INTERSECT
        SELECT id_livre FROM EMPRUNTS WHERE ID_Livre = :new.ID_Livre);

    IF (nbre_livres != 0) THEN
            RAISE_APPLICATION_ERROR(-20001,'Livre déjà emprunté.');
    END IF;
END;

/* => VERIFIE */   /* Empêcher emprunt livres domaine Spiritualité par employés Oracle */
CREATE OR REPLACE TRIGGER interdiction_emprunt_spiritualite
BEFORE INSERT
    ON emprunts
    FOR EACH ROW

DECLARE
domaine1 domaines.id_domaine%type;
employe emprunteurs.id_employe%type;

BEGIN
    SELECT ID_DOMAINE INTO domaine1 FROM livres WHERE id_livre = :new.id_livre;
    SELECT id_employe INTO employe FROM emprunteurs WHERE :new.id_emprunteur = id_emprunteur;
    IF domaine1 = 3 AND employe IS NOT NULL THEN
      raise_application_error(-20001, 'Les employés de la société Oracle ne peuvent pas emprunter de livres traitant de spiritualité', True);
    END IF;
END;

/* => VERIFIE et INUTILE */  /* Limiter le délai d'emprunt à 1 mois pour 1 livre
CREATE OR REPLACE TRIGGER limite_delai_emprunt
AFTER INSERT ON emprunts

DECLARE
date1 emprunts.date_emprunt%type;
date2 emprunts.date_retour%type;

BEGIN
    date2 := date1 + 30;
END;
*/

/* Vues : liste de tous les emprunts en cours (données essentielles de chaque livre,
données essentielles de chaque emprunteur, date d'emprunt, date de retour prévue) */
CREATE OR REPLACE VIEW liste_emprunts_en_cours
AS SELECT l.id_livre, l.id_auteur, l.titre, a.nom_auteur, a.prenom_auteur, el.isbn, el.annee_publication,
l.id_sous_domaine, l.id_domaine, e.id_emprunteur, e.nom_emprunteur, e.prenom_emprunteur, t.id_emprunt,
t.date_emprunt, t.date_retour
FROM livres l, auteurs a, edition_livre el, emprunteurs e, emprunts t
WHERE t.date_retour > SYSDATE AND l.id_livre = t.id_livre AND l.id_auteur = a.id_auteur AND l.isbn = el.isbn
AND t.id_emprunteur = e.id_emprunteur ;

/* Vues : emprunts en retard */
CREATE OR REPLACE VIEW retard_emprunt
AS SELECT t.*, e.nom_emprunteur, e.prenom_emprunteur
FROM emprunteurs e, emprunts t
WHERE date_retour < SYSDATE AND t.id_emprunteur = e.id_emprunteur;

/* Autre possibilité :
CREATE OR REPLACE VIEW retard_emprunt AS SELECT * FROM emprunts
WHERE date_retour < SYSDATE ;
*/

/* Vues : détail des livres par catégorie, édition, auteur et nombre d'exemplaires */
CREATE OR REPLACE VIEW detail_categories
AS SELECT a.nom_auteur, a.prenom_auteur, l.titre, l.nombre_exemplaire, l.isbn, el.editeur, sd.nom_sous_domaine, d.nom_domaine
FROM livres l, auteurs a, edition_livre el, sous_domaines sd, domaines d
WHERE l.isbn = el.isbn AND sd.id_sous_domaine = l.id_sous_domaine AND d.id_domaine = l.id_domaine AND l.id_auteur = a.id_auteur
ORDER BY l.id_livre;

/* Vue (pour les utilisateurs invités ou enregistrés) qui affiche l'auteur (nom et prénom), le titre du livre, le nombre d'exemplaires,
 l'année de publication, l'éditeur et nom du domaine et sous-domaine */
CREATE VIEW consultation
AS SELECT a.nom_auteur, a.prenom_auteur, l.titre, l.nombre_exemplaire, ed.annee_publication, ed.editeur,
d.nom_domaine, sd.nom_sous_domaine
FROM auteurs a, livres l, edition_livre ed, domaines d, sous_domaines sd
WHERE l.id_auteur = a.id_auteur AND l.isbn = ed.isbn AND l.id_domaine = d.id_domaine AND l.id_sous_domaine = sd.id_sous_domaine;

ALTER VIEW consultation COMPILE;

/* Vue (pour les employés Oracle) qui affiche l'auteur (nom et prénom), le titre du livre, le nombre d'exemplaires,
 l'année de publication, l'éditeur et nom du domaine et sous-domaine, mais n'affiche pas les ouvrages du domaine 3 */
CREATE VIEW consultation_oracle_enregistre
AS SELECT a.nom_auteur, a.prenom_auteur, l.titre, l.nombre_exemplaire, ed.annee_publication, ed.editeur,
d.nom_domaine, sd.nom_sous_domaine
FROM auteurs a, livres l, edition_livre ed, domaines d, sous_domaines sd
WHERE l.id_auteur = a.id_auteur AND l.isbn = ed.isbn AND l.id_domaine = d.id_domaine AND l.id_sous_domaine = sd.id_sous_domaine
AND l.id_domaine != 3;

ALTER VIEW consultation_oracle_enregistre COMPILE;
