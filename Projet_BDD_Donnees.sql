/* Données pour la table 'domaines' */
insert into domaines values (000, 'Science-fiction');
insert into domaines values (100, 'Informatique');
insert into domaines values (200, 'Finance et gestion');
insert into domaines values (300, 'Spiritualité');
insert into domaines values (400, 'Littérature');
insert into domaines values (500, 'Sciences Humaines et Arts');
insert into domaines values (600, 'Loisirs et voyages');

/* Données pour la table 'sous_domaines' */
/* Sous-domaines du domaine 000- Science-fiction : */
insert into sous_domaines values (010, 'Voyages dans le temps', 000);
insert into sous_domaines values (020, 'Uchronie', 000);
insert into sous_domaines values (030, 'Cyberpunk', 000);
insert into sous_domaines values (040, 'Space Opera', 000);
insert into sous_domaines values (050, 'Science-fiction', 000);
insert into sous_domaines values (060, 'Science-fiction post-apocalyptique', 000);
/* Sous-domaines du domaine 100- Informatique : */
insert into sous_domaines values (110, 'Programmation', 100);
insert into sous_domaines values (120, 'Développement web', 100);
insert into sous_domaines values (130, 'Base de données', 100);
insert into sous_domaines values (140, 'Algorithmique', 100);
insert into sous_domaines values (150, 'Cryptologie', 100);
insert into sous_domaines values (160, 'Logiciels', 100);
insert into sous_domaines values (170, 'Systèmes d_information', 100);
insert into sous_domaines values (180, 'Matériel informatique', 100);
/* Sous-domaines du domaine 200- Finance et gestion : */
insert into sous_domaines values (210, 'Finance publique', 200);
insert into sous_domaines values (220, 'Finance privée', 200);
insert into sous_domaines values (230, 'Finance d_entreprise', 200);
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
insert into sous_domaines values (560, 'Histoire de l_Art', 500);
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

/* Données pour la table 'auteurs' */
insert into auteurs values (0, 'WELLS', 'Herbert George');
insert into auteurs values (1, 'KEROUAC', 'Jack');
insert into auteurs values (2, 'KING', 'Stephen');
insert into auteurs values (3, 'BROOKS', 'Terry');
insert into auteurs values (4, 'GIBSON', 'William');
insert into auteurs values (5, 'DAMASIO', 'Alain');
insert into auteurs values (6, 'DICK', 'Philip Kindred');
insert into auteurs values (7, 'PRATCHETT', 'Terry');
insert into auteurs values (8, 'GAIMAN', 'Neil');
insert into auteurs values (9, 'ASIMOV', 'Isaac');
insert into auteurs values (10, 'HOWEY', 'Hugh');
insert into auteurs values (11, 'LOVECRAFT', 'Howard Phillips');
insert into auteurs values (12, 'MOORCOCK', 'Michael');
insert into auteurs values (13, 'LAMBERT', 'Christophe');
insert into auteurs values (14, 'STEPHENSON', 'Neal Town');
insert into auteurs values (15, 'SIMMONS', 'Dan');
insert into auteurs values (16, 'RICHNER', 'Antoinette');
insert into auteurs values (17, 'SILVERBERG', 'Robert');
insert into auteurs values (18, 'PICHAUD', 'Christophe');
insert into auteurs values (19, 'HONDERMARCK', 'Olivier');
insert into auteurs values (20, 'DELANNOY', 'Claude');
insert into auteurs values (21, 'JELLEY', 'Craig');
insert into auteurs values (22, 'MILTON', 'Stephanie');
insert into auteurs values (23, 'YAMAMORI', 'Takashi');
insert into auteurs values (24, 'ANDRIEU', 'Olivier');
insert into auteurs values (25, 'BAIBOU', 'Sonia');
insert into auteurs values (26, 'HAINAUT', 'Jean-Luc');
insert into auteurs values (27, 'BENAÏCHOU', 'Saïd');
insert into auteurs values (28, 'CERF', 'Isabelle');
insert into auteurs values (29, 'SALERNO', 'Tony Carmine');
insert into auteurs values (30, 'RIOU', 'Arnaud');
insert into auteurs values (31, 'BYRNE', 'Rhonda');
insert into auteurs values (32, 'GALEANO', 'Jordi');
insert into auteurs values (33, 'SPERANDIO', 'Eric-Pier');
insert into auteurs values (34, 'CHEMIN', 'Henri');
insert into auteurs values (35, 'DUVAL', 'Christian');
insert into auteurs values (36, 'TAYLOR', 'Carole');
insert into auteurs values (37, 'TOLLE', 'Eckhart');
insert into auteurs values (38, 'RUIZ', 'Miguel');
insert into auteurs values (39, 'RUIZ', 'José');
insert into auteurs values (40, 'ALSINA', 'Marie');
insert into auteurs values (41, 'LAVEY', 'Anton-Szandor');
insert into auteurs values (42, 'GALLEY', 'David');
insert into auteurs values (43, 'LENOIR', 'Frédéric');
insert into auteurs values (44, 'GIBRAN', 'Khalil');
insert into auteurs values (45, 'DUPONT-ROC', 'Roselyne');
insert into auteurs values (46, 'GUGGENHEIM', 'Antoine');

