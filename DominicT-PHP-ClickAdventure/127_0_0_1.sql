-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 06:30 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `19fa-dominic-program3`
--
CREATE DATABASE IF NOT EXISTS `19fa-dominic-program3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `19fa-dominic-program3`;

-- --------------------------------------------------------

--
-- Table structure for table `buttons`
--

CREATE TABLE `buttons` (
  `buttonID` int(11) NOT NULL,
  `buttonAreaID` int(11) NOT NULL,
  `buttonNextAreaID` int(11) NOT NULL,
  `buttonText` varchar(50) NOT NULL,
  `buttonEndingID` int(11) DEFAULT NULL,
  `buttonItemCheck` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buttons`
--

INSERT INTO `buttons` (`buttonID`, `buttonAreaID`, `buttonNextAreaID`, `buttonText`, `buttonEndingID`, `buttonItemCheck`) VALUES
(1, 1, 3, 'Go Outside', NULL, NULL),
(2, 1, 21, 'Go Down the Stairs', NULL, NULL),
(3, 1, 2, 'Check Vicinity', NULL, NULL),
(4, 3, 4, 'Go East', NULL, NULL),
(5, 3, 10, 'Go West', NULL, NULL),
(6, 3, 9, 'Head South through the trees', NULL, NULL),
(7, 9, 666, 'Game Over', 1, NULL),
(8, 665, 22, '(Good thing I\'ve got my trusty flashlight!)', NULL, 'Flashlight'),
(9, 21, 1, 'Go Back', NULL, NULL),
(10, 2, 6, 'Take Crowbar', NULL, NULL),
(11, 2, 7, 'Take Flashlight', NULL, NULL),
(12, 2, 8, 'Take Rope', NULL, NULL),
(13, 5, 3, 'Go Outside', NULL, NULL),
(14, 5, 21, 'Go Down the Stairs', NULL, NULL),
(15, 6, 5, 'Go Back', NULL, NULL),
(16, 7, 5, 'Go Back', NULL, NULL),
(17, 8, 5, 'Go Back', NULL, NULL),
(18, 10, 4, 'Guess I\'ll head East.', NULL, NULL),
(19, 665, 11, 'Lets see what this crowbar can do', NULL, 'Crowbar'),
(20, 11, 4, 'Turn back and head East', NULL, NULL),
(21, 11, 12, 'Use Crowbar on Gate', NULL, NULL),
(22, 12, 666, 'Hitchhike to safety', 2, NULL),
(23, 4, 13, 'Continue', NULL, NULL),
(24, 13, 14, 'Continue', NULL, NULL),
(25, 14, 15, 'Do you know what time it is?', NULL, NULL),
(26, 665, 16, 'Tie him up (for some reason)', NULL, 'Rope'),
(27, 14, 18, 'What\'s going on?', NULL, NULL),
(28, 15, 18, 'What\'s going on?', NULL, NULL),
(29, 16, 23, 'Continue East', NULL, NULL),
(30, 16, 17, 'Search Shack', NULL, NULL),
(31, 17, 23, 'Don the uniform and head East', NULL, NULL),
(32, 18, 19, 'What factory?', NULL, NULL),
(33, 19, 20, 'Continue', NULL, NULL),
(34, 20, 23, 'Go East', NULL, NULL),
(35, 23, 24, 'Continue', NULL, NULL),
(36, 24, 25, 'Sneak South', NULL, NULL),
(37, 24, 26, 'Sneak North', NULL, NULL),
(38, 25, 666, 'Game Over', 3, NULL),
(39, 26, 27, 'Continue', NULL, NULL),
(40, 27, 666, 'Game Over', 4, NULL),
(41, 28, 29, 'Continue', NULL, NULL),
(42, 29, 30, 'Continue', NULL, NULL),
(43, 30, 666, 'Game Over', 5, NULL),
(44, 31, 32, 'Continue', NULL, NULL),
(45, 32, 666, 'Escape!', 6, NULL),
(46, 665, 31, 'Walk right through camp (in uniform)', NULL, 'Uniform'),
(47, 24, 28, 'Sneak through camp', NULL, ''),
(48, 22, 33, 'What\'s this?', NULL, NULL),
(49, 33, 666, 'That\'s it?', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ending`
--

CREATE TABLE `ending` (
  `EndingPlacementID` int(11) NOT NULL,
  `EndingName` varchar(50) NOT NULL,
  `EndingTime` datetime NOT NULL,
  `PlayerEnd` int(11) NOT NULL,
  `EndingID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ending`
--

INSERT INTO `ending` (`EndingPlacementID`, `EndingName`, `EndingTime`, `PlayerEnd`, `EndingID`) VALUES
(1, 'Bear Attack', '2019-11-21 21:39:22', 1, 1),
(2, 'Bear Attack', '2019-12-03 20:41:04', 48, 1),
(3, 'Bear Attack', '2019-12-03 20:47:36', 49, 1),
(4, 'Bear Attack', '2019-12-03 20:48:16', 49, 1),
(5, 'Bear Attack', '2019-12-03 20:52:09', 50, 1),
(6, 'Bear Attack', '2019-12-03 20:52:17', 50, 1),
(7, 'Bear Attack', '2019-12-03 20:52:23', 50, 1),
(8, 'Bear Attack', '2019-12-03 21:16:33', 50, 1),
(9, 'Bear Attack', '2019-12-11 01:50:27', 51, 1),
(10, 'Bear Attack', '2019-12-11 01:50:36', 51, 1),
(11, 'Bear Attack', '2019-12-11 02:42:48', 56, 1),
(12, 'Bear Attack', '2019-12-11 19:31:30', 71, 1),
(13, 'Bear Attack', '2019-12-11 21:34:55', 73, 1),
(14, 'Bear Attack', '2019-12-11 21:36:40', 74, 1),
(15, 'Hitchhike to safety', '2019-12-11 21:36:55', 74, 2),
(16, 'Shia Surprise', '2019-12-11 22:04:04', 74, 4),
(17, 'Hidden in plain sight', '2019-12-11 22:04:39', 74, 6),
(18, 'So Close, yet so far', '2019-12-11 22:06:10', 74, 3),
(19, 'CLASSIC backstabbing', '2019-12-11 22:06:45', 74, 5),
(20, 'Bear Attack', '2019-12-11 22:40:09', 77, 1),
(21, 'Bear Attack', '2019-12-11 23:05:54', 79, 1),
(22, 'Unfinished', '2019-12-11 23:06:07', 79, 7),
(23, 'Hidden in plain sight', '2019-12-11 23:10:51', 79, 6),
(24, 'Bear Attack', '2019-12-11 23:22:42', 82, 1),
(25, 'Hitchhike to safety', '2019-12-11 23:23:03', 82, 2),
(26, 'Hidden in plain sight', '2019-12-11 23:23:48', 82, 6),
(27, 'So Close, yet so far', '2019-12-11 23:24:11', 82, 3),
(28, 'CLASSIC backstabbing', '2019-12-11 23:24:32', 82, 5),
(29, 'Shia Surprise', '2019-12-11 23:24:54', 82, 4),
(30, 'CLASSIC backstabbing', '2019-12-11 23:26:24', 83, 5),
(31, 'Shia Surprise', '2019-12-11 23:26:46', 83, 4),
(32, 'Unfinished', '2019-12-11 23:27:12', 83, 7);

-- --------------------------------------------------------

--
-- Table structure for table `endings`
--

CREATE TABLE `endings` (
  `EndingID` int(11) NOT NULL,
  `EndingTitle` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endings`
--

INSERT INTO `endings` (`EndingID`, `EndingTitle`) VALUES
(1, 'Bear Attack'),
(2, 'Hitchhike to safety'),
(3, 'So Close, yet so far'),
(4, 'Shia Surprise'),
(5, 'CLASSIC backstabbing'),
(6, 'Hidden in plain sight'),
(7, 'Unfinished');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `areaID` int(11) NOT NULL,
  `areaTerrain` varchar(20) NOT NULL,
  `areaStory` varchar(1000) NOT NULL,
  `areaItem` varchar(30) DEFAULT NULL,
  `areaItemCheck` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`areaID`, `areaTerrain`, `areaStory`, `areaItem`, `areaItemCheck`) VALUES
