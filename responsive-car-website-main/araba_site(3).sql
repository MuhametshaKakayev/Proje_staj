-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 03 2023 г., 13:30
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `araba_site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `araba_bilgi`
--

CREATE TABLE `araba_bilgi` (
  `id` int(11) NOT NULL,
  `adi` varchar(255) NOT NULL,
  `marka` varchar(255) NOT NULL,
  `fiyat` varchar(255) NOT NULL,
  `sene` varchar(255) NOT NULL,
  `renk` varchar(255) NOT NULL,
  `vites` varchar(255) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `km` varchar(255) NOT NULL,
  `logo_src` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `araba_bilgi`
--

INSERT INTO `araba_bilgi` (`id`, `adi`, `marka`, `fiyat`, `sene`, `renk`, `vites`, `resim`, `km`, `logo_src`) VALUES
(1, 'TOGG', 'ZX9', '$30,000', '2023', 'Beyaz', 'Elektrikli', 'assets\\img\\featured8.png', '0', '\"assets\\img\\togg.png\"'),
(2, 'TOGG', 'ZX7', '$35,000', '2023', 'Kırmızı', 'Elektikli', 'assets\\img\\featured9.png', '0', NULL),
(3, 'Mercedes', 'XL4', '$70,000', '2019', 'Beyaz', 'Normal', 'assets\\img\\featured10.png', '150,000', '\"assets\\img\\merc.jpeg\"'),
(4, 'Bmw', 'Model 3', '$70,900', '2018', 'Siyah', 'Normal', 'assets\\img\\featured6.png', '299.000', '\"assets\\img\\logo5.png\"'),
(5, 'Bmw', 'Model 1', '$150,300', '2023', 'Beyaz', 'Normal', 'assets\\img\\featured7.png', '10,000', NULL),
(6, 'Porsche', 'Panamera', '$126,900', '2022', 'Siyah', 'Otomatik', 'assets\\img\\featured5.png', '301.000', '\"assets\\img\\logo1.png\"'),
(7, 'Tesla', 'x5', '$45,900', '2019', 'Beyaz', 'otomatik', 'assets\\img\\featured1.png', '299.000', '\"assets\\img\\logo3.png\"'),
(8, 'Tesla', 'Model X', '$98,900', '2020', 'Kırmızı', 'Otomatik', 'assets\\img\\featured2.png', '100.000', NULL),
(9, 'Tesla', 'Model 3', '$45,900', '2022', 'Kırmızı', 'Otomatik', 'assets\\img\\featured2.png', '50,000', NULL),
(10, 'Audi', 'E-tron', '$175,900', '2023', 'Beyaz', 'Otomatik', 'assets\\img\\featured3.png', '150.000', '\"assets\\img\\logo2.png\"'),
(11, 'Porsche', 'Boxster 987', '$120,900', '2019', 'Beyaz', 'Otomatik', 'assets\\img\\featured4.png', '30,000', NULL),
(12, 'Mercedes', 'QL5', '$130,900', '2023', 'Sarı', 'Normal', 'assets\\img\\featured11.png', '0', NULL),
(13, 'Mercedes', 'QL7', '$120,900', '2023', 'Beyaz', 'Otomatik', 'assets\\img\\featured10.png', '0', NULL),
(14, 'Mitsubishi', 'LXNB', '$60,900', '2019', 'Beyaz', 'Normal', 'assets\\img\\featured12.png', '300.000', '\"assets\\img\\logo6.png\"'),
(15, 'Mitsubishi', 'MB7', '$80,900', '2022', 'Beyaz', 'Otomatik', 'assets\\img\\featured13.png', '30,000', NULL),
(16, 'Mitsubishi', 'QL5', '$140,900', '2023', 'Kırmızı', 'Otomatik', 'assets\\img\\featured14.png', '0', NULL),
(17, 'Toyota', 'Corola', '$180,900', '2023', 'Beyaz', 'Otomatik', 'assets\\img\\featured15.png', '0', '\"assets\\img\\toyoto.png\"'),
(18, 'Lamborghini', '', '', '', '', '', '', '', '\"assets\\img\\logo4.png\"');

-- --------------------------------------------------------

--
-- Структура таблицы `logos`
--

CREATE TABLE `logos` (
  `isim` varchar(25) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `logos`
--

INSERT INTO `logos` (`isim`, `resim`, `id`) VALUES
('Porsche', '\"assets\\img\\logo1.png\"', 1),
('Audi', '\"assets\\img\\logo2.png\"', 2),
('Tesla', '\"assets\\img\\logo3.png\"', 3),
('Lamborghini', '\"assets\\img\\logo4.png\"', 4),
('Bmw', '\"assets\\img\\logo5.png\"', 5),
('Mitsubishi', '\"assets\\img\\logo6.png\"', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu_isim` varchar(255) NOT NULL,
  `aktif_durum` int(11) NOT NULL,
  `footer_durum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `menu_isim`, `aktif_durum`, `footer_durum`) VALUES
(1, 'Ana Sayfa', 1, 0),
(2, 'katalog', 1, 0),
(3, 'İletişim', 1, 0),
(4, 'Arabalar', 1, 1),
(5, 'Hakkında', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `populer_oto`
--

CREATE TABLE `populer_oto` (
  `id` int(11) NOT NULL,
  `marka` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `fiyat` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `populer_oto`
--

INSERT INTO `populer_oto` (`id`, `marka`, `model`, `fiyat`, `src`) VALUES
(1, 'Porsche', 'Turbo S', '$175,900', '\"assets\\img\\popular2.png\"'),
(2, 'Porsche', 'Taycan', '$114,900', '\"assets\\img\\popular2.png\"'),
(3, 'Tesla', 'TRS7', '$150,900', '\"assets\\img\\popular3.png\"'),
(4, 'Tesla', 'TRS3', '$120,900', '\"assets\\img\\popular4.png\"'),
(5, 'Audi', 'XL5', '$170,900', '\"assets\\img\\popular5.png\"');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `araba_bilgi`
--
ALTER TABLE `araba_bilgi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `populer_oto`
--
ALTER TABLE `populer_oto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `araba_bilgi`
--
ALTER TABLE `araba_bilgi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `populer_oto`
--
ALTER TABLE `populer_oto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