/* Données pour la table 'editeurs' */
insert into editeurs values (0, 'Gallimard');
insert into editeurs values (1, 'Pocket');
insert into editeurs values (2, 'Robert Laffont');
insert into editeurs values (3, 'J_ai Lu');
insert into editeurs values (4, 'Livre de Poche');
insert into editeurs values (5, '‎JC Lattès');
insert into editeurs values (6, 'Albin Michel');
insert into editeurs values (7, 'Au Diable Vauvert');
insert into editeurs values (8, 'La Volte');
insert into editeurs values (9, '10/18');
insert into editeurs values (10, 'Audiolib');
insert into editeurs values (11, 'Harper Voyager');
insert into editeurs values (12, 'Bantam Books');
insert into editeurs values (13, 'Everyman Guides');
insert into editeurs values (14, 'WWW.SNOWBALLPUBLISHING.COM');
insert into editeurs values (15, 'Heyne');
insert into editeurs values (16, 'HarperCollins');
insert into editeurs values (17, 'Actes Sud');
insert into editeurs values (18, 'Thélème');
insert into editeurs values (19, 'Points');
insert into editeurs values (20, 'Bragelonne');
insert into editeurs values (21, 'L_Atalante');
insert into editeurs values (22, 'Gateway');
insert into editeurs values (23, 'Buchet-Chastel');
insert into editeurs values (24, 'Dunod');
insert into editeurs values (25, 'Eyrolles');
insert into editeurs values (26, 'Soleil');
insert into editeurs values (27, 'Ellipses');
insert into editeurs values (28, 'Exergue');
insert into editeurs values (29, 'Editions Véga');
insert into editeurs values (30, 'Guy Trédaniel');
insert into editeurs values (31, 'Artémis');
insert into editeurs values (32, 'Alliance Magique');
insert into editeurs values (33, 'Be Light Editions');
insert into editeurs values (34, 'First');
insert into editeurs values (35, 'Jouvence');
insert into editeurs values (36, 'Le Temps Présent');
insert into editeurs values (37, 'Camion Blanc');
insert into editeurs values (38, 'Editions de l_Opportun');
insert into editeurs values (39, 'Cerf');

