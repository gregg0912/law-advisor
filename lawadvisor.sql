-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 02:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawadvisor`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2022_12_15_103839_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API token of Gregg', 'c261395ef6ebc5437eb2791fd63da8e7c28d5b8a5961e1abe6254fc770747569', '[\"*\"]', '2022-12-15 09:27:41', NULL, '2022-12-15 08:05:37', '2022-12-15 09:27:41'),
(2, 'App\\Models\\User', 1, 'API token of Gregg', '57fbcc4f3834197ee83518ad63f743b00a1328849510141b722e43978912d439', '[\"*\"]', '2023-03-29 04:18:47', NULL, '2023-03-29 04:11:37', '2023-03-29 04:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `position` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'todo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `position`, `name`, `description`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'This task was updated just now', 'Ipsum perspiciatis ut deserunt quasi cumque esse placeat. Vel distinctio quia impedit optio non perspiciatis. Voluptatem ut optio illo dicta.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:25:36'),
(2, 2, 2, 'Error velit maxime consectetur.', 'Porro ducimus ut odio quia assumenda odit. Saepe et itaque et illo quo veritatis numquam. Tempore necessitatibus sit sit labore. Quod officiis nemo culpa quos sed nihil.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:25:36'),
(3, 5, 3, 'Voluptatem dolorum nihil deleniti asperiores maxime eaque.', 'Nulla voluptatibus ex cupiditate sint velit suscipit. Aut dolores quas aut sint pariatur enim. Ratione id libero id ut. Voluptatem perspiciatis eos recusandae. Consequatur quis nam iure dolores.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:25:36'),
(4, 21, 4, 'Ducimus alias ipsam quas.', 'Quae earum in illum dicta consequatur sint et a. Quia dolor optio quos voluptatem. Aut doloremque et aliquam omnis aut ut aliquid a. Dolor possimus iusto illum molestiae vero reiciendis ipsam et.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:25:36'),
(5, 21, 5, 'Corrupti quis voluptas eveniet est.', 'Vitae voluptas laudantium nisi rerum amet. Deleniti in qui qui rerum suscipit molestiae enim. Veniam in eligendi quisquam necessitatibus sit quia accusantium alias.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:25:36'),
(6, 8, 6, 'Vel et repellat et in officiis accusantium.', 'Placeat dolorem occaecati ex sunt illum voluptatem et. Occaecati dolorem cupiditate minus perspiciatis placeat. Facere corrupti voluptas mollitia eaque et ducimus. Tempore aut illo omnis modi.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:25:36'),
(7, 1, 7, 'Inventore iure iure libero velit ea fugiat et.', 'Voluptatem quaerat quia cumque porro consequatur dolor. Sed quaerat perspiciatis eligendi quia. Rerum reiciendis vel est minus sunt ipsam voluptate.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:25:36'),
(8, 9, 8, 'Consequatur magni aliquam eaque voluptas.', 'Distinctio inventore ab at officiis voluptatem eos. Minus temporibus et quia. Est suscipit quaerat quae minus. Accusantium id maiores aliquam qui occaecati. Aut nihil quis maxime consequatur et quo.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:25:36'),
(9, 19, 9, 'Tempora reiciendis totam nihil.', 'Quo consequuntur explicabo et et. Quas itaque nesciunt inventore ad sapiente perferendis aut. Eveniet at aut consequuntur et temporibus. Libero sed quis deleniti expedita iste.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:25:36'),
(10, 9, 11, 'Voluptates earum id rerum quia accusamus.', 'Nobis totam ut quaerat velit consectetur illo laborum. Libero iusto eligendi ut earum reiciendis. Deserunt error earum repudiandae.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:23'),
(11, 3, 12, 'Ducimus vel iste fugiat pariatur.', 'Est blanditiis qui omnis vel. Aspernatur sit reiciendis rerum doloribus iste. Sit sunt in doloribus nostrum perspiciatis.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:23'),
(12, 6, 13, 'Praesentium suscipit magni dolore quos qui labore.', 'Quis excepturi nulla aut debitis. Quae autem sunt fugiat dolores. Pariatur corrupti maiores est in.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:23'),
(13, 8, 14, 'Eligendi vitae sapiente dolores doloremque.', 'Quasi hic facilis modi quod. Repellat numquam nam accusantium et. Nisi vel temporibus dolor commodi amet perferendis vel.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:23'),
(14, 22, 16, 'Deleniti explicabo a qui id sunt consequuntur rem dignissimos.', 'Rerum sed iure repellat ex saepe animi. Optio accusamus reprehenderit molestias aut dolores. Quia id quibusdam quibusdam ut nesciunt. Sed ex aut tenetur maxime.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(15, 23, 17, 'Esse facere saepe eos ipsam et et et repellat.', 'Rerum delectus quas pariatur beatae. Vero vitae rerum corporis a. Sint nam dolore magni molestias eos voluptatem corrupti.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(16, 13, 18, 'Id quae architecto fuga dolorem est error quae.', 'Aliquid nihil impedit debitis itaque sit vitae. In nisi voluptates rerum iste quam.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(17, 8, 19, 'Neque autem quibusdam maiores dolor.', 'Hic est aliquid et quisquam et. Itaque maiores sunt aut aut voluptas excepturi. Ut deserunt occaecati ipsum quos pariatur.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(18, 4, 20, 'Perferendis est et voluptas quia qui ipsum voluptatem.', 'Voluptas dolorem dolorem repellat non quam rem. Nulla sed ut recusandae. Consequatur sit vero sapiente quis accusantium consequatur. Consequatur rerum fuga iure veniam consequuntur.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(19, 11, 21, 'Voluptas dolorem soluta sunt ut ullam fugiat aperiam.', 'Corporis et dolor itaque. Et iure omnis similique harum molestiae officia. Nulla qui ex tempora voluptatem. Enim sapiente aperiam voluptas possimus.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(20, 1, 22, 'Sed accusantium repellendus voluptatem quo.', 'Quo quo aspernatur eaque non nesciunt atque. Rerum quo porro aut. Iste dignissimos accusamus aliquid delectus velit.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(21, 4, 23, 'Dolores sunt harum et nam quasi ipsa quas.', 'Aut quam qui id architecto. Est in necessitatibus sed. Voluptas velit quisquam repellendus recusandae aut nostrum quia.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(22, 9, 24, 'Ullam architecto ut est accusantium sed illum.', 'Ducimus nobis non pariatur quas soluta rerum distinctio. Quia odio magnam cupiditate ad quo ea consequuntur. Nihil consequatur perspiciatis quae explicabo quidem accusantium.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(23, 7, 25, 'Est qui distinctio maxime ut.', 'Fugit qui ut eos sunt. Aut et optio porro officiis cum. Et laboriosam qui ut voluptas ut est facilis.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(24, 22, 26, 'Culpa quis voluptates atque odit et officia.', 'Dolorum quia quam et quod dolor est doloribus. Et nulla consequuntur nam porro sit. Qui aliquam exercitationem officia officia.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(25, 26, 27, 'Accusantium eos occaecati ipsa aut.', 'Molestiae deleniti ex mollitia non. Ut dolorem explicabo ipsam et sit explicabo dolor beatae. Velit dolorum quam ratione non quae. Rerum cumque repellendus eos quibusdam.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(26, 9, 28, 'Aut ut ex odit quas deleniti.', 'Et ipsa numquam odit neque et pariatur. Expedita porro soluta odio nostrum nam. Sunt quia ad cum eligendi impedit officia.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(27, 7, 29, 'Sapiente incidunt minima veniam excepturi.', 'Voluptatibus suscipit eum quo libero est. Ducimus in dolorem sunt natus nulla omnis voluptatum. Dicta alias doloribus ducimus.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(28, 15, 30, 'Dolores libero dignissimos adipisci itaque labore aspernatur vero.', 'Doloribus quaerat ut eum minima officiis facilis. Est placeat alias laborum odio sit aperiam neque. Nemo est quis maxime qui odio ullam in. Harum beatae laudantium sit voluptatem minima quae.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(29, 5, 31, 'Maxime consequatur tenetur autem.', 'Et nam iste quisquam expedita neque ut. Ipsa sunt totam dolor ipsam sit odit labore. Harum repudiandae aut voluptatibus tempora.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(30, 17, 32, 'Quis maxime quasi alias voluptatem accusantium repellat ullam saepe.', 'Dolore quae sed recusandae et fuga. Distinctio aut voluptates quibusdam repellendus sit. Quisquam ut est et. Et non quia repellat.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(31, 2, 33, 'Est doloribus officia quia ad neque illo.', 'Quos quos velit nobis facere dolor. Voluptas quia sed id. Quia facilis autem recusandae minima autem voluptatum.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(32, 13, 34, 'Vitae dolorem magni quisquam rem quas vero.', 'Non voluptatem ut maxime placeat. Perspiciatis rerum ipsum aliquid rerum assumenda. A reprehenderit sunt voluptatem quos aut ea.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(33, 23, 35, 'Facilis voluptas blanditiis rem omnis aut.', 'Est quae dignissimos aut similique. Corporis ea voluptas consequatur dolores. Velit ratione suscipit culpa ad placeat esse. Consequatur laboriosam illum ut quae dolore minus.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(34, 26, 36, 'Veritatis ipsam enim omnis.', 'Quasi nostrum quidem totam beatae tempora perspiciatis qui aut. Et numquam minus velit sunt exercitationem quod similique.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(35, 25, 37, 'Qui similique quisquam numquam eum.', 'Aut est aut numquam facere quod placeat dignissimos voluptates. Quia dolor rem ea sunt dignissimos doloribus. Consequatur optio accusantium illum iste quibusdam ut labore laboriosam.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(36, 10, 38, 'Omnis reprehenderit neque ab maxime.', 'Ipsa voluptas totam doloribus hic et sint quia. Sapiente quae ipsa quidem.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(37, 1, 39, 'Explicabo magnam iste et non.', 'Facilis quis sit occaecati nihil pariatur aut. Sed reprehenderit doloribus eveniet ipsum voluptatem incidunt ab. Modi occaecati inventore optio nulla dicta et.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(38, 9, 40, 'Esse ut aut voluptatem aut.', 'Id nostrum non perferendis sequi quis. Ut rerum quia est ipsum fuga. Vel ad quod veniam sint et quidem voluptas quia. Sit vitae quis officia suscipit.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(39, 24, 41, 'Quo explicabo placeat officia voluptatum eius.', 'Et porro quidem ipsam. Qui consequuntur ut architecto nisi dolorem debitis qui. Voluptates consequatur commodi harum doloremque rem aut id. Et dolore voluptatibus architecto fuga.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(40, 25, 42, 'Voluptatem tenetur et esse fugit magni ad.', 'Laborum quam libero illum ut. Omnis quia soluta ad. Incidunt est harum numquam quae et vel. Fugiat id quo qui impedit ut voluptate officiis.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(41, 21, 43, 'Rem nemo eum at.', 'Ut qui impedit cumque sed. Sed sapiente soluta est ut quibusdam ab expedita. Repudiandae enim necessitatibus magnam ab quod dignissimos occaecati alias.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(42, 6, 44, 'Eos dolores voluptas quibusdam earum accusamus maiores rerum.', 'Architecto recusandae quaerat voluptate excepturi accusamus sit est. Natus ab itaque accusamus quas saepe iure.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(43, 11, 45, 'Ab impedit reiciendis voluptatem fugiat at dolorem.', 'Est et velit aliquam. Aperiam non aut saepe perspiciatis laudantium nihil omnis. Deserunt est sit sed nulla nostrum. Enim occaecati blanditiis libero at non nam.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(44, 9, 46, 'Unde dolorem mollitia enim in quidem.', 'Facere assumenda est perferendis non facilis et. Qui labore culpa aliquam aut molestiae. Rem unde minima quam laboriosam.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(45, 22, 47, 'Et ut non magni enim omnis qui.', 'Voluptatibus natus doloribus dolor soluta repellat esse. Et qui accusantium non eum. Blanditiis non recusandae in ratione nihil sapiente natus. Exercitationem nemo rerum libero maiores vel et.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(46, 23, 48, 'Quia mollitia quia facere consequatur autem harum.', 'Tempora accusantium provident dicta omnis perspiciatis tempora. Qui voluptas animi sint eum quam. Sunt cumque eum excepturi alias sint. In error incidunt necessitatibus explicabo quia et.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(47, 26, 49, 'Quibusdam velit eveniet et atque nihil voluptas.', 'Excepturi est rerum nulla architecto qui architecto. Assumenda non ipsa dolor ducimus non. Libero id nihil quibusdam excepturi exercitationem et error.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(48, 2, 50, 'Aut ut tenetur aperiam.', 'Laborum aut magni magni earum occaecati. Dolor nemo modi aut exercitationem at. Soluta voluptatum praesentium omnis beatae. Voluptatum totam fuga aut.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(49, 18, 51, 'Qui natus quia vitae sit facere ut aut.', 'Quo saepe suscipit alias. Nemo harum nihil impedit accusamus eveniet quos unde doloremque. Praesentium possimus rerum aut nihil. Est reiciendis quia provident sed et et.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(50, 6, 52, 'Inventore enim voluptates consectetur dolore.', 'Est quasi sit possimus facilis. Repellat quidem non autem. Necessitatibus totam voluptatem qui alias aliquid. Totam omnis eos non pariatur est nulla. Nostrum ut cupiditate et.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(51, 25, 53, 'Qui voluptatibus sint sunt veritatis perferendis.', 'Enim libero enim aut consequatur harum accusamus. Laborum ea quo aspernatur reprehenderit quidem enim. Est harum nostrum quaerat minima possimus non consequatur sed.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(52, 1, 54, 'Eos officiis amet exercitationem voluptatem aut dolor.', 'Veniam ipsum sint perferendis dolores ab rerum pariatur. Quam sint sunt commodi aut temporibus omnis. Ipsa et dolorum incidunt neque quam.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(53, 24, 55, 'Modi cum repellendus voluptates ipsum accusamus consequuntur est.', 'Dolorem ut nemo sed. Amet voluptas soluta in earum. Veniam officia aspernatur enim dolorum natus culpa consectetur.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(54, 1, 56, 'Dolorum ducimus qui dolor sequi ut itaque et.', 'Et dolor sed saepe et est explicabo. Quae autem tempora modi magni explicabo vitae. Labore repellendus sed ea voluptas qui.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(55, 11, 57, 'Voluptatum eos nemo animi ut quas.', 'Laborum aut hic pariatur laboriosam accusamus necessitatibus a. Quia minima dignissimos quia. Id eaque et assumenda quis voluptatibus impedit. Dolorem pariatur atque qui iure dolor.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(56, 11, 58, 'Quia quo quasi debitis eveniet minus amet dolores natus.', 'Quisquam ullam porro assumenda molestiae saepe dolore fugiat aliquid. Vel tenetur et et. Voluptatem ipsam aut sint minus.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(57, 26, 59, 'Sit sit nihil nobis iste.', 'Atque ipsa ut at assumenda. Ipsam voluptates possimus voluptas sunt non deleniti.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(58, 19, 60, 'Eos facilis voluptatibus minima molestiae.', 'Non ut quo suscipit ullam quo. Officia dolores laborum maiores quidem. At aspernatur soluta tenetur ut beatae.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(59, 13, 61, 'Similique corporis ea ut voluptatem veniam molestiae ea.', 'Sequi esse asperiores fugiat expedita molestias a voluptatem. Officiis ab dolor et consequuntur ut est.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(60, 3, 62, 'Nobis voluptate voluptas quo.', 'Ea numquam corporis id fugiat animi corporis. Atque vitae iste fuga fugit voluptatum rerum. Rem sit ut similique facilis ab.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(61, 14, 63, 'Dolor velit qui sunt explicabo quia voluptatum.', 'Qui ipsam error neque dolorem amet qui. Modi consequatur a velit iure necessitatibus. Corporis amet qui cum natus animi officia aut.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(62, 19, 64, 'Aut sequi ullam quia quia mollitia.', 'Omnis nemo et amet est architecto. Aspernatur quis nihil voluptatum id accusantium ut. Voluptates temporibus quia autem necessitatibus et libero. Doloribus autem ad recusandae deleniti quo qui.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(63, 20, 65, 'Quos aut iste ut est hic est architecto.', 'Qui illum rerum amet tempore rerum consectetur. Eius deleniti sint eligendi deserunt aperiam. Maxime sit nesciunt quia ducimus occaecati est. Sint sed eveniet et velit et qui.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(64, 16, 66, 'Minus qui dolor nisi ut.', 'Iure nesciunt non fuga. Unde est dolores eius nihil aut recusandae est. Quas dolor corporis eos quia quaerat. Molestias ut dolore vero vero facere.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(65, 17, 67, 'Temporibus consequatur deleniti et reprehenderit.', 'Aspernatur neque eveniet numquam est maxime. Ipsam magnam iure neque.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(66, 16, 68, 'Incidunt voluptatem quam voluptas corrupti cupiditate reiciendis recusandae temporibus.', 'Excepturi animi aliquid et quis optio. Non libero consequatur facilis sed illo dolore et maxime. Dolorem sit aut illo autem sit optio recusandae.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(67, 25, 69, 'Voluptatem quo voluptas incidunt ullam libero dolores facere magni.', 'Eligendi esse rerum voluptatibus animi illo rerum. Consequatur reprehenderit sunt eaque soluta. Eveniet voluptate eum voluptatum repudiandae est. Excepturi placeat et labore quae.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(68, 26, 70, 'Et voluptatem et unde molestias.', 'Laboriosam sunt porro saepe unde dolorem quo illum non. Reiciendis exercitationem maxime dolor maiores. Soluta est aspernatur aspernatur amet esse molestiae. Voluptas autem accusamus nobis nulla.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(69, 3, 71, 'Tempore ut sequi ut voluptate sapiente provident provident.', 'Vitae iste dignissimos ea commodi dolore debitis dolor. Ipsum iusto minima omnis ut id non neque cum. Quia soluta non possimus expedita molestiae. Ratione dolor id laboriosam ex veniam in qui.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(70, 7, 72, 'Iusto culpa necessitatibus rerum reprehenderit aut ipsum.', 'Eos dolores eos est explicabo eos modi. Blanditiis quasi qui excepturi cum laborum officiis et. Et asperiores et labore quae in aut nesciunt. Sequi id aut maxime et ex quibusdam.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(71, 18, 73, 'Sed minus magnam dolore voluptatum officiis autem ullam.', 'Sed perferendis ipsa ab illum qui inventore ipsum. Quasi velit pariatur ducimus dolore. Accusantium voluptas vel laborum laborum consequatur iure doloribus. Inventore labore nostrum sunt.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(72, 4, 74, 'Vitae sit facere voluptatem ipsa dolor.', 'Aliquam odio velit qui ipsum non totam. Impedit inventore sed voluptate veritatis esse quos qui. Quas esse porro ut alias quia vitae.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(73, 19, 75, 'Error aut quas incidunt molestias sapiente sit itaque.', 'Soluta consequatur eum nostrum tempore enim. Nulla eum nobis et labore sint laboriosam inventore. Assumenda ducimus asperiores earum. Minus quis nam voluptas et aperiam.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(74, 23, 76, 'Quam est et dolores laboriosam ipsa.', 'Voluptatem cum ipsum facere eligendi ipsa necessitatibus architecto dicta. Magni quos ut atque error. Fugiat facere numquam reiciendis voluptatibus voluptate tempora.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(75, 26, 77, 'Voluptatem minima rerum qui dolores earum aut dolor.', 'Autem soluta sed asperiores. Similique qui sequi quibusdam deserunt enim sed eum. Sed illo consectetur consectetur. Delectus non harum quos rerum. Magnam quas nihil et consequatur et omnis quas ad.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(76, 13, 78, 'Sequi dolores minima vitae qui distinctio eos.', 'Beatae quo omnis aut suscipit. Hic omnis optio dolor praesentium qui maiores. Voluptates aut voluptas magni labore dolores.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(77, 11, 79, 'Consequatur repellendus repudiandae aspernatur consequatur sint quaerat vero.', 'Esse enim reprehenderit est quod odit ut cum. Facere doloribus quo quaerat culpa beatae laborum excepturi quo. Ut itaque sit nam tempora quidem at. Qui tempore iste laborum est.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(78, 16, 80, 'Eaque quidem velit aliquid accusantium.', 'Velit libero consectetur dolorem cumque. Rem quis blanditiis nemo fugiat. Sit veritatis esse quidem sint quas. Vel id consectetur voluptas vel.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(79, 10, 81, 'Quia sunt cupiditate quis.', 'Nam ut sed ad aperiam voluptate quia. Deleniti in quia officia est. Enim qui voluptatum quaerat aut ea autem sed. Ducimus voluptates necessitatibus ab enim qui ut porro.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(80, 25, 82, 'Temporibus quaerat iure ratione fuga dolore officiis aut.', 'Minus impedit architecto doloremque iure. Facere eum sit aliquid culpa accusamus eligendi. Quae quo totam sit ut et doloribus.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(81, 10, 83, 'Corporis quis aut voluptatem itaque.', 'Ut sed excepturi vitae sunt quam. Modi aliquam deleniti molestiae maiores dignissimos quia voluptas. Aspernatur tempora ea recusandae ut sit voluptatem quia.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(82, 20, 84, 'Aliquid dolorum qui minus aut ratione.', 'Temporibus officiis molestias voluptatem ad. Quaerat culpa velit quis amet sed suscipit commodi. In harum soluta similique quasi. Ratione reiciendis inventore necessitatibus autem ducimus.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(83, 9, 85, 'Et tempore dicta cupiditate dolor atque doloribus.', 'Consequuntur ea minus placeat exercitationem ut et ducimus. Doloremque est ipsum labore. Eligendi neque a in dolor. Quam quibusdam exercitationem earum.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(84, 24, 86, 'Eum modi rerum corporis eveniet aut.', 'Aliquid officia nam vel ut explicabo officia. Sapiente maiores laudantium atque cupiditate. Atque reiciendis ut ut dolor et rerum.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(85, 16, 87, 'Sit provident omnis exercitationem eius aut molestias.', 'Et maxime eos id voluptatem provident quam. Officiis adipisci sit odio voluptatibus. Eum sint unde voluptas repudiandae quam. Quia numquam et recusandae praesentium voluptas qui quia exercitationem.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(86, 20, 88, 'Repellendus neque eum excepturi perferendis asperiores.', 'Libero eum et aut odit. A dolorem error beatae rerum maiores rerum. Nulla ut qui aut laboriosam qui earum. Ut est eum eos veritatis accusamus illo fugiat.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(87, 7, 89, 'Quaerat aspernatur expedita eum eum placeat odio.', 'Eum dicta consequatur cum error quia vitae incidunt. Doloremque voluptas delectus aut odio.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(88, 18, 90, 'Repudiandae ut nam corporis illo.', 'Recusandae sequi ex minima sunt. Aliquam veritatis doloremque nulla sit. Recusandae voluptate itaque optio dicta magnam illo saepe dignissimos.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(89, 7, 91, 'Et commodi ipsa aut quia fugit.', 'Quos ea dolorem molestias consectetur qui itaque aut. Et magni voluptates ipsum quisquam architecto ut id. Aliquid numquam similique dolores repellendus ut.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(90, 8, 92, 'Autem reprehenderit rerum id doloribus vitae.', 'Vel quis ab ut odio odio earum. Dolorem labore beatae enim nulla aperiam libero dicta. Sint fugiat odio voluptatem reprehenderit. Vel sapiente quod eveniet a illo quia quae.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(91, 2, 93, 'Et velit voluptatem nam odit ipsa.', 'Mollitia sit libero assumenda harum omnis incidunt ut. Nihil perferendis numquam repudiandae. Aperiam aut tenetur sint voluptatem optio aliquid.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(92, 18, 94, 'Porro veniam odit aspernatur eos nostrum a.', 'Quasi non iste consectetur aut quo nobis. Consequatur aliquid facere voluptatem minus autem enim.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(93, 16, 95, 'Quae consequatur aut minima fuga odio rerum quo.', 'In delectus ut eos inventore. Qui ab numquam quasi quo. Necessitatibus fuga id et asperiores. Qui modi tempore ab nemo.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(94, 17, 96, 'Magni voluptatem cum animi rerum.', 'Expedita minima consequatur voluptatibus repudiandae id debitis quia. Voluptas quasi nihil quaerat. Ducimus qui quo quo doloribus quae excepturi inventore excepturi.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(95, 21, 97, 'Dolorem voluptatem esse odio quod minima.', 'Est voluptates et minus molestiae. Suscipit dolor dignissimos reprehenderit optio deserunt omnis. Quasi dicta illo unde magni eius quasi. Quos tempora iste quas aut consequatur sapiente.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(96, 3, 98, 'Aut esse placeat similique eum illum sequi aut.', 'At aperiam itaque maiores doloribus accusamus at numquam voluptate. Maxime non suscipit quibusdam nulla. Magni voluptate sunt dignissimos. Fuga ab necessitatibus quae aperiam nesciunt.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(97, 9, 99, 'Ut natus enim aut provident provident rem doloribus maxime.', 'Ex consectetur officiis suscipit ut officiis. Beatae quisquam voluptas placeat at. Cupiditate adipisci sed eum assumenda. Tempora hic praesentium mollitia minus qui quas illo.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(98, 8, 100, 'Est ab occaecati voluptas totam aperiam corrupti.', 'Voluptatem nam distinctio quae unde non. Dolor consequatur modi tempora.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(99, 1, 101, 'Voluptatem omnis accusamus fuga non molestias ut quod.', 'Sed fuga ratione et velit. Non esse dolor nihil corrupti. Ut sit explicabo est et laboriosam minima. Et amet cupiditate odit vel aut.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(100, 20, 102, 'Voluptates explicabo voluptate mollitia blanditiis modi sunt.', 'Nesciunt iste sint maxime qui. Iure alias illum sequi dolor. Quia qui explicabo et provident. Magnam aliquid maiores eum beatae dicta.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(101, 23, 103, 'Aspernatur dicta inventore impedit ea voluptate molestias excepturi veritatis.', 'In consequatur et quibusdam laudantium iusto quos. Dignissimos ut similique nihil non. Alias quia dolore harum culpa id dolor. Officia saepe expedita totam excepturi.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(102, 23, 104, 'Est qui magnam at autem eos aut molestiae hic.', 'Qui quia ut eum natus hic maiores error. Voluptas nesciunt voluptatem omnis fuga enim rerum.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(103, 6, 105, 'Itaque nobis excepturi molestiae recusandae aspernatur quisquam.', 'Soluta deserunt corrupti ut dolorum iusto facilis. Consectetur corrupti et aut dolor quia. Qui quasi dolores ipsam laudantium fugit.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(104, 16, 106, 'Iusto nam repellat amet eveniet repudiandae.', 'Voluptatibus debitis eaque ad ratione repellendus. Eveniet doloribus enim nihil impedit.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(105, 9, 107, 'Veritatis vero corporis aut ut.', 'Beatae quaerat perspiciatis consectetur velit sunt et ratione quam. Odio velit velit et quaerat sint quia. Ipsa doloribus soluta tempora laborum autem mollitia. Rerum ut explicabo quaerat.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(106, 5, 108, 'Eveniet qui deleniti voluptates minus voluptas veniam et.', 'In ut placeat sit inventore et error. Ut et qui vero accusamus quasi sapiente. Fugiat laudantium ab qui vel. Minus qui ratione repudiandae aliquam optio.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(107, 9, 109, 'Fugiat sed rerum omnis sint illum ipsa expedita vel.', 'Minus tempora et quia. Accusantium nulla dolorem incidunt iste est. Repellendus ratione eaque natus atque. Minima quia aut minima eaque sed sit ratione ea.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(108, 8, 110, 'Non id quia voluptas ea est consequuntur numquam.', 'Ut dolor voluptatibus in fugiat incidunt sint ut. Amet quam facilis quo omnis laudantium. Molestiae saepe minus itaque. Sit eligendi sint ut.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(109, 8, 111, 'Placeat consequatur nobis quas ex voluptate.', 'Sequi inventore voluptatum alias sit. In sed minus sunt libero aperiam. Eum optio nihil consequatur libero et quia vitae. Distinctio ut voluptatibus ad qui atque.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(110, 20, 112, 'Id odit et esse molestiae.', 'Ducimus quia doloremque est et et omnis consequuntur ab. Numquam animi maiores enim rerum qui. Voluptatum sint eligendi magnam accusamus sed dolorum.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(111, 3, 113, 'Ab est eum eveniet hic aperiam rem.', 'Laudantium et asperiores et qui repudiandae blanditiis. Pariatur repudiandae qui qui quibusdam minima tenetur. Reiciendis amet debitis non ratione. Mollitia sapiente molestias voluptas vel.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(112, 17, 114, 'Quae aspernatur veniam non.', 'Deserunt ea nihil autem asperiores rem dolor. Nisi reprehenderit aut ut at quis magnam necessitatibus error. Beatae id eaque beatae officiis.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(113, 7, 115, 'Praesentium distinctio quo et quod neque sit.', 'Consequatur aut quisquam perferendis earum animi quo numquam. Labore placeat in et quam sed dolorum.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(114, 11, 116, 'Id at voluptatibus expedita veniam eaque.', 'Voluptatem deserunt maiores quae hic in pariatur. Et quis odio ab explicabo sint sunt blanditiis et. Nulla nobis enim eius repudiandae labore sunt qui incidunt. Amet et iste saepe optio quia.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(115, 21, 117, 'Assumenda recusandae saepe blanditiis qui eaque.', 'Et odit voluptatem cupiditate consequatur in. Saepe earum distinctio ut quisquam aperiam aut. Sed quod vitae quas inventore fuga omnis cumque.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(116, 18, 118, 'Soluta doloremque non nulla sunt.', 'Non natus minima quia dolore omnis neque non. Rerum et vitae ipsam facilis tenetur fugiat ducimus. Velit explicabo id quos quia dolor.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(117, 17, 119, 'Fuga unde doloribus dolorem.', 'Nemo voluptatem velit cum alias aut et ullam. Impedit nostrum aliquid voluptate quod cum vel. Sequi doloremque assumenda impedit eligendi tenetur nam et animi.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(118, 2, 120, 'Perspiciatis et est quibusdam odio.', 'Laboriosam placeat ut recusandae exercitationem. Dolor ut quia sit vel rem aut. Molestias illo distinctio nihil.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(119, 23, 121, 'Natus dolorem beatae eaque et.', 'Similique fugiat velit autem consequatur non. Temporibus iusto consequatur porro ut quibusdam qui. Amet quae non ab atque voluptate tempora quasi.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(120, 6, 122, 'Qui unde consequatur nam ut nemo officiis unde.', 'Tenetur commodi necessitatibus blanditiis quasi cum. Sit illo nobis aut delectus recusandae ullam. Autem aspernatur consequatur quod assumenda est. Quos fuga iure et est ex ipsum.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(121, 21, 123, 'Maiores similique architecto eum.', 'Enim et soluta et consequatur sit. Odit omnis voluptatem aut iste at occaecati commodi. Officiis veritatis quis dolore nihil.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(122, 10, 124, 'Id qui ut aperiam cupiditate et mollitia.', 'Dolorem vero ut error. Inventore ut eum dolorum vel. Sapiente dolorem delectus voluptatem et. Magnam dolor omnis eligendi quam quia architecto suscipit ab.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(123, 10, 125, 'Doloribus ullam praesentium quae et est et.', 'Fuga sunt recusandae aut consequuntur. Enim non saepe enim aperiam ducimus saepe esse. Est provident quia et illum ratione necessitatibus exercitationem.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(124, 18, 126, 'Eos nemo est hic omnis eaque consequuntur deleniti.', 'Et debitis provident corporis. Voluptatum maxime maiores cupiditate consectetur eum est.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(125, 3, 127, 'Id sit excepturi voluptatem in et consequuntur.', 'Reprehenderit voluptatem perferendis rerum et consequatur corporis consequatur. Sed perferendis cupiditate quis rerum hic occaecati. Suscipit modi qui praesentium porro.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(126, 5, 128, 'Accusantium sed consequatur doloremque ratione omnis unde illum ea.', 'Adipisci sunt tempora repudiandae. Voluptatem quo a et rerum ut. Vero officiis totam explicabo modi.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(127, 11, 129, 'Cum explicabo dolorem eum quibusdam ea provident eaque.', 'Et et fugiat perferendis impedit. Sed et veritatis autem eos minus. Omnis voluptatem a quo amet sint natus.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(128, 13, 130, 'Consequuntur voluptate quo vel voluptatum dignissimos et velit non.', 'Sint a nulla qui et ipsum. Aperiam est fugiat dicta consequatur. Itaque molestiae quia unde et.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(129, 3, 131, 'Praesentium labore autem ipsam eos dolor exercitationem aut.', 'Atque qui ex labore dolorem et. In soluta totam debitis tenetur autem odit expedita. Aliquam aspernatur laudantium est et.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(130, 7, 132, 'Placeat eveniet rerum optio blanditiis.', 'Nobis aspernatur beatae tempore qui provident modi. Quis illum distinctio consectetur omnis officiis id et. Nesciunt adipisci eaque perspiciatis nihil aut non quaerat.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(131, 1, 133, 'Consequuntur qui non odio id minima aliquam architecto.', 'Dicta maxime et ab explicabo et. Id facere eligendi fugit ex sed tempora. Eius quas ut voluptatum enim culpa sit. Sit laudantium illum perferendis. Quod perferendis est est delectus cumque quis.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(132, 2, 134, 'Quo quaerat mollitia at rerum.', 'Architecto sed enim debitis voluptates nihil fugit explicabo. Est qui aut saepe enim minus. Ipsum ratione distinctio assumenda. Aut debitis nihil voluptatem maxime. Est sit iusto itaque quaerat quia.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(133, 4, 135, 'Aliquam sequi ut culpa illo.', 'Voluptatem perferendis velit reprehenderit. Ullam error qui sequi consequatur totam atque aperiam. Facere molestias dolor et esse illum reiciendis cumque. Tempora labore totam dignissimos alias.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(134, 2, 136, 'Qui aut sit sit qui dicta eum placeat.', 'Autem et a voluptatem minus inventore adipisci omnis. Eum vel nesciunt consectetur est ut. Voluptatem fuga illum sed eius aut possimus est.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(135, 22, 137, 'In enim ab ea sed modi magni.', 'Ut quasi quisquam qui sapiente ut. Nulla ipsam qui accusamus ullam itaque temporibus libero quisquam. Facilis sit omnis voluptate culpa optio enim. Tempora beatae et temporibus natus.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(136, 21, 138, 'Maxime exercitationem earum sapiente quaerat.', 'Labore explicabo unde et vitae cupiditate at. Porro fugiat enim voluptatem dolor ratione.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(137, 16, 139, 'Culpa enim id commodi unde sequi nemo harum error.', 'Ea alias error nisi provident quaerat officiis voluptas. Enim cupiditate quia perspiciatis natus doloribus ab. Ex accusamus est deserunt quia labore maiores recusandae ex.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(138, 18, 140, 'Eum eveniet aut est qui ad sapiente et.', 'Officia eius a maxime ut nihil delectus debitis porro. Placeat porro dolorum iste voluptatum. Dolores vel et minus commodi enim.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(139, 13, 141, 'Omnis sint vero officia repudiandae cupiditate qui illo.', 'Dolorum odit omnis voluptatem aut sint dolorum. Quo rerum in rerum eaque explicabo rem fugiat. Consequatur eum sed molestias vero sequi corporis voluptatem. Nam ut fugiat natus.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(140, 12, 142, 'Consectetur alias necessitatibus voluptatem ducimus rerum autem.', 'Asperiores sed aut sed quas aliquam repudiandae alias nostrum. Et dignissimos est beatae facere officiis. Nostrum eligendi odit non. Dolor doloribus labore officiis quo porro id.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(141, 20, 143, 'Consequatur aut ut autem deserunt non vitae.', 'Ad ipsa minus et. Velit velit quae sequi corrupti blanditiis. Commodi dignissimos soluta enim voluptatem blanditiis rerum.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(142, 14, 144, 'Voluptate atque fugit magnam voluptates.', 'Expedita cupiditate vero et ut corporis enim. Sint quaerat aut expedita minima. Nostrum doloribus illo id dolores iure quidem. Minima quo ea rerum quis soluta ut labore nam.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(143, 13, 145, 'Qui eveniet et rem quae voluptatem.', 'Ea fugit eos molestiae occaecati ut. Rerum iusto voluptas voluptatem est. Aut est iusto in quae non consectetur dolore impedit.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(144, 2, 146, 'Est laborum doloremque voluptatem ab quod.', 'Sed consequatur nulla quia explicabo veritatis. Praesentium ad beatae omnis quia ea. Non velit ut vel soluta nulla natus. Aut autem aut eaque.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(145, 17, 147, 'Reiciendis tenetur odio voluptas facilis quo.', 'Consectetur fugit dolor velit blanditiis aliquid nulla. Cum voluptas ipsam nobis qui. Itaque adipisci aut amet quasi.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(146, 20, 148, 'Repudiandae provident laboriosam aliquam temporibus.', 'Maiores praesentium accusamus possimus minima consequatur et temporibus voluptate. Nulla sunt tenetur et non sint sed. Magni fuga quo delectus. Beatae eum commodi magnam cupiditate.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(147, 14, 149, 'Qui est quam ut labore et ducimus nulla.', 'Optio dolorem sapiente et nihil optio. Quas eius qui enim debitis aut. Sint molestiae qui cumque quasi est.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(148, 21, 150, 'Velit dolores quaerat sunt est qui qui eveniet est.', 'Quod ullam exercitationem voluptatem impedit sint alias. Eaque rerum cupiditate voluptatem qui soluta eum autem.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(149, 8, 151, 'Quis perspiciatis ad labore occaecati aut cumque.', 'Molestiae qui rerum aut nulla ea cum enim. Dolores eum et eum omnis neque iste soluta.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(150, 9, 152, 'Nihil consequuntur ea molestiae aut.', 'Et odit mollitia ea cum. In assumenda quis quaerat quam. Sed facere quis in quis. Vel similique neque iusto est minima dolor nesciunt.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(151, 10, 153, 'Aut cupiditate qui cumque.', 'Similique ipsa ut dolorem voluptas eum a pariatur. Cum aut explicabo dolorem quo. Suscipit molestias assumenda et rerum optio non quia. Quas sint est ut consequatur repellendus.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(152, 23, 154, 'Molestiae eveniet et mollitia quasi rerum consequatur veritatis eveniet.', 'Id quis ad iure. Velit quia earum quam consequatur dicta quis quasi. Corrupti voluptatum iste et quis rerum consectetur.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(153, 15, 155, 'Maxime cumque et dolorem sunt sunt non.', 'Saepe vel voluptate cupiditate dignissimos necessitatibus tempore consequatur. Iste odit aut ut eum.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(154, 3, 156, 'Maiores est voluptatem itaque dolorem.', 'Reprehenderit temporibus fugit aut delectus enim velit. Laudantium consequatur rerum esse eum qui beatae culpa. Aliquam fuga dicta placeat vel vel libero.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(155, 5, 157, 'Quis voluptas consequatur dolores totam.', 'Natus doloremque enim mollitia unde aut vitae minus. Voluptatum alias quo eum minima voluptatem. Officiis sed tempore autem voluptatum architecto itaque. Eos soluta necessitatibus iusto ipsam.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(156, 8, 158, 'Ea sed nisi expedita nobis possimus recusandae quis.', 'Nulla vitae et odio est voluptate ipsa. Nihil iure quibusdam minima sapiente asperiores nobis. Vel ex omnis ab illum assumenda non.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(157, 13, 159, 'Aspernatur quidem vel dolore beatae aperiam dolor.', 'Provident ab eos officiis illum. Nam id ratione dolor. Rerum facere numquam laborum et qui vitae repellendus nulla.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(158, 14, 160, 'Similique beatae sunt eos sit blanditiis commodi et.', 'Cumque iusto vero reiciendis sunt sunt reiciendis aut quos. Accusamus ea ad officia nihil aliquam ullam inventore dolorem. Quae minus sit est.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(159, 3, 161, 'Voluptate cum quod nostrum fuga.', 'Sint enim alias voluptate. Tenetur dolor explicabo nihil accusantium consequatur in. Quis enim laboriosam et officia.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(160, 12, 162, 'Fugit itaque autem pariatur dolores quis excepturi.', 'Magni illo voluptatum vero rerum alias delectus et. Molestiae cum provident iure soluta dicta. Rerum delectus est ut qui numquam numquam.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(161, 22, 163, 'Eligendi nam porro doloribus.', 'Modi amet quos nam harum architecto velit. Iure sed et sit consequatur necessitatibus. Quas et ut hic quam sint. Non vel facere ut molestiae. Libero atque exercitationem ut aut.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(162, 17, 164, 'Fugiat id minima rerum vel nobis.', 'Dolores consectetur qui qui libero. Deserunt qui ut dolores magni sit provident. Fugit rem et quis quisquam ipsum qui beatae. Sit est qui vel eaque cumque aut.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(163, 6, 165, 'Iusto et aut beatae.', 'Earum ex suscipit cum est. Laboriosam excepturi aut ut inventore. Voluptatibus natus perspiciatis doloremque sequi minima. Assumenda ipsum eveniet qui omnis nemo.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(164, 11, 166, 'Esse asperiores optio consectetur voluptatem qui deleniti suscipit.', 'Quos ipsam dignissimos consequatur et tenetur nihil sunt. Optio molestiae quisquam velit et repellat accusantium.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(165, 10, 167, 'Quaerat rerum enim praesentium provident voluptates ex et.', 'Sunt ut laudantium repellendus fugiat enim nulla aut voluptatem. Sed voluptatem ut et laborum. Aut voluptatem enim sint et assumenda aspernatur ut.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(166, 11, 168, 'Ullam quibusdam quam dignissimos et minus nulla.', 'Officia et nesciunt incidunt et rerum saepe. Voluptas dolorem error autem. Libero et sit voluptas a sapiente. Facilis magni odit rerum saepe.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(167, 22, 169, 'Amet facere vitae qui magni dicta illum nemo.', 'Voluptas inventore aut similique maiores ab voluptatem. Sed accusamus deleniti voluptatum quia perspiciatis optio. Nemo est consectetur consequatur. Sunt est omnis et omnis.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(168, 16, 170, 'Minus consequuntur expedita modi repudiandae in est.', 'Quos officia suscipit occaecati consequatur. Velit temporibus modi exercitationem commodi doloremque dolores id. Quia et similique rerum maxime aut enim.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(169, 22, 171, 'Enim ipsa harum nemo dolores quia quia quis et.', 'Assumenda quia vitae minima aut. Debitis eveniet adipisci officia minus praesentium. Rerum odit dolores consequuntur praesentium accusantium. Provident at id autem quia modi dignissimos quod.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(170, 21, 172, 'Id rem molestiae aliquam dolores.', 'Temporibus ipsam fugit dignissimos et deserunt iure non. Quia reprehenderit nostrum qui reiciendis assumenda. Voluptas incidunt animi laudantium iusto. Ut magnam officia aliquam quia labore.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(171, 15, 173, 'Ipsam adipisci ipsa aliquid id.', 'Rerum corrupti officiis blanditiis neque est ab. Eaque autem est odio ea tempore. Voluptas error sint est quis occaecati adipisci. Cumque harum repellendus rerum harum dolor voluptatibus ut dolores.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(172, 19, 174, 'At ipsa molestiae et non nemo.', 'Quo omnis reiciendis ea aut sint explicabo necessitatibus. Et sed quam et. Corporis molestiae nam adipisci iusto odit nobis.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(173, 16, 175, 'Ea ad quia veritatis est saepe voluptatibus.', 'Accusamus laudantium recusandae qui quo facere numquam voluptas. Dolores et velit et ipsum et.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(174, 7, 176, 'Eum rem ut sunt voluptates quisquam et.', 'Est architecto assumenda quod similique eos dolor natus dolor. Beatae minus atque aut eaque aut. Ad vel et cum.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(175, 14, 177, 'Accusamus perspiciatis qui provident incidunt.', 'Voluptatum quae odit reprehenderit rerum non a. Rerum quia quisquam consequatur vel. Iure et ipsa officiis iste eum nisi.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(176, 25, 178, 'Voluptates qui necessitatibus perferendis est sint nam veniam.', 'Sed eveniet expedita officia quia temporibus reiciendis. Omnis neque voluptates et eum fugiat laborum mollitia. Debitis eos reprehenderit est accusantium. Nihil sit qui rerum aliquam asperiores.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(177, 23, 179, 'Sapiente quasi non sunt placeat enim quisquam aliquam unde.', 'Aperiam laboriosam cumque voluptatum pariatur fugit praesentium totam. Ullam blanditiis autem aut sint. Repudiandae accusamus a natus omnis.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(178, 26, 180, 'Consequuntur non dolore ut.', 'Autem eum aspernatur assumenda assumenda. Voluptatem vitae ad et vel ea nihil assumenda. Omnis sint debitis sint quia vitae. Nisi ipsum ducimus rerum. Eaque consectetur nisi tempora expedita aliquid.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(179, 4, 181, 'Ut expedita enim accusamus voluptatibus veniam rerum.', 'Voluptate tempora inventore rem quis sed. Exercitationem eos repellendus molestias doloremque aut iure. Est quisquam ea voluptatem ullam.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(180, 16, 182, 'Sed perferendis numquam assumenda consequatur voluptatem et.', 'Officiis nesciunt adipisci dolor itaque deleniti. Et voluptatem voluptatem facilis et et. Autem sit pariatur quisquam magnam consequuntur id.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(181, 23, 183, 'Error expedita dolorem sunt autem voluptatem.', 'Vitae quaerat veniam et omnis. Amet possimus placeat atque voluptas ipsum. Quis incidunt dolor voluptas veniam omnis quo.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41');
INSERT INTO `tasks` (`id`, `user_id`, `position`, `name`, `description`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(182, 18, 184, 'Rerum omnis et voluptatem velit ratione.', 'Quia maxime consequuntur placeat. Eos error id ab et et sit at. Quae commodi harum aperiam sint in consequuntur. A non vero nihil sed aliquid.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(183, 25, 185, 'Dolorem veritatis qui qui itaque atque soluta qui.', 'Voluptatibus eius eum eos nostrum dolorem dolorem incidunt perferendis. Fuga qui labore dolorem. Officiis sint voluptate et tempora.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(184, 9, 186, 'Consequatur molestiae magni enim nostrum.', 'Magnam cupiditate quas esse voluptatum eum laudantium. Itaque sed odio consequatur harum recusandae. Possimus est quaerat nisi ut. Et rem natus et vitae ut vero.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(185, 13, 187, 'Id aut dicta hic impedit.', 'Quidem quam minima officia neque praesentium perspiciatis. Iste qui impedit eum. Ad commodi quis omnis in officiis omnis minus in.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(186, 13, 188, 'Voluptatem et illum quaerat.', 'Facere fugit dolorum nulla natus deleniti repellendus molestias. Ullam accusantium sit nemo voluptates est. Excepturi nam omnis illo aspernatur sunt est.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(187, 5, 189, 'Ad atque ut animi.', 'Esse aliquid cum voluptatibus praesentium voluptatum. Quis dolores numquam velit ullam est illum. Non qui inventore et nostrum reprehenderit.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(188, 7, 190, 'Fugit cupiditate eos aliquid enim quia voluptatem enim sed.', 'Aspernatur harum nihil et expedita est. Molestias sed est ea rerum optio omnis a. Ea ut magni enim enim inventore laboriosam qui. In sunt reprehenderit accusamus magnam.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(189, 19, 191, 'Odit nisi quam est reprehenderit fugit.', 'Blanditiis nemo veritatis quos excepturi est dignissimos tempore odit. Officia dolor quia tempora tenetur unde. Voluptas ad est maiores.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(190, 23, 192, 'Maiores accusantium soluta autem aut.', 'Non non et quas necessitatibus dolore ea omnis. Quaerat dignissimos necessitatibus recusandae. Nisi et quod eius voluptatem laborum cupiditate rerum nemo. Harum et nostrum qui ut sit sit inventore.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(191, 16, 193, 'Facere libero eveniet reiciendis praesentium porro et distinctio odio.', 'Repudiandae eos ut quam laudantium. Aut et explicabo error neque ut. Perspiciatis beatae accusamus cum quis nisi ab sunt.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(192, 2, 194, 'Nihil voluptatum odit est at est.', 'Dolor quia qui laborum nobis voluptas. Ipsa hic nemo sunt aut nesciunt expedita. Sapiente ut voluptatem est praesentium velit.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(193, 24, 195, 'Dolor saepe fugit veniam et.', 'Debitis dolorem suscipit delectus sit. Eligendi fuga omnis qui aliquid sit rerum provident. Excepturi voluptas et et omnis. Sit dolorem et blanditiis optio.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(194, 2, 196, 'Est id tenetur et.', 'Sed ea vel sapiente pariatur dolorem quo voluptatem. Reprehenderit eligendi doloribus ea delectus. Assumenda et laboriosam a qui perferendis.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(195, 5, 197, 'Dolores nisi non possimus eum culpa perspiciatis.', 'Cum nesciunt quia autem autem dolor cum qui. Cumque dolore sed tempora est odit veritatis iure. Laborum aut molestias voluptatem et. Qui ipsum quia voluptatem eum qui.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(196, 4, 198, 'Iste deleniti non tempora veniam et quod saepe.', 'Voluptas voluptates esse enim optio saepe. Vitae est repellat itaque veritatis. Neque voluptates occaecati temporibus cum maiores ut. Deserunt consequatur aut illum hic qui expedita debitis.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(197, 14, 199, 'Nobis iste architecto repellat nihil tempore optio iure illum.', 'Maxime atque natus reiciendis itaque dolores amet sunt. Quaerat maxime quam pariatur minima. Laudantium consequatur accusamus totam ut.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(198, 1, 200, 'Consequatur ut sunt quia quisquam maxime temporibus.', 'Veniam corrupti maxime eius aliquam maxime ut. Neque distinctio nulla vitae qui. Ut aut et porro.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(199, 18, 201, 'Voluptatem accusantium reprehenderit consequatur qui ut.', 'Et voluptatem sint aliquam non fuga vel. Nulla vero tempore inventore dicta vel alias. Magni error inventore ex magni. Consequatur eaque quia accusantium doloremque iusto aut.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(200, 24, 202, 'Ea molestias itaque exercitationem.', 'Maxime totam explicabo corporis nobis nemo tenetur id in. Impedit veniam natus velit consequatur eius qui. Qui odit libero qui nam nulla.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(201, 14, 203, 'Expedita aliquam voluptatem ipsa ea libero quis.', 'Odit aut eos quisquam. Et minima a est laborum. Reprehenderit asperiores veritatis deleniti dolor.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(202, 21, 204, 'Ex placeat fugit nemo eveniet.', 'Qui atque et qui aspernatur quae sed. Ipsum distinctio et rerum omnis. Voluptatibus sed non nemo ipsam maiores saepe unde.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(203, 14, 205, 'Ut sapiente ut voluptas in ratione dolores.', 'Fugit eligendi modi explicabo quia dolorem quibusdam natus. Dolores est et aut non explicabo. Ipsam esse nulla at voluptatum. Corporis itaque id et omnis quisquam et iusto.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(204, 22, 206, 'Enim nesciunt ad error quo consequatur accusamus.', 'Aspernatur hic distinctio distinctio fugiat ipsam. Quae nobis est commodi doloremque. Laboriosam aliquam id magnam.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(205, 7, 207, 'Cupiditate quae qui enim eos facilis in.', 'Officia distinctio exercitationem officiis alias vel. Autem quis doloremque aut excepturi rerum. Consectetur aspernatur non esse praesentium. Est aut error quia nam.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(206, 1, 208, 'Aut harum doloribus accusamus consectetur ea qui.', 'Voluptatem molestiae expedita quod voluptatum repellendus. Aspernatur est autem enim atque sed facere libero. Id id omnis in ipsam est et. Error dolores vitae aut perspiciatis.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(207, 4, 209, 'Atque qui error et laborum quo ratione.', 'Earum eius qui commodi sit veniam dolores. Voluptates aut dolores excepturi placeat quae sapiente porro. Natus adipisci mollitia necessitatibus consequatur ea eveniet adipisci ab.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(208, 9, 210, 'Ad dolorem quia consequatur ut doloremque.', 'Quo nisi eum sed vel error ut. Qui enim a harum cum. Aut fugit et voluptatem odit a dolorem molestias.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(209, 13, 211, 'Atque ullam quia tempore maiores.', 'Ratione minima sequi omnis natus impedit officiis. Nesciunt fugiat sunt cumque molestias quos. Officiis eum sapiente iste est modi. Aliquam occaecati consequuntur delectus eum minus sed eveniet.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(210, 12, 212, 'Eum nihil quas velit corporis non est.', 'Ut quaerat qui aut voluptatibus est ut. Aliquam neque cumque et sint. Tenetur fugiat velit blanditiis iure earum adipisci repellendus.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(211, 13, 213, 'Porro nostrum quia laborum consequuntur.', 'Dolores perspiciatis aspernatur similique minus dicta consectetur. Aliquid praesentium et rerum pariatur iusto quo inventore. Natus atque id molestiae eligendi.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(212, 25, 214, 'Facilis perferendis sit voluptatem velit a et non.', 'Dolores ut est in aspernatur a veniam cupiditate temporibus. Ipsum repellendus quia qui assumenda nisi quia hic. Est dicta ipsa quibusdam in. Rerum natus fugit illum harum et.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(213, 9, 215, 'Doloremque eius dolorem ipsum ab.', 'Id eum minima consequuntur aspernatur. Natus in sunt quibusdam quis non qui error ut.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(214, 2, 216, 'Quas officiis exercitationem nisi repellat officia est repellat.', 'Beatae vero et mollitia. Et repudiandae delectus omnis repellat et molestias atque. Quia assumenda consequatur animi blanditiis modi.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(215, 25, 217, 'Facere numquam nihil non vero doloribus voluptatem ipsa repudiandae.', 'Quo architecto tempora quisquam. Maiores pariatur eos reiciendis et velit accusamus. Sed est accusantium iure.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(216, 8, 218, 'Labore tempora minima qui reprehenderit hic eius provident.', 'Temporibus porro et sunt est. Ad ipsam non deserunt placeat perspiciatis. Sint reprehenderit sit totam in et sed aut. A quasi deleniti nesciunt corporis sit.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(217, 9, 219, 'Omnis maiores nemo et perferendis alias ratione.', 'Officia velit inventore dolorem esse quod alias. Necessitatibus dolor cumque aut molestias. Nam repudiandae quisquam mollitia temporibus. Accusantium autem earum distinctio necessitatibus.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(218, 20, 220, 'Repudiandae sit eum aliquid eveniet eligendi a.', 'Inventore ea ut ipsam illo sequi. Corporis in quaerat voluptatem aut.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(219, 26, 221, 'Blanditiis in molestias explicabo tempore.', 'Aut provident suscipit nostrum quasi consequatur. Repudiandae dignissimos quibusdam tempore at cupiditate mollitia. Itaque rem ut et.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(220, 13, 222, 'Molestiae repellendus eum occaecati necessitatibus praesentium tenetur dolore.', 'Veniam expedita facilis nihil fugit et. Quam illo enim quas totam inventore aut. Dolores magni facilis laboriosam est dolor et.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(221, 3, 223, 'Distinctio dolores eum sunt est error sequi.', 'Architecto natus facilis deleniti esse. Quam commodi optio aut sit at. Id distinctio ipsam aut qui adipisci et assumenda.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(222, 4, 224, 'Est eos dolores perspiciatis ratione optio.', 'Eveniet iste inventore nemo minima. Totam aperiam quidem qui repudiandae.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(223, 2, 225, 'Saepe commodi amet fuga at mollitia.', 'Illo recusandae laborum eligendi in excepturi pariatur. Accusantium vitae sint ab tenetur.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(224, 19, 226, 'Cum quos dolor blanditiis nam.', 'Nihil totam ut ratione doloremque aut molestiae. Autem mollitia ullam inventore libero. Minima explicabo tempore dolores blanditiis. Possimus voluptatem ut et doloremque neque incidunt.', 'medium', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(225, 8, 227, 'Tempore numquam eum et tenetur qui.', 'Iste nam vitae rerum et. Recusandae quo consequatur itaque distinctio expedita aperiam ab. Accusamus magni et rem est aliquid. Eum nostrum consequuntur aut ratione quos itaque.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(226, 14, 228, 'Quo impedit dolor dignissimos consequatur nobis esse dolorum dolor.', 'Iusto ea in porro dolorum aspernatur fuga amet. Eaque quasi adipisci qui ex dolorem nam. Omnis repellat perferendis ad et assumenda rerum consectetur.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(227, 4, 229, 'Sint aut voluptatem pariatur animi laboriosam nam dolorem.', 'Sit distinctio ut commodi consectetur. Eaque voluptates et laboriosam corrupti. Excepturi labore et sit magnam.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(228, 5, 230, 'Provident numquam velit repudiandae recusandae ut ea aspernatur sit.', 'Nobis velit et nulla expedita illo. Ea est asperiores nihil. Debitis debitis nisi in nostrum. Molestias officia placeat facere iste quo reprehenderit.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(229, 25, 231, 'Consequatur suscipit perferendis mollitia nulla harum eius ea qui.', 'Minus quam aut ipsum. Non aut adipisci dolores optio qui ullam sint. Error dolor nulla sequi non.', 'low', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(230, 19, 232, 'Quia voluptatem voluptatem voluptate.', 'Perferendis velit assumenda sed quisquam esse dolorem. Fuga qui consequatur eveniet soluta velit ratione. Molestiae consequatur et quis sunt tempora accusamus repudiandae.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(231, 23, 233, 'In inventore et alias ea sit laborum dolorem.', 'Expedita dolorum sit qui eveniet dolores. Alias error eaque rerum sit. Qui nisi praesentium aperiam. Ea et assumenda similique iusto omnis est expedita.', 'low', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(232, 23, 234, 'Labore voluptatem rem amet ab et quia.', 'Et deleniti soluta quasi aut voluptatem consequatur. Et enim ea et et incidunt quo. Consequatur ad voluptas voluptatem tempora atque quia ducimus.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(233, 9, 235, 'Optio qui sunt corrupti recusandae qui incidunt cum omnis.', 'Occaecati autem totam minus aspernatur ducimus harum laboriosam. Delectus occaecati nihil ad a in. Voluptas repellendus molestiae quae voluptatem adipisci.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(234, 8, 236, 'Id provident reiciendis occaecati.', 'Eius incidunt molestias laborum. Dignissimos numquam voluptatem eveniet quia soluta qui rem.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(235, 3, 237, 'Aliquid ea ut quam magnam est.', 'Facilis sunt omnis earum temporibus nisi ad. Aut occaecati fugit vel est. Adipisci exercitationem repellat vel eum voluptatum sint. Cum velit ab quo aut.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(236, 12, 238, 'Omnis pariatur nihil ut ea nisi sit.', 'Sit eos odio et et. Dolores maxime tempora tempora dolorum qui libero corporis. Atque ratione et aspernatur non est veniam illo.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(237, 15, 239, 'Autem accusantium culpa necessitatibus modi ullam omnis.', 'Veritatis rem ut recusandae et facere aut qui. Enim labore assumenda ea nam in quia. Sit rerum facere aut.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(238, 14, 240, 'Quis repellendus dolores totam sed veniam deleniti qui.', 'Dicta qui deserunt harum quos ipsa. Nulla veniam beatae non quod esse. Voluptates consequatur recusandae ut voluptatem vitae. Assumenda odio voluptatem nulla aut placeat.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(239, 17, 241, 'Et et nulla aliquid accusamus dolorem.', 'Qui sed enim ut rerum amet. Sed quas consectetur ipsa incidunt. Reiciendis quia enim et.', 'medium', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(240, 20, 242, 'Est sint dolores repudiandae est et voluptatem omnis ipsam.', 'Debitis occaecati voluptatem ab quia. Velit ut iure sed. Minus impedit facere et in corporis est quas.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(241, 13, 243, 'Officia soluta mollitia molestiae veniam magni dolorem quo.', 'Et nemo sunt sit adipisci repellendus. Tenetur magnam repellendus minus sit possimus. Consectetur adipisci eaque accusamus magnam et. Et est facere unde ut pariatur officiis.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(242, 5, 244, 'Magnam ducimus voluptas porro et.', 'Animi et ipsa ea temporibus enim. Laudantium aperiam explicabo et est ab. Rerum rem reiciendis nostrum consequatur molestiae quam.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(243, 20, 245, 'Iure facilis deserunt vitae dolores iste sed blanditiis in.', 'Non consequatur ea ipsam et id. Quisquam iste consequatur omnis velit nisi. Sit aut corporis non sed reiciendis minima.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(244, 11, 246, 'Consequatur eum accusamus assumenda veniam provident libero perspiciatis.', 'Quo nihil et amet rem asperiores dolorum. In dignissimos dolor sapiente laborum ut necessitatibus ullam voluptas.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(245, 13, 247, 'Voluptates temporibus deserunt soluta et illum.', 'Velit dicta dolore et mollitia alias commodi incidunt. Itaque omnis ipsa et repellat. Beatae consequatur rerum qui qui inventore magnam repellat sed.', 'high', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(246, 17, 248, 'Voluptate et eaque est ex aut maiores.', 'Quis laboriosam et non consectetur non numquam temporibus. Voluptas maiores voluptas exercitationem nulla. Ullam ea maxime aut quidem omnis harum.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(247, 6, 249, 'In sit quisquam est optio nesciunt at iusto dignissimos.', 'Suscipit laborum qui autem ducimus natus consequuntur. Labore error delectus molestias enim voluptatum culpa. Velit excepturi recusandae optio soluta.', 'high', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(248, 15, 250, 'Sunt repellat sed officiis minima blanditiis.', 'Fugit dolore doloremque id sunt velit sunt nemo. Unde accusantium sed qui vitae facere corporis hic. Nihil veniam et eligendi deserunt est. Similique omnis dolor nobis molestias.', 'high', 'todo', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(249, 15, 251, 'Minus eius voluptatem enim et.', 'Incidunt magnam quis eos sed deserunt voluptates repudiandae. Natus enim ipsum eos accusantium. Tempore et sunt omnis praesentium delectus. Et sint repellendus accusamus ipsa sit reiciendis vitae.', 'low', 'ongoing', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(250, 19, 252, 'Quae dolores velit porro qui vitae.', 'Qui inventore deserunt quia illum possimus sit et. Aut expedita dignissimos eaque perferendis adipisci. Sit quod eveniet quas sapiente est ut. Et incidunt itaque earum aut.', 'medium', 'done', '2022-12-15 04:51:26', '2022-12-15 09:27:41'),
(251, 1, 253, 'This task was updated just now', 'Task Description', 'low', 'done', '2022-12-15 05:37:14', '2022-12-15 09:27:41'),
(252, 1, 254, 'New Task', 'Task Description', 'low', 'done', '2022-12-15 05:37:49', '2022-12-15 09:27:41'),
(253, 1, 255, 'New Task', 'Task Description', 'low', 'done', '2022-12-15 05:38:53', '2022-12-15 09:27:41'),
(254, 1, 256, 'New Task', 'Task Description', 'low', 'done', '2022-12-15 05:39:51', '2022-12-15 09:27:41'),
(255, 1, 257, 'This task was updated just now', 'Task Description', 'low', 'done', '2022-12-15 05:40:52', '2022-12-15 09:27:41'),
(256, 1, 15, 'New Task', 'Task Description', 'low', 'done', '2022-12-15 05:41:20', '2022-12-15 09:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gregg', 'gregg.icay@ollyolly.com', NULL, '$2y$10$UIZ.h.giDhr9E6KHGN0ia.e.X7Je4viESFjqoNEjrhDsF7L7tlkgi', NULL, '2022-12-15 03:57:56', '2022-12-15 03:57:56'),
(2, 'Rebekah Mertz Sr.', 'gbernhard@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PXfWRKohKe', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(3, 'Mr. Toby Aufderhar', 'stroman.myrtle@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZEEFBxjo1u', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(4, 'Marvin Lakin', 'kassulke.clarabelle@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eFtumFGSYJ', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(5, 'Charity Hessel', 'murray.trinity@example.net', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qzzv0LAd3k', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(6, 'Dr. Anthony Witting', 'koch.breanne@example.net', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0ywB1dFMsX', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(7, 'Dr. Ardith Becker', 'pollich.elsie@example.net', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UzZHdAVag6', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(8, 'Dr. Dena Willms', 'anibal.hickle@example.com', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G11RzRe6Ob', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(9, 'Kenyatta Luettgen', 'edythe59@example.net', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0nfgHJrWq7', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(10, 'Gwendolyn Schumm', 'yoconnell@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OzZ8C5yRnP', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(11, 'Prof. Tito Prosacco', 'tillman.natalie@example.net', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LogZ7wxh8K', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(12, 'Leonardo Johns', 'kohler.jamar@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YawAvxdUsx', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(13, 'Lavern Reynolds', 'cartwright.grayson@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hGTpNb6Dvs', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(14, 'Mr. Dexter Hermiston', 'cristobal13@example.net', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HKTQiuo5hk', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(15, 'Palma Bosco III', 'benedict.nolan@example.com', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wb2GHLPg0t', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(16, 'Cristian Feeney', 'jordy87@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IljVeEOCnk', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(17, 'Madie Johns', 'olson.gwendolyn@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YLuIevEaDu', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(18, 'Collin Auer Jr.', 'jhessel@example.com', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gn7Jz2x7UC', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(19, 'Dr. Wilfredo Reinger V', 'freddy.effertz@example.com', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BwZ5moZEot', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(20, 'Mr. Henri Blick', 'annetta.gusikowski@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4DPHcMMsMf', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(21, 'Katherine Schuster', 'huel.sylvester@example.com', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gfew46Z4EG', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(22, 'Michael Hayes', 'kallie80@example.com', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ek6VikqQbH', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(23, 'Arne Raynor', 'icorkery@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '95rcksgKem', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(24, 'Dr. Erich Gerhold', 'ottilie.bogan@example.net', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'skui4BJZ4e', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(25, 'Garrett O\'Connell', 'katarina.reichert@example.org', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kE25ixkHau', '2022-12-15 04:29:28', '2022-12-15 04:29:28'),
(26, 'Prof. Wilfrid Deckow Sr.', 'esmeralda.kemmer@example.net', '2022-12-15 04:29:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qw1nv8gyv2', '2022-12-15 04:29:28', '2022-12-15 04:29:28');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
