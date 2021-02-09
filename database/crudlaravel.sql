-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-02-2021 a las 19:20:47
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crudlaravel`
--
CREATE DATABASE IF NOT EXISTS `crudlaravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crudlaravel`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_09_173237_create_projects_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `SKU` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_sku_unique` (`SKU`),
  KEY `projects_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `SKU`, `name`, `cantidad`, `precio`, `descripcion`, `created_at`, `updated_at`) VALUES
(2, 2, 'Klein-Ritchie', 'Laurie', '9', '413', 'Hermiston, Parisian and Mosciski', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(3, 1, 'Eichmann-Macejkovic', 'Pink', '6', '80', 'Padberg, Kunde and Dach', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(4, 2, 'McDermott LLC', 'Ashtyn', '9', '972', 'Steuber, Hodkiewicz and O\'Connell', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(5, 2, 'Douglas-Deckow', 'Abner', '3', '406', 'Bartoletti, Kuhn and Koch', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(6, 2, 'Wolff, Volkman and Veum', 'Rowena', '1', '198', 'O\'Reilly and Sons', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(7, 1, 'Ruecker, Hand and Johnston', 'Stanton', '6', '866', 'Fay Inc', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(8, 2, 'Jones-Schroeder', 'Litzy', '7', '567', 'Boyle PLC', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(9, 1, 'Gutmann-Frami', 'Elza', '0', '559', 'Klocko, Johns and Howe', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(10, 1, 'Gulgowski-Walter', 'Nakia', '0', '398', 'Powlowski PLC', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(11, 1, 'Stiedemann Group', 'Rusty', '1', '376', 'Jacobs and Sons', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(12, 2, 'Kuphal, Casper and Harvey', 'Camila', '4', '792', 'Hane, Eichmann and Hudson', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(13, 2, 'Bayer-Johns', 'Mabelle', '9', '622', 'Gaylord LLC', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(14, 1, 'Kertzmann PLC', 'Magali', '4', '915', 'Huel, Torphy and Wilkinson', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(15, 2, 'Johnson-Thiel', 'Oren', '8', '252', 'Cassin, Heathcote and Wisozk', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(16, 1, 'Dicki-Runte', 'Frieda', '7', '955', 'Emmerich Ltd', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(17, 2, 'Dicki, Champlin and Wisozk', 'Erik', '0', '856', 'Bogisich-Kassulke', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(18, 1, 'Von, Durgan and Balistreri', 'Karolann', '8', '482', 'Wisoky Ltd', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(19, 2, 'Ebert-Rolfson', 'Dolores', '1', '451', 'Marks Inc', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(20, 2, 'O\'Kon-White', 'Marcus', '4', '142', 'Will Ltd', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(21, 3, 'Upton Inc', 'Kaitlyn', '4', '740', 'Watsica-Cruickshank', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(22, 2, 'Satterfield PLC', 'Earnestine', '8', '133', 'Effertz-McDermott', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(23, 3, 'Brown, Blanda and Senger', 'Shana', '6', '518', 'Grant, Schulist and Corkery', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(24, 1, 'Johnston, Feil and Koepp', 'Ricky', '1', '412', 'Bayer-Marvin', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(25, 3, 'Kuhic-Ritchie', 'Esteban', '0', '955', 'Hagenes LLC', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(26, 1, 'Morissette-Bergstrom', 'Llewellyn', '6', '855', 'Smitham, Simonis and Boyer', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(27, 2, 'Halvorson LLC', 'Yasmine', '2', '705', 'Treutel Inc', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(28, 2, 'Watsica-Deckow', 'Derrick', '4', '662', 'Beer Group', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(29, 1, 'Leuschke-Hackett', 'Archibald', '7', '818', 'Schinner, Strosin and Quigley', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(30, 3, 'Hartmann, Ortiz and Cassin', 'Eusebio', '9', '155', 'Schmidt-Pfeffer', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(31, 2, 'Hickle-Daniel', 'Patsy', '0', '930', 'Toy-Prohaska', '2021-02-10 00:06:18', '2021-02-10 00:06:19'),
(32, 2, 'Moore-Leuschke', 'Floyd', '2', '567', 'Stanton-Lehner', '2021-02-10 00:06:19', '2021-02-10 00:06:19'),
(33, 1, 'Emard-Koss', 'Jordy', '4', '89', 'Bode-Beier', '2021-02-10 00:06:19', '2021-02-10 00:06:19'),
(34, 2, 'Herman Ltd', 'Alice', '3', '389', 'Zboncak-Thompson', '2021-02-10 00:06:19', '2021-02-10 00:06:19'),
(35, 3, 'Swaniawski, Blick and Pollich', 'Harley', '3', '205', 'Graham Inc', '2021-02-10 00:06:19', '2021-02-10 00:06:19'),
(36, 2, 'Huel, Moore and Boehm', 'Zola', '6', '771', 'Langworth, Hoppe and McKenzie', '2021-02-10 00:06:19', '2021-02-10 00:06:19'),
(37, 2, 'D\'Amore, Mosciski and Gutmann', 'Eugenia', '6', '880', 'Bergstrom, Kshlerin and Rempel', '2021-02-10 00:06:19', '2021-02-10 00:06:19'),
(38, 2, 'O\'Reilly Ltd', 'Janessa', '3', '670', 'Frami, Purdy and Stokes', '2021-02-10 00:06:19', '2021-02-10 00:06:19'),
(39, 3, 'Morissette, Weimann and Dooley', 'Cielo', '2', '386', 'Okuneva-Hagenes', '2021-02-10 00:06:19', '2021-02-10 00:06:19'),
(40, 1, 'Graham-Harber', 'Mireille', '7', '580', 'Oberbrunner-Bosco', '2021-02-10 00:06:19', '2021-02-10 00:06:19'),
(41, 3, 'Grady Group', 'Conner', '5', '97', 'Zulauf, Langworth and Marquardt', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(42, 2, 'Senger PLC', 'Tyrese', '9', '909', 'Harris, Yost and Mann', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(43, 3, 'Carter PLC', 'Evie', '4', '683', 'Koss, Gutkowski and Bradtke', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(44, 2, 'Heaney, Walsh and Dickens', 'Eldon', '7', '663', 'Borer, Welch and Gutkowski', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(45, 3, 'Gusikowski-Rau', 'Camron', '9', '376', 'Mohr-Mayert', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(46, 1, 'Casper-Fay', 'Jazlyn', '8', '154', 'Larson Group', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(47, 1, 'Conn Inc', 'Chaz', '2', '535', 'Harris, Conroy and Stehr', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(48, 4, 'Grant-Bradtke', 'Ernie', '7', '71', 'Little, Torphy and Purdy', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(49, 2, 'Bailey, Rogahn and Deckow', 'Cara', '3', '56', 'Gorczany PLC', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(50, 1, 'Weimann-Cartwright', 'Terrell', '8', '875', 'Baumbach Group', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(51, 2, 'Hill-Treutel', 'Julius', '4', '553', 'Klocko-Feil', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(52, 4, 'Pagac, Jacobi and Rutherford', 'Marquis', '7', '755', 'Doyle, Bailey and Hackett', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(53, 4, 'Stracke, Corkery and Pollich', 'Dedric', '6', '752', 'Morar, Runolfsdottir and Rosenbaum', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(54, 2, 'Rolfson Inc', 'Tracy', '0', '537', 'Strosin Ltd', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(55, 1, 'Dibbert-Kertzmann', 'Elliott', '2', '677', 'Klein-Conroy', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(56, 4, 'Bechtelar, Rippin and Hudson', 'Colton', '8', '230', 'Gislason, Skiles and Jerde', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(57, 4, 'Breitenberg-Casper', 'Ethan', '5', '820', 'Feest Group', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(58, 2, 'Zemlak, Boehm and Ziemann', 'Darrion', '4', '41', 'Nikolaus-Stracke', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(59, 4, 'Schamberger Inc', 'Sister', '4', '809', 'Larkin, Rutherford and Kerluke', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(60, 1, 'Emmerich LLC', 'Margaret', '8', '539', 'Gibson PLC', '2021-02-10 00:06:52', '2021-02-10 00:06:52'),
(61, 2, 'oscar', 'oscar', '123', '123', 'oscar', '2021-02-10 00:23:40', '2021-02-10 00:23:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'oscarTorress', 'oscatorres23@gmail.com', '2021-02-10 00:03:58', '$2y$10$LAuEknzh1.Ika6doT0cvCuK6dFGt5a2gJF/CPKT9lqZHhQhvG1NvC', 'yunX3XfYYC', '2021-02-10 00:03:58', '2021-02-10 00:03:58'),
(2, 'oscarTorress', 'oscatorres20@gmail.com', '2021-02-10 00:05:48', '$2y$10$7OXZ3evu2fICSii63yurQ.Z0xN81pDy6T39rf8DLqgW63.A5EVsP.', 'WfN4ELEAej', '2021-02-10 00:05:48', '2021-02-10 00:05:48'),
(3, 'oscarTorress', 'oscatorres21@gmail.com', '2021-02-10 00:06:18', '$2y$10$XOEasKg9ofNrZlxWntYTiuLKD0rwxbJpYq3uzHLlzoq5e072L53lq', 'YypohmnnIM', '2021-02-10 00:06:18', '2021-02-10 00:06:18'),
(4, 'oscarTorress', 'oscatorres22@gmail.com', '2021-02-10 00:06:52', '$2y$10$rh968yZNBXqPyVMOl9pqzOT4ocMZQGcIryw7g/s3pW6n6n50L5eDe', 'BdZ4gatyN6', '2021-02-10 00:06:52', '2021-02-10 00:06:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
