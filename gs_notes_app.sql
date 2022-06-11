-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 11 juin 2022 à 10:07
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gs_notes_app`
--

-- --------------------------------------------------------

--
-- Structure de la table `cadreadministrateur`
--

CREATE TABLE `cadreadministrateur` (
  `grade` varchar(255) DEFAULT NULL,
  `idCardreAdmin` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cadreadministrateur`
--

INSERT INTO `cadreadministrateur` (`grade`, `idCardreAdmin`) VALUES
('gradeeee', 8);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `idCompte` bigint(20) NOT NULL,
  `accepteDemandeAutorisationAbsence` bit(1) NOT NULL,
  `accountNonExpired` bit(1) NOT NULL,
  `accountNonLocked` bit(1) NOT NULL,
  `afficheEmail` bit(1) NOT NULL,
  `affichePhoto` bit(1) NOT NULL,
  `credentialsNonExpired` bit(1) NOT NULL,
  `disconnectAccount` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `idUtilisateur` bigint(20) DEFAULT NULL,
  `idRole` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`idCompte`, `accepteDemandeAutorisationAbsence`, `accountNonExpired`, `accountNonLocked`, `afficheEmail`, `affichePhoto`, `credentialsNonExpired`, `disconnectAccount`, `enabled`, `login`, `password`, `idUtilisateur`, `idRole`) VALUES
(8, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'admin', '$2a$10$f8JD2gC/aTag.TLHUDIUceELgs5yjsVX3VIntTUMasjzV5mon6/he', 8, 1),
(9, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'prof', '$2a$10$f8JD2gC/aTag.TLHUDIUceELgs5yjsVX3VIntTUMasjzV5mon6/he', 9, 2),
(12, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'student', '$2a$10$f8JD2gC/aTag.TLHUDIUceELgs5yjsVX3VIntTUMasjzV5mon6/he', 11, 4),
(13, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'cadre_admin', '$2a$10$f8JD2gC/aTag.TLHUDIUceELgs5yjsVX3VIntTUMasjzV5mon6/he', 11, 3),
(15, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'BOUDAATarik', '$2a$10$f8JD2gC/aTag.TLHUDIUceELgs5yjsVX3VIntTUMasjzV5mon6/he', 8, 2),
(16, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'BOUDAATarik_0', '$2a$10$f8JD2gC/aTag.TLHUDIUceELgs5yjsVX3VIntTUMasjzV5mon6/he', 8, 5),
(17, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'BOUDAATarik_1', '$2a$10$1FcRNwjCBvrLw3eBKmgjDeNhgTBm.UVlXgfaCeTRR8/2g.Bp5B/tu', 8, 1),
(20, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 'Akram', 'Akram', 20, 4),
(21, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'RachidOumaima', '$2a$10$QYsbOKtQAUoiBcEVJENituyfQD5d1tB4z6yr9STmmDyje1gjVIbUq', 25, 4),
(22, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'RachidIlham', '$2a$10$gll8rkv4TPs5ua9KotsYIuhSzbhY3/CuHcuOAi6P2nZrQWc4CXDIG', 24, 4);

-- --------------------------------------------------------

--
-- Structure de la table `element`
--

CREATE TABLE `element` (
  `idMatiere` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `currentCoefficient` double NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `idModule` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `element`
--

INSERT INTO `element` (`idMatiere`, `code`, `currentCoefficient`, `nom`, `idModule`) VALUES
(1, 'JEE', 0.4, 'JEE', 1),
(2, '.NET', 0.6, '.NET', 1),
(3, 'K678N', 0.4, 'Element GC', 3),
(4, '89HUJI', 0.6, 'Elment 2GC', 3),
(5, NULL, 0.3, 'C#', 1),
(6, NULL, 1, 'WEB ELEMENT', 2);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `specialite` varchar(255) DEFAULT NULL,
  `idEnseighant` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`specialite`, `idEnseighant`) VALUES
('math', 10);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `cne` varchar(255) DEFAULT NULL,
  `dateNaissance` datetime(6) DEFAULT NULL,
  `idEtudiant` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`cne`, `dateNaissance`, `idEtudiant`) VALUES
('aaaa', NULL, 9),
('dsqd', NULL, 11),
('M136226976', NULL, 12),
('MLDLCLMDL', '2000-08-24 00:00:00.000000', 20),
('M136226977', NULL, 21),
('M136226978', NULL, 22),
('M136226975', NULL, 23),
('M136226974', NULL, 24),
('M136226973', NULL, 25);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `idFiliere` bigint(20) NOT NULL,
  `anneeFinaccreditation` int(11) NOT NULL,
  `anneeaccreditation` int(11) NOT NULL,
  `codeFiliere` varchar(255) DEFAULT NULL,
  `titreFiliere` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`idFiliere`, `anneeFinaccreditation`, `anneeaccreditation`, `codeFiliere`, `titreFiliere`) VALUES
(1, 2030, 2018, '1234', 'Génie informatique'),
(2, 2030, 2018, 'GC', 'Genie civil');

-- --------------------------------------------------------

--
-- Structure de la table `inscriptionannuelle`
--

CREATE TABLE `inscriptionannuelle` (
  `idInscription` bigint(20) NOT NULL,
  `annee` int(11) NOT NULL,
  `etat` int(11) NOT NULL,
  `mention` varchar(255) DEFAULT NULL,
  `plusInfos` varchar(255) DEFAULT NULL,
  `rang` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `idEtudiant` bigint(20) DEFAULT NULL,
  `idNiveau` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscriptionannuelle`
--

INSERT INTO `inscriptionannuelle` (`idInscription`, `annee`, `etat`, `mention`, `plusInfos`, `rang`, `type`, `validation`, `idEtudiant`, `idNiveau`) VALUES
(0, 2022, 12, 'Bien', NULL, 0, NULL, NULL, 20, 1),
(2, 2022, 12, NULL, NULL, 0, NULL, NULL, 9, 1),
(3, 2022, 0, NULL, NULL, 0, NULL, NULL, 25, 1),
(4, 2022, 0, NULL, NULL, 0, NULL, NULL, 22, 2),
(13, 2022, 0, NULL, NULL, 0, NULL, NULL, 21, 1);

-- --------------------------------------------------------

--
-- Structure de la table `inscriptionmatiere`
--

CREATE TABLE `inscriptionmatiere` (
  `idInscriptionMatiere` bigint(20) NOT NULL,
  `coefficient` double NOT NULL,
  `noteFinale` double NOT NULL,
  `noteSN` double NOT NULL,
  `noteSR` double NOT NULL,
  `plusInfos` varchar(255) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `idInscription` bigint(20) DEFAULT NULL,
  `idMatiere` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscriptionmatiere`
--

INSERT INTO `inscriptionmatiere` (`idInscriptionMatiere`, `coefficient`, `noteFinale`, `noteSN`, `noteSR`, `plusInfos`, `validation`, `idInscription`, `idMatiere`) VALUES
(3, 0.3, 0, 16, 0, NULL, NULL, 4, 3),
(12, 1, 0, 0, 0, NULL, NULL, 3, 6),
(13, 0, 0, 12, 0, NULL, NULL, 13, 6),
(33, 0.4, 0, 16, 0, NULL, NULL, 2, 1),
(55, 0.3, 0, 16, 0, NULL, NULL, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `inscriptionmodule`
--

CREATE TABLE `inscriptionmodule` (
  `idInscriptionModule` bigint(20) NOT NULL,
  `noteFinale` double NOT NULL,
  `noteSN` double NOT NULL,
  `noteSR` double NOT NULL,
  `plusInfos` varchar(255) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `idInscription` bigint(20) DEFAULT NULL,
  `idModule` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscriptionmodule`
--

INSERT INTO `inscriptionmodule` (`idInscriptionModule`, `noteFinale`, `noteSN`, `noteSR`, `plusInfos`, `validation`, `idInscription`, `idModule`) VALUES
(1, 0, 0, 0, NULL, NULL, 0, 1),
(3, 0, 0, 0, NULL, NULL, 2, 1),
(4, 0, 0, 0, NULL, NULL, 4, 3),
(44, 0, 0, 0, NULL, NULL, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `idModule` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `idNiveau` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`idModule`, `code`, `titre`, `idNiveau`) VALUES
(1, '23E57', 'JEE/.NET', 1),
(2, 'T456R', 'WEB', 1),
(3, 'I346F6', 'GC MODLUE', 2);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `idNiveau` bigint(20) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `idFiliere` bigint(20) DEFAULT NULL,
  `niveauSuivant` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`idNiveau`, `alias`, `titre`, `idFiliere`, `niveauSuivant`) VALUES
(1, 'gi2', 'Génie informatique 2', 1, NULL),
(2, 'GC2', 'Génie civil 2', 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `idRole` bigint(20) NOT NULL,
  `nomRole` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`idRole`, `nomRole`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_PROF'),
(3, 'ROLE_CADRE_ADMIN'),
(4, 'ROLE_STUDENT'),
(5, 'ROLE_BIBLIO');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` bigint(20) NOT NULL,
  `cin` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `nomArabe` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `prenomArabe` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `cin`, `email`, `nom`, `nomArabe`, `photo`, `prenom`, `prenomArabe`, `telephone`) VALUES
(8, 'AAAA', 'tarik@tarik.fr', 'BOUDAA', 'Tarik', NULL, 'Tarik', 'Boudaa', '060000000'),
(9, 'ABnh1', 'med1@med.com', 'BOUDAA', 'med', NULL, 'Mohamed', 'med', '2522255'),
(10, 'dqsdqsd', 'dqsdsqd', 'dqdqsd', 'dqsdqdqsd', NULL, 'dsqd', 'dqdqd', '12589632'),
(11, 'AB', 'dsqdqs', 'dsqd', 'dsqdqsd', NULL, 'aaa', 'dqsdqsd', '12589632'),
(12, 'UA122271', 'maryamrachiid@gmail.com', 'Rachid', 'Rachid', NULL, 'Maryam', 'Maryam', '0624814789'),
(20, 'UA19453', 'Akram@gmail.com', 'Akram', 'Akram', '', 'kimo', 'Akram', '0567405750'),
(21, '123', 'Aalae@gmail.com', 'El-Amghari', 'الأمغاري', NULL, 'Aalae', 'علاء', '0624814789'),
(22, '456', 'Akram@etu.uae.ac.ma', 'El-Amghari', 'الأمغاري', NULL, 'Akram', 'أكرم', '0624814789'),
(23, '789', 'Sara@gmail.com', 'Rachid', 'راشيد', NULL, 'Sara', 'سارة', '0624814789'),
(24, '098', 'Ilham@gmail.com', 'Rachid', 'راشيد', NULL, 'Ilham', 'إلهام', '0624814789'),
(25, '765', 'Oumaima@gmail.com', 'Rachid', 'راشيد', NULL, 'Oumaima', 'أميمة', '0624814789');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cadreadministrateur`
--
ALTER TABLE `cadreadministrateur`
  ADD PRIMARY KEY (`idCardreAdmin`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`idCompte`),
  ADD KEY `FK4me3b7yms83bsk757qlkk5icm` (`idUtilisateur`),
  ADD KEY `FK6rqvo0g5sv97xlbrragf5rwn3` (`idRole`);

--
-- Index pour la table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`idMatiere`),
  ADD KEY `FKpy7uud3qt1x365dnkff4f41l8` (`idModule`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`idEnseighant`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`idEtudiant`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`idFiliere`);

--
-- Index pour la table `inscriptionannuelle`
--
ALTER TABLE `inscriptionannuelle`
  ADD PRIMARY KEY (`idInscription`),
  ADD KEY `FKge2xwqtfeqnojw9no8og6vbqn` (`idEtudiant`),
  ADD KEY `FK9lrdmhkam481adiwotdpqo8w` (`idNiveau`);

--
-- Index pour la table `inscriptionmatiere`
--
ALTER TABLE `inscriptionmatiere`
  ADD PRIMARY KEY (`idInscriptionMatiere`),
  ADD KEY `FKdrefbosgrrf561bghbosk681q` (`idInscription`),
  ADD KEY `FK6om7ooil7qy2ipbtocv7hqrwo` (`idMatiere`);

--
-- Index pour la table `inscriptionmodule`
--
ALTER TABLE `inscriptionmodule`
  ADD PRIMARY KEY (`idInscriptionModule`),
  ADD KEY `FK2rp4wu9gg4s1yvbannj858m3c` (`idInscription`),
  ADD KEY `FKsfog581rh033dgomu0u7xywgd` (`idModule`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`idModule`),
  ADD KEY `FK2kgd6okkiatvq3do7akj1cm2k` (`idNiveau`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`idNiveau`),
  ADD KEY `FK9qvkxk4ayqkjopclmlgoel8d9` (`idFiliere`),
  ADD KEY `FKfrb2mq89h77nivboif8tdqwtn` (`niveauSuivant`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`),
  ADD UNIQUE KEY `UK_s4m395xkorrxtrdbuk1upglup` (`cin`),
  ADD UNIQUE KEY `UK_35ysk0sh9ruwixrld3nc0weut` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `idCompte` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `element`
--
ALTER TABLE `element`
  MODIFY `idMatiere` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `idFiliere` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `inscriptionannuelle`
--
ALTER TABLE `inscriptionannuelle`
  MODIFY `idInscription` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `inscriptionmatiere`
--
ALTER TABLE `inscriptionmatiere`
  MODIFY `idInscriptionMatiere` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `inscriptionmodule`
--
ALTER TABLE `inscriptionmodule`
  MODIFY `idInscriptionModule` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `idModule` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `idNiveau` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `idRole` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cadreadministrateur`
--
ALTER TABLE `cadreadministrateur`
  ADD CONSTRAINT `FKq2jdlid8esk1jlagny4qhrh2k` FOREIGN KEY (`idCardreAdmin`) REFERENCES `utilisateur` (`idUtilisateur`);

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `FK4me3b7yms83bsk757qlkk5icm` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`),
  ADD CONSTRAINT `FK6rqvo0g5sv97xlbrragf5rwn3` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`);

--
-- Contraintes pour la table `element`
--
ALTER TABLE `element`
  ADD CONSTRAINT `FKpy7uud3qt1x365dnkff4f41l8` FOREIGN KEY (`idModule`) REFERENCES `module` (`idModule`);

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `FKk26kuxt8qhs6nqv41b2hiyqwb` FOREIGN KEY (`idEnseighant`) REFERENCES `utilisateur` (`idUtilisateur`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `FKkku0boly4both705vo0fri81c` FOREIGN KEY (`idEtudiant`) REFERENCES `utilisateur` (`idUtilisateur`);

--
-- Contraintes pour la table `inscriptionannuelle`
--
ALTER TABLE `inscriptionannuelle`
  ADD CONSTRAINT `FK9lrdmhkam481adiwotdpqo8w` FOREIGN KEY (`idNiveau`) REFERENCES `niveau` (`idNiveau`),
  ADD CONSTRAINT `FKge2xwqtfeqnojw9no8og6vbqn` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiant` (`idEtudiant`);

--
-- Contraintes pour la table `inscriptionmatiere`
--
ALTER TABLE `inscriptionmatiere`
  ADD CONSTRAINT `FK6om7ooil7qy2ipbtocv7hqrwo` FOREIGN KEY (`idMatiere`) REFERENCES `element` (`idMatiere`),
  ADD CONSTRAINT `FKdrefbosgrrf561bghbosk681q` FOREIGN KEY (`idInscription`) REFERENCES `inscriptionannuelle` (`idInscription`);

--
-- Contraintes pour la table `inscriptionmodule`
--
ALTER TABLE `inscriptionmodule`
  ADD CONSTRAINT `FK2rp4wu9gg4s1yvbannj858m3c` FOREIGN KEY (`idInscription`) REFERENCES `inscriptionannuelle` (`idInscription`),
  ADD CONSTRAINT `FKsfog581rh033dgomu0u7xywgd` FOREIGN KEY (`idModule`) REFERENCES `module` (`idModule`);

--
-- Contraintes pour la table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `FK2kgd6okkiatvq3do7akj1cm2k` FOREIGN KEY (`idNiveau`) REFERENCES `niveau` (`idNiveau`);

--
-- Contraintes pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD CONSTRAINT `FK9qvkxk4ayqkjopclmlgoel8d9` FOREIGN KEY (`idFiliere`) REFERENCES `filiere` (`idFiliere`),
  ADD CONSTRAINT `FKfrb2mq89h77nivboif8tdqwtn` FOREIGN KEY (`niveauSuivant`) REFERENCES `niveau` (`idNiveau`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
