/* Limiter le nombre de livres empruntés à 3 pour chaque employé Oracle + Employés Oracle comme emprunteurs : */
CREATE OR REPLACE TRIGGER limite_emprunt_employe
BEFORE INSERT ON emprunts
FOR EACH ROW

DECLARE
employe emprunteurs.id_employe%type;
nbre int;

BEGIN
    SELECT id_employe INTO employe FROM emprunteurs e WHERE :new.id_emprunteur = e.id_emprunteur;
    SELECT COUNT(*) INTO nbre FROM emprunts e WHERE :new.id_emprunteur = e.id_emprunteur AND e.date_retour IS NULL;

    IF employe IS NOT NULL AND nbre >= 3 THEN
    raise_application_error(-20007, 'Les employés de la société Oracle ne peuvent pas emprunter plus de 3 livres.', True);
    END IF;
END;

/* Empêcher l'emprunt de plus d'1 exemplaire d'un même livre par un même emprunteur */
CREATE OR REPLACE TRIGGER limite_emprunt_exemplaire_livre
BEFORE INSERT ON emprunts
FOR EACH ROW

DECLARE
nbre_livres int;

BEGIN
    SELECT COUNT (*) INTO nbre_livres
    FROM
        (SELECT isbn FROM emprunts 
        WHERE id_emprunteur = :new.id_emprunteur and isbn = :new.isbn);

    IF (nbre_livres != 0) THEN
            raise_application_error(-20001,'Livre déjà emprunté.');
    END IF;
END;

/* Empêcher emprunt livres domaine Spiritualité par employés Oracle */
CREATE OR REPLACE TRIGGER interdiction_emprunt_spiritualite
BEFORE INSERT ON emprunts
FOR EACH ROW

DECLARE
s_domaine sous_domaines.id_domaine%type;
domaine domaines.id_domaine%type;
employe emprunteurs.id_employe%type;

BEGIN
    SELECT id_sous_domaine INTO s_domaine FROM livres WHERE livres.isbn = :new.isbn;
    SELECT id_domaine INTO domaine FROM sous_domaines WHERE s_domaine = sous_domaines.id_sous_domaine;
    SELECT id_employe INTO employe FROM emprunteurs WHERE :new.id_emprunteur = id_emprunteur;
    IF domaine = 300 AND employe IS NOT NULL THEN
      raise_application_error(-20001, 'Les employés de la société Oracle ne peuvent pas emprunter de livres traitant de spiritualité.', True);
    END IF;
END;

/* Limiter le délai d'emprunt à 1 mois pour un livre */
CREATE OR REPLACE TRIGGER limite_delai_emprunt
BEFORE INSERT ON emprunts
FOR EACH ROW

DECLARE
date_lmt emprunts.date_retour%type;

BEGIN         
    FOR c IN (SELECT date_retour INTO date_lmt FROM emprunts WHERE :new.id_emprunteur = emprunts.id_emprunteur)
    LOOP
    IF c.date_retour <= sysdate  THEN
        raise_application_error(-20003,'Emprunt impossible car le délai de retour est dépassé pour un emprunt en cours.');
    END IF;
    END LOOP;
END;

/* Vue listant les emprunts en retard */
CREATE OR REPLACE VIEW retard_emprunt
AS SELECT t.*, e.nom_emprunteur, e.prenom_emprunteur
FROM emprunteurs e, emprunts t
WHERE date_retour is null AND sysdate > date_emprunt+30 AND t.id_emprunteur = e.id_emprunteur;

/* Vue listant tous les emprunts en cours (données essentielles de chaque livre, données essentielles de chaque emprunteur, date d'emprunt, date de retour prévue) */
CREATE OR REPLACE VIEW liste_emprunts_en_cours
AS SELECT e.id_emprunteur, e.nom_emprunteur, e.prenom_emprunteur, t.id_emprunt, t.date_emprunt, l.titre, a.nom_auteur, a.prenom_auteur, l.annee_publication, l.id_sous_domaine, l.isbn, ed.nom_editeur, t.numero_exemplaire
FROM livres l, auteurs a, editeurs ed, emprunteurs e, emprunts t
WHERE t.date_retour is null AND l.isbn = t.isbn AND l.id_auteur1 = a.id_auteur AND l.id_editeur = ed.id_editeur AND e.id_emprunteur = t.id_emprunteur;

/* Vue (pour l'administrateur) affichant tout les emprunts */
CREATE OR REPLACE VIEW liste_emprunts
AS SELECT *
FROM emprunts;

/* Vue (pour l'administrateur) affichant l'historique des emprunts passés pour un ou plusieurs emprunteurs */
CREATE OR REPLACE VIEW historique_emprunt_passe
AS SELECT e.id_emprunt, e.date_emprunt, e.date_retour, e.id_emprunteur, e.isbn, e.numero_exemplaire
FROM emprunts e
WHERE  e.date_retour is not null;

/* Vue (pour l'administrateur) affichant les différents noms de domaines */
CREATE OR REPLACE VIEW detail_domaines
AS SELECT *
FROM domaines;

/* Vue (pour l'administrateur) affichant les différents noms de sous-domaines */
CREATE OR REPLACE VIEW detail_sous_domaines
AS SELECT *
FROM sous_domaines;

/* Vue (pour l'administrateur) affichant les différents éditeurs */
CREATE OR REPLACE VIEW detail_editeurs
AS SELECT *
FROM editeurs;

/* Vue (pour l'administrateur) affichant les différents auteurs */
CREATE OR REPLACE VIEW detail_auteur
AS SELECT *
FROM auteurs;

/* Vue (pour les utilisateurs invités ou enregistrés) affichant l'auteur (nom et prénom), le titre du livre, l'année de publication, l'éditeur, les noms du domaine et du sous-domaine */
CREATE OR REPLACE VIEW consultation
AS SELECT a.nom_auteur, a.prenom_auteur, l.titre, l.annee_publication, ed.nom_editeur, d.nom_domaine, sd.nom_sous_domaine
FROM auteurs a, livres l, editeurs ed, domaines d, sous_domaines sd
WHERE l.id_auteur1 = a.id_auteur AND l.id_editeur = ed.id_editeur AND sd.id_domaine = d.id_domaine AND l.id_sous_domaine = sd.id_sous_domaine;

/* Vue (pour les employés Oracle) affichant l'auteur (nom et prénom), le titre du livre, l'année de publication, l'éditeur et nom du domaine et sous-domaine, mais n'affiche pas les ouvrages du domaine 300 (Spiritualité) */
CREATE OR REPLACE VIEW consultation_oracle_enregistre
AS SELECT a.nom_auteur, a.prenom_auteur, l.titre, l.annee_publication, ed.nom_editeur, d.nom_domaine, sd.nom_sous_domaine
FROM auteurs a, livres l, editeurs ed, domaines d, sous_domaines sd
WHERE l.id_auteur1 = a.id_auteur AND l.id_editeur = ed.id_editeur AND sd.id_domaine = d.id_domaine AND l.id_sous_domaine = sd.id_sous_domaine AND (sd.id_domaine != 300);