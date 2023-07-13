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

-- Dumping structure for table laravelsso.attendance
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table laravelsso.attendance: ~2 rows (approximately)
INSERT INTO `attendance` (`id`, `user_id`, `check_in`, `check_out`, `created_at`, `updated_at`) VALUES
	(5, 8, '2023-07-07 15:49:10', '2023-07-07 15:49:11', '2023-07-07 01:49:10', '2023-07-07 01:49:11'),
	(6, 8, '2023-07-10 10:14:28', '2023-07-10 10:14:31', '2023-07-09 20:14:28', '2023-07-09 20:14:31');

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

-- Dumping data for table laravelsso.oauth_access_tokens: ~18 rows (approximately)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('23d1af802f0d4d20f872d2f8caae21d223709cff003247fa734d804a7f886da7ce77f24bb75dd3e6', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 01:41:42', '2023-07-12 01:41:42', '2023-07-12 09:41:42'),
	('2acf17b05ebd7df11a556c861d91b7ac80d46a3878ead454dffcc376b8f283ec053081c730efdb75', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 01:42:35', '2023-07-12 01:42:35', '2023-07-12 09:42:35'),
	('2b6b2552ad98a4f56eef3f4e3de906c2b197837f7f31534c9874bbbe5c2687f8195a66b832a81554', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-11 19:16:15', '2023-07-11 19:16:15', '2023-07-13 02:16:15'),
	('3b2bbfa316f0e4a359ae7851561f68938b790e77506ef2ef33df727e1b992d7168cf37890bab2aab', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-11 21:41:28', '2023-07-11 21:41:28', '2023-07-12 05:41:28'),
	('52366354a4f44efa44c9318b665cd27e195b0d18b8c56ad5e8d6ede6dd6c0b8872decaff566bfd88', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-11 19:23:28', '2023-07-11 19:23:28', '2023-07-13 02:23:28'),
	('70ec7328344fd8153aa8d4a60a0c8f044880fa6cc129e11f6e90593aa206a61c7c7191379f155d08', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 01:52:34', '2023-07-12 01:52:34', '2023-07-12 09:52:34'),
	('7b41af26c6e69e96cd27d701811e6f6e19e2fbcab6e60be88100b6fd450006619836e09bc989668c', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 19:43:40', '2023-07-12 19:43:40', '2023-07-14 02:43:40'),
	('8e5bff2324cdd916304e59be85586f796c273203e572493711cd38b0dc4c3a8a3f156f4a442f5f36', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 01:53:27', '2023-07-12 01:53:27', '2023-07-12 09:53:27'),
	('9256fd374b50e8608817fecfabbe871d6b999d1f66908f0eef7593d93fc24ef625cd8abe83866f12', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 01:43:14', '2023-07-12 01:43:14', '2023-07-12 09:43:14'),
	('9b03d8e45525b25e647e786bb13cf10d66202e4fd8e3909465ffa40a1f13ce9e6f2d91ad542b8b8a', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 02:14:38', '2023-07-12 02:14:38', '2023-07-12 10:14:38'),
	('a16837f2637edd0c5e778f3c87fb36d3e21b430aad8cad7213cf7dd3930782a98098ed5c58f09015', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 01:44:40', '2023-07-12 01:44:40', '2023-07-12 09:44:40'),
	('b7fdc04f4048677d15c3306d7924e48f3ba01e43c5a5f9173503557d9292ebae741e4a7cee0ac01d', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-11 19:12:32', '2023-07-11 19:12:32', '2023-07-13 02:12:32'),
	('b97f5fc83bbbfed94e95c2f575fa586b508001530afe9a44c50b4f321e25dfdc05a95791878fb79a', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-11 21:00:00', '2023-07-11 21:00:00', '2023-07-12 05:00:00'),
	('bae9849ba46b15c7b7fb0615662799121727261af6cc9a21e5e2616776e076ab55328fd2e75299d9', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 02:48:09', '2023-07-12 02:48:09', '2023-07-12 10:48:09'),
	('c11c30c3747dbc1923ae848a7ee5ea1229d20cfeb5eaa4a32e855a82679c97d80de29f22868b4e83', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 01:45:03', '2023-07-12 01:45:03', '2023-07-12 09:45:03'),
	('d174a3cdd0f7ea9aeca51e846ec86f307b95dcc154f502845f079a4cea4079fe25bb6bb98ae4ddfd', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 01:48:00', '2023-07-12 01:48:00', '2023-07-12 09:48:00'),
	('d18a25efb478cb6a864defbba7f6ea033b4568fe9cf11ff79a5854700df75c105da7ee7294091d67', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-12 02:47:39', '2023-07-12 02:47:39', '2023-07-12 10:47:39'),
	('e1e6d4b0d50c8cc3d5334d84a29dfa1da5027ba3e9da2ae15b23385a570ca7bc0b8990b4d7315787', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', NULL, '["view-user"]', 0, '2023-07-11 21:35:48', '2023-07-11 21:35:48', '2023-07-12 05:35:48');

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

-- Dumping data for table laravelsso.oauth_auth_codes: ~102 rows (approximately)
INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
	('03b14bcf7bf5139acc83935eb0ae314999a48ae3d37e6f399d499125dec7cb6d4e4859171e915deb', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:18:03'),
	('0418c38aa50e6de4a42d239e2646a76b508d817473ef0aa0c7566b9268ecb3bae4df736701617967', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:28:16'),
	('048d3690e1152a5f35c4e6f402bd276cee889cb7db00dc4852872c3d6f4754aab6f1c01cbd821378', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:54:59'),
	('0589d02905d34feb362ffd7019445ca233537edb41ce966c9027ae5ed41b618bec16dab475418deb', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:53:22'),
	('061139fffb503267e002f55af9f5ff44307988b20f0114c093b1bb25507e3425d043a93145df0e16', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:33:11'),
	('09585d1a880f145d2af8566cb1c7d12c86c5696b447e44456b5adc084b16cd8d30d971e3b77f7712', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:37:55'),
	('0a489e0a7befce0a13d8661d89bbcf0165d172b60463e4f40888352320341a7ba4b1fdac75bbaf98', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 11:06:48'),
	('0c790c5624ab65c04e3d3df38ef136ef343ae4e83e9246e339315fe9235f7bf09ebf44ffde12510e', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 11:05:27'),
	('0cec60e83ef21109dfa561b15bcb7fdf83694b182ca597e36f23f260e2b8913022a5c73c3ef1d49c', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:41:26'),
	('12206081970b8135619c40c9f7893adf259b16c8e19374a43eaf90ac64dd5ae3d549fa27c7a4537c', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:54:09'),
	('1561de209684616a0b253aaa44a4c67feeec09e3c6fa6cef2dd7f4f0eb0cfdae72f0801f7dccc190', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:51:27'),
	('1a0d99f3060230470cbd0a596a65681a6c729d73ca7375a4320ec4fe5329277ee3a4db2932a0a1f3', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:36:46'),
	('1a2e4def4f80331d8af119e8b748ca9a8d5416c87ec207d9ce92ff87f7b34176ecd07bd634ddbbe0', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 07:02:54'),
	('1bcadca7836c4544478e2659fe50b6c96c6ba01e5bbd0501653d6c158997ae8fc273aece01f0eb9d', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:42:44'),
	('1e8ca425166050862bf2887ed61ec0e9bc50f6325820366c042e3d677c5c207df36666bacd50547f', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:13:16'),
	('1efa7b3dc64614e4c6f88c3b3b8dbbde531b1ade304a9acb8e129f77e4b8c946a0c9990df8f9f7c8', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:57:59'),
	('2010d193522b1b76bec777f87607f3c50fa565ce4110772c85db5c731f2499c95877a52be07cbbd8', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 03:01:08'),
	('205857bfaa3fd2f1788c4df0b14a5cf93f98f73cba31b9af579a5553c4fef51188b2f6517b3d1bda', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:37:49'),
	('2178dcf424a005995c772979362c1c320de19d13caaf4a7e628e703f6f1569361e485e2e3edf3af0', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:20:35'),
	('231909db2cdd19363e22b03e0536eb61a70f9f8c0f6fbb83d6fb82f906bd391d4fdbd7e2360e1212', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:07:37'),
	('25518e9f54edebb55d921ae22ca93abb42c657531409096aea1e996eaaff8ce1332ac4bf90a9dba8', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:40:00'),
	('274a732bd62df27960eedd9829cf9e51b1fcd765e240ffd4b2b771216e7c2a08d64beb1c620f6893', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:31:31'),
	('284de0b617ee5221c513a5249ac89c8ccd19c0e0b257241abb21a6183d547a716044f41c8bdb63c5', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:59:22'),
	('295c1f350d64d544d17bd2a24e9fa0b1ca826300606f5a59da0f6881e840bde51490f40f77ddc0d6', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:33:19'),
	('29b9a013bd03ebc1349fc90339bcc588bb08bee785b0c1f769de24f1839aa8930d1eaa4ca8b68f7a', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:28:27'),
	('29bbcbad451ede72702e27e9b048ef10118267a16afefa6975a2dbaffc3d2c288f69dda7669a3b3b', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:26:27'),
	('2dd0fbd9c5aa2e23ec4e311f56c20b638040210133b288d5c6990d8576786631add27adcea9bd078', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:57:39'),
	('2f6b188fe65e6458bba2840f0b004a86c495324c05a0784ac1349e99c2ca30e7f549a31779b2b1bb', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:11:48'),
	('3054743e308a864e64a4a8f23fe804f047938f8f6e6fc1e377f54dd96dea456a691dfb30afab173e', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:44:30'),
	('313f4d2adca9c9485ea26d207d337bd18a658b02cc2f47a8dc38ede21116e087c15e1fdec4fc29ad', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:55:03'),
	('35a62c99b27b0a2ce3f86372e16aff4083272010bf0481dcc440d2b51c78114853b738c2e6fb3c13', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:41:59'),
	('36bc79bba125bc9180154e5abed2aa45745e52fbbae9f759fcea837eea758f90a0f1c8c675515cd4', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:42:55'),
	('3a792d810c9681d9be40279ff9eed540827ddc90ed1629924639bf0c431f80706c356cf59dff8dfd', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:23:00'),
	('3aa6bcb88cd221dafb4678f8217c26e6782418893a7b399e6466e0af489ca11789cdb9c32ecadb44', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:39:52'),
	('3b4ee24579ef7440320975081f947f122a031c9c404c38443774e6eee2a4a1b9e7151a00f868efdb', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:17:43'),
	('3f35457414a761f159612ecc9b6151003930ca0795fa8d16ab410b9887dca98a0ef69dcb0272db2e', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:02:33'),
	('4252a564a23c2b5ae8f2aec950367119a527ab34f98e0aec5266244f03211e9acca547cfe26e3b49', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:31:43'),
	('4734986f151c9001295d69286c7e11d1c48b27f76ef7a94b9a18e30fab6261eb1627181d5684082e', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:37:28'),
	('481ab12c7f1c09971d9683d2a7cf31369ef64f0b2f2145b8dff4637be453b85e599190ff11659b8e', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:54:53'),
	('49e5ead8876b64db30c367be25179ddebbbe4d917f912ca83150a568f0cdc0dd552a91bdafbbdf2b', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:52:03'),
	('4e0176807fe8c34f45504238bf8adadc998bb522656f0515d1c67276349398451ed1303b60a71fce', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:33:11'),
	('50102fe3ec524fa07b1c3130c8c4e64c99c6e3d79235602fb725439b8983763d292064e4a2207651', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:20:45'),
	('51863dc0f8688061b18310fd38cf40f8f1f9b4bc1ac665ab9b1dda45e446ff7ee7dff661f6fb3685', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:54:39'),
	('52b7bd3fe7ab01038d99ef595fc0a233475d37a417a169c59367997b5c462793077231629b8e678f', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:20:38'),
	('533974aadd6bc10562dee67195f31f5216d2efb9e821e14b897ee741a1deb21c5b0c968ecd58c3fe', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:59:16'),
	('53c7de07bfc0f73c7b26d78d2e9bd7f4eb8e0ae46c1bd0bfeda6a2789ab81b0a600b88d103d14283', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:06:00'),
	('53d54c17c6bf8457bab59038165d78dd0e94a86fe4d302d5a2669788a94f0d6997905763e528be49', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:19:25'),
	('552b3334eb5b5454015c6379d1163728d1dff2432daf94f71cfd2c29b026a6316f243cadfe002c82', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:46:34'),
	('56e34ba9124b2661720060c756df6e965542505ff003739823cc6ce4d2d5732d729a6e8a12f4d55e', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:24:42'),
	('5e8e86ef3c643bb3f7b98f0d277892472b4e1a6b39ec0c90b73a9538aa31e2469415b968addabbb3', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:08:15'),
	('5edcb9f5df2fc4a3e0eb113b81e9a34ff6145ba8442c87d9c409acada4927dbaeeea833a9fd8875c', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:58:08'),
	('61f08c40dd587dbf9fc77ec0836378b82e5872fe7fd76602d772b71bb3bbaccbb15b82208d6f594c', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:29:39'),
	('640633c606bb58011609bc37fbe6dba72e324e12d200b6f21873b58cb354265ca4c993856750d7c9', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 03:02:27'),
	('6932913bbe34df661e0dc348d922ee649e430d2f19eb5928efb8dafcc96e0bdf78cef9b075707555', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:59:57'),
	('6cc91e29761eb5ac43c7f96caf7eb608d0b3e7d2fbf34c012c7b3b1dc4c92ff91b0410d4d3fe8c78', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 03:02:19'),
	('6d44b7bc39a814f6880dd84cf96e2d216adea4f72e331147803dc3f6b5682928762981feb0d19c57', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:05:19'),
	('6de3e244a77f0b8f040b7e3ab4110947d7a849d9b75f4097e13bdc0f237282f53526a8d193b2fd2c', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:52:34'),
	('6f2bd72c5e145635cefc7a36f09eaa78be4921e422bbd6004814ef22b73eddcf9249369c08e0079a', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 03:03:22'),
	('7343379970122261ad12b867fc46bf42ef15808ea2b52a37d5ab2d68b09e44ec012fbdaba78df3b0', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:45:27'),
	('738e410066d3ea66386c0ecfc83c8f5d853bd57b8c62b579ba834c45d5a649d7ed55d365b16f90de', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:58:41'),
	('7700bb29afc124719b0d6aa7901c2fc030d1de1da6a9022d792aa9980d125ef38179b62079476b50', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 03:01:00'),
	('7934ac4a73ce74852d0987eb810f24b89727d49f23471df5ac3f310fc6c49ba546fe31a32830a878', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 03:55:25'),
	('7dfce6752b4b248c8d108c2cecf7911d530e5a666e277a35838827e526478e7857e3ebb326b2fb32', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:06:15'),
	('7f34f21ada87bd1e82396539318d8f60cc71bc9a53e0be7bec455e0cccb8c07fa4f75e060b5940fe', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:43:54'),
	('80a6ab0547bd7fe10096d0e0150e54c30e77362120e869ddc6c7f5f2917dd71fcadaf85be381bd6f', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:39:03'),
	('822962b1188670b3d98ffeff063e7cba16790e761aeac18ee99901c02229d64c2e80891732ae74bd', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:24:38'),
	('840a17f50a677f6e028a01dad1f72ec033b67d618d956a4a3bcdd060237f01df261edf7fafe2ed7d', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:21:25'),
	('859c88625d6bad1db046d0ed1e580cd553f79200cbb6115f5a51c0beef0e9adf2698f53f4ea986a2', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:04:31'),
	('8ed55c5ab534a2878d4c4b2e0e190093905e6c4911a98d71b186e8ddfabdfc0c88d56aa90391d9d8', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 03:00:08'),
	('91bd8a4d6447167505d23aad61ed88ff74631ebe8773526c37c53b5c61aad30c9151a60a3a5361f0', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:18:26'),
	('94471642c46cbbbf0acb81d79a21ac568ae09cc231e7858216dcb7b481bea4fd7436eba6e5c635c4', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:48:36'),
	('991d682abc942abd37a6a809e1e74f848b5d4325d1c8528a247762046be8d405c8f4c96089437772', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:53:40'),
	('9bd2691ed55c120e26776b1bcf577767b9eba28a14eafd9e42268eee33576aab90b4605063077b81', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:51:28'),
	('9beee854d81c7d552755509ce57d5cdf1103e43b4a3fbacc076f20861b9ea7d2ba4177dfe0cadffe', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:51:42'),
	('9c4000f11c5f6cf187450e3e89f7feb773db3dd46eb505f808ce24ddfaf6a443443ed1d5b0ff1aff', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:03:26'),
	('9dd119879b937c720cf9d22d49ebc131a15f0dfb0e99a9cadc3cb6bcec8ff3474e1a5ff3c20489d6', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:55:19'),
	('9fddd09b7e35affcb4ce53a7ac3b9bdfab5280499cdc78e76c0fc21259b6514996eb56fba1dca67c', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:58:20'),
	('a0b017d98e3a434c3a071331985c210bdc974f8206255a08552937b194e5d52c5af221bc42b6fd7a', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:23:10'),
	('a1e93631b8f81124dc795a539808a24a38503bff2be8f5192e9b3ac1a2b545645e519cb9bf144d0c', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:05:00'),
	('a6f8ed9c8652b611bc8dcef85ba190486222cba918c296f05e7d8b205ad16b11b468101fd32e39e6', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:53:14'),
	('a897e7e7938852bbc3b56abc054f439169acfb95e1ee3049b345e4c83d751c0cf9c79eb058a2d6e4', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:19:15'),
	('adae3afc2813a77d9ae85de0f2ff2273da3ca9945ec5b7ca9b1a176d1251505c35e07afb3a8250e1', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:38:56'),
	('b0233fd8205890e8a5cd5bafad66321a1b0967e0f1e4ef52cafe62975dcabf210d47727572eeeff5', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:44:59'),
	('b13938ccf85821816f02f81e0d1371dc438229581dc659530d1ff5e66e733e18a10fd96306d81b5e', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:40:56'),
	('b7ad1de75101f551c8c285a10f6e50f1d8b13550c4d5bbb3cb35550670742e4a7ddfdb65b745badf', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:44:31'),
	('b894aecdf0bca45d488ca5bcb1161d15d38c1ab21fffb336727d17fc15435d123f2d790d8af6577a', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 0, '2023-07-12 04:19:09'),
	('bcb54656b2152c0e6838eb1122cca92cc3d7ed75d99c7333c8fd1940f87bdc43129b6dcdbe27765e', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:10:00'),
	('c28ed32cade9caba478bb93bd55664b384379bf0325e32eb7e02e1945966c86644c23ccb542f08bc', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 03:55:51'),
	('c2eed2ea415e6371ba41088d57358437a4729181d62c6d81c557448f873f579924ead1a2921f76e4', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:19:40'),
	('c50017cd07bc524b8516c612f0c8e44c6fa13f1db10aa10ee12369bdee6e163d1bed438f789a78bf', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:58:12'),
	('c65593ce42a49bf14520c3e58e92727db3cb4a0eac7f93bd8b861b21b91e4df066a5cbde1c9d287d', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:41:08'),
	('c74fc2ffbdaa091c3869f96c1919082c07a7a7fbb28f6a53cdb48eb65cf086c8826345cf1b9f1a24', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 07:45:58'),
	('cdc7a5650e2b8b606d297e6bb33ca2490f142904f477ee4360e85deb7fbae65c54ce7a737089e82e', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 03:56:20'),
	('cdd2b3b0c15cd97c7462d01e0842bc27bc8a879d7cc122819805a17400ba9d6be041582fedf29376', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 09:28:14'),
	('d1178c6d75a23c4e811abc787a6da2419fbd17b74d5e73c9516782503bdace83c2577397cc4d1c29', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 03:03:50'),
	('d1d05a0656252bd2420adcff26e6f8637859925056f72e6dc40a7fab6e384dfb905234b4e388c4f7', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:43:07'),
	('d5c7c3daaa911321a040a7420c4c04e92f7a140b4c74afdd2d81fb5c412342f436b11b8fa8d3b691', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:54:50'),
	('db946a963a1d83effae301c37feeb94290785f3c411f8d6040e7b0cea6a81a0c1efb36388745cb44', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 07:46:08'),
	('dc97a4f3074d4e764b57f345a967169e1d785d106d50a7e1203d9b5cd4008218b9f6e0b87caaa8c4', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 08:49:34'),
	('de6b4cfe3dbb1547ca6674901377341b56021f3499cdff24adb77958eb1dcb15d269fd558a3860ab', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:59:12'),
	('e4b7569990fe7a296bde95ee33abafc304d5bb4e5f15df80c8f302b70f6de3074c66e3f7cdea3236', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-13 02:58:50'),
	('e5bd1caff85cebe551c801643cdebc7dbfede09ce547bef62764e14c5038324f37c22cb689b48ef5', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:15:43'),
	('e829c07f9df3300ff1185207475b8f4f5a04650ee264a27e7c214ab87d703dea0d95c2fb4eca0144', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:33:27'),
	('ed7a66897c02194ab57f0cf03952d2794fc1a2aa48454460f38a07c1f0ede80b28397bb02d172f8d', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:44:35'),
	('f5f65bddd024f8bf94e83b3da4423614099e1d109d965b2eead7a663e2af22be1018d1bbd4a2735c', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:45:48'),
	('f64330a006f37c2739fe3c696219941e78e345d2be7e22c8be1a38c2276b4cae55e5bf8b5455390d', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:35:39'),
	('f6b0529df103af9751503a83f1c4e2b271535db878e0ca2dbca9af2d91c4e9129e877e0e2a160732', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:22:31'),
	('f779caaad62940477eced0500d927067c0df174a8c5c475851ac453b0c70c4f7e49455a57ac74af9', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 02:26:15'),
	('f7813dd6a01ff543f36594bcaec6b39d12d5222e5139fb92283aa485a339dd4c43b0a4af82752040', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 04:44:39'),
	('fecae2b00ff89ac25d1a79ba6a9c0d357f6b33fdb808ad0df5b74682bafa1d3f21b738a1e1a6613d', 8, '998814c5-3d6d-45be-86d4-2270950f0d14', '["view-user"]', 1, '2023-07-12 10:38:45');

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

-- Dumping data for table laravelsso.oauth_refresh_tokens: ~16 rows (approximately)
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('1eabb18e04bc0d1ee75237e602ab2d7e0b7affa8afea512a65ae9396ed3f870f0fce18a11f6e16a5', 'bae9849ba46b15c7b7fb0615662799121727261af6cc9a21e5e2616776e076ab55328fd2e75299d9', 0, '2023-07-12 10:48:09'),
	('2163f952bf4c2c354522d3b84f45bacb5ae791c3ee89ae9fb166b28eb40a8f6ae1836b1704ee5a03', '9b03d8e45525b25e647e786bb13cf10d66202e4fd8e3909465ffa40a1f13ce9e6f2d91ad542b8b8a', 0, '2023-07-12 10:14:38'),
	('3f76cb71a2ea9ca12fee6b63ba361c3ee6c2dbfb6e13dc0a402752cc913fdd4dbd70c606937a8c44', '70ec7328344fd8153aa8d4a60a0c8f044880fa6cc129e11f6e90593aa206a61c7c7191379f155d08', 0, '2023-07-12 09:52:34'),
	('40afdfd00fab86a93f5a025496f44975c7b9be77414a7cab07800a14f4a0a900c60d6b1faeba859b', '8e5bff2324cdd916304e59be85586f796c273203e572493711cd38b0dc4c3a8a3f156f4a442f5f36', 0, '2023-07-12 09:53:27'),
	('43716c3ff521a65db6eb78abafd04eec4cadd24f494173d3082b50e5514d1ca005949dec301f7b4b', '52366354a4f44efa44c9318b665cd27e195b0d18b8c56ad5e8d6ede6dd6c0b8872decaff566bfd88', 0, '2023-08-11 02:23:28'),
	('48f598a4b029d1d969946cd0129b1660a8246c324c864a14730769bcf5ed8db42d3307c94f98be58', 'd174a3cdd0f7ea9aeca51e846ec86f307b95dcc154f502845f079a4cea4079fe25bb6bb98ae4ddfd', 0, '2023-07-12 09:48:00'),
	('5c09bda8b024abeb9720bc61457120b8ebadacd04a45f545fc5734f3de7ec5d34b86a6cd531109fd', 'b97f5fc83bbbfed94e95c2f575fa586b508001530afe9a44c50b4f321e25dfdc05a95791878fb79a', 0, '2023-07-12 05:00:00'),
	('700ae9dad3c529d039ff2463300444276d201a862a9699347ec131f111a78c8e768e21fe1253b81d', '2acf17b05ebd7df11a556c861d91b7ac80d46a3878ead454dffcc376b8f283ec053081c730efdb75', 0, '2023-07-12 09:42:35'),
	('728c20173fa6d95a1816f25a030a87db2381f0943c5c2ca3c3c4b0aad84f1f67ce601a66e586bebb', '3b2bbfa316f0e4a359ae7851561f68938b790e77506ef2ef33df727e1b992d7168cf37890bab2aab', 0, '2023-07-12 05:41:28'),
	('7881e5cf4248692e8aec61ef6d34d3125e453af41ba07635fe879d0bce091c81718092c65f9cb3ef', 'a16837f2637edd0c5e778f3c87fb36d3e21b430aad8cad7213cf7dd3930782a98098ed5c58f09015', 0, '2023-07-12 09:44:40'),
	('923c26dbd39d4c8a9ccb2af8c6b5e7f5fd883b453570b658faa393a16d2ad1d58471a450bd371407', '23d1af802f0d4d20f872d2f8caae21d223709cff003247fa734d804a7f886da7ce77f24bb75dd3e6', 0, '2023-07-12 09:41:42'),
	('bc0afac6f081c6cf6058722c413959fb6b09b3c406d2300a53b81dba01ee860edf30fc6d8e06569c', '7b41af26c6e69e96cd27d701811e6f6e19e2fbcab6e60be88100b6fd450006619836e09bc989668c', 0, '2023-08-12 02:43:40'),
	('d3db24aa4e4dc899023f0fa82312ab438eae5f4bb8943a265469c834b7facaf949da7457891f1f11', 'd18a25efb478cb6a864defbba7f6ea033b4568fe9cf11ff79a5854700df75c105da7ee7294091d67', 0, '2023-07-12 10:47:39'),
	('d775aa1475bf18d661b5fe44de941130f6d8c2e876e8e8d8ec2e3ed9926b4d27a7bbfd811ea486cb', 'c11c30c3747dbc1923ae848a7ee5ea1229d20cfeb5eaa4a32e855a82679c97d80de29f22868b4e83', 0, '2023-07-12 09:45:03'),
	('dcd40640c99a9d40cbf9ca32359411fa658112196ae8736a74a97249e5215af41ef43de5ba670a42', '9256fd374b50e8608817fecfabbe871d6b999d1f66908f0eef7593d93fc24ef625cd8abe83866f12', 0, '2023-07-12 09:43:14'),
	('ea99a8f722bc189fc4500b50fe968cfe01fb6fe8eb78b8c9e434e39e5e4958bed3827ed4c747bd0b', 'e1e6d4b0d50c8cc3d5334d84a29dfa1da5027ba3e9da2ae15b23385a570ca7bc0b8990b4d7315787', 0, '2023-07-12 05:35:48');

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

-- Dumping data for table laravelsso.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('EyTsfVmgzgxwkxWA1b4TnKPvCSl8YFoTmIOlXQTx', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVU1reGJodEdacWtBZnNHYk9FTkJ5RU03NWZRaEl2WHRlMDlKcUZnayI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vYXV0aC9hdXRob3JpemU/Y2xpZW50X2lkPTk5ODgxNGM1LTNkNmQtNDViZS04NmQ0LTIyNzA5NTBmMGQxNCZwcm9tcHQ9MSZyZWRpcmVjdF91cmk9aHR0cCUzQSUyRiUyRmxvY2FsaG9zdCUzQTgwODAlMkZjYWxsYmFjayZyZXNwb25zZV90eXBlPWNvZGUmc2NvcGU9dmlldy11c2VyJnN0YXRlPVo3dTc1dGo5WkhsYnhhWXRkOURWMjBpRjVXNGs4VUp1VFl0QkN1YkgiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vYXV0aC9hdXRob3JpemU/Y2xpZW50X2lkPTk5ODgxNGM1LTNkNmQtNDViZS04NmQ0LTIyNzA5NTBmMGQxNCZwcm9tcHQ9MSZyZWRpcmVjdF91cmk9aHR0cCUzQSUyRiUyRmxvY2FsaG9zdCUzQTgwODAlMkZjYWxsYmFjayZyZXNwb25zZV90eXBlPWNvZGUmc2NvcGU9dmlldy11c2VyJnN0YXRlPUxSN2UzcFVsWXhYY2JRMGtJRGtjNTJaN0J6elJ1bzNaa1hTampyV1UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6ImF1dGhUb2tlbiI7czoxNjoiRHJTWDhub1ljWjVNd3ZMViI7czoxMToiYXV0aFJlcXVlc3QiO086NTQ6IkxlYWd1ZVxPQXV0aDJcU2VydmVyXFJlcXVlc3RUeXBlc1xBdXRob3JpemF0aW9uUmVxdWVzdCI6OTp7czoxNDoiACoAZ3JhbnRUeXBlSWQiO3M6MTg6ImF1dGhvcml6YXRpb25fY29kZSI7czo5OiIAKgBjbGllbnQiO086MzA6IkxhcmF2ZWxcUGFzc3BvcnRcQnJpZGdlXENsaWVudCI6NTp7czoxMzoiACoAaWRlbnRpZmllciI7czozNjoiOTk4ODE0YzUtM2Q2ZC00NWJlLTg2ZDQtMjI3MDk1MGYwZDE0IjtzOjg6InByb3ZpZGVyIjtOO3M6NzoiACoAbmFtZSI7czoxMjoiaG9hbmc1LWxhbi0zIjtzOjE0OiIAKgByZWRpcmVjdFVyaSI7YToxOntpOjA7czozMDoiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2NhbGxiYWNrIjt9czoxNzoiACoAaXNDb25maWRlbnRpYWwiO2I6MTt9czo3OiIAKgB1c2VyIjtPOjI4OiJMYXJhdmVsXFBhc3Nwb3J0XEJyaWRnZVxVc2VyIjoxOntzOjEzOiIAKgBpZGVudGlmaWVyIjtpOjg7fXM6OToiACoAc2NvcGVzIjthOjE6e2k6MDtPOjI5OiJMYXJhdmVsXFBhc3Nwb3J0XEJyaWRnZVxTY29wZSI6MTp7czoxMzoiACoAaWRlbnRpZmllciI7czo5OiJ2aWV3LXVzZXIiO319czoyNDoiACoAYXV0aG9yaXphdGlvbkFwcHJvdmVkIjtiOjE7czoxNDoiACoAcmVkaXJlY3RVcmkiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9jYWxsYmFjayI7czo4OiIAKgBzdGF0ZSI7czo0MDoiN2VlWmh1MllCZ0w0ZmNhb0lJQWZ3bnQzQVZiTG1seFpJRkdjb2JjayI7czoxNjoiACoAY29kZUNoYWxsZW5nZSI7TjtzOjIyOiIAKgBjb2RlQ2hhbGxlbmdlTWV0aG9kIjtOO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O30=', 1689216608),
	('Hrs80hp2whOHO3UGoBPSOQV325gy5GJApEZyydHL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSzZRd2JqNmEzVlF5cVRweUxGSHE2Szh3M2w4TW95aEUxSElHSFd4YyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vYXV0aC9hdXRob3JpemU/Y2xpZW50X2lkPTk5ODgxNGM1LTNkNmQtNDViZS04NmQ0LTIyNzA5NTBmMGQxNCZwcm9tcHQ9MSZyZWRpcmVjdF91cmk9aHR0cCUzQSUyRiUyRmxvY2FsaG9zdCUzQTgwODAlMkZjYWxsYmFjayZyZXNwb25zZV90eXBlPWNvZGUmc2NvcGU9dmlldy11c2VyJnN0YXRlPVhqTkJUdHNicTcydW1aVkozQTh3bVlWSUJnRHNaUE05WlJBblJwZjEiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1689219998),
	('oK100hCrKwXm5leP0YDnD0jZY91M3nFhJTvdU3H3', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQ0s3amxpS0dxZzNvcEtEdWtXYllZNzFMVjQ0bkM1SGt5YTJoWmdEeiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vYXV0aC9hdXRob3JpemU/Y2xpZW50X2lkPTk5ODgxNGM1LTNkNmQtNDViZS04NmQ0LTIyNzA5NTBmMGQxNCZwcm9tcHQ9MSZyZWRpcmVjdF91cmk9aHR0cCUzQSUyRiUyRmxvY2FsaG9zdCUzQTgwODAlMkZjYWxsYmFjayZyZXNwb25zZV90eXBlPWNvZGUmc2NvcGU9dmlldy11c2VyJnN0YXRlPVJuU3RneXlOWXRxSkExanh3NHAxQXJ5T3JPTFpqc21YcXhqUVlxWVYiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vYXV0aC9hdXRob3JpemU/Y2xpZW50X2lkPTk5ODgxNGM1LTNkNmQtNDViZS04NmQ0LTIyNzA5NTBmMGQxNCZwcm9tcHQ9MSZyZWRpcmVjdF91cmk9aHR0cCUzQSUyRiUyRmxvY2FsaG9zdCUzQTgwODAlMkZjYWxsYmFjayZyZXNwb25zZV90eXBlPWNvZGUmc2NvcGU9dmlldy11c2VyJnN0YXRlPVRrVEJmVXBGZmN5YjZFemV4SkZxbkRLUEd3bzVtaG1TZjBMNUl5dnciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O30=', 1689219980);

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

-- Dumping data for table laravelsso.users: ~7 rows (approximately)
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
