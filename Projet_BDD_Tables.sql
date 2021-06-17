drop table if exists domaines;
drop table if exists sous_domaines;
drop table if exists auteurs;
drop table if exists editeurs;
drop table if exists livres;
drop table if exists exemplaires_livre;
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

create table editeurs(
  id_editeur int,
  nom_editeur varchar(50),
  constraint pk_editeur primary key (id_editeur)
);

create table livres(
  isbn int,
  annee_publication date,
  id_auteur1 int,
  id_auteur2 int,
  id_auteur3 int,
  titre varchar(100),
  id_editeur int,
  id_sous_domaine int,
  constraint pk_livres primary key (isbn),
  constraint fk_auteurs1 foreign key (id_auteur1) references auteurs(id_auteur),
  constraint fk_auteurs2 foreign key (id_auteur2) references auteurs(id_auteur),
  constraint fk_auteurs3 foreign key (id_auteur3) references auteurs(id_auteur),
  constraint fk_editeurs1 foreign key (id_editeur) references editeurs(id_editeur),
  constraint fk_sous_domaines1 foreign key (id_sous_domaine) references sous_domaines(id_sous_domaine)
);

create table exemplaires_livres(
  isbn int,
  numero_exemplaire int,
  constraint pk_exemplaires_livres primary key (isbn, numero_exemplaire)
);

create table emprunteurs(
  id_emprunteur int,
  nom_emprunteur varchar(100),
  prenom_emprunteur varchar(100),
  id_employe int,
  constraint pk_emprunteurs primary key (id_emprunteur),
  constraint fk_employee foreign key (id_employe) references employees(employee_id)
);

create table emprunts(
  id_emprunt int,
  date_emprunt date,
  date_retour date,
  id_emprunteur int,
  isbn int,
  numero_exemplaire int,
  constraint pk_emprunt primary key (id_emprunt),
  constraint fk_emprunteur foreign key (id_emprunteur) references emprunteurs(id_emprunteur),
  constraint fk_exemplaires_livres foreign key (isbn, numero_exemplaire) references exemplaires_livres(isbn, numero_exemplaire)
);

/* Création des utilisateurs (dans la base system) : */
create user administrateur identified by "administrateur";
create user invite;
create user enregistre;
create user oracle_enregistre;

/* Attribution des privilèges pour "administrateur" sur toutes les tables de Projet_BDD (dans la base Projet_BDD) : */
grant all on auteurs to administrateur;
grant all on domaines to administrateur;
grant all on edition_livre to administrateur;
grant all on employees to administrateur;
grant all on emprunteurs to administrateur;
grant all on emprunts to administrateur;
grant all on livres to administrateur;
grant all on sous_domaines to administrateur;

/* Autorise les utilisateurs "invite" (sans compte) à uniquement consulter la base */
grant select on consultation to invite;

/* Autorise les utilisateurs "enregistre" (avec compte) à consulter la base, à s'enregistrer (altérer la table
 "emprunteurs") et à emprunter (altérer la table "emprunts") */
grant select on consultation to enregistre;
grant update on emprunteurs, emprunts to enregistre;

/* Autorise les utilisateurs "oracle_enregistre" (employés Oracle avec compte) à consulter la base, à s'enregistrer 
(altérer la table "emprunteurs") et à emprunter (altérer la table "emprunts") */
grant select on consultation_oracle_enregistre to oracle_enregistre;
grant update on emprunteurs, emprunts to oracle_enregistre;