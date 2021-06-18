/* Données pour la table "domaines" */
insert into domaines values (000, 'Science-fiction');
insert into domaines values (100, 'Informatique');
insert into domaines values (200, 'Finance et gestion');
insert into domaines values (300, 'Spiritualité');
insert into domaines values (400, 'Littérature');
insert into domaines values (500, 'Sciences Humaines et Arts');
insert into domaines values (600, 'Loisirs et voyages');

/* Données pour la table "sous_domaines" */
/* Sous-domaines du domaine 000- Science-fiction : */
insert into sous_domaines values (010, 'Voyages dans le temps', 000);
insert into sous_domaines values (020, 'Uchronie', 000);
insert into sous_domaines values (030, 'Cyberpunk', 000);
insert into sous_domaines values (040, 'Space Opera', 000);
insert into sous_domaines values (050, 'Space fantasy', 000);
insert into sous_domaines values (060, 'Science-fiction post-apocalyptique', 000);
/* Sous-domaines du domaine 100- Informatique : */
insert into sous_domaines values (110, 'Programmation', 100);
insert into sous_domaines values (120, 'Développement web', 100);
insert into sous_domaines values (130, 'Base de données', 100);
insert into sous_domaines values (140, 'Algorithmique', 100);
insert into sous_domaines values (150, 'Cryptologie', 100);
insert into sous_domaines values (160, 'Logiciels', 100);
insert into sous_domaines values (170, "Systèmes d'information", 100);
insert into sous_domaines values (180, 'Matériel informatique', 100);
/* Sous-domaines du domaine 200- Finance et gestion : */
insert into sous_domaines values (210, 'Finance publique', 200);
insert into sous_domaines values (220, 'Finance privée', 200);
insert into sous_domaines values (230, "Finance d'entreprise", 200);
insert into sous_domaines values (240, 'Finance de marchés', 200);
insert into sous_domaines values (250, 'Systèmes financiers', 200);
insert into sous_domaines values (260, 'Economie', 200);
/* Sous-domaines du domaine 300- Spiritualité : */
insert into sous_domaines values (310, 'Arts divinatoires', 300);
insert into sous_domaines values (320, 'Lithothérapie', 300);
insert into sous_domaines values (330, 'Magie et sorcellerie', 300);
insert into sous_domaines values (340, 'Astrologie', 300);
insert into sous_domaines values (350, 'Esotérisme', 300);
insert into sous_domaines values (360, 'Occultisme', 300);
insert into sous_domaines values (370, 'Magnétisme', 300);
insert into sous_domaines values (380, 'Religions', 300);
/* Sous-domaines du domaine 400- Littérature : */
insert into sous_domaines values (410, 'Littérature française', 400);
insert into sous_domaines values (420, 'Littérature scandinave', 400);
insert into sous_domaines values (430, 'Littérature anglo-saxonne', 400);
insert into sous_domaines values (440, 'Littérature européenne', 400);
insert into sous_domaines values (450, 'Littérature slave', 400);
insert into sous_domaines values (460, 'Littératures africaine', 400);
insert into sous_domaines values (470, 'Littérature sud-américaine', 400);
insert into sous_domaines values (480, 'Littérature orientale', 400);
/* Sous-domaines du domaine 500- Sciences Humaines et Arts : */
insert into sous_domaines values (510, 'Histoire de France', 500);
insert into sous_domaines values (520, 'Histoire européenne', 500);
insert into sous_domaines values (530, 'Reste du monde', 500);
insert into sous_domaines values (540, 'Philosophie, sociologie et ethnologie', 500);
insert into sous_domaines values (550, 'Politique', 500);
insert into sous_domaines values (560, "Histoire de l'Art", 500);
insert into sous_domaines values (570, 'Architecture et sculpture', 500);
insert into sous_domaines values (580, 'Cinéma et photographie', 500);
insert into sous_domaines values (590, 'Musique et danse', 500);
/* Sous-domaines du domaine 600- Loisirs et voyages : */
insert into sous_domaines values (610, 'Récits de voyage', 600);
insert into sous_domaines values (620, 'Guides de voyage', 600);
insert into sous_domaines values (630, 'Beaux livres', 600);
insert into sous_domaines values (640, 'Sports', 600);
insert into sous_domaines values (650, 'Jeux', 600);
insert into sous_domaines values (660, 'Brico-déco', 600);
insert into sous_domaines values (670, 'Jardins', 600);
insert into sous_domaines values (680, 'Nature et animaux', 600);

/* Données pour la table "auteurs" */
/*("id_auteur", "nom_auteur", "prenom_auteur")*/
insert into auteurs values (0, 'WELLS', 'Herbert George');
insert into auteurs values (1, 'KEROUAC', 'Jack');
insert into auteurs values (2, 'KING', 'Stephen');
insert into auteurs values (3, 'BROOKS', 'Terry');
insert into auteurs values (4, 'GIBSON', 'William');
insert into auteurs values (, '', '');

/* Données pour la table "editeurs" */
/*("id_editeur", "nom_editeur")*/
insert into editeurs values (0, 'Gallimard');
insert into editeurs values (1, 'Pocket');
insert into editeurs values (2, 'Robert Laffont');
insert into editeurs values (3, "J'ai Lu");
insert into editeurs values (4, 'Le Livre de Poche');
insert into editeurs values (5, '‎JC Lattès');
insert into editeurs values (6, 'Albin Michel');
insert into editeurs values (7, 'Au Diable Vauvert');
insert into editeurs values (, '');
insert into editeurs values (, '');
insert into editeurs values (, '');
insert into editeurs values (, '');
insert into editeurs values (, '');
insert into editeurs values (, '');

/* Données pour la table "livres" */
/*(`isbn`, `année public`, `id_aut1`, `id_aut2`, `id_aut3`,`titre`, `id_editeur`, `id_ss-domaine`) */
insert into livres values (978-2-07-287190-0, 2019, 0, 'La Machine à explorer le temps', 0, 010);
insert into livres values (978-2-07-036766-5, 2007, 1, 'Sur la route', 0, 580);
insert into livres values (978-2-266-23501-3, 2014, 2, 'Le Talisman des territoires Intégrale', 1, 050);
insert into livres values (2-221-09818-8, 2002, 2, 'Le Talisman des territoires Tome 1', 2, 050);
insert into livres values (2-221-09383-6, 2002, 2, 'Le Talisman des territoires Tome 2', 2, 050);
insert into livres values (‎978-2253151623, 2007, 2, "Shining L'Enfant Lumière", 4, 050);
insert into livres values (‎978-2709646048, 2013, 2, 'Shining', 5, 050);
insert into livres values (978-2-253-12292-0, 2008, 2, 'La Ligne Verte', 4, 050);
insert into livres values (2-253-15161-0, 2006, 2, 'Rêves et Cauchemars', 4, 050);
insert into livres values (2-226-07009-5, 1994, 2, 'Rêves et Cauchemars', 6, 050);
insert into livres values (978-2-253-19523-8, 2014, 2, 'Nuit noire, étoiles mortes', 4, 050);
insert into livres values (978-2-226-23993-8, 2012, 2, 'Nuit noire, étoiles mortes', 6, 050);
insert into livres values (2-253-15143-2, 2003, 2, 'Simetierre', 4, 050);
insert into livres values (2-226-02482-4, 1985, 2, 'Simetierre', 6, 050);
insert into livres values (2-253-15149-1, 2004, 2, 'Différentes saisons', 4, 050);
insert into livres values (978-2-290-17280-3, 2019, 3, 'Royaume magique à vendre', 3, 050);
insert into livres values (979-10-307-0365-8, 2020, 4, 'Neuromancien', 7, 050);
insert into livres values (978-2-07-292750-8, 2021, 5, 'Aucun souvenir assez solide', 0, 050);
insert into livres values (978-2-917157-19-0, 2012, 5, 'Aucun souvenir assez solide', 8, 050);
insert into livres values (978-2-290-03366-1, 2015, 6, "Brèche dans l'espace", 3, 050);
insert into livres values (2-253-05297-3, 1990, 6, "Brèche dans l'espace", 4, 050);
insert into livres values (2-264-02881-5, 1999, 6, 'Ubik', 9, 050);
insert into livres values (2-221-09462-X, 2001, 6, 'Ubik', 2, 050);
insert into livres values (978-2-264-07495-9, 2019, 6, 'Ubik', 9, 050);
(13, 'De bons présages', 'Terry Pratchett', 'Neil Gaiman', "J'ai lu", 'Fantastique'),
insert into livres values (, , , '', , );
(14, 'Fondation 1', 'Asimov', 'Isaac', 'Denoël', 'Folio SF'),
insert into livres values (, , , '', , );
(15, 'Silo', 'Howey', 'Hugh', 'Actes Sud', 'Le Livre de Poche'),
insert into livres values (, , , '', , );
(16, "Dans l'abîme du temps", 'Lovecraft', 'Howard Phillips', 'Denoël', 'Folio SF'),
insert into livres values (, , , '', , );
(17, 'Dagon', 'Lovecraft', 'Howard Phillips', "J'ai lu", 'Fantastique'),
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );
insert into livres values (, , , '', , );




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

/* Données pour la table "exemplaires_livres" */
insert into exemplaires_livres values (0, 2007, 'Gallimard');
insert into exemplaires_livres values (1, 2007, 'Livre de poche');

/* Données pour la table "domaines" */
insert into emprunteurs values (0, 'MKIBANGU', 'Vital', 0, null);
insert into emprunteurs values (1, 'KEFI', 'Kalil', 0, null);
insert into emprunteurs values (2, 'AMALANATHAN', 'Elvis', 0, null);
insert into emprunteurs values (3, 'KRAFT', 'Jérôme', 0, null);
insert into emprunteurs values (4, 'KING', 'Steven', 0, 100);
insert into emprunteurs values (5, 'AUSTIN', 'David', 0, 105);
insert into emprunteurs values (6, 'PATABALLA', 'Valli', 0, 106);
insert into emprunteurs values (7, 'POPP', 'Luis', 0, 113);
