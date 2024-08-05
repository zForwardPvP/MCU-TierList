-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 05 2024 г., 04:50
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `MCU`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Movie`
--

CREATE TABLE `Movie` (
  `Movie_id` int NOT NULL,
  `Image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Place` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Movie`
--

INSERT INTO `Movie` (`Movie_id`, `Image`, `Name`, `Place`) VALUES
(1, 'IronMan.webp', 'Железный Человек', 7),
(2, 'Hulk.webp', 'Невероятный Халк', 17),
(3, 'IronMan2.webp', 'Железный человек 2', 8),
(4, 'Thor.webp', 'Тор', 11),
(5, 'Cap.webp', 'Первый Мститель', 10),
(6, 'Avengers.webp', 'Мстители', 12),
(7, 'IronMan3.webp', 'Железный Человек 3', 15),
(8, 'Thor2.webp', 'Тор 2: Царство тьмы', 43),
(9, 'Cap2.webp', 'Первый мститель: Другая война', 18),
(10, 'Guardians.webp', 'Стражи Галактики', 16),
(11, 'Avengers2.webp', 'Мстители: Эра Альтрона', 19),
(12, 'AntMan.webp', 'Человек-муравей', 23),
(13, 'Cap3.webp', 'Первый мститель: Противостояние', 24),
(14, 'Strange.webp', 'Доктор Стрэндж', 25),
(15, 'Guardians2.webp', 'Стражи Галактики. Часть 2', 26),
(16, 'SpiderMan.webp', 'Человек-паук: Возвращение домой', 27),
(17, 'Thor3.webp', 'Тор: Рагнарёк', 28),
(18, 'Black.webp', 'Чёрная пантера', 29),
(19, 'Avengers3.webp', 'Мстители: Война бесконечности', 1),
(20, 'AntMan2.webp', 'Человек-муравей и Оса', 30),
(21, 'Marvel.webp', 'Капитан Марвел', 31),
(22, 'Avengers4.webp', 'Мстители: Финал', 3),
(23, 'SpiderMan2.webp', 'Человек-паук: Вдали от дома', 32),
(24, 'Widow.webp', 'Чёрная вдова', 33),
(25, 'ShangChi.webp', 'Шан-Чи и легенда десяти колец', 34),
(26, 'Eternals.webp', 'Вечные', 35),
(27, 'SpiderMan3.webp', 'Человек-паук: Нет пути домой', 9),
(28, 'Strange2.webp', 'Доктор Стрэндж: В мультивселенной безумия', 13),
(29, 'Thor4.webp', 'Тор: Любовь и гром', 36),
(30, 'Black2.webp', 'Чёрная пантера: Ваканда навеки', 37),
(31, 'AntMan3.webp', 'Человек-муравей и Оса: Квантомания', 39),
(32, 'Guardians3.webp', 'Стражи Галактики. Часть 3', 2),
(33, 'Marvel2.webp', 'Капитан Марвел 2', 38),
(34, 'Deadpool3.webp', 'Дэдпул и Росомаха', 4),
(35, 'Deadpool.webp', 'Дэдпул', 21),
(36, 'Deadpool2.webp', 'Дэдпул 2', 22),
(37, 'Logan.webp', 'Логан', 5),
(38, 'Daredevil.webp', 'Сорвиголова', 20),
(39, 'WandaVision.webp', 'Ванда/Вижн', 40),
(40, 'Falcon.webp', 'Сокол и Зимний солдат', 41),
(41, 'Loki.webp', 'Локи', 6),
(42, 'Hawkeye.webp', 'Соколиный глаз', 42),
(43, 'MoonKnight.webp', 'Лунный рыцарь', 14),
(44, 'MsMarvel.webp', 'Мисс Марвел', 44),
(45, 'SheHulk.webp', 'Женщина-Халк: Адвокат', 45),
(46, 'Invasion.webp', 'Секретное вторжение', 47),
(47, 'Echo.webp', 'Эхо', 46);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`Movie_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Movie`
--
ALTER TABLE `Movie`
  MODIFY `Movie_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
