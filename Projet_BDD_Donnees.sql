insert into domaines values (000, 'Science-fiction');
insert into domaines values (100, 'Informatique');
insert into domaines values (200, 'Finance');
insert into domaines values (300, 'Spiritualité');
insert into domaines values (400, 'Gestion');
insert into domaines values (500, 'Art');
insert into domaines values (600, 'Sciences Humaines');

insert into sous_domaines values (001, 'Voyages dans le temps', 000);
insert into sous_domaines values (002, 'Uchronie', 000);
insert into sous_domaines values (003, 'Cyberpunk', 000);
insert into sous_domaines values (004, 'Space Opera', 000);
insert into sous_domaines values (005, 'Space fantasy', 000);
insert into sous_domaines values (006, 'Science-fiction post-apocalyptique', 000);

insert into sous_domaines values (101, 'Programmation', 100);
insert into sous_domaines values (102, 'Développement web', 100);
insert into sous_domaines values (103, 'Base de données', 100);
insert into sous_domaines values (104, 'Algorithmique', 100);
insert into sous_domaines values (105, 'Cryptologie', 100);
insert into sous_domaines values (106, ' Logiciels', 100);
insert into sous_domaines values (107, "Systèmes d'information", 100);
insert into sous_domaines values (108, ' Matériel informatique', 100);

insert into sous_domaines values (20, 'Business', 2);

insert into sous_domaines values (30, 'Soi intérieur', 3);
insert into sous_domaines values (31, 'Religion', 3);
insert into sous_domaines values (32, 'Magie', 0);

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

