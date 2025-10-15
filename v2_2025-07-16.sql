-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 16, 2025 at 11:06 PM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `created_at`, `updated_at`) VALUES(1, 'Acme Corporation', '2023-07-13 08:59:00', '2023-07-13 08:59:00');
INSERT INTO `accounts` (`id`, `name`, `created_at`, `updated_at`) VALUES(2, 'Livecomm', '2023-07-13 09:01:14', '2023-07-13 09:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE `chat_message` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chatid` bigint(20) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `date_replied` datetime DEFAULT NULL,
  `by_admin` tinyint(4) NOT NULL DEFAULT 0,
  `initial_plugin_message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_number`
--

DROP TABLE IF EXISTS `chat_number`;
CREATE TABLE `chat_number` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` bigint(20) NOT NULL,
  `number` varchar(100) NOT NULL,
  `lc_number` varchar(100) NOT NULL,
  `is_read` enum('0','1') NOT NULL DEFAULT '0',
  `sent_from` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `postal_code` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 2, 15, 'Ellen', 'Jacobson', 'ziemann.pierre@example.org', '(844) 342-5861', '145 Mayra Curve', 'Port Kip', 'Tennessee', 'US', '71376-8251', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 2, 11, 'Elouise', 'Kautzer', 'jaeden.schinner@example.net', '844.229.9024', '39242 Katrine Lodge', 'Yostborough', 'Virginia', 'US', '40539-2843', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 2, 27, 'Queen', 'Johnson', 'parisian.elza@example.com', '877-407-5967', '38267 Kathleen Courts', 'South Lorena', 'Colorado', 'US', '79007', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 2, 6, 'Taylor', 'Bogisich', 'kdonnelly@example.net', '855.881.6224', '269 Trevor Burgs', 'Port Joseph', 'Nebraska', 'US', '56714-6265', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 2, 12, 'Kaia', 'Buckridge', 'goodwin.lilian@example.com', '877-624-0921', '1631 Balistreri Road', 'New Valerie', 'West Virginia', 'US', '48775-3683', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 2, 45, 'Nasir', 'O\'Keefe', 'krunolfsdottir@example.org', '1-877-746-9383', '59869 Heathcote Stravenue', 'West Fern', 'Nevada', 'US', '08725-4096', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(7, 2, 49, 'Roxanne', 'Hand', 'glover.sheila@example.com', '(877) 474-1758', '37796 Rowe Ford', 'Lionelton', 'Kentucky', 'US', '23877', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(8, 2, 46, 'Kyle', 'Runte', 'nebert@example.com', '(855) 272-1034', '80111 White Burg', 'Lake Erna', 'Utah', 'US', '11272-2433', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(9, 2, 92, 'Ryley', 'Leannon', 'assunta02@example.net', '844.462.8984', '7116 Rowe Square', 'West Jeffryfurt', 'Maine', 'US', '50287', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(10, 2, 97, 'Jaiden', 'Bogisich', 'eloy.daniel@example.org', '(844) 425-3681', '48803 Herbert Knoll Apt. 295', 'Port Rosalinda', 'Florida', 'US', '27410', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(11, 2, 61, 'Mckenna', 'Towne', 'darwin01@example.org', '888-291-0829', '45687 Reinger Heights', 'Port Gertrudestad', 'Alaska', 'US', '53773', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(12, 2, 32, 'Arnold', 'Purdy', 'ejenkins@example.com', '1-844-277-8442', '6497 Khalid Falls', 'North Evelyn', 'New York', 'US', '22863-3962', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(13, 2, 100, 'Ulises', 'Raynor', 'hrussel@example.net', '1-800-539-0275', '99837 Rogahn Divide Suite 211', 'East Lydatown', 'Massachusetts', 'US', '31577', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(14, 2, 9, 'Brenden', 'Grimes', 'zwill@example.net', '888.383.2931', '39300 Zoe Mews Apt. 870', 'Lake Gordonfort', 'Michigan', 'US', '53993', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(15, 2, 1, 'Lucienne', 'Mueller', 'ohara.drew@example.org', '1-888-416-3931', '289 Darrick Roads', 'West Alex', 'Oregon', 'US', '90586-7831', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(16, 2, 47, 'Mekhi', 'Davis', 'napoleon17@example.com', '888-712-8574', '18034 Moen Route', 'Juddland', 'Wisconsin', 'US', '56712-3024', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(17, 2, 75, 'Janessa', 'Olson', 'mckenna21@example.org', '877-512-3655', '8396 Roob Mall Suite 913', 'West Alysha', 'Missouri', 'US', '32192-7899', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(18, 2, 83, 'Tommie', 'Schimmel', 'lonzo.gaylord@example.com', '1-844-813-1215', '178 Bartoletti Trace Apt. 803', 'Cronintown', 'New Mexico', 'US', '08197-9813', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(19, 2, 57, 'Estelle', 'Cronin', 'tdickinson@example.net', '(844) 502-3514', '7334 Skiles Pass Apt. 851', 'Geraldineton', 'North Dakota', 'US', '04851', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(20, 2, 56, 'Alexys', 'Kuhn', 'huels.andres@example.net', '1-866-495-7560', '754 Gloria Neck', 'Turnermouth', 'North Carolina', 'US', '23842-5636', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(21, 2, 91, 'Claudie', 'O\'Connell', 'xsmitham@example.org', '1-866-704-6850', '78231 Gutkowski Mission', 'Adalbertoton', 'Alabama', 'US', '56207-9224', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(22, 2, 24, 'Destany', 'Zulauf', 'weimann.myles@example.net', '800.289.9641', '8141 Nadia Springs', 'New Sylvester', 'Pennsylvania', 'US', '59648-6856', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(23, 2, 99, 'Jordane', 'Feeney', 'alec87@example.com', '(877) 762-7788', '7980 Lavada Stravenue', 'Malloryhaven', 'Ohio', 'US', '55318-2708', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(24, 2, 33, 'Doyle', 'Runte', 'bernadette58@example.com', '1-800-546-1141', '36104 Casper Expressway Apt. 060', 'East Juwanmouth', 'Louisiana', 'US', '60700', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(25, 2, 81, 'Osborne', 'Cremin', 'fbogisich@example.com', '1-844-970-2521', '344 Olson Road Apt. 696', 'North Abbigailstad', 'Texas', 'US', '90917-9519', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(26, 2, 90, 'Nola', 'Bartell', 'wohara@example.org', '800.736.1069', '458 Dare Dam Suite 779', 'Port Kenyon', 'California', 'US', '59913', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(27, 2, 13, 'Dulce', 'Ankunding', 'kreynolds@example.org', '844.454.9297', '45797 Wolff Stream Apt. 626', 'Winstonside', 'Alaska', 'US', '89537-9472', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(28, 2, 17, 'Tyra', 'Leuschke', 'njenkins@example.net', '800.227.3357', '8930 Toy Mill', 'North Eulalia', 'Nebraska', 'US', '23228', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(29, 2, 60, 'Joshua', 'Schmidt', 'jay57@example.org', '(888) 209-3937', '289 Jonatan Harbors', 'Lake Hayleeberg', 'Michigan', 'US', '96642-7680', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(30, 2, 75, 'Arno', 'Mraz', 'ankunding.enola@example.com', '(866) 999-5825', '74143 Maryam River Apt. 261', 'West Grant', 'Hawaii', 'US', '27658-6290', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(31, 2, 65, 'Eileen', 'Durgan', 'egulgowski@example.com', '866.537.1509', '10201 Lakin Causeway Apt. 916', 'East Roscoe', 'Alaska', 'US', '16608', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(32, 2, 7, 'Arlene', 'Spinka', 'mwisoky@example.org', '855.245.7790', '19263 Elsie Cove Suite 694', 'East Jordy', 'Kansas', 'US', '46495-6092', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(33, 2, 55, 'Joe', 'Little', 'tito.russel@example.org', '877.891.6114', '84292 Hartmann Inlet', 'Kiannaville', 'Kansas', 'US', '96491-8655', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(34, 2, 38, 'Kale', 'Murray', 'clementine13@example.com', '866-669-4932', '872 Jessika Highway Suite 031', 'New Libby', 'Massachusetts', 'US', '68343-9426', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(35, 2, 21, 'Reagan', 'Dietrich', 'larkin.carlo@example.net', '(855) 201-1153', '3656 Dickens Isle Apt. 299', 'West Osborne', 'Kentucky', 'US', '58560-9696', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(36, 2, 7, 'Tyson', 'Rogahn', 'wehner.toni@example.net', '(855) 765-5473', '84054 Brigitte Avenue', 'North Ethelyn', 'Virginia', 'US', '93549', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(37, 2, 72, 'Heidi', 'Schoen', 'eichmann.mason@example.com', '877.299.8039', '3772 Isabell Plains', 'Prohaskaton', 'Indiana', 'US', '88511', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(38, 2, 42, 'Taryn', 'Schimmel', 'ceasar.bergstrom@example.net', '855.930.1221', '530 Hillard Landing', 'West Haley', 'Missouri', 'US', '21516-9971', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(39, 2, 48, 'Shanel', 'Collins', 'jerrod45@example.com', '(855) 723-2737', '4611 Adams Dam', 'West Ernest', 'Nevada', 'US', '24227', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(40, 2, 63, 'Hilbert', 'Schimmel', 'mack.schmidt@example.net', '1-877-495-4031', '85700 Balistreri Knoll Suite 969', 'Lethaborough', 'Oregon', 'US', '23655', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(41, 2, 1, 'Rashawn', 'Gutmann', 'webster35@example.net', '800.983.2630', '651 Rhiannon Inlet', 'Luciennemouth', 'New Mexico', 'US', '67703-5088', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(42, 2, 47, 'Terence', 'Moen', 'weber.derrick@example.com', '800-830-2846', '25008 Wilson Crossroad Suite 988', 'Diamondhaven', 'West Virginia', 'US', '79149-2287', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(43, 2, 100, 'Efren', 'Hilpert', 'xauer@example.org', '1-866-400-5926', '62881 Russel Summit', 'New Anaischester', 'District of Columbia', 'US', '24855', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(44, 2, 48, 'Wilson', 'Kris', 'vonrueden.jaleel@example.org', '1-800-861-3509', '400 Keira Lake Suite 169', 'New Deangeloberg', 'Oregon', 'US', '99637', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(45, 2, 26, 'Naomi', 'Kemmer', 'schulist.isabella@example.net', '800-972-4647', '36902 Daphne Cape Suite 557', 'Kerlukeville', 'Virginia', 'US', '60612', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(46, 2, 56, 'Gabe', 'Funk', 'clare98@example.net', '888.871.1464', '4975 Larson Trail Apt. 704', 'Lake Cruzland', 'New Jersey', 'US', '91411', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(47, 2, 22, 'Ewell', 'Boyle', 'bertha93@example.org', '1-888-641-4914', '3428 Mohr Circles', 'Ashlyside', 'Connecticut', 'US', '05787-3867', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(48, 2, 47, 'Oda', 'Lowe', 'cassin.mabelle@example.com', '1-866-762-4948', '67309 Hassie Trail', 'New Whitney', 'Louisiana', 'US', '98800', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(49, 2, 88, 'Julie', 'Bergstrom', 'nolan.rogelio@example.com', '1-866-964-0297', '97808 Norene Land', 'Lake Elva', 'Oklahoma', 'US', '09922', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(50, 2, 54, 'George', 'Predovic', 'keebler.aniyah@example.org', '1-888-485-0202', '612 Ocie Shores', 'Faustinoville', 'Washington', 'US', '53093', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(51, 2, 47, 'Novella', 'Lakin', 'effertz.jesus@example.net', '1-800-741-8398', '7204 Bahringer Lakes', 'Lowefurt', 'Nebraska', 'US', '89837', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(52, 2, 21, 'Travis', 'Johns', 'roob.ara@example.net', '866.415.8692', '126 Greta Station', 'North Francesca', 'Utah', 'US', '07025', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(53, 2, 57, 'Cassie', 'Considine', 'qbruen@example.org', '855.387.8094', '281 Davion Meadows Apt. 583', 'Lilianmouth', 'Arkansas', 'US', '88709', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(54, 2, 96, 'Jonathan', 'Denesik', 'adrien.rau@example.com', '(866) 566-9986', '20288 Bogisich Views Suite 476', 'Lake Madalineview', 'Illinois', 'US', '87529', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(55, 2, 76, 'Alfonso', 'Medhurst', 'fahey.precious@example.net', '1-866-455-6605', '7365 Vernie Square Suite 858', 'Jacobsonhaven', 'Oregon', 'US', '23850', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(56, 2, 48, 'Virginie', 'Paucek', 'swaniawski.german@example.net', '855.780.5021', '215 Gibson Trafficway Suite 940', 'Lake Amyton', 'Oklahoma', 'US', '02189', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(57, 2, 71, 'Citlalli', 'Ullrich', 'freddie36@example.net', '800-707-4950', '16797 Isabelle Port', 'East Delfina', 'Illinois', 'US', '30480-6969', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(58, 2, 58, 'Bobbie', 'Heaney', 'cormier.josefa@example.org', '877.265.5237', '908 Raynor Cliff Apt. 938', 'East Opal', 'District of Columbia', 'US', '61625-6899', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(59, 2, 100, 'Haskell', 'Okuneva', 'fay.zoe@example.net', '888.482.4356', '17191 Ewell Causeway Apt. 218', 'Deckowton', 'Indiana', 'US', '18578', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(60, 2, 95, 'Nadia', 'Zemlak', 'madelynn98@example.com', '855-339-2485', '40020 Hildegard Road Suite 289', 'Monroeland', 'District of Columbia', 'US', '92515', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(61, 2, 59, 'Candice', 'Abernathy', 'gusikowski.pearl@example.net', '(844) 456-8860', '8855 Zemlak Brooks', 'Kalliefurt', 'North Dakota', 'US', '53817-2323', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(62, 2, 99, 'Adrienne', 'Smith', 'ramona55@example.com', '(844) 503-5088', '32257 Lakin Mountains Suite 855', 'Framiburgh', 'New York', 'US', '50956', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(63, 2, 15, 'Twila', 'Rogahn', 'wmoore@example.org', '1-888-915-5856', '3746 Rodriguez Lodge Suite 759', 'Lake Timothyville', 'Utah', 'US', '48652', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(64, 2, 99, 'Loy', 'Schowalter', 'blanda.charles@example.net', '(855) 568-3739', '56048 Casper Flat Apt. 533', 'Beahanfurt', 'Rhode Island', 'US', '38082', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(65, 2, 87, 'Shaniya', 'Bernhard', 'may08@example.net', '1-800-624-4958', '20570 Crona View', 'Zulaton', 'New York', 'US', '71730-4677', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(66, 2, 66, 'Emilio', 'Dibbert', 'ruecker.lesly@example.net', '800.636.8940', '2115 Angelita Motorway Apt. 007', 'Dustymouth', 'Illinois', 'US', '30415', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(67, 2, 3, 'Merl', 'Hand', 'stoltenberg.norma@example.net', '800.497.5758', '4814 Winfield Summit', 'East Pattie', 'Nevada', 'US', '42960', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(68, 2, 34, 'Sophia', 'Bergnaum', 'haag.gordon@example.org', '1-844-255-2476', '9972 Bailey Cape', 'Schuppeberg', 'Colorado', 'US', '32300-2548', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(69, 2, 4, 'Antoinette', 'Ziemann', 'antonetta70@example.org', '888-217-9283', '5073 Mante Prairie Apt. 639', 'Port Keely', 'Louisiana', 'US', '99206-7829', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(70, 2, 54, 'Danika', 'Grimes', 'auer.lourdes@example.com', '(877) 219-4486', '662 Lesch Union', 'Cheyannefort', 'Louisiana', 'US', '67991-9128', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(71, 2, 83, 'Cade', 'Gislason', 'cruickshank.sabryna@example.org', '877-929-6536', '6016 Cassin Motorway Suite 538', 'Port Isaiview', 'Montana', 'US', '88616-9283', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(72, 2, 30, 'Edgar', 'Abernathy', 'estella.baumbach@example.com', '(877) 985-7885', '989 Kianna Skyway', 'Lake Theresashire', 'Iowa', 'US', '49607-7529', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(73, 2, 91, 'Gerson', 'Goodwin', 'verlie.smith@example.org', '1-888-446-8647', '71581 Berry Gardens', 'Reillyview', 'Ohio', 'US', '19189-9162', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(74, 2, 49, 'Tremaine', 'Wilderman', 'lubowitz.leonel@example.org', '877-567-4544', '46445 Rosenbaum Skyway Suite 524', 'Lake Eraside', 'Kentucky', 'US', '58197', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(75, 2, 84, 'Mariah', 'Schulist', 'nicolas.sasha@example.com', '1-844-476-6889', '471 Schimmel Bypass', 'Earnestineville', 'Pennsylvania', 'US', '26505', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(76, 2, 63, 'Eliezer', 'Volkman', 'kunde.alva@example.org', '888.849.5703', '91620 Hugh Square', 'Port Shawna', 'Alabama', 'US', '91851', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(77, 2, 54, 'Deanna', 'Beahan', 'fleta.veum@example.net', '(866) 497-3794', '59523 Velda Stravenue Apt. 888', 'Aylinmouth', 'North Dakota', 'US', '27339', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(78, 2, 17, 'Hardy', 'Waters', 'xlemke@example.org', '888-292-6393', '711 Nikolaus Pass Suite 934', 'Kemmerland', 'District of Columbia', 'US', '47459', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(79, 2, 75, 'Napoleon', 'Batz', 'white.talia@example.org', '877.965.5584', '2290 Eva Park', 'Osbaldofort', 'Washington', 'US', '05536-0127', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(80, 2, 8, 'Cecilia', 'Pagac', 'lrenner@example.org', '(844) 740-0352', '784 Raynor Points', 'Lawsonmouth', 'Iowa', 'US', '15283-4337', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(81, 2, 33, 'Vesta', 'Emmerich', 'asa22@example.net', '1-866-336-4523', '3162 Grimes Oval', 'New Coreneview', 'Ohio', 'US', '65941-9042', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(82, 2, 11, 'Hunter', 'Auer', 'jakob10@example.net', '(844) 995-3588', '435 Ortiz Estate Suite 686', 'New Tonifort', 'Missouri', 'US', '09368-1585', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(83, 2, 70, 'Selina', 'Bergstrom', 'weber.roslyn@example.net', '800.845.7833', '1397 Madelyn Camp', 'Edythebury', 'Missouri', 'US', '34383-2181', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(84, 2, 63, 'Opal', 'Blanda', 'steuber.daphne@example.com', '1-877-987-2404', '89138 Rath Mountains Apt. 392', 'Danielland', 'Rhode Island', 'US', '28427', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(85, 2, 96, 'Marcelle', 'Gleason', 'ydaugherty@example.com', '1-844-672-6170', '210 Luettgen Ville Suite 688', 'Anaisfort', 'Tennessee', 'US', '34103', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(86, 2, 83, 'Herbert', 'Zboncak', 'fisher.kenny@example.net', '(877) 987-4413', '1839 Allie Square', 'Donaldmouth', 'Iowa', 'US', '73745', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(87, 2, 1, 'Natalia', 'Cassin', 'lowe.austin@example.com', '866-632-7983', '138 Maria Highway', 'Zemlakfort', 'Alaska', 'US', '04174', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(88, 2, 33, 'Dannie', 'Kertzmann', 'jaiden.heathcote@example.org', '877-532-6431', '7606 Hintz Haven Apt. 186', 'Kohlerfurt', 'Georgia', 'US', '71741', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(89, 2, 12, 'Crystal', 'Weimann', 'webster57@example.com', '877.467.4891', '4926 Sporer Ford', 'East Judsonmouth', 'Illinois', 'US', '76536-1083', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(90, 2, 76, 'Jillian', 'Shields', 'acorwin@example.org', '(800) 639-1374', '36875 DuBuque Brooks Suite 203', 'Barryton', 'Tennessee', 'US', '08885', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(91, 2, 21, 'Meredith', 'Huels', 'eda.cummings@example.com', '(888) 287-4937', '59693 Schuster Hill', 'North Winfield', 'North Dakota', 'US', '98214-5728', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(92, 2, 9, 'Milford', 'Monahan', 'vinnie.ryan@example.org', '1-844-303-1733', '681 Karlie Stravenue Suite 201', 'Handmouth', 'Ohio', 'US', '40880-3287', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(93, 2, 93, 'Rusty', 'Hoppe', 'nigel96@example.com', '800.989.7330', '1188 Alysson Crescent Apt. 678', 'North Marleymouth', 'Montana', 'US', '34831-6177', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(94, 2, 12, 'Shana', 'Dickinson', 'ypollich@example.com', '1-800-492-8819', '6883 Darlene Harbors Apt. 830', 'Olafland', 'California', 'US', '50181', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(95, 2, 18, 'Teagan', 'Christiansen', 'dedric32@example.com', '1-844-644-2381', '68176 Hackett Mall', 'Lindseyview', 'Arizona', 'US', '70923-1504', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(96, 2, 60, 'Stephanie', 'Hackett', 'lelah49@example.com', '1-800-660-4430', '1836 Aimee Key', 'New Chet', 'Alabama', 'US', '14167-3221', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(97, 2, 43, 'Aaron', 'Green', 'regan.lindgren@example.net', '800-498-7306', '29330 Jenkins Village Suite 719', 'Amandaland', 'South Dakota', 'US', '83618-3806', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(98, 2, 64, 'Unique', 'Berge', 'yframi@example.net', '800.650.7882', '29809 Ziemann Park Apt. 682', 'Lake Adelinestad', 'Georgia', 'US', '23093-9496', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(99, 2, 45, 'Percy', 'Balistreri', 'rogahn.peggie@example.com', '(855) 462-8844', '682 Annamarie Highway', 'Langworthborough', 'Kansas', 'US', '29794-7136', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);
INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(100, 2, 28, 'Carolina', 'Hansen', 'lionel.baumbach@example.org', '800-348-1881', '360 Jayda Prairie', 'Hayleefurt', 'Missouri', 'US', '47177-9370', '2023-07-13 09:01:14', '2023-07-13 09:01:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directory`
--

DROP TABLE IF EXISTS `directory`;
CREATE TABLE `directory` (
  `did` bigint(20) NOT NULL,
  `_uid` bigint(20) DEFAULT NULL,
  `old_did` bigint(20) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `sms_address` varchar(255) DEFAULT NULL,
  `mms_address` varchar(255) DEFAULT NULL,
  `last_processed` datetime DEFAULT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `skipped_lookup` tinyint(4) NOT NULL DEFAULT 0,
  `_gid` bigint(20) DEFAULT NULL,
  `created_at_legacy` datetime DEFAULT NULL,
  `optout_sent` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `postal_code` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(9, '2020_01_01_000001_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(10, '2020_01_01_000002_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(11, '2020_01_01_000003_create_accounts_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(12, '2020_01_01_000004_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(13, '2020_01_01_000005_create_organizations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(14, '2020_01_01_000006_create_contacts_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(24, '2023_06_30_214653_add_user_fields_to_users_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(25, '2023_07_03_041134_directory_initial', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(26, '2023_07_03_050405_user_settings_google_initial', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(27, '2023_07_03_185817_chat_message', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(28, '2023_07_03_201300_chat_number', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(29, '2023_07_03_205538_twilio_costs_per_phone', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(30, '2023_07_03_212404_twilio_usage_invoices', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(31, '2023_07_03_214247_user_contacts', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(32, '2023_07_03_214321_user_groups', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(33, '2023_07_17_213627_signup_log', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(34, '2023_07_17_214802_tbl_blacklist', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(35, '2023_07_21_000858_add_fields_to_directory', 4);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `postal_code` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(1, 2, 'Spencer Group', 'sherwood.kutch@reinger.org', '(866) 251-1536', '7661 Savanna Heights Apt. 095', 'Gavinton', 'Washington', 'US', '04186', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(2, 2, 'Kertzmann, Schimmel and Kiehn', 'estella82@morissette.com', '1-800-753-6923', '77112 Durgan Fork Suite 259', 'Lake Lincoln', 'Kansas', 'US', '67806', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(3, 2, 'Torphy-Murazik', 'veronica59@stokes.com', '877-670-6280', '383 Chelsey Unions', 'Lake Amarahaven', 'Arkansas', 'US', '62508', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(4, 2, 'Jaskolski-Boyle', 'koepp.ella@larson.com', '855-737-1117', '14037 Quigley Parkways', 'Lake Carolyne', 'Minnesota', 'US', '62839-4035', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(5, 2, 'Streich-Stamm', 'lvon@williamson.com', '877.799.2559', '9190 Ford Mills', 'Skylarstad', 'New Mexico', 'US', '07976-7673', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(6, 2, 'O\'Kon Group', 'schaefer.michale@murphy.biz', '844-266-9996', '356 Malinda Roads', 'Schmidtburgh', 'Indiana', 'US', '12945', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(7, 2, 'Quitzon Inc', 'una53@glover.biz', '(855) 219-0223', '58801 Balistreri Lodge Apt. 478', 'Boganmouth', 'Pennsylvania', 'US', '51671-3799', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(8, 2, 'Morar PLC', 'ayden.jones@kiehn.info', '1-855-809-6591', '8519 Clovis Valley', 'Osinskiburgh', 'Maryland', 'US', '28217-3312', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(9, 2, 'Luettgen-Wilkinson', 'evolkman@beier.com', '866.885.2735', '78677 Boyd Crossroad', 'Port Bettyborough', 'Louisiana', 'US', '98346', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(10, 2, 'Schroeder LLC', 'dfunk@feest.com', '(800) 242-3404', '1565 Toy Roads', 'Edmundland', 'Iowa', 'US', '33405', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(11, 2, 'Sawayn, Pacocha and Jaskolski', 'lukas.schimmel@olson.biz', '1-844-249-7178', '83852 Wyman Plain', 'South Carmelhaven', 'Tennessee', 'US', '66813-2617', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(12, 2, 'Schultz, Hickle and Bruen', 'maximillian.hegmann@breitenberg.com', '(888) 400-5570', '2103 Clarabelle Meadows', 'Port Jackeline', 'Florida', 'US', '85984', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(13, 2, 'Rau Ltd', 'delbert.hane@lueilwitz.com', '(855) 575-6400', '501 Brakus Hill Apt. 561', 'East Gloria', 'Montana', 'US', '09431-6661', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(14, 2, 'Kessler, Zboncak and Dach', 'mervin19@sanford.net', '866.570.6962', '648 Joanny Ranch', 'Port Rosa', 'Nevada', 'US', '50314', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(15, 2, 'Kunde Ltd', 'ada56@von.net', '1-866-993-4840', '115 Peter Fords Suite 318', 'Kingstad', 'Colorado', 'US', '28773', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(16, 2, 'Bartell LLC', 'rudy.waters@gulgowski.com', '844.613.7001', '210 Adams Hills Suite 317', 'Port Waylonburgh', 'Alabama', 'US', '97089-4168', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(17, 2, 'Grimes and Sons', 'jkassulke@becker.net', '1-855-929-2728', '808 Russel Ports Suite 949', 'Cadenstad', 'New Jersey', 'US', '74488', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(18, 2, 'Kunde, Hayes and Schmitt', 'lucienne07@runte.com', '855.462.6863', '6423 Estel Fall Suite 883', 'Lake Erickaberg', 'Hawaii', 'US', '01944', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(19, 2, 'Pfeffer-Smitham', 'zora49@willms.net', '1-800-571-8790', '95307 West Crest Apt. 679', 'Luciochester', 'Oregon', 'US', '98861-0719', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(20, 2, 'McKenzie, Bins and Olson', 'lilian.wolf@hyatt.com', '1-800-473-5848', '33305 Sauer Harbor', 'Sporermouth', 'North Dakota', 'US', '85050', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(21, 2, 'Gleichner, Johns and Morar', 'shea11@labadie.com', '(888) 569-3482', '2652 Fletcher Forge Suite 274', 'Rhettborough', 'Montana', 'US', '90812-0434', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(22, 2, 'Purdy-Smitham', 'crystal.torphy@mcclure.net', '(800) 899-3894', '2005 Elnora Garden Apt. 590', 'Lake Lydiamouth', 'South Carolina', 'US', '94611', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(23, 2, 'McDermott PLC', 'uarmstrong@koch.info', '855.632.1901', '50232 Beier Well', 'Vandervortfort', 'Alaska', 'US', '81619-4816', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(24, 2, 'Beer Ltd', 'sylvan.collier@brekke.info', '(800) 218-9204', '658 Muriel Crescent Apt. 005', 'Port Ivory', 'Nevada', 'US', '42551-9099', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(25, 2, 'Bednar-Jerde', 'baumbach.jazlyn@friesen.com', '1-844-413-4860', '33289 Jalyn Radial', 'Elsashire', 'Maryland', 'US', '66791', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(26, 2, 'Bashirian, Langworth and Kerluke', 'marcos93@rath.com', '(877) 675-3945', '81480 Rowe Mill', 'Port Darenborough', 'Vermont', 'US', '58580', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(27, 2, 'Waelchi, Crist and Reynolds', 'tyree22@nolan.org', '(844) 697-4939', '23282 Frami Ferry', 'South Jessika', 'Utah', 'US', '07004-4523', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(28, 2, 'Leuschke Ltd', 'jadyn41@stamm.info', '(855) 239-3201', '6171 Lubowitz Village Apt. 918', 'South Jasper', 'Tennessee', 'US', '17564', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(29, 2, 'Marquardt-Mertz', 'hkoepp@vandervort.net', '866-419-5365', '188 Fisher Squares Apt. 642', 'East Elishaland', 'Michigan', 'US', '28933-3506', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(30, 2, 'Harvey, Veum and Robel', 'nstoltenberg@osinski.com', '(855) 783-6169', '470 Renner Shoal', 'Port Walterbury', 'New York', 'US', '22978-4097', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(31, 2, 'Robel-Cruickshank', 'daren71@romaguera.com', '888-675-3562', '519 Hartmann Hill Suite 577', 'Port Selmertown', 'Oklahoma', 'US', '71836', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(32, 2, 'Hoeger, Bins and Friesen', 'vanessa.mcglynn@schulist.com', '(855) 312-8259', '622 Windler Light', 'Dachfurt', 'Oregon', 'US', '41650-3384', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(33, 2, 'Conroy Ltd', 'lbergnaum@gleason.info', '(866) 226-2582', '75126 Lowe Crossing Apt. 073', 'Port Madisyn', 'Oregon', 'US', '66109-6660', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(34, 2, 'Kohler LLC', 'conner50@gaylord.com', '844.964.9027', '1490 Filomena Hollow Suite 680', 'New Jovany', 'Florida', 'US', '93895', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(35, 2, 'Hamill, Hackett and Brown', 'gerardo.ullrich@bruen.org', '1-888-644-6746', '75223 Russel Loaf Suite 972', 'Reichelfort', 'Idaho', 'US', '60562-1978', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(36, 2, 'Haag, Goodwin and Zieme', 'wkuhn@mayert.com', '877.704.7863', '9346 Makayla Ridge Suite 246', 'Oberbrunnerville', 'New Hampshire', 'US', '81634', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(37, 2, 'Kertzmann, Bruen and Herman', 'anastasia46@orn.com', '(800) 610-8982', '7576 Ortiz Walk Apt. 150', 'Lake Julianaland', 'Alaska', 'US', '93616', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(38, 2, 'O\'Conner-Altenwerth', 'bode.faustino@crooks.biz', '888-492-5346', '484 Davis Plaza Suite 225', 'Port John', 'Tennessee', 'US', '07909-8474', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(39, 2, 'Ferry PLC', 'daniel.clementine@champlin.biz', '1-844-581-6424', '848 Meaghan Mount', 'Port Hilma', 'Washington', 'US', '53483', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(40, 2, 'Ferry Inc', 'sadye.windler@kessler.info', '877-991-8160', '93313 Bethany Loaf', 'New Zaria', 'Oklahoma', 'US', '78141-3891', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(41, 2, 'Borer, Beier and Feest', 'wiza.craig@romaguera.com', '844.894.9159', '8422 Leffler Well Apt. 700', 'Brekkeberg', 'Kentucky', 'US', '97267-0863', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(42, 2, 'Walter-Braun', 'ransom.nienow@nienow.org', '888.350.3989', '179 Blanda Estates', 'Towneborough', 'Tennessee', 'US', '14924-4670', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(43, 2, 'Mayert, Runolfsson and Renner', 'ward.mellie@green.net', '866-683-4073', '74588 Yundt Manor Suite 977', 'Nadermouth', 'South Carolina', 'US', '13657', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(44, 2, 'Predovic, Effertz and Cole', 'lonie.denesik@cronin.biz', '1-866-774-4940', '409 Barton Drive Suite 249', 'Ashlyborough', 'Alabama', 'US', '48797', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(45, 2, 'Wolff, Kozey and Toy', 'kling.felicia@senger.info', '855-865-8648', '5455 Alva Crossroad Suite 459', 'Ebertmouth', 'New Hampshire', 'US', '53836', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(46, 2, 'Price, Borer and Jacobi', 'ellis64@strosin.info', '800.716.3210', '68096 Amir Pine', 'Gleichnerstad', 'Idaho', 'US', '14096', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(47, 2, 'Nikolaus-Ledner', 'jessie.vandervort@hoeger.com', '1-877-254-3542', '3322 O\'Reilly Corner Apt. 200', 'Maritzaton', 'Utah', 'US', '71961-6495', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(48, 2, 'Carroll-Marvin', 'pierre76@johnson.com', '844.568.6254', '2343 Borer Walk Suite 346', 'West Elfriedaborough', 'Maine', 'US', '17066-6823', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(49, 2, 'Runte, Predovic and Bradtke', 'wtreutel@renner.net', '800.290.1230', '6435 Jacobson Track', 'Venamouth', 'Minnesota', 'US', '30184-9316', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(50, 2, 'Hammes, Homenick and Mann', 'skoelpin@daugherty.com', '1-866-310-6393', '471 Konopelski Stravenue Suite 860', 'Kutchmouth', 'Georgia', 'US', '83656-9098', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(51, 2, 'Breitenberg, Turner and O\'Conner', 'lkuvalis@casper.net', '855.277.9704', '66156 Collier Plaza Apt. 812', 'Marjolaineshire', 'California', 'US', '79475', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(52, 2, 'Armstrong, Carroll and Bechtelar', 'kiehn.damaris@robel.com', '1-800-550-7052', '296 Blaze Mall', 'South Noeborough', 'North Dakota', 'US', '05903', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(53, 2, 'Hettinger Inc', 'hal.friesen@kunde.com', '(866) 846-9313', '882 Myrtis Brook Suite 736', 'East Gillian', 'Maryland', 'US', '57175', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(54, 2, 'Carter-Schoen', 'vabernathy@schaefer.org', '1-855-700-3341', '78599 Grant Motorway Apt. 589', 'East Elizabeth', 'Nevada', 'US', '26731', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(55, 2, 'Schimmel Group', 'bhowell@kilback.com', '866-265-4602', '666 Jewel Flat', 'Port Saraishire', 'California', 'US', '06122-7705', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(56, 2, 'Buckridge, Stehr and Ernser', 'collier.jeff@spinka.org', '844.367.8058', '74004 Lelah Lakes Suite 455', 'East Karianechester', 'Montana', 'US', '08094-7482', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(57, 2, 'Armstrong-Ferry', 'oral.turcotte@gulgowski.org', '877.720.5784', '35184 Matilde Place Apt. 049', 'Pagacport', 'Massachusetts', 'US', '53311-8141', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(58, 2, 'Von, Koelpin and King', 'hirthe.kareem@mraz.com', '877.961.5330', '6059 Altenwerth Plains Apt. 399', 'South Yasmin', 'New Hampshire', 'US', '92247', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(59, 2, 'Sawayn, Fisher and Schowalter', 'homenick.alessia@franecki.org', '866.582.5464', '693 Geovanny Vista', 'Hankchester', 'California', 'US', '32944-8291', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(60, 2, 'Runolfsdottir LLC', 'deckow.leonardo@carter.biz', '1-855-390-6977', '660 Frieda Plaza', 'Christiansenfurt', 'Pennsylvania', 'US', '15000', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(61, 2, 'Wuckert Inc', 'zulauf.gail@hermiston.com', '1-877-557-3207', '830 Volkman Run Apt. 068', 'New Alaina', 'Alabama', 'US', '94777-5902', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(62, 2, 'Frami Inc', 'otto17@turner.biz', '(866) 785-9866', '637 Noble Rue', 'North Benjaminhaven', 'Arizona', 'US', '26247', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(63, 2, 'Romaguera-Cartwright', 'josefa33@murray.com', '(855) 255-0009', '679 Glover Inlet Suite 024', 'East Davonland', 'Wyoming', 'US', '27806-8359', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(64, 2, 'Koelpin, O\'Kon and Barrows', 'bode.aditya@wilkinson.info', '(855) 341-1684', '4155 Will Burgs', 'New Yeseniafurt', 'Maryland', 'US', '83857', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(65, 2, 'Jakubowski-Hoeger', 'larkin.stuart@buckridge.com', '(888) 617-6655', '2832 Veronica Parkways', 'Fisherton', 'Connecticut', 'US', '78166', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(66, 2, 'Bergnaum Ltd', 'grant.teagan@gorczany.org', '866-444-2225', '91881 Isabel Harbors Apt. 250', 'New Kameron', 'District of Columbia', 'US', '50444-7828', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(67, 2, 'Hudson Group', 'rath.bernadette@carroll.com', '1-866-420-9522', '857 Mosciski Lodge', 'Lake Elva', 'New Mexico', 'US', '76393', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(68, 2, 'Schulist, Hamill and Zemlak', 'presley93@kutch.com', '(855) 782-9881', '8225 Miguel Viaduct Apt. 040', 'South Lane', 'Missouri', 'US', '42221', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(69, 2, 'Hamill, Feest and Kemmer', 'tania45@rath.com', '855.289.1173', '1684 Perry Junction Suite 352', 'Jennieside', 'Colorado', 'US', '07439', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(70, 2, 'Mayer LLC', 'lthiel@wolf.com', '855.520.4750', '160 Robel Park Suite 263', 'North Marieport', 'Mississippi', 'US', '93112-3690', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(71, 2, 'Johns, Keebler and Emard', 'milan.rodriguez@ryan.biz', '877.891.9805', '5440 Beatrice Freeway Suite 083', 'West Kylestad', 'Nevada', 'US', '58756-8613', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(72, 2, 'Stark, Rau and Ruecker', 'demetrius45@treutel.com', '(844) 220-3945', '93380 Jamil Drives', 'Kamillemouth', 'Hawaii', 'US', '46686-7306', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(73, 2, 'Zboncak PLC', 'oreynolds@nicolas.com', '(888) 365-2044', '898 Walsh Road Suite 522', 'North Chyna', 'Minnesota', 'US', '14469-9065', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(74, 2, 'Wiza, Hessel and Padberg', 'xfay@greenholt.info', '1-888-486-8593', '4455 Greenholt Points Suite 552', 'West Sadie', 'Florida', 'US', '66698-3767', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(75, 2, 'Balistreri, Rodriguez and Gleason', 'esteban87@nitzsche.com', '888.255.5548', '1453 Pfannerstill Highway', 'Fletaside', 'New Mexico', 'US', '12482', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(76, 2, 'Padberg-Baumbach', 'trantow.janiya@gusikowski.com', '(866) 298-7064', '389 Boyle Center', 'Moenchester', 'West Virginia', 'US', '64966-2072', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(77, 2, 'Stiedemann, Harris and Goyette', 'avis25@bradtke.info', '1-866-630-9744', '623 Vergie Road Apt. 269', 'Camylleville', 'Alaska', 'US', '75700-0259', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(78, 2, 'Wyman PLC', 'howe.kaelyn@robel.com', '(855) 232-2244', '4182 Nienow Point Apt. 356', 'Glovertown', 'New Mexico', 'US', '94639-1451', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(79, 2, 'Lindgren, Veum and Stark', 'felipe51@keebler.com', '877.504.5872', '367 Joesph Canyon', 'Hauckhaven', 'Illinois', 'US', '72432', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(80, 2, 'Toy, Hills and Kutch', 'hintz.brian@gusikowski.biz', '844.753.2012', '7530 Hugh Stream Apt. 719', 'Hesselview', 'New Hampshire', 'US', '01199-0679', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(81, 2, 'Borer, Ritchie and Purdy', 'adelle.klein@mayer.com', '866-782-6213', '4550 O\'Connell Islands Suite 838', 'Keelinghaven', 'Indiana', 'US', '74086', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(82, 2, 'Crist, Ratke and Treutel', 'xshields@stehr.com', '888-719-2910', '65144 Grimes Hill', 'East Corytown', 'Alaska', 'US', '75221', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(83, 2, 'Abbott, Sawayn and Carroll', 'enoch65@damore.net', '1-888-884-8000', '26666 Brandy Plaza Apt. 820', 'New Josiannemouth', 'Mississippi', 'US', '22546', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(84, 2, 'Flatley-Waters', 'buckridge.mariam@kiehn.org', '888.986.7722', '51287 Parisian Pines Apt. 814', 'Sincereborough', 'Missouri', 'US', '30485', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(85, 2, 'Doyle and Sons', 'stefanie71@langosh.net', '844.276.7530', '75194 Crona Turnpike Suite 450', 'West Dessieborough', 'Colorado', 'US', '15095', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(86, 2, 'Torp, Miller and Corkery', 'oraynor@roberts.com', '866-249-2047', '6576 Sabrina Turnpike Suite 538', 'Heatherhaven', 'Arkansas', 'US', '46761', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(87, 2, 'Grady-Hintz', 'lynch.mandy@rohan.org', '855.998.9214', '6001 Roberts Terrace', 'East Reinholdbury', 'Florida', 'US', '78074-5758', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(88, 2, 'Littel LLC', 'umonahan@deckow.info', '1-866-398-3516', '510 Adella Crossroad', 'Godfreyton', 'South Dakota', 'US', '52926-3642', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(89, 2, 'Douglas, Jacobs and White', 'samanta.koss@jacobson.com', '(855) 499-5348', '78874 Maxwell Wells', 'Lake Zoeton', 'Alabama', 'US', '31930', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(90, 2, 'Balistreri-Considine', 'dbechtelar@grimes.com', '1-877-726-1810', '75932 Hahn Rest', 'New Theo', 'Colorado', 'US', '43201', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(91, 2, 'Thompson LLC', 'xdickens@streich.biz', '866.878.1978', '18550 Bobbie Court Suite 747', 'Josefaborough', 'Oklahoma', 'US', '87957-6994', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(92, 2, 'Barrows LLC', 'vswift@hintz.com', '866.288.1090', '87878 Rohan Lights Apt. 219', 'Frankbury', 'Florida', 'US', '58716', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(93, 2, 'Beatty-Carroll', 'lilliana15@parisian.biz', '1-877-367-9714', '52804 Krajcik Ford', 'North Lessiefurt', 'Mississippi', 'US', '04409-4871', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(94, 2, 'Terry, Kertzmann and Davis', 'olin.pfeffer@lehner.com', '877.351.6363', '64675 Otilia Club Apt. 778', 'New Bertram', 'Mississippi', 'US', '39824', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(95, 2, 'Block-Lang', 'frances91@ritchie.com', '1-866-493-9922', '3845 Dee Glens', 'West Shemar', 'Kansas', 'US', '69970', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(96, 2, 'Beahan and Sons', 'thaddeus48@deckow.com', '1-800-549-6049', '12070 Durgan Centers Apt. 320', 'South Judyport', 'Michigan', 'US', '17292-8797', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(97, 2, 'Kunde-Murphy', 'durgan.nathanial@reilly.net', '(888) 567-0288', '821 Turner Trafficway Suite 627', 'Kaileeport', 'Montana', 'US', '20680-9096', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(98, 2, 'Sanford Inc', 'crawford84@rutherford.com', '(866) 235-1306', '26845 Estrella Motorway', 'East Brandonburgh', 'Nebraska', 'US', '50061', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(99, 2, 'Harvey Group', 'mcglynn.daniela@tromp.biz', '(888) 781-7211', '179 Alf Pines', 'East Johnathan', 'Illinois', 'US', '30615-7518', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);
INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES(100, 2, 'Ferry Group', 'rhett13@sanford.com', '866-589-9179', '15093 Onie Course Suite 684', 'Brianstad', 'Vermont', 'US', '01743', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup_log`
--

DROP TABLE IF EXISTS `signup_log`;
CREATE TABLE `signup_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logged_action` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `log_date` datetime NOT NULL,
  `log_date_unix` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blacklist`
--

DROP TABLE IF EXISTS `tbl_blacklist`;
CREATE TABLE `tbl_blacklist` (
  `blid` int(10) UNSIGNED NOT NULL,
  `uid` bigint(20) NOT NULL,
  `did` bigint(20) NOT NULL,
  `number` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `twilio_costs_per_phone`
--

DROP TABLE IF EXISTS `twilio_costs_per_phone`;
CREATE TABLE `twilio_costs_per_phone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `twid` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `gvid` bigint(20) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `charged` tinyint(4) NOT NULL DEFAULT 0,
  `last_period_start` datetime DEFAULT NULL,
  `last_period_stop` datetime DEFAULT NULL,
  `period_day` int(11) DEFAULT NULL,
  `period_month` int(11) DEFAULT NULL,
  `period_year` int(11) DEFAULT NULL,
  `last_processed` datetime DEFAULT NULL,
  `cred_id` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) DEFAULT NULL,
  `invoice_id` int(11) NOT NULL DEFAULT 0,
  `messages_sent` bigint(20) DEFAULT NULL,
  `messaging_cost` decimal(11,2) DEFAULT NULL,
  `duration_outbound` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `twilio_usage_invoices`
--

DROP TABLE IF EXISTS `twilio_usage_invoices`;
CREATE TABLE `twilio_usage_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` bigint(20) NOT NULL,
  `period_start` datetime NOT NULL,
  `period_end` datetime NOT NULL,
  `amount` decimal(11,2) NOT NULL DEFAULT 0.00,
  `minutes_used` int(11) NOT NULL,
  `message_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = blank, 1 = unpaid, 2 = paid',
  `entry_date` datetime NOT NULL,
  `paid_date` datetime DEFAULT NULL,
  `billing_transaction_id` int(11) NOT NULL DEFAULT 0,
  `disputed` tinyint(4) NOT NULL DEFAULT 0,
  `recordings_amount` decimal(11,2) DEFAULT NULL,
  `storage_amount` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `photo_path` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `uid` bigint(20) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lfname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `package` varchar(255) NOT NULL,
  `legacy_created` datetime DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `adminlevel` tinyint(4) NOT NULL DEFAULT 0,
  `stripe_billing_id` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sms_address` varchar(255) NOT NULL,
  `mms_address` varchar(255) NOT NULL,
  `last_processed` datetime DEFAULT NULL,
  `additional_phones` int(11) NOT NULL DEFAULT 1,
  `account_setup_notes` text NOT NULL,
  `test_stripe` tinyint(4) NOT NULL DEFAULT 0,
  `isConfigured` tinyint(4) NOT NULL DEFAULT 0,
  `website` varchar(255) NOT NULL,
  `affid` tinyint(4) NOT NULL DEFAULT 1,
  `stripe_status` varchar(25) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(25) NOT NULL,
  `parent_uid` int(11) NOT NULL DEFAULT 0,
  `terms_agreed` tinyint(4) NOT NULL DEFAULT 0,
  `card_declined` tinyint(4) NOT NULL DEFAULT 0,
  `declined_date` datetime DEFAULT NULL,
  `ip_address_plan_upgrade` varchar(100) NOT NULL,
  `ip_address_customer_creation` varchar(100) NOT NULL,
  `user_api` varchar(255) NOT NULL,
  `token_api` varchar(255) NOT NULL,
  `directory_processed` tinyint(4) NOT NULL DEFAULT 0,
  `promo_code` varchar(20) NOT NULL,
  `a2p_charged` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `account_id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `owner`, `photo_path`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `uid`, `fname`, `lfname`, `company`, `package`, `legacy_created`, `active`, `adminlevel`, `stripe_billing_id`, `phone`, `sms_address`, `mms_address`, `last_processed`, `additional_phones`, `account_setup_notes`, `test_stripe`, `isConfigured`, `website`, `affid`, `stripe_status`, `street`, `city`, `state`, `zip`, `parent_uid`, `terms_agreed`, `card_declined`, `declined_date`, `ip_address_plan_upgrade`, `ip_address_customer_creation`, `user_api`, `token_api`, `directory_processed`, `promo_code`, `a2p_charged`) VALUES(1, 2, 'ebe', 'B.', 'ebe@livecomm.com', '2023-07-13 09:01:14', '$2y$10$Nh32vtXw9r9zphzbV6i8cuaP91ZFPXDj849rzq0cP2waoV21P71iu', 1, 'users/wr2pfXFgHCsPwtNwFdR7ba9WCsrYbr5qYE7qY4x6.gif', 'qKz1N07bP5lmqJ59YpA2xdKaJRlCNiO1C3WyA7uSIuxYDjIO5WQ6h4MHW5c1', '2023-07-13 09:01:14', '2023-07-18 02:40:48', NULL, 0, '', '', '', '', NULL, 1, 0, '', '', '', '', NULL, 1, '', 0, 0, '', 1, '', '', '', '', '', 0, 0, 0, NULL, '', '', '', '', 0, '', 0);
INSERT INTO `users` (`id`, `account_id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `owner`, `photo_path`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `uid`, `fname`, `lfname`, `company`, `package`, `legacy_created`, `active`, `adminlevel`, `stripe_billing_id`, `phone`, `sms_address`, `mms_address`, `last_processed`, `additional_phones`, `account_setup_notes`, `test_stripe`, `isConfigured`, `website`, `affid`, `stripe_status`, `street`, `city`, `state`, `zip`, `parent_uid`, `terms_agreed`, `card_declined`, `declined_date`, `ip_address_plan_upgrade`, `ip_address_customer_creation`, `user_api`, `token_api`, `directory_processed`, `promo_code`, `a2p_charged`) VALUES(2, 2, 'Sylvia', 'Spencer', 'baumbach.michel@example.com', '2023-07-13 09:01:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '6Biq0xbPAw', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL, 0, '', '', '', '', NULL, 1, 0, '', '', '', '', NULL, 1, '', 0, 0, '', 1, '', '', '', '', '', 0, 0, 0, NULL, '', '', '', '', 0, '', 0);
INSERT INTO `users` (`id`, `account_id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `owner`, `photo_path`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `uid`, `fname`, `lfname`, `company`, `package`, `legacy_created`, `active`, `adminlevel`, `stripe_billing_id`, `phone`, `sms_address`, `mms_address`, `last_processed`, `additional_phones`, `account_setup_notes`, `test_stripe`, `isConfigured`, `website`, `affid`, `stripe_status`, `street`, `city`, `state`, `zip`, `parent_uid`, `terms_agreed`, `card_declined`, `declined_date`, `ip_address_plan_upgrade`, `ip_address_customer_creation`, `user_api`, `token_api`, `directory_processed`, `promo_code`, `a2p_charged`) VALUES(3, 2, 'Alba', 'Wehner', 'hlangworth@example.net', '2023-07-13 09:01:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'O9uYu6VIpi', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL, 0, '', '', '', '', NULL, 1, 0, '', '', '', '', NULL, 1, '', 0, 0, '', 1, '', '', '', '', '', 0, 0, 0, NULL, '', '', '', '', 0, '', 0);
INSERT INTO `users` (`id`, `account_id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `owner`, `photo_path`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `uid`, `fname`, `lfname`, `company`, `package`, `legacy_created`, `active`, `adminlevel`, `stripe_billing_id`, `phone`, `sms_address`, `mms_address`, `last_processed`, `additional_phones`, `account_setup_notes`, `test_stripe`, `isConfigured`, `website`, `affid`, `stripe_status`, `street`, `city`, `state`, `zip`, `parent_uid`, `terms_agreed`, `card_declined`, `declined_date`, `ip_address_plan_upgrade`, `ip_address_customer_creation`, `user_api`, `token_api`, `directory_processed`, `promo_code`, `a2p_charged`) VALUES(4, 2, 'Kaela', 'Bogisich', 'ahackett@example.org', '2023-07-13 09:01:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '8m4tjNp77H', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL, 0, '', '', '', '', NULL, 1, 0, '', '', '', '', NULL, 1, '', 0, 0, '', 1, '', '', '', '', '', 0, 0, 0, NULL, '', '', '', '', 0, '', 0);
INSERT INTO `users` (`id`, `account_id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `owner`, `photo_path`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `uid`, `fname`, `lfname`, `company`, `package`, `legacy_created`, `active`, `adminlevel`, `stripe_billing_id`, `phone`, `sms_address`, `mms_address`, `last_processed`, `additional_phones`, `account_setup_notes`, `test_stripe`, `isConfigured`, `website`, `affid`, `stripe_status`, `street`, `city`, `state`, `zip`, `parent_uid`, `terms_agreed`, `card_declined`, `declined_date`, `ip_address_plan_upgrade`, `ip_address_customer_creation`, `user_api`, `token_api`, `directory_processed`, `promo_code`, `a2p_charged`) VALUES(5, 2, 'Griffin', 'Gerhold', 'keeling.frankie@example.net', '2023-07-13 09:01:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'czO1G3D8yW', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL, 0, '', '', '', '', NULL, 1, 0, '', '', '', '', NULL, 1, '', 0, 0, '', 1, '', '', '', '', '', 0, 0, 0, NULL, '', '', '', '', 0, '', 0);
INSERT INTO `users` (`id`, `account_id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `owner`, `photo_path`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `uid`, `fname`, `lfname`, `company`, `package`, `legacy_created`, `active`, `adminlevel`, `stripe_billing_id`, `phone`, `sms_address`, `mms_address`, `last_processed`, `additional_phones`, `account_setup_notes`, `test_stripe`, `isConfigured`, `website`, `affid`, `stripe_status`, `street`, `city`, `state`, `zip`, `parent_uid`, `terms_agreed`, `card_declined`, `declined_date`, `ip_address_plan_upgrade`, `ip_address_customer_creation`, `user_api`, `token_api`, `directory_processed`, `promo_code`, `a2p_charged`) VALUES(6, 2, 'Valentine', 'Langosh', 'nwilliamson@example.net', '2023-07-13 09:01:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '09n5ARiZna', '2023-07-13 09:01:14', '2023-07-13 09:01:14', NULL, 0, '', '', '', '', NULL, 1, 0, '', '', '', '', NULL, 1, '', 0, 0, '', 1, '', '', '', '', '', 0, 0, 0, NULL, '', '', '', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

DROP TABLE IF EXISTS `user_contacts`;
CREATE TABLE `user_contacts` (
  `did` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `_number` bigint(20) DEFAULT NULL,
  `gid` bigint(20) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `trashed` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `gid` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `custom` tinyint(4) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_settings_numbers`
--

DROP TABLE IF EXISTS `user_settings_numbers`;
CREATE TABLE `user_settings_numbers` (
  `gvid` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `g_account_email` varchar(255) NOT NULL,
  `g_account_password` varchar(255) NOT NULL,
  `g_original_g` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) NOT NULL,
  `default_join_message` text NOT NULL,
  `default_sms_message` text NOT NULL,
  `last_sync` datetime DEFAULT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `gid` bigint(20) DEFAULT NULL,
  `send_join_message` tinyint(4) NOT NULL DEFAULT 1,
  `send_sms_message` tinyint(4) NOT NULL DEFAULT 0,
  `gv_number` varchar(255) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `account_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = google voice, 1 = twilio',
  `twid` bigint(20) NOT NULL DEFAULT 0,
  `greeting_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = text-to-speech, 1 = recorded greeting',
  `text_to_speech` text NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0,
  `recorded_url` varchar(500) DEFAULT NULL,
  `forward_to` varchar(500) DEFAULT NULL,
  `last_job_history_run` datetime DEFAULT NULL,
  `last_job_history_date_processed` datetime DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `show_from_livecomm` bigint(20) NOT NULL DEFAULT 0,
  `call_enqueue_type` tinyint(4) DEFAULT 0,
  `phone_sid` varchar(500) DEFAULT NULL,
  `recordings_active` tinyint(4) DEFAULT 0,
  `transcriptions_active` tinyint(4) DEFAULT 0,
  `purge_recordings` tinyint(4) DEFAULT 0,
  `sms_forwarding_active` tinyint(4) DEFAULT NULL,
  `sms_forwarding_number` varchar(50) DEFAULT NULL,
  `sms_forwarding_otp_verified` tinyint(4) DEFAULT NULL,
  `sms_forwarding_code` varchar(50) DEFAULT NULL,
  `email_forwarding_active` tinyint(4) DEFAULT 0,
  `email_forwarding_email` varchar(500) DEFAULT NULL,
  `gv_number_name` varchar(500) DEFAULT NULL,
  `twilio_url_updated` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_message_chatid_index` (`chatid`),
  ADD KEY `chat_message_message_index` (`message`(768)),
  ADD KEY `chat_message_date_replied_index` (`date_replied`);

--
-- Indexes for table `chat_number`
--
ALTER TABLE `chat_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_number_number_index` (`number`),
  ADD KEY `chat_number_uid_index` (`uid`),
  ADD KEY `chat_number_lc_number_index` (`lc_number`),
  ADD KEY `chat_number_is_read_index` (`is_read`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_account_id_index` (`account_id`),
  ADD KEY `contacts_organization_id_index` (`organization_id`);

--
-- Indexes for table `directory`
--
ALTER TABLE `directory`
  ADD PRIMARY KEY (`did`),
  ADD KEY `directory_number_index` (`number`),
  ADD KEY `directory_name_last_name_index` (`name`,`last_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organizations_account_id_index` (`account_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `signup_log`
--
ALTER TABLE `signup_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blacklist`
--
ALTER TABLE `tbl_blacklist`
  ADD PRIMARY KEY (`blid`),
  ADD KEY `tbl_blacklist_did_index` (`did`);

--
-- Indexes for table `twilio_costs_per_phone`
--
ALTER TABLE `twilio_costs_per_phone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twilio_usage_invoices`
--
ALTER TABLE `twilio_usage_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_account_id_index` (`account_id`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD UNIQUE KEY `user_contacts_did_gid_uid_unique` (`did`,`gid`,`uid`),
  ADD KEY `user_contacts_did_index` (`did`),
  ADD KEY `user_contacts_gid_index` (`gid`),
  ADD KEY `user_contacts_uid_index` (`uid`),
  ADD KEY `user_contacts_trashed_index` (`trashed`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `user_groups_uid_index` (`uid`),
  ADD KEY `user_groups_name_index` (`name`),
  ADD KEY `user_groups_is_default_index` (`is_default`),
  ADD KEY `user_groups_custom_index` (`custom`);

--
-- Indexes for table `user_settings_numbers`
--
ALTER TABLE `user_settings_numbers`
  ADD PRIMARY KEY (`gvid`),
  ADD KEY `user_settings_numbers_gv_number_index` (`gv_number`),
  ADD KEY `user_settings_numbers_uid_index` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_number`
--
ALTER TABLE `chat_number`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `directory`
--
ALTER TABLE `directory`
  MODIFY `did` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup_log`
--
ALTER TABLE `signup_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blacklist`
--
ALTER TABLE `tbl_blacklist`
  MODIFY `blid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `twilio_costs_per_phone`
--
ALTER TABLE `twilio_costs_per_phone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `twilio_usage_invoices`
--
ALTER TABLE `twilio_usage_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `gid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_settings_numbers`
--
ALTER TABLE `user_settings_numbers`
  MODIFY `gvid` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
