-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2020 at 05:06 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Eino Huels', 54, 'Blanditiis repudiandae possimus exercitationem dolorum repudiandae. Non quibusdam cumque eum fugiat quia nisi.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(2, 'Willow Harris', 121, 'Qui deleniti facilis nesciunt et magni dolorem sapiente. Porro omnis nulla ex. Ipsa debitis qui occaecati aut voluptas eligendi iure. Sed deleniti et quod minima eveniet.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(3, 'Grace Kling', 91, 'Quis modi facilis esse ut. Eos dolorum vel odit mollitia. Et voluptate dolor ipsam iusto ad autem ut.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(4, 'Dr. Bonita Ebert', 170, 'Rerum voluptas qui quam non ut ut. Dicta cum quas aut vel magni libero. Ad fugit beatae dolorem laudantium.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(5, 'Darren Lesch', 32, 'Commodi animi fugiat odio sed. Et vel voluptatem eum iste harum voluptatibus et. Ut eaque rem nisi nesciunt dolore sed.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(6, 'Cheyenne Ondricka II', 152, 'Nihil eveniet culpa ut. Adipisci voluptas quia nostrum eligendi. Ullam autem nam ipsam. Qui repellat suscipit voluptas provident minima.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(7, 'Mr. Alexis Reichel MD', 148, 'Reiciendis ducimus delectus odit. Ut ducimus rerum consequatur. Amet ut ducimus ex numquam.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(8, 'Pink Kulas', 127, 'Est facilis blanditiis occaecati fugiat. Possimus ut molestias voluptates repellat. Aut neque odio aspernatur est similique ratione maiores.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(9, 'Berry Stracke', 46, 'Eius facere numquam tenetur id voluptas minima et. Eaque deleniti officiis laborum nam excepturi voluptatibus at. Quam qui et iusto natus. Architecto laboriosam aut magni.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(10, 'Mr. Ibrahim Runolfsson', 151, 'Consequatur illo esse quidem omnis quo nihil. Hic itaque sed repellendus modi et.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(11, 'Miss Zoila Kunde', 108, 'Hic dolor nam porro qui. Fugit rerum corporis libero non autem. Dolor dolore nemo atque molestiae architecto est.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(12, 'Prof. Quinton Sauer', 96, 'Tempore a incidunt ratione ea quo incidunt similique. Dignissimos a est qui placeat quasi facere architecto. A ab omnis deleniti. Eaque ratione explicabo quaerat ipsum eligendi.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(13, 'Mr. Abner Boyer', 50, 'Assumenda veritatis et voluptate laboriosam quod eaque ut. Suscipit dolorem dolor aut laudantium voluptas magnam. Et quod et soluta tempore. Dolorum doloribus iusto dolorem non et sit fugit.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(14, 'Rusty Gleason', 164, 'Sit est nesciunt enim. Nulla quo omnis alias quod labore ipsum unde nihil. Velit placeat voluptatum quis eius commodi occaecati. Nostrum nesciunt tenetur aut tempora iure omnis.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(15, 'Jaden Walsh', 26, 'Id aut voluptatum quidem est dolorem. Repellat ipsam reprehenderit consequatur. Ut omnis ratione animi numquam aperiam error vero.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(16, 'Rasheed Russel', 40, 'Ipsum cumque est ut. Ut expedita vero pariatur et quae et. In sunt magni modi modi. Illum totam dolor et magni. Eligendi ratione quasi enim aut. Aut non delectus ut quia.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(17, 'Camden Friesen', 185, 'Ducimus dolores rerum cumque officia sapiente ut cumque numquam. Adipisci commodi dolores vel. Et sed qui quis aut. Accusamus numquam maxime voluptatem natus omnis.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(18, 'Damaris Bednar MD', 10, 'Libero modi suscipit debitis cum laborum vitae. Possimus ab harum facilis blanditiis. In amet ipsum aut cum excepturi non ipsam. Voluptas voluptatibus voluptates qui culpa.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(19, 'Miss Nakia Conn', 6, 'A exercitationem excepturi occaecati velit aut. Aut modi quia accusamus iure velit nam. Non et quo expedita culpa. Velit quidem error et dignissimos fugiat ipsum.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(20, 'Mr. Stephen Schaden', 184, 'Repellendus totam culpa culpa iusto molestiae non aut amet. Quam quas provident voluptatibus dicta.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(21, 'Mrs. Madge Barton', 157, 'Perspiciatis quae eos et minus quia voluptatibus numquam. Ut dicta ullam eveniet. Fugit aspernatur quo nesciunt id.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(22, 'Mertie O\'Connell', 119, 'Ut incidunt in ipsum minima iste ipsum. Explicabo aut veritatis iure corrupti aspernatur sequi qui. Non cumque laboriosam voluptatem est est voluptatem.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(23, 'Rosetta Osinski', 121, 'Excepturi et voluptatem eum voluptatem. Deleniti rerum sit recusandae numquam pariatur. Perspiciatis rerum reprehenderit est est sint. Quas pariatur dolorem iure debitis aut.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(24, 'Christophe Waelchi', 37, 'Dolorem nostrum non porro qui itaque labore qui. Dolorem illo aliquid sint ut. Odio blanditiis voluptatem eum qui aliquid. Asperiores nam voluptatibus reprehenderit esse et consequatur esse.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(25, 'Asa Mills', 142, 'Eos non harum eligendi itaque ea. Est aut aliquid qui inventore harum distinctio odit. Quia minus reiciendis dolores aut rerum in necessitatibus asperiores. Consequatur ullam explicabo culpa.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(26, 'Gerard Abshire Sr.', 125, 'Error blanditiis libero tempora sed sed error dolor. Consequatur enim magnam dolorem distinctio. Sit ut velit nemo ducimus. Laudantium officiis non nisi eum quae.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(27, 'Prof. Myriam Gerlach', 100, 'Enim non repellendus error perferendis in. Exercitationem omnis facilis quos alias consequatur architecto voluptas nulla. Soluta veniam et quidem nulla sed.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(28, 'Elouise Eichmann', 178, 'Non et a atque consequatur. Provident qui aut a aut. Rerum eum aliquid provident eaque. At quidem quisquam quia vitae sint.', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(29, 'Mr. Tyson Terry Jr.', 98, 'Aut provident sit ea magnam quo. Provident sint doloremque provident perspiciatis hic. Minima mollitia impedit qui in repellendus ut rerum quia. Veritatis non voluptatem dolores.', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(30, 'Nella Hegmann', 61, 'Deserunt inventore assumenda officia cumque. Architecto modi esse ut. Optio animi aut possimus culpa ipsa nam.', '2020-03-05 16:19:27', '2020-03-05 16:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2020_03_04_131956_create_products_table', 1),
(15, '2020_03_04_142749_create_items_table', 1),
(16, '2020_03_05_074305_create_users_table', 1),
(17, '2020_03_05_151832_create_todos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Logan Cummerata', 143, 'Ut et voluptas enim sed. Voluptatibus neque magnam id facilis. Non voluptatum tempore laborum omnis.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(2, 'Dr. Nels Marvin DVM', 39, 'Aut repellat delectus autem. Autem est voluptatem architecto voluptatibus velit consequatur enim consequuntur. Unde et voluptas numquam molestiae. Dicta incidunt repellat ipsum.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(3, 'Ambrose Stokes', 114, 'Necessitatibus dolorum adipisci voluptatem qui dolores harum. Est sapiente natus et nostrum. Beatae atque quia facilis eius. Vero et corporis occaecati quo repudiandae.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(4, 'Lola Herzog', 13, 'Et blanditiis et sunt eius quos dolorum perferendis. Voluptate doloremque vel fugiat qui porro ea. Asperiores reiciendis ad nihil. Rerum rerum non dolorem fuga sunt libero nisi.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(5, 'Prof. Darius Moore', 244, 'In non adipisci voluptatem ipsa. Illo ea sit possimus veritatis nam. Qui corrupti magnam velit consequatur est ea quos.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(6, 'Rigoberto Mante III', 150, 'In ipsam eius nihil mollitia eum. Commodi illo voluptatem quo minima aut quis et. Laborum ea deserunt nihil occaecati aperiam omnis. Eos ut quia magnam libero molestiae aliquam.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(7, 'Elisabeth Wilkinson', 157, 'Et ratione maxime quibusdam autem. Et harum facere ad et eum reiciendis.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(8, 'Mrs. Margarita Bosco', 123, 'Voluptate vero nulla voluptatem. Dolores temporibus aut nesciunt fugiat aspernatur nam. Ut ut qui placeat commodi rerum itaque eligendi.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(9, 'Mrs. Carissa Howell', 109, 'Et quia provident odio voluptas. Magni beatae optio sit aut natus. Explicabo ut voluptatem consequatur consequatur voluptatem.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(10, 'Jonatan Murray', 64, 'Ea eius odio ut cum officia. Modi fugiat eligendi quidem libero. Deleniti iure culpa vel magnam.', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(11, 'Anissa Klocko', 282, 'Ab fugiat delectus dignissimos et consequuntur sunt placeat. Fugiat sed ipsa dolorum rerum minima. At minima dolorem enim odio.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(12, 'Litzy Gorczany III', 272, 'Quo eum mollitia itaque quis aspernatur. Rerum quisquam aut harum sint. Nihil velit optio eaque dolorem aperiam.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(13, 'Gaston O\'Conner DDS', 163, 'Et soluta qui suscipit ea. Dicta sint officiis optio at in expedita. Nostrum ex totam et animi sit sint nobis.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(14, 'Abigail Torphy', 44, 'Expedita corrupti atque est eum. Est dolorum dolores qui corrupti.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(15, 'Madisyn Kuvalis', 75, 'Recusandae ex necessitatibus adipisci ut quod. Soluta voluptatem corrupti iste aut similique. Tempore error laborum sunt at rerum beatae doloremque mollitia.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(16, 'Adan Feeney', 175, 'Ipsam pariatur fugiat fuga et dolor at cum possimus. Qui rem cumque officia quo ea aspernatur. Et ad autem velit assumenda sit.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(17, 'Sean Moore', 84, 'Odio commodi est at et cum. Sed atque rerum id dicta necessitatibus. Qui architecto dignissimos eligendi possimus.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(18, 'Tressa Braun', 110, 'Tenetur exercitationem dolor quasi optio et tempora amet. Et eum dignissimos reiciendis cum pariatur. Earum accusantium voluptatem sit. Esse culpa ut animi fuga et.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(19, 'Jamie Christiansen', 228, 'Quia delectus ut eius. Sit maxime dolorem distinctio reiciendis sed. Libero ut iusto deserunt.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(20, 'Chad Bahringer', 170, 'Aut provident aut modi doloremque sunt quos. Debitis maiores qui sunt. Est qui illo aut dolore.', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(21, 'Gerard D\'Amore', 266, 'At non sit ex culpa est deserunt minus et. Exercitationem corrupti debitis nemo rem quidem cupiditate sit. Odio aut ipsum deleniti nihil aliquam debitis.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(22, 'Wava Witting V', 180, 'Ex est iure et illum velit sit. Maiores debitis ducimus autem. Quis dolore ut vitae fuga. Eum et laborum tenetur aperiam nulla et.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(23, 'Mr. Jerrod Monahan', 42, 'Non eveniet aut est omnis repellat. Ipsa eum quidem facere neque consequatur. Voluptas consequuntur cupiditate aut voluptas dolorum corrupti maiores.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(24, 'Mrs. Colleen Yost MD', 85, 'Vel et libero consequatur assumenda. Magni rem dolor magni facilis deleniti. Perspiciatis qui nesciunt et unde dolores.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(25, 'Jannie Blick', 297, 'Quia dignissimos id qui minima. Et consequatur dolorum praesentium blanditiis. Aut non et quo cum. Quod cum excepturi ipsa ipsum et officiis.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(26, 'Nannie Douglas', 300, 'Aliquam repudiandae ut qui consequuntur aut illum aut. Temporibus est qui praesentium minus ex possimus sint.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(27, 'Jess Gleason', 142, 'Natus ipsa dolorem molestias ducimus porro. Quasi odit et quis ducimus aperiam aut praesentium. Eius enim optio omnis nihil nemo. Labore et incidunt dolor voluptates suscipit non veniam.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(28, 'Aurore Cronin', 141, 'Enim facilis in quidem debitis eveniet voluptatem necessitatibus impedit. Enim ad est rerum. Assumenda quaerat voluptatem eveniet. Voluptas corporis quaerat molestiae velit dolorum ratione quia.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(29, 'Marta Rippin', 251, 'Quia eaque natus dolorem maiores mollitia et exercitationem. Sit a et sint ullam dolorem aspernatur. Et officia aut nihil quo et omnis perspiciatis.', '2020-03-05 16:19:26', '2020-03-05 16:19:26'),
(30, 'Domenick Dibbert', 135, 'Aliquam qui et aut dolores similique voluptatem numquam. Nisi sint atque voluptas. Est reiciendis soluta voluptas quo voluptatem voluptatem adipisci id.', '2020-03-05 16:19:26', '2020-03-05 16:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
CREATE TABLE IF NOT EXISTS `todos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `todos_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `name`, `description`, `category`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Christ Metz', 'Sint autem harum repellendus ut. Ipsa illum dolore quia porro. Et molestiae voluptatem et perferendis deserunt omnis. Quis deleniti sunt est occaecati in.', 'category_1', 'Overdue', 21, '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(2, 'Neil Stehr IV', 'Quam ea nobis nihil ullam incidunt. Corrupti sint sequi dolor qui. Aspernatur ratione fugit aut accusamus nisi porro et. Eos necessitatibus cumque tempora quia rerum dolor.', 'category_2', 'Snoozed', 28, '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(3, 'Gisselle Boyer', 'Necessitatibus aut rerum autem perspiciatis omnis aut blanditiis. Eveniet voluptatibus qui ab libero consequatur omnis. Ducimus saepe dolorum quis quod fuga. Aut est veniam vel consequatur omnis.', 'category_1', 'Snoozed', 4, '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(4, 'Kristofer Hackett Jr.', 'Quam qui in ut et velit. Pariatur sed fugiat quo sed enim dignissimos sint. Nostrum perferendis distinctio delectus quam magni odio sit.', 'category_2', 'Completed', 28, '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(5, 'Dillan Mann', 'Iure ut reiciendis voluptatem enim eveniet repellat aut. Earum quo a ratione quaerat amet ut ullam. Quae quibusdam sed ipsa et.', 'category_2', 'Snoozed', 17, '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(6, 'Maiya Becker', 'Est rerum tempora et mollitia quos ut voluptatem sunt. Quisquam quaerat quod veniam quia. Magni provident nesciunt nulla autem.', 'category_2', 'Completed', 12, '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(7, 'Prof. Izaiah Schinner III', 'Cumque nostrum voluptas nihil corporis provident. Autem eos cumque illo at quo. Et minima deleniti et et. Sunt modi quidem earum earum omnis. Dolorem et amet quis et.', 'category_1', 'Overdue', 2, '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(8, 'Willy Sipes', 'Vel voluptates voluptas quia. Ut non quo rem dolore. Cum eius delectus est ut. Aut facere asperiores alias porro quas incidunt.', 'category_2', 'Completed', 28, '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(9, 'Dr. Elva Koelpin DDS', 'Et iure molestiae alias qui dignissimos distinctio cumque. Ut iusto totam eligendi sit. Reiciendis optio fugiat nihil exercitationem est.', 'category_1', 'Completed', 4, '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(10, 'Margarete Wehner', 'Et occaecati molestiae amet. Alias qui error ratione id laborum quaerat ducimus cupiditate. Qui blanditiis deleniti rerum culpa nihil. Illum aut quas reprehenderit voluptatibus.', 'category_2', 'Snoozed', 27, '2020-03-05 16:19:27', '2020-03-05 16:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_name`, `password`, `email`, `mobile_no`, `gender`, `birthday`, `created_at`, `updated_at`) VALUES
(1, 'Anissa Gaylord', 'Kolby Skiles', 'Rowland Greenfelder', 'Dr. Fletcher Pfeffer', 'lindsey.gleichner@blick.com', '14320845273', 'Male', '1984-08-01', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(2, 'Gerry Connelly', 'Christian Macejkovic', 'Ms. Catharine Stehr', 'Mr. Torey Frami Jr.', 'fkautzer@bruen.com', '21300992394', 'Female', '1998-06-04', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(3, 'Mr. Jesus Collins DDS', 'Marian Schuster', 'Ms. Mckayla Carter PhD', 'Gage Wisozk', 'amccullough@yahoo.com', '27774772082', 'Female', '1987-05-09', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(4, 'Dr. Newton Rosenbaum', 'Colleen Beer', 'Mrs. Cassandra Klocko V', 'Loma Rodriguez', 'vfahey@harvey.net', '48452418964', 'Male', '1984-03-17', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(5, 'Terrill Jones', 'Sherman Auer Jr.', 'Prof. Nathen Schultz II', 'Sydney Doyle III', 'manuel.murazik@gmail.com', '37669118764', 'Male', '2006-09-06', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(6, 'Mekhi Tillman', 'Dayton Hickle', 'Daija Rohan I', 'Else Labadie', 'marlee.kunze@flatley.com', '47515813860', 'Female', '2006-07-25', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(7, 'Osvaldo Hoppe', 'Dr. Joshuah Hand', 'Dr. Lorine Halvorson', 'Olaf Trantow', 'legros.pascale@gmail.com', '15132486697', 'Male', '1983-12-29', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(8, 'Valentina Skiles PhD', 'Dr. Jaunita Luettgen PhD', 'Miracle Cremin V', 'Delta Weissnat', 'ncollins@gmail.com', '31392749570', 'Male', '1984-05-17', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(9, 'Nakia Swaniawski', 'Mr. Eldred Upton', 'Pietro Ratke', 'Xavier Walsh', 'cstroman@hotmail.com', '16098420921', 'Male', '1976-04-06', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(10, 'Jeremie Gleichner', 'Mr. Khalil Barton', 'Adriel Beer', 'Dr. Corene Wehner III', 'mckayla08@runolfsson.com', '30662969173', 'Female', '1995-04-23', '2020-03-05 15:22:19', '2020-03-05 15:22:19'),
(11, 'Savannah Ledner', 'Dr. Waldo Jaskolski', 'Stephan Stehr', 'Brad Glover', 'nayeli.johns@zulauf.com', '55608134527', 'Male', '1970-01-14', '2020-03-05 15:23:08', '2020-03-05 15:23:08'),
(12, 'Kyle Beer', 'Maximilian Cassin Jr.', 'Holden Howe', 'Kaylie Koepp', 'doyle.schroeder@lehner.org', '74335260015', 'Female', '1998-02-13', '2020-03-05 15:23:09', '2020-03-05 15:23:09'),
(13, 'Laney Gorczany', 'Fredrick McClure MD', 'Martina Cassin', 'Judd Fadel III', 'abshire.ian@yahoo.com', '13063344529', 'Female', '1993-12-19', '2020-03-05 15:23:09', '2020-03-05 15:23:09'),
(14, 'Hector Okuneva', 'Katharina Hane', 'Prof. Frances Buckridge', 'Delpha Sanford', 'edwina56@gaylord.org', '42548956062', 'Male', '2001-01-06', '2020-03-05 15:23:09', '2020-03-05 15:23:09'),
(15, 'Emilie Turcotte I', 'Miss Isabell Moore II', 'Keenan Cartwright', 'Mrs. Shanny Terry DVM', 'hillary55@lang.com', '45456198915', 'Female', '1971-12-20', '2020-03-05 15:23:09', '2020-03-05 15:23:09'),
(16, 'Doyle Bergnaum', 'Krystel Gaylord', 'Travon Schultz', 'Miss Lilly Gottlieb', 'ernser.june@cronin.com', '19932212086', 'Male', '1971-10-19', '2020-03-05 15:23:09', '2020-03-05 15:23:09'),
(17, 'Charlotte Legros', 'Esther Dickinson IV', 'Melyna Gutkowski', 'Ms. Peggie Treutel', 'constance01@hane.biz', '32532857648', 'Male', '1987-01-27', '2020-03-05 15:23:09', '2020-03-05 15:23:09'),
(18, 'Clarabelle Effertz', 'Dr. Tyra Bechtelar Jr.', 'Mathilde Spencer', 'Mr. Hilton Kerluke', 'karley15@heaney.com', '39588034808', 'Male', '1991-05-26', '2020-03-05 15:23:09', '2020-03-05 15:23:09'),
(19, 'Isaias Emmerich', 'Grover Stark', 'Myron Kautzer', 'Guido Schultz', 'clyde.huels@gmail.com', '32885259479', 'Male', '1996-01-02', '2020-03-05 15:23:09', '2020-03-05 15:23:09'),
(20, 'Prof. Deborah Wisozk', 'Mr. Russel Bartoletti', 'Prof. Niko Mueller PhD', 'Miss Lizzie Marquardt DDS', 'dickinson.jaylon@okeefe.biz', '42514922508', 'Male', '2002-04-23', '2020-03-05 15:23:09', '2020-03-05 15:23:09'),
(21, 'Dr. Annalise Braun', 'Josiane Cassin', 'Angus Walter', 'Adeline Littel', 'grace17@zieme.com', '67448060498', 'Female', '1998-03-10', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(22, 'Mabel Haley', 'Dr. Mona Feest', 'Desmond Cremin', 'Bridget Bogan', 'omohr@gmail.com', '38466613422', 'Female', '2013-10-16', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(23, 'Jaydon Herzog III', 'Miss Elinor Kihn I', 'Alford Lynch', 'Prof. Amir Bode III', 'dino14@yahoo.com', '12340167793', 'Female', '2002-03-04', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(24, 'Caleigh Torp', 'Elda Adams', 'May Bins', 'Prof. Kiera Turcotte DVM', 'felix90@yahoo.com', '43401329858', 'Male', '2015-06-27', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(25, 'Miss Alexanne Kuhic II', 'Nella Collier', 'Prof. Grady Hudson', 'Kaley Corkery', 'williamson.bernardo@bernier.com', '48454721945', 'Male', '1994-06-07', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(26, 'Irma Bayer V', 'Terry O\'Kon', 'Prof. Ayden Morar II', 'Miss Betty Tromp DDS', 'rupert67@gmail.com', '57913707704', 'Male', '2011-09-05', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(27, 'Mr. Jonas Hoppe', 'Hugh O\'Keefe', 'Maximus Greenholt Sr.', 'Roxane Gleason', 'greenfelder.jesse@yahoo.com', '26466203097', 'Male', '1979-10-03', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(28, 'Gene Steuber', 'Ebba Stehr', 'Sabina McGlynn II', 'Eryn Littel DVM', 'vivien15@hayes.net', '38745718406', 'Male', '2004-09-22', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(29, 'Ms. Anahi O\'Connell', 'Micaela Skiles PhD', 'Nichole Schultz', 'Mr. Cristina Leannon', 'leannon.shawn@yahoo.com', '29933015944', 'Male', '2018-05-09', '2020-03-05 16:19:27', '2020-03-05 16:19:27'),
(30, 'Breanna Walter', 'Stephany Zemlak', 'Dr. Edward Prohaska Sr.', 'Ofelia Schowalter', 'hackett.ferne@gmail.com', '36022339971', 'Male', '1988-01-09', '2020-03-05 16:19:27', '2020-03-05 16:19:27');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