/* INSERT INTO `livres` (`id`, `titre`, `nom_auteur`, `prenom_auteur`, `editeur`, `collection`) VALUES
(1, 'Sur la route', 'Kerouac', 'Jack', 'Gallimard', 'Folio'),
(2, 'Le Talisman des territoires', 'King', 'Stephen', 'Pocket', ''),
(3, 'Le Singe', 'King', 'Stephen', 'Librio', 'Imaginaire'),
(4, 'Rêves et Cauchemars', 'King', 'Stephen', 'Albin Michel', 'Le Livre de Poche'),
(5, 'Nuit noire, étoiles mortes', 'King', 'Stephen', 'Albin Michel', 'Le Livre de Poche'),
(6, 'Simetierre', 'King', 'Stephen', 'Albin Michel', 'Le Livre de Poche'),
(7, 'Différentes saisons', 'King', 'Stephen', 'Albin Michel', 'Le Livre de Poche'),
(8, 'Royaume magique à vendre', 'Brooks', 'Terry', "J'ai lu", 'Fantasy'),
(9, 'Neuromancien', 'Gibson', 'William', "J'ai lu", ''),
(10, 'Aucun souvenir assez solide', 'Damasio', 'Alain', 'Gallimard', 'Folio SF'),
(11, "Brèche dans l'espace", 'Dick', 'Philip Kindred', "J'ai lu", 'Nouveaux Millénaires'),
(12, 'Ubik', 'Dick', 'Philip Kindred', '10/18', ''),
(13, 'De bons présages', 'Terry Pratchett', 'Neil Gaiman', "J'ai lu", 'Fantastique'),
(14, 'Fondation 1', 'Asimov', 'Isaac', 'Denoël', 'Folio SF'),
(15, 'Silo', 'Howey', 'Hugh', 'Actes Sud', 'Le Livre de Poche'),
(16, "Dans l'abîme du temps", 'Lovecraft', 'Howard Phillips', 'Denoël', 'Folio SF'),
(17, 'Dagon', 'Lovecraft', 'Howard Phillips', "J'ai lu", 'Fantastique'),
(18, 'Inventions expliquées', 'Nicole Masson', 'Yann Caudal', 'Chêne', 'Le français expliqué'),
(19, "L'univers à portée de main", 'Galfard', 'Christophe', "J'ai lu", ''),
(20, "L'art de la guerre", 'Tzu', 'Sun', 'Flammarion', 'Champs Classique'),
(21, 'Le moonde de Ben', 'Lessing', 'Doris', "J'ai lu", ''),
(22, "L'ivresse du kangourou", 'Cook', 'Kenneth', "J'ai lu", ''),
(23, 'Le garçon qui voyait les demons', 'Jess-Cooke', 'Carolyn', 'JC Lattès', 'Le Livre de Poche'),
(24, 'Sérénade pour une souris défunte', 'Dard', 'Frédéric', 'Pocket', 'San-Antonio'),
(25, 'La Voix De La Terre - Troisième humanité', 'Werber', 'Bernard', 'Albin Michel', 'Le Livre de Poche'),
(26, 'Les Micro Humains - Troisième humanité', 'Werber', 'Bernard', 'Albin Michel', 'Le Livre de Poche'),
(27, 'Troisième humanité', 'Werber', 'Bernard', 'Albin Michel', 'Le Livre de Poche'),
(28, 'Nous les dieux', 'Werber', 'Bernard', 'Albin Michel', 'Le Livre de Poche'),
(29, 'Le Souffle des dieux', 'Werber', 'Bernard', 'Albin Michel', 'Le Livre de Poche'),
(30, 'Paradis sur Mesure', 'Werber', 'Bernard', 'Albin Michel', 'Le Livre de Poche'),
(31, 'Nouvelle encyclopédie du savoir relatif et absolu', 'Werber', 'Bernard', 'Albin Michel', 'Le Livre de Poche'),
(32, 'Les Thanatonautes', 'Werber', 'Bernard', 'Albin Michel', 'Le Livre de Poche'),
(33, 'Ambre - Autre Monde', 'Chattam', 'Maxime', 'Albin Michel', 'Le Livre de Poche'),
(34, "L'Alliance des Trois - Autre Monde", 'Chattam', 'Maxime', 'Albin Michel', 'Le Livre de Poche'),
(35, 'Le coeur de la Terre - Autre Monde', 'Chattam', 'Maxime', 'Albin Michel', 'Le Livre de Poche'),
(36, "Oz - Autre Monde", 'Chattam', 'Maxime', 'Albin Michel', 'Le Livre de Poche'),
(37, 'Entropia - Autre Monde', 'Chattam', 'Maxime', 'Albin Michel', 'Le Livre de Poche'),
(38, 'Malronce - Autre Monde', 'Chattam', 'Maxime', 'Albin Michel', 'Le Livre de Poche'),
(39, '1984', 'Orwell', 'George', 'Gallimard', 'Folio'),
(40, 'La Horde du Contrevent', 'Damasio', 'Alain', 'Gallimard', 'Folio SF'),
(41, 'Terremer - Intégral', 'Le Guin', 'Ursula Kroeber', 'Le Livre de Poche', 'Le Livre de Poche'),
(42, "L'arbre des possibles et autres histoires", 'Werber', 'Bernard', 'Albin Michel', 'Le Livre de Poche'),
(43, 'Nos Amis les Humains', 'Werber', 'Bernard', 'Albin Michel', ''),
(44, 'Guide survie pour le voyageur du temps amateur', 'Yu', 'Charles', 'Aux Forges de Vulcain', 'Littératures'),
(45, 'Nous sommes Légion (Nous sommes BOB) - 1', 'Taylor', 'Dennis E.', 'Bragelonne', 'Bragelonne SF'),
(46, 'Le Signal', 'Chattam', 'Maxime', 'Albin Michel', ''),
(47, "L'illusion", 'Chattam', 'Maxime', 'Albin Michel', ''),
(48, 'Génèse - Autre Monde', 'Chattam', 'Maxime', 'Albin Michel', ''),
(49, 'Neverland - Autre Monde', 'Chattam', 'Maxime', 'Albin Michel', ''),
(50, '22/11/63', 'King', 'Stephen', 'Albin Michel', ''),
(51, 'Les Rois Navigateurs - 1. Le manteau des étoiles', 'Kilworth', 'Garry', 'Mnémos', 'Icares'),
(52, 'Kafka sur le rivage', 'Murakami', 'Haruki', '10/18', 'Poche'); */

insert into emprunteurs values (0, 'MKIBANGU', 'Vital', 0, null);
insert into emprunteurs values (1, 'KEFI', 'Kalil', 0, null);
insert into emprunteurs values (2, 'AMALANATHAN', 'Elvis', 0, null);
insert into emprunteurs values (3, 'KRAFT', 'Jérôme', 0, null);
insert into emprunteurs values (4, 'KING', 'Steven', 0, 100);
insert into emprunteurs values (5, 'AUSTIN', 'David', 0, 105);
insert into emprunteurs values (6, 'PATABALLA', 'Valli', 0, 106);
insert into emprunteurs values (7, 'POPP', 'Luis', 0, 113);
