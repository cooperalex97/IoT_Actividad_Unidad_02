-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Tiempo de generación: 28-11-2021 a las 22:34:12
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- -----------------------------------------------------------------
-- Base de datos: `tSeriesDB`
-- -----------------------------------------------------------------

-- --------------------------------------------------------

-- Tabla "thingData" (nombre propuesto en el libro)
-- ---------------------------------------------------------

CREATE TABLE `thingData` (
  `id` int NOT NULL,
  `topic` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payload` varchar(2048) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timestamp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deleted` binary(1) NOT NULL DEFAULT '\0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------------
-- Datos para la Tabla "thingData"
-- --------------------------------------------------------------

INSERT INTO `thingData` (`id`, `topic`, `payload`, `timestamp`, `deleted`) VALUES
(1, 'local', 'cooper', '1637354235.518', 0x30),
(2, 'local', 'test', '1637354308.452', 0x30),
(3, 'local', 'entro', '1637354325.677', 0x30),
(4, 'local', 'ok', '1637354347.739', 0x30);


ALTER TABLE `thingData`
  ADD PRIMARY KEY (`id`); -- Indices


ALTER TABLE `thingData`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
