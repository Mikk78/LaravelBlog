-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 31 2020 г., 16:05
-- Версия сервера: 10.4.13-MariaDB
-- Версия PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_07_07_113544_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `title`, `short_title`, `img`, `descr`, `created_at`, `updated_at`) VALUES
(1, 1, 'The long grass rustled at her.', 'The long grass rustled at her.', NULL, 'When she got to the cur, \"Such a trial, dear Sir, With no jury or judge, would be a book of rules for shutting people up like telescopes: this time the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight: then it chuckled. \'What fun!\' said the Cat again, sitting on a crimson velvet cushion; and, last of all the time they had to.', '2020-06-11 14:08:46', '2020-06-11 14:08:46'),
(2, 3, 'I think.', 'I think.', NULL, 'Alice, \'a great girl like you,\' (she might well say this), \'to go on till you come to the end: then stop.\' These were the cook, and a long and a bright brass plate with the.', '2020-06-27 01:27:54', '2020-06-27 01:27:54'),
(3, 2, 'Alice! when she.', 'Alice! when she.', NULL, 'That your eye was as much as serpents do, you know.\' \'And what an ignorant little girl or a serpent?\' \'It matters a good deal until she made it out to sea!\" But the insolence.', '2020-06-14 08:41:41', '2020-06-14 08:41:41'),
(5, 2, 'Dormouse again, so she went to the.', 'Dormouse again, so she went to...', NULL, 'Duchess; \'I never could abide figures!\' And with that she might as well as the hall was very fond of beheading people here; the great hall, with the other: he came trotting along in a tone of great curiosity. \'It\'s a mineral, I THINK,\' said Alice. \'Exactly so,\' said the Dodo, pointing to the table for it, while the Mock Turtle repeated thoughtfully. \'I should have croqueted the Queen\'s voice in the pool was getting so far off). \'Oh, my poor.', '2020-06-15 16:03:52', '2020-06-15 16:03:52'),
(6, 1, 'But, now that I\'m.', 'But, now that I\'m.', NULL, 'Queen\'s ears--\' the Rabbit coming to look about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the porpoise, \"Keep back, please: we don\'t want to be?\' it asked. \'Oh, I\'m not Ada,\' she said, without even.', '2020-06-21 07:42:52', '2020-06-21 07:42:52'),
(7, 3, 'Hatter. This piece of.', 'Hatter. This piece of.', NULL, 'The Hatter was out of THIS!\' (Sounds of more broken glass.) \'Now tell me, please, which way she put them into a graceful zigzag, and was gone across to the three gardeners, but she gained courage as she could. \'No,\' said Alice. \'It must have prizes.\' \'But who has won?\' This question the Dodo said.', '2020-06-09 09:18:01', '2020-06-09 09:18:01'),
(8, 3, 'I\'ve seen that.', 'I\'ve seen that.', NULL, 'But there seemed to think this a very small cake, on which the wretched Hatter trembled so, that Alice had got its head to feel a little ledge of rock, and, as they were getting so thin--and the twinkling of the wood for fear of killing somebody, so managed to swallow a morsel of the sort,\'.', '2020-06-11 15:01:14', '2020-06-11 15:01:14'),
(9, 3, 'I should have liked teaching.', 'I should have liked teaching.', NULL, 'Seven flung down his face, as long as there was no label this time it all is! I\'ll try if I must, I must,\' the King eagerly, and he called the Queen, and Alice, were in.', '2020-06-23 17:35:09', '2020-06-23 17:35:09'),
(13, 1, 'How the Owl and.', 'How the Owl and.', NULL, 'She went on in these words: \'Yes, we went to work very carefully, nibbling first at one and then treading on her face like the largest telescope that ever was! Good-bye, feet!\' (for when she noticed a curious plan!\' exclaimed Alice. \'That\'s very curious.\' \'It\'s all about it!\' Last came a little timidly, for she felt that she was beginning to end,\' said the young lady to see if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\'.', '2020-06-17 11:06:02', '2020-06-17 11:06:02'),
(14, 1, 'I to get.', 'I to get.', NULL, 'I want to be?\' it asked. \'Oh, I\'m not used to know. Let me see--how IS it to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'allow me to introduce some other subject of conversation. \'Are you--are.', '2020-06-27 14:56:02', '2020-06-27 14:56:02'),
(15, 1, 'ME,\' but.', 'ME,\' but.', NULL, 'THAT direction,\' the Cat again, sitting on a three-legged stool in the distance, and she tried another question. \'What sort of idea that they must needs come wriggling down from the roof. There were doors all round the refreshments!\' But there seemed to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Dormouse: \'not in that.', '2020-06-22 04:08:27', '2020-06-22 04:08:27'),
(27, 1, 'dfgfgh', 'dfgfgh', NULL, 'fghsfghhx', '2020-07-14 12:35:33', '2020-07-14 12:35:33'),
(28, 1, 'dsgsrtgf', 'dsgsrtgf', NULL, 'zdfgfd', '2020-07-14 12:41:53', '2020-07-14 12:41:53'),
(29, 3, 'dfgfgn', 'dfgfgn', NULL, 'fgbfgxbfgbfgx', '2020-07-15 07:56:31', '2020-07-15 07:56:31'),
(30, 5, 'xfgdrg', 'xfgdrg', NULL, 'zdfgdfsfffffffffffffffffffff', '2020-07-15 08:00:06', '2020-07-15 08:00:06');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Lucie Christiansen II', 'istoltenberg@example.net', '2020-07-07 11:04:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1x3bTz60qf', '2020-07-07 11:04:02', '2020-07-07 11:04:02'),
(2, 'Marguerite Crona', 'pbraun@example.net', '2020-07-07 11:04:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sJ7lFWrn3e', '2020-07-07 11:04:03', '2020-07-07 11:04:03'),
(3, 'Gwendolyn Russel Jr.', 'jlarson@example.net', '2020-07-07 11:04:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3gWoEioJke', '2020-07-07 11:04:03', '2020-07-07 11:04:03'),
(4, 'Cindy Hand', 'marietta75@example.org', '2020-07-07 11:04:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fOMOfdsxZI', '2020-07-07 11:04:03', '2020-07-07 11:04:03'),
(5, 'MIKK', 'teshcenko93@gmail.com', NULL, '$2y$10$zju1KodEgD3tN9aShFq6GOQeyAfv3NbmlhF096YRWpQWFvdcffoVS', NULL, '2020-07-15 07:36:59', '2020-07-15 07:36:59');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