/* Données pour la table 'livres' */
insert into livres values ('978-2-07-287190-0', 2019, 0, null, null, 'La Machine à explorer le temps', 0, 010);
insert into livres values ('978-2-07-036766-5', 2007, 1, null, null, 'Sur la route', 0, 580);
insert into livres values ('978-2-266-23501-3', 2014, 2, null, null, 'Le Talisman des territoires Intégrale', 1, 050);
insert into livres values ('2-221-09818-8', 2002, 2, null, null, 'Le Talisman des territoires Tome 1', 2, 050);
insert into livres values ('2-221-09383-6', 2002, 2, null, null, 'Le Talisman des territoires Tome 2', 2, 050);
insert into livres values ('978-2253151623', 2007, 2, null, null, 'Shining L_Enfant lumière', 4, 050);
insert into livres values ('978-2709646048', 2013, 2, null, null, 'Shining', 5, 050);
insert into livres values ('978-2-253-12292-0', 2008, 2, null, null, 'La Ligne Verte', 4, 050);
insert into livres values ('2-253-15161-0', 2006, 2, null, null, 'Rêves et Cauchemars', 4, 050);
insert into livres values ('2-226-07009-5', 1994, 2, null, null, 'Rêves et Cauchemars', 6, 050);
insert into livres values ('978-2-253-19523-8', 2014, 2, null, null, 'Nuit noire, étoiles mortes', 4, 050);
insert into livres values ('978-2-226-23993-8', 2012, 2, null, null, 'Nuit noire, étoiles mortes', 6, 050);
insert into livres values ('2-253-15143-2', 2003, 2, null, null, 'Simetierre', 4, 050);
insert into livres values ('2-226-02482-4', 1985, 2, null, null, 'Simetierre', 6, 050);
insert into livres values ('2-253-15149-1', 2004, 2, null, null, 'Différentes saisons', 4, 050);
insert into livres values ('978-2-290-17280-3', 2019, 3, null, null, 'Royaume magique à vendre', 3, 050);
insert into livres values ('979-10-307-0365-8', 2020, 4, null, null, 'Neuromancien', 7, 030);
insert into livres values ('978-2-07-292750-8', 2021, 5, null, null, 'Aucun souvenir assez solide', 0, 050);
insert into livres values ('978-2-917157-19-0', 2012, 5, null, null, 'Aucun souvenir assez solide', 8, 050);
insert into livres values ('978-2-290-03366-1', 2015, 6, null, null, 'Brèche dans l_espace', 3, 050);
insert into livres values ('2-253-05297-3', 1990, 6, null, null, 'Brèche dans l_espace', 4, 050);
insert into livres values ('2-264-02881-5', 1999, 6, null, null, 'Ubik', 9, 050);
insert into livres values ('2-221-09462-1', 2001, 6, null, null, 'Ubik', 2, 050);
insert into livres values ('978-2-264-07495-9', 2019, 6, null, null, 'Ubik', 9, 050);
insert into livres values ('979-10-307-0282-8', 2019, 7, 8, null, 'De bons présages', 7, 050);
insert into livres values ('978-2-290-08840-1', 2014, 7, 8, null, 'De bons présages', 3, 050);
insert into livres values ('979-10-354-0250-1', 2020, 7, 8, null, 'Good Omens', 10, 430);
insert into livres values ('2-07-041977-0', 2002, 9, null, null, 'Les Dieux eux-mêmes', 0, 050);
insert into livres values ('978-2-290-22726-8', 2020, 9, null, null, 'Le cycle des robots (Tome 1) Les robots', 3, 050);
insert into livres values ('978-2-290-22727-5', 2020, 9, null, null, 'Le cycle des robots (Tome 1) Les robots', 3, 050);
insert into livres values ('978-2-290-31125-7', 2016, 9, null, null, 'Le cycle des robots (Tome 2) Un défilé de robots', 3, 050);
insert into livres values ('978-2-290-18555-1', 2018, 9, null, null, 'Le cycle des robots (Tome 2) Un défilé de robots', 3, 050);
insert into livres values ('978-2-290-31902-4', 2020, 9, null, null, 'Le cycle des robots (Tome 3) Les cavernes d_acier', 3, 050);
insert into livres values ('2-290-18557-4', 2001, 9, null, null, 'Le cycle des robots (Tome 3) Les cavernes d_acier', 3, 050);
insert into livres values ('978-2-290-32794-4', 2020, 9, null, null, 'Le cycle des robots (Tome 4) Face aux feux du soleil', 3, 050);
insert into livres values ('978-2-290-18559-9', 2018, 9, null, null, 'Le cycle des robots (Tome 4) Face aux feux du soleil', 3, 050);
insert into livres values ('2-290-33275-5', 2005, 9, null, null, 'Le cycle des robots (Tome 5) Les robots de l_aube', 3, 050);
insert into livres values ('978-2-290-18561-2', 2018, 9, null, null, 'Le cycle des robots (Tome 5) Les robots de l_aube', 3, 050);
insert into livres values ('978-2-290-31116-5', 2007, 9, null, null, 'Le cycle des robots (Tome 6) Les robots et l_empire', 3, 050);
insert into livres values ('2-290-12137-1', 2001, 9, null, null, 'Le cycle des robots (Tome 6) Les robots et l_empire', 3, 050);
insert into livres values ('978-2-36762-843-1', 2019, 9, null, null, 'Fondation : Le cycle de Fondation (Tome 1)', 10, 050);
insert into livres values ('978-2-07-036053-6', 2009, 9, null, null, 'Fondation : Le cycle de Fondation (Tome 1)', 0, 050);
insert into livres values ('978-2-07-036055-0', 2009, 9, null, null, 'Fondation et Empire : Le cycle de Fondation (Tome 2)', 0, 050);
insert into livres values ('978-2-36762-844-8', 2019, 9, null, null, 'Fondation et Empire : Le cycle de Fondation (Tome 2)', 10, 050);
insert into livres values ('978-2-07-036052-9', 2009, 9, null, null, 'Seconde Fondation: Le cycle de Fondation (Tome 3)', 0, 050);
insert into livres values ('978-2-36762-845-5', 2019, 9, null, null, 'Seconde Fondation: Le cycle de Fondation (Tome 3)', 10, 050);
insert into livres values ('978-2-07-036063-5', 2009, 9, null, null, 'Fondation foudroyée: Le cycle de Fondation (Tome 4)', 0, 050);
insert into livres values ('978-2-36762-846-2', 2009, 9, null, null, 'Fondation foudroyée: Le cycle de Fondation (Tome 4)', 10, 050);
insert into livres values ('978-2-07-037966-8', 2009, 9, null, null, 'Terre et Fondation: Le cycle de Fondation (Tome 5)', 0, 050);
insert into livres values ('979-10-354-0531-1', 2021, 9, null, null, 'Terre et Fondation: Le cycle de Fondation (Tome 5)', 10, 050);
insert into livres values ('978-2-266-25698-8', 2014, 9, null, null, 'Prélude à Fondation : Le cycle de Fondation (Tome 6)', 1, 050);
insert into livres values ('978-2-266-15736-0', 2014, 9, null, null, 'L_Aube de Fondation : Le cycle de Fondation (Tome 7)', 1, 050);
insert into livres values ('978-0-00-811749-8', 2016, 9, null, null, 'Foundation', 11, 430);
insert into livres values ('0-553-29335-4', 2004, 9, null, null, 'Foundation', 12, 430);
insert into livres values ('978-1-84159-332-6', 2015, 9, null, null, 'Foundation Trilogy', 13, 430);
insert into livres values ('978-1-60796-273-1', 2010, 9, null, null, 'Foundation Trilogy', 14, 430);
insert into livres values ('978-3-453-52795-9', 2012, 9, null, null, 'Die Foundation-Trilogie', 15, 440);
insert into livres values ('978-3-453-19657-5', 2001, 9, null, null, 'Die frühe Foundation-Trilogie', 15, 440);
insert into livres values ('978-2-07-046361-9', 2015, 9, null, null, 'Le cycle de Fondation Intégrale Tome 1', 0, 050);
insert into livres values ('978-2-07-046362-6', 2015, 9, null, null, 'Le cycle de Fondation Intégrale Tome 2', 0, 050);
insert into livres values ('0007491514', 2013, 9, null, null, 'I, Robot', 16, 430);
insert into livres values ('978-2-253-18353-2', 2016, 10, null, null, 'Silo', 4, 050);
insert into livres values ('978-2-330-02678-3', 2013, 10, null, null, 'Silo', 17, 050);
insert into livres values ('978-2-87862-758-9', 2014, 10, null, null, 'Silo', 18, 050);
insert into livres values ('978-2-7578-5139-5', 2015, 11, null, null, 'Dans l_abîme du temps', 19, 050);
insert into livres values ('978-2-7578-8711-0', 2020, 11, null, null, 'Dans l_abîme du temps', 19, 050);
insert into livres values ('2-290-33290-9', 2003, 11, null, null, 'Dagon', 3, 050);
insert into livres values ('979-10-281-0407-8', 2019, 11, null, null, 'Dagon', 20, 050);
insert into livres values ('2-84172-169-8', 2001, 12, null, null, 'Voici l_homme', 21, 010);
insert into livres values ('978-2266155007', 2007, 13, null, null, 'La brèche', 1, 020);
insert into livres values ('978-2-290-08232-4', 2013, 6, null, null, 'Le Maître du Haut Château', 3, 020);
insert into livres values ('978-2-253-08318-4', 2017, 14, null, null, 'Le Samouraï virtuel', 4, 030);
insert into livres values ('2-07-033691-3', 2006, 14, null, null, 'Zodiac', 0, 030);
insert into livres values ('978-2-266-29776-9', 2020, 15, null, null, 'L_Abominable', 1, 040);
insert into livres values ('978-2-221-21868-6', 2019, 15, null, null, 'L_Abominable', 2, 040);
insert into livres values ('978-0-575-09996-8', 2010, 15, null, null, 'Hyperion', 22, 430);
insert into livres values ('978-2-283-03325-8', 2020, 16, null, null, 'Après le monde', 23, 060);
insert into livres values ('978-2-283-03409-5', 2020, 16, null, null, 'Après le monde', 23, 060);
insert into livres values ('2-253-07214-1', 1999, 17, null, null, 'Ciel brûlant de minuit', 4, 060);
insert into livres values ('978-2-221-13014-8', 2014, 17, null, null, 'Ciel brûlant de minuit', 2, 060);
insert into livres values ('978-2-10-080712-3', 2020, 18, null, null, 'C++', 24, 110);
insert into livres values ('978-2-10-081634-7', 2020, 18, null, null, 'C++', 24, 110);
insert into livres values ('978-2-10-081430-5', 2020, 19, null, null, 'Tout JavaScript', 24, 120);
insert into livres values ('978-2-10-081896-9', 2020, 19, null, null, 'Tout JavaScript', 24, 120);
insert into livres values ('978-2-416-00018-8', 2020, 20, null, null, 'Programmer en Java - Couvre Java 10 à 14', 25, 110);
insert into livres values ('978-2-212-80165-1', 2020, 20, null, null, 'Programmer en Java - Couvre Java 10 à 14', 25, 110);
insert into livres values ('978-2-212-67903-8', 2020, 24, null, null, 'Réussir son référencement web - Stratégie et techniques SEO', 25, 120);
insert into livres values ('978-2-212-73061-6', 2020, 24, null, null, 'Réussir son référencement web - Stratégie et techniques SEO', 25, 120);
insert into livres values ('978-2-212-67973-1', 2020, 25, null, null, 'Oh my code ! - Je crée mon premier site web', 25, 120);
insert into livres values ('978-2-10-079068-5', 2018, 26, null, null, 'Bases de données - Concepts, utilisation et développement', 24, 130);
insert into livres values ('978-2-10-078672-5', 2018, 26, null, null, 'Bases de données - Concepts, utilisation et développement', 24, 130);
insert into livres values ('978-2-340-01782-5', 2017, 27, null, null, 'Bases de données et systèmes d_information - Modèle relationnel, SQL, modélisation des données', 27, 130);
insert into livres values ('978-2-07-507838-2', 2017, 21, null, null, 'Minecraft, le guide création', 0, 160);
insert into livres values ('978-2-07-513909-0', 2020, 22, null, null, 'Minecraft - Le guide survie officiel', 0, 160);
insert into livres values ('978-2-302-08362-2', 2020, 23, null, null, 'The Legend of Zelda : Breath of the Wild - La création d_un prodige', 26, 160);
insert into livres values ('978-2-36188-356-0', 2020, 28, null, null, 'Le guide du lightworker. Tout part de toi ! - Avec 3 oracles à découper et + de 50 tests et exercices', 28, 310);
insert into livres values ('978-2-85829-718-4', 2012, 29, null, null, 'Oracle de Gaïa', 29, 310);
insert into livres values ('978-2-8132-2310-4', 2020, 30, null, null, 'L_Oracle du peuple végétal', 30, 310);
insert into livres values ('978-2-8132-0494-3', 2012, 31, null, null, 'La magie', 30, 330);
insert into livres values ('978-2-8160-1386-3', 2018, 32, null, null, 'Magie blanche - Grimoire des sorts et enchantements bénéfiques', 31, 330);
insert into livres values ('2-290-33675-0', 2004, 33, null, null, 'Le guide de la magie blanche - Recettes de sorcières', 3, 330);
insert into livres values ('978-2-36736-070-6', 2020, 34, null, null, 'La haute magie d_Isis - Eset et les mystères de l_Egypte antique', 32, 330);
insert into livres values ('979-10-94653-35-7', 2018, 35, null, null, 'L_Alchimie Zodiacale et l_Ascension Vibratoire', 33, 340);
insert into livres values ('978-2-412-05414-7', 2020, 36, null, null, 'Astrologie', 34, 340);
insert into livres values ('978-2-290-02020-3', 2010, 37, null, null, 'Le pouvoir du moment présent. Guide d_éveil spirituel', 3, 350);
insert into livres values ('978-2-88953-373-2', 2020, 38, 39, null, 'Le 5e accord toltèque - La voie de la maîtrise de soi', 35, 350);
insert into livres values ('978-2-88953-408-1', 2020, 38, 39, null, 'Le 5e accord toltèque - La voie de la maîtrise de soi', 35, 350);
insert into livres values ('978-2-35185-243-9', 2017, 40, null, null, 'Dossiers Warren - Les plus célèbres affaires des enquêteurs du paranormal Ed et Lorraine Warren', 36, 360);
insert into livres values ('2-910196-60-7', 2006, 41, null, null, 'La Bible satanique', 37, 360);
insert into livres values ('978-2-38015-261-6', 2021, 42, null, null, 'Le paranormal en question(s)', 38, 360);
insert into livres values ('978-2-266-24065-9', 2014, 43, null, null, 'L_âme du monde', 1, 380);
insert into livres values ('2-253-06409-2', 1993, 44, null, null, 'Le prophète', 4, 380);
insert into livres values ('978-2-226-45033-3', 2020, 45, 46, null, 'Après Jésus - L_invention du christianisme', 6, 380);

