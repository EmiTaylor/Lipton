-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 16 Juin 2017 à 11:51
-- Version du serveur :  5.7.18-0ubuntu0.17.04.1
-- Version de PHP :  7.0.18-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blackbooks`
--

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categorie` int(11) DEFAULT NULL,
  `cover` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resume` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `books`
--

INSERT INTO `books` (`id`, `titre`, `auteur`, `categorie`, `cover`, `resume`) VALUES
(1, 'Alléluja', 'Jesus', 8, 'img/kk.jpg', NULL),
(2, 'Black', 'Book', 8, 'img/aa.jpg', NULL),
(3, 'Uuuh', 'Dear', 2, 'img/bb.png', NULL),
(4, 'The Barber', 'Estelle', 7, 'img/cc.jpg', NULL),
(5, 'Emi', 'Taylor', 16, 'img/dd.jpg', NULL),
(6, 'Rendez l\'argent', 'Pénélope', 2, 'img/ee.jpg', NULL),
(7, 'Vive', 'la France', 4, 'img/ff.jpg', NULL),
(8, 'Illuminatis', 'Oaxaca', 3, 'img/gg.jpg', NULL),
(9, 'My super', 'book', 3, 'img/hh.jpg', NULL),
(10, 'Dev', 'Web', 3, 'img/ii.jpg', NULL),
(16, 'Storyboard', '#', 3, 'img/jj.jpg', NULL),
(17, 'God', 'SavetheQueen', 3, 'img/ll.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(2, 'erotique'),
(3, 'Argent sale'),
(4, 'Fantastique'),
(5, 'Roman'),
(6, 'Policier'),
(7, 'PasDeBonneOuDeMauvaiseSituation');

-- --------------------------------------------------------

--
-- Structure de la table `copy`
--

CREATE TABLE `copy` (
  `id` int(11) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `etat` int(10) UNSIGNED NOT NULL,
  `books` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` int(10) UNSIGNED NOT NULL,
  `neuf` varchar(255) NOT NULL,
  `occasion` varchar(255) NOT NULL,
  `detruit` varchar(255) NOT NULL,
  `page dechire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` int(10) UNSIGNED NOT NULL,
  `rayon` varchar(255) NOT NULL,
  `categorie` int(11) NOT NULL,
  `vendu` tinyint(1) NOT NULL,
  `emprunter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4A1B2A92CB8C5497` (`categorie`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `copy`
--
ALTER TABLE `copy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etat` (`etat`),
  ADD KEY `books` (`books`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `copy`
--
ALTER TABLE `copy`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`categorie`) REFERENCES `books` (`id`);

--
-- Contraintes pour la table `copy`
--
ALTER TABLE `copy`
  ADD CONSTRAINT `copy_ibfk_1` FOREIGN KEY (`etat`) REFERENCES `etat` (`id`),
  ADD CONSTRAINT `copy_ibfk_2` FOREIGN KEY (`books`) REFERENCES `books` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
