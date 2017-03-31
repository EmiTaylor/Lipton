-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 31 Mars 2017 à 09:16
-- Version du serveur :  5.7.17-0ubuntu0.16.04.1
-- Version de PHP :  7.0.15-0ubuntu0.16.04.4

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
  `cover` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `books`
--

INSERT INTO `books` (`id`, `titre`, `auteur`, `categorie`, `cover`) VALUES
(2, 'ana polina', 'marc dorcel', 10, 'img/books.jpg'),
(3, 'clara morgane', 'la cambrioleuse', 2, NULL),
(4, 'la vache', 'ricoune', 3, NULL),
(5, 'poulet a l\'ananas', 'yannick', 4, NULL),
(6, 'les serviettes', 'patrick sebastien', 3, NULL),
(7, 'les marqueurs', 'yannick', 4, NULL),
(8, 'developpeur', 'BEWEB', 3, NULL),
(9, 'beziers', 'FERIA', 3, NULL),
(10, 'test', 'je sais pas', 2, NULL),
(16, '#Storyboard', 'Emi Taylor', 3, NULL);

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
(2, 'sexe'),
(3, 'je sais pas'),
(4, 'manger'),
(5, 'test'),
(6, 'Motherfucker'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