(1, 'Shack', 'You find yourself in a small shack in the middle of the woods. How did you get here? <br>There\'s a window looking outside, to what appears to be a forest. There\'s also a set of stairs heading down underground. <br>Options are head downstairs, or go outside', NULL, NULL),
(2, 'Shack', 'Looking through the shelves, you find a working Flashlight, a crowbar and a Rope. Huh, you only seem to be able to carry One of these objects at a time. Which will you take with you?', NULL, NULL),
(3, 'Forest', 'Recognizing that a shack in the middle of the woods containing a staircase underground is probably bad news, you decide to brave the wilderness in hopes of finding safety. \r\nIt\'s nighttime, the moon is shining bright. You find a path heading East and West not too far from the shack. Where do you go? ', NULL, NULL),
(4, 'ForestRoadEast', 'You begin walking down the road, hoping you\'ll come across somene who can help, or offer answers. Where are you? How did you get here? Why can\'t you remember anything?', NULL, NULL),
(5, 'Shack', 'Now then, where was I heading again?', NULL, NULL),
(6, 'Shack', 'The crowbar! Solid choice! Lets head outside then.', 'Crowbar', NULL),
(7, 'Shack', 'Flashlight! Good Choice! Now, to depart for the woods? Or check out these stairs?', 'Flashlight', NULL),
(8, 'Shack', 'Rope! \"You never know when you\'re gonna need rope, you just always need it!\" It\'s too dark to head down these stairs. Lets head outside.', 'Rope', NULL),
(9, 'ForestBear', 'Remembering what your mother told you many years ago while visiting the North Pole, \"You always go South!\" Taking this lesson to heart now, when it matters most, you make your way through plenty of thicket, only to be mauled by a bear! Bad Luck!', NULL, NULL),
(10, 'ForestRoadWest', 'You start heading west down the road, however your path is blocked by a chain link fence and the gate is heavily locked. <br>Maybe if we had the right tools, we could get through?', NULL, 'Crowbar'),
(11, 'ForestGateWest', 'The locks appear to be heavy duty and secure, you won\'t be able to break them. <br>The hinges on the other side of the gate, however, look like they can be easily popped off thanks to the help of this crowbar!', NULL, NULL),
(12, 'ForestGateWest', 'After doing a quick scan of the area for any alarms or booby traps, you use the crowbar to pop the gate open! Freedom at last? <br>You continue following the road heading West until you hit an intersection with a paved road. After walking North for several minutes, you finally notice headlights coming from behind you. ', NULL, NULL),
(13, 'ForestRoadFarm', 'Up ahead you can see a yardlight shining at a little farm. There appears to be someone tending their garden, but at this hour? <br><br> \"Hey, long time no see!\"', NULL, NULL),
(14, 'Marco', 'It\'s Marco! You haven\'t seen Marco in years, but you used to work together everyday at the ol\' factory! Wait... factory? You can\'t remember anything else about that place, other than that you worked there for a very long time. <br>\"I haven\'t seen you in probably 3 years!\" Marco continued.', NULL, 'Rope'),
(15, 'Marco', '\"Yeah, it\'s pretty late, but theis is the best time to get these buggers.\" Marco motions at a pile of dead spiders. \"I hate those things, absolutely cannot stand them!\"', NULL, 'Rope'),
(16, 'Marco', 'You\'re not sure what\'s coming over you, but you have a strong urge to use this rope on Marco. \"Sorry about this, buddy\" You mutter, before knocking Marco unconscious, and tieing him up to a tree. \"If you still work for the factory, you could get in bigger trouble by not reporting me. At least this way you have an excuse. Someone will be by before long to let you free.\"', NULL, NULL),
(17, 'MarcoShack', 'There\'s not much to this place. But you do see some extra uniforms Marco had hanging in his closet, Perhaps this will make useful as a disguise.', 'Uniform', NULL),
(18, 'Marco', 'You explain to Marco your current situation. About how you woke up in a shack, and have lost so many memories. <br> \"A shack, with a staircase leading downward? Man, you really don\'t remember anything, do you? That shack is where they dump traitors to the factory. Whatever you did, you must\'ve pissed someone off.\"', NULL, NULL),
(19, 'Marco', '\"You know, the factory, where we did those... experiments?\" <br> Instantly your heart sank, and memories started coming back to you. You used to work at a factory that would perform experiments on humans to figure out how much nutrients was the minimum required to keep prisoners alive. \"Anything they could do to have a penny.\" You mutter to yourself. <br> \"If they put you in that shack, you must\'ve talked too much. But the fact that you got out... Maybe the guard forgot to lock the door?\" Marco explained, \"But I know you, we\'re friends! I won\'t tell anyone.\" <br> You feel a sense of ease flow over you for the first time since you woke up.', NULL, NULL),
(20, 'Marco', '\"There\'s a gate to get out of here to the West, but they keep it locked up tight, you\'ll need some tools to get through. Or to the East is a camp with an open gate on the other side. You\'ll need to be careful, once they find out you\'ve escaped, they\'ll let HIM out to come find you.\" <br> You bid Marco farewell and continue East.', NULL, NULL),
(21, 'Stairs', 'It looks dark down those stairs. Better make sure I have a Flashlight!', NULL, 'Flashlight'),
(22, 'Basement', 'It\'s creepy down here, but there\'s probably some cool stuff.', NULL, NULL),
(23, 'ForestRoadEast', 'Seeing Marco again has brought so many memories back to you. Human Corp, that was the company you worked for, \"furthing humanities progress\" was their slogan. It made you sick to think about. You and Marco were both specialists there in your own field. Marco was a bird specialist, while you had the unfortunate task of being a human specialist. You left the company 3 years ago. You must\'ve started talking about the company, for them to come target you this way.', NULL, NULL),
(24, 'SettlementOverlook', 'After walking for what felt like an hour, you can finally see a settlement lit up ahead. There are lights on, but not much activity. Looking carefully you can tell there are some guards keeping watch, but how much are they paying attention? The trees are cleared out where the camp is positioned, but the trees remain thick surrounding it. Options are sneak around, or try to sneak through the camp.', NULL, 'Uniform'),
(25, 'SouthCamp', 'You decide to stay hidden in the trees and sneak around the south side of camp. As the brush gets thicker, you find it harder and harder not to make a sound, but you can\'t help stepping on the occasional twig. <br> \"Stop right there!\" A couple of guards managed to find you and take you prisoner. Bad Luck!', NULL, NULL),
(26, 'NorthCamp', 'You decide to stay hidden in the trees and sneak around the North side of the camp. You quietly make your way through the bushes, but your leg, AH! It\'s caught in a beartrap! <br> The pain is excruciating, but you manage to hold back your screams. In the distance you hear some rustling, and you remember HIM. The man who can capture anyone, the man they set out to catch escapees. <br> As you struggle, trying to free yourself from the beartrap, you can sense HIM getting closer. HE\'s drawing nearer. HE is non other than...', NULL, NULL),
(27, 'ShiaLaBeouf', 'Shia LaBeouf.', NULL, NULL),
(28, 'IntoCamp', 'What better place to hide than in plain sight! After all, the clothes that you\'re wearing aren\'t that different from Marco\'s, though it definitely isn\'t a uniform. <br> You calm yourself down, and start walking down the road, right into the settlement, like a boss, like you own the place, like you know exactly where you\'re going. You notice some guards playing cards together, you avoid eye contact, but they see you...', NULL, NULL),
(29, 'CampGate', 'And they don\'t suspect a thing! This is your lucky day! Your plan is working! You continue walking through the settlement, the other ens is in sight! 50 yards, 40 yards, 30 yards, getting so close! ', NULL, NULL),
(30, 'CampGateAlarm', 'Sirens go off, lights turn on, it\'s an ambush! \"See I told you he was coming!\" said a familiar voice. Over to the side you see him, Marco, a man you called friend now turning you over to the enemy. \"You\'ve done an excellent job, Marco, you\'ll get a nice bonus for this!\"', NULL, NULL),
(31, 'CampGate', 'Taking extra notice of the guards, you put your money on that they aren\'t paying too much attention. You are in uniform after all, I\'m sure they\'ll just think you went out for a smoke break or something.', NULL, NULL),
(32, 'EscapedCamp', 'It\'s working! You walk into the camp like you know exactly where you\'re going, like you\'ve done this a hundred times before, like you\'re actually one of the guards! You casually stroll through the entire camp, not making eye contact with anyone, but nobody followed you or thought you looked overly suspicious. You\'re free!', NULL, NULL),
(33, 'Basement', 'I guess the maker didn\'t make it around to this part. This is the end of the road.', NULL, NULL),
(666, 'GameOver', 'I never actually see this screen', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `PlayerID` int(11) NOT NULL,
  `PlayerUserName` varchar(30) NOT NULL,
  `PlayerEmail` varchar(60) NOT NULL,
  `PlayerPasswordHash` varchar(60) NOT NULL,
  `playerItem` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`PlayerID`, `PlayerUserName`, `PlayerEmail`, `PlayerPasswordHash`, `playerItem`) VALUES