/* Données pour la table 'exemplaires_livres' */
insert into exemplaires_livres values ('978-2-07-287190-0', 1);
insert into exemplaires_livres values ('978-2-07-036766-5', 1);
insert into exemplaires_livres values ('978-2-266-23501-3', 1);
insert into exemplaires_livres values ('2-221-09818-8', 1);
insert into exemplaires_livres values ('2-221-09818-8', 2);
insert into exemplaires_livres values ('2-221-09383-6', 1);
insert into exemplaires_livres values ('2-221-09383-6', 2);
insert into exemplaires_livres values ('78-2253151623', 1);
insert into exemplaires_livres values ('978-2709646048', 1);
insert into exemplaires_livres values ('978-2709646048', 2);
insert into exemplaires_livres values ('978-2-253-12292-0', 1);
insert into exemplaires_livres values ('978-2-253-12292-0', 2);
insert into exemplaires_livres values ('978-2-253-12292-0', 3);
insert into exemplaires_livres values ('2-253-15161-0', 1);
insert into exemplaires_livres values ('2-226-07009-5', 1);
insert into exemplaires_livres values ('978-2-253-19523-8', 1);
insert into exemplaires_livres values ('978-2-226-23993-8', 1);
insert into exemplaires_livres values ('2-253-15143-2', 1);
insert into exemplaires_livres values ('2-253-15143-2', 2);
insert into exemplaires_livres values ('2-226-02482-4', 1);
insert into exemplaires_livres values ('2-253-15149-1', 1);
insert into exemplaires_livres values ('978-2-290-17280-3', 1);
insert into exemplaires_livres values ('979-10-307-0365-8', 1);
insert into exemplaires_livres values ('978-2-07-292750-8', 1);
insert into exemplaires_livres values ('978-2-917157-19-0', 1);
insert into exemplaires_livres values ('978-2-290-03366-1', 1);
insert into exemplaires_livres values ('2-253-05297-3', 1);
insert into exemplaires_livres values ('2-264-02881-5', 1);
insert into exemplaires_livres values ('2-221-09462-1', 1);
insert into exemplaires_livres values ('978-2-264-07495-9', 1);
insert into exemplaires_livres values ('979-10-307-0282-8', 1);
insert into exemplaires_livres values ('978-2-290-08840-1', 1);
insert into exemplaires_livres values ('979-10-354-0250-1', 1);
insert into exemplaires_livres values ('979-10-354-0250-1', 2);
insert into exemplaires_livres values ('979-10-354-0250-1', 3);
insert into exemplaires_livres values ('979-10-354-0250-1', 4);
insert into exemplaires_livres values ('979-10-354-0250-1', 5);
insert into exemplaires_livres values ('979-10-354-0250-1', 6);
insert into exemplaires_livres values ('979-10-354-0250-1', 7);
insert into exemplaires_livres values ('978-2-36762-843-1', 1);
insert into exemplaires_livres values ('978-2-36762-843-1', 2);
insert into exemplaires_livres values ('978-2-36762-843-1', 3);
insert into exemplaires_livres values ('978-2-07-036053-6', 1);
insert into exemplaires_livres values ('978-2-07-046361-9', 1);
insert into exemplaires_livres values ('978-2-07-046362-6', 1);
insert into exemplaires_livres values ('978-2-36762-844-8', 1);
insert into exemplaires_livres values ('978-2-36762-844-8', 2);
insert into exemplaires_livres values ('978-2-36762-844-8', 3);
insert into exemplaires_livres values ('978-2-07-036055-0', 1);
insert into exemplaires_livres values ('978-2-07-036052-9', 1);
insert into exemplaires_livres values ('978-2-36762-845-5', 1);
insert into exemplaires_livres values ('978-2-07-036063-5', 1);
insert into exemplaires_livres values ('978-2-36762-846-2', 1);
insert into exemplaires_livres values ('978-2-36762-846-2', 2);
insert into exemplaires_livres values ('978-2-36762-846-2', 3);
insert into exemplaires_livres values ('978-2-07-037966-8', 1);
insert into exemplaires_livres values ('979-10-354-0531-1', 1);
insert into exemplaires_livres values ('979-10-354-0531-1', 2);
insert into exemplaires_livres values ('979-10-354-0531-1', 3);
insert into exemplaires_livres values ('978-2-266-25698-8', 1);
insert into exemplaires_livres values ('978-2-266-15736-0', 1);
insert into exemplaires_livres values ('2-07-041977-0', 0);
insert into exemplaires_livres values ('978-2-290-22726-8', 1);
insert into exemplaires_livres values ('978-2-290-22727-5', 1);
insert into exemplaires_livres values ('978-2-290-22727-5', 2);
insert into exemplaires_livres values ('978-2-290-22727-5', 3);
insert into exemplaires_livres values ('978-2-290-31125-7', 1);
insert into exemplaires_livres values ('978-2-290-18555-1', 1);
insert into exemplaires_livres values ('978-2-290-18555-1', 2);
insert into exemplaires_livres values ('978-2-290-18555-1', 3);
insert into exemplaires_livres values ('978-2-290-31902-4', 1);
insert into exemplaires_livres values ('2-290-18557-4', 1);
insert into exemplaires_livres values ('2-290-18557-4', 2);
insert into exemplaires_livres values ('2-290-18557-4', 3);
insert into exemplaires_livres values ('978-2-290-32794-4', 1);
insert into exemplaires_livres values ('978-2-290-18559-9', 1);
insert into exemplaires_livres values ('978-2-290-18559-9', 2);
insert into exemplaires_livres values ('978-2-290-18559-9', 3);
insert into exemplaires_livres values ('2-290-33275-5', 1);
insert into exemplaires_livres values ('978-2-290-18561-2', 1);
insert into exemplaires_livres values ('978-2-290-18561-2', 2);
insert into exemplaires_livres values ('978-2-290-18561-2', 3);
insert into exemplaires_livres values ('978-2-290-31116-5', 1);
insert into exemplaires_livres values ('2-290-12137-1', 1);
insert into exemplaires_livres values ('2-290-12137-1', 2);
insert into exemplaires_livres values ('2-290-12137-1', 3);
insert into exemplaires_livres values ('978-0-00-811749-8', 1);
insert into exemplaires_livres values ('0-553-29335-4', 1);
insert into exemplaires_livres values ('978-1-84159-332-6', 1);
insert into exemplaires_livres values ('978-1-60796-273-1', 1);
insert into exemplaires_livres values ('978-3-453-52795-9', 1);
insert into exemplaires_livres values ('978-3-453-19657-5', 1);
insert into exemplaires_livres values ('0007491514', 1);
insert into exemplaires_livres values ('978-2-253-18353-2', 1);
insert into exemplaires_livres values ('978-2-330-02678-3', 1);
insert into exemplaires_livres values ('978-2-330-02678-3', 2);
insert into exemplaires_livres values ('978-2-87862-758-9', 1);
insert into exemplaires_livres values ('978-2-87862-758-9', 2);
insert into exemplaires_livres values ('978-2-7578-5139-5', 1);
insert into exemplaires_livres values ('978-2-7578-8711-0', 1);
insert into exemplaires_livres values ('2-290-33290-9', 1);
insert into exemplaires_livres values ('979-10-281-0407-8', 1);
insert into exemplaires_livres values ('2-84172-169-8', 1);
insert into exemplaires_livres values ('978-2266155007', 1);
insert into exemplaires_livres values ('978-2-290-08232-4', 1);
insert into exemplaires_livres values ('978-2-253-08318-4', 1);
insert into exemplaires_livres values ('2-07-033691-3', 1);
insert into exemplaires_livres values ('978-2-266-29776-9', 1);
insert into exemplaires_livres values ('978-2-221-21868-6', 1);
insert into exemplaires_livres values ('978-0-575-09996-8', 1);
insert into exemplaires_livres values ('978-0-575-09996-8', 2);
insert into exemplaires_livres values ('978-2-283-03325-8', 1);
insert into exemplaires_livres values ('978-2-283-03409-5', 1);
insert into exemplaires_livres values ('978-2-283-03409-5', 2);
insert into exemplaires_livres values ('2-253-07214-1', 1);
insert into exemplaires_livres values ('978-2-221-13014-8', 1);
insert into exemplaires_livres values ('978-2-221-13014-8', 2);
insert into exemplaires_livres values ('978-2-10-080712-3', 1);
insert into exemplaires_livres values ('978-2-10-081634-7', 1);
insert into exemplaires_livres values ('978-2-10-081634-7', 2);
insert into exemplaires_livres values ('978-2-10-081634-7', 3);
insert into exemplaires_livres values ('978-2-10-081430-5', 1);
insert into exemplaires_livres values ('978-2-10-081896-9', 1);
insert into exemplaires_livres values ('978-2-10-081896-9', 2);
insert into exemplaires_livres values ('978-2-10-081896-9', 3);
insert into exemplaires_livres values ('978-2-416-00018-8', 1);
insert into exemplaires_livres values ('978-2-212-80165-1', 3);
insert into exemplaires_livres values ('978-2-212-80165-1', 2);
insert into exemplaires_livres values ('978-2-212-80165-1', 1);
insert into exemplaires_livres values ('978-2-07-507838-2', 1);
insert into exemplaires_livres values ('978-2-07-513909-0', 1);
insert into exemplaires_livres values ('978-2-302-08362-2', 1);
insert into exemplaires_livres values ('978-2-212-67903-8', 1);
insert into exemplaires_livres values ('978-2-212-73061-6', 1);
insert into exemplaires_livres values ('978-2-212-73061-6', 2);
insert into exemplaires_livres values ('978-2-212-73061-6', 3);
insert into exemplaires_livres values ('978-2-212-67973-1', 1);
insert into exemplaires_livres values ('978-2-10-079068-5', 1);
insert into exemplaires_livres values ('978-2-10-078672-5', 1);
insert into exemplaires_livres values ('978-2-10-078672-5', 2);
insert into exemplaires_livres values ('978-2-340-01782-5', 1);
insert into exemplaires_livres values ('978-2-36188-356-0', 1);
insert into exemplaires_livres values ('978-2-85829-718-4', 1);
insert into exemplaires_livres values ('978-2-8132-2310-4', 1);
insert into exemplaires_livres values ('978-2-8132-0494-3', 1);
insert into exemplaires_livres values ('978-2-8160-1386-3', 1);
insert into exemplaires_livres values ('2-290-33675-0', 1);
insert into exemplaires_livres values ('978-2-36736-070-6', 1);
insert into exemplaires_livres values ('979-10-94653-35-7', 1);
insert into exemplaires_livres values ('978-2-412-05414-7', 1);
insert into exemplaires_livres values ('978-2-290-02020-3', 1);
insert into exemplaires_livres values ('978-2-88953-373-2', 1);
insert into exemplaires_livres values ('978-2-88953-408-1', 1);
insert into exemplaires_livres values ('978-2-35185-243-9', 1);
insert into exemplaires_livres values ('2-910196-60-7', 1);
insert into exemplaires_livres values ('2-910196-60-7', 2);
insert into exemplaires_livres values ('2-910196-60-7', 3);
insert into exemplaires_livres values ('978-2-38015-261-6', 1);
insert into exemplaires_livres values ('978-2-266-24065-9', 1);
insert into exemplaires_livres values ('2-253-06409-2', 1);
insert into exemplaires_livres values ('978-2-226-45033-3', 1);

/* Données pour la table 'emprunteurs' */
insert into emprunteurs values (0, 'MKIBANGU', 'Vital', null);
insert into emprunteurs values (1, 'KEFI', 'Kalil', null);
insert into emprunteurs values (2, 'AMALANATHAN', 'Elvis', null);
insert into emprunteurs values (3, 'KRAFT', 'Jérôme', null);
insert into emprunteurs values (4, 'KING', 'Steven', 100);
insert into emprunteurs values (5, 'AUSTIN', 'David', 105);
insert into emprunteurs values (6, 'PATABALLA', 'Valli', 106);
insert into emprunteurs values (7, 'POPP', 'Luis', 113);
insert into emprunteurs values (8, 'OSMANI', 'Aomar', null);