-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 24 Mars 2021 à 15:49
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `vigilence`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien_immobilier`
--

CREATE TABLE IF NOT EXISTS `bien_immobilier` (
  `code_bien` int(11) NOT NULL AUTO_INCREMENT,
  `adresse_bien` varchar(20) DEFAULT NULL,
  `num_enregistrement` varchar(20) DEFAULT NULL,
  `superficie` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `code_quartier` int(11) DEFAULT NULL,
  `date_construction` date DEFAULT NULL,
  PRIMARY KEY (`code_bien`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `bien_immobilier`
--

INSERT INTO `bien_immobilier` (`code_bien`, `adresse_bien`, `num_enregistrement`, `superficie`, `type`, `code_quartier`, `date_construction`) VALUES
(1, 'quartier safe', '34', '68M', 'maison', 30, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

CREATE TABLE IF NOT EXISTS `contrat` (
  `numcontrat` int(11) NOT NULL AUTO_INCREMENT,
  `prix_mensuel` double DEFAULT NULL,
  `code_bien` varchar(20) DEFAULT NULL,
  `code_syndic` varchar(20) DEFAULT NULL,
  `etat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`numcontrat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `quartier`
--

CREATE TABLE IF NOT EXISTS `quartier` (
  `code_quartier` int(11) NOT NULL AUTO_INCREMENT,
  `nom_quartier` varchar(20) DEFAULT NULL,
  `population_quartier` varchar(20) DEFAULT NULL,
  `code_ville` int(11) DEFAULT NULL,
  `total_quartier` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_quartier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `quartier`
--

INSERT INTO `quartier` (`code_quartier`, `nom_quartier`, `population_quartier`, `code_ville`, `total_quartier`) VALUES
(1, 'massira', '60', 63000, 30);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `code_region` int(11) NOT NULL AUTO_INCREMENT,
  `nom_region` varchar(20) DEFAULT NULL,
  `population_region` int(11) DEFAULT NULL,
  `total_region` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`code_region`, `nom_region`, `population_region`, `total_region`) VALUES
(1, 'region1', 200, 50),
(2, 'oriental', 189494000, 16);

-- --------------------------------------------------------

--
-- Structure de la table `syndic`
--

CREATE TABLE IF NOT EXISTS `syndic` (
  `code_syndic` int(11) NOT NULL AUTO_INCREMENT,
  `nom_syndic` varchar(20) DEFAULT NULL,
  `prenom_syndic` varchar(20) DEFAULT NULL,
  `telephone_syndic` int(11) DEFAULT NULL,
  `mot_depasse` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`code_syndic`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `syndic`
--

INSERT INTO `syndic` (`code_syndic`, `nom_syndic`, `prenom_syndic`, `telephone_syndic`, `mot_depasse`) VALUES
(1, 'elwahbi', 'taj_eddine', 616846684, 'jadjad');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE IF NOT EXISTS `ville` (
  `code_ville` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ville` varchar(20) DEFAULT NULL,
  `code_region` int(11) DEFAULT NULL,
  `total_ville` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_ville`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`code_ville`, `nom_ville`, `code_region`, `total_ville`) VALUES
(1, 'berkane', 8, 189);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
