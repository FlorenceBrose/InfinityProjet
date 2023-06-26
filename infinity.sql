-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 07 juin 2023 à 06:39
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `infinity`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnements`
--

DROP TABLE IF EXISTS `abonnements`;
CREATE TABLE IF NOT EXISTS `abonnements` (
  `id_abo` int NOT NULL AUTO_INCREMENT,
  `clt_abo` int NOT NULL,
  `deb_abo` timestamp NOT NULL,
  `fin_abo` timestamp NOT NULL,
  PRIMARY KEY (`id_abo`),
  KEY `clt_abo` (`clt_abo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `abonnements`
--

INSERT INTO `abonnements` (`id_abo`, `clt_abo`, `deb_abo`, `fin_abo`) VALUES
(1, 1, '2023-05-24 07:52:31', '2023-05-31 07:51:52');

-- --------------------------------------------------------

--
-- Structure de la table `compte_client`
--

DROP TABLE IF EXISTS `compte_client`;
CREATE TABLE IF NOT EXISTS `compte_client` (
  `id_clt` int NOT NULL AUTO_INCREMENT,
  `pseudo_clt` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `mail_clt` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `indic_tel_clt` int NOT NULL,
  `num_tel_clt` int NOT NULL,
  `cp_clt` int NOT NULL,
  `vil_clt` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse_clt` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pays_clt` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_clt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `compte_client`
--

INSERT INTO `compte_client` (`id_clt`, `pseudo_clt`, `mail_clt`, `indic_tel_clt`, `num_tel_clt`, `cp_clt`, `vil_clt`, `adresse_clt`, `pays_clt`) VALUES
(1, 'Sci_fi_Master', 'azerty@xyz.com', 33, 634959764, 62400, 'Bethune', '50 rue des poirriers', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `cookies`
--

DROP TABLE IF EXISTS `cookies`;
CREATE TABLE IF NOT EXISTS `cookies` (
  `id_coo` int NOT NULL AUTO_INCREMENT,
  `clt_coo` int NOT NULL,
  `pc_coo` text COLLATE utf8mb4_general_ci NOT NULL,
  `pseudo_coo` text COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_coo` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_coo`),
  KEY `clt_coo` (`clt_coo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id_f` int NOT NULL AUTO_INCREMENT,
  `nom_f` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `date_f` date NOT NULL,
  `syn_f` text COLLATE utf8mb4_general_ci NOT NULL,
  `real_f` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `tags_f` text COLLATE utf8mb4_general_ci NOT NULL,
  `affiche_f` text COLLATE utf8mb4_general_ci NOT NULL,
  `film_f` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `trail_f` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_f`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id_f`, `nom_f`, `date_f`, `syn_f`, `real_f`, `tags_f`, `affiche_f`, `film_f`, `trail_f`) VALUES
(1, 'Avatar', '2009-12-13', 'Sur le monde extraterrestre luxuriant de Pandora vivent les Na\'vi, des êtres qui semblent primitifs, mais qui sont très évolués. Jake Sully, un ancien Marine paralysé, redevient mobile grâce à un tel Avatar et tombe amoureux d\'une femme Na\'vi. Alors qu\'un lien avec elle grandit, il est entraîné dans une bataille pour la survie de son monde.', 'James Cameron', 'alien nature ecologie industrie colonialisme ', 'Avatar.jpg', 'lienfilmAvatar.infinity', 'lientrailerAvatar.infinity'),
(2, 'Cowboy Bebop', '1998-04-03', 'En 2071, l\'équipage du vaisseau spatial Bebop voyage dans le système solaire à la recherche de primes. Dans l\'argot de l\'époque, ces chasseurs de primes sont appelés « cowboys ». La plupart des épisodes tournent autour d\'une prime ; cependant, le centre de l\'histoire concerne le passé de chaque personnage et d\'anciens événements plus généraux, qui se connectent au fur et à mesure que la série progresse.', 'Shin\'ichirō Watanabe', 'comédie chasseur prime japon animation anime', 'CowboyBebop.jpg', '', ''),
(3, 'Goldorak', '1975-10-05', 'Vega, Grand Stratéguerre de la planète Stykadès, s\'empare d\'Euphor, une planète pacifique qu\'il va ravager avec sa flotte de soucoupes et de robots géants. Durant l\'attaque qui mènera à la destruction finale d\'Euphor, la famille royale est exterminée. Actarus, fils du roi et prince, parvient à s\'échapper après s\'être emparé de Goldorak, le plus perfectionné des robots mis au point par les scientifiques de la planète, et s\'enfuit vers la Terre.', 'Tomoharu Katsumata,', 'japon robot mecha animation anime', 'Goldorak.jpg', '', ''),
(4, 'Albator', '1978-03-14', 'En 29774, les Terriens nagent dans l’opulence. Ils ont envoyé des robots qui exploitent les ressources d\'autres planètes. Tout ce qui est récolté est distribué gratuitement à la population. Par le truchement de l\'abrutisseur mondio-visuel, les seigneurs bloquent les pensées d\'un peuple asservi. Dénué de pouvoir réflexif, celui-ci se croit heureux. Pourtant, une mystérieuse sphère noire, recouverte de glyphes inconnus, s\'écrase sur Terre. Alors que le gouvernement mondial se montre incapable de réagir, une menace extraterrestre se concrétise bientôt via les Sylvidres, femmes guerrières longilignes au teint verdâtre. Leurs exactions sont attribuées à Albator et à ses pirates ; pourtant, lui seul prend la menace au sérieux et s\'engage à les combattre.', 'Rintarō', 'japon animation pirate animation anime', 'Albator.jpg', '', ''),
(5, 'Ulysse 31', '1981-10-03', 'Au xxxie siècle, sur la base spatiale de Troienote 1, Ulysse discute avec Priam de son avenir. En effet, sur Terre les princes prétendants menacent la paix car Pénélope, femme d\'Ulysse, sera contrainte de choisir un nouvel époux parmi eux si celui-ci ne revient pas avant la prochaine comète.', 'Jean Chalopin', 'france japon voyage aventure anime', 'Ulysse31.jpg', '', ''),
(6, 'Star Trek Saison 1', '1966-09-08', 'La série Star Trek, se situant au xxiiie siècle, raconte les aventures de l\'équipage du vaisseau spatial USS Enterprise (NCC-1701) (« Entreprise » en VF) de la Fédération des planètes unies et notamment celles de son commandant, le capitaine James T. Kirk.\r\n\r\nLa mission de l\'Entreprise, d\'une durée de cinq ans, est d\'explorer la galaxie afin d\'y découvrir d\'autres formes de vie et de civilisations, pour ainsi enrichir les connaissances humaines.', 'Gene Roddenberry', 'etats unis amerique USA enterprise kirk', 'StarTrekS1.jpg', '', ''),
(7, 'Star Wars Episode IV', '1977-10-19', 'La guerre civile fait rage entre l\'Empire galactique et l\'Alliance rebelle. Capturée par les troupes de choc de l\'Empereur menées par le sombre et impitoyable Dark Vador, la princesse Leia Organa dissimule les plans de l\'Etoile Noire.', 'George Lucas', 'force espace robots rebelles', 'StarWarsIV.jpg', '', ''),
(8, 'Les Gardiens de la Galaxie', '2014-08-13', 'Peter Quill est un aventurier traqué par tous les chasseurs de primes pour avoir volé un mystérieux globe convoité par le puissant Ronan, dont les agissements menacent l\'univers tout entier. Lorsqu\'il découvre le véritable pouvoir de ce globe et la menace qui pèse sur la galaxie, il conclut une alliance fragile avec quatre extraterrestres disparates.', 'James Gunn', 'marvel equipe racoon groot comedie aventure', 'Gardiens1.jpg', '', ''),
(9, 'Valérian', '2017-07-26', 'Au XXVIIIe siècle, Valérian et Laureline forment une équipe d\'agents spatio-temporels chargés de maintenir l\'ordre dans les territoires humains. Mandaté par le ministre de la Défense, le duo part en mission sur l\'extraordinaire cité intergalactique Alpha.', 'Luc Besson', 'live action adaptation laureline ', 'Valerian.jpg', '', ''),
(10, 'La Stratégie d\'Ender', '2013-11-06', 'Depuis l\'attaque sanglante des Doryphores, qui a fait des millions de morts il y a 50 ans, l\'humanité se prépare à une nouvelle tentative d\'invasion extraterrestre en recrutant, parmi les enfants, ceux qui démontrent les plus grandes capacités. Andrew Wiggin est l\'un de ces enfants.', 'Gavin Hood', 'Enders Game adaptation espace flotte vaisseaux guerre', 'StrategieEnder.jpg', '', ''),
(11, 'Alien', '1979-09-12', 'Durant le voyage de retour d\'un immense cargo spatial en mission commerciale de routine, ses passagers, cinq hommes et deux femmes plongés en hibernation, sont tirés de leur léthargie dix mois plus tôt que prévu par Mother, l\'ordinateur de bord. Ce dernier a en effet capté dans le silence interplanétaire des signaux sonores, et suivant une certaine clause du contrat de navigation, les astronautes sont chargés de prospecter tout indice de vie dans l\'espace.', 'Ridley Scott', 'alien horreur ambiance', 'Alien.jpg', '', ''),
(12, 'Predator', '1987-08-19', 'Le major Dutch Schaeffer, spécialisé dans les opérations de commando, est chargé de délivrer trois civils américains retenus par des rebelles en Amérique latine.', 'John McTiernan', 'guerre alien horreur', 'Predator.jpg', '', ''),
(13, 'Les Tueurs de l\'espace', '1954-01-23', 'Après le crash d\'un avion qui survolait le site d\'un essai atomique, un des passagers, le Dr Doug Martin, réapparaît, amnésique mais indemne. Soumis à un interrogatoire, le scientifique révèle qu\'il a été capturé par des extraterrestres qui ont pour objectif de conquérir la Terre.', 'W. Lee Wilder', 'alien interrogatoire', 'TueursEspace.jpg', '', ''),
(14, 'Ad Astra', '2019-09-18', 'L\'astronaute Roy McBride s\'aventure jusqu\'aux confins du système solaire à la recherche de son père disparu et pour résoudre un mystère qui menace la survie de notre planète. Lors de son voyage, il sera confronté à des révélations mettant en cause la nature même de l\'existence humaine, et notre place dans l\'univers.', 'James Gray', 'test ad astra anticipation', 'AdAstra.jpg', '', ''),
(15, 'Seul sur Mars', '2015-10-21', 'Lors d\'une expédition sur Mars, l\'astronaute Mark Watney est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence. Mais Mark a survécu et il est désormais seul, sans moyen de repartir, sur une planète hostile.', 'Ridley Scott', 'survie mars isolation anticipation', 'SeulMars.jpg', '', ''),
(16, 'Elysium', '2013-08-14', 'En 2154, sur une Terre surpeuplée et dévastée, la population s\'entasse dans des bidonvilles, tentant d\'échapper à la violence d\'une société extrêmement inégalitaire. Les riches, eux, se sont réfugiés sur Elysium, une station spatiale ultra-moderne et luxueuse, où toutes les maladies sont devenus curables. Max, un homme ordinaire, est irradié au cours d\'une manipulation dans l\'usine où il travaille. En sursis, il cherche à se rendre sur Elysium afin d\'y être guéri.', 'Neill Blomkamp', 'dystopie futur station anticipation', 'Elysium.jpg', '', ''),
(17, 'Interstellar', '2014-11-05', 'Dans un proche futur, la Terre est devenue hostile pour l\'homme. Les tempêtes de sable sont fréquentes et il n\'y a plus que le maïs qui peut être cultivé, en raison d\'un sol trop aride. Cooper est un pilote, recyclé en agriculteur, qui vit avec son fils et sa fille dans la ferme familiale.', 'Christopher Nolan', 'futur espace temps trou noir anticipation', 'Interstellar.jpg', '', ''),
(18, 'Gravity', '2013-10-23', 'En mission à bord de la navette Explorer, l\'astronaute Matt Kowalski et la docteure Ryan Stone, experte en ingénierie médicale, sortent de l\'appareil afin d\'effectuer des réparations sur le télescope Hubble.', 'Alfonso Cuaron', 'present espace accident anticipation', 'Gravity.jpg', '', ''),
(19, 'Bienvenue a Gattaca', '1998-04-29', 'Dans un futur proche, notre société pratique l\'eugénisme à grande échelle : les gamètes des parents sont triés et sélectionnés afin de concevoir in vitro des enfants quasi parfaits. Malgré l\'interdiction officielle, les entreprises recourent à des tests ADN discrets afin de sélectionner leurs employés. Ainsi, les personnes conçues naturellement se voient reléguées à des tâches subalternes.', 'Andrew Niccol', 'dystopie futur anticipation', 'Gattaca.jpg', '', ''),
(20, 'Mars Attacks', '1996-12-13', 'Effervescence sur la planète Terre. Les petits bonshommes verts ont enfin décidé de nous rendre visite. Ils sont sur le point d\'atterrir dans leurs rutilantes soucoupes. La fièvre des grands jours s\'empare de l\'Amérique dans une comédie de science-fiction nostalgique des années cinquante.', 'Tim Burton', 'comedie aliens soucoupes', 'MarsAttacks.jpg', '', '');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `abonnements`
--
ALTER TABLE `abonnements`
  ADD CONSTRAINT `abonnements_ibfk_1` FOREIGN KEY (`clt_abo`) REFERENCES `compte_client` (`id_clt`);

--
-- Contraintes pour la table `cookies`
--
ALTER TABLE `cookies`
  ADD CONSTRAINT `cookies_ibfk_1` FOREIGN KEY (`clt_coo`) REFERENCES `compte_client` (`id_clt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
