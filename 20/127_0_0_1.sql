-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 29 avr. 2026 à 17:51
-- Version du serveur : 10.4.8-MariaDB
-- Version de PHP : 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `adhem`
--
CREATE DATABASE IF NOT EXISTS `adhem` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `adhem`;

-- --------------------------------------------------------

--
-- Structure de la table `hlmo`
--

CREATE TABLE `hlmo` (
  `bb` int(8) NOT NULL,
  `dd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hh` int(11) NOT NULL,
  `ll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sno`
--

CREATE TABLE `sno` (
  `kk` int(11) NOT NULL,
  `nn` int(11) NOT NULL,
  `yy` int(11) NOT NULL,
  `hh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `hlmo`
--
ALTER TABLE `hlmo`
  ADD PRIMARY KEY (`bb`);

--
-- Index pour la table `sno`
--
ALTER TABLE `sno`
  ADD KEY `hh` (`hh`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `sno`
--
ALTER TABLE `sno`
  ADD CONSTRAINT `sno_ibfk_1` FOREIGN KEY (`hh`) REFERENCES `hlmo` (`bb`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données : `adhemblel`
--
CREATE DATABASE IF NOT EXISTS `adhemblel` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `adhemblel`;

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `idDoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `nomDoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateCreation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`idDoc`, `nomDoc`, `dateCreation`) VALUES
('D0001', 'Liste employés.pdf', '2025-02-15 09:14:39'),
('D0002', 'Demande de congés.docx', '2021-10-09 08:10:09'),
('D0003', 'Réclamation ouvriers.docx', '2022-02-07 11:00:29'),
('D0004', 'Statistiques2024.xlsx', '2025-01-31 07:00:20');

-- --------------------------------------------------------

--
-- Structure de la table `droit`
--

CREATE TABLE `droit` (
  `iddoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `idutil` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `ecriture` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `lecture` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `impression` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtil` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nomPrenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtil`, `nomPrenom`) VALUES
('', ''),
('U001', 'Ali GAFSI'),
('U002', 'Mohamed SOUSSI'),
('U003', 'Karima TOUNSI'),
('U004', 'Kamel SFAXI'),
('U005', 'Houda JANDOUBI'),
('U006', 'Taoufik BEJI');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`idDoc`);

--
-- Index pour la table `droit`
--
ALTER TABLE `droit`
  ADD PRIMARY KEY (`iddoc`,`idutil`),
  ADD UNIQUE KEY `iddoc` (`iddoc`,`idutil`),
  ADD KEY `idutil` (`idutil`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtil`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `droit`
--
ALTER TABLE `droit`
  ADD CONSTRAINT `droit_ibfk_1` FOREIGN KEY (`idutil`) REFERENCES `utilisateur` (`idUtil`),
  ADD CONSTRAINT `droit_ibfk_2` FOREIGN KEY (`iddoc`) REFERENCES `document` (`idDoc`);
--
-- Base de données : `base2025`
--
CREATE DATABASE IF NOT EXISTS `base2025` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `base2025`;

-- --------------------------------------------------------

--
-- Structure de la table `document`
--
-- Erreur de lecture de structure pour la table base2025.document : #1932 - Table 'base2025.document' doesn't exist in engine
-- Erreur de lecture des données pour la table base2025.document : #1064 - Erreur de syntaxe près de 'FROM `base2025`.`document`' à la ligne 1
--
-- Base de données : `base20250`
--
CREATE DATABASE IF NOT EXISTS `base20250` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `base20250`;

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `idDoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `nomDoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateCreation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`idDoc`, `nomDoc`, `dateCreation`) VALUES
('D0001', 'Liste employés.pdf', '2025-02-15 09:14:39'),
('D0002', 'Demande de congés.docx', '2021-10-09 08:10:09'),
('D0003', 'Réclamation ouvriers.docx', '2022-02-07 11:00:29'),
('D0004', 'Statistiques2024.xlsx', '2025-01-31 07:00:20');

-- --------------------------------------------------------

--
-- Structure de la table `droit`
--

CREATE TABLE `droit` (
  `iddoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `idutil` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `ecriture` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `lecture` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `impression` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtil` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nomPrenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtil`, `nomPrenom`) VALUES
