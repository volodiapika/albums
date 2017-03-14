-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Бер 14 2017 р., 02:53
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
(1, 'Jamison Ward II', '2017-03-13 21:53:31', '2017-03-13 21:53:31', NULL),
(2, 'Sydnee Jacobi', '2017-03-13 21:53:31', '2017-03-13 21:53:31', NULL),
(3, 'Asa Koelpin', '2017-03-13 21:53:31', '2017-03-13 21:53:31', NULL),
(4, 'Marjory Homenick', '2017-03-13 21:53:31', '2017-03-13 21:53:31', NULL);

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
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `photos`
--

INSERT INTO `photos` (`id`, `name`, `photo_url`, `album_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mina Pfannerstill', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(2, 'Dr. Pasquale West', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/b6/Ash_Pikachu_contest.png/revision/latest/zoom-crop/width/90/height/55?cb=20111016172127&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(3, 'Lela Stoltenberg', 'http://vignette1.wikia.nocookie.net/pokemony/images/8/83/Pikachu_Bad_Mood.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160322&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(4, 'Janet Feil', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(5, 'Dr. Vito McCullough', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(6, 'Prof. Thad Reilly', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(7, 'Katlynn Harvey', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(8, 'Dr. Rebeka Jaskolski', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(9, 'Mireille Cronin', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 1, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(10, 'Santina Gaylord', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/b6/Ash_Pikachu_contest.png/revision/latest/zoom-crop/width/90/height/55?cb=20111016172127&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(11, 'Ms. Maeve Frami MD', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 1, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(12, 'Dr. Jeramie Koss II', 'http://vignette1.wikia.nocookie.net/pokemony/images/8/83/Pikachu_Bad_Mood.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160322&path-prefix=pl', 1, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(13, 'Gladyce Cummings', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(14, 'Dorothea Rippin', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(15, 'Ross Bahringer', 'http://vignette1.wikia.nocookie.net/pokemony/images/3/3a/Ash_and_his_Pikachu.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160321&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(16, 'Emily Jaskolski', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 1, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(17, 'Mrs. Elouise McDermott', 'http://vignette1.wikia.nocookie.net/pokemony/images/8/83/Pikachu_Bad_Mood.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160322&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(18, 'Edwin Ward', 'http://vignette1.wikia.nocookie.net/pokemony/images/8/83/Pikachu_Bad_Mood.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160322&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(19, 'Conner Ebert', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/b6/Ash_Pikachu_contest.png/revision/latest/zoom-crop/width/90/height/55?cb=20111016172127&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(20, 'Urban Waters', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/b6/Ash_Pikachu_contest.png/revision/latest/zoom-crop/width/90/height/55?cb=20111016172127&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(21, 'Ms. Victoria Corkery', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(22, 'Leland Davis', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(23, 'Theodora Dibbert', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(24, 'Prof. Isabelle Labadie II', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(25, 'Samantha Leannon', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(26, 'Kyle Harris Jr.', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(27, 'Judah Abernathy DVM', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(28, 'Naomie Carter', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(29, 'Mrs. Mikayla Spencer', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(30, 'Pauline Mosciski', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(31, 'Carmine Stamm', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(32, 'Keira Dooley V', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/b6/Ash_Pikachu_contest.png/revision/latest/zoom-crop/width/90/height/55?cb=20111016172127&path-prefix=pl', 1, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(33, 'Juliet Kuhn', 'http://vignette2.wikia.nocookie.net/pokemony/images/d/dd/Ash_DP_1.png/revision/latest/zoom-crop/width/90/height/55?cb=20140315213314&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(34, 'Justice Corwin', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 1, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(35, 'Keanu Herzog', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/b6/Ash_Pikachu_contest.png/revision/latest/zoom-crop/width/90/height/55?cb=20111016172127&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(36, 'Ervin Parker', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(37, 'Ms. Zoila Schroeder II', 'http://vignette1.wikia.nocookie.net/pokemony/images/3/3a/Ash_and_his_Pikachu.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160321&path-prefix=pl', 1, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(38, 'Alexzander Hintz Jr.', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(39, 'Eldora Berge Jr.', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(40, 'Mr. Desmond Wisozk IV', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(41, 'Jose D\'Amore', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(42, 'Ola Kilback', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(43, 'Ted Bechtelar', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(44, 'Prof. Dandre Friesen Jr.', 'http://vignette4.wikia.nocookie.net/pokemony/images/b/ba/Pikachu_loves_ketchup.png/revision/latest/zoom-crop/width/90/height/55?cb=20120720152603&path-prefix=pl', 1, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(45, 'Fabiola Champlin', 'http://vignette3.wikia.nocookie.net/pokemony/images/c/c2/Pikachu_Static.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160244&path-prefix=pl', 4, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(46, 'Jesse Huel', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 1, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(47, 'Velma Dooley', 'http://vignette4.wikia.nocookie.net/pokemony/images/2/27/Ash_1st_Pok%C3%A9_Ball.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160238&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(48, 'Mattie Ebert', 'http://vignette2.wikia.nocookie.net/pokemony/images/4/4c/Ash%27s_Pikachu.png/revision/latest?cb=20140316095658&path-prefix=pl', 2, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL),
(49, 'Prof. Franz Corkery', 'http://vignette2.wikia.nocookie.net/pokemony/images/c/ca/First_Meeting.png/revision/latest/zoom-crop/width/90/height/55?cb=20130112160235&path-prefix=pl', 3, '2017-03-13 21:53:34', '2017-03-13 21:53:34', NULL);

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
  ADD KEY `photos_album_id_foreign` (`album_id`);

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
  ADD CONSTRAINT `photos_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
