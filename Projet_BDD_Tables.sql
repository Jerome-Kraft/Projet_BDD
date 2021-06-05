drop table if exists domaines;
drop table if exists sous_domaines;
drop table if exists auteurs;
drop table if exists edition_livre;
drop table if exists livres;
drop table if exists emprunteurs;
drop table if exists emprunts;

create table domaines(
  id_domaine int,
  nom_domaine varchar(100),
  constraint pk_domaine primary key (id_domaine)
);

create table sous_domaines(
  id_sous_domaine int,
  nom_sous_domaine varchar(100),
  id_domaine int,
  constraint pk_sous_domaine primary key (id_sous_domaine),
  constraint fk_sous_domaine foreign key (id_domaine) references domaines(id_domaine)
);

create table auteurs(
  id_auteur int,
  nom_auteur varchar(100),
  prenom_auteur varchar(100),
  constraint pk_auteur primary key (id_auteur)
);

create table edition_livre(
  isbn int,
  annee_publication int,
  editeur varchar(50),
  constraint pk_edition_livre primary key (isbn)
);

create table livres(
  id_livre int,
  id_auteur int,
  id_auteur2 int,
  id_auteur3 int,
  titre varchar(100),
  nombre_exemplaire int,
  isbn int,
  id_domaine int,
  id_sous_domaine int,
  constraint pk_livres primary key (id_livre),
  constraint fk_auteur1 foreign key (id_auteur) references auteurs(id_auteur),
  constraint fk_edition_livre1 foreign key (isbn) references edition_livre(isbn),
  constraint fk_domaine1 foreign key (id_domaine) references domaines(id_domaine),
  constraint fk_sous_domaine1 foreign key (id_sous_domaine) references sous_domaines(id_sous_domaine)
);

create table emprunteurs(
    id_emprunteur int,
    nom_emprunteur varchar(100),
    prenom_emprunteur varchar(100),
    nombre_emprunt int,
    id_employe int,
    constraint pk_emprunteurs primary key (id_emprunteur),
    constraint fk_employee foreign key (id_employe) references employees(employee_id)
);

create table emprunts(
  id_emprunt int,
  date_emprunt date,
  date_retour date,
  id_emprunteur int,
  id_livre int,
  constraint pk_emprunt primary key (id_emprunt),
  constraint fk_emprunteur foreign key (id_emprunteur) references emprunteurs(id_emprunteur),
  constraint fk_livre foreign key (id_livre) references livres(id_livre)
);

/*
create table utilisateurs(
  id_utilisateur int,
  id_emprunteur int,
  nom_utilisateur varchar(100),
  prenom_utilisateur varchar(100),
  constraint pk_utilisateurs primary key (id_utilisateur),
  constraint fk_emprunteur foreign key (id_emprunteur) references emprunteurs(id_emprunteur),
  constraint fk_nom_empr foreign key (nom_utilisateur) references emprunteurs(nom_emprunteur),
  constraint fk_prenom_empr foreign key (prenom_utilisateur) references emprunteurs(prenom_emprunteur)
);
*/

/* Création des utilisateurs (dans la base system) : */
create user administrateur identified by "administrateur";

/* Attribution des privilèges pour "administrateur" sur toutes les tables de Projet_BDD (dans la base Projet_BDD) : */
grant all on auteurs to administrateur;
grant all on domaines to administrateur;
grant all on edition_livre to administrateur;
grant all on employees to administrateur;
grant all on emprunteurs to administrateur;
grant all on emprunts to administrateur;
grant all on livres to administrateur;
grant all on sous_domaines to administrateur;

/* pour la suite : créer un trigger qui attribue automatiquement des privilèges de connexion aux nouveaux utilisateurs créés
 - privilèges sur les objets (tables) :
      - select 
CREATE OR REPLACE TRIGGER donner_privilèges_nveaux _utilisateurs
AFTER INSERT ON emprunteurs

BEGIN


END;
/
*/
