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

-- Dumping structure for table laravel_ecommerce.ecommerce
DROP TABLE IF EXISTS `ecommerce`;
CREATE TABLE IF NOT EXISTS `ecommerce` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_ecommerce.ecommerce: ~0 rows (approximately)
DELETE FROM `ecommerce`;

-- Dumping structure for table laravel_ecommerce.ecommerce2
DROP TABLE IF EXISTS `ecommerce2`;
CREATE TABLE IF NOT EXISTS `ecommerce2` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_ecommerce.ecommerce2: ~0 rows (approximately)
DELETE FROM `ecommerce2`;

-- Dumping structure for table laravel_ecommerce.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
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

-- Dumping data for table laravel_ecommerce.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table laravel_ecommerce.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_ecommerce.migrations: ~8 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(21, '2014_10_12_000000_create_users_table', 1),
	(22, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(23, '2019_08_19_000000_create_failed_jobs_table', 1),
	(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(25, '2024_03_07_140900_creat_posts_table', 1),
	(26, '2024_03_07_142348_create_ecommerce_table', 1),
	(27, '2024_03_07_142812_create_ecommerce2_table', 1),
	(28, '2024_03_07_144138_add_posts_table', 2);

-- Dumping structure for table laravel_ecommerce.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_ecommerce.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table laravel_ecommerce.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
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

-- Dumping data for table laravel_ecommerce.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table laravel_ecommerce.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripiton` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publish_date` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_ecommerce.posts: ~52 rows (approximately)
DELETE FROM `posts`;
INSERT INTO `posts` (`id`, `title`, `descripiton`, `status`, `created_at`, `updated_at`, `publish_date`, `user_id`) VALUES
	(1, 'wfQIKZlJhTO70PWs2Adh', 'JnE9HHAnwAzZXmLPEnOq4GkwiQPPnhbCsQjVST129qsnMoYzWctTHklLKwzaUfrkZYPeeEPpV2SY2wLfYD1c0VUQ8GDvjgyjeF5YH2ORkTLKQTtqvaW3MAMuYDWAMTwHXHsCSPd7fsCWFxE86Y8lsuUqfNeeQ7N48kDb1FwyzjkGjSfiHloNjesB4FMwKNgHToADobph', 1, NULL, NULL, '2024-03-07', 1),
	(2, 'vK7LUEvoznwxM26haYRW', 'JS67yI8eY03BWE2eJC8JJNtt5FrctRfd9vrrIIo3oGZ2z6bPmqIZ98SOPESJpLbNBYhnoLNrxKwG6FQU9BRUXmZvLi5rYYgied9zkHx7pW7BV1hpfXv7u9gFgvdNNap9U4ShVapVPvdQrUZbMdw45zbrkiRGFQsceGVul7C6YtanNyFeA3DnaHb5bKmmYmQUrD0XFQ02', 1, NULL, NULL, '2024-03-07', 1),
	(3, 'QGfTJk1xFvvS0kcXRuBq', '0ZoMjrj4nO7ZrUnUeaTt0C4XTGDtcsRPIF1bPXHRivPFqx3A5kdxgS0ZrbaqBMP8iNhS7VcydH4s7EggeFoAYRohba5fHiOxFeyvMcvfP4jxhRJ8z91sAG7KJdjWkIvvOZLVofOWQOCRZg1jkebWeUb7Fp2WCmnK9dkH3HNpc0nKnJfi3KAZYxNIDUwnDgFM66HUWVF3', 1, NULL, NULL, '2024-03-07', 1),
	(4, 'xSdf5coZqVkTb3JMtGPM', 'Lctaz0ey2TpcMG6y5eUXuB7RpVF8BdOEoD3DGsUNfYzRVS0OlvvQFLSvvMQ9K9RzVVbUEHbXWOiQ1uInx13kbspISPoPV9q9asKYPh056Si9VRH1k7EShpHiuqQjAH9kHvVTXvsOtvpD9Qim5sb22yqa6hTly3LLGOsGa67OIxPrcjGDOHp51x6IIeh3BpYlGyOjpnaF', 1, NULL, NULL, '2024-03-07', 1),
	(5, '52INTc7YskmBUZanoBhm', '31YMOtx6250iJlDKyzLOD7svGo6Fy7JTAcMUzlhSpDszQ6GW8cwK1TOh6HWErs6z2l0mGnKzyMzzd5sgRbPZt3rG9C5IpZjOCjwg7TByRjlAPS5BCHVlxLb1NyGgdGdUd8TeMPGDzmkepSTC1hchUV83ciBdhxIFDstRwsEAei1uUSw6IzTe5PeFBULs1OVZENOiEbAM', 1, NULL, NULL, '2024-03-07', 1),
	(6, 'tkVzRdt2l26cc3PNJA4X', 'RFCmc5o1nilUnYU0SsE1o4fz1xAbSKxXGVUHKLNdcT8ZYog4u8MpjQaC0AE28iHkSjcVG9T03u8zkaAkIL5tNJcvaAYk95X6G85ohQLHeWNlbUduDMSYWZrh6u2ko9u00zd9jPCF22t8kVuO6zfNiCcWhX3ZpESkjfPHS1HOwD0Q0YLyWPP01RYHVUDBeaFalHKMUKNs', 1, NULL, NULL, '2024-03-07', 1),
	(7, 'PIZyj7WGQ1bWOP3KaWAl', 'gJSdMgHQHyKJwaFecN2ukp0ffgtNIOnPd3AB600Q1t1niJV1JSSorZ21QwZQR8DIBqC2YrB8DucBuOIlPIRIjUbrMmaolbAb2D86iEU9Wl21XJjAjwOOAfGZ0xdb82sNkz4AwVc7FmRsWtpUXZWdwo8onNUT69rjOGyQQ8iqkVfx2SUZen03T8SvAqlwDDKTZdDsszq8', 1, NULL, NULL, '2024-03-07', 1),
	(8, 'lGWqMD4o6gSbgCfGLoYT', 'FzeZFiROupiIDLFagWanHQUWTfK5hEFQKaaX9YSGia96MaysdGZsdBCKLr5zXihoI0iELgNdNCzLEiTgyA7UmJzRYpj6qPX1VUsQPWGrHUPaQ1KXwNflNpfDLqro9rekQGFMGX25lEoMTYga6LJCBAncxphnuVVWEcg3U4GUJBlYaS76GZ5mnfWZ1e1S80bpU3vTSmLK', 1, NULL, NULL, '2024-03-07', 1),
	(9, 'WAJhRpdBR1pOZgNQmnhP', 'UgDJmGzwgsu5tgg3y9WDPFj2e4abz6IYFdImeESd4aA3QljFS9BVOmky51rFVwpabqEPmmwZebJldEdP9tQ44ljhuF2CdlbgLweTRvFufiXo6oZGt8zZbVJuPG2MqBwx9ccRDz9OP74bXYiD87cJvlvY6KLSQinBaefJHdJSR8Yy2fKHuS4eJcMAdXJTHtoXDl6giez7', 1, NULL, NULL, '2024-03-07', 1),
	(10, 'Yxbt1frXpZvLyj3RCLD7', 'VdV7hlPUbjiepsB5lqQ1bj3FcqSfYH3pogVkRlyb64iQShPIl1iMdQDpwZ3Ci8hpJGTfZ42LuCCE1R02PVmVijqF1DCYiz77ebl59AwHtv2apPhD6fmwa3oQ9s03Ro1B9FRSTGQc6gRF7n6zZkqD5lVo2Vtp4NPgcbOjWmCioKlZRL4nnOUONJkP2bPX9DQIAnVfoEfJ', 1, NULL, NULL, '2024-03-07', 1),
	(11, 'JzHAhffsWOj9Qy08mvx8', 'qx2CcO71zPlscUNy76BS7J2IfnHrTczXVzNmMjUPd33h2Zjd5Xk84VXOBlew9UU4GOy5uLs2ZMbbMKDCP4e4N5OcEsCx5yjVxVA1dH8o4iWB0OqfadrLlnsLCdWFhklDwtKwWQWUqPYNWNVtbFYnjbhENThvsE545eKMkK8ZCOdXRKHm6UWL7NwvqJrjgfTpxEeJhO4u', 1, NULL, NULL, '2024-03-07', 1),
	(12, 'MhqleA00uxjbXnketkV5', 'PA2kbkscc8AkAjZyfAHeIZQVV8j6IZL3wxXN2NmyaKV1CHVc6ZgNk9fgwZ0KcXzjpnvlxzsSg43rk078jUBjc7iaQjpgktEyrqw2pgcxVQbJM3ZJVoD6DE8ToAOUBQMaakjM6S4UArs6vUmlvJtNDLSfG03FmhAVKb65hvZn5GRHhdHzC8ztbXNzEx3PLquq3taDl8L8', 1, NULL, NULL, '2024-03-07', 1),
	(13, 'kTxPaO2tNOiPCIA56hBS', '3iwBd7GPIDjfFuOn8lPHubgQpxJC4bWbNY5WoRxKXQM6p5GwFbw4XskYpqadsfnABTxdzrwPDoP4iyDDlbMgRwtpLADDyN2ivpiRqq6NC3PZDnKUDggW7eygjFRmXLI1oFQBZkkNYsx8dBYAOqBEXaThEZtW1y53Mnz4UuqcWQDm0OoUeyeHFnWUQl8vqVQ0S4hauxEh', 1, NULL, NULL, '2024-03-07', 1),
	(14, 'N7Rh5sW44GTJ4to9eQ6F', 'EYSn7JWrDHEB5Str2KvMpn9xlbjWl9BaMftdBBrXXqP0Pa0Tlh2rvRlkc2cgtmoa8Wvse614Spx0Vut9n0xBM7aiUkq6zAVLxSgiBSPF1V2eMJDMyn2wguLTSNmK1hjYCDegmQjRRBpgJyTarIURwl21BlPgv8m6Pk0hX00SzmqF002UO7ljF6pWszKoMOR8fZ0jFKLQ', 1, NULL, NULL, '2024-03-07', 1),
	(15, 'zNUzjdYCI8nXkaL0qVb7', 'toTuPTM4ureuEBMZ8n7pR8mOwPWXBOx2ozidDkDBML9JDxf9TvjidZXyMsSDEueslRLYcc7xnhUBwoe3mx5cdgGs7VOih3oxN6x4r0xoEnRtASUsYejLdaX4x1UOI1YF70pOa82mWwftriRz9MHIxiweaA0Lvfsa8A1nb60XluSJx77QqXlIXCcIA1OpfAEG29fnMoOC', 1, NULL, NULL, '2024-03-07', 1),
	(16, 'HDK1D1bIP3yO7cIrvf7q', 'wXmuU4KHPj2sLwRqtMZ92ppgObsCYSkcFNAgsTjCML5ltyATU0s4Im9KomXaqzjPmR2ktPrcLaeQcrvQ5uKvUI1SSEb1rnlZL7rI1FeDvKu5T0mipzNgx4s8MlSZGsJxPe9Gm6CFDC6rXIQswpHXBvASuPSBULFqBbww4g1UrypAG3aRYV2WNCfLS3DuaiJt53mZflWI', 1, NULL, NULL, '2024-03-07', 1),
	(17, 'Gk96MT7kAcdChdMMo5iN', 'IvszjG7cDP4vWke6bmNk9MjUiHTPQ8KuXlbqsTYvmze4ErdLE800y6jAd85TdWr4h9IUWJ7GLdIynEfkms3YCUfb2oCeAsRf4ygIEY6hAORhikakrsxLlfZC45tQTMXOEblHwr7AoLtpUlOAAvjyMSnp64XNTI4GbY0WiCrRcJwzXdpcCjuLKYNbiTV0dIQNHnD8Y0K6', 1, NULL, NULL, '2024-03-07', 1),
	(18, '1A3PnJY2V1c4tUXYudda', 'CEirmjwdpaw9mQOcD94m4tq2gR2ykeut3BXsVrV9z506AUEfootJbFATQSEUlmoAN0bKqKY2P1cnoINsLcZBj4ZOYj20nJzJpZimqnzzzflH1xDFpLhql9HPo4249tBsY224OPQbrRYIRtHzcGHWg2mMHup3ibRZ8n246g2ESw31tcaYwBEFAveX5E7s4kza6EwjRLtA', 1, NULL, NULL, '2024-03-07', 1),
	(19, 't8XZu9mXbj5VyIRIZTNn', 'miu4yU3O37srSLDdyVkAM4qgU5C8U6Bg0PAleBNkLelglWSskOH8rx7TOnkWv0RDaKlBeiVFz6YSy71I1wUzlpfFBiYIgO2sioivDlqtWeC4VB5GMlRILfhp1nxee3zZsNpYDu8g28NH4ZfRGs6qIAq691xtOldSaXx1WlK0N4YptQIm36E3uRKO8tIIRFgmIczQyDjQ', 1, NULL, NULL, '2024-03-07', 1),
	(20, 'mcZpFsXrDtNK5o9rgdaP', 'T3w6H8SGp0lYKU1RHaSUmzAhyp7NfSgIhPyP3hU2keY99TjroPPU5hYDUBnIOTGorNLFMTlJkT5vy3RrNYSsqDgZqMKKd8iiJJSZu5l1KRXCzWDtVSBcsWqIN3G9J8qRxDPquSrbNtZenA91QRY5sKfCUl6f14nAGkloOn8NNrwRcvAQUHErztKWI1QHRGMkDmbp5cZi', 1, NULL, NULL, '2024-03-07', 1),
	(21, 'fQAaLvEx0Tf3Z7PBlCir', 'PdKKg0hb99azu57gvAAXW3RT6IbnfcvgnWKFXOr3hxUDkVke66RH44V418d90IK4QJkLdQi3HTqKgxr70FOKiJkVh2RF0RAbF8oxMxbahuvLRzYgODcpAIRwOiWr8gwyRHKsSck70Fzk63zfvTEzEEuDMLbngapZD0hcV8MbtZ1CzFnLOSVtqARqCLWJuRf5Qjv4QqhE', 1, NULL, NULL, '2024-03-07', 1),
	(22, 'UaDT98U8b8nehf7ljH2C', 'Hq9MD5K85GLGw9uv5bjFFwHRApXZ4oGnTQvisy3oVOvTD5DO5B6mC6dOhw6re4uWDLQHz1M0kctziXIZrwqUeguydurgh2Yot3uyPwQYVmc6Yq0eZsQtH2F89K4vUiIc45rORRteJxS2f1eJI0L4H8TGD5ZSS8RKKYpk6fUM1zE8m0iqsm7BJH9Z5vdebx8wcEWOSUzh', 1, NULL, NULL, '2024-03-07', 1),
	(23, 'VcM1C9CX8JWdm2SJvmJC', 'dDryYHVIhbW2qodkNm2uCr8OvMItaHEyVv0DKmmc7utW9fhHVWnsLrqhf7L6VtFV6SxsLLWNShpT4cxKJHLtgCYZDaXtKxRKWEM7UVK388iCtQ7Gtez23ejRUtnovG3ETL9I64bDcfvRwU7kfwHTMvLJWnhTDX0Oz6LHIycQUs0RC2sL7V3GuY0YRAjq6cNx0vYIyLcL', 1, NULL, NULL, '2024-03-07', 1),
	(24, 'ouM9v8v7bDlngRiILUnw', '5fUXiH9H9I1cgM0X1UsgJK949p7kLRXcJ43y8So4l5ZFeW6QEfkDyi918Nb1yp9qgrRoP18I32VxHXtYg90sNzC7nGHfwZMz445hKAL8AT4NfY1AWQOr3ljoedxIomL0ZvBhgPbGcflKP1tyjNXYyjYmT5KlhJUt6dxQQbub1cCvzOs5peZdfs8lgD5wP024jSPaV1Iu', 1, NULL, NULL, '2024-03-07', 1),
	(25, 'xkpcQbgde2qekYY5ctwj', 'waWfu00Q6vFkRsBLUkhgjEMagFedP8koPgN4H9pybFZcmDH40mFOMPqnESm3jBvGMThIKqFUOSPj7B5TGr5Cj69AQrE3P1ohqcD6tJ5MmF4JXOB4PyTDcG2SxcGB1cQZOZbBEJbrqZCIlolpfpEf6w4vC23XQkT71KpOKTsboH2BPNGJigT1gl4Su9hvHnAt62OYmg6Z', 1, NULL, NULL, '2024-03-07', 1),
	(26, 'nSRVUhnHiT5qjGS1N7Qz', '2whhxEW8z13TlXhSAIe0zM07NNPtSxHDIvJesgaxnwqmmz3orOqhe9jMUGf2txyrcQxwiYdeHnWWQ7F2EGtMzeph1JEUlprTwpid5Mn4LAlTonRescL3yKL8zkNNNXaBVvql08YXp6zHKVUfzqKa9m33CtDIbkR9tgfj86hq5wxg6ehjiRChIbqhEzJWBx2fWRiS8CO8', 1, NULL, NULL, '2024-03-07', 1),
	(27, 'WMRcUUOJEu0mvq7bKYsJ', 'vqqo7RNxqermIKZt7oDYhGmT3tkgnYBxa0luwwTz9jFgeVCFoWjzG19X7yMaPeIHoDLbfxrjivALaw4FkWTmibZQSrvXpi2CQmnXVFm7eKnrN6l3sRAKY5CPeYOtGoDVLxvhEuZdZSbK5AZ3yGUrceNF2OXFC8w1rZ6JumOC11LKmV02RkZgvABeLK6wc62udZ6N0COa', 1, NULL, NULL, '2024-03-07', 1),
	(28, 'snXU3T3JkOUlonyxBX8w', 'vEbUDPanCLsea6yQsTU2e8EvLrgaxj0Gxn8dSZqKEZtLDpGqLK3SFwObhDvfwSxthVh1FAnPb71Zf6WGYWN9gmCtZoij1vVUCXOuuMWv3ROcGaywbvbC4CV0afayTNISdOENIr4BCKYqLv31cw9392n2uLH6NUuGYdtP6jcxlR9Qd3pVDa5D09mdTqpafRbOza2fzpn9', 1, NULL, NULL, '2024-03-07', 1),
	(29, 'Y8nqm4e9CEHdLiAreEkA', 'e0tWqTe7k97tIh3hNrqj1lWBB2F0sTJXaDOs3uB5kf38gVKXIKgCH7XRN2fpi4UWXXxKKs9zdPigT6uYKxfBOE51yx1h6fMtIjdTGyFPcKvOYGwaAvzFSaVV578RFQp2TfdZzvzeJsvuVWEcNCaUb25ZgOpVhzfZBPlPSYGZjBDjkKC44BZjmymEvvpz23HWJGOws8tT', 1, NULL, NULL, '2024-03-07', 1),
	(30, '1XqiVTrBOJhrnjJCDHO4', 'LTDXCOOq6gsayXlFznalsgeZMvZlWqXFrfbr1CX3GEz2f4Dmg3uRTKktGDAUoIbhkDELUxxztgFJo9IjB2ftuohpjwRcO8Ycf7ETDuFt2uAVRyallINLq5Pu7TGKycvign59DhOoahY04fwYrITPcsyVY8W2AEpn6Ptl5JymOS0S90neYGpXsqACID02LzifAyLr3rOs', 1, NULL, NULL, '2024-03-07', 1),
	(31, 'qpo6yQXu5vIrgDByksDW', 'AEnuKjNSSprcKndzyVqiqUMA0qr8MPzJBa9J08wqDDYnPBAxFNRStcL4erlwWSXADPOA891unQBOrclBr58NBGxLbD8GnChU40Scj5G7wj45xriDWhUhwW86orlGhRFJirXkfSHiMGRM66mlxqVGwzKml977izqqQg8m5eX15sTMBZr4dJRySIC5QX5BPbYUBqYxjin1', 1, NULL, NULL, '2024-03-07', 1),
	(32, 'WVAY7aP9JIl2u7YUFyYR', 'FQjRbpSaiFjdnxbPc2Nr8fhB4gi8sS7eYBgeYuwfbt8GLU1JrKyLGc0JI68WmrLr7iWI5b8jKRsMdlklArGf2GU3FemC8yRLR0HSLf01X9huUC4HwSEcZtZvBkkPS7LVMaoJSd0b8j3NdjNXCJ3iICGn4UUlaWwEd1n5iNHvqnSJWzQVQNr7yGqDvjsfAVnjOmm4nACW', 1, NULL, NULL, '2024-03-07', 1),
	(33, 'vNY7OZtgEDGUGWvyIcEU', 'EqXgQvBPCA8YFyHq32GoQPgRHp5v0IEFuEpXD2OGczxAvZU9ob9xQxHSEhFPWXuMisdg6AVszioSS5yEv1urJxV3hhn48vcdHWoyAR9FQ2Ff8nSV3rzZYPvvIOlf7beppIYPwbIhOsq45GTJmzLTSI4qiofKXt7rxgQYXalOV5tMQFg2hSmOSyLOdI8rkOTx7XE5jsac', 1, NULL, NULL, '2024-03-07', 1),
	(34, 'j6uoPdgtX11nTMLxfXqb', 'BWB66ndvvAmVUw6ZWMdISm1JBXQxzOqhKavvrZoD56NXXERXgsQueFZhD3gxhWS03MBhcVFHJHI0tUU3nW9JzXD2whO4LEDXtEyElPB9zst64E6k7uFueJvyHwC69bap78PAX1CDhGpJVJ0aaj18IkfeTVacHUNiJaJr5JB6CPz5HTXBDAbjHWmKGiZuw9eOpuQYsHnH', 1, NULL, NULL, '2024-03-07', 1),
	(35, '7w2G5UIW0ZsHywWt4UmG', 'IHGJSabYZITX7XSRjpbnchfDUctEWKVGdQTo2ywiRke4Wz5mwrXIn0LcVgbsPyKlPECEwtkn1HoFluIooCBJJoOqRy8oVCx9m3YFWjecJMwcQYLapTqZff1TsLRAgMSEnGyoXRutz1HDSXda7mvjrWRGXpOMAHH2Z3Eilfw9vtYk3sTBwdl8Xrvt7QIqWcQ81lzX4IXN', 1, NULL, NULL, '2024-03-07', 1),
	(36, 'sukCnZAfOklb5iQZ59TB', 'a2BfvBN7VZMXffORHH4NGX3qVkI8eAdVEpw0QBQZQ617kkQXiz60oNCRUXngaB439GWmBhgdQDWar64EhJeZRQIRvcNW98laPbCAHsMfdr9Xa3vEPb8ewy1uVdWY09Q7d9QWSuIXsnvbyxQgjq8acPNgbr0A7HO65VD2EW5tD8iL2K8TnEAovoJnx7QOTRT35DzBsbMd', 1, NULL, NULL, '2024-03-07', 1),
	(37, 'nZHEcp3CMAFPSAhG95c1', 'rgowA16abGtRkiuB7ITt9bUxZHnuHKRFUqBRsNjGGzVznhHsTSGnUDK6QoGb0XFA6dSMs2I1QRnXNrymIKyqxxeB4TE6w0Feu0YTQe53FLBQUdY3LmvEpBhcc11lpG04y276bLLtzz5A8AOqpKPgGRCxkyuubbcUmEAMvkKzxClaMEgoanwCZ82YPbrl9hwEbIQwEsDj', 1, NULL, NULL, '2024-03-07', 1),
	(38, 'ArmZo8pNAtdrZwLiv3ms', 'YrAT0Xuk9GjYR7HqkdyJTw4VKsVyGAsluuZo5drAKwURDrLN290E4My1dPyG2bEWLr6b5RFFpDwiKzOhwJjse5taJiNOUjWkT36kfh7nYQjtF0BFNCskDM4bRluG1RNRwMDmOYxnFY3D5GzBX4213LB2N7vELVDwtd1oGKJL9IIvMh3ldTRj7Lo9LxB8VylJBbIMKphM', 1, NULL, NULL, '2024-03-07', 1),
	(39, 'xjS7xl88BcdnR5h6I04L', 'rQytflXfncDmbvOtCCgBk9dyOd9gIijPuP9npnzSzCBqg6rFHexjVOdjuZeihSWpfRWPXU2hZiSvDA7MoMDFYbaW9bViTzph0ZwdGYnmlkiAlwQ27wR2u6KXU8MRHpXzLvvsSVq2b0oCYzbnNMjdZeWaaHg05vSDY2qLP7u8Iv27m2o60FN26eFPPgTkEVbf0tnzMADl', 1, NULL, NULL, '2024-03-07', 1),
	(40, 'T8MlnkyiU7oG5cUgoiLa', 'ND9qeRHTLAPMqZxptjlG5UjIaheqBuMN8i1QkuQjmyiI24TPRWDsITM36x5qAIDetqNsUA4oeo9mNaFoe8wPHvQaZYpUQJshef0FUB5wtpGuTFibPRaO2ZDgdYg9cBfjQTkepF0i0PSRb3BR90bSvHN5Nc4RSnRpDzEutRfygUNpR0GgHHc5rOqc9chcL4WScpKrawwV', 1, NULL, NULL, '2024-03-07', 1),
	(41, 'plXt1LZHhl2iPJcNiedB', 'tJXEiJJEAShnoWRK9U1xnEEfPmF8I5AW9vloYU764gpWDWgsgT5QmDH56ogCcsXDwkssxEcEe8iwprSZjJXEcVvBSc5z1chIFKg5cyPlIHSgQTb82kVUQM655D5CaUsPVbSVkAyEO66xLpBAvUqpFLt1Xe9ZHCk2aW0rNTrBHf6tHUL3q1kFV95RW2eegwgAri2hRcvm', 1, NULL, NULL, '2024-03-07', 1),
	(42, 'N324NS6mqUjUlpgfouQC', 'F3g81ryBRWYgXeKcLBBeQLnhEqUv6ZksqnyYrwSBEQNDNmZfFkqpQdDvG7ltHuNXd04cA8warAIgkoCMBNAVQF0eQSrdrZ3NmI2pXJEsYHVKOdPZXUh5Ik1h4vGwKCeIANtwLg3QCm2YyusnwCZbjNp4UQ4edtZC1l3skOqeNhIulqBBKWlhobkE8c0yx0D2Akh5Y03m', 1, NULL, NULL, '2024-03-07', 1),
	(43, 'DGVREGOkROetQC8i3QRU', 'RLeJEu6QsQ8Ga25k3mpJVmAs1QFbiSBzHwR7NfeusUXJvUFTzs0hPU9fsM8xvhMP91aYPeatjMbEiPlLRDRknxohoTgTc2yqWjUjvcEFYTVtY2Hpb0oemdIoPuuV4Oc2pjcTcV4wbdHNixbYu8RgD7Q0SrSzMhTTj7ytleO1IHKRWgbXh1Az30G07scwh7fc58AAZgRt', 1, NULL, NULL, '2024-03-07', 1),
	(44, 'RrtrRGgW8idUjEN8GUtV', 'mNgPUOzTftdgDsm7CqtZWVEDAPMWLsbRJuwbL1aeVTqb3wDCnNeynC3dj7NCieut9b799jO0G308vG4AHVGxueIsFRFhwUMyfE0aQJhFFemC3iJuYMG1DuGW45v6xh27U24SeCNd3usnBh1pUqcEEkyWBG98am9R5Ju3hzCEMvLPKhLaDph6LSZDnWc5KuY7VGoqH9GA', 1, NULL, NULL, '2024-03-07', 1),
	(45, 'X16FUrUNNAXusUIEG6L1', 'py8ayYKXSamctsAiNEIkUBOG8g0ZkjtEC5AHHj3LoIVjwtXiwOIfCeY6JKBPTwXBWGq3m4mNCgRst8ew34W2wJURHuHL0KDMTVytPP3EujIAHKq8qyoqKGcTAac5Z1NHCXrdCpXAK0X2gwFWVta5ypgei8GexEYmpEgmprtPJ5fSIVWOm9O00w7L31FjgDUCVBrQfkvi', 1, NULL, NULL, '2024-03-07', 1),
	(46, 'nzTRzxvVsa0612J7UStk', 'zxLEg4xSKwNcPihKY0JC3cgRQBNTIiZDPSVs6uWh7LwWx3K59PtdT0dnlZ0MG8lajMbuHjgJWBAaWaJWOQqxEFOUR1Nb9aWNVZBCwWeHlrUm1hLgn1cD5zesYxZ9pVNxy2aCDdKFLroELqVESE50eRpK3qaRMzwIdCQJOf22QohJtfnqynL7f47TezSFujWzQwf4PCcl', 1, NULL, NULL, '2024-03-07', 1),
	(47, '6q5GjDGdzYVKq4T6Tij7', 'pjrBV2wqwVZLHUT0e6Da2EmtkbqhQaOv5OSRKihppLMRA41vsrxCq45n4aabNKBvhbVnmJUvDyiHkm5nL3FDsprpR7blAL6nC8GkOa5qtW8lxXuBLn17S1tKGDj34sqMZW2oP1Aph9TdUd9s4VVsnEbipCZRlyBeU8AnoDHie8d1txuZSNuYrkFIQ0fyHnrwYQDdTSzk', 1, NULL, NULL, '2024-03-07', 1),
	(48, '4UDyqqGgU8DSPR3LH6V4', 'uuB8eTk9RJhBFmVeISGrUpa47C2cBw6QKQh6TbEoFmvWyacrOajiVCKskj5bG81p14JtRbjHUqRVoxCyruSXyhcKStLwYxD8viXNqqF8KjuhrXfvwp6TAbCUQawuLn29YpQGn5hhn8hS5oUQ2mnlytOTDdxPqDfrJIjscJFSlRlCWDunWHWMpCdkHgUnlU5OiUh04tcf', 1, NULL, NULL, '2024-03-07', 1),
	(49, 'qM7PYk347ZD5FgNH4iFp', '6MuhGmTQd7FjLPWECGq0I0QAkr3e2JUaIeoiSnyso4RnVEUzg1aSQ1OMCUPBe9bZQ08a080wXHXEpu007l9F4n8WiUQhcqB78HABrptE7glIIvAF5RCVNsSPGDzhkKHb3SEUXCfnpPER8zOtTksYiruo3FncblMlhZSotpWtqPUgbYNK5M7coJZ1ZijsDmP2x2D1yCbu', 1, NULL, NULL, '2024-03-07', 1),
	(50, 'ittnjaPMLGjLuPrveaqi', 'yENBG5DzGd69vMNvZmcUQCZXT3rJV4C9Z8bM6hfZZPWxmh5PxUjRp5fZi1g11VacQf8OZefB1E0MTugvBz1pqnJZAvPM2m6fBPeepmfKUqew4A1iwHeMorSVRWMBBKLv8KLbUEbroHbVhvWjTlJjktAoRm7xZ0FRIfnlS16cNRpWC7HJzf6EBZAZKp6Wrj7Hc91osnZn', 1, NULL, NULL, '2024-03-07', 1),
	(51, 'LPHWcCQnjlpC563Ly0Zp', 'h9DvTtG1of3d468FMUOnHNnCOc8Ci58HRZwnYCMbHQGhgkxtUY67nDCBVrx7jIgNClSqhTx1YdWTmtgQm3aBwKLorZoGvBVIKsoYU771UFeOUaw9FUtTyle0mionTtmQhpgrQhHtxfKZETJ92cvaqEbd9HsJvYnFU9WIaoJfHm9SWE3BMxpZR3sc1JwiqhGU5ljuY6CX', 1, NULL, NULL, '2024-03-07', 1),
	(52, 'HQtp8LKZveswFYUzU5DY', 'N6pZSXXVhFiJ9hiDtjvd6B4Gj3DGecSq1dhfVyUtlD5hEqjuAbjj6ip80DxsHDcTlmx27iBL9yLTFpcEcWZ1fJsRrmO3XnyNy9GCwqf4nGqG1lsuXESAUjVFInsrS3Z0LIZfMqXQBBxAOAQBnMDOBkmwNVsXDzL9phwGzhvmLun4VJoSkqDClEaTMLzLwxeKpbdYozUt', 1, NULL, NULL, '2024-03-07', 1);

-- Dumping structure for table laravel_ecommerce.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Dumping data for table laravel_ecommerce.users: ~0 rows (approximately)
DELETE FROM `users`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
