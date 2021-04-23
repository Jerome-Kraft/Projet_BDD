insert into domaines values (0, 'Science-fiction');
insert into domaines values (1, 'informatique');
insert into domaines values (2, 'Finance');
insert into domaines values (3, 'Spiritualité');
insert into domaines values (4, 'Gestion');
insert into domaines values (5, 'Art');

insert into sous_domaines values (0, 'Magie', 0);
insert into sous_domaines values (1, 'Space Opera', 0);
insert into sous_domaines values (2, 'Programmation', 1);
insert into sous_domaines values (3, 'Base de données', 1);
insert into sous_domaines values (4, 'Soi intérieur', 3);
insert into sous_domaines values (5, 'Religion', 3);
insert into sous_domaines values (6, 'Business', 2);

insert into auteurs values (0, 'ROWLING', 'Joanne Kathleen');
insert into auteurs values (1, 'SMITH', 'Will');
insert into auteurs values (2, 'KIYOSAKI', 'Robert');
insert into auteurs values (3, 'RUIZ', 'Miguel');

insert into edition_livre values (0, 2007, 'Gallimard');
insert into edition_livre values (1, 2007, 'Livre de poche');
insert into edition_livre values (2, 2017, 'Un monde different');
insert into edition_livre values (3, 2018, 'Jouvence');

insert into livres values (0, 0, 'Harry Potter et Les Reliques de la mort', 10, 1, 0, 0);
insert into livres values (1, 1, 'Bad Boys 3', 5, 1, 0, 1);
insert into livres values (2, 2, 'Pere riche pere pauvre', 5, 2, 2, 6);
insert into livres values (3, 3, 'Les quatre accords toltèques', 5, 3, 3, 4);
insert into livres values (4, 1, 'Bad Boys 3', 2, 1, 0, 1);
