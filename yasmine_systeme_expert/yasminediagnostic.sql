-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 31 mars 2024 à 18:03
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `yasminediagnostic`
--

-- --------------------------------------------------------

--
-- Structure de la table `prblm`
--

CREATE TABLE `prblm` (
  `Prblm_id` varchar(255) NOT NULL,
  `Problem_name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `prblm`
--

INSERT INTO `prblm` (`Prblm_id`, `Problem_name`, `Description`) VALUES
('PB001', 'test1', 'test1'),
('PB002', 'test2', 'test2'),
('PB003', 'Missing Icons', ' Icons or shortcuts disappear from the desktop or taskbar.'),
('PB004', 'Touchpad/Trackpad Issues', 'The touchpad or trackpad stops working or behaves erratically.'),
('PB005', 'Distorted Audio', 'Audio playback is distorted, crackling, or cutting in and out.'),
('PB006', 'Unresponsive Browser', ' Web browsers become unresponsive or crash frequently during \nbrowsing sessions.');

-- --------------------------------------------------------

--
-- Structure de la table `rules`
--

CREATE TABLE `rules` (
  `Problem_No` varchar(255) NOT NULL,
  `Problem` varchar(255) DEFAULT NULL,
  `Rule_1` varchar(255) DEFAULT NULL,
  `Rule_2` varchar(255) DEFAULT NULL,
  `Rule_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rules`
--

INSERT INTO `rules` (`Problem_No`, `Problem`, `Rule_1`, `Rule_2`, `Rule_3`) VALUES
('PR001', 'test1', 'test2', 'test3', 'test4'),
('PR002', 'Computer does not start up.', 'Check if the power cable is properly plugged into the electrical outlet.', 'Ensure that the power switch of the computer is turned on.', 'Test the power supply using another power cable or outlet.'),
('PR003', ' Blue Screen of Death (BSOD) appears frequently.', 'Check for recently installed hardware or software drivers that may be causing conflicts.', 'Run a memory diagnostic test to identify potential RAM issues.', 'Update the operating system and drivers to the latest versions to resolve compatibility issues.'),
('PR004', 'Computer screen displays distorted or garbled images.', 'Check the video cable connections between the computer and monitor for loose or damaged cables.', 'Update graphics card drivers to the latest version to resolve display issues.', 'Test the monitor on another computer to determine if the problem lies with the monitor or the computer.'),
('PR005', ' Computer emits burning smells or unusual odors.', 'Immediately power off the computer and unplug it from the electrical outlet to prevent potential fire hazards.', 'Check internal components for signs of overheating, such as damaged cables or burnt components.', 'Contact a qualified technician to inspect the computer and diagnose the source of the odor.'),
('PR006', ' Printer is not printing documents.', 'Check the printer\'s paper tray for jams or paper feed issues.', 'Verify that the printer is connected to the computer and powered on.', 'Update printer drivers and software to resolve printing errors. '),
('PR007', 'Computer crashes while playing games or running intensive applications.', 'Monitor GPU temperature and consider upgrading cooling solutions if overheating occurs.', 'Update graphics card drivers to the latest version to improve game compatibility.', 'Increase system RAM or upgrade the graphics card to handle resource-intensive tasks.'),
('PR008', 'USB devices are not recognized.', 'Test USB devices on other ports to determine if they are recognized. ', 'Update USB drivers to resolve compatibility issues. ', 'Check for resource conflicts with other connected devices. '),
('PR009', 'Programs unexpectedly close.', 'Monitor memory usage and CPU consumption to detect bottlenecks. ', 'Analyze system event logs for specific errors or warnings. ', 'Reinstall affected programs to address potential file corruptions. ');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `utype`) VALUES
(1, 'yasmine', 'ouazzine', 'yassmine 2003', 'Expert'),
(2, 'hiba', 'darkaoui', 'hiba 2003', 'User'),
(3, 'kaoutar', 'nechaan', 'kaoutar1998', 'User'),
(4, 'lego', 'mycat', 'kayahi123', 'User'),
(5, 'ouazzine', 'mohamed', '1000', 'User'),
(6, 'fatima', 'moutawakil', 'kassba2', 'User');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `prblm`
--
ALTER TABLE `prblm`
  ADD PRIMARY KEY (`Prblm_id`);

--
-- Index pour la table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`Problem_No`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
