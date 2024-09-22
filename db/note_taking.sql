-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 03:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `note_taking`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `time_in` varchar(50) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `is_favorite` tinyint(1) DEFAULT 0,
  `is_archived` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `user_ID`, `title`, `note`, `time_in`, `last_updated_at`, `is_favorite`, `is_archived`) VALUES
(16, 3, 'JAPHZEL', 'Sir tobes', '10:48:50pm', '0000-00-00 00:00:00', 1, 0),
(29, 4, 'new', 'practice practice practice practice practice', '05:44:21am', '0000-00-00 00:00:00', 1, 1),
(34, 3, 'Capstone Research', 'Storytelling often involves improvisation or embellishment. Stories or narratives have been shared in every culture as a means of entertainment, education, cultural preservation and in order to instill moral values.\r\n\r\nThe earliest forms of storytelling were thought to have been primarily oral combined with gesture storytelling for many of the ancient cultures.[2] The Australian Aboriginal people painted symbols from stories on cave walls as a means of helping the storyteller remember the story. The story was then told using a combination of oral narrative, music, rock art, and dance.[3]', '09:45:26am', '0000-00-00 00:00:00', 0, 0),
(35, 4, 'Allen', 'PEIREIUROEWJLFKDFSNLLKFD', '09:31:07pm', '0000-00-00 00:00:00', 0, 1),
(36, 4, 'MS209', 'MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209MS209\r\nMS209MS209MS209MS209MS209MS209MS209MS209', '09:32:16pm', '0000-00-00 00:00:00', 0, 0),
(37, 4, 'sdaasd', 'asdasds', '09:53:55pm', '0000-00-00 00:00:00', 0, 0),
(39, 6, 'b', 'b', '', '2024-09-20 15:53:32', 1, 1),
(40, 6, 'c', 'c', '', '2024-09-20 15:53:48', 0, 1),
(41, 6, 'd', 'd', '', '2024-09-20 15:54:06', 0, 1),
(42, 6, 'a', 'a', '', '2024-09-21 15:52:57', 0, 1),
(43, 6, 'a', 'a', '', '2024-09-21 15:53:29', 0, 1),
(44, 7, 'hello', 'hello', '', '2024-09-21 15:59:47', 0, 1),
(45, 7, 'hello', 'hello', '', '2024-09-21 16:10:37', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_ID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_ID`, `fullName`, `email`, `password`, `image_path`) VALUES
(1, 'Japhzel Mojado', 'code@gmail.com', 'e9b59046bfad66983177acea12045cb9', NULL),
(2, 'Irene Biaco', 'nnn@gmail.com', 'd933df149c62be04ea54d3a9bfb0372c', NULL),
(3, 'Mary Claire Paran', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', NULL),
(4, 'Jay Ann Arnido', 'ash@gmail.com', '2852f697a9f8581725c6fc6a5472a2e5', NULL),
(5, 'Jay Defiesta', 'john@gmail.com', '17c4520f6cfd1ab53d8745e84681eb49', NULL),
(6, 'Rey Lawas', 'ryelaswa@gmail.com', 'e6097bcc741c4a6f94ab1b2f95f06342', NULL),
(7, 'cutie', 'cutie@gmail.com', '05f3672ba34409136aa71b8d00070d1b', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
