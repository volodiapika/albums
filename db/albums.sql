-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Бер 17 2017 р., 21:50
-- Версія сервера: 5.7.16
-- Версія PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `albums`
--

-- --------------------------------------------------------

--
-- Структура таблиці `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `albums`
--

INSERT INTO `albums` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dr. Jailyn Kuvalis IV', '2017-03-17 16:46:46', '2017-03-17 16:46:46', NULL),
(2, 'Frederique Kuhic', '2017-03-17 16:46:46', '2017-03-17 16:46:46', NULL),
(3, 'Alisa Doyle PhD', '2017-03-17 16:46:46', '2017-03-17 16:46:46', NULL),
(4, 'Grady Wisoky', '2017-03-17 16:46:46', '2017-03-17 16:46:46', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2017_13_03_000000_create_albums_table', 1),
('2017_13_03_100000_create_photos_table', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photourl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `albumid` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `photos`
--

INSERT INTO `photos` (`id`, `name`, `photourl`, `albumid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Coy Robel', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(2, 'Valentine Harber', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(3, 'Dr. Odessa Legros Sr.', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(4, 'Gillian Toy', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(5, 'Hyman Kihn', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(6, 'Miss Janice Gottlieb DVM', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(7, 'Edwardo O\'Connell', 'http://vignette1.wikia.nocookie.net/pokemony/images/3/3a/Ash_and_his_Pikachu.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160321&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(8, 'Maeve Swaniawski', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(9, 'Aurelie Mohr', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(10, 'Aidan Robel Sr.', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(11, 'Jamison Brown MD', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(12, 'Violette Hand', 'http://vignette1.wikia.nocookie.net/pokemony/images/8/83/Pikachu_Bad_Mood.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160322&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(13, 'Nakia Considine', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(14, 'Israel Towne', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(15, 'Aileen Abernathy', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(16, 'Kelly Keeling II', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(17, 'Miss Audra Koepp', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(18, 'Brianne Dibbert', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(19, 'Mr. Arlo Kunze', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(20, 'Mrs. Rosemary Towne II', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(21, 'Ken Sipes', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(22, 'Jillian Kemmer', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(23, 'Sigrid Grimes', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(24, 'Miss Petra Steuber V', 'http://vignette1.wikia.nocookie.net/pokemony/images/8/83/Pikachu_Bad_Mood.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160322&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(25, 'King Ward', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(26, 'Ulices Barrows', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(27, 'Ms. Alia Nader DVM', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(28, 'Ciara Klocko', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(29, 'Durward Jenkins', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(30, 'Colton Lockman', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/b6/Ash_Pikachu_contest.png/revision/latest/zoom-crop/width/90/height/55?cb=20111016172127&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(31, 'Claudie Cruickshank DDS', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(32, 'Gregory Leannon', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(33, 'Rubye Dietrich PhD', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(34, 'Clifford Jacobson', 'http://vignette1.wikia.nocookie.net/pokemony/images/3/3a/Ash_and_his_Pikachu.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160321&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(35, 'Pete Murray DDS', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(36, 'Christina Hirthe Sr.', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/b6/Ash_Pikachu_contest.png/revision/latest/zoom-crop/width/90/height/55?cb=20111016172127&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(37, 'Yasmin Crist', 'http://vignette1.wikia.nocookie.net/pokemony/images/3/3a/Ash_and_his_Pikachu.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160321&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(38, 'Eldon Rowe', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(39, 'Dr. Tony Herzog', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(40, 'Jarret Dickinson IV', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(41, 'Matilda Bergstrom', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 1, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(42, 'Lowell Balistreri', 'http://vignette1.wikia.nocookie.net/pokemony/images/3/3a/Ash_and_his_Pikachu.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160321&path-prefix=pl', 3, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(43, 'Chase Schaefer', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(44, 'Shyann Orn', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(45, 'Mr. Mathew Kerluke PhD', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(46, 'Ms. Velma Schumm', 'http://vignette1.wikia.nocookie.net/pokemony/images/3/3a/Ash_and_his_Pikachu.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160321&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(47, 'Alexandrea Swaniawski', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(48, 'Cassandre Emmerich', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/b6/Ash_Pikachu_contest.png/revision/latest/zoom-crop/width/90/height/55?cb=20111016172127&path-prefix=pl', 4, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL),
(49, 'Prof. Marquis McCullough V', 'http://vignette1.wikia.nocookie.net/pokemony/images/8/83/Pikachu_Bad_Mood.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160322&path-prefix=pl', 2, '2017-03-17 16:46:51', '2017-03-17 16:46:51', NULL);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `albums_name_unique` (`name`);

--
-- Індекси таблиці `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_albumid_foreign` (`albumid`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_albumid_foreign` FOREIGN KEY (`albumid`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