(82, 'Domo', 'dt@yahoo.com', '$2y$10$ElaY.SE9wlbrsYQF.ta6q.EK0U0/ioIvEgP4E.FZtjumY.Uxc.zOS', 'Uniform'),
(83, 'Phil', 'Phil@caddy.com', '$2y$10$AmJQ4KD6o7vCV1K1ipckUOdVAwgXL9/B3mvL2IGhN9FV/h/oPwIZG', 'Flashlight');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`buttonID`);

--
-- Indexes for table `ending`
--
ALTER TABLE `ending`
  ADD PRIMARY KEY (`EndingPlacementID`);

--
-- Indexes for table `endings`
--
ALTER TABLE `endings`
  ADD PRIMARY KEY (`EndingID`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`areaID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`PlayerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buttons`
--
ALTER TABLE `buttons`
  MODIFY `buttonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `ending`
--
ALTER TABLE `ending`
  MODIFY `EndingPlacementID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `endings`
--
ALTER TABLE `endings`
  MODIFY `EndingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `areaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `PlayerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- Database: `19fa-group-drei`
--
CREATE DATABASE IF NOT EXISTS `19fa-group-drei` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `19fa-group-drei`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `commentTime` datetime NOT NULL,
  `posterID` int(11) NOT NULL,
  `receiverID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `comment`, `commentTime`, `posterID`, `receiverID`) VALUES
(2, 'Somebody once told me', '2019-11-07 14:20:18', 17, 18),
(3, 'The world is gonna roll me', '2019-11-07 14:26:18', 19, 18),
(4, 'I aint the sharpest tool in the shed', '2019-11-06 15:00:00', 21, 18),
(5, 'You guys are silly', '2019-11-06 15:07:00', 18, 18),
(6, 'Comment', '2019-11-20 20:59:51', 21, 18),
(7, 'Hello\r\n', '2019-11-20 21:00:44', 18, 18);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `imagePath` int(11) DEFAULT NULL,
  `imageExt` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `firstName`, `lastName`, `email`, `password`, `imagePath`, `imageExt`) VALUES
(17, 'tpick', 'PasswordIsPassword1!', 'Pickles', 'tommy@pickles.com', '$2y$10$XfJrQ7jKGyW2sIvrFlLe1OZ0a1EL6TSxzAej4IIbus1rdvEEkXsWO', 64702, '.gif'),
(18, 'Matt', 'PasswordIsPassword1!', 'Mathews', 'M@mail.mail', '$2y$10$cDXSxxjjnjyP7DOTEUJqduveqX2MeHqdJuTAHjE/6QdewyBeR03M.', 64104, '.gif'),
(19, 'bbag42', 'Bilbo', 'Baggins', 'what@is.email', '$2y$10$cmvSwmggssYnV3KVeu2RWeVmB4NFYgFGYzKr9tlLexh5Fymlr6oo6', 7096, '.gif'),
(20, 'eric', 'Eric', 'Hampton', 'hamp@ton.com', '$2y$10$A3bO8Y/idAX8lzs69vqr7.6U1LGKEGHJixUpWrgRJijlsZifq6TJ6', 71028, '.gif'),
(21, 'domibomb', 'Dominic', 'Thoendel', 'dominic@email.com', '$2y$10$Q/8GIqnbmZTQ.GJ35hRPQ.bnc37GWpU2lwV8VMYBbzBLeR89uaEO6', 99251, '.gif'),
(22, 'Brohlin', 'Brendan', 'Bohlin', 'bro@bro.bruh', '$2y$10$cGdqyGfnssS/nNg6BG/vQ.0QHFO7lXoodfXc9kYlWsA4T3nJ1Rjxa', 42240, '.gif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `fkComment` (`receiverID`),
  ADD KEY `fkCommentor` (`posterID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `imagePath` (`imagePath`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fkComment` FOREIGN KEY (`receiverID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkCommentor` FOREIGN KEY (`posterID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"19fa-dominic-program3\",\"table\":\"locations\"},{\"db\":\"19fa-dominic-program3\",\"table\":\"players\"},{\"db\":\"19fa-dominic-program3\",\"table\":\"buttons\"},{\"db\":\"19fa-dominic-program3\",\"table\":\"ending\"},{\"db\":\"19fa-dominic-program3\",\"table\":\"endings\"},{\"db\":\"19fa-group-drei\",\"table\":\"user\"},{\"db\":\"19fa-group-drei\",\"table\":\"comments\"},{\"db\":\"19fa-dominic-program3\",\"table\":\"Players\"},{\"db\":\"tech_support\",\"table\":\"incidents\"},{\"db\":\"tech_support\",\"table\":\"products\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-12-12 01:21:57', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `tech_support`
--
CREATE DATABASE IF NOT EXISTS `tech_support` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tech_support`;

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`username`, `password`) VALUES
('admin', 'sesame'),
('joel', 'sesame');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryCode` char(2) NOT NULL,
  `countryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryCode`, `countryName`) VALUES
('AD', 'Andorra'),
('AE', 'United Arab Emirates'),
('AF', 'Afghanistan'),
('AG', 'Antigua and Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AN', 'Netherlands Antilles'),
('AO', 'Angola'),
('AQ', 'Antarctica'),
('AR', 'Argentina'),
('AS', 'American Samoa'),
('AT', 'Austria'),
('AU', 'Australia'),
('AW', 'Aruba'),
('AX', 'Aland Islands'),
('AZ', 'Azerbaijan'),
('BA', 'Bosnia and Herzegovi'),
('BB', 'Barbados'),
('BD', 'Bangladesh'),
('BE', 'Belgium'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Bahrain'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BL', 'Saint Barthelemy'),
('BM', 'Bermuda'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivia'),
('BR', 'Brazil'),
('BS', 'Bahamas, The'),
('BT', 'Bhutan'),
('BV', 'Bouvet Island'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling) Isla'),
('CD', 'Congo, The Democrati'),
('CF', 'Central African Repu'),
('CG', 'Congo'),
('CH', 'Switzerland'),
('CI', 'Cote D\'ivoire'),
('CK', 'Cook Islands'),
('CL', 'Chile'),
('CM', 'Cameroon'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CV', 'Cape Verde'),
('CX', 'Christmas Island'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('DE', 'Germany'),
('DJ', 'Djibouti'),
('DK', 'Denmark'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('DZ', 'Algeria'),
('EC', 'Ecuador'),
('EE', 'Estonia'),
('EG', 'Egypt'),
('EH', 'Western Sahara'),
('ER', 'Eritrea'),
('ES', 'Spain'),
('ET', 'Ethiopia'),
('FI', 'Finland'),
('FJ', 'Fiji'),
('FK', 'Falkland Islands - M'),
('FM', 'Micronesia, Federate'),
('FO', 'Faroe Islands'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'United Kingdom'),
('GD', 'Grenada'),
('GE', 'Georgia'),
('GF', 'French Guiana'),
('GG', 'Guernsey'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Greenland'),
('GM', 'Gambia, The'),
('GN', 'Guinea'),
('GP', 'Guadeloupe'),
('GQ', 'Equatorial Guinea'),
('GR', 'Greece'),
('GS', 'South Georgia and th'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong Kong'),
('HM', 'Heard Island and the'),
('HN', 'Honduras'),
('HR', 'Croatia'),
('HT', 'Haiti'),
('HU', 'Hungary'),
('ID', 'Indonesia'),
('IE', 'Ireland'),
('IL', 'Israel'),
('IM', 'Isle Of Man'),
('IN', 'India'),
('IO', 'British Indian Ocean'),
('IQ', 'Iraq'),
('IS', 'Iceland'),
('IT', 'Italy'),
('JE', 'Jersey'),
('JM', 'Jamaica'),
('JO', 'Jordan'),
('JP', 'Japan'),
('KE', 'Kenya'),
('KG', 'Kyrgyzstan'),
('KH', 'Cambodia'),
('KI', 'Kiribati'),
('KM', 'Comoros'),
('KN', 'Saint Kitts and Nevi'),
('KR', 'Korea, Republic Of'),
('KW', 'Kuwait'),
('KY', 'Cayman Islands'),
('KZ', 'Kazakhstan'),
('LA', 'Lao People\'s Democra'),
('LB', 'Lebanon'),
('LC', 'Saint Lucia'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('LV', 'Latvia'),
('LY', 'Libya'),
('MA', 'Morocco'),
('MC', 'Monaco'),
('MD', 'Moldova, Republic Of'),
('ME', 'Montenegro'),
('MF', 'Saint Martin'),
('MG', 'Madagascar'),
('MH', 'Marshall Islands'),
('MK', 'Macedonia, The Forme'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolia'),
('MO', 'Macao'),
('MP', 'Northern Mariana Isl'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauritius'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexico'),
('MY', 'Malaysia'),
('MZ', 'Mozambique'),
('NA', 'Namibia'),
('NC', 'New Caledonia'),
('NE', 'Niger'),
('NF', 'Norfolk Island'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Netherlands'),
('NO', 'Norway'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'New Zealand'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Peru'),
('PF', 'French Polynesia'),
('PG', 'Papua New Guinea'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PM', 'Saint Pierre and Miq'),
('PN', 'Pitcairn'),
('PR', 'Puerto Rico'),
('PS', 'Palestinian Territor'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Reunion'),
('RO', 'Romania'),
('RS', 'Serbia'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('SA', 'Saudi Arabia'),
('SB', 'Solomon Islands'),
('SC', 'Seychelles'),
('SE', 'Sweden'),
('SG', 'Singapore'),
('SH', 'Saint Helena'),
('SI', 'Slovenia'),
('SJ', 'Svalbard and Jan May'),
('SK', 'Slovakia'),
('SL', 'Sierra Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Suriname'),
('ST', 'Sao Tome and Princip'),
('SV', 'El Salvador'),
('SZ', 'Swaziland'),
('TC', 'Turks and Caicos Isl'),
('TD', 'Chad'),
('TF', 'French Southern Terr'),
('TG', 'Togo'),
('TH', 'Thailand'),
('TJ', 'Tajikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisia'),
('TO', 'Tonga'),
('TR', 'Turkey'),
('TT', 'Trinidad and Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwan'),
('TZ', 'Tanzania, United Rep'),
('UA', 'Ukraine'),
('UG', 'Uganda'),
('UM', 'United States Minor '),
('US', 'United States'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VA', 'Holy See'),
('VC', 'Saint Vincent and Th'),
('VE', 'Venezuela'),
('VG', 'Virgin Islands, Brit'),
('VI', 'Virgin Islands, U.S.'),
('VN', 'Vietnam'),
('VU', 'Vanuatu'),
('WF', 'Wallis and Futuna'),
('WS', 'Samoa'),
('YE', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'South Africa'),
('ZM', 'Zambia'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postalCode` varchar(20) NOT NULL,
  `countryCode` char(2) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `firstName`, `lastName`, `address`, `city`, `state`, `postalCode`, `countryCode`, `phone`, `email`, `password`) VALUES
(1002, 'Kelly', 'Irvin', 'PO Box 96621', 'Washington', 'DC', '20090', 'US', '(301) 555-8950', 'kelly@example.com', 'sesame'),
(1004, 'Kenzie', 'Quinn', '1990 Westwood Blvd Ste 260', 'Los Angeles', 'CA', '90025', 'US', '(800) 555-8725', 'kenzie@jobtrak.com', 'sesame'),
(1006, 'Anton', 'Mauro', '3255 Ramos Cir', 'Sacramento', 'CA', '95827', 'US', '(916) 555-6670', 'amauro@yahoo.org', 'sesame'),
(1008, 'Kaitlyn', 'Anthoni', 'Box 52001', 'San Francisco', 'CA', '94152', 'US', '(800) 555-6081', 'kanthoni@pge.com', 'sesame'),
(1010, 'Kendall', 'Mayte', 'PO Box 2069', 'Fresno', 'CA', '93718', 'US', '(559) 555-9999', 'kmayte@fresno.ca.gov', 'sesame'),
(1012, 'Marvin', 'Quintin', '4420 N. First Street, Suite 108', 'Fresno', 'CA', '93726', 'US', '(559) 555-9586', 'marvin@expedata.com', 'sesame'),
(1015, 'Gonzalo', 'Keeton', '27371 Valderas', 'Mission Viejo', 'CA', '92691', 'US', '(214) 555-3647', '', 'sesame'),
(1016, 'Derek', 'Chaddick', '1952 \"H\" Street', 'Fresno', 'CA', '93718', 'US', '(559) 555-3005', 'dChaddick@fresnophoto.com', 'sesame'),
(1017, 'Malia', 'Marques', '7700 Forsyth', 'St Louis', 'MO', '63105', 'US', '(314) 555-8834', 'malia@gmail.com', 'sesame'),
(1018, 'Emily', 'Evan', '1555 W Lane Ave', 'Columbus', 'OH', '43221', 'US', '(614) 555-4435', 'Emily@MicroCenter.com', 'sesame'),
(1019, 'Alexandro', 'Alexis', '3711 W Franklin', 'Fresno', 'CA', '93706', 'US', '(559) 555-2993', 'alal@yaleindustries.com', 'sesame'),
(1023, 'Ingrid', 'Neil', '12 Daniel Road', 'Fairfield', 'NJ', '07004', 'US', '(201) 555-9742', 'Ingrid@richadvertizing.com', 'sesame'),
(1026, 'Eileen', 'Lawrence', '1483 Chain Bridge Rd, Ste 202', 'Mclean', 'VA', '22101', 'US', '(770) 555-9558', 'eLawrence@ecomm.com', 'sesame'),
(1027, 'Marjorie', 'Essence', 'PO Box 31', 'East Brunswick', 'NJ', '08810', 'US', '(800) 555-8110', 'messence@hotmail.com', 'sesame'),
(1029, 'Trentin', 'Camron', 'PO Box 61000', 'San Francisco', 'CA', '94161', 'US', '(800) 555-4426', 'tCamron@ibm.com', 'sesame'),
(1030, 'Demetrius', 'Hunter', 'PO Box 956', 'Selma', 'CA', '93662', 'US', '(559) 555-1534', 'demetrius@termite.com', 'sesame'),
(1033, 'Thalia', 'Neftaly', '60 Madison Ave', 'New York', 'NY', '10010', 'US', '(212) 555-4800', 'tneftaly@venture.com', 'sesame'),
(1034, 'Harley', 'Myles', 'PO Box 7028', 'St Louis', 'MO', '63177', 'US', '(301) 555-1494', 'harley@cprinting.com', 'sesame'),
(1037, 'Gideon', 'Paris', '1033 N Sycamore Ave.', 'Los Angeles', 'CA', '90038', 'US', '(213) 555-4322', 'gideon@opamp.com', 'sesame'),
(1038, 'Jayda', 'Maxwell', 'PO Box 39046', 'Minneapolis', 'MN', '55439', 'US', '(612) 555-0057', 'jmaxwell@ccredit.com', 'sesame'),
(1040, 'Kristofer', 'Gerald', 'PO Box 40513', 'Jacksonville', 'FL', '32231', 'US', '(800) 555-6041', 'kgerald@naylorpub.com', 'sesame'),
(1045, 'Priscilla', 'Smith', 'Box 1979', 'Marion', 'OH', '43305', 'US', '(800) 555-1669', 'psmith@example.com', 'sesame'),
(1047, 'Brian', 'Griffin', '1150 N Tustin Ave', 'Anaheim', 'CA', '92807', 'US', '(714) 555-9000', 'bgriffin@azteklabel.com', 'sesame'),
(1049, 'Kaylea', 'Cheyenne', '2384 E Gettysburg', 'Fresno', 'CA', '93726', 'US', '(559) 555-0765', 'kaylea@yahoo.com', 'sesame'),
(1050, 'Kayle', 'Misael', 'PO Box 95857', 'Chicago', 'IL', '60694', 'US', '(800) 555-5811', 'misael@qualityeducation.com', 'sesame'),
(1051, 'Clarence', 'Maeve', 'PO Box 7247-7051', 'Philadelphia', 'PA', '19170', 'US', '(215) 555-8700', 'cmaeve@springhouse.com', 'sesame'),
(1054, 'Jovon', 'Walker', '627 Aviation Way', 'Manhatttan Beach', 'CA', '90266', 'US', '(310) 555-2732', 'jovon@ama.org', 'sesame'),
(1056, 'Nashalie', 'Angelica', '828 S Broadway', 'Tarrytown', 'NY', '10591', 'US', '(800) 555-0037', 'nangelica@aba.org', 'sesame'),
(1063, 'Leroy', 'Aryn', '3502 W Greenway #7', 'Phoenix', 'AZ', '85023', 'US', '(602) 547-0331', 'laryn@gmail.com', 'sesame'),
(1065, 'Anne', 'Braydon', 'PO Box 942', 'Fresno', 'CA', '93714', 'US', '(559) 555-7900', 'anne@gmail.com', 'sesame'),
(1066, 'Leah', 'Colton', '1626 E Street', 'Fresno', 'CA', '93786', 'US', '(559) 555-4442', 'lcolton@fresnobee.com', 'sesame'),
(1067, 'Cesar', 'Arodondo', '4545 Glenmeade Lane', 'Auburn Hills', 'MI', '48326', 'US', '(810) 555-3700', 'arododo@drc.com', 'sesame'),
(1068, 'Rachael', 'Danielson', '353 E Shaw Ave', 'Fresno', 'CA', '93710', 'US', '(559) 555-1704', 'rdanielson@eop.com', 'sesame'),
(1070, 'Salina', 'Edgardo', '6435 North Palm Ave, Ste 101', 'Fresno', 'CA', '93704', 'US', '(559) 555-7070', 'sadgardo@rpc.com', 'sesame'),
(1071, 'Daniel', 'Bradlee', '4 Cornwall Dr Ste 102', 'East Brunswick', 'NJ', '08816', 'US', '(908) 555-7222', 'dbradlee@simondirect.com', 'sesame'),
(1074, 'Quentin', 'Warren', 'PO Box 12332', 'Fresno', 'CA', '93777', 'US', '(559) 555-3112', 'quentin@valprint.com', 'sesame'),
(1080, 'Jillian', 'Clifford', '3250 Spring Grove Ave', 'Cincinnati', 'OH', '45225', 'US', '(800) 555-1957', 'jillian@champion.com', 'sesame'),
(1081, 'Angel', 'Lloyd', 'Department #1872', 'San Francisco', 'CA', '94161', 'US', '(617) 555-0700', 'alloyd@cw.com', 'sesame'),
(1083, 'Jeanette', 'Helena', '4775 E Miami River Rd', 'Cleves', 'OH', '45002', 'US', '(513) 555-3043', 'jhelena@eds.com', 'sesame'),
(1086, 'Luciano', 'Destin', 'P O Box 7126', 'Pasadena', 'CA', '91109', 'US', '(800) 555-7009', 'ldestin@mwp.com', 'sesame'),
(1089, 'Kyra', 'Francis', '4150 W Shaw Ave ', 'Fresno', 'CA', '93722', 'US', '(559) 555-8300', 'kyra@abbey.com', 'sesame'),
(1094, 'Lance', 'Potter', '28210 N Avenue Stanford', 'Valencia', 'CA', '91355', 'US', '(805) 555-0584', 'lpotter@bis.com', 'sesame'),
(1097, 'Jeffrey', 'Smitzen', 'Post Office Box 924', 'New Delhi', '', '110001', 'IN', '91-12345-12345', 'jeffreys@example.com', 'sesame'),
(1098, 'Vance', 'Smith', '9 River Pk Pl E 400', 'Boston', 'MA', '02134', 'US', '(508) 555-8737', 'vsmith@example.com', 'sesame'),
(1100, 'Thom', 'Aaronsen', '7112 N Fresno St Ste 200', 'Fresno', 'CA', '93720', 'US', '(559) 555-8484', 'taaronsen@dgm.com', 'sesame'),
(1112, 'Harold', 'Spivak', '2874 S Cherry Ave', 'Fresno', 'CA', '93706', 'US', '(559) 555-2770', 'harold@propane.com', 'sesame'),
(1113, 'Rachael', 'Bluzinski', 'P.O. Box 860070', 'Pasadena', 'CA', '91186', 'US', '(415) 555-7600', 'rachael@unocal.com', 'sesame'),
(1114, 'Reba', 'Hernandez', 'PO Box 2061', 'Fresno', 'CA', '93718', 'US', '(559) 555-0600', 'rhernandez@yesmed.com', 'sesame'),
(1116, 'Jaime', 'Ronaldsen', '3467 W Shaw Ave #103', 'Fresno', 'CA', '93711', 'US', '(559) 555-8625', 'jronaldsen@zylka.com', 'sesame'),
(1117, 'Violet', 'Beauregard', 'P.O. Box 505820', 'Reno', 'NV', '88905', 'US', '(800) 555-0855', 'vbeauregard@ups.com', 'sesame'),
(1118, 'Charlie', 'Bucket', 'Lodhi Road', 'New Delhi', '', '110003', 'IN', '(800) 555-4091', 'cbucket@yahoo.com', 'sesame');

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

CREATE TABLE `incidents` (
  `incidentID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `techID` int(11) DEFAULT NULL,
  `dateOpened` datetime NOT NULL,
  `dateClosed` datetime DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incidents`
--

INSERT INTO `incidents` (`incidentID`, `customerID`, `productCode`, `techID`, `dateOpened`, `dateClosed`, `title`, `description`) VALUES
(27, 1010, 'LEAG10', 11, '2014-06-05 00:00:00', '2010-06-06 00:00:00', 'Could not install', 'Media appears to be bad.'),
(28, 1117, 'TRNY20', 11, '2014-06-14 00:00:00', NULL, 'Error importing data', 'Received error message 415 while trying to import data from previous version.'),
(29, 1116, 'DRAFT10', 13, '2014-06-20 00:00:00', NULL, 'Could not install', 'Setup failed with code 104.'),
(30, 1010, 'TEAM10', 14, '2014-06-21 00:00:00', '2010-06-24 00:00:00', 'Error launching program', 'Program fails with error code 510, unable to open database.'),
(31, 1010, 'TRNY20', 14, '2014-06-21 00:00:00', NULL, 'Unable to activate product', 'Customer\'s product activation key does not work.'),
(32, 1056, 'TRNY20', 12, '2014-06-24 00:00:00', NULL, 'Product activation error', 'Customer could not activate product because of an invalid product activation code.'),
(34, 1018, 'DRAFT10', 13, '2014-07-02 00:00:00', '2010-07-04 00:00:00', 'Error launching program', 'Program fails with error code 340: Database exceeds size limit.'),
(36, 1065, 'LEAG10', 11, '2014-07-04 00:00:00', NULL, 'Error adding data', 'Received error message 201 when trying to add records: database must be reorganized.'),
(42, 1097, 'TRNY20', 12, '2014-07-08 00:00:00', NULL, 'Unable to import data', 'Import command not available for importing data from previous version.'),
(44, 1063, 'LEAG10', NULL, '2014-07-09 00:00:00', NULL, 'Installation error', 'Error during installation: cmd.exe not found.'),
(45, 1089, 'LEAGD10', NULL, '2014-07-09 00:00:00', NULL, 'Problem upgrading from League Scheduler 1.0', 'Program fails with error 303 when trying to install upgrade.'),
(46, 1016, 'TEAM10', NULL, '2014-07-09 00:00:00', NULL, 'Unable to restore data from backup', 'Error 405 encountered while restoring backup: File not found.'),
(47, 1034, 'DRAFT10', 12, '2014-07-09 00:00:00', NULL, 'Can\'t activate product', 'Product activation code invalid.'),
(48, 1049, 'TRNY20', NULL, '2014-07-09 00:00:00', NULL, 'Unable to print brackets', 'Program doesn\'t recognize printer.'),
(49, 1083, 'LEAGD10', NULL, '2014-07-10 00:00:00', NULL, 'Can\'t start application', 'Error 521 on startup: database must be reorganized.'),
(50, 1116, 'DRAFT10', NULL, '2014-07-10 00:00:00', NULL, 'Error during data file backup', 'Program abends with error 228 during database backup'),
(51, 1067, 'LEAGD10', NULL, '2014-07-10 00:00:00', NULL, 'Error when adding new records', 'Received error 340: database exceeds size limit.'),
(52, 1066, 'TEAM10', 13, '2014-07-11 00:00:00', NULL, 'Installation problem', 'Customer states that the setup program failed with code 203 during configuration.');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `version` decimal(18,1) NOT NULL,
  `releaseDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `name`, `version`, `releaseDate`) VALUES
('DRAFT10', 'Draft Manager 1.0', '1.0', '2012-03-01 00:00:00'),
('DRAFT20', 'Draft Manager 2.0', '2.0', '2014-08-15 00:00:00'),
('LEAG10', 'League Scheduler 1.0', '1.0', '2011-06-01 00:00:00'),
('LEAGD10', 'League Scheduler Deluxe 1.0', '1.0', '2011-09-01 00:00:00'),
('TEAM10', 'Team Manager Version 1.0', '1.0', '2012-06-01 00:00:00'),
('TRNY10', 'Tournament Master Version 1.0', '1.0', '2011-01-01 00:00:00'),
('TRNY20', 'Tournament Master Version 2.0', '2.0', '2013-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `customerID` int(11) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `registrationDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`customerID`, `productCode`, `registrationDate`) VALUES
(1002, 'LEAG10', '2012-11-01 00:00:00'),
(1004, 'DRAFT10', '2013-01-11 00:00:00'),
(1004, 'LEAG10', '2011-09-19 00:00:00'),
(1004, 'TRNY10', '2013-01-13 00:00:00'),
(1006, 'TRNY10', '2013-11-18 00:00:00'),
(1008, 'DRAFT10', '2012-08-03 00:00:00'),
(1008, 'LEAG10', '2011-10-29 00:00:00'),
(1008, 'TEAM10', '2013-03-01 00:00:00'),
(1008, 'TRNY10', '2011-04-02 00:00:00'),
(1010, 'LEAG10', '2012-01-29 00:00:00'),
(1012, 'DRAFT10', '2012-03-19 00:00:00'),
(1015, 'TRNY10', '2011-05-19 00:00:00'),
(1016, 'TEAM10', '2013-02-14 00:00:00'),
(1017, 'TRNY10', '2013-05-09 00:00:00'),
(1018, 'TEAM10', '2012-06-03 00:00:00'),
(1018, 'TRNY10', '2011-12-25 00:00:00'),
(1019, 'TRNY20', '2013-06-20 00:00:00'),
(1023, 'LEAGD10', '2012-05-12 00:00:00'),
(1026, 'LEAG10', '2012-01-02 00:00:00'),
(1027, 'LEAGD10', '2012-03-14 00:00:00'),
(1029, 'LEAGD10', '2013-10-18 00:00:00'),
(1029, 'TEAM10', '2013-03-28 00:00:00'),
(1030, 'LEAG10', '2012-01-04 00:00:00'),
(1033, 'DRAFT10', '2012-07-20 00:00:00'),
(1034, 'DRAFT10', '2012-03-20 00:00:00'),
(1034, 'LEAGD10', '2013-02-21 00:00:00'),
(1034, 'TEAM10', '2013-02-22 00:00:00'),
(1037, 'LEAGD10', '2012-03-10 00:00:00'),
(1038, 'LEAG10', '2012-01-03 00:00:00'),
(1038, 'TRNY10', '2011-04-03 00:00:00'),
(1040, 'TRNY10', '2011-04-07 00:00:00'),
(1045, 'LEAGD10', '2012-01-14 00:00:00'),
(1047, 'LEAGD10', '2012-02-14 00:00:00'),
(1047, 'TEAM10', '2012-10-27 00:00:00'),
(1047, 'TRNY20', '2014-02-27 00:00:00'),
(1049, 'DRAFT10', '2013-01-11 00:00:00'),
(1049, 'LEAGD10', '2012-07-12 00:00:00'),
(1049, 'TRNY10', '2013-09-21 00:00:00'),
(1049, 'TRNY20', '2013-07-12 00:00:00'),
(1050, 'LEAGD10', '2012-08-24 00:00:00'),
(1051, 'TEAM10', '2013-03-18 00:00:00'),
(1054, 'DRAFT10', '2012-07-07 00:00:00'),
(1054, 'TRNY20', '2013-05-09 00:00:00'),
(1056, 'TRNY20', '2013-07-06 00:00:00'),
(1063, 'LEAG10', '2012-01-02 00:00:00'),
(1063, 'TEAM10', '2013-11-05 00:00:00'),
(1065, 'LEAG10', '2012-01-21 00:00:00'),
(1065, 'LEAGD10', '2012-07-04 00:00:00'),
(1065, 'TEAM10', '2013-03-14 00:00:00'),
(1066, 'LEAGD10', '2011-12-22 00:00:00'),
(1066, 'TEAM10', '2012-10-01 00:00:00'),
(1066, 'TRNY10', '2011-06-22 00:00:00'),
(1067, 'LEAGD10', '2013-01-04 00:00:00'),
(1068, 'DRAFT10', '2012-03-03 00:00:00'),
(1070, 'DRAFT10', '2012-07-28 00:00:00'),
(1070, 'LEAGD10', '2012-06-09 00:00:00'),
(1070, 'TEAM10', '2012-07-29 00:00:00'),
(1070, 'TRNY20', '2013-09-13 00:00:00'),
(1071, 'TRNY10', '2011-10-15 00:00:00'),
(1074, 'LEAG10', '2011-11-02 00:00:00'),
(1080, 'DRAFT10', '2013-01-24 00:00:00'),
(1080, 'LEAGD10', '2012-01-05 00:00:00'),
(1080, 'TRNY10', '2013-05-29 00:00:00'),
(1081, 'LEAGD10', '2012-02-09 00:00:00'),
(1083, 'LEAG10', '2011-11-07 00:00:00'),
(1083, 'LEAGD10', '2012-03-27 00:00:00'),
(1083, 'TEAM10', '2013-05-26 00:00:00'),
(1086, 'LEAG10', '2012-05-01 00:00:00'),
(1089, 'LEAG10', '2013-10-12 00:00:00'),
(1089, 'LEAGD10', '2012-10-10 00:00:00'),
(1089, 'TRNY10', '2011-06-03 00:00:00'),
(1094, 'TEAM10', '2014-01-08 00:00:00'),
(1097, 'TRNY20', '2013-09-18 00:00:00'),
(1098, 'LEAG10', '2011-12-03 00:00:00'),
(1098, 'TRNY10', '2011-04-11 00:00:00'),
(1100, 'LEAG10', '2011-08-07 00:00:00'),
(1112, 'DRAFT10', '2012-09-27 00:00:00'),
(1112, 'TRNY10', '2011-11-12 00:00:00'),
(1112, 'TRNY20', '2013-12-13 00:00:00'),
(1113, 'LEAGD10', '2012-02-18 00:00:00'),
(1114, 'TRNY10', '2013-07-06 00:00:00'),
(1116, 'DRAFT10', '2012-06-09 00:00:00'),
(1117, 'DRAFT10', '2013-05-06 00:00:00'),
(1117, 'TRNY10', '2011-03-04 00:00:00'),
(1117, 'TRNY20', '2013-08-22 00:00:00'),
(1118, 'DRAFT10', '2012-11-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `techID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`techID`, `firstName`, `lastName`, `email`, `phone`, `password`) VALUES
(11, 'Alison', 'Diaz', 'alison@sportspro.com', '800-555-1443', 'sesame'),
(12, 'Jason', 'Le', 'jason@sportspro.com', '800-555-2444', 'sesame'),
(13, 'Andrew', 'Wilson', 'awilson@sportspro.com', '800-555-3449', 'sesame'),
(14, 'Gunter', 'Went', 'gunter@sportspro.com', '800-555-4400', 'sesame'),
(15, 'Gina', 'Fiori', 'gfiori@sportspro.com', '800-555-5459', 'sesame');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryCode`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`incidentID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`customerID`,`productCode`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`techID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119;

--
-- AUTO_INCREMENT for table `incidents`
--
ALTER TABLE `incidents`
  MODIFY `incidentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `techID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
