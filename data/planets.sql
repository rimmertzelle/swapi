-- -------------------------------------------------------------
-- TablePlus 6.0.0(550)
--
-- https://tableplus.com/
--
-- Database: swapi
-- Generation Time: 2024-04-30 11:50:39.6650
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `planets`;
CREATE TABLE `planets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `climate` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `surface_water` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `diameter` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rotation_period` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `terrain` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gravity` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `orbital_period` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `population` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `edited` date DEFAULT NULL,
  `created` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `planets` (`id`, `climate`, `surface_water`, `name`, `diameter`, `rotation_period`, `terrain`, `gravity`, `orbital_period`, `population`, `edited`, `created`) VALUES
(1, 'arid', '1', 'Tatooine', '10465', '23', 'desert', '1 standard', '304', '200000', NULL, NULL),
(2, 'temperate', '40', 'Alderaan', '12500', '24', 'grasslands, mountains', '1 standard', '364', '2000000000', NULL, NULL),
(3, 'temperate, tropical', '8', 'Yavin IV', '10200', '24', 'jungle, rainforests', '1 standard', '4818', '1000', NULL, NULL),
(4, 'frozen', '100', 'Hoth', '7200', '23', 'tundra, ice caves, mountain ranges', '1.1 standard', '549', 'unknown', NULL, NULL),
(5, 'murky', '8', 'Dagobah', '8900', '23', 'swamp, jungles', 'N/A', '341', 'unknown', NULL, NULL),
(6, 'temperate', '0', 'Bespin', '118000', '12', 'gas giant', '1.5 (surface), 1 standard (Cloud City)', '5110', '6000000', NULL, NULL),
(7, 'temperate', '8', 'Endor', '4900', '18', 'forests, mountains, lakes', '0.85 standard', '402', '30000000', NULL, NULL),
(8, 'temperate', '12', 'Naboo', '12120', '26', 'grassy hills, swamps, forests, mountains', '1 standard', '312', '4500000000', NULL, NULL),
(9, 'temperate', 'unknown', 'Coruscant', '12240', '24', 'cityscape, mountains', '1 standard', '368', '1000000000000', NULL, NULL),
(10, 'temperate', '100', 'Kamino', '19720', '27', 'ocean', '1 standard', '463', '1000000000', NULL, NULL),
(11, 'temperate, arid', '5', 'Geonosis', '11370', '30', 'rock, desert, mountain, barren', '0.9 standard', '256', '100000000000', NULL, NULL),
(12, 'temperate, arid, windy', '0.9', 'Utapau', '12900', '27', 'scrublands, savanna, canyons, sinkholes', '1 standard', '351', '95000000', NULL, NULL),
(13, 'hot', '0', 'Mustafar', '4200', '36', 'volcanoes, lava rivers, mountains, caves', '1 standard', '412', '20000', NULL, NULL),
(14, 'tropical', '60', 'Kashyyyk', '12765', '26', 'jungle, forests, lakes, rivers', '1 standard', '381', '45000000', NULL, NULL),
(15, 'artificial temperate', '0', 'Polis Massa', '0', '24', 'airless asteroid', '0.56 standard', '590', '1000000', NULL, NULL),
(16, 'frigid', 'unknown', 'Mygeeto', '10088', '12', 'glaciers, mountains, ice canyons', '1 standard', '167', '19000000', NULL, NULL),
(17, 'hot, humid', 'unknown', 'Felucia', '9100', '34', 'fungus forests', '0.75 standard', '231', '8500000', NULL, NULL),
(18, 'temperate, moist', 'unknown', 'Cato Neimoidia', '0', '25', 'mountains, fields, forests, rock arches', '1 standard', '278', '10000000', NULL, NULL),
(19, 'hot', 'unknown', 'Saleucami', '14920', '26', 'caves, desert, mountains, volcanoes', 'unknown', '392', '1400000000', NULL, NULL),
(20, 'temperate', 'unknown', 'Stewjon', '0', 'unknown', 'grass', '1 standard', 'unknown', 'unknown', NULL, NULL),
(21, 'polluted', 'unknown', 'Eriadu', '13490', '24', 'cityscape', '1 standard', '360', '22000000000', NULL, NULL),
(22, 'temperate', '70', 'Corellia', '11000', '25', 'plains, urban, hills, forests', '1 standard', '329', '3000000000', NULL, NULL),
(23, 'hot', '60', 'Rodia', '7549', '29', 'jungles, oceans, urban, swamps', '1 standard', '305', '1300000000', NULL, NULL),
(24, 'temperate', 'unknown', 'Nal Hutta', '12150', '87', 'urban, oceans, swamps, bogs', '1 standard', '413', '7000000000', NULL, NULL),
(25, 'temperate', 'unknown', 'Dantooine', '9830', '25', 'oceans, savannas, mountains, grasslands', '1 standard', '378', '1000', NULL, NULL),
(26, 'temperate', '98', 'Bestine IV', '6400', '26', 'rocky islands, oceans', 'unknown', '680', '62000000', NULL, NULL),
(27, 'temperate', '10', 'Ord Mantell', '14050', '26', 'plains, seas, mesas', '1 standard', '334', '4000000000', NULL, NULL),
(28, 'unknown', 'unknown', 'unknown', '0', '0', 'unknown', 'unknown', '0', 'unknown', NULL, NULL),
(29, 'arid', 'unknown', 'Trandosha', '0', '25', 'mountains, seas, grasslands, deserts', '0.62 standard', '371', '42000000', NULL, NULL),
(30, 'arid', 'unknown', 'Socorro', '0', '20', 'deserts, mountains', '1 standard', '326', '300000000', NULL, NULL),
(31, 'temperate', '100', 'Mon Cala', '11030', '21', 'oceans, reefs, islands', '1', '398', '27000000000', NULL, NULL),
(32, 'temperate', '40', 'Chandrila', '13500', '20', 'plains, forests', '1', '368', '1200000000', NULL, NULL),
(33, 'superheated', '5', 'Sullust', '12780', '20', 'mountains, volcanoes, rocky deserts', '1', '263', '18500000000', NULL, NULL),
(34, 'temperate', 'unknown', 'Toydaria', '7900', '21', 'swamps, lakes', '1', '184', '11000000', NULL, NULL),
(35, 'arid, temperate, tropical', 'unknown', 'Malastare', '18880', '26', 'swamps, deserts, jungles, mountains', '1.56', '201', '2000000000', NULL, NULL),
(36, 'temperate', 'unknown', 'Dathomir', '10480', '24', 'forests, deserts, savannas', '0.9', '491', '5200', NULL, NULL),
(37, 'temperate, arid, subartic', '5', 'Ryloth', '10600', '30', 'mountains, valleys, deserts, tundra', '1', '305', '1500000000', NULL, NULL),
(38, 'unknown', 'unknown', 'Aleen Minor', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', NULL, NULL),
(39, 'temperate, artic', 'unknown', 'Vulpter', '14900', '22', 'urban, barren', '1', '391', '421000000', NULL, NULL),
(40, 'unknown', 'unknown', 'Troiken', 'unknown', 'unknown', 'desert, tundra, rainforests, mountains', 'unknown', 'unknown', 'unknown', NULL, NULL),
(41, 'unknown', 'unknown', 'Tund', '12190', '48', 'barren, ash', 'unknown', '1770', '0', NULL, NULL),
(42, 'temperate', 'unknown', 'Haruun Kal', '10120', '25', 'toxic cloudsea, plateaus, volcanoes', '0.98', '383', '705300', NULL, NULL),
(43, 'temperate', '20', 'Cerea', 'unknown', '27', 'verdant', '1', '386', '450000000', NULL, NULL),
(44, 'tropical, temperate', '80', 'Glee Anselm', '15600', '33', 'lakes, islands, swamps, seas', '1', '206', '500000000', NULL, NULL),
(45, 'unknown', 'unknown', 'Iridonia', 'unknown', '29', 'rocky canyons, acid pools', 'unknown', '413', 'unknown', NULL, NULL),
(46, 'unknown', 'unknown', 'Tholoth', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', NULL, NULL),
(47, 'arid, rocky, windy', 'unknown', 'Iktotch', 'unknown', '22', 'rocky', '1', '481', 'unknown', NULL, NULL),
(48, 'unknown', 'unknown', 'Quermia', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', NULL, NULL),
(49, 'temperate', 'unknown', 'Dorin', '13400', '22', 'unknown', '1', '409', 'unknown', NULL, NULL),
(50, 'temperate', 'unknown', 'Champala', 'unknown', '27', 'oceans, rainforests, plateaus', '1', '318', '3500000000', NULL, NULL),
(51, 'unknown', 'unknown', 'Mirial', 'unknown', 'unknown', 'deserts', 'unknown', 'unknown', 'unknown', NULL, NULL),
(52, 'unknown', 'unknown', 'Serenno', 'unknown', 'unknown', 'rainforests, rivers, mountains', 'unknown', 'unknown', 'unknown', NULL, NULL),
(53, 'unknown', 'unknown', 'Concord Dawn', 'unknown', 'unknown', 'jungles, forests, deserts', 'unknown', 'unknown', 'unknown', NULL, NULL),
(54, 'unknown', 'unknown', 'Zolan', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', NULL, NULL),
(55, 'frigid', '100', 'Ojom', 'unknown', 'unknown', 'oceans, glaciers', 'unknown', 'unknown', '500000000', NULL, NULL),
(56, 'temperate', 'unknown', 'Skako', 'unknown', '27', 'urban, vines', '1', '384', '500000000000', NULL, NULL),
(57, 'temperate', '25', 'Muunilinst', '13800', '28', 'plains, forests, hills, mountains', '1', '412', '5000000000', NULL, NULL),
(58, 'temperate', 'unknown', 'Shili', 'unknown', 'unknown', 'cities, savannahs, seas, plains', '1', 'unknown', 'unknown', NULL, NULL),
(59, 'arid, temperate, tropical', 'unknown', 'Kalee', '13850', '23', 'rainforests, cliffs, canyons, seas', '1', '378', '4000000000', NULL, NULL),
(60, 'unknown', 'unknown', 'Umbara', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', NULL, NULL);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;