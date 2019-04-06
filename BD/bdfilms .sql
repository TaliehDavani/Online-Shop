-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 01 mars 2019 à 16:42
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdfilms`
--
CREATE DATABASE IF NOT EXISTS `bdfilms` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bdfilms`;

-- --------------------------------------------------------

--
-- Structure de la table `comptabilite`
--

CREATE TABLE `comptabilite` (
  `numfacture` int(11) NOT NULL,
  `nummeb` int(11) NOT NULL,
  `datelocation` date NOT NULL,
  `montant` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comptabilite`
--

INSERT INTO `comptabilite` (`numfacture`, `nummeb`, `datelocation`, `montant`) VALUES
(1, 1, '2019-02-16', 33.45),
(2, 1, '2019-02-16', 33.45),
(3, 1, '2019-02-16', 33.45),
(4, 1, '2019-02-16', 33.45),
(5, 1, '2019-02-16', 33.45),
(6, 1, '2019-02-16', 33.45),
(7, 1, '2019-02-16', 33.45),
(8, 1, '2019-02-16', 33.45),
(9, 1, '2019-02-16', 33.45),
(10, 1, '2019-02-16', 33.45),
(11, 1, '2019-02-16', 33.45),
(12, 1, '2019-02-16', 0),
(13, 1, '2019-02-16', 40.9),
(14, 1, '2019-02-18', 61.85),
(15, 1, '2019-02-18', 61.85),
(16, 1, '2019-02-19', 63.85),
(17, 1, '2019-02-19', 63.85),
(18, 1, '2019-02-19', 63.85),
(19, 1, '2019-02-19', 63.85),
(20, 1, '2019-02-19', 63.85),
(21, 1, '2019-02-19', 0),
(22, 1, '2019-02-19', 9.45),
(23, 1, '2019-02-19', 12.95),
(24, 1, '2019-02-19', 6.95),
(25, 1, '2019-02-19', 6.95),
(26, 1, '2019-02-19', 6.95),
(27, 1, '2019-02-19', 6.95),
(28, 1, '2019-02-19', 6.95),
(29, 1, '2019-02-19', 6.95),
(30, 1, '2019-02-19', 6.95),
(31, 1, '2019-02-19', 6.95),
(32, 1, '2019-02-19', 6.95),
(33, 1, '2019-02-19', 3),
(34, 1, '2019-02-19', 3),
(35, 1, '2019-02-19', 5),
(36, 1, '2019-02-19', 5),
(37, 1, '2019-02-19', 5),
(38, 1, '2019-02-19', 5),
(39, 1, '2019-02-19', 2.45),
(40, 1, '2019-02-19', 5),
(41, 1, '2019-02-20', 8),
(42, 1, '2019-02-20', 1.5),
(43, 4, '2019-02-21', 3.5);

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `nummeb` int(11) NOT NULL,
  `courriel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `motpass` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `connexion`
--

INSERT INTO `connexion` (`nummeb`, `courriel`, `motpass`) VALUES
(1, 'taimzaki@yahoo.com', '14789'),
(2, 'informavie@gmail.com', '12369'),
(3, 'admin@gmail.com', '1236987'),
(4, 'xsf@yahoo.com', '14789');

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `numfilm` int(11) NOT NULL,
  `titre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reali` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pochette` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categorie` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duree` int(1) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`numfilm`, `titre`, `reali`, `pochette`, `categorie`, `duree`, `url`, `prix`) VALUES
(6, 'Terminator', 'James Cameron', 'e75311b4497894df6efb8f9cd78122596326f9f6.jpg', 'Action', 107, 'https://www.youtube.com/embed/oDhamVUlNFg', 1.5),
(7, 'Le grand lebovski', 'Joel Coen', '6e6f102b896bb5274eb236b199ef7638c8861265.jpg', 'Comedie', 117, 'https://www.youtube.com/embed/m65W-gm7XO4  ', 3.5),
(8, 'Un jour sana fin', 'Harold Ramis', '7016de0e1fd38c40cf1158ba4826c5152677e121.jpg', 'Comedie', 101, 'https://www.youtube.com/embed/78DQZy4l-5A   ', 2.45),
(9, 'BORAT', 'Larry Charles', 'b405229d52fd009a03953777a41ee27afd1b06de.jpg', 'Comedie', 82, 'https://www.youtube.com/embed/ig3wK6OKeXE  ', 1.5),
(10, 'Soeurs', 'Jason Moore', 'bebf6ec35bbfa65a9d700661e963eeee31e2a83c.jpg', 'Comedie', 118, 'https://www.youtube.com/embed/1jWyZOM2ZMg  ', 4),
(11, 'TAIS-TOI!', 'Francis Veber', 'c5284ae1798d4dd4ff2bf6dddb311d3f34907ed9.jpg', 'Comedie', 100, 'https://www.youtube.com/embed/4vLFEnXxpKM  ', 2.45),
(12, 'Sans un bruit (a quiet place)', 'John Krasinki', '0538f84b2b5c17c056ab27a56c8480de065a1170.jpg', 'Horreur', 90, 'https://www.youtube.com/embed/0vbMdbIB7_0   ', 4.5),
(13, 'Alien,Le  HuitiÃ¨me passager', 'Ridley Scott', '907a712aef1ec04136a82d976eca79ee85cc968f.jpg', 'Horreur', 116, 'https://www.youtube.com/embed/KOYS35RUTs4  ', 2),
(14, 'Frissons 1(Scream)', 'Wes Craven', '49eac370d16cc3b1fec46303ef47db068827cd25.jpg', 'Horreur', 111, 'https://www.youtube.com/embed/d7yWagIcCLE', 2.45),
(15, 'Le cercle 2(Ring 2)', 'Hideo Nakata', 'e140069b95ec50a56d388a232888062b1aee7f04.jpg', 'Horreur', 110, 'https://www.youtube.com/embed/Vlolq1rkTNs', 3),
(16, 'DÃ©cadence (SAW)', 'James Wan', '39de4e2ba8b9add972a32dd9e82beb4c74b8d092.jpg', 'Horreur', 103, 'https://www.youtube.com/embed/8Swsh-up3iM', 3.5),
(17, 'N\'oublie Jamais', 'Nick Cassavetes', 'b45c48dc6233e1bb334c81925182d50664e47e68.jpg', 'Romantique', 83, 'https://www.youtube.com/embed/dC9Zq8uWcnw  ', 3),
(18, 'LaLa Land', 'Damien Chazelle', '6b48fae6332cea4bbbf42134af6ed27fdd1ca972.jpg', 'Romantique', 88, 'https://www.youtube.com/embed/vOBtJWG_KlI', 4),
(19, 'Titanic', 'Jeames Cameron', '2ec5810e97b43f9701b370d2bc6d440366c6690f.jpg', 'Romantique', 194, 'https://www.youtube.com/embed/Quf4qIkD3KY', 3.5),
(20, 'Le secret de brokeeback mountain', 'Ange Lee', '23c3706e945cb1c4341deb0731343f5aa7dd9e28.jpg', 'Romantique', 134, 'https://www.youtube.com/embed/UuTiazIIPgA  ', 3),
(21, 'L\'amour a tout prix', 'Jon Turteltaub', '62c91f698dd0f3a7052b03fa9dc1e61e597b6aa1.jpg', 'Romantique', 103, 'https://www.youtube.com/embed/YKusSZuN0QY  ', 1.5),
(22, 'Le monde de nemo', 'Andrew Stanton  Lee Unkrich', 'ec4d25ece564a4609d8df78070d4cc59a9d7a9c5.jpg', 'Animation', 101, 'https://www.youtube.com/embed/YP4Gkv-WE5w  ', 3),
(23, 'Ratatouille', 'Brad Brid', '0e1fdc99d304347e8a11ecc9c172b9c8c68fc777.jpg', 'Animation', 110, 'https://www.youtube.com/embed/0IAI-iTKobY  ', 3),
(25, 'SHREK', 'Andrew Stanton ,Viky Jenson', 'b73cb0da62c4d7bc49f4f67c55aa2b4c68520176.jpg', 'Animation', 90, 'https://www.youtube.com/embed/08dotHAQ-6M   ', 2),
(28, '	WALL-E ', 'Andrew Stanton', '827ece8588115f6a9cdc129a06a003e60dc44b04.jpg', 'Animation', 97, 'https://www.youtube.com/embed/T_RmnkIUaIU', 1.5),
(29, 'La petite sirene', 'John Musker, Ron Clements', 'dde546a47e5e4414497fab58e52e351f72dcfa68.jpg', 'Animation', 83, 'https://www.youtube.com/watch?v=ikDlKihMWgA  ', 2.45),
(30, 'Le secret des 7 volcans', 'Jonathan King (ll)', '9b2bf5ed6f1b315db07131ccf11bd6f3a8a3cdd5.jpg', 'Action', 91, 'https://www.youtube.com/embed/WhRR-Z168Fc&t=40s  ', 8),
(37, 'La matrice', 'Les Wachowski', 'b9e02fe4816d37562c27d84bcf6831d5d2c10971.jpg', 'Action', 96, 'https://www.youtube.com/watch?v=8xx91zoASLY', 2),
(38, 'le bebe boss', 'Tom McGrath', 'd9690a0ef18c69681b23987c1c931cd3d0d01e82.jpg', 'Animation', 98, 'https://youtu.be/QtgEAvRkqTo', 4);

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `nummeb` int(11) NOT NULL,
  `numfilm` int(11) NOT NULL,
  `datelocation` int(11) NOT NULL,
  `datefinlocation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `numlocation` int(11) NOT NULL,
  `nummeb` int(11) NOT NULL,
  `numfilm` int(11) NOT NULL,
  `datelocation` date NOT NULL,
  `datefinlocation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`numlocation`, `nummeb`, `numfilm`, `datelocation`, `datefinlocation`) VALUES
(8, 10, 1, '0000-00-00', '0000-00-00'),
(10, 8, 1, '0000-00-00', '0000-00-00'),
(13, 8, 1, '0000-00-00', '0000-00-00'),
(14, 10, 1, '0000-00-00', '0000-00-00'),
(15, 15, 1, '0000-00-00', '0000-00-00'),
(16, 1, 8, '0000-00-00', '0000-00-00'),
(17, 1, 10, '0000-00-00', '0000-00-00'),
(18, 1, 15, '0000-00-00', '0000-00-00'),
(26, 1, 10, '2019-02-16', '0000-00-00'),
(27, 1, 15, '2019-02-16', '0000-00-00'),
(28, 1, 8, '2019-02-16', '0000-00-00'),
(29, 1, 10, '2019-02-16', '0000-00-00'),
(30, 1, 15, '2019-02-16', '0000-00-00'),
(31, 1, 8, '2019-02-16', '0000-00-00'),
(33, 1, 15, '2019-02-16', '0000-00-00'),
(34, 1, 8, '2019-02-16', '0000-00-00'),
(35, 1, 10, '2019-02-16', '0000-00-00'),
(36, 1, 15, '2019-02-16', '0000-00-00'),
(37, 1, 8, '2019-02-16', '0000-00-00'),
(38, 1, 10, '2019-02-16', '0000-00-00'),
(39, 1, 15, '2019-02-16', '0000-00-00'),
(40, 1, 8, '2019-02-16', '0000-00-00'),
(41, 1, 10, '2019-02-16', '0000-00-00'),
(42, 1, 15, '2019-02-16', '0000-00-00'),
(43, 1, 8, '2019-02-16', '2019-02-17'),
(44, 1, 10, '2019-02-16', '2019-02-23'),
(45, 1, 15, '2019-02-16', '2019-02-17'),
(46, 1, 8, '2019-02-16', '2019-02-17'),
(47, 1, 10, '2019-02-16', '2019-02-23'),
(48, 1, 15, '2019-02-16', '2019-02-17'),
(49, 1, 8, '2019-02-16', '2019-02-17'),
(50, 1, 10, '2019-02-16', '2019-02-23'),
(51, 1, 15, '2019-02-16', '2019-02-17'),
(52, 1, 8, '2019-02-16', '2019-02-17'),
(53, 1, 10, '2019-02-16', '2019-02-23'),
(54, 1, 15, '2019-02-16', '2019-02-17'),
(55, 1, 8, '2019-02-16', '2019-02-17'),
(56, 1, 10, '2019-02-16', '2019-02-23'),
(57, 1, 15, '2019-02-16', '2019-02-17'),
(58, 1, 8, '2019-02-16', '2019-02-17'),
(59, 1, 10, '2019-02-16', '2019-02-23'),
(60, 1, 15, '2019-02-16', '2019-02-17'),
(61, 1, 8, '2019-02-16', '2019-02-17'),
(62, 1, 10, '2019-02-16', '2019-02-23'),
(63, 1, 15, '2019-02-16', '2019-02-17'),
(64, 1, 8, '2019-02-16', '2019-02-17'),
(65, 1, 10, '2019-02-16', '2019-02-23'),
(66, 1, 15, '2019-02-16', '2019-02-17'),
(67, 1, 8, '2019-02-16', '2019-02-17'),
(68, 1, 10, '2019-02-16', '2019-02-23'),
(69, 1, 15, '2019-02-16', '2019-02-17'),
(70, 1, 8, '2019-02-16', '2019-02-17'),
(71, 1, 10, '2019-02-16', '2019-02-23'),
(72, 1, 15, '2019-02-16', '2019-02-17'),
(73, 1, 8, '2019-02-16', '2019-02-17'),
(74, 1, 10, '2019-02-16', '2019-02-23'),
(75, 1, 15, '2019-02-16', '2019-02-17'),
(76, 1, 8, '2019-02-16', '2019-02-17'),
(77, 1, 10, '2019-02-16', '2019-02-23'),
(78, 1, 15, '2019-02-16', '2019-02-17'),
(79, 1, 8, '2019-02-16', '2019-02-17'),
(80, 1, 10, '2019-02-16', '2019-02-23'),
(81, 1, 15, '2019-02-16', '2019-02-17'),
(82, 1, 8, '2019-02-16', '2019-02-17'),
(83, 1, 10, '2019-02-16', '2019-02-23'),
(84, 1, 15, '2019-02-16', '2019-02-17'),
(85, 1, 8, '2019-02-16', '2019-02-17'),
(86, 1, 10, '2019-02-16', '2019-02-23'),
(87, 1, 15, '2019-02-16', '2019-02-17'),
(88, 1, 8, '2019-02-16', '2019-02-17'),
(89, 1, 10, '2019-02-16', '2019-02-23'),
(90, 1, 15, '2019-02-16', '2019-02-17'),
(91, 1, 8, '2019-02-16', '2019-02-17'),
(92, 1, 10, '2019-02-16', '2019-02-23'),
(93, 1, 15, '2019-02-16', '2019-02-17'),
(94, 1, 8, '2019-02-16', '2019-02-17'),
(95, 1, 10, '2019-02-16', '2019-02-23'),
(96, 1, 15, '2019-02-16', '2019-02-17'),
(97, 1, 8, '2019-02-16', '2019-02-17'),
(98, 1, 10, '2019-02-16', '2019-02-23'),
(99, 1, 15, '2019-02-16', '2019-02-17'),
(100, 1, 14, '2019-02-16', '1970-01-01'),
(101, 1, 4, '2019-02-16', '1970-01-01'),
(102, 1, 2, '2019-02-16', '1970-01-01'),
(103, 1, 11, '2019-02-16', '1970-01-01'),
(104, 1, 8, '2019-02-16', '2019-02-17'),
(105, 1, 8, '2019-02-16', '2019-02-17'),
(106, 1, 6, '2019-02-16', '2019-02-19'),
(107, 1, 12, '2019-02-16', '2019-02-23'),
(108, 1, 12, '2019-02-18', '2019-02-25'),
(109, 1, 4, '2019-02-18', '2019-02-19'),
(110, 1, 2, '2019-02-18', '2019-02-25'),
(111, 1, 1, '2019-02-18', '2019-02-21'),
(112, 1, 12, '2019-02-18', '2019-02-25'),
(113, 1, 4, '2019-02-18', '2019-02-19'),
(114, 1, 2, '2019-02-18', '2019-02-25'),
(115, 1, 1, '2019-02-18', '2019-02-21'),
(116, 1, 12, '2019-02-19', '2019-02-26'),
(117, 1, 4, '2019-02-19', '2019-02-20'),
(118, 1, 2, '2019-02-19', '2019-02-26'),
(119, 1, 1, '2019-02-19', '2019-02-22'),
(120, 1, 4, '2019-02-19', '2019-02-20'),
(121, 1, 12, '2019-02-19', '2019-02-26'),
(122, 1, 4, '2019-02-19', '2019-02-20'),
(123, 1, 2, '2019-02-19', '2019-02-26'),
(124, 1, 1, '2019-02-19', '2019-02-22'),
(125, 1, 4, '2019-02-19', '2019-02-20'),
(126, 1, 12, '2019-02-19', '2019-02-26'),
(127, 1, 4, '2019-02-19', '2019-02-20'),
(128, 1, 2, '2019-02-19', '2019-02-26'),
(129, 1, 1, '2019-02-19', '2019-02-22'),
(130, 1, 4, '2019-02-19', '2019-02-20'),
(131, 1, 12, '2019-02-19', '2019-02-26'),
(132, 1, 4, '2019-02-19', '2019-02-20'),
(133, 1, 2, '2019-02-19', '2019-02-26'),
(134, 1, 1, '2019-02-19', '2019-02-22'),
(135, 1, 4, '2019-02-19', '2019-02-20'),
(136, 1, 12, '2019-02-19', '2019-02-26'),
(137, 1, 4, '2019-02-19', '2019-02-20'),
(138, 1, 2, '2019-02-19', '2019-02-26'),
(139, 1, 1, '2019-02-19', '2019-02-22'),
(140, 1, 4, '2019-02-19', '2019-02-20'),
(141, 1, 4, '2019-02-19', '2019-02-20'),
(142, 1, 11, '2019-02-19', '2019-02-20'),
(143, 1, 17, '2019-02-19', '2019-02-20'),
(144, 1, 4, '2019-02-19', '2019-02-20'),
(145, 1, 8, '2019-02-19', '2019-02-20'),
(146, 1, 14, '2019-02-19', '2019-02-20'),
(147, 1, 23, '2019-02-19', '2019-02-20'),
(148, 1, 10, '2019-02-19', '2019-02-20'),
(149, 1, 14, '2019-02-19', '2019-02-20'),
(150, 1, 10, '2019-02-19', '2019-02-20'),
(151, 1, 6, '2019-02-19', '2019-02-20'),
(152, 1, 14, '2019-02-19', '2019-02-20'),
(153, 1, 10, '2019-02-19', '2019-02-20'),
(154, 1, 6, '2019-02-19', '2019-02-20'),
(155, 1, 14, '2019-02-19', '2019-02-20'),
(156, 1, 10, '2019-02-19', '2019-02-20'),
(157, 1, 6, '2019-02-19', '2019-02-20'),
(158, 1, 14, '2019-02-19', '2019-02-20'),
(159, 1, 10, '2019-02-19', '2019-02-20'),
(160, 1, 6, '2019-02-19', '2019-02-20'),
(161, 1, 14, '2019-02-19', '2019-02-20'),
(162, 1, 10, '2019-02-19', '2019-02-20'),
(163, 1, 6, '2019-02-19', '2019-02-20'),
(164, 1, 14, '2019-02-19', '2019-02-20'),
(165, 1, 10, '2019-02-19', '2019-02-20'),
(166, 1, 6, '2019-02-19', '2019-02-20'),
(167, 1, 14, '2019-02-19', '2019-02-20'),
(168, 1, 10, '2019-02-19', '2019-02-20'),
(169, 1, 6, '2019-02-19', '2019-02-20'),
(170, 1, 14, '2019-02-19', '2019-02-20'),
(171, 1, 10, '2019-02-19', '2019-02-20'),
(172, 1, 6, '2019-02-19', '2019-02-20'),
(173, 1, 4, '2019-02-19', '2019-02-20'),
(174, 1, 2, '2019-02-19', '2019-02-20'),
(175, 1, 14, '2019-02-19', '2019-02-20'),
(176, 1, 10, '2019-02-19', '2019-02-20'),
(177, 1, 6, '2019-02-19', '2019-02-20'),
(178, 1, 4, '2019-02-19', '2019-02-20'),
(179, 1, 2, '2019-02-19', '2019-02-20'),
(180, 1, 14, '2019-02-19', '2019-02-20'),
(181, 1, 10, '2019-02-19', '2019-02-20'),
(182, 1, 6, '2019-02-19', '2019-02-20'),
(183, 1, 4, '2019-02-19', '2019-02-20'),
(184, 1, 2, '2019-02-19', '2019-02-20'),
(185, 1, 11, '2019-02-19', '2019-02-20'),
(186, 1, 9, '2019-02-19', '2019-02-22'),
(187, 1, 11, '2019-02-19', '2019-02-20'),
(188, 1, 9, '2019-02-19', '2019-02-22'),
(189, 1, 11, '2019-02-19', '2019-02-20'),
(190, 1, 9, '2019-02-19', '2019-02-22'),
(191, 1, 11, '2019-02-19', '2019-02-20'),
(192, 1, 9, '2019-02-19', '2019-02-22'),
(193, 1, 11, '2019-02-19', '2019-02-20'),
(194, 1, 9, '2019-02-19', '2019-02-22'),
(195, 1, 11, '2019-02-19', '2019-02-20'),
(196, 1, 9, '2019-02-19', '2019-02-22'),
(197, 1, 11, '2019-02-19', '2019-02-20'),
(198, 1, 9, '2019-02-19', '2019-02-22'),
(199, 1, 11, '2019-02-19', '2019-02-20'),
(200, 1, 9, '2019-02-19', '2019-02-22'),
(201, 1, 11, '2019-02-19', '2019-02-20'),
(202, 1, 9, '2019-02-19', '2019-02-22'),
(203, 1, 2, '2019-02-19', '2019-02-20'),
(204, 1, 2, '2019-02-19', '2019-02-20'),
(205, 1, 2, '2019-02-19', '2019-02-20'),
(206, 1, 4, '2019-02-19', '2019-02-20'),
(207, 1, 2, '2019-02-19', '2019-02-20'),
(208, 1, 4, '2019-02-19', '2019-02-20'),
(209, 1, 2, '2019-02-19', '2019-02-20'),
(210, 1, 4, '2019-02-19', '2019-02-20'),
(211, 1, 2, '2019-02-19', '2019-02-20'),
(212, 1, 4, '2019-02-19', '2019-02-20'),
(213, 1, 2, '2019-02-19', '2019-02-20'),
(214, 1, 4, '2019-02-19', '2019-02-20'),
(215, 1, 2, '2019-02-19', '2019-02-20'),
(216, 1, 4, '2019-02-19', '2019-02-20'),
(217, 1, 2, '2019-02-19', '2019-02-20'),
(218, 1, 4, '2019-02-19', '2019-02-20'),
(219, 1, 2, '2019-02-19', '2019-02-20'),
(220, 1, 4, '2019-02-19', '2019-02-20'),
(221, 1, 2, '2019-02-19', '2019-02-20'),
(222, 1, 4, '2019-02-19', '2019-02-20'),
(223, 1, 2, '2019-02-19', '2019-02-20'),
(224, 1, 4, '2019-02-19', '2019-02-20'),
(225, 1, 2, '2019-02-19', '2019-02-20'),
(226, 1, 4, '2019-02-19', '2019-02-20'),
(227, 1, 2, '2019-02-19', '2019-02-20'),
(228, 1, 4, '2019-02-19', '2019-02-20'),
(229, 1, 2, '2019-02-19', '2019-02-20'),
(230, 1, 4, '2019-02-19', '2019-02-20'),
(231, 1, 2, '2019-02-19', '2019-02-20'),
(232, 1, 4, '2019-02-19', '2019-02-20'),
(233, 1, 2, '2019-02-19', '2019-02-20'),
(234, 1, 4, '2019-02-19', '2019-02-20'),
(235, 1, 8, '2019-02-19', '2019-02-20'),
(236, 1, 8, '2019-02-19', '2019-02-20'),
(237, 1, 17, '2019-02-19', '2019-02-20'),
(238, 1, 4, '2019-02-19', '2019-02-20'),
(239, 1, 6, '2019-02-20', '2019-02-21'),
(240, 1, 4, '2019-02-20', '2019-02-21'),
(241, 1, 12, '2019-02-20', '2019-02-21'),
(242, 1, 6, '2019-02-20', '2019-02-21'),
(243, 4, 7, '2019-02-21', '2019-02-22');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `nummeb` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`nummeb`, `nom`, `prenom`, `sexe`) VALUES
(1, 'abidi', 'salma', 'fe'),
(2, 'bouyakaken', 'lazhar', 'ho'),
(3, 'administrateur', 'admin', 'fe'),
(4, 'gfdd', 'fgj', 'ho');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comptabilite`
--
ALTER TABLE `comptabilite`
  ADD PRIMARY KEY (`numfacture`);

--
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD KEY `nummeb` (`nummeb`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`numfilm`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`numlocation`),
  ADD KEY `nummeb` (`nummeb`),
  ADD KEY `numfilm` (`numfilm`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`nummeb`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comptabilite`
--
ALTER TABLE `comptabilite`
  MODIFY `numfacture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `numfilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `numlocation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `nummeb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
