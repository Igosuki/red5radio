-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 16, 2011 at 06:52 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `radioc`
--

-- --------------------------------------------------------

--
-- Table structure for table `approle`
--

CREATE TABLE IF NOT EXISTS `approle` (
  `username` varchar(16) NOT NULL,
  `authority` varchar(16) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `FKD0BB021765C3DEF3` (`authority`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approle`
--

INSERT INTO `approle` (`username`, `authority`) VALUES
('admin', 'ROLE_SUPERVISOR'),
('User', 'ROLE_USER'),
('allen', 'ROLE_SUPERVISOR'),
('gba', 'ROLE_USER'),
('Anotheruser', 'ROLE_USER'),
('AnotheUser2', 'ROLE_SUPERVISOR'),
('AnotherUser3', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE IF NOT EXISTS `appuser` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(36) NOT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `enabled` varchar(7) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='User Table' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`userid`, `username`, `password`, `firstname`, `lastname`, `email`, `enabled`, `id`) VALUES
(5, 'admin', 'fee9682a8f0587a3143369f94bf1cb6b', NULL, NULL, NULL, '1', 0),
(3, 'User', '09ea5e27db2ad175cd47c83a73e7f687', 'gg', 'ga', 'gg@rc.fr', '1', 0),
(4, 'allen', '74e07650ac66006f4e5e2c948ff63235', '', '', '', '1', 0),
(6, 'gba', '927bc6db8956c130ebcf564bc28d8597', 'Guillaume', '', '', '1', 0),
(7, 'Anotheruser', 'anotheruserpwd', 'User', 'UserName', 'username@provider.com', '1', NULL),
(8, 'AnotheUser2', 'guillaume', 'User2', 'User2', 'user2@rc.fr', '0', NULL),
(9, 'AnotherUser3', 'guillaume', '', '', '', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audio_media`
--

CREATE TABLE IF NOT EXISTS `audio_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id for index',
  `title` varchar(50) NOT NULL COMMENT 'Title of media',
  `private` tinyint(1) NOT NULL COMMENT 'Private or not',
  `path` varchar(255) NOT NULL COMMENT 'Path to file',
  `type` varchar(10) NOT NULL COMMENT 'Type of file',
  `emission` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `datemodif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datecreate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author` varchar(255) DEFAULT NULL,
  `blocked` bit(1) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `episodeNumber` int(11) DEFAULT NULL,
  `explicit` bit(1) DEFAULT NULL,
  `imgPath` varchar(255) DEFAULT NULL,
  `isClosedCaptioned` bit(1) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `pubDate` datetime DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `emission_id` bigint(20) NOT NULL,
  `accesskey` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `emission` (`emission`),
  KEY `type` (`type`),
  KEY `accessKey` (`accesskey`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `audio_media`
--

INSERT INTO `audio_media` (`id`, `title`, `private`, `path`, `type`, `emission`, `description`, `datemodif`, `datecreate`, `author`, `blocked`, `category`, `duration`, `episodeNumber`, `explicit`, `imgPath`, `isClosedCaptioned`, `keywords`, `pubDate`, `subtitle`, `emission_id`, `accesskey`) VALUES
(2, 'Concerto', 1, 'concerto/concerto', 'MP3', NULL, 'Un concerto pour piano', '2011-08-21 13:45:54', '2011-08-20 15:43:25', 'Mozart', b'0', 'Musique classique', NULL, 1, b'0', 'concerto.png', NULL, 'mozart,musique,classique', '2012-06-08 00:00:00', 'Concerto pour piano', 21, NULL),
(3, 'Concerto 2-2', 1, 'concerto/oboe', 'MP3', NULL, 'Concerto n°2', '2011-08-24 02:45:22', '2011-08-20 16:30:32', 'Mozart', b'0', 'Musique classique', '01:03:48', 2, b'0', '', NULL, 'mozart,musique,classique', '2013-03-08 00:00:00', 'Concerto pour piano 2', 21, NULL),
(4, 'Test', 0, 'livresjour/histoireart/1', 'MP3', NULL, '', '2011-10-02 14:23:34', '2011-10-02 14:22:25', '', b'0', '', NULL, NULL, b'0', '', NULL, '', '2011-10-02 02:21:00', 'Test', 32, NULL),
(5, 'Nouvel Episode', 0, 'livresjour/histoireart/1', 'MP3', NULL, '', '2011-10-03 22:37:24', '2011-10-03 22:37:24', 'Quelqu''un', b'0', 'Une catégorie', '01:03:07', NULL, b'0', '', NULL, 'Des mots clés', '2011-10-19 10:36:00', 'ST ', 32, '9481eb0907825937c59653e612ed6d19');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `category`
--


-- --------------------------------------------------------

--
-- Table structure for table `emissions`
--

CREATE TABLE IF NOT EXISTS `emissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `date_emission` timestamp NULL DEFAULT NULL,
  `datemodif` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datecreate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `themes` varchar(255) DEFAULT NULL,
  `podcastable` tinyint(1) NOT NULL,
  `category` varchar(128) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `emtime` time DEFAULT NULL,
  `weekday` varchar(128) DEFAULT NULL,
  `week` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `emissions`
--

INSERT INTO `emissions` (`id`, `name`, `date_emission`, `datemodif`, `datecreate`, `themes`, `podcastable`, `category`, `complete`, `keywords`, `summary`, `subtitle`, `title`, `emtime`, `weekday`, `week`) VALUES
(22, 'Les Livres du jour', '2011-10-01 22:06:58', '2011-10-01 22:24:31', '2011-10-01 22:06:58', '', 0, 'Les Livres du jour', 0, '', 'Emission philosophique où l?on traite des grandes questions religieuses, politiques,\r\néconomiques, des questions d?actualité qui méritent un traitement philosophique, et de la\r\nfaçon dont les progrès scientifiques, en biologie, en physique fondamentale ou en astronomie,\r\nchangent la manière même dont on peut penser la présence de l?homme au monde.\r\nCette émission a été créée le 24 janvier 2011 et remplace « Regard sur le monde », émission\r\ndirigée par le général Pierre-Marie Gallois, disparu le 23 août 2010.', '', 'Le Monde de la philosophie', NULL, 'Lundi', ''),
(23, 'Les Livres du jour', '2011-10-01 23:12:58', '2011-10-01 23:18:36', '2011-10-01 23:12:58', '', 0, '', 0, '', 'Emission consacrée à la défense et à la promotion de la francophonie.\r\nCette émission existe depuis plusieurs années.', '', 'Le français en partage', NULL, 'Lundi', ''),
(24, 'Les Livres du jour', '2011-10-01 23:18:43', '2011-10-01 23:19:48', '2011-10-01 23:18:43', '', 0, '', 0, '', 'Quentin Debray s''entretient avec des auteurs de romans à thématique psychologique, des\r\nauteurs de biographies, des historiens. Il accueille également des spécialistes, psychologues et\r\npsychiatres, qui ont travaillé sur des situations ou des sentiments fréquents, tels que l''anxiété,\r\nla solitude, la timidité. Des thématiques fondamentales, et qui relèvent de la recherche\r\nscientifique, peuvent être abordées, telles que la conscience, la mémoire, la représentation.\r\nCette émission a été créée le 3 mai 2010.', '', 'Psychologie et littérature', NULL, 'Lundi', ''),
(25, 'Les Livres du jour', '2011-10-01 23:19:51', '2011-10-01 23:20:32', '2011-10-01 23:19:51', '', 0, '', 0, '', 'L?émission comporte un entretien avec plusieurs invités autour d?un thème précis en relation\r\navec l?usage du français, une série d?informations brèves sur des événements linguistiques, et\r\nfinit par un jeu.\r\nCette émission, créée il y a plusieurs années par Jacques Lacant, a été reprise par Michel\r\nMourlet le 27 novembre 2006 et a changé de titre le 9 juillet 2007 (précédemment : « Langue\r\nfrançaise, joyau de notre patrimoine »).', '', 'Français, mon beau souci', NULL, 'Lundi', ''),
(26, 'Les Livres du jour', '2011-10-01 23:20:34', '2011-10-01 23:22:47', '2011-10-01 23:20:34', '', 0, '', 0, '', 'Chaque semaine, sont reçus des historiens, des écrivains, des personnalités. Les directrices\r\nd?émission utilisent leurs connaissances respectives pour mettre en valeur le thème et l?invité\r\ndans le souci d?enrichir leur auditoire.\r\nCette émission existe depuis plusieurs années.', '', 'Les mardis de la mémoire', NULL, 'Mardi', ''),
(27, 'Les Livres du jour', '2011-10-01 23:22:56', '2011-10-01 23:23:42', '2011-10-01 23:22:56', '', 0, '', 0, '', 'Emission parlée portant sur la musique.\r\nCette émission a été créée le 25 février 2009.', '', 'Art et magie de la musique', NULL, 'Mercredi', ''),
(28, 'Les Livres du jour', '2011-10-01 23:24:21', '2011-10-01 23:25:58', '2011-10-01 23:24:21', '', 0, '', 0, '', 'Emission d?actualité culturelle et présentant, autour d?une conversation avec une personnalité du\r\nmonde culturel, les nouveautés de la littérature et du spectacle.\r\nCette émission a été créée le 26 mai 2010.', '', 'Voix au chapitre', NULL, 'Mercredi', ''),
(29, 'Les Livres du jour', '2011-10-01 23:26:00', '2011-10-01 23:26:18', '2011-10-01 23:26:00', '', 0, '', 0, '', 'Emission couvrant l?actualité musicale (sorties de disques, de livres de musicographie ou de\r\nmusicologie), proposant des entretiens avec des personnalités du monde musical, ou\r\nconsacrée à la présentation de thèmes de réflexion esthétique, liés à la musique et à son\r\nhistoire.\r\nCette émission, créée il y a plusieurs année par Jean-Pierre Tardif, a été reprise par Jean-\r\nBernard Cahours d?Aspry depuis le 14 janvier 2008 (précédemment : « Musique et\r\npassion »).', '', 'Le florilège des arts', NULL, 'Mercredi', ''),
(30, 'Les Livres du jour', '2011-10-01 23:26:21', '2011-10-01 23:26:34', '2011-10-01 23:26:21', '', 0, '', 0, '', 'Cette émission invite les auteurs à présenter leurs dernières parutions dans les domaines\r\nlittéraire, artistique et philosophique.\r\nCette émission a été créée le 28 février 2007.', '', 'Au fil des pages', NULL, 'Mercredi', ''),
(31, 'Les Livres du jour', '2011-10-01 23:26:48', '2011-10-01 23:27:22', '2011-10-01 23:26:48', '', 0, '', 0, '', 'Cette émission, mettant en valeur les nouvelles parutions dans les domaines littéraire,\r\nhistorique, philosophique et artistique, est constituée autour d?un entretien avec l?auteur et\r\nillustrée de lectures de son texte.\r\nCette émission existe depuis la création de la radio, en 1987.', '', 'Les trésors en poche', NULL, 'Jeudi', ''),
(32, 'Les Livres du jour', '2011-10-01 23:27:27', '2011-10-01 23:28:11', '2011-10-01 23:27:27', '', 0, '', 0, '', 'Emission qui évoque un courant artistique, un bel édifice, une oeuvre d?art. Marie-Thérèse\r\nHablot invite parfois l?artiste lui-même : en somme, à chaque rendez-vous avec les auditeurs,\r\nun livre nous raconte une « histoire de l?art ».\r\nCette émission existe depuis plusieurs années.', '', 'Les histoires de l?art', NULL, 'Vendredi', ''),
(33, 'Les Livres du jour', '2011-10-01 23:28:17', '2011-10-01 23:28:43', '2011-10-01 23:28:17', '', 0, '', 0, '', 'Cette émission a pour but de présenter l?ensemble de la poésie française et internationale de\r\ntous les temps, en insistant néanmoins sur les poètes contemporains, par le moyen des livres et\r\ndes entretiens, en privilégiant la lecture des textes.\r\nCette émission, créée il y a plusieurs année par Pierre Dehaye, a été reprise par Jean\r\nDecellas et Pascal Payen-Appenzeller, puis par Jean Christaki de Germain et Pascal Payen-\r\nAppenzeller.', '', 'Promenade et flâneries aux Domaines de Poésie', NULL, 'Vendredi', ''),
(34, 'Les Livres du jour', '2011-10-01 23:28:49', '2011-10-01 23:32:18', '2011-10-01 23:28:49', '', 0, '', 0, '', 'Cette émission fait entendre la voix des meilleurs poètes du passé.\r\nCette émission, créée il y a plusieurs années par Pierre Dehaye, a été reprise par Jean\r\nDecellas et Pascal Payen-Appenzeller, puis par Jean Christaki de Germain et Pascal Payen-\r\nAppenzeller.', '', 'Promenade et flâneries aux Domaines de Poésie', NULL, 'Vendredi', ''),
(35, 'Libre journal du midi', '2011-10-01 23:32:25', '2011-10-01 23:34:13', '2011-10-01 23:32:25', '', 0, '', 0, '', 'C?est une émission qui compte trois séquences : 1°) actualité européenne, 2°) rencontre d?un\r\nauteur d?ouvrage historique, 3°) visite d?une exposition.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Jean-Paul Bled', NULL, 'Lundi', ''),
(36, 'Libre journal du midi', '2011-10-01 23:34:16', '2011-10-01 23:34:50', '2011-10-01 23:34:16', '', 0, '', 0, '', 'Cette émission porte principalement sur l?actualité religieuse et les questions de société.\r\nGénéralement trois invités, parfois plus, présentent leurs initiatives et commentent les thèmes\r\nabordés. L?émission accorde aussi une grande part aux livres publiés en relation avec ces\r\nthèmes.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Philippe Maxence', NULL, 'Lundi', ''),
(37, 'Libre journal du midi', '2011-10-01 23:34:58', '2011-10-01 23:35:24', '2011-10-01 23:34:58', '', 0, '', 0, '', 'Emission s?efforçant de promouvoir une renaissance des valeurs culturelles, civiques, morales\r\net spirituelles.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Michel de Rostolan', NULL, 'Lundi', ''),
(38, 'Libre journal du midi', '2011-10-01 23:35:40', '2011-10-01 23:45:52', '2011-10-01 23:35:40', '', 0, '', 0, '', 'Ce Libre Journal est le porte-parole des vieux soldats et des « oubliés de l?histoire ». Y sont\r\nmajoritairement traités les sujets liés aux conflits dans notre ex-empire et aux victimes de la\r\nguerre d?Algérie. Parmi celles-ci, la plus grande place est accordée aux harkis.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Roger Saboureau', NULL, 'Lundi', ''),
(39, 'Libre journal du midi', '2011-10-01 23:36:14', '2011-10-01 23:36:38', '2011-10-01 23:36:14', '', 0, '', 0, '', 'Propos qui amènent à réfléchir sur les préoccupations existentielles et philosophiques des\r\nartistes. Catholique, Philippe Lejeune travaille à l?ouverture aux différentes religions.\r\nCette émission existe depuis plusieurs années.', '', 'Propos d?atelier', NULL, 'Mardi', ''),
(40, 'Libre journal du midi', '2011-10-01 23:36:40', '2011-10-01 23:37:10', '2011-10-01 23:36:40', '', 0, '', 0, '', 'Ce Libre Journal présente l?actualité artistique et culturelle en mettant l?accent sur les\r\nhommes et les techniques.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des beaux-arts', NULL, 'Mardi', ''),
(41, 'Libre journal du midi', '2011-10-01 23:37:14', '2011-10-01 23:37:41', '2011-10-01 23:37:14', '', 0, '', 0, '', 'Jean Darnel s?attache à transmettre, au travers du spectacle de qualité, la beauté de la langue\r\nfrançaise parlée. Il reçoit régulièrement des sociétaires de la Comédie française, des\r\nmusiciens, des chanteurs lyriques (Jean Piat, Gisèle Casadessus, Michel Bouquet, etc.).\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal du spectacle', NULL, 'Mardi', ''),
(42, 'Libre journal du midi', '2011-10-01 23:37:43', '2011-10-01 23:39:39', '2011-10-01 23:37:43', '', 0, '', 0, '', 'Ce Libre Journal traite des grands problèmes de politique intérieure ou internationale. Sur le\r\nmode de la libre discussion, émission d?analyse et de réflexion.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de François de Sainte Marie', NULL, 'Mercredi', ''),
(43, 'Libre journal du midi', '2011-10-01 23:39:41', '2011-10-01 23:40:12', '2011-10-01 23:39:41', '', 0, '', 0, '', 'Emission traitant de l?actualité récente sur des thèmes politiques, économiques et culturels, à\r\npartir du témoignage de deux à trois invités.\r\nCette émission a été créée le 23 avril 2008.', '', 'Le Libre Journal de Thibaut de La Tocnaye', NULL, 'Mercredi', ''),
(44, 'Libre journal du midi', '2011-10-01 23:40:13', '2011-10-01 23:40:43', '2011-10-01 23:40:13', '', 0, '', 0, '', 'Cette émission se propose de présenter les livres récemment parus dans le domaine de la\r\nscience économique et de débattre des questions d?actualité économique et sociale.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des économistes', NULL, 'Mercredi', ''),
(45, 'Libre journal du midi', '2011-10-01 23:40:47', '2011-10-01 23:41:12', '2011-10-01 23:40:47', '', 0, '', 0, '', 'Emission consacrée aux grands dossiers de société sur le plan économique et démographique,\r\nainsi qu?à l?étude des grands événements internationaux de portée géopolitique.\r\nCette émission a été créée le 29 octobre 2008. Elle succédait à celle d?Alain Griotteray, qui\r\nvenait de disparaître.', '', 'Le Libre Journal d?Yves-Marie Laulan', NULL, 'Mercredi', ''),
(46, 'Libre journal du midi', '2011-10-01 23:41:14', '2011-10-01 23:43:28', '2011-10-01 23:41:14', '', 0, '', 0, '', 'Le Libre Journal du Cinéma présente l?actualité cinématographique (films, publications, etc.)\r\net reçoit diverses personnalités de la profession (Alexandre Astruc, Bertrand Tavernier, Pascal\r\nThomas, Françoise Arnoul, Jean Tulard, etc.).\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal du cinéma', NULL, 'Jeudi', ''),
(47, 'Libre journal du midi', '2011-10-01 23:43:31', '2011-10-01 23:44:07', '2011-10-01 23:43:31', '', 0, '', 0, '', 'Ce Libre Journal, consacré aux arts en général et aux arts plastiques en particulier, s?efforce\r\nde faire découvrir les artistes d?aujourd?hui et leurs oeuvres. Il présente les écrits sur l?art et les\r\névénements de la vie artistique.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal d?Aude de Kerros', NULL, 'Jeudi', ''),
(48, 'Libre journal du midi', '2011-10-01 23:44:18', '2011-10-01 23:44:43', '2011-10-01 23:44:18', '', 0, '', 0, '', 'Le propos de l?émission pourrait se synthétiser ainsi : « Du périple à l?aventure\r\ngéographique, donner un sens au voyage ». Elle donne la parole à des gens dont les métiers\r\nou les parcours ont nourri leur passion pour le voyage. Elle révèle les différentes approches du\r\nvoyage de ceux qui ont introduit une dimension géographique dans leur projet dès le départ,\r\nmais aussi des autres, qui ont peut-être fait de la géographie sans le savoir?\r\nCette émission a été créée le 21 juillet 2007.', '', 'Le Libre Journal des cultures et de l?exploration', NULL, 'Jeudi', ''),
(49, 'Libre journal du midi', '2011-10-01 23:44:46', '2011-10-01 23:45:10', '2011-10-01 23:44:46', '', 0, '', 0, '', 'Emission qui réunit des collectionneurs passionnés, éclairés, devenus des spécialistes dans des\r\ndomaines les plus divers, afin de faire vivre ou revivre un patrimoine historique, découvrant et\r\npréservant des savoirs d?hier et d?aujourd?hui.\r\nCette émission, créée il y a plusieurs années par Jean-Claude Montagné, a été reprise par\r\nNicolas Tikhobrazoff.', '', 'Le Libre Journal des collectionneurs', NULL, 'Jeudi', ''),
(50, 'Libre journal du midi', '2011-10-01 23:45:58', '2011-10-01 23:46:49', '2011-10-01 23:45:58', '', 0, '', 0, '', 'Le Libre Journal des Idées politiques reçoit des universitaires, des experts, pour analyser les\r\ngrandes idées politiques.\r\nCette émission, créée le 2 octobre 2003 par Henry de Lesquen, a été reprise par Max Lebrun\r\nle 21 décembre 2006.', '', 'Le Libre Journal des idées politiques', NULL, 'Vendredi', ''),
(51, 'Libre journal du midi', '2011-10-01 23:46:57', '2011-10-01 23:48:59', '2011-10-01 23:46:57', '', 0, '', 0, '', 'Ce Libre Journal a été fondé pour recevoir les patrons des maisons d?édition afin d?en faire\r\nl?historique et d?examiner les principales collections et les principaux titres qu?elles publient.\r\nCette émission, créée le 17 mai 1991 par Jean-Yves Dournon, éditeur, lexicographe, a été\r\nreprise par Jean-Paul Naddeo le 27 mai 2011.', '', 'Le Libre Journal des éditeurs', NULL, 'Vendredi', ''),
(52, 'Libre journal du midi', '2011-10-01 23:49:02', '2011-10-01 23:49:24', '2011-10-01 23:49:02', '', 0, '', 0, '', 'Le Libre Journal de l?identité a pour but de : défendre l?identité française ; la promouvoir et la\r\ndécouvrir à travers toutes ses expressions ; découvrir, si nécessaire, les cultures de nos\r\nvoisins. Il y est parfois question d?immigration, mais aussi de sujets plus culturels, comme la\r\nlittérature, le cinéma, la musique, l?histoire, la politique (actualité, législation, élections, partis\r\npolitiques, régionalismes), et la religion.\r\nCette émission a été créée le 8 février 2008.', '', 'Le Libre Journal de l?identité', NULL, 'Vendredi', ''),
(53, 'Libre journal du midi', '2011-10-01 23:49:48', '2011-10-01 23:50:06', '2011-10-01 23:49:48', '', 0, '', 0, '', 'Emission traitant des grandes questions familiales ? étapes jalonnant la vie de famille,\r\nrelations au sein de la famille, ou encore regards sociologiques sur la famille -, et de leurs\r\ncorollaires que sont les problèmes d?éducation.\r\nCette émission a été créée le 1er octobre 2010.', '', 'Le Libre Journal de la famille et de l?éducation', NULL, 'Vendredi', ''),
(54, 'Libre journal du midi', '2011-10-01 23:50:19', '2011-10-01 23:50:41', '2011-10-01 23:50:19', '', 0, '', 0, '', 'Emission généraliste traitant principalement de l?actualité littéraire et politique. Y sont\r\naccueillis de nombreuses associations et des personnalités diverses.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des Lycéens', NULL, 'Samedi', ''),
(55, 'Libre journal du midi', '2011-10-01 23:50:44', '2011-10-01 23:51:08', '2011-10-01 23:50:44', '', 0, '', 0, '', 'Ce Libre journal traite de culture dans son acception la plus large, ainsi que de sujets\r\nconsacrés à l?art de vivre. Deux univers sont formellement bannis de cet espace, la politique et\r\nl?économie.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des Lycéens', NULL, 'Samedi', ''),
(56, 'Libre journal du midi', '2011-10-01 23:51:17', '2011-10-01 23:51:35', '2011-10-01 23:51:17', '', 0, '', 0, '', 'Emission politique et culturelle, organisée autour d''un entretien avec un ou deux invités et de\r\nchroniques régulières (cinéma, littérature, bandes dessinées, musique...).\r\nCette émission existe depuis plusieurs années. Elle a été reprise par Romain Lecap le\r\n14 février 2009.', '', 'Le Libre Journal des Lycéens', NULL, 'Samedi', ''),
(57, 'Libre journal du midi', '2011-10-01 23:51:39', '2011-10-01 23:52:49', '2011-10-01 23:51:39', '', 0, '', 0, '', 'Un oeil neuf, indépendant et jeune sur l?actualité économique, politique et culturelle. Hugues\r\nSérapion, membre de la société civile, qui, depuis des années, pratique une activité\r\nradiophonique bénévole, apporte un éclairage libre sur les thèmes qu?il aborde.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des Lycéens', NULL, 'Samedi', ''),
(58, 'Libre journal du midi', '2011-10-01 23:53:01', '2011-10-01 23:53:22', '2011-10-01 23:53:01', '', 0, '', 0, '', '« Mes émissions sont centrées sur la connaissance de l?histoire moderne et contemporaine et\r\nsur la géopolitique. » (F.-G. Dreyfus).\r\nCette émission a été créée le 4 mars 2007.', '', 'Le Libre Journal de François-Georges Dreyfus', NULL, 'Dimanche', ''),
(59, 'Libre journal du midi', '2011-10-01 23:53:25', '2011-10-01 23:53:43', '2011-10-01 23:53:25', '', 0, '', 0, '', 'Ce Libre Journal a pour but d?approfondir les débats religieux contemporains, notamment\r\nsous l?angle théologique.\r\nCette émission a été créée le 11 mars 2007.', '', 'Le Libre journal de Denis Sureau', NULL, 'Dimanche', ''),
(60, 'Libre journal du midi', '2011-10-01 23:53:49', '2011-10-01 23:54:13', '2011-10-01 23:53:49', '', 0, '', 0, '', 'Richesses et actualités de la tradition.\r\nCette émission a été créée le 28 octobre 2007.', '', 'Le Libre Journal de Philippe Pichot-Bravard', NULL, 'Dimanche', ''),
(61, 'Libre journal du midi', '2011-10-01 23:54:17', '2011-10-01 23:54:37', '2011-10-01 23:54:17', '', 0, '', 0, '', 'Ce Libre Journal aborde les principales questions liées à l?exercice de la médecine, ainsi qu?à\r\nl?éthique médicale.\r\nCette émission a été créée le 25 mars 2007.', '', 'Le Libre Journal de Jean-Pierre Dickès', NULL, 'Dimanche', ''),
(62, 'Libre journal du soir', '2011-10-01 23:54:43', '2011-10-01 23:55:27', '2011-10-01 23:54:43', '', 0, '', 0, '', 'Le Libre Journal du lundi soir traite des grandes questions de l?actualité politique et\r\nculturelle, en donnant la parole à d?éminentes personnalités qui font honneur à la pensée\r\nfrançaise. Il est ouvert aux points de vue des hommes politiques des diverses familles de la\r\ndroite française. Il ne se prive pas, non plus, d?évoquer les sujets historiques, artistiques ou\r\nphilosophiques les plus variés, quand des travaux récents leur apportent un éclairage nouveau.\r\nLe style de cette émission est celui d?une disputatio courtoise.\r\nCette émission a été créée le 23 octobre 2006. Elle succédait à celle de Jean Ferré, fondateur\r\nde Radio Courtoisie, qui venait de disparaître.', '', 'Le Libre Journal d?Henry de Lesquen', NULL, 'Lundi', ''),
(63, 'Libre journal du soir', '2011-10-01 23:55:36', '2011-10-01 23:56:00', '2011-10-01 23:55:36', '', 0, '', 0, '', 'Entretiens politiques, littéraires et philosophiques. Alain Cotta a succédé à Philippe\r\nde Saint Robert, qui avait reçu notamment Maurice Schumann, Alain Peyrefitte, Alain\r\nDecaux, François d?Orcival, Hervé Bourges...\r\nCette émission sera créée le 6 septembre 2011.', '', 'Le Libre Journal d?Alain Cotta', NULL, 'Mardi', ''),
(64, 'Libre journal du soir', '2011-10-01 23:56:03', '2011-10-01 23:56:22', '2011-10-01 23:56:03', '', 0, '', 0, '', 'Le Libre Journal des historiens a pour vocation de rendre compte de l?actualité historique\r\n(publications, commémorations) dans un esprit d?ouverture aux diverses lectures du passé, en\r\nsollicitant l?intervention d?universitaires et de spécialistes.\r\nCette émission, crée il y a plusieurs années par Bernard Lugan, a été reprise par Philippe\r\nConrad. Elle a changé de titre le 28 juin 2007.', '', 'Le Libre Journal des historiens', NULL, 'Mardi', ''),
(65, 'Libre journal du soir', '2011-10-01 23:56:25', '2011-10-01 23:56:46', '2011-10-01 23:56:25', '', 0, '', 0, '', 'Initialement, espace de libre expression créé pour ceux qui avaient contribué à la défense de la\r\nradio libre dans les années quatre-vingt. Aujourd?hui, Libre Journal généraliste où sont\r\nabordés des sujets divers, tels que les nouvelles technologiques, l?ouverture sur le monde et la\r\ndéfense de la francophonie.\r\nCette émission, dirigée précédemment par Yannick Urrien, existe depuis la création de\r\nRadio Courtoisie, en 1987.', '', 'Le Libre Journal des pionniers de la radio libre', NULL, 'Mardi', ''),
(66, 'Libre journal du soir', '2011-10-01 23:57:02', '2011-10-01 23:57:17', '2011-10-01 23:57:02', '', 0, '', 0, '', 'Ce Libre Journal aborde toutes les questions qui tournent autour de la dépense publique, de la\r\nfiscalité, de l?économie, en accueillant des hommes politiques, des économistes, des\r\njournalistes et des auteurs d?ouvrages dont le thème se rapproche des préoccupations du\r\ncontribuable.\r\nCette émission a été créée le 26 décembre 2006.', '', 'Le Libre Journal des contribuables', NULL, 'Mardi', ''),
(67, 'Libre journal du soir', '2011-10-01 23:57:20', '2011-10-01 23:58:00', '2011-10-01 23:57:20', '', 0, '', 0, '', 'Emission en deux parties. 1°) répliques à l?actualité dans les domaines de la vie politique,\r\nsociale et culturelle ; 2°) analyse d?une question de fond dans les domaines géopolitiques,\r\nidéologiques, culturels et religieux.\r\nCette émission a été créée le 10 octobre 2007. Elle succédait à celle de Serge de Beketch, qui\r\nvenait de disparaître.', '', 'Le Libre Journal de la résistance française', NULL, 'Mercredi', ''),
(68, 'Libre journal du soir', '2011-10-01 23:58:05', '2011-10-01 23:58:27', '2011-10-01 23:58:05', '', 0, '', 0, '', 'Trois plateaux d?invités évoquent successivement la politique, l?actualité nationale et\r\ninternationale, la culture et le patrimoine. Vivant et rythmé, ce Libre Journal offre de\r\nnombreux rendez-vous : la revue de presse, la brève d?information, les découvertes musicales,\r\nl?espace de démocratie directe, avec la lecture de tous les messages des auditeurs.\r\nCette émission a été créée le 18 janvier 2007.', '', 'Le Libre Journal de la résistance française', NULL, 'Mercredi', ''),
(69, 'Libre journal du soir', '2011-10-01 23:58:32', '2011-10-01 23:58:50', '2011-10-01 23:58:32', '', 0, '', 0, '', 'Cercle de la presse nationaliste et thèmes d?actualité traités autour d?un ou plusieurs invités.\r\nCette émission a été créée le 7 mai 2008.', '', 'Le Libre Journal de la résistance française', NULL, 'Mercredi', ''),
(70, 'Libre journal du soir', '2011-10-01 23:58:56', '2011-10-01 23:59:23', '2011-10-01 23:58:56', '', 0, '', 0, '', 'Emission d?information générale (politique, spectacles, finance, gastronomie, entretiens avec\r\ndes écrivains, romanciers, essayistes, journalistes, scientifiques, etc.) et de commentaires sur\r\nla vie associative, l?Europe et la tradition catholique.\r\nCette émission a été créée le 23 janvier 2008.', '', 'Le Libre Journal de la résistance française', NULL, 'Mercredi', ''),
(71, 'Libre journal du soir', '2011-10-01 23:59:30', '2011-10-01 23:59:52', '2011-10-01 23:59:30', '', 0, '', 0, '', 'Cette émission a deux volets. Le premier offre des commentaires des événements politiques et\r\nhistoriques ; le second traite l?actualité culturelle et religieuse : commentaires et informations.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Claude Giraud', NULL, 'Jeudi', ''),
(72, 'Libre journal du soir', '2011-10-01 23:59:54', '2011-10-02 00:04:56', '2011-10-01 23:59:54', '', 0, '', 0, '', 'Emission traitant d?actualité. Y sont présentées les dernières parutions (livres, revues, articles)\r\ndans les domaines politiques, juridiques et culturels. Catherine Rouvier a reçu Xavier Darcos,\r\nChristine Boutin, Salomé Zourabichvili (ancien ambassadeur de France), le général\r\nde La Maisonneuve, Frédéric Rouvillois, etc.\r\nCette émission a été créée le 9 mars 2007.', '', 'Le Libre Journal de Catherine Rouvier', NULL, 'Jeudi', ''),
(73, 'Libre journal du midi', '2011-10-02 00:00:21', '2011-10-02 00:04:34', '2011-10-02 00:00:21', '', 0, '', 0, '', 'Actualités et débats catholiques.\r\nCette émission a été créée le 17 octobre 2007.', '', 'Le Libre Journal de Daniel Hamiche', NULL, 'Jeudi', ''),
(74, 'Libre journal du soir', '2011-10-02 00:00:50', '2011-10-02 00:01:22', '2011-10-02 00:00:50', '', 0, '', 0, '', 'Libres commentaires de l?actualité politique, religieuse et culturelle.\r\nCette émission a été créée le 12 septembre 2008.', '', 'Le Libre Journal de Jacques Trémolet de Villers', NULL, 'Jeudi', ''),
(75, 'Libre journal du soir', '2011-10-02 00:05:04', '2011-10-02 00:05:24', '2011-10-02 00:05:04', '', 0, '', 0, '', 'Le Libre Journal des artisans invite des professionnels à présenter leur métier et traite de la\r\nculture ouvrière, des problèmes du travail et de l?organisation des métiers. Cette émission a\r\naussi pour but de faire connaître et de transmettre un savoir et des traditions du passé.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des artisans', NULL, 'Vendredi', ''),
(76, 'Libre journal du soir', '2011-10-02 00:05:26', '2011-10-02 00:05:46', '2011-10-02 00:05:26', '', 0, '', 0, '', 'Emission culturelle axée sur le respect de la personne humaine. Jean-Marie Le Méné reçoit\r\ndes écrivains ou des associations traitant de tous sujets liés aux questions morales et éthiques.\r\nCette émission a été créée le 12 décembre 2006.', '', 'Le Libre Journal de Jean-Marie Le Méné', NULL, 'Vendredi', ''),
(77, 'Libre journal du soir', '2011-10-02 00:05:53', '2011-10-02 00:06:12', '2011-10-02 00:05:53', '', 0, '', 0, '', 'Emission exclusivement littéraire très variée invitant des écrivains (souvent académiciens)\r\npour présenter leurs dernières publications. Annonces de congrès ou colloques, avec leurs\r\nprogrammes. Alain Lanavère invite et interroge des romanciers, essayistes et critiques\r\ncontemporains, qui tous illustrent la vie littéraire.\r\nCette émission, créée en 1987 par Brigitte Level, présidente d?honneur de la Société des\r\npoètes français, a été reprise le 21 novembre 2008 par Pierre Brunel, puis le 20 novembre\r\n2009 par Alain Lanavère, qui dirigeait, depuis le 12 décembre 2007, « Plaisir de lecture ».', '', 'Le Libre Journal des belles-lettres', NULL, 'Vendredi', ''),
(78, 'Libre journal du soir', '2011-10-02 00:06:15', '2011-10-02 00:06:48', '2011-10-02 00:06:15', '', 0, '', 0, '', 'Le Libre Journal des sciences répond à la demande de nombreux auditeurs qui souhaitent être\r\ninformés des avancées scientifiques. C?est donc une émission de vulgarisation, qui doit mettre\r\ndes connaissances souvent difficiles d?accès à la portée du grand public cultivé. Elle a pour\r\nvocation de recevoir des savants éminents, pour qu?ils parlent de leur discipline et de leurs\r\ntravaux.\r\nCette émission a été créée le 18 mai 2007.', '', 'Le Libre Journal des sciences', NULL, 'Vendredi', ''),
(79, 'Libre journal du soir', '2011-10-02 00:06:51', '2011-10-02 00:07:16', '2011-10-02 00:06:51', '', 0, '', 0, '', 'C?est une émission d?analyse et de réflexion sur les grands problèmes contemporains.\r\nRencontres non conformistes et sans démagogie avec les acteurs et les auteurs dont l?esprit\r\nmarque notre temps. Récits relatant la jeunesse des compositeurs et des grands interprètes.\r\nComme dans les meilleurs salons des siècles passés, rencontres musicales avec les artistes et\r\nles créateurs.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des auditeurs et des musiciens', NULL, 'Dimanche', ''),
(80, 'Libre journal de la nuit', '2011-10-02 00:07:20', '2011-10-02 00:07:41', '2011-10-02 00:07:20', '', 0, '', 0, '', 'Emission culturelle ouverte à la fois aux lettres et aux sciences, tournant résolument le dos à\r\nl?opposition lettres/sciences, très accentuée aujourd?hui. Orientations thématiques : la\r\nlittérature française, européenne et mondiale, sans distinction entre classiques et modernes ;\r\nles sciences, et plus particulièrement la médecine, croisant les problèmes de société (hôpital,\r\nchirurgie esthétique, etc.) ; l?histoire, en commentant les grandes dates ; la justice, en narrant\r\nles grands procès.\r\nCette émission a été créée le 16 octobre 2007.', '', 'Le Libre Journal de Lydwine Helly', NULL, 'Mardi', ''),
(81, 'Libre journal de la nuit', '2011-10-02 00:07:44', '2011-10-02 14:18:10', '2011-10-02 00:07:44', '', 0, '', 0, '', 'Interprétations d?oeuvres littéraires, théâtrales et opératiques.\r\nCette émission a été créée par Vincent Beurtheret le 9 octobre 2007 et reprise le 3 mars 2009\r\npar Yves Tarantik.', '', 'Les tréteaux de la France courtoise', NULL, 'Mardi', ''),
(82, 'Libre journal de la nuit', '2011-10-02 00:08:07', '2011-10-02 00:08:27', '2011-10-02 00:08:07', '', 0, '', 0, '', 'Les trois volets de l?émission s?articulent autour de l?Europe :\r\n1) l?actualité politique et géopolitique est traitée avec des chroniqueurs ;\r\n2) le spécialiste d?un pays, pas forcément européen, développe et argumente la relation entre\r\nle pays en question et l?Europe ;\r\n3) présentation des actualités culturelles européennes : expositions, traductions de livres,\r\ncinéma, etc.\r\nCette émission a été créée le 23 octobre 2007.', '', 'Le Libre Journal de la Vieille Europe', NULL, 'Mardi', ''),
(83, 'Libre journal de la nuit', '2011-10-02 00:08:31', '2011-10-02 00:08:44', '2011-10-02 00:08:31', '', 0, '', 0, '', 'Débats sur les questions de l?heure, en toute liberté d?esprit.\r\nCette émission a été créée le 30 octobre 2007.', '', 'Le Libre Journal des enjeux actuels', NULL, 'Mardi', ''),
(84, 'Libre journal de la nuit', '2011-10-02 00:08:45', '2011-10-02 00:09:17', '2011-10-02 00:08:45', '', 0, '', 0, '', 'Le Libre Journal de Paul-Marie Coûteaux se propose d?illustrer, à mesure de l?actualité, la\r\nvitalité de la pensée et de la civilisation française, sur le ton de la conversation feutrée qui\r\nconvient à l?heure tardive de sa diffusion.\r\nCette émission a été créée le 10 janvier 2007.', '', 'Le Libre Journal de Paul-Marie Coûteaux', NULL, 'Mercredi', ''),
(85, 'Bulletin de réinformation', '2011-10-02 00:10:07', '2011-10-02 13:27:34', '2011-10-02 00:10:07', '', 0, '', 0, '', 'Le bulletin de réinformation donne les trois nouvelles majeures du jour, suivies de six à huit\r\nbrèves et d?un tour d?horizon international. Cette émission « à 360 degrés » met l?actualité en\r\nperspective en décryptant la "feuilletonisation" des événements et les emballements\r\nmédiatiques. Elle replace les faits dans le contexte qui leur donne du sens.\r\nLes "réinformateurs" utilisent une grande pluralité de sources : les grands media français ; la\r\npresse étrangère ; la presse française indépendante et les sites Internet d?analyse et de\r\nréinformation ; enfin, un réseau de correspondants apportant leur expertise sur certains sujets\r\nou certains pays, véritable "équipe d?appui".\r\nCette émission a été créée le 7 novembre 2007, à l?occasion du XXe anniversaire de\r\nRadio Courtoisie.', '', 'Le bulletin de réinformation', NULL, 'Lundi,Mardi,Mercredi,Jeudi,Vendredi', 'A,B,C,D'),
(86, 'Lumière de l''espérance', '2011-10-02 00:12:06', '2011-10-02 00:13:31', '2011-10-02 00:12:06', '', 0, '', 0, '', 'Chercher à rassembler les éléments qui permettent de mieux apprécier les saints ou\r\nbienheureux qui figurent au catalogue de l?Eglise catholique.\r\nCette émission existe depuis la création de Radio Courtoisie, en novembre 1987, et continue\r\nd?être diffusée après la mort de Louis de Beaumont, le 17 avril 2011.', '', 'Le Saint du jour', NULL, 'Dimanche', ''),
(87, 'Lumière de l''espérance', '2011-10-02 00:13:35', '2011-10-02 00:14:02', '2011-10-02 00:13:35', '', 0, '', 0, '', 'L?émission a pour but de faire entendre du chant grégorien essentiellement, excluant la\r\npolyphonie. Elle présente les chants de la messe du dimanche, ainsi que de l?office, ou bien\r\nencore d?une fête de la semaine suivante, d?un kyriale, d?un credo, etc. Un court commentaire\r\nexplique l?origine de ces pièces, développe leur texte, et dit de quelle façon la mélodie\r\nl?exprime. C?est une véritable formation liturgique qui est ainsi dispensée à travers « la prière\r\nchantée de l?Eglise ».\r\nCette émission a été créée le dimanche 8 novembre 1987, dès le début de Radio Courtoisie.', '', 'Chant grégorien', NULL, 'Dimanche', ''),
(88, 'Lumière de l''espérance', '2011-10-02 00:14:25', '2011-10-02 00:15:41', '2011-10-02 00:14:25', '', 0, '', 0, '', 'Cette émission existe depuis la création de Radio Courtoisie, en 1987.', '', 'Le Libre Journal des scouts', NULL, 'Dimanche', ''),
(89, 'Lumière de l''espérance', '2011-10-02 00:15:47', '2011-10-02 00:16:13', '2011-10-02 00:15:47', '', 0, '', 0, '', 'Sous forme d?entretiens avec un ou plusieurs invités, ce Libre Journal des Scouts a pour\r\nvocation, dans une perspective chrétienne, d?ouvrir les esprits, notamment celui des jeunes,\r\nsur des sujets liés à l?éducation, la culture, la jeunesse, la société, et de leur apporter ainsi une\r\nnouvelle matière à réflexion.', '', 'Le Libre Journal des scouts', NULL, 'Dimanche', ''),
(90, 'Lumière de l''espérance', '2011-10-02 00:16:14', '2011-10-02 00:16:42', '2011-10-02 00:16:14', '', 0, '', 0, '', 'Le but de cette émission est de traiter de l?aventure des pionniers et des explorateurs, de ceux\r\nqui furent des « éclaireurs ». Expliquer aux plus jeunes que l?aventure n?appartient pas\r\nseulement au rêve, mais qu?elle est accessible à tous.', '', 'Le Libre Journal des scouts', NULL, 'Dimanche', ''),
(91, 'Lumière de l''espérance', '2011-10-02 00:16:44', '2011-10-02 00:17:13', '2011-10-02 00:16:44', '', 0, '', 0, '', 'Ce Libre Journal des scouts a pour objet d?apporter des témoignages, des sujets de réflexion,\r\ndes sujets scouts en rapport avec l?idéal scout, à l?adresse des scouts en particulier, et de la\r\njeunesse en général.', '', 'Le Libre Journal des scouts', NULL, 'Dimanche', ''),
(92, 'Lumière de l''espérance', '2011-10-02 00:17:17', '2011-10-02 00:17:43', '2011-10-02 00:17:17', '', 0, '', 0, '', 'Présentation de la musique religieuse de qualité, d?inspiration biblique, dans le respect des\r\ntemps liturgiques. Faire découvrir des oeuvres et des compositeurs peu ou mal connus.\r\nCette émission existe depuis la création de Radio Courtoisie, en 1987.', '', 'Images bibliques', NULL, 'Dimanche', ''),
(93, 'Emissions musicales', '2011-10-02 00:19:10', '2011-10-02 00:20:14', '2011-10-02 00:19:10', '', 0, '', 0, '', 'Musique lyrique française, religieuse ou profane, grave ou légère.\r\nCette émission existe depuis plusieurs années.', '', 'Musique lyrisque française', NULL, 'Dimanche', ''),
(94, 'Emissions musicales', '2011-10-02 00:20:22', '2011-10-02 00:20:54', '2011-10-02 00:20:22', '', 0, '', 0, '', 'Emission musicale divisée en trois séquences :\r\n1) : à 21 h 00 (ou 21 h 15), « Discothèque pour connaisseurs et amateurs », diffusion\r\nd?enregistrements rares et historiques de grandes oeuvres. Séquence d?une heure rediffusée le\r\nsamedi à 23 h 00 ;\r\n2) : à 22 h 00 (ou 22 h 15), « Grands interprètes » ;\r\n3) : à 23 h 00, « Merveilles du piano », présentation et illustration d?un grand pianiste.', '', 'Soirée musicale à thème', NULL, 'Lundi', ''),
(95, 'Archives de Radio Courtoisie', '2011-10-02 00:24:46', '2011-10-02 00:25:10', '2011-10-02 00:24:46', '', 0, '', 0, '', 'Rediffusion de l?émission créée et dirigée par Pierre Debray-Ritzen.', '', 'L''art littéraire', NULL, 'Lundi', ''),
(96, 'Archives de Radio Courtoisie', '2011-10-02 00:25:14', '2011-10-02 00:26:12', '2011-10-02 00:25:14', '', 0, '', 0, '', 'Rediffusion de l?émission créée et dirigée par Jacques Lacant, professeur émérite à\r\nl?Université de Paris X. Véritable cours de langue française. Jacques Lacant répond aux\r\nquestions des auditeurs. La grammaire, la conjugaison, l?orthographe, l?étymologie et la\r\nlinguistique y sont traitées avec un grand savoir.', '', 'Langue française, joyau de notre patrimoine', NULL, 'Lundi', ''),
(97, 'Archives de Radio Courtoisie', '2011-10-02 00:26:15', '2011-10-02 00:26:40', '2011-10-02 00:26:15', '', 0, '', 0, '', 'Rediffusion de l?émission créée et dirigée par Pierre Chaunu.', '', 'Les mardis de la mémoire', NULL, 'Mardi', '');

-- --------------------------------------------------------

--
-- Table structure for table `emis_interv`
--

CREATE TABLE IF NOT EXISTS `emis_interv` (
  `id_emission` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  PRIMARY KEY (`id_intervenant`,`id_emission`),
  KEY `id_emission` (`id_emission`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emis_interv`
--

INSERT INTO `emis_interv` (`id_emission`, `id_intervenant`) VALUES
(22, 92),
(23, 81),
(24, 39),
(25, 69),
(26, 32),
(26, 71),
(27, 23),
(28, 87),
(31, 28),
(32, 49),
(33, 72),
(34, 30),
(35, 25),
(36, 67),
(37, 77),
(38, 79),
(39, 62),
(40, 52),
(41, 37),
(42, 80),
(43, 54),
(44, 45),
(45, 56),
(46, 36),
(47, 53),
(48, 20),
(49, 89),
(50, 59),
(51, 70),
(52, 26),
(53, 31),
(54, 61),
(55, 22),
(56, 60),
(57, 83),
(58, 41),
(59, 85),
(60, 74),
(61, 40),
(62, 63),
(63, 34),
(65, 43),
(66, 86),
(67, 19),
(68, 24),
(69, 75),
(70, 65),
(71, 46),
(72, 78),
(73, 50),
(74, 90),
(75, 47),
(76, 57),
(77, 55),
(78, 66),
(79, 76),
(80, 51),
(81, 88),
(82, 73),
(84, 35),
(85, 58),
(86, 93),
(87, 21),
(88, 38),
(88, 84),
(89, 44),
(90, 82),
(91, 42),
(92, 91),
(93, 68),
(95, 94),
(96, 95),
(97, 96);

-- --------------------------------------------------------

--
-- Table structure for table `emis_intervsuppl`
--

CREATE TABLE IF NOT EXISTS `emis_intervsuppl` (
  `id_emission` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  PRIMARY KEY (`id_intervenant`,`id_emission`),
  KEY `id_emission` (`id_emission`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emis_intervsuppl`
--

INSERT INTO `emis_intervsuppl` (`id_emission`, `id_intervenant`) VALUES
(81, 28);

-- --------------------------------------------------------

--
-- Table structure for table `emis_media`
--

CREATE TABLE IF NOT EXISTS `emis_media` (
  `id_media` int(11) NOT NULL,
  `id_emission` int(11) NOT NULL,
  PRIMARY KEY (`id_media`),
  KEY `id_emission` (`id_emission`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emis_media`
--


-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequences`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequences`
--

INSERT INTO `hibernate_sequences` (`sequence_name`, `sequence_next_hi_value`) VALUES
('emissions', 2);

-- --------------------------------------------------------

--
-- Table structure for table `intervenants`
--

CREATE TABLE IF NOT EXISTS `intervenants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `datemodif` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datecreate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `intervenants`
--

INSERT INTO `intervenants` (`id`, `name`, `email`, `datemodif`, `datecreate`) VALUES
(19, 'Antony Bernard', NULL, '2011-09-25 23:40:11', '2011-09-25 23:40:11'),
(20, 'Archambeau Hervé', NULL, '2011-09-25 23:40:24', '2011-09-25 23:40:24'),
(21, 'Banken Patrick', NULL, '2011-09-25 23:40:34', '2011-09-25 23:40:34'),
(22, 'Bertin Salsa', NULL, '2011-09-25 23:40:41', '2011-09-25 23:40:41'),
(23, 'Beurtheret Vincent', NULL, '2011-09-25 23:40:51', '2011-09-25 23:40:51'),
(24, 'Bild Martial', NULL, '2011-09-25 23:40:58', '2011-09-25 23:40:58'),
(25, 'Bled Jean-Paul', NULL, '2011-09-25 23:41:17', '2011-09-25 23:41:17'),
(26, 'Bouclay Pierre-Alexandre', NULL, '2011-09-25 23:41:26', '2011-09-25 23:41:26'),
(27, 'Bouzard Thierry', NULL, '2011-09-25 23:41:35', '2011-09-25 23:41:35'),
(28, 'Brassié Anne', NULL, '2011-09-25 23:41:44', '2011-09-25 23:41:44'),
(29, 'Cahours d''Aspry Jean-Bernard', NULL, '2011-09-25 23:41:56', '2011-09-25 23:41:56'),
(30, 'Christaki de Germain Jean', NULL, '2011-09-25 23:42:06', '2011-09-25 23:42:06'),
(31, 'Cluzel Gabrielle', NULL, '2011-09-25 23:42:15', '2011-09-25 23:42:15'),
(32, 'Collin Anne', NULL, '2011-09-25 23:42:22', '2011-09-25 23:42:22'),
(33, 'Conrad Philippe', NULL, '2011-09-25 23:42:30', '2011-09-25 23:42:30'),
(34, 'Cotta Alain', NULL, '2011-09-25 23:42:36', '2011-09-25 23:42:36'),
(35, 'Coûteaux Paul-Marie', NULL, '2011-09-25 23:42:48', '2011-09-25 23:42:48'),
(36, 'd''Hugues Philippe', NULL, '2011-09-25 23:42:58', '2011-09-25 23:42:58'),
(37, 'Darnel Jean', NULL, '2011-09-25 23:43:07', '2011-09-25 23:43:07'),
(38, 'De Jaeghere Marie-Amélie', NULL, '2011-09-25 23:43:16', '2011-09-25 23:43:16'),
(39, 'Debray Quentin', NULL, '2011-09-25 23:43:24', '2011-09-25 23:43:24'),
(40, 'Dickès Jean-Pierre', NULL, '2011-09-25 23:43:36', '2011-09-25 23:43:36'),
(41, 'Dreyfus François-Georges', NULL, '2011-09-25 23:43:51', '2011-09-25 23:43:51'),
(42, 'Fontaine Rémi', NULL, '2011-09-25 23:43:58', '2011-09-25 23:43:58'),
(43, 'Fouquereau Henri', NULL, '2011-09-25 23:44:06', '2011-09-25 23:44:06'),
(44, 'Fournier Capucine', NULL, '2011-09-25 23:44:14', '2011-09-25 23:44:14'),
(45, 'Garello Jacques', NULL, '2011-09-25 23:44:21', '2011-09-25 23:44:21'),
(46, 'Giraud Claude', NULL, '2011-09-25 23:44:29', '2011-09-25 23:44:29'),
(47, 'Guillemaind Benjamin', NULL, '2011-09-25 23:44:38', '2011-09-25 23:44:38'),
(48, 'Guyot-Jeannin Arnaud', NULL, '2011-09-25 23:44:51', '2011-09-25 23:44:51'),
(49, 'Hablot Marie-Thérèse', NULL, '2011-09-25 23:45:01', '2011-09-25 23:45:01'),
(50, 'Hamiche Daniel', NULL, '2011-09-25 23:45:13', '2011-09-25 23:45:13'),
(51, 'Helly Lydwine', NULL, '2011-09-25 23:45:23', '2011-09-25 23:45:23'),
(52, 'Icart Françoise', NULL, '2011-09-25 23:45:31', '2011-09-25 23:45:31'),
(53, 'de Kerros Aude ', NULL, '2011-09-25 23:45:45', '2011-09-25 23:45:45'),
(54, 'de La Tocnaye Thibaut', NULL, '2011-09-25 23:46:01', '2011-09-25 23:46:01'),
(55, 'Lanavère Alain', NULL, '2011-09-25 23:46:09', '2011-09-25 23:46:09'),
(56, 'Laulan Yves-Marie', NULL, '2011-09-25 23:46:25', '2011-09-25 23:46:25'),
(57, 'Le Méné Jean-Marie', NULL, '2011-09-25 23:46:38', '2011-09-25 23:46:38'),
(58, 'Le Gallou Jean-Yves', NULL, '2011-09-25 23:46:46', '2011-09-25 23:46:46'),
(59, 'Lebrun Max', NULL, '2011-09-25 23:46:55', '2011-09-25 23:46:55'),
(60, 'Lecap Romain', NULL, '2011-09-25 23:47:02', '2011-09-25 23:47:02'),
(61, 'Lefranc Thibault', NULL, '2011-09-25 23:47:13', '2011-09-25 23:47:13'),
(62, 'Lejeune Philippe', NULL, '2011-09-25 23:47:21', '2011-09-25 23:47:21'),
(63, 'de Lesquen Henry', NULL, '2011-09-25 23:47:31', '2011-09-25 23:47:31'),
(64, 'Mancheron Benoît', NULL, '2011-09-25 23:47:38', '2011-09-25 23:47:38'),
(65, 'Marin Gérard', NULL, '2011-09-25 23:47:45', '2011-09-25 23:47:45'),
(66, 'Mascré David', NULL, '2011-09-25 23:47:53', '2011-09-25 23:47:53'),
(67, 'Maxence Philippe', NULL, '2011-09-25 23:48:03', '2011-09-25 23:48:03'),
(68, 'Moris Philippe', NULL, '2011-09-25 23:48:13', '2011-09-25 23:48:13'),
(69, 'Mourlet Michel', NULL, '2011-09-25 23:48:29', '2011-09-25 23:48:29'),
(70, 'Naddeo Jean-Paul', NULL, '2011-09-25 23:48:39', '2011-09-25 23:48:39'),
(71, 'Paoli Dominique', NULL, '2011-09-25 23:48:47', '2011-09-25 23:48:47'),
(72, 'Payen-Appenzeller Pascal', NULL, '2011-09-25 23:48:58', '2011-09-25 23:48:58'),
(73, 'Péhèle Patrick', NULL, '2011-09-25 23:49:07', '2011-09-25 23:49:07'),
(74, 'Pichot-Bravard Philippe', NULL, '2011-09-25 23:49:16', '2011-09-25 23:49:16'),
(75, 'Ratier Emmanuel', NULL, '2011-09-25 23:49:25', '2011-09-25 23:49:25'),
(76, 'Rochard Didier', NULL, '2011-09-25 23:49:32', '2011-09-25 23:49:32'),
(77, 'de Rostolan Michel', NULL, '2011-09-25 23:49:44', '2011-09-25 23:49:44'),
(78, 'Rouvier Catherine', NULL, '2011-09-25 23:49:51', '2011-09-25 23:49:51'),
(79, 'Saboureau Roger', NULL, '2011-09-25 23:50:00', '2011-09-25 23:50:00'),
(80, 'de Sainte Marie François', NULL, '2011-09-25 23:50:10', '2011-09-25 23:50:10'),
(81, 'Salon Albert', NULL, '2011-09-25 23:50:23', '2011-09-25 23:50:23'),
(82, 'Sanders Alain', NULL, '2011-09-25 23:50:29', '2011-09-25 23:50:29'),
(83, 'Sérapion Hugues', NULL, '2011-09-25 23:50:36', '2011-09-25 23:50:36'),
(84, 'Sévillia Yves-Marie', NULL, '2011-09-25 23:50:46', '2011-09-25 23:50:46'),
(85, 'Sureau Denis', NULL, '2011-09-25 23:50:59', '2011-09-25 23:50:59'),
(86, 'Taffin Benoîte', NULL, '2011-09-25 23:51:09', '2011-09-25 23:51:09'),
(87, 'de Tanoüarn Guillaume', NULL, '2011-09-25 23:51:29', '2011-09-25 23:51:29'),
(88, 'Tarantik Yves', NULL, '2011-09-25 23:51:37', '2011-09-25 23:51:37'),
(89, 'Tikhobrazoff Nicolas', NULL, '2011-09-25 23:51:49', '2011-09-25 23:51:49'),
(90, 'Trémolet de Villers Jacques', NULL, '2011-09-25 23:51:59', '2011-09-25 23:51:59'),
(91, 'Weber Edith', NULL, '2011-09-25 23:52:06', '2011-09-25 23:52:06'),
(92, 'Nemo Philippe', NULL, '2011-10-01 22:09:25', '2011-10-01 22:09:25'),
(93, 'de Beaumont Louis', NULL, '2011-10-02 00:13:20', '2011-10-02 00:13:20'),
(94, 'Debray-Ritzen Pierre', NULL, '2011-10-02 00:23:27', '2011-10-02 00:23:27'),
(95, 'Lacant Jacques', NULL, '2011-10-02 00:25:51', '2011-10-02 00:25:51'),
(96, 'Chaunu Pierre', NULL, '2011-10-02 00:25:59', '2011-10-02 00:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `intervenants_emissions`
--

CREATE TABLE IF NOT EXISTS `intervenants_emissions` (
  `intervenants_id` bigint(20) NOT NULL,
  `emissions_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intervenants_emissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `itunesparams`
--

CREATE TABLE IF NOT EXISTS `itunesparams` (
  `param` varchar(32) NOT NULL,
  `value` varchar(128) NOT NULL,
  `datecreate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datemodif` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(256) NOT NULL,
  PRIMARY KEY (`param`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itunesparams`
--


-- --------------------------------------------------------

--
-- Table structure for table `mediatype`
--

CREATE TABLE IF NOT EXISTS `mediatype` (
  `term` varchar(4) NOT NULL,
  `type` varchar(24) NOT NULL,
  PRIMARY KEY (`term`,`type`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mediatype`
--

INSERT INTO `mediatype` (`term`, `type`) VALUES
('flv', 'application/flv'),
('pdf', 'application/pdf'),
('MP3', 'audio/mp3'),
('mp3', 'audio/mpeg'),
('m4a', 'audio/x-m4a'),
('epub', 'document/x-epub'),
('mp4', 'video/mp4'),
('mov', 'video/quicktime'),
('m4v', 'video/x-m4v');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `name` varchar(32) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`name`, `value`) VALUES
('ROLE_SUPERVISOR', 'role.supervisor'),
('ROLE_USER', 'role.user');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `supercatid` int(11) NOT NULL,
  `subcatid` int(11) NOT NULL,
  PRIMARY KEY (`supercatid`,`subcatid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `audio_media`
--
ALTER TABLE `audio_media`
  ADD CONSTRAINT `audio_media_ibfk_1` FOREIGN KEY (`emission`) REFERENCES `emissions` (`id`),
  ADD CONSTRAINT `audio_media_ibfk_2` FOREIGN KEY (`type`) REFERENCES `mediatype` (`term`);

--
-- Constraints for table `emis_interv`
--
ALTER TABLE `emis_interv`
  ADD CONSTRAINT `emis_interv_ibfk_3` FOREIGN KEY (`id_emission`) REFERENCES `emissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emis_interv_ibfk_4` FOREIGN KEY (`id_intervenant`) REFERENCES `intervenants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emis_intervsuppl`
--
ALTER TABLE `emis_intervsuppl`
  ADD CONSTRAINT `emis_interv_ibfk_1` FOREIGN KEY (`id_emission`) REFERENCES `emissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emis_interv_ibfk_2` FOREIGN KEY (`id_intervenant`) REFERENCES `intervenants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emis_media`
--
ALTER TABLE `emis_media`
  ADD CONSTRAINT `emis_media_ibfk_3` FOREIGN KEY (`id_media`) REFERENCES `audio_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emis_media_ibfk_4` FOREIGN KEY (`id_emission`) REFERENCES `emissions` (`id`) ON DELETE CASCADE;