('U001', 'Ali GAFSI'),
('U002', 'Mohamed SOUSSI'),
('U003', 'Karima TOUNSI'),
('U004', 'Kamel SFAXI'),
('U005', 'Houda JANDOUBI'),
('U006', 'Taoufik BEJI');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`idDoc`);

--
-- Index pour la table `droit`
--
ALTER TABLE `droit`
  ADD PRIMARY KEY (`iddoc`,`idutil`),
  ADD KEY `idutil` (`idutil`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtil`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `droit`
--
ALTER TABLE `droit`
  ADD CONSTRAINT `droit_ibfk_1` FOREIGN KEY (`iddoc`) REFERENCES `document` (`idDoc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `droit_ibfk_2` FOREIGN KEY (`idutil`) REFERENCES `utilisateur` (`idUtil`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données : `bedis`
--
CREATE DATABASE IF NOT EXISTS `bedis` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bedis`;

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `num` int(11) NOT NULL,
  `nom prenom` text COLLATE utf8_unicode_ci NOT NULL,
  `datenais` date NOT NULL,
  `tel` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `classe` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `code` int(12) NOT NULL,
  `libelle` decimal(3,0) NOT NULL,
  `coef` decimal(3,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `num` int(50) NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dc` decimal(4,0) NOT NULL,
  `ds` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`num`),
  ADD UNIQUE KEY `tel` (`tel`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`num`,`code`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`num`) REFERENCES `eleve` (`num`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données : `dtyfg`
--
CREATE DATABASE IF NOT EXISTS `dtyfg` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `dtyfg`;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `idf` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `type` enum('action','drama','comedy') COLLATE utf8_unicode_ci NOT NULL,
  `idr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`idf`, `nom`, `date`, `type`, `idr`) VALUES
(1, 'choufly', '2024-10-16', 'drama', 2),
(2, 'hwwwb', '2024-10-09', 'comedy', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idf`),
  ADD KEY `idr` (`idr`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `idf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de données : `dvkkk`
--
CREATE DATABASE IF NOT EXISTS `dvkkk` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `dvkkk`;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `idf` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `type` enum('action','drama','comedy') COLLATE utf8_unicode_ci NOT NULL,
  `idr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`idf`, `nom`, `date`, `type`, `idr`) VALUES
(1, 'choufly', '2024-10-16', 'drama', 2);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `idr` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`idr`, `nom`) VALUES
(2, 'eya');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idf`),
  ADD KEY `idr` (`idr`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`idr`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `idf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`idr`) REFERENCES `realisateur` (`idr`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données : `ecole`
--
CREATE DATABASE IF NOT EXISTS `ecole` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ecole`;

-- --------------------------------------------------------

--
-- Structure de la table `abonne`
--

CREATE TABLE `abonne` (
  `num_abonne` int(11) NOT NULL,
  `nom_abone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom_abonne` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `abonne`
--

INSERT INTO `abonne` (`num_abonne`, `nom_abone`, `prenom_abonne`, `tel`) VALUES
(100, 'agfgf hbou', 'jggbou', '24547988');

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `code_livre` int(4) NOT NULL,
  `num_abonne` int(11) NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_retour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `code_livre` int(4) NOT NULL,
  `titre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `auteur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `editeur` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prix` decimal(6,2) DEFAULT 0.00,
  `page` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonne`
--
ALTER TABLE `abonne`
  ADD PRIMARY KEY (`num_abonne`);

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`code_livre`,`num_abonne`,`date_emprunt`),
  ADD KEY `code_livre` (`code_livre`),
  ADD KEY `num_abonne` (`num_abonne`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`code_livre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonne`
--
ALTER TABLE `abonne`
  MODIFY `num_abonne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`num_abonne`) REFERENCES `abonne` (`num_abonne`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkc` FOREIGN KEY (`code_livre`) REFERENCES `livre` (`code_livre`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données : `elite_performance_academy`
--
CREATE DATABASE IF NOT EXISTS `elite_performance_academy` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `elite_performance_academy`;

-- --------------------------------------------------------

--
-- Structure de la table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coach_id` int(11) NOT NULL,
  `appointment_type` enum('training','consultation','check_in','assessment','other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `scheduled_date` date NOT NULL,
  `scheduled_time` time NOT NULL,
  `duration_minutes` int(11) DEFAULT 60,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meeting_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('scheduled','confirmed','completed','cancelled','no_show') COLLATE utf8_unicode_ci DEFAULT 'scheduled',
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `coach_notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `author_id` int(11) NOT NULL,
  `status` enum('draft','published','archived') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `published_at` timestamp NULL DEFAULT NULL,
  `view_count` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `body_measurements`
--

CREATE TABLE `body_measurements` (
  `measurement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `measurement_date` date NOT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `body_fat_percentage` decimal(4,2) DEFAULT NULL,
  `muscle_mass_kg` decimal(5,2) DEFAULT NULL,
  `chest_cm` decimal(5,2) DEFAULT NULL,
  `waist_cm` decimal(5,2) DEFAULT NULL,
  `hips_cm` decimal(5,2) DEFAULT NULL,
  `thigh_cm` decimal(5,2) DEFAULT NULL,
  `bicep_cm` decimal(5,2) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chatbot_conversations`
--

CREATE TABLE `chatbot_conversations` (
  `conversation_id` int(11) NOT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `started_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_message_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('active','closed') COLLATE utf8_unicode_ci DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chatbot_messages`
--

CREATE TABLE `chatbot_messages` (
  `chat_message_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `sender_type` enum('user','bot') COLLATE utf8_unicode_ci NOT NULL,
  `message_text` text COLLATE utf8_unicode_ci NOT NULL,
  `intent` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confidence_score` decimal(3,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact_submissions`
--

CREATE TABLE `contact_submissions` (
  `submission_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_interest` enum('elite_1on1','platinum_online','executive_transformation','other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('new','contacted','converted','closed') COLLATE utf8_unicode_ci DEFAULT 'new',
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exercises`
--

CREATE TABLE `exercises` (
  `exercise_id` int(11) NOT NULL,
  `exercise_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` enum('chest','back','shoulders','arms','legs','core','cardio','other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `muscle_group` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equipment_needed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `difficulty` enum('beginner','intermediate','advanced') COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tips` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `common_mistakes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `exercises`
--

INSERT INTO `exercises` (`exercise_id`, `exercise_name`, `category`, `muscle_group`, `equipment_needed`, `difficulty`, `description`, `instructions`, `video_url`, `image_url`, `tips`, `common_mistakes`, `created_at`, `updated_at`) VALUES
(1, 'Barbell Bench Press', 'chest', 'Pectorals, Triceps, Shoulders', 'Barbell, Bench', 'intermediate', 'Compound pressing movement for chest development', NULL, NULL, NULL, 'Keep shoulder blades retracted, lower bar to mid-chest', NULL, '2026-04-29 15:51:11', '2026-04-29 15:51:11'),
(2, 'Incline Dumbbell Press', 'chest', 'Upper Pectorals, Shoulders', 'Dumbbells, Incline Bench', 'intermediate', 'Targets upper chest fibers', NULL, NULL, NULL, 'Set bench to 30-45 degrees for optimal upper chest activation', NULL, '2026-04-29 15:51:11', '2026-04-29 15:51:11'),
(3, 'Standing Barbell OHP', 'shoulders', 'Deltoids, Triceps', 'Barbell', 'advanced', 'Overhead press for shoulder development', NULL, NULL, NULL, 'Engage core, avoid excessive back arch', NULL, '2026-04-29 15:51:11', '2026-04-29 15:51:11'),
(4, 'Cable Lateral Raises', 'shoulders', 'Lateral Deltoids', 'Cable Machine', 'beginner', 'Isolation movement for side delts', NULL, NULL, NULL, 'Keep slight bend in elbows, lead with elbows not hands', NULL, '2026-04-29 15:51:11', '2026-04-29 15:51:11'),
(5, 'Tricep Rope Pushdowns', 'arms', 'Triceps', 'Cable Machine, Rope', 'beginner', 'Tricep isolation exercise', NULL, NULL, NULL, 'Keep elbows tucked, full extension at bottom', NULL, '2026-04-29 15:51:11', '2026-04-29 15:51:11');

-- --------------------------------------------------------

--
-- Structure de la table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `invoice_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `tax_amount` decimal(10,2) DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('draft','sent','paid','overdue','cancelled') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `payment_id` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `meals`
--

CREATE TABLE `meals` (
  `meal_id` int(11) NOT NULL,
  `meal_plan_id` int(11) NOT NULL,
  `meal_type` enum('breakfast','lunch','dinner','snack','pre_workout','post_workout') COLLATE utf8_unicode_ci DEFAULT NULL,
  `meal_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipe` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  `protein_grams` decimal(5,1) DEFAULT NULL,
  `carbs_grams` decimal(5,1) DEFAULT NULL,
  `fat_grams` decimal(5,1) DEFAULT NULL,
  `preparation_time_minutes` int(11) DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `meal_plans`
--

CREATE TABLE `meal_plans` (
  `meal_plan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `daily_calories` int(11) DEFAULT NULL,
  `protein_grams` int(11) DEFAULT NULL,
  `carbs_grams` int(11) DEFAULT NULL,
  `fat_grams` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','completed','cancelled') COLLATE utf8_unicode_ci DEFAULT 'active',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message_text` text COLLATE utf8_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `attachment_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_type` enum('workout_reminder','appointment','message','payment','achievement','system') COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `nutrition_logs`
--

CREATE TABLE `nutrition_logs` (
  `nutrition_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_date` date NOT NULL,
  `meal_id` int(11) DEFAULT NULL,
  `meal_type` enum('breakfast','lunch','dinner','snack','pre_workout','post_workout') COLLATE utf8_unicode_ci DEFAULT NULL,
  `food_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  `protein_grams` decimal(5,1) DEFAULT NULL,
  `carbs_grams` decimal(5,1) DEFAULT NULL,
  `fat_grams` decimal(5,1) DEFAULT NULL,
  `water_ml` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `page_views`
--

CREATE TABLE `page_views` (
  `view_id` int(11) NOT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `referrer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `payment_method` enum('credit_card','paypal','bank_transfer','other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('pending','completed','failed','refunded') COLLATE utf8_unicode_ci DEFAULT 'pending',
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_records`
--

CREATE TABLE `personal_records` (
  `pr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `record_type` enum('max_weight','max_reps','best_time','total_volume') COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(10,2) NOT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `achieved_date` date NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `program_type` enum('elite_1on1','platinum_online','executive_transformation','custom') COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration_days` int(11) NOT NULL,
  `duration_type` enum('monthly','weekly','12_weeks','custom') COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_clients` int(11) DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features`)),
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `programs`
--

INSERT INTO `programs` (`program_id`, `program_name`, `program_type`, `description`, `price`, `duration_days`, `duration_type`, `max_clients`, `features`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Elite 1-on-1 Coaching', 'elite_1on1', 'Private training sessions with personalized programming', '500.00', 30, 'monthly', NULL, '[\"Personal Training\", \"Form Analysis\", \"Weekly Check-ins\", \"Body Composition Tracking\"]', 1, '2026-04-29 15:51:10', '2026-04-29 15:51:10'),
(2, 'Platinum Online Coaching', 'platinum_online', 'Fully customized remote training with video check-ins', '350.00', 30, 'monthly', NULL, '[\"Custom Programming\", \"Weekly Video Check-ins\", \"Meal Planning\", \"Unlimited Support\"]', 1, '2026-04-29 15:51:10', '2026-04-29 15:51:10'),
(3, 'Executive Transformation', 'executive_transformation', 'Comprehensive 12-week transformation program', '3500.00', 84, '12_weeks', NULL, '[\"Training\", \"Nutrition\", \"Recovery Protocols\", \"Stress Management\", \"Lifestyle Optimization\"]', 1, '2026-04-29 15:51:10', '2026-04-29 15:51:10');

-- --------------------------------------------------------

--
-- Structure de la table `progress_photos`
--

CREATE TABLE `progress_photos` (
  `photo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `photo_date` date NOT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_type` enum('front','side','back','other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_settings`
--

CREATE TABLE `site_settings` (
  `setting_id` int(11) NOT NULL,
  `setting_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting_type` enum('text','number','boolean','json') COLLATE utf8_unicode_ci DEFAULT 'text',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `site_settings`
--

INSERT INTO `site_settings` (`setting_id`, `setting_key`, `setting_value`, `setting_type`, `description`, `updated_at`) VALUES
(1, 'site_name', 'Elite Performance Academy', 'text', 'Website name', '2026-04-29 15:51:11'),
(2, 'contact_email', 'coach@eliteperformance.com', 'text', 'Main contact email', '2026-04-29 15:51:11'),
(3, 'contact_phone', '+1 (555) 123-4567', 'text', 'Main contact phone', '2026-04-29 15:51:11'),
(4, 'business_hours', '{\"monday\": \"6AM-8PM\", \"tuesday\": \"6AM-8PM\", \"wednesday\": \"6AM-8PM\", \"thursday\": \"6AM-8PM\", \"friday\": \"6AM-8PM\", \"saturday\": \"8AM-6PM\", \"sunday\": \"Closed\"}', 'json', 'Business operating hours', '2026-04-29 15:51:11'),
(5, 'social_instagram', 'https://instagram.com/eliteperformance', 'text', 'Instagram URL', '2026-04-29 15:51:11'),
(6, 'social_facebook', 'https://facebook.com/eliteperformance', 'text', 'Facebook URL', '2026-04-29 15:51:11'),
(7, 'social_youtube', 'https://youtube.com/eliteperformance', 'text', 'YouTube URL', '2026-04-29 15:51:11');

-- --------------------------------------------------------

--
-- Structure de la table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscription_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('active','paused','cancelled','completed') COLLATE utf8_unicode_ci DEFAULT 'active',
  `payment_status` enum('paid','pending','failed','refunded') COLLATE utf8_unicode_ci DEFAULT 'pending',
  `auto_renew` tinyint(1) DEFAULT 1,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `template_exercises`
--

CREATE TABLE `template_exercises` (
  `template_exercise_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `exercise_order` int(11) NOT NULL,
  `sets` int(11) NOT NULL,
  `reps` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rest_seconds` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `template_exercises`
--

INSERT INTO `template_exercises` (`template_exercise_id`, `template_id`, `exercise_id`, `exercise_order`, `sets`, `reps`, `tempo`, `rest_seconds`, `notes`) VALUES
(1, 1, 1, 1, 4, '6-8', '3-0-1-0', 180, NULL),
(2, 1, 2, 2, 4, '8-10', '2-0-1-0', 150, NULL),
(3, 1, 3, 3, 4, '8-10', '2-0-1-0', 150, NULL),
(4, 1, 4, 4, 3, '12-15', '2-1-1-0', 90, NULL),
(5, 1, 5, 5, 3, '12-15', '2-0-1-1', 75, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `testimonials`
--

CREATE TABLE `testimonials` (
  `testimonial_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `testimonial_text` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `before_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `after_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight_lost_kg` decimal(5,2) DEFAULT NULL,
  `timeframe_weeks` int(11) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `is_approved` tinyint(1) DEFAULT 0,
  `display_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female','other','prefer_not_to_say') COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` enum('client','coach','admin') COLLATE utf8_unicode_ci DEFAULT 'client',
  `status` enum('active','inactive','suspended') COLLATE utf8_unicode_ci DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_activity_log`
--

CREATE TABLE `user_activity_log` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activity_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `preference_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email_notifications` tinyint(1) DEFAULT 1,
  `sms_notifications` tinyint(1) DEFAULT 0,
  `workout_reminders` tinyint(1) DEFAULT 1,
  `newsletter_subscription` tinyint(1) DEFAULT 1,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'en',
  `measurement_system` enum('metric','imperial') COLLATE utf8_unicode_ci DEFAULT 'metric',
  `theme` enum('light','dark','auto') COLLATE utf8_unicode_ci DEFAULT 'light',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `height_cm` decimal(5,2) DEFAULT NULL,
  `current_weight_kg` decimal(5,2) DEFAULT NULL,
  `goal_weight_kg` decimal(5,2) DEFAULT NULL,
  `fitness_level` enum('beginner','intermediate','advanced','elite') COLLATE utf8_unicode_ci DEFAULT NULL,
  `fitness_goals` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_conditions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `injuries` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `emergency_contact_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emergency_contact_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_workout_time` enum('morning','afternoon','evening','flexible') COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_workouts`
--

CREATE TABLE `user_workouts` (
  `user_workout_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `scheduled_date` date NOT NULL,
  `status` enum('scheduled','in_progress','completed','skipped') COLLATE utf8_unicode_ci DEFAULT 'scheduled',
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `coach_notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` enum('tutorial','transformation','nutrition','motivation','other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_seconds` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT 0,
  `is_public` tinyint(1) DEFAULT 1,
  `uploaded_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workout_logs`
--

CREATE TABLE `workout_logs` (
  `log_id` int(11) NOT NULL,
  `user_workout_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `set_number` int(11) NOT NULL,
  `reps_completed` int(11) DEFAULT NULL,
  `weight_kg` decimal(6,2) DEFAULT NULL,
  `duration_seconds` int(11) DEFAULT NULL,
  `rest_seconds` int(11) DEFAULT NULL,
  `rpe` decimal(3,1) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workout_templates`
--

CREATE TABLE `workout_templates` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workout_type` enum('push','pull','legs','upper','lower','full_body','custom') COLLATE utf8_unicode_ci DEFAULT NULL,
  `difficulty_level` enum('beginner','intermediate','advanced','elite') COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_minutes` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `workout_templates`
--

INSERT INTO `workout_templates` (`template_id`, `template_name`, `workout_type`, `difficulty_level`, `description`, `duration_minutes`, `created_by`, `is_public`, `created_at`, `updated_at`) VALUES
(1, 'Elite Push Day A', 'push', 'advanced', 'Advanced push workout focusing on chest, shoulders, and triceps', 75, NULL, 0, '2026-04-29 15:51:11', '2026-04-29 15:51:11');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `idx_user_date` (`user_id`,`scheduled_date`),
  ADD KEY `idx_coach_date` (`coach_id`,`scheduled_date`),
  ADD KEY `idx_status` (`status`);

--
-- Index pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `idx_slug` (`slug`),
  ADD KEY `idx_status` (`status`);

--
-- Index pour la table `body_measurements`
--
ALTER TABLE `body_measurements`
  ADD PRIMARY KEY (`measurement_id`),
  ADD KEY `idx_user_date` (`user_id`,`measurement_date`);

--
-- Index pour la table `chatbot_conversations`
--
ALTER TABLE `chatbot_conversations`
  ADD PRIMARY KEY (`conversation_id`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `idx_session` (`session_id`),
  ADD KEY `idx_user` (`user_id`);

--
-- Index pour la table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  ADD PRIMARY KEY (`chat_message_id`),
  ADD KEY `idx_conversation` (`conversation_id`,`created_at`);

--
-- Index pour la table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  ADD PRIMARY KEY (`submission_id`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created` (`created_at`);

--
-- Index pour la table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`exercise_id`),
  ADD KEY `idx_category` (`category`),
  ADD KEY `idx_muscle_group` (`muscle_group`);

--
-- Index pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `subscription_id` (`subscription_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_status` (`status`);

--
-- Index pour la table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`meal_id`),
  ADD KEY `idx_meal_plan` (`meal_plan_id`);

--
-- Index pour la table `meal_plans`
--
ALTER TABLE `meal_plans`
  ADD PRIMARY KEY (`meal_plan_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_user_dates` (`user_id`,`start_date`,`end_date`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `idx_conversation` (`conversation_id`,`created_at`),
  ADD KEY `idx_receiver_read` (`receiver_id`,`is_read`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `idx_user_read` (`user_id`,`is_read`),
  ADD KEY `idx_created` (`created_at`);

--
-- Index pour la table `nutrition_logs`
--
ALTER TABLE `nutrition_logs`
  ADD PRIMARY KEY (`nutrition_log_id`),
  ADD KEY `meal_id` (`meal_id`),
  ADD KEY `idx_user_date` (`user_id`,`log_date`);

--
-- Index pour la table `page_views`
--
ALTER TABLE `page_views`
  ADD PRIMARY KEY (`view_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_page` (`page_url`),
  ADD KEY `idx_date` (`viewed_at`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `subscription_id` (`subscription_id`),
  ADD KEY `idx_user_date` (`user_id`,`payment_date`),
  ADD KEY `idx_status` (`status`);

--
-- Index pour la table `personal_records`
--
ALTER TABLE `personal_records`
  ADD PRIMARY KEY (`pr_id`),
  ADD KEY `exercise_id` (`exercise_id`),
  ADD KEY `idx_user_exercise` (`user_id`,`exercise_id`);

--
-- Index pour la table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`),
  ADD KEY `idx_program_type` (`program_type`);

--
-- Index pour la table `progress_photos`
--
ALTER TABLE `progress_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `idx_user_date` (`user_id`,`photo_date`);

--
-- Index pour la table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`),
  ADD KEY `idx_key` (`setting_key`);

--
-- Index pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscription_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `idx_user_status` (`user_id`,`status`),
  ADD KEY `idx_dates` (`start_date`,`end_date`);

--
-- Index pour la table `template_exercises`
--
ALTER TABLE `template_exercises`
  ADD PRIMARY KEY (`template_exercise_id`),
  ADD KEY `exercise_id` (`exercise_id`),
  ADD KEY `idx_template` (`template_id`,`exercise_order`);

--
-- Index pour la table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`testimonial_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_approved` (`is_approved`),
  ADD KEY `idx_featured` (`is_featured`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_user_type` (`user_type`);

--
-- Index pour la table `user_activity_log`
--
ALTER TABLE `user_activity_log`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_type` (`activity_type`);

--
-- Index pour la table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`preference_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Index pour la table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Index pour la table `user_workouts`
--
ALTER TABLE `user_workouts`
  ADD PRIMARY KEY (`user_workout_id`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `idx_user_date` (`user_id`,`scheduled_date`),
  ADD KEY `idx_status` (`status`);

--
-- Index pour la table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `uploaded_by` (`uploaded_by`),
  ADD KEY `idx_category` (`category`),
  ADD KEY `idx_public` (`is_public`);

--
-- Index pour la table `workout_logs`
--
ALTER TABLE `workout_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `idx_user_workout` (`user_workout_id`),
  ADD KEY `idx_exercise` (`exercise_id`);

--
-- Index pour la table `workout_templates`
--
ALTER TABLE `workout_templates`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_workout_type` (`workout_type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `body_measurements`
--
ALTER TABLE `body_measurements`
  MODIFY `measurement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chatbot_conversations`
--
ALTER TABLE `chatbot_conversations`
  MODIFY `conversation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `exercise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `meals`
--
ALTER TABLE `meals`
  MODIFY `meal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `meal_plans`
--
ALTER TABLE `meal_plans`
  MODIFY `meal_plan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nutrition_logs`
--
ALTER TABLE `nutrition_logs`
  MODIFY `nutrition_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `page_views`
--
ALTER TABLE `page_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_records`
--
ALTER TABLE `personal_records`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `progress_photos`
--
ALTER TABLE `progress_photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `template_exercises`
--
ALTER TABLE `template_exercises`
  MODIFY `template_exercise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_activity_log`
--
ALTER TABLE `user_activity_log`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `preference_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_workouts`
--
ALTER TABLE `user_workouts`
  MODIFY `user_workout_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workout_logs`
--
ALTER TABLE `workout_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workout_templates`
--
ALTER TABLE `workout_templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`coach_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `body_measurements`
--
ALTER TABLE `body_measurements`
  ADD CONSTRAINT `body_measurements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `chatbot_conversations`
--
ALTER TABLE `chatbot_conversations`
  ADD CONSTRAINT `chatbot_conversations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  ADD CONSTRAINT `chatbot_messages_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `chatbot_conversations` (`conversation_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  ADD CONSTRAINT `contact_submissions_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`subscription_id`),
  ADD CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`);

--
-- Contraintes pour la table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_ibfk_1` FOREIGN KEY (`meal_plan_id`) REFERENCES `meal_plans` (`meal_plan_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `meal_plans`
--
ALTER TABLE `meal_plans`
  ADD CONSTRAINT `meal_plans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meal_plans_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `nutrition_logs`
--
ALTER TABLE `nutrition_logs`
  ADD CONSTRAINT `nutrition_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nutrition_logs_ibfk_2` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`meal_id`);

--
-- Contraintes pour la table `page_views`
--
ALTER TABLE `page_views`
  ADD CONSTRAINT `page_views_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`subscription_id`);

--
-- Contraintes pour la table `personal_records`
--
ALTER TABLE `personal_records`
  ADD CONSTRAINT `personal_records_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personal_records_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`exercise_id`);

--
-- Contraintes pour la table `progress_photos`
--
ALTER TABLE `progress_photos`
  ADD CONSTRAINT `progress_photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`);

--
-- Contraintes pour la table `template_exercises`
--
ALTER TABLE `template_exercises`
  ADD CONSTRAINT `template_exercises_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `workout_templates` (`template_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `template_exercises_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`exercise_id`);

--
-- Contraintes pour la table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_activity_log`
--
ALTER TABLE `user_activity_log`
  ADD CONSTRAINT `user_activity_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD CONSTRAINT `user_preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_workouts`
--
ALTER TABLE `user_workouts`
  ADD CONSTRAINT `user_workouts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_workouts_ibfk_2` FOREIGN KEY (`template_id`) REFERENCES `workout_templates` (`template_id`);

--
-- Contraintes pour la table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `workout_logs`
--
ALTER TABLE `workout_logs`
  ADD CONSTRAINT `workout_logs_ibfk_1` FOREIGN KEY (`user_workout_id`) REFERENCES `user_workouts` (`user_workout_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `workout_logs_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`exercise_id`);

--
-- Contraintes pour la table `workout_templates`
--
ALTER TABLE `workout_templates`
  ADD CONSTRAINT `workout_templates_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`);
--
-- Base de données : `gestion-banque`
--
CREATE DATABASE IF NOT EXISTS `gestion-banque` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gestion-banque`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gestion-reseau`
--

CREATE TABLE `gestion-reseau` (
  `nmr` int(11) NOT NULL,
  `client` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gestion-reseau`
--
ALTER TABLE `gestion-reseau`
  ADD PRIMARY KEY (`nmr`),
  ADD KEY `nom` (`nom`);
--
-- Base de données : `hhhhhh`
--
CREATE DATABASE IF NOT EXISTS `hhhhhh` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `hhhhhh`;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `idf` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `type` enum('action','drama','comedy') COLLATE utf8_unicode_ci NOT NULL,
  `idr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`idf`, `nom`, `date`, `type`, `idr`) VALUES
(1, 'choufly', '2024-10-16', 'drama', 2);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `idr` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`idr`, `nom`) VALUES
(2, 'eya');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idf`),
  ADD KEY `idr` (`idr`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`idr`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `idf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`idr`) REFERENCES `realisateur` (`idr`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données : `sti2024`
--
CREATE DATABASE IF NOT EXISTS `sti2024` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `sti2024`;

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `idmem` int(11) NOT NULL,
  `idpar` int(11) NOT NULL,
  `datedeb` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jardin`
--

CREATE TABLE `jardin` (
  `idjar` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nomjar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `jardin`
--

INSERT INTO `jardin` (`idjar`, `nomjar`, `adresse`) VALUES
('j1', 'residence des pins', 'cite des pins'),
('r3', 'eden des roses', 'rue des martyres');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `idmem` int(11) NOT NULL,
  `nommem` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genre` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `datenais` date NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mdp` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `parcelle`
--

CREATE TABLE `parcelle` (
  `idpar` int(11) NOT NULL,
  `numpar` int(11) NOT NULL,
  `idmem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`idmem`,`idpar`),
  ADD KEY `idmem` (`idmem`,`idpar`),
  ADD KEY `idpar` (`idpar`);

--
-- Index pour la table `jardin`
--
ALTER TABLE `jardin`
  ADD PRIMARY KEY (`idjar`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`idmem`);

--
-- Index pour la table `parcelle`
--
ALTER TABLE `parcelle`
  ADD PRIMARY KEY (`idpar`),
  ADD KEY `idmem` (`idmem`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `idmem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parcelle`
--
ALTER TABLE `parcelle`
  MODIFY `idpar` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `affectation_ibfk_1` FOREIGN KEY (`idpar`) REFERENCES `parcelle` (`idpar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affectation_ibfk_2` FOREIGN KEY (`idmem`) REFERENCES `membre` (`idmem`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
