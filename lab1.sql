-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 19 2021 г., 11:43
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `ID_Client` int(11) NOT NULL,
  `name` text NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `IP` text NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`ID_Client`, `name`, `login`, `password`, `IP`, `balance`) VALUES
(1, 'Vlad', 'vlad', 'vlad1900', '192.188.63.23', 120),
(2, 'Alex', 'uberlos', '123456789', '192.182.103.53', 3155),
(3, 'Oleg', 'bros12', 'adminOleg', '192.172.11.103', 430),
(4, 'Vanya', 'vasiliy', 'vany23012000', '193.184.74.21', -15),
(5, 'Maria', 'masha', 'curly2003', '192.188.132.212', 240),
(6, 'Danya', 'daniil', '0987654321', '192.123.12.43', -840);

-- --------------------------------------------------------

--
-- Структура таблицы `seanse`
--

CREATE TABLE `seanse` (
  `ID_SEANSE` int(11) NOT NULL,
  `start` time NOT NULL,
  `stop` time NOT NULL,
  `in_trafic` int(11) NOT NULL,
  `out_trafic` int(11) NOT NULL,
  `FID_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `seanse`
--

INSERT INTO `seanse` (`ID_SEANSE`, `start`, `stop`, `in_trafic`, `out_trafic`, `FID_client`) VALUES
(1, '17:03:34', '23:12:50', 2456, 1234, 1),
(2, '15:00:24', '20:42:50', 6456, 3564, 2),
(3, '11:52:32', '14:34:50', 1734, 954, 3),
(4, '19:32:44', '01:05:23', 7456, 2284, 4),
(5, '04:38:54', '09:54:12', 6783, 4634, 5),
(6, '18:00:24', '21:12:50', 8456, 4234, 6),
(7, '21:43:49', '22:12:20', 1256, 854, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_Client`);

--
-- Индексы таблицы `seanse`
--
ALTER TABLE `seanse`
  ADD PRIMARY KEY (`ID_SEANSE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
