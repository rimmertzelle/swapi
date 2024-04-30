-- -------------------------------------------------------------
-- TablePlus 6.0.0(550)
--
-- https://tableplus.com/
--
-- Database: swapi
-- Generation Time: 2024-04-30 11:50:25.8780
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `skin_color` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hair_color` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eye_color` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mass` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `birth_year` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `homeworld` int DEFAULT NULL,
  `created` date DEFAULT NULL,
  `edited` date DEFAULT NULL,
  `height` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homeworld` (`homeworld`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`homeworld`) REFERENCES `planets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `people` (`id`, `name`, `gender`, `skin_color`, `hair_color`, `eye_color`, `mass`, `birth_year`, `homeworld`, `created`, `edited`, `height`) VALUES
(1, 'Luke Skywalker', 'male', 'fair', 'blond', 'blue', '77', '19BBY', 1, NULL, NULL, '172'),
(2, 'C-3PO', 'n/a', 'gold', 'n/a', 'yellow', '75', '112BBY', 1, NULL, NULL, '167'),
(3, 'R2-D2', 'n/a', 'white, blue', 'n/a', 'red', '32', '33BBY', 8, NULL, NULL, '96'),
(4, 'Darth Vader', 'male', 'white', 'none', 'yellow', '136', '41.9BBY', 1, NULL, NULL, '202'),
(5, 'Leia Organa', 'female', 'light', 'brown', 'brown', '49', '19BBY', 2, NULL, NULL, '150'),
(6, 'Owen Lars', 'male', 'light', 'brown, grey', 'blue', '120', '52BBY', 1, NULL, NULL, '178'),
(7, 'Beru Whitesun Lars', 'female', 'light', 'brown', 'blue', '75', '47BBY', 1, NULL, NULL, '165'),
(8, 'R5-D4', 'n/a', 'white, red', 'n/a', 'red', '32', 'unknown', 1, NULL, NULL, '97'),
(9, 'Biggs Darklighter', 'male', 'light', 'black', 'brown', '84', '24BBY', 1, NULL, NULL, '183'),
(10, 'Obi-Wan Kenobi', 'male', 'fair', 'auburn, white', 'blue-gray', '77', '57BBY', 20, NULL, NULL, '182'),
(11, 'Anakin Skywalker', 'male', 'fair', 'blond', 'blue', '84', '41.9BBY', 1, NULL, NULL, '188'),
(12, 'Wilhuff Tarkin', 'male', 'fair', 'auburn, grey', 'blue', 'unknown', '64BBY', 21, NULL, NULL, '180'),
(13, 'Chewbacca', 'male', 'unknown', 'brown', 'blue', '112', '200BBY', 14, NULL, NULL, '228'),
(14, 'Han Solo', 'male', 'fair', 'brown', 'brown', '80', '29BBY', 22, NULL, NULL, '180'),
(15, 'Greedo', 'male', 'green', 'n/a', 'black', '74', '44BBY', 23, NULL, NULL, '173'),
(16, 'Jabba Desilijic Tiure', 'hermaphrodite', 'green-tan, brown', 'n/a', 'orange', '1,358', '600BBY', 24, NULL, NULL, '175'),
(17, 'Wedge Antilles', 'male', 'fair', 'brown', 'hazel', '77', '21BBY', 22, NULL, NULL, '170'),
(18, 'Jek Tono Porkins', 'male', 'fair', 'brown', 'blue', '110', 'unknown', 26, NULL, NULL, '180'),
(19, 'Yoda', 'male', 'green', 'white', 'brown', '17', '896BBY', 28, NULL, NULL, '66'),
(20, 'Palpatine', 'male', 'pale', 'grey', 'yellow', '75', '82BBY', 8, NULL, NULL, '170'),
(21, 'Boba Fett', 'male', 'fair', 'black', 'brown', '78.2', '31.5BBY', 10, NULL, NULL, '183'),
(22, 'IG-88', 'none', 'metal', 'none', 'red', '140', '15BBY', 28, NULL, NULL, '200'),
(23, 'Bossk', 'male', 'green', 'none', 'red', '113', '53BBY', 29, NULL, NULL, '190'),
(24, 'Lando Calrissian', 'male', 'dark', 'black', 'brown', '79', '31BBY', 30, NULL, NULL, '177'),
(25, 'Lobot', 'male', 'light', 'none', 'blue', '79', '37BBY', 6, NULL, NULL, '175'),
(26, 'Ackbar', 'male', 'brown mottle', 'none', 'orange', '83', '41BBY', 31, NULL, NULL, '180'),
(27, 'Mon Mothma', 'female', 'fair', 'auburn', 'blue', 'unknown', '48BBY', 32, NULL, NULL, '150'),
(28, 'Arvel Crynyd', 'male', 'fair', 'brown', 'brown', 'unknown', 'unknown', 28, NULL, NULL, 'unknown'),
(29, 'Wicket Systri Warrick', 'male', 'brown', 'brown', 'brown', '20', '8BBY', 7, NULL, NULL, '88'),
(30, 'Nien Nunb', 'male', 'grey', 'none', 'black', '68', 'unknown', 33, NULL, NULL, '160'),
(31, 'Qui-Gon Jinn', 'male', 'fair', 'brown', 'blue', '89', '92BBY', 28, NULL, NULL, '193'),
(32, 'Nute Gunray', 'male', 'mottled green', 'none', 'red', '90', 'unknown', 18, NULL, NULL, '191'),
(33, 'Finis Valorum', 'male', 'fair', 'blond', 'blue', 'unknown', '91BBY', 9, NULL, NULL, '170'),
(34, 'Padmé Amidala', 'female', 'light', 'brown', 'brown', '45', '46BBY', 8, NULL, NULL, '185'),
(35, 'Jar Jar Binks', 'male', 'orange', 'none', 'orange', '66', '52BBY', 8, NULL, NULL, '196'),
(36, 'Roos Tarpals', 'male', 'grey', 'none', 'orange', '82', 'unknown', 8, NULL, NULL, '224'),
(37, 'Rugor Nass', 'male', 'green', 'none', 'orange', 'unknown', 'unknown', 8, NULL, NULL, '206'),
(38, 'Ric Olié', 'male', 'fair', 'brown', 'blue', 'unknown', 'unknown', 8, NULL, NULL, '183'),
(39, 'Watto', 'male', 'blue, grey', 'black', 'yellow', 'unknown', 'unknown', 34, NULL, NULL, '137'),
(40, 'Sebulba', 'male', 'grey, red', 'none', 'orange', '40', 'unknown', 35, NULL, NULL, '112'),
(41, 'Quarsh Panaka', 'male', 'dark', 'black', 'brown', 'unknown', '62BBY', 8, NULL, NULL, '183'),
(42, 'Shmi Skywalker', 'female', 'fair', 'black', 'brown', 'unknown', '72BBY', 1, NULL, NULL, '163'),
(43, 'Darth Maul', 'male', 'red', 'none', 'yellow', '80', '54BBY', 36, NULL, NULL, '175'),
(44, 'Bib Fortuna', 'male', 'pale', 'none', 'pink', 'unknown', 'unknown', 37, NULL, NULL, '180'),
(45, 'Ayla Secura', 'female', 'blue', 'none', 'hazel', '55', '48BBY', 37, NULL, NULL, '178'),
(46, 'Ratts Tyerel', 'male', 'grey, blue', 'none', 'unknown', '15', 'unknown', 38, NULL, NULL, '79'),
(47, 'Dud Bolt', 'male', 'blue, grey', 'none', 'yellow', '45', 'unknown', 39, NULL, NULL, '94'),
(48, 'Gasgano', 'male', 'white, blue', 'none', 'black', 'unknown', 'unknown', 40, NULL, NULL, '122'),
(49, 'Ben Quadinaros', 'male', 'grey, green, yellow', 'none', 'orange', '65', 'unknown', 41, NULL, NULL, '163'),
(50, 'Mace Windu', 'male', 'dark', 'none', 'brown', '84', '72BBY', 42, NULL, NULL, '188'),
(51, 'Ki-Adi-Mundi', 'male', 'pale', 'white', 'yellow', '82', '92BBY', 43, NULL, NULL, '198'),
(52, 'Kit Fisto', 'male', 'green', 'none', 'black', '87', 'unknown', 44, NULL, NULL, '196'),
(53, 'Eeth Koth', 'male', 'brown', 'black', 'brown', 'unknown', 'unknown', 45, NULL, NULL, '171'),
(54, 'Adi Gallia', 'female', 'dark', 'none', 'blue', '50', 'unknown', 9, NULL, NULL, '184'),
(55, 'Saesee Tiin', 'male', 'pale', 'none', 'orange', 'unknown', 'unknown', 47, NULL, NULL, '188'),
(56, 'Yarael Poof', 'male', 'white', 'none', 'yellow', 'unknown', 'unknown', 48, NULL, NULL, '264'),
(57, 'Plo Koon', 'male', 'orange', 'none', 'black', '80', '22BBY', 49, NULL, NULL, '188'),
(58, 'Mas Amedda', 'male', 'blue', 'none', 'blue', 'unknown', 'unknown', 50, NULL, NULL, '196'),
(59, 'Gregar Typho', 'male', 'dark', 'black', 'brown', '85', 'unknown', 8, NULL, NULL, '185'),
(60, 'Cordé', 'female', 'light', 'brown', 'brown', 'unknown', 'unknown', 8, NULL, NULL, '157'),
(61, 'Cliegg Lars', 'male', 'fair', 'brown', 'blue', 'unknown', '82BBY', 1, NULL, NULL, '183'),
(62, 'Poggle the Lesser', 'male', 'green', 'none', 'yellow', '80', 'unknown', 11, NULL, NULL, '183'),
(63, 'Luminara Unduli', 'female', 'yellow', 'black', 'blue', '56.2', '58BBY', 51, NULL, NULL, '170'),
(64, 'Barriss Offee', 'female', 'yellow', 'black', 'blue', '50', '40BBY', 51, NULL, NULL, '166'),
(65, 'Dormé', 'female', 'light', 'brown', 'brown', 'unknown', 'unknown', 8, NULL, NULL, '165'),
(66, 'Dooku', 'male', 'fair', 'white', 'brown', '80', '102BBY', 52, NULL, NULL, '193'),
(67, 'Bail Prestor Organa', 'male', 'tan', 'black', 'brown', 'unknown', '67BBY', 2, NULL, NULL, '191'),
(68, 'Jango Fett', 'male', 'tan', 'black', 'brown', '79', '66BBY', 53, NULL, NULL, '183'),
(69, 'Zam Wesell', 'female', 'fair, green, yellow', 'blonde', 'yellow', '55', 'unknown', 54, NULL, NULL, '168'),
(70, 'Dexter Jettster', 'male', 'brown', 'none', 'yellow', '102', 'unknown', 55, NULL, NULL, '198'),
(71, 'Lama Su', 'male', 'grey', 'none', 'black', '88', 'unknown', 10, NULL, NULL, '229'),
(72, 'Taun We', 'female', 'grey', 'none', 'black', 'unknown', 'unknown', 10, NULL, NULL, '213'),
(73, 'Jocasta Nu', 'female', 'fair', 'white', 'blue', 'unknown', 'unknown', 9, NULL, NULL, '167'),
(74, 'R4-P17', 'female', 'silver, red', 'none', 'red, blue', 'unknown', 'unknown', 28, NULL, NULL, '96'),
(75, 'Wat Tambor', 'male', 'green, grey', 'none', 'unknown', '48', 'unknown', 56, NULL, NULL, '193'),
(76, 'San Hill', 'male', 'grey', 'none', 'gold', 'unknown', 'unknown', 57, NULL, NULL, '191'),
(77, 'Shaak Ti', 'female', 'red, blue, white', 'none', 'black', '57', 'unknown', 58, NULL, NULL, '178'),
(78, 'Grievous', 'male', 'brown, white', 'none', 'green, yellow', '159', 'unknown', 59, NULL, NULL, '216'),
(79, 'Tarfful', 'male', 'brown', 'brown', 'blue', '136', 'unknown', 14, NULL, NULL, '234'),
(80, 'Raymus Antilles', 'male', 'light', 'brown', 'brown', '79', 'unknown', 2, NULL, NULL, '188'),
(81, 'Sly Moore', 'female', 'pale', 'none', 'white', '48', 'unknown', 60, NULL, NULL, '178'),
(82, 'Tion Medon', 'male', 'grey', 'none', 'black', '80', 'unknown', 12, NULL, NULL, '206');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;