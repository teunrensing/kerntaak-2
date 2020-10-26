-- --------------------------------------------------------
-- Host:                         localhost
-- Server versie:                5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versie:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Databasestructuur van kerntaak-2 wordt geschreven
CREATE DATABASE IF NOT EXISTS `kerntaak-2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kerntaak-2`;

-- Structuur van  tabel kerntaak-2.artikels wordt geschreven
CREATE TABLE IF NOT EXISTS `artikels` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel kerntaak-2.artikels: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `artikels` DISABLE KEYS */;
/*!40000 ALTER TABLE `artikels` ENABLE KEYS */;

-- Structuur van  tabel kerntaak-2.factuur wordt geschreven
CREATE TABLE IF NOT EXISTS `factuur` (
  `id` int(10) unsigned NOT NULL,
  `factuurdatum` timestamp NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locatie_id` int(10) unsigned NOT NULL,
  `klanten_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `factuur_locatie_id_foreign` (`locatie_id`),
  KEY `factuur_klanten_id_foreign` (`klanten_id`),
  CONSTRAINT `factuur_klanten_id_foreign` FOREIGN KEY (`klanten_id`) REFERENCES `klanten` (`id`) ON DELETE CASCADE,
  CONSTRAINT `factuur_locatie_id_foreign` FOREIGN KEY (`locatie_id`) REFERENCES `locatie` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel kerntaak-2.factuur: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `factuur` DISABLE KEYS */;
/*!40000 ALTER TABLE `factuur` ENABLE KEYS */;

-- Structuur van  tabel kerntaak-2.factuurregel wordt geschreven
CREATE TABLE IF NOT EXISTS `factuurregel` (
  `factuur_id` int(10) unsigned NOT NULL,
  `artikel_id` int(10) unsigned NOT NULL,
  `Aantal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `factuurregel_factuur_id_foreign` (`factuur_id`),
  KEY `factuurregel_artikel_id_foreign` (`artikel_id`),
  CONSTRAINT `factuurregel_artikel_id_foreign` FOREIGN KEY (`artikel_id`) REFERENCES `artikels` (`id`) ON DELETE CASCADE,
  CONSTRAINT `factuurregel_factuur_id_foreign` FOREIGN KEY (`factuur_id`) REFERENCES `factuur` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel kerntaak-2.factuurregel: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `factuurregel` DISABLE KEYS */;
/*!40000 ALTER TABLE `factuurregel` ENABLE KEYS */;

-- Structuur van  tabel kerntaak-2.failed_jobs wordt geschreven
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel kerntaak-2.failed_jobs: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Structuur van  tabel kerntaak-2.klanten wordt geschreven
CREATE TABLE IF NOT EXISTS `klanten` (
  `id` int(10) unsigned NOT NULL,
  `voornaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `achternaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wachtwoord` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `straat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `huisnummer` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plaats` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel kerntaak-2.klanten: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `klanten` DISABLE KEYS */;
/*!40000 ALTER TABLE `klanten` ENABLE KEYS */;

-- Structuur van  tabel kerntaak-2.locatie wordt geschreven
CREATE TABLE IF NOT EXISTS `locatie` (
  `id` int(10) unsigned NOT NULL,
  `straatnaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `huisnummer` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plaats` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoonnummer` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel kerntaak-2.locatie: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `locatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `locatie` ENABLE KEYS */;

-- Structuur van  tabel kerntaak-2.migrations wordt geschreven
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel kerntaak-2.migrations: ~8 rows (ongeveer)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_10_13_100542_artikels', 1),
	(5, '2020_10_15_102933_klanten', 1),
	(6, '2020_10_15_104432_locatie', 1),
	(7, '2020_10_15_104603_factuur', 1),
	(8, '2020_10_15_104627_factuurregel', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Structuur van  tabel kerntaak-2.password_resets wordt geschreven
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel kerntaak-2.password_resets: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Structuur van  tabel kerntaak-2.users wordt geschreven
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel kerntaak-2.users: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
