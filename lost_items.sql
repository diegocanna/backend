-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 14, 2025 alle 09:56
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lostitems`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `lost_items`
--

CREATE TABLE `lost_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `lost_date` date NOT NULL,
  `location` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `found` tinyint(1) NOT NULL,
  `found_date` date DEFAULT NULL,
  `found_location` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `note` text CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `lost_items`
--

INSERT INTO `lost_items` (`id`, `name`, `description`, `lost_date`, `location`, `found`, `found_date`, `found_location`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Portafoglio', 'Portafoglio in pelle nera', '2025-01-10', 'Roma Termini', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(2, 'Zaino', 'Zaino blu con toppa rossa', '2025-02-15', 'Milano Centrale', 1, '2025-02-17', 'Ufficio oggetti smarriti Milano', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(3, 'Cellulare', 'Samsung Galaxy S21', '2025-03-05', 'Napoli Centrale', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(4, 'Chiavi', 'Mazzo di chiavi con portachiavi Juventus', '2025-01-20', 'Bologna Centrale', 1, '2025-01-22', 'Polizia Ferroviaria Bologna', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(5, 'Libro', 'Libro \"1984\" di Orwell', '2025-01-11', 'Firenze SMN', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(6, 'Ombrello', 'Ombrello pieghevole blu', '2025-02-28', 'Torino Porta Nuova', 1, '2025-03-01', 'Reception Stazione Torino', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(7, 'Valigia', 'Valigia Samsonite rossa', '2025-03-03', 'Bari Centrale', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(8, 'Cappello', 'Cappello grigio di lana', '2025-01-30', 'Genova Brignole', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(9, 'Occhiali', 'Occhiali da vista neri', '2025-03-01', 'Venezia Mestre', 1, '2025-03-02', 'Ufficio smarriti Venezia', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(10, 'Agenda', 'Agenda Moleskine nera', '2025-02-10', 'Roma Tiburtina', 1, '2025-02-12', 'Ufficio Info Roma', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(11, 'Zaino', 'Zaino scolastico con stickers', '2025-01-17', 'Padova FS', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(12, 'Cellulare', 'iPhone 13 verde', '2025-02-01', 'Verona Porta Nuova', 1, '2025-02-03', 'Oggetti Smarriti Verona', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(13, 'Portatile', 'Laptop HP argento', '2025-01-22', 'Pisa Centrale', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(14, 'Borsa', 'Borsa di cuoio marrone', '2025-03-04', 'Lecce Stazione', 1, '2025-03-05', 'Polfer Lecce', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(15, 'Libro', 'Manuale di Diritto Penale', '2025-01-12', 'Salerno FS', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(16, 'Portafoglio', 'Portafoglio rosso con documenti', '2025-01-03', 'Milano Centrale', 1, '2025-01-04', 'Oggetti smarriti Milano', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(17, 'Chiavi', 'Chiavi di casa con portachiavi giallo', '2025-02-14', 'Bologna FS', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(18, 'Valigia', 'Valigia blu rigida', '2025-01-28', 'Venezia S. Lucia', 1, '2025-01-30', 'Ufficio smarriti Venezia', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(19, 'Occhiali', 'Occhiali da sole Persol', '2025-03-06', 'Roma Termini', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(20, 'Notebook', 'Notebook con cover floreale', '2025-02-08', 'Firenze Campo di Marte', 1, '2025-02-10', 'Oggetti smarriti Firenze', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(21, 'Tablet', 'iPad Mini grigio', '2025-02-20', 'Bologna Centrale', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(22, 'Zaino', 'Zaino trekking verde', '2025-01-15', 'Torino Lingotto', 1, '2025-01-17', 'Reception Torino', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(23, 'Borsa', 'Borsa nera con laptop', '2025-03-01', 'Roma Ostiense', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(24, 'Libro', 'Romanzo \"La coscienza di Zeno\"', '2025-02-05', 'Trieste FS', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(25, 'Orologio', 'Orologio Casio nero', '2025-01-25', 'Milano Lambrate', 1, '2025-01-26', 'Polizia ferroviaria Milano', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(26, 'Cappotto', 'Cappotto blu lungo', '2025-02-12', 'Napoli Centrale', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(27, 'Cellulare', 'Huawei P40', '2025-02-15', 'Roma Termini', 1, '2025-02-16', 'Ufficio Roma Centrale', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(28, 'Borsa', 'Borsa sportiva Adidas', '2025-01-29', 'Palermo Centrale', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(29, 'Zaino', 'Zaino giallo scuola', '2025-03-03', 'Firenze SMN', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(30, 'Portafoglio', 'Portafoglio blu con bancomat', '2025-01-18', 'Pescara Centrale', 1, '2025-01-20', 'Stazione Pescara', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(31, 'Tablet', 'Samsung Galaxy Tab A', '2025-02-10', 'Bari Centrale', 1, '2025-02-11', 'Stazione Bari', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(32, 'Occhiali', 'Occhiali Ray-Ban Wayfarer', '2025-01-12', 'Napoli FS', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(33, 'Orologio', 'Orologio Fossil marrone', '2025-02-24', 'Torino Porta Susa', 1, '2025-02-25', 'Ufficio Torino', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(34, 'Chiavi', 'Chiavi con ciondolo cuore', '2025-01-31', 'Genova FS', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(35, 'Zaino', 'Zaino universit? rosso', '2025-02-18', 'Padova FS', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(36, 'Libro', 'Libro \"Il piccolo principe\"', '2025-01-27', 'Bologna Centrale', 1, '2025-01-28', 'Bologna Lost & Found', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(37, 'Borsa', 'Borsa elegante nera', '2025-03-04', 'Firenze SMN', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(38, 'Valigia', 'Valigia trolley nera', '2025-02-02', 'Roma Termini', 1, '2025-02-03', 'Ufficio Roma Termini', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(39, 'Agenda', 'Agenda rossa 2025', '2025-01-09', 'Venezia FS', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(40, 'Cellulare', 'Xiaomi Mi 11', '2025-02-06', 'Milano Rogoredo', 1, '2025-02-07', 'Stazione Milano', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(41, 'Zaino', 'Zaino scuola elementari', '2025-01-13', 'Lecce Centrale', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(42, 'Portafoglio', 'Portafoglio donna rosa', '2025-01-21', 'Napoli FS', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(43, 'Ombrello', 'Ombrello automatico grigio', '2025-02-13', 'Firenze SMN', 1, '2025-02-14', 'Oggetti Firenze', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(44, 'Libro', 'Manuale di economia', '2025-01-19', 'Torino Porta Nuova', 1, '2025-01-21', 'Info Torino', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(45, 'Zaino', 'Zaino nero con borchie', '2025-03-02', 'Milano Centrale', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(46, 'Valigia', 'Valigia verde oliva', '2025-02-07', 'Bari FS', 1, '2025-02-08', 'Stazione Bari Centrale', NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54'),
(47, 'Chiavi', 'Chiavi con moschettone blu', '2025-03-05', 'Roma Tiburtina', 0, NULL, NULL, NULL, '2025-05-14 09:53:54', '2025-05-14 09:53:54');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `lost_items`
--
ALTER TABLE `lost_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `lost_items`
--
ALTER TABLE `lost_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
