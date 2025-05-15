-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 15 mai 2025 à 07:57
-- Version du serveur : 5.7.43
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `souls_bestiary`
--

-- --------------------------------------------------------

--
-- Structure de la table `characteristic`
--

CREATE TABLE `characteristic` (
  `id_charac` int(11) NOT NULL,
  `charac_name` varchar(30) NOT NULL,
  `charac_type` enum('force','faiblesse') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `characteristic`
--

INSERT INTO `characteristic` (`id_charac`, `charac_name`, `charac_type`) VALUES
(1, 'Feu', 'faiblesse'),
(2, 'Sacré', 'faiblesse'),
(3, 'Magie', 'faiblesse'),
(4, 'Foudre', 'faiblesse'),
(5, 'Saignement', 'faiblesse'),
(6, 'Gel', 'faiblesse'),
(7, 'Poison', 'faiblesse'),
(8, 'Putréfaction écarlate', 'faiblesse'),
(9, 'Dégâts physiques', 'faiblesse'),
(10, 'Feu', 'force'),
(11, 'Sacré', 'force'),
(12, 'Magie', 'force'),
(13, 'Foudre', 'force'),
(14, 'Saignement', 'force'),
(15, 'Gel', 'force'),
(16, 'Poison', 'force'),
(17, 'Putréfaction écarlate', 'force'),
(18, 'Dégâts physiques', 'force'),
(19, 'Dégâts normaux', 'faiblesse'),
(20, 'Dégâts contondants', 'faiblesse'),
(21, 'Dégâts perforants', 'faiblesse'),
(22, 'Dégâts tranchants', 'faiblesse'),
(23, 'Dégâts critiques', 'faiblesse'),
(24, 'Effet divin', 'faiblesse'),
(25, 'Effet occulte', 'faiblesse'),
(26, 'Effet de dragon', 'faiblesse'),
(27, 'Effet de feu noir', 'faiblesse'),
(28, 'Effet de cristal', 'faiblesse'),
(29, 'Dégâts normaux', 'force'),
(30, 'Dégâts contondants', 'force'),
(31, 'Dégâts perforants', 'force'),
(32, 'Dégâts tranchants', 'force'),
(33, 'Dégâts critiques', 'force'),
(34, 'Effet divin', 'force'),
(35, 'Effet occulte', 'force'),
(36, 'Effet de dragon', 'force'),
(37, 'Effet de feu noir', 'force'),
(38, 'Effet de cristal', 'force'),
(39, 'Pétritification', 'faiblesse'),
(40, 'Pétritification', 'force'),
(41, 'Dégâts sombres', 'faiblesse'),
(42, 'Dégâts sombres', 'force'),
(43, 'Résistance aux coups', 'faiblesse'),
(44, 'Résistance aux coups', 'force'),
(45, 'Dégâts de type lance', 'faiblesse'),
(46, 'Dégâts de type lance', 'force'),
(47, 'Dégâts de type marteau', 'faiblesse'),
(48, 'Dégâts de type marteau', 'force'),
(49, 'Dégâts de type hallebarde', 'faiblesse'),
(50, 'Dégâts de type hallebarde', 'force'),
(51, 'Résistance aux backstabs', 'force'),
(52, 'Résistance aux backstabs', 'faiblesse'),
(53, 'Froid', 'faiblesse'),
(54, 'Froid', 'force'),
(55, 'Ténèbres', 'faiblesse'),
(56, 'Ténèbres', 'force'),
(57, 'Dégâts de poing', 'faiblesse'),
(58, 'Dégâts de poing', 'force'),
(59, 'Dégâts de fouet', 'faiblesse'),
(60, 'Dégâts de fouet', 'force'),
(61, 'Résistance aux chutes', 'force'),
(62, 'Résistance aux chutes', 'faiblesse'),
(63, 'Radiance', 'faiblesse'),
(64, 'Radiance', 'force'),
(65, 'Umbral', 'faiblesse'),
(66, 'Umbral', 'force'),
(67, 'Dégâts de hache', 'faiblesse'),
(68, 'Dégâts de hache', 'force'),
(69, 'Dégâts de marteau de guerre', 'faiblesse'),
(70, 'Dégâts de marteau de guerre', 'force'),
(71, 'Résistance aux grappins', 'force'),
(72, 'Résistance aux grappins', 'faiblesse'),
(73, 'Drain de vie', 'faiblesse'),
(74, 'Drain de vie', 'force'),
(75, 'Corrosion', 'faiblesse'),
(76, 'Corrosion', 'force');

-- --------------------------------------------------------

--
-- Structure de la table `charac_entity`
--

CREATE TABLE `charac_entity` (
  `id_charac` int(11) NOT NULL,
  `id_entity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `charac_entity`
--

INSERT INTO `charac_entity` (`id_charac`, `id_entity`) VALUES
(12, 1),
(18, 2),
(12, 3),
(10, 4),
(13, 4),
(11, 6),
(11, 7),
(17, 7),
(18, 8),
(11, 9),
(17, 9),
(14, 10),
(10, 10),
(14, 11),
(15, 11),
(10, 12),
(12, 12),
(13, 13),
(11, 13),
(12, 14),
(10, 14),
(13, 14),
(13, 15),
(11, 16),
(12, 17),
(18, 17),
(15, 18),
(13, 18),
(17, 19),
(10, 22),
(18, 22),
(10, 24),
(10, 25),
(10, 26),
(15, 27),
(13, 28),
(10, 29),
(10, 33),
(12, 33),
(12, 34),
(10, 34),
(13, 34),
(5, 1),
(1, 2),
(9, 3),
(8, 4),
(5, 5),
(1, 6),
(3, 7),
(7, 8),
(1, 9),
(3, 9),
(3, 10),
(8, 11),
(5, 12),
(6, 13),
(5, 14),
(1, 15),
(6, 16),
(4, 17),
(1, 18),
(1, 19),
(2, 19),
(6, 22),
(2, 22),
(5, 24),
(3, 25),
(2, 26),
(1, 27),
(3, 28),
(2, 29),
(1, 33),
(2, 33),
(5, 34),
(9, 39),
(20, 39),
(29, 39),
(30, 39),
(9, 40),
(23, 40),
(29, 40),
(4, 41),
(13, 41),
(22, 41),
(9, 42),
(21, 42),
(31, 42),
(4, 43),
(21, 43),
(13, 43),
(4, 44),
(1, 44),
(10, 44),
(4, 45),
(20, 45),
(30, 45),
(4, 46),
(20, 46),
(21, 46),
(13, 46),
(9, 47),
(24, 47),
(34, 47),
(5, 48),
(14, 48),
(1, 49),
(10, 49),
(9, 50),
(24, 50),
(29, 50),
(24, 51),
(11, 51),
(34, 51),
(25, 52),
(35, 52),
(24, 53),
(34, 53),
(1, 58),
(24, 58),
(10, 58),
(1, 59),
(10, 59),
(20, 68),
(24, 68),
(30, 68),
(25, 69),
(35, 69),
(4, 70),
(13, 70),
(4, 71),
(12, 71),
(29, 71),
(4, 72),
(10, 72),
(16, 72),
(17, 72),
(24, 73),
(29, 73),
(32, 74),
(5, 74),
(3, 75),
(29, 75),
(31, 76),
(4, 76),
(30, 77),
(34, 77),
(1, 78),
(16, 78),
(32, 79),
(16, 79),
(4, 80),
(3, 81),
(10, 81),
(4, 82),
(30, 82),
(39, 83),
(10, 83),
(1, 84),
(32, 84),
(31, 85),
(4, 86),
(1, 87),
(4, 88),
(39, 88),
(18, 89),
(3, 90),
(4, 90),
(1, 91),
(39, 91),
(1, 92),
(13, 93),
(12, 94),
(31, 95),
(30, 96),
(12, 97),
(1, 98),
(40, 98),
(1, 99),
(34, 99),
(10, 100),
(4, 100),
(5, 101),
(32, 102),
(1, 103),
(5, 103),
(20, 103),
(44, 103),
(30, 103),
(6, 104),
(1, 104),
(15, 104),
(20, 104),
(3, 105),
(22, 105),
(12, 105),
(32, 105),
(1, 109),
(5, 109),
(42, 109),
(16, 109),
(45, 108),
(48, 108),
(30, 108),
(4, 111),
(13, 111),
(11, 111),
(6, 113),
(17, 113),
(2, 116),
(11, 116),
(25, 116),
(20, 115),
(5, 115),
(59, 115),
(30, 115),
(16, 115),
(60, 115),
(4, 116),
(22, 116),
(57, 116),
(13, 116),
(32, 116),
(61, 116),
(25, 117),
(1, 117),
(53, 117),
(54, 117),
(34, 117),
(11, 117),
(2, 118),
(45, 118),
(55, 118),
(56, 118),
(44, 118),
(48, 118),
(2, 119),
(24, 119),
(41, 119),
(10, 119),
(56, 119),
(27, 119),
(11, 120),
(53, 120),
(5, 120),
(14, 120),
(35, 120),
(25, 120),
(1, 121),
(6, 121),
(10, 121),
(15, 121),
(62, 121),
(25, 122),
(55, 122),
(3, 122),
(54, 122),
(12, 122),
(34, 122),
(2, 123),
(53, 123),
(63, 123),
(56, 123),
(42, 123),
(51, 123),
(1, 114),
(55, 114),
(22, 114),
(54, 114),
(56, 114),
(11, 114),
(42, 114),
(61, 114),
(63, 114),
(1, 124),
(5, 124),
(59, 124),
(17, 124),
(16, 124),
(44, 124),
(48, 124);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `hour` datetime NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id_comment`, `username`, `hour`, `comment`) VALUES
(51, 'Frost', '2025-04-30 11:29:28', 'Ca marche enfin !<br />\r\nTest du nl2br : Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore<br />\r\n consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. '),
(52, 'Test', '2025-04-30 11:34:48', 'Test'),
(53, 'Mich', '2025-04-30 11:36:48', 'TEEEEEEEEEEST'),
(54, 'Michael', '2025-04-30 11:36:59', 'tatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. '),
(55, 'erty', '2025-04-30 12:49:28', 'sdfgh'),
(56, 'azertyuiop', '2025-05-05 08:26:53', 'qsdfghjklm'),
(57, 'azertyuiop', '2025-05-05 09:26:21', 'sdfghjuhygtfdsertugydtrsgefqdugydsrfq<wfxgcrtse<br />\r\nfjrhthdyfrsgfqrfqwyretsdgfwx'),
(58, 'Test', '2025-05-12 13:01:57', 'Test');

-- --------------------------------------------------------

--
-- Structure de la table `entity`
--

CREATE TABLE `entity` (
  `id_entity` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `region` varchar(40) NOT NULL,
  `hp` int(11) NOT NULL,
  `id_game` int(11) NOT NULL,
  `type` enum('Boss','Mob') NOT NULL DEFAULT 'Boss'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `entity`
--

INSERT INTO `entity` (`id_entity`, `name`, `region`, `hp`, `id_game`, `type`) VALUES
(1, 'Margit, l’Augure Royal', 'Château de Voilorage', 4200, 1, 'Boss'),
(2, 'Godrick le Greffé', 'Château de Voilorage', 6400, 1, 'Boss'),
(3, 'Rennala, Reine de la Pleine Lune', 'Académie de Raya Lucaria', 3800, 1, 'Boss'),
(4, 'Radahn, Fléau des Astres', 'Festin de Radahn, Caelid', 9500, 1, 'Boss'),
(5, 'Rykard, Seigneur Blasphématoire', 'Volcan Manse', 9000, 1, 'Boss'),
(6, 'Morgott, Roi Omen', 'Leyndell', 8000, 1, 'Boss'),
(7, 'Feu-Dieu Serpenttoile / Maliketh, Lame Noire', 'Farum Azula', 9800, 1, 'Boss'),
(8, 'Hoarah Loux / Godfrey, Premier Seigneur d’Élden', 'Leyndell, phase finale', 10200, 1, 'Boss'),
(9, 'Radagon & Édigeon de Vaisseau Éternel', 'Fin du jeu', 12000, 1, 'Boss'),
(10, 'Mohg, Seigneur du Sang', 'Palais de Mohgwyn', 12000, 1, 'Boss'),
(11, 'Malenia, Lame de Miquella', 'Haligtree', 13300, 1, 'Boss'),
(12, 'Dragonlord Placidusax', 'Farum Azula, zone secrète', 18000, 1, 'Boss'),
(13, 'Lichdragon Fortissax', 'Rêve de Fia', 15000, 1, 'Boss'),
(14, 'Astel, Fléau Naturel', 'Lac de Rotte', 11000, 1, 'Boss'),
(15, 'Chevalier Draconique', 'Donjon de Crépuscule', 7500, 1, 'Boss'),
(16, 'Alecto, Chevalier du Loup Noir', 'Donjon Enfermé', 7200, 1, 'Boss'),
(17, 'Elemer du Briar', 'Donjon de l’Exécuteur', 6500, 1, 'Boss'),
(18, 'Commander Niall', 'Château de Sol', 8200, 1, 'Boss'),
(19, 'Chevalier de la Putréfaction', 'Donjon de la Putréfaction', 8500, 1, 'Boss'),
(20, 'Ancêtre Spirituel Royal', 'Nokron', 5000, 1, 'Boss'),
(21, 'Loretta, Chevalier d’Haligtree', 'Haligtree', 4500, 1, 'Boss'),
(22, 'Godskin Duo', 'Farum Azula', 11000, 1, 'Boss'),
(23, 'Cavalier crépusculaire', 'Certains donjons', 9000, 1, 'Boss'),
(24, 'Géant de Feu', 'Montagnes des Géants', 12000, 1, 'Boss'),
(25, 'Agheel le Dragon', 'Limgrave', 3500, 1, 'Boss'),
(26, 'Ekzykes le Dragon Putréfié', 'Caelid', 4000, 1, 'Boss'),
(27, 'Borealis le Dragon de Givre', 'Montagnes des Géants', 16000, 1, 'Boss'),
(28, 'Lansseax le Dragon Foudroyant', 'Altus Plateau', 13500, 1, 'Boss'),
(29, 'Ancient Dragon', 'Farum Azula', 17000, 1, 'Boss'),
(30, 'Tibia Mariner', 'Plusieurs zones', 3000, 1, 'Boss'),
(31, 'Chevalier Rouge (Bell Bearing Hunter)', 'Église de Vows', 3500, 1, 'Boss'),
(32, 'Crucible Knight (Duo)', 'Donjon d’Azula', 9500, 1, 'Boss'),
(33, 'Valiant Gargoyles (Duo)', 'Aqueducs souterrains', 8000, 1, 'Boss'),
(34, 'Fallingstar Beast (Évolué)', 'Mont Gelmir', 15500, 1, 'Boss'),
(35, 'Soldat Godrick', 'Nécrolimbe', 320, 1, 'Mob'),
(36, 'Chien écarlate', 'Caelid', 450, 1, 'Mob'),
(37, 'Guerrier ancestral', 'Siofra', 1800, 1, 'Mob'),
(38, 'Chevalier de la pourriture', 'Plateau d’Altus', 2200, 1, 'Mob'),
(39, 'Démon de l’Asile', 'Asile des Morts-Vivants du Nord', 825, 2, 'Boss'),
(40, 'Démon Taureau', 'Bourg des Morts-Vivants', 1, 2, 'Boss'),
(41, 'Gargouilles Cloche', 'Paroisse des Morts-Vivants', 1185, 2, 'Boss'),
(42, 'Démon Capra', 'Bas-Bourg des Morts-Vivants', 1176, 2, 'Boss'),
(43, 'Dragon Béant', 'Les Profondeurs', 4375, 2, 'Boss'),
(44, 'Sorcière du Chaos Quelaag', 'Blighttown', 3139, 2, 'Boss'),
(45, 'Golem de Fer', 'Forteresse de Sen', 1750, 2, 'Boss'),
(46, 'Ornstein et Smough', 'Anor Londo', 4693, 2, 'Boss'),
(47, 'Gwyndolin le Dieu-Solaire Obscur', 'Anor Londo', 2000, 2, 'Boss'),
(48, 'Priscilla la Croisée', 'Monde Peint Ariamis', 2400, 2, 'Boss'),
(49, 'Sif, le Grand Loup Gris', 'Jardin de Darkroot', 3432, 2, 'Boss'),
(50, 'Pinwheel', 'Les Catacombes', 1337, 2, 'Boss'),
(51, 'Nito, Seigneur des Tombes', 'Tombeau des Géants', 4588, 2, 'Boss'),
(52, 'Seath l’Imberbe', 'Archives du Duc', 5250, 2, 'Boss'),
(53, 'Les Quatre Rois', 'Ruines de New Londo', 9600, 2, 'Boss'),
(54, 'Décharge Perpétuelle', 'Ruines Démoniaques', 4200, 2, 'Boss'),
(55, 'Démon Sage Démoniaque', 'Ruines Démoniaques', 5600, 2, 'Boss'),
(56, 'Démon Mille-Pattes', 'Ruines Démoniaques', 4725, 2, 'Boss'),
(57, 'Lit du Chaos', 'Lost Izalith', 1, 2, 'Boss'),
(58, 'Gwyn, Seigneur des Cendres', 'Fournaise du Premier Feu', 4250, 2, 'Boss'),
(59, 'Chevalier Noir', 'Divers', 600, 2, 'Mob'),
(60, 'Chevalier d’Argent', 'Anor Londo', 450, 2, 'Mob'),
(61, 'Chevalier de Baldur', 'Paroisse des Morts-Vivants', 300, 2, 'Mob'),
(62, 'Guerrier Mort-Vivant', 'Bourg des Morts-Vivants', 150, 2, 'Mob'),
(63, 'Rat Géant', 'Les Profondeurs', 250, 2, 'Mob'),
(64, 'Basilic', 'Les Profondeurs', 200, 2, 'Mob'),
(65, 'Mimic (Coffre Mimique)', 'Divers', 800, 2, 'Mob'),
(66, 'Golem de Cristal', 'Bassin de Darkroot', 500, 2, 'Mob'),
(67, 'Chasseur de la Forêt', 'Jardin de Darkroot', 400, 2, 'Mob'),
(68, 'Squelette', 'Les Catacombes', 200, 2, 'Mob'),
(69, 'Fantôme', 'Ruines de New Londo', 300, 2, 'Mob'),
(70, 'Démon de Titanite', 'Divers', 1200, 2, 'Mob'),
(71, 'Coquillage Mangeur d’Hommes', 'Grotte de Cristal', 350, 2, 'Mob'),
(72, 'Dévoreur de Chaos', 'Lost Izalith', 700, 2, 'Mob'),
(73, 'Sombre Sans-Esprit', 'Ruines de New Londo', 800, 2, 'Mob'),
(74, 'Le Dernier Géant', 'Forteresse de Drang', 4200, 3, 'Boss'),
(75, 'Le Dragonrider', 'Tour du Heid', 3200, 3, 'Boss'),
(76, 'Le Poursuivant', 'Forteresse de Drang', 3800, 3, 'Boss'),
(77, 'Le Squelette des Ruines', 'Tour du Heid', 3500, 3, 'Boss'),
(78, 'Le Rat Autoritaire', 'Tanière des Rats', 2800, 3, 'Boss'),
(79, 'Le Rat Toxique', 'Tanière des Rats', 4500, 3, 'Boss'),
(80, 'Les Gargouilles de la Cloche', 'Bastille des Cloches', 5000, 3, 'Boss'),
(81, 'Le Démon Perdu', 'Bastille des Cloches', 5800, 3, 'Boss'),
(83, 'Le Vieux Roi de Fer', 'Tour du Heid de Fer', 7200, 3, 'Boss'),
(84, 'Freja Répugnante', 'Tanière des Dragons', 8000, 3, 'Boss'),
(85, 'Les Dragonriders (Duo)', 'Dranglaic', 6000, 3, 'Boss'),
(86, 'Le Miroir du Chevalier', 'Dranglaic', 5500, 3, 'Boss'),
(87, 'Le Démon de la Brume', 'Temple de l’Hiver', 4800, 3, 'Boss'),
(88, 'Veldstadt, le Bouclier Royal', 'Crypte des Défunts', 7500, 3, 'Boss'),
(89, 'Vendrick, le Roi Déchu', 'Crypte des Défunts', 10000, 3, 'Boss'),
(91, 'Nashandra, Reine du Crépuscule', 'Trône du Désir', 9000, 3, 'Boss'),
(92, 'Aldia, Erudit du Premier Feu', 'Crypte des Défunts', 12000, 3, 'Boss'),
(93, 'Chevalier d’Heide', 'Tour du Heid', 800, 3, 'Mob'),
(95, 'Guerrier Mastodonte', 'Bastille des Cloches', 1200, 3, 'Mob'),
(96, 'Squelette Royal', 'Fosse Noire', 500, 3, 'Mob'),
(97, 'Dragon Ancien', 'Tanière des Dragons', 1500, 3, 'Mob'),
(100, 'Démon de la Flamme', 'Tour du Heid de Fer', 1100, 3, 'Mob'),
(102, 'Géant Souillé', 'Fosse Noire', 2000, 3, 'Mob'),
(103, 'Gundyr le Champion', 'Cimetière des Cendres', 4275, 4, 'Boss'),
(104, 'Vordt des Profondeurs Glacées', 'Mur des Lothric', 3288, 4, 'Boss'),
(105, 'Le Sage Cristallin', 'Mur des Lothric', 3800, 4, 'Boss'),
(106, 'Les Gardiens de l’Arbre Maudit', 'Route des Sacrifices', 4980, 4, 'Boss'),
(107, 'Le Chevalier des Abysses', 'Cathédrale des Profondeurs', 5600, 4, 'Boss'),
(108, 'Pontife Sulyvahn', 'Irithyll', 8500, 4, 'Boss'),
(109, 'Aldrich, le Dévoreur de Dieux', 'Anor Londo', 7800, 4, 'Boss'),
(110, 'Yhorm le Géant', 'Profondeurs de la Capitale', 12000, 4, 'Boss'),
(111, 'Danseuse de la Vallée Boréale', 'Lothric', 9000, 4, 'Boss'),
(112, 'Le Roi Sans Nom', 'Lothric', 15000, 4, 'Boss'),
(113, 'Chevalier de Lothric', 'Mur des Lothric', 850, 4, 'Mob'),
(114, 'Pietà, Lame de l’Affligé', 'Sanctuaire Oublié', 8500, 5, 'Boss'),
(115, 'Le Congregateur de Chair', 'Fosse aux Ossements', 12000, 5, 'Boss'),
(116, 'Harrower Dervla', 'Citadelle de l’Éclipse', 9500, 5, 'Boss'),
(117, 'Judge Cleric la Radiante', 'Cathédrale de la Lumière Profanée', 15000, 5, 'Boss'),
(118, 'Le Roi Déchu', 'Tour de Penance', 18000, 5, 'Boss'),
(119, 'Adyr le Réprouvé', 'Fournaise du Désert', 25000, 5, 'Boss'),
(120, 'Damarose la Marquée', 'Jardins d’Adyr', 8000, 5, 'Boss'),
(121, 'Griefbound Rowena', 'Lac Écarlate', 11000, 5, 'Boss'),
(122, 'Abbess Ursula', 'Cloître de l’Expiation', 13000, 5, 'Boss'),
(124, 'Reinhold l’Emmuré', 'Donjon des Oubliés', 14000, 5, 'Boss');

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `game_name` varchar(30) NOT NULL,
  `release_date` date NOT NULL,
  `editor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id_game`, `game_name`, `release_date`, `editor`) VALUES
(1, 'Elden Ring', '2022-02-25', 'FromSoftware'),
(2, 'Dark Souls', '2011-09-22', 'FromSoftware'),
(3, 'Dark Souls 2', '2014-03-11', 'FromSoftware'),
(4, 'Dark Souls 3', '2016-03-24', 'FromSoftware'),
(5, ' Lords of the Fallen', '2023-10-13', 'CI Games');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `characteristic`
--
ALTER TABLE `characteristic`
  ADD PRIMARY KEY (`id_charac`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Index pour la table `entity`
--
ALTER TABLE `entity`
  ADD PRIMARY KEY (`id_entity`),
  ADD KEY `id_game` (`id_game`);

--
-- Index pour la table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `characteristic`
--
ALTER TABLE `characteristic`
  MODIFY `id_charac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `entity`
--
ALTER TABLE `entity`
  MODIFY `id_entity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `entity`
--
ALTER TABLE `entity`
  ADD CONSTRAINT `id_game` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
