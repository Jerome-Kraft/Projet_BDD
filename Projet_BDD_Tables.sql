drop table emprunts;
drop table emprunteurs;
drop table exemplaires_livre;
drop table livres;
drop table editeurs;
drop table auteurs;
drop table sous_domaines;
drop table domaines;

create table domaines(
  id_domaine int,
  nom_domaine varchar(100) not null,
  constraint pk_domaine primary key (id_domaine)
);

create table sous_domaines(
  id_sous_domaine int,
  nom_sous_domaine varchar(100) not null,
  id_domaine int not null,
  constraint pk_sous_domaine primary key (id_sous_domaine),
  constraint fk_sous_domaine foreign key (id_domaine) references domaines(id_domaine)
);

create table auteurs(
  id_auteur int,
  nom_auteur varchar(100) not null,
  prenom_auteur varchar(100) not null,
  constraint pk_auteur primary key (id_auteur)
);

create table editeurs(
  id_editeur int,
  nom_editeur varchar(50) not null,
  constraint pk_editeur primary key (id_editeur)
);

create table exemplaires_livres(
  isbn varchar(50),
  numero_exemplaire int,
  constraint pk_exemplaires_livres primary key (isbn, numero_exemplaire)
);

create table livres(
  isbn varchar(50),
  annee_publication number not null,
  id_auteur1 int not null,
  id_auteur2 int,
  id_auteur3 int,
  titre varchar(200) not null,
  id_editeur int not null,
  id_sous_domaine int not null,
  constraint pk_livres primary key (isbn),
  constraint fk_auteurs1 foreign key (id_auteur1) references auteurs(id_auteur),
  constraint fk_auteurs2 foreign key (id_auteur2) references auteurs(id_auteur),
  constraint fk_auteurs3 foreign key (id_auteur3) references auteurs(id_auteur),
  constraint fk_editeurs1 foreign key (id_editeur) references editeurs(id_editeur),
  constraint fk_sous_domaines1 foreign key (id_sous_domaine) references sous_domaines(id_sous_domaine)
);

create table emprunteurs(
  id_emprunteur int,
  nom_emprunteur varchar(100) not null,
  prenom_emprunteur varchar(100) not null,
  id_employe int,
  constraint pk_emprunteurs primary key (id_emprunteur),
  constraint fk_employee foreign key (id_employe) references employees(employee_id)
);

create table emprunts(
  id_emprunt int,
  date_emprunt date not null,
  date_retour date,
  id_emprunteur int not null,
  isbn varchar(50) not null,
  numero_exemplaire int not null,
  constraint pk_emprunt primary key (id_emprunt),
  constraint fk_emprunteur foreign key (id_emprunteur) references emprunteurs(id_emprunteur),
  constraint fk_exemplaires_livres1 foreign key (isbn, numero_exemplaire) references exemplaires_livres(isbn, numero_exemplaire)
);

/* Création des utilisateurs (dans la base system) : */
create user administrateur identified by "administrateur";
create user invite;
create user enregistre;
create user oracle_enregistre;

/* Attribution des privilèges pour "administrateur" sur toutes les tables de Projet_BDD (dans la base Projet_BDD) : */
grant all on auteurs to administrateur;
grant all on domaines to administrateur;
grant all on editeurs to administrateur;
grant all on exemplaires_livres to administrateur;
grant all on emprunteurs to administrateur;
grant all on emprunts to administrateur;
grant all on livres to administrateur;
grant all on sous_domaines to administrateur;

/* Autorise les utilisateurs "invite" (sans compte) à uniquement consulter la base */
grant select on consultation to invite;

/* Autorise les utilisateurs "enregistre" (avec compte) à consulter la base et à emprunter (altérer la table "emprunts") */
grant select on consultation to enregistre;
grant update on emprunteurs, emprunts to enregistre;

/* Autorise les utilisateurs "oracle_enregistre" (employés Oracle avec compte) à consulter la base et à emprunter (altérer la table "emprunts") */
grant select on consultation_oracle_enregistre to oracle_enregistre;
grant update on emprunteurs, emprunts to oracle_enregistre;
