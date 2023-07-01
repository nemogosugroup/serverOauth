-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravelsso
CREATE DATABASE IF NOT EXISTS `laravelsso` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravelsso`;

-- Dumping structure for table laravelsso.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table laravelsso.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.migrations: ~11 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(11, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
	(12, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
	(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
	(14, '2016_06_01_000004_create_oauth_clients_table', 2),
	(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
	(16, '2022_08_28_134555_create_sessions_table', 2),
	(17, '2021_05_08_042009_create_posts_table', 3);

-- Dumping structure for table laravelsso.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.oauth_access_tokens: ~25 rows (approximately)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('0805cf9f3d4c6aceac42fbef6481ce8152d7c5015a8764c549ea2492e889da11753f0f144ef1cd27', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 20:13:46', '2023-06-29 20:13:46', '2023-12-30 03:13:46'),
	('08e6ce88f44a153973f251a191678a5c11ce2432cd3f3abf4667985b71b33578057e1ad3049fca68', 4, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 18:58:53', '2023-06-29 18:58:53', '2023-12-30 01:58:53'),
	('1788abe1f76662d11ca6f6ac77274302febb58924c83b5e46f064510b886dec4c49cf5265781cc6d', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 20:14:33', '2023-06-29 20:14:33', '2023-12-30 03:14:33'),
	('211227ce7d1ec7cae17cc7b33273071f79df48d5753f52760524c219c0fd38c61505bb09343641e6', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-06-30 19:46:24', '2023-06-30 19:46:24', '2023-07-02 02:46:24'),
	('2c44e542f89ec37fe411346f96dfde5b9d2a2810edaef0b860f2b01976da80e655131b24a51bb291', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:41:26', '2023-06-29 19:41:26', '2023-12-30 02:41:26'),
	('327d3aede99979a8dd65f7721e146b746e1d1fd60c4ebad5549f9c876a0dbe43cf266c144ccead2b', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-06-30 21:52:20', '2023-06-30 21:52:20', '2023-07-02 04:52:20'),
	('3dc03b55598a1b066d031114a7494c190b6a94fc2ac9fadf171c6056ee8dfadbc5765ebaa131fa0f', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:33:16', '2023-06-29 19:33:16', '2023-12-30 02:33:16'),
	('3e31fa1a71552dc0e619283ed96b849944d86579fb158b4580a97c214db8cfb4c61dd7cd6b9a77d2', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:02:06', '2023-06-29 19:02:06', '2023-12-30 02:02:06'),
	('49f9b07fd5e72b73f4e23e964668bd2a8c9c23e3d7263f9f112fc67d4f8bf43c2cdea7ab6260414e', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:40:36', '2023-06-29 19:40:36', '2023-12-30 02:40:36'),
	('4dc4cbb634fd1c891067b37df44e3d6fc0980e28129152467fc739e2894e0ff4d4f7469b60d1ea4b', 7, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-06-30 02:54:19', '2023-06-30 02:54:19', '2023-07-01 09:54:19'),
	('54b89f3a064b054cd13c52418cc05d8dbb980e16c0d05e996c6a78976dfee4e1a6b23d215ff9125f', 3, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 18:55:11', '2023-06-29 18:55:11', '2023-12-30 01:55:11'),
	('576414487694d848943e8b306c1d7e5463221ab74cc6a67ca98b2b8a673d00f23ea2ac0a551c6df2', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:00:48', '2023-06-29 19:00:48', '2023-12-30 02:00:48'),
	('58dcd8efeaa59668452e0b104186956643cdd9985e0041beb15d89c762a9570478650ee83c3fa258', 3, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-06-30 01:28:36', '2023-06-30 01:28:36', '2023-07-01 08:28:36'),
	('5c4a75cde5282436092e372316658e4daa7509beef20498ea7d01fa7b5d6de9a6c87fe6ad6bd9291', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:01:24', '2023-06-29 19:01:24', '2023-12-30 02:01:24'),
	('627376a86aa8aec59bfe94dc4802b59546d21cab21bcf20d63244ca5f7be023049bfbe5d634f698c', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:08:21', '2023-06-29 19:08:21', '2023-12-30 02:08:21'),
	('696807c7ee1538eba8b1c3e05563086edf89e639866157dbed356ad3427adbd980682de389d397e1', 3, '998656d4-048c-4446-9e59-14688c5c204d', NULL, '["view-user"]', 0, '2023-06-29 03:33:29', '2023-06-29 03:33:29', '2023-06-30 10:33:29'),
	('6a8c9690d803567960ac3d79b74e719bfc24757a900036da3caa44de8c7c8832bfe2dacdf07746e7', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:30:05', '2023-06-29 19:30:05', '2023-12-30 02:30:05'),
	('6bd16b50e19110edce22f2951c9d3dbea3b97be5bea2f80c44fcfd985d491369788f57cd578072a0', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:23:35', '2023-06-29 19:23:35', '2023-12-30 02:23:35'),
	('6e18e2e9042e3f9173bcdeccffe8bd74023768430a692f737296e1adba731c49bda4d5f90c684bbe', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-06-30 03:10:22', '2023-06-30 03:10:22', '2023-07-01 10:10:22'),
	('6e6829157cd565dce24ba1cab8d96455e47fe1223afb293c7981e399767ce39edaddf433b547abc8', 2, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 18:53:36', '2023-06-29 18:53:36', '2023-12-30 01:53:36'),
	('73ed796e8e16833963f04cde65558d1e7dd6be5af360f030f23edb13355264ac303e7ed24675c4d0', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 20:14:18', '2023-06-29 20:14:18', '2023-12-30 03:14:18'),
	('95d01ffc0e36d7895e265f5b48a2291b204dc952f17c391d8332aaed32516b3e08aa647a17c417a1', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 20:07:56', '2023-06-29 20:07:56', '2023-12-30 03:07:56'),
	('9776d7b39e8818f6d4b2bc5c470344396e6eec8f73dfe21cca31565e09aa438026e970ee2c3a2e1e', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 20:15:19', '2023-06-29 20:15:19', '2023-12-30 03:15:19'),
	('a2ca3ca40de0e5e010af8de8342a71de5b0a713b314689e1382465f1ed912b69f4cc4b26874fec98', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:32:10', '2023-06-29 19:32:10', '2023-12-30 02:32:10'),
	('a53016afc5af3c235c003d204aea60535153104e13419643600d1994950f6ef6dcc14504663b2bb2', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-06-30 00:02:20', '2023-06-30 00:02:20', '2023-07-01 07:02:20'),
	('b07a1caa73c41fcc6853980ddf187b82a8e500862c87ee56df5f69c7b954f0a7f7acf12b3c2ef11d', 2, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 18:52:16', '2023-06-29 18:52:16', '2023-12-30 01:52:16'),
	('d4bcf08cd87259f4c95e23258f8d3309835515226faec9bb3cfd2073824b258e4b2675b163ef803e', 2, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 18:49:07', '2023-06-29 18:49:07', '2023-12-30 01:49:07'),
	('d577db1f10c33e84cea789471748483054a29a4f42e301a92ea9821d7edcf21564da5edbe4b458f0', 5, '9987e637-cd23-444c-b126-71e53d831acd', 'Personal Access Token', '[]', 0, '2023-06-29 19:35:54', '2023-06-29 19:35:54', '2023-12-30 02:35:54');

-- Dumping structure for table laravelsso.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.oauth_auth_codes: ~17 rows (approximately)
INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
	('0f486439b03129ab15915c77a366c5d226aaf2c41283d03e0c9868c78d55c17c2af76143bd72af48', 3, '998656d4-048c-4446-9e59-14688c5c204d', '["view-user"]', 1, '2023-06-29 10:43:28'),
	('17e3648400a97f7aa808e156d73eced0bcdccba1d31e6b7bdb7fb11e35e322f2c923e4c79fa2989c', 3, '998656d4-048c-4446-9e59-14688c5c204d', '["view-user"]', 1, '2023-06-29 09:03:43'),
	('1c064309fa2b1267c503fabe5d9183b310c81bdba055d1f62c4c42f3e6e0fca2f68ef2cf469a99a2', 3, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 08:38:35'),
	('1e1937c70b6a95d1d1a8b642074e1b9224f5d54828f647aed75ba955de7c6bf8d1464012ef14eb62', 5, '998656d4-048c-4446-9e59-14688c5c204d', '["view-user"]', 1, '2023-06-30 03:25:23'),
	('21a414104a110449af39cb919d38a72a54bb72a9f958b3dc0d76726e2f8477ee094ac00e13e891f4', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 08:01:47'),
	('25fdfa78b3718684be52164120e79d251801db96659fae42ef0a7af52567cd8807cb6e14bd26a8f5', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 07:12:19'),
	('2cf853a6884cb664492ea257e8259494aecfb064df07888bb7e343324a5470f4db57bc2c6c22a04e', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 0, '2023-06-30 06:57:57'),
	('30bd5b7ee650fcc3375387652145766c5545575e7325af7d65187dcd960b78f99981e1bda1e91939', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 08:00:49'),
	('49529a50ef049e973fa19d91115a6c305db69bcc3f51afe88cec80a32d53ab6ff75aae9c6483ab31', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 08:00:57'),
	('4c12dfa372503cb04bc9e9d37e8917aef7cdbd17024b5c92442e6b20e283ee25b08c7d187983e757', 7, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 10:04:18'),
	('5f32898179282a1bd467f26831d80e6b98e740136b95f7801cca234f1e5a7405874c84821d94254e', 3, '998656d4-048c-4446-9e59-14688c5c204d', '["view-user"]', 1, '2023-06-29 07:23:33'),
	('600d4ecfc99478b1e9f3efcc6316ef17a0ab763e95ef057dbb997bad5dff78a024fa49dbc5eca26a', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 08:24:20'),
	('64eec100156400b1cc140b6c6afa44b772b4d9ad417e7e60d4c28e616ec80e6d2c2beb3a20f67023', 3, '998656d4-048c-4446-9e59-14688c5c204d', '["view-user"]', 1, '2023-06-29 08:13:47'),
	('698c8bcee66ba902b4957eb660d3acadad85a1fee56b669447b8c20479c957ce61375db8e5315762', 3, '998656d4-048c-4446-9e59-14688c5c204d', '["view-user"]', 1, '2023-06-30 02:15:41'),
	('7d39a60f9058cef28806c9154743a78d06dc2f41078922b862265142e2ebfcfe8fddd87fc22033fd', 3, '998656d4-048c-4446-9e59-14688c5c204d', '["view-user"]', 1, '2023-06-29 09:32:26'),
	('7dbda6c4d7b9c2cce14a58f3a3e4772ca336d5fc16577ba940da0836a1f4757ac9fca1badb6175fd', 3, '998656d4-048c-4446-9e59-14688c5c204d', '["view-user"]', 1, '2023-06-29 10:41:37'),
	('91351ea68bc3f3a4f1b138fcac2490e19ae2f1a44d34fdde0c3e05273d91135e1c5ac95e803ce0d4', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-01 05:02:20'),
	('a407c9e1ea8452c0777c748505c376459a0fe5a1c6fd2880a8d07aa2b475e9f472181180be2388a4', 3, '998656d4-048c-4446-9e59-14688c5c204d', '["view-user"]', 1, '2023-06-29 09:32:08'),
	('b832649f92c0a3bf882749c587aaab09f5acb9ca159a151bdfdde038d564ea5c9c56ee838a5362fd', 6, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 08:48:39'),
	('be03e3e8a02c3fbe546b14ed09de109b799c0cf0a84c435ad6e4acffd57248eb04ebfd1ccd686da7', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 08:01:09'),
	('c2eb245a0cb8d8e9f3fb1c9727abf36376eae2716d4cab5a5a60e23a0cf4606c67699196dcd8aea1', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 10:20:22'),
	('e3de91c4b8c8fe553334ea123f29a73e5838ea957f60c8aa94d29f98b679aff7a4d8cd9f9dc0cf84', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-01 02:56:23'),
	('e849d39799e52f3721211482b9e17c1b623f75d4ccc0212ea9afa8ad94468a19c20cffec7c304ed4', 5, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-06-30 10:17:35');

-- Dumping structure for table laravelsso.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.oauth_clients: ~4 rows (approximately)
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	('998656d4-048c-4446-9e59-14688c5c204d', 3, 'localhost_client', 'JZcdQbWRJQMubR8AydR758wAYN7Lnb6he9asspcv', NULL, 'http://localhost:8080/callback', 0, 0, 0, '2023-06-29 00:10:14', '2023-06-29 00:10:14'),
	('9987e637-cd23-444c-b126-71e53d831acd', NULL, 'hoang test 2', '0Og1rV8sIZYUpISxE5fPM8hvSjLsZzHxsPTY0nnG', NULL, 'http://localhost', 1, 0, 0, '2023-06-29 18:47:00', '2023-06-29 18:47:00'),
	('99881372-3fc9-4055-a0e3-45f686711da0', 5, 'hoang5', 'qDTHlRgXElNMitEwwcyW1S5HzmLRq1UPayZNhFm8', NULL, 'http://localhost:8080/callback', 0, 0, 0, '2023-06-29 20:53:28', '2023-06-29 20:53:28'),
	('998814c5-3d6d-45be-86d4-2270950f0d14', 5, 'hoang5-lan-3', '0z4rLXmp1DaTl6iqAcZ3dfmsP6m0IjQyJY3V0myj', NULL, 'http://localhost:8080/callback', 0, 0, 0, '2023-06-29 20:57:10', '2023-06-29 20:57:10');

-- Dumping structure for table laravelsso.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.oauth_personal_access_clients: ~1 rows (approximately)
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(2, '9987e637-cd23-444c-b126-71e53d831acd', '2023-06-29 18:47:00', '2023-06-29 18:47:00');

-- Dumping structure for table laravelsso.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.oauth_refresh_tokens: ~4 rows (approximately)
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('12833932a8bf2edd63b0635d1479e991ecf83f45c9b1efef72f20695e6d27679b1b622c243fcbc1c', '327d3aede99979a8dd65f7721e146b746e1d1fd60c4ebad5549f9c876a0dbe43cf266c144ccead2b', 0, '2023-07-31 04:52:20'),
	('48b6445156c247fd2312893414e0a9c4b2efd746e4ace1092530c5838ae1d26b5e388626d55ca684', '58dcd8efeaa59668452e0b104186956643cdd9985e0041beb15d89c762a9570478650ee83c3fa258', 0, '2023-07-30 08:28:36'),
	('4dffe8286a55583c9cb4477b50eca9fd3132b688f9226c517691696f22c6bd9b40719cecbf2f0305', '6e18e2e9042e3f9173bcdeccffe8bd74023768430a692f737296e1adba731c49bda4d5f90c684bbe', 0, '2023-07-30 10:10:22'),
	('6ac23a61631780dfd00bd1394ecc7dbba2767ef1c163c1d67389ec3db1b186428af8d1cd25b7200f', 'a53016afc5af3c235c003d204aea60535153104e13419643600d1994950f6ef6dcc14504663b2bb2', 0, '2023-07-30 07:02:20'),
	('cdc98cf8d1fde5d5786da6131a50974665ec8c03fd2e0bdc86b27b86652e5b779982d38318ab0396', '696807c7ee1538eba8b1c3e05563086edf89e639866157dbed356ad3427adbd980682de389d397e1', 0, '2023-07-29 10:33:29'),
	('cdd33f18aecb7186a2a615576f875b97ebd8e041633a815c82d4ed0401121bdf3364dcb7f48806a1', '4dc4cbb634fd1c891067b37df44e3d6fc0980e28129152467fc739e2894e0ff4d4f7469b60d1ea4b', 0, '2023-07-30 09:54:19'),
	('f9a09d2e9a2e31b6885546e310d2858332c7450c48bd9538c8e534916441da8aa41cae30c31a4bf3', '211227ce7d1ec7cae17cc7b33273071f79df48d5753f52760524c219c0fd38c61505bb09343641e6', 0, '2023-07-31 02:46:24');

-- Dumping structure for table laravelsso.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.password_resets: ~0 rows (approximately)

-- Dumping structure for table laravelsso.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table laravelsso.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.posts: ~0 rows (approximately)

-- Dumping structure for table laravelsso.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.sessions: ~5 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('6N4Dcaplk7RvpYj0Q0AhlGVt2tavbPaMUnemi2Nn', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMGp0UVhvMlFTNjhwRHZyYkIzb2F3S0kySE1aaWdWNkFOVUZpMzExTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvb2F1dGgvYXV0aG9yaXplP2NsaWVudF9pZD05OTg4MTRjNS0zZDZkLTQ1YmUtODZkNC0yMjcwOTUwZjBkMTQmcHJvbXB0PTEmcmVkaXJlY3RfdXJpPWh0dHAlM0ElMkYlMkZsb2NhbGhvc3QlM0E4MDgwJTJGY2FsbGJhY2smcmVzcG9uc2VfdHlwZT1jb2RlJnNjb3BlPXZpZXctdXNlciZzdGF0ZT1jSktDU2lZQ25ydmJHRG1QVThSOG1TbzBWeTYwYk55MktHbjNqNmY1Ijt9czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vYXV0aC9hdXRob3JpemU/Y2xpZW50X2lkPTk5ODgxNGM1LTNkNmQtNDViZS04NmQ0LTIyNzA5NTBmMGQxNCZwcm9tcHQ9MSZyZWRpcmVjdF91cmk9aHR0cCUzQSUyRiUyRmxvY2FsaG9zdCUzQTgwODAlMkZjYWxsYmFjayZyZXNwb25zZV90eXBlPWNvZGUmc2NvcGU9dmlldy11c2VyJnN0YXRlPWNKS0NTaVlDbnJ2YkdEbVBVOFI4bVNvMFZ5NjBiTnkyS0duM2o2ZjUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O30=', 1688187140),
	('Zlvx0HHZYaUB5K8b57jSLpH0DAkI1XxoOZro3tBc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2lNSDhpUmhJUGx2cllTcmNHMGJzTkN6ekZvQ0JmamJ2SjN1MjhkeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1688187052);

-- Dumping structure for table laravelsso.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelsso.users: ~4 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(2, 'hoang2', 'admin2@gmail.com', NULL, '$2y$10$uazftKdDc8Dbtrqji6FSzO/1RYGkJX1Uu16IjFdQ/eh6qbOnkRlzS', NULL, '2023-06-28 22:03:16', '2023-06-28 22:03:16'),
	(3, 'hoang', 'admin@gmail.com', NULL, '$2y$10$uazftKdDc8Dbtrqji6FSzO/1RYGkJX1Uu16IjFdQ/eh6qbOnkRlzS', NULL, '2023-06-28 22:03:16', '2023-06-28 22:03:16'),
	(4, 'hoang4', 'admin4@gmail.com', NULL, '$2y$10$d1NiYKaW8uDYSw/1ntyVL.JBoFzgClX5Xyvr5/ECYHYDjLindJLcG', NULL, '2023-06-29 18:55:59', '2023-06-29 18:55:59'),
	(5, 'hoang5', 'admin5@gmail.com', NULL, '$2y$10$d1NiYKaW8uDYSw/1ntyVL.JBoFzgClX5Xyvr5/ECYHYDjLindJLcG', NULL, '2023-06-29 18:55:59', '2023-06-29 18:55:59'),
	(6, 'leader', 'leader@gmail.com', NULL, NULL, NULL, '2023-06-30 01:38:31', '2023-06-30 01:38:31'),
	(7, 'user@gmail.com', 'user@gmail.com', NULL, NULL, NULL, '2023-06-30 02:54:11', '2023-06-30 02:54:11'),
	(8, 'huuhoang.tran@gosu.vn', 'huuhoang.tran@gosu.vn', NULL, NULL, NULL, '2023-06-30 19:42:52', '2023-06-30 19:42:52');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
