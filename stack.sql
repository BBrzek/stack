-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Sty 2022, 16:34
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `stack`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kategorii` int(10) UNSIGNED NOT NULL,
  `nazwa_kategorii` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`id_kategorii`, `nazwa_kategorii`) VALUES
(1, 'Zabawne'),
(2, 'Krajobraz'),
(3, 'Sztuka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logi`
--

CREATE TABLE `logi` (
  `id_uzytkownika` int(11) UNSIGNED NOT NULL,
  `data_logowania` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `logi`
--

INSERT INTO `logi` (`id_uzytkownika`, `data_logowania`) VALUES
(1, '2021-12-27 15:10:21'),
(1, '2021-12-27 15:10:44'),
(1, '2021-12-27 15:24:42'),
(1, '2021-12-27 15:56:54'),
(2, '2021-12-27 16:24:16'),
(2, '2021-12-27 16:34:31'),
(2, '2021-12-27 16:56:18'),
(1, '2021-12-27 16:57:15'),
(2, '2021-12-27 19:12:02'),
(3, '2021-12-27 19:17:26'),
(4, '2021-12-27 19:18:31'),
(4, '2021-12-27 19:19:49'),
(2, '2021-12-27 19:59:41'),
(5, '2021-12-27 20:01:30'),
(2, '2021-12-27 20:25:52'),
(2, '2021-12-27 20:26:40'),
(2, '2021-12-27 20:28:50'),
(2, '2021-12-27 20:31:39'),
(2, '2021-12-28 10:14:59'),
(2, '2021-12-28 10:17:08'),
(2, '2021-12-28 10:50:38'),
(1, '2021-12-28 10:51:20'),
(5, '2021-12-28 10:51:56'),
(1, '2021-12-28 10:53:51'),
(1, '2021-12-28 10:53:55'),
(1, '2021-12-28 10:54:22'),
(2, '2021-12-28 12:56:30'),
(2, '2021-12-28 12:58:02'),
(2, '2021-12-28 13:00:06'),
(1, '2021-12-28 13:04:38'),
(2, '2021-12-28 14:48:36'),
(5, '2021-12-28 14:54:20'),
(2, '2021-12-28 17:08:40'),
(2, '2021-12-28 17:25:54'),
(1, '2021-12-28 18:18:02'),
(2, '2021-12-28 18:22:01'),
(2, '2021-12-28 20:14:31'),
(1, '2021-12-28 20:15:41'),
(5, '2021-12-28 20:19:56'),
(1, '2021-12-28 21:01:42'),
(2, '2021-12-28 21:17:02'),
(2, '2021-12-29 10:29:18'),
(2, '2021-12-29 10:36:47'),
(2, '2021-12-29 11:04:15'),
(2, '2021-12-29 12:37:37'),
(1, '2021-12-29 17:27:46'),
(2, '2021-12-29 17:49:07'),
(1, '2021-12-29 17:49:17'),
(2, '2021-12-29 17:49:48'),
(5, '2021-12-29 17:50:08'),
(1, '2021-12-29 17:50:40'),
(2, '2021-12-29 17:51:09'),
(1, '2021-12-29 17:51:46'),
(2, '2021-12-29 17:52:56'),
(3, '2021-12-29 17:53:39'),
(1, '2021-12-29 17:56:09'),
(1, '2021-12-29 18:04:38'),
(1, '2021-12-29 18:05:41'),
(1, '2021-12-29 18:06:06'),
(2, '2021-12-29 18:07:20'),
(1, '2021-12-29 18:07:47'),
(1, '2021-12-29 18:12:26'),
(2, '2021-12-29 18:17:09'),
(1, '2021-12-29 18:22:11'),
(1, '2021-12-29 18:27:36'),
(2, '2021-12-29 18:27:45'),
(1, '2021-12-29 18:29:01'),
(2, '2021-12-29 18:31:06'),
(1, '2021-12-29 18:31:22'),
(5, '2021-12-29 18:31:39'),
(2, '2021-12-29 18:41:41'),
(1, '2021-12-29 18:42:06'),
(2, '2021-12-29 19:10:18'),
(5, '2021-12-29 19:11:34'),
(2, '2021-12-29 19:11:53'),
(1, '2021-12-29 19:13:20'),
(2, '2021-12-29 19:13:39'),
(1, '2021-12-29 19:25:37'),
(3, '2021-12-29 19:27:17'),
(1, '2021-12-29 19:40:28'),
(2, '2021-12-29 19:50:35'),
(1, '2021-12-30 14:19:35'),
(1, '2021-12-30 20:37:25'),
(2, '2021-12-30 20:37:31'),
(1, '2021-12-30 20:41:18'),
(2, '2021-12-30 21:03:44'),
(2, '2021-12-30 21:06:00'),
(1, '2021-12-31 15:26:03'),
(2, '2021-12-31 15:37:58'),
(5, '2021-12-31 15:42:48'),
(6, '2021-12-31 16:29:32'),
(2, '2022-01-13 19:48:48'),
(1, '2022-01-13 19:52:43');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obrazek_kategorie`
--

CREATE TABLE `obrazek_kategorie` (
  `id_obrazka` int(10) UNSIGNED NOT NULL,
  `id_kategorii` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obrazki`
--

CREATE TABLE `obrazki` (
  `id_obrazka` int(10) UNSIGNED NOT NULL,
  `id_uzytkownika` int(10) UNSIGNED NOT NULL,
  `obrazek` varchar(64) NOT NULL,
  `tytul` varchar(20) NOT NULL,
  `opis` varchar(40) DEFAULT '',
  `data_wygasniecia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `polubienia`
--

CREATE TABLE `polubienia` (
  `id_obrazka` int(10) UNSIGNED NOT NULL,
  `id_uzytkownika` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id_uzytkownika` int(10) UNSIGNED NOT NULL,
  `login` varchar(16) NOT NULL,
  `haslo` varchar(32) NOT NULL,
  `data_utworzenia` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id_uzytkownika`, `login`, `haslo`, `data_utworzenia`) VALUES
(1, 'brzeku', '695435f33f4f126d549756d7b2f1fd43', '2021-12-27 13:46:01'),
(2, 'roju', '695435f33f4f126d549756d7b2f1fd43', '2021-12-27 16:24:16'),
(3, 'Gawluk', '695435f33f4f126d549756d7b2f1fd43', '2021-12-27 19:17:26'),
(4, 'Kamil', '03d6ee65431d6996da8d679d48350706', '2021-12-27 19:18:31'),
(5, 'Komandos', '32a5b602ff5c798b323300c83f0c0f4b', '2021-12-27 20:01:30'),
(6, 'dasd', 'a8f5f167f44f4964e6c998dee827110c', '2021-12-31 16:29:32');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kategorii`);

--
-- Indeksy dla tabeli `logi`
--
ALTER TABLE `logi`
  ADD KEY `id_uzytkownika` (`id_uzytkownika`);

--
-- Indeksy dla tabeli `obrazek_kategorie`
--
ALTER TABLE `obrazek_kategorie`
  ADD KEY `id_obrazka` (`id_obrazka`),
  ADD KEY `id_kategorii` (`id_kategorii`);

--
-- Indeksy dla tabeli `obrazki`
--
ALTER TABLE `obrazki`
  ADD PRIMARY KEY (`id_obrazka`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`);

--
-- Indeksy dla tabeli `polubienia`
--
ALTER TABLE `polubienia`
  ADD KEY `id_uzytkownika` (`id_uzytkownika`),
  ADD KEY `id_obrazka` (`id_obrazka`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id_uzytkownika`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id_kategorii` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `obrazki`
--
ALTER TABLE `obrazki`
  MODIFY `id_obrazka` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id_uzytkownika` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `logi`
--
ALTER TABLE `logi`
  ADD CONSTRAINT `logi_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id_uzytkownika`);

--
-- Ograniczenia dla tabeli `obrazek_kategorie`
--
ALTER TABLE `obrazek_kategorie`
  ADD CONSTRAINT `obrazek_kategorie_ibfk_1` FOREIGN KEY (`id_obrazka`) REFERENCES `obrazki` (`id_obrazka`),
  ADD CONSTRAINT `obrazek_kategorie_ibfk_2` FOREIGN KEY (`id_kategorii`) REFERENCES `kategorie` (`id_kategorii`);

--
-- Ograniczenia dla tabeli `obrazki`
--
ALTER TABLE `obrazki`
  ADD CONSTRAINT `obrazki_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id_uzytkownika`);

--
-- Ograniczenia dla tabeli `polubienia`
--
ALTER TABLE `polubienia`
  ADD CONSTRAINT `polubienia_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id_uzytkownika`),
  ADD CONSTRAINT `polubienia_ibfk_2` FOREIGN KEY (`id_obrazka`) REFERENCES `obrazki` (`id_obrazka`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
