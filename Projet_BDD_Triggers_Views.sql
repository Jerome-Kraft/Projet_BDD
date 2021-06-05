/* Limiter le nombre de livres empruntés à 3 pour chaque employé Oracle
+ Employés Oracle comme emprunteurs : */
CREATE OR REPLACE TRIGGER limite_emprunt_employe
BEFORE INSERT ON emprunteurs

DECLARE
employe employees.employee_id%type;
nbre emprunteurs.nombre_emprunt%type;

BEGIN
    IF employe is not null and nbre = 3 THEN
    dbms_output.put_line('Cet emprunteur a déjà emprunté le maximum douvrages possible !');
    END IF;
END;
/

/* Limiter le délai d'emprunt à 1 mois pour 1 livre */
CREATE OR REPLACE TRIGGER limite_delai_emprunt
AFTER INSERT ON emprunts

DECLARE
date1 emprunts.date_emprunt%type;
date2 emprunts.date_retour%type;

BEGIN
    date2 := date1 + 30;
END;
/

/* Empêcher l'emprunt de plus d'1 exemplaire d'un même livre par un même emprunteur */
CREATE OR REPLACE TRIGGER limite_emprunt_exemplaire_livre
BEFORE INSERT ON emprunts
FOR EACH ROW

DECLARE
exemplaire livres.id_livre%type;
emprunteur_livre emprunts.id_emprunteur%type;
deja_emprunte emprunts.id_livre%type;

BEGIN
    SELECT t.id_livre INTO deja_emprunte
    FROM emprunteurs e, emprunts t
    WHERE e.id_emprunteur = emprunteur_livre;

    IF deja_emprunte = exemplaire THEN
    RAISE_APPLICATION_ERROR(-20001,'Livre déjà emprunté par cet emprunteur !');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
    deja_emprunte := NULL;
END;
/

/* Empêcher emprunt livres domaine Spiritualité par employés Oracle */
create or replace TRIGGER "HR"."INTERDICTION_EMPRUNT_SPIRITUALITE" 
BEFORE INSERT 
    ON emprunts
    FOR EACH ROW

DECLARE
domaine1 domaines.id_domaine%type;
employe emprunteurs.id_employe%type;

BEGIN
    select ID_DOMAINE into domaine1 FROM livres where id_livre = :new.id_livre;
    select id_employe into employe FROM emprunteurs where :new.id_emprunteur = id_emprunteur;
    IF domaine1 = 3 and employe is not null THEN 
    raise_application_error(-20001, 'Les employés de la société Oracle ne peuvent pas emprunter de livres traitant de spiritualité', True);
    END IF;
END;

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
AS SELECT el.editeur, l.*, sd.nom_sous_domaine, d.nom_domaine
FROM livres l, edition_livre el, sous_domaines sd, domaines d
WHERE l.isbn = el.isbn AND sd.id_sous_domaine = l.id_sous_domaine AND d.id_domaine = l.id_domaine
ORDER BY l.id_livre;

/* Créer une vue pour les user "invite" qui ne fait que l'affichage des noms et prénoms de l'auteur, le titre,
le nombre d'exemplair, l'année de publication, l'éditeur et nom du domaine et sous-domaine */
CREATE view consultation 
AS SELECT a.nom_auteur, a.prenom_auteur, l.titre, l.nombre_exemplaire, ed.annee_publication, ed.editeur,
d.nom_domaine, sd.nom_sous_domaine
FROM auteurs a, livres l, edition_livre ed, domaines d, sous_domaines sd
WHERE l.id_auteur = a.id_auteur AND l.isbn = ed.isbn AND l.id_domaine = d.id_domaine AND l.id_sous_domaine = sd.id_sous_domaine;

