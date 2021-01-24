-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 10.1.2.128
-- Tiempo de generación: 22-01-2021 a las 00:04:35
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u892013390_hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_cliente`
--

CREATE TABLE `datos_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_apellido` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `celular` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `observacion` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `habitacion` int(11) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `monto_total` int(11) NOT NULL,
  `observacion_recepcion` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `observacion_cliente` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `dni_cliente` int(11) NOT NULL,
  `nombre_apellido` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad_personas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cantidadPax` int(11) NOT NULL,
  `fecha_reserva` date NOT NULL,
  `depNombre` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `depCuenta` int(11) NOT NULL,
  `baja` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `habitacion`, `checkin`, `checkout`, `monto_total`, `observacion_recepcion`, `observacion_cliente`, `dni_cliente`, `nombre_apellido`, `celular`, `mail`, `cantidad_personas`, `cantidadPax`, `fecha_reserva`, `depNombre`, `depCuenta`, `baja`) VALUES
(1, 39, '2021-01-02', '2021-01-09', 70000, 'dep Y $ 20.000', '2do piso vista al mar', 1, 'silvia siliano', '1', '1', '2+2+m', 4, '2020-12-31', '', 0, 0),
(2, 3, '2021-01-03', '2021-01-09', 48000, 'dep Y 20.000', 'apart 3 en pb', 1, 'mary luci marziali', '1', '1', '1', 1, '2020-12-31', '', 0, 0),
(3, 38, '2021-01-02', '2021-01-09', 54000, 'dep Y 14.000', 'apart 2do piso v/m', 25592263, 'sergio adrian moreyra', '1', '1', '2+2+M', 4, '2020-12-31', '', 0, 0),
(4, 32, '2021-01-02', '2021-01-04', 19600, 'Dep W 9800', 'apart PB v/f', 1, 'mariano niderhaus', '1', '1', '2+1', 3, '2020-12-31', '', 0, 0),
(6, 31, '2021-01-02', '2021-01-04', 129000, '', 'apart 5 pax planta baja', 0, 'eliana sol ambrocio', '', '', '2+2', 4, '2020-12-31', 'A', 39000, 0),
(7, 16, '2021-01-02', '2021-01-08', 52800, '', '2do p vista al mar', 0, 'patricia mangone', '', '', '1+1', 2, '2020-12-31', 'W', 15800, 0),
(8, 15, '2021-01-02', '2021-01-17', 130800, 'deposito $722 dolares en la cuenta de natalia', '', 0, 'aylen ambroselli', '', '', '2', 2, '2020-12-31', 'N', 130800, 0),
(9, 14, '2021-01-02', '2021-01-08', 54000, '', 'apart 14 2do piso con b', 0, 'carlos f marcuzzo', '', '', '3', 3, '2020-12-31', 'A', 38000, 0),
(10, 13, '2021-01-02', '2021-01-09', 75000, '', 'apart 1 piso v/mar', 0, 'adriana paula bruzzese', '', '', '2+1+1', 4, '2020-12-31', 'Y', 20000, 0),
(11, 11, '2021-01-02', '2021-01-04', 16000, '', 'apart 1 p con bal y vista al mar', 0, 'gabriela pavlicek', '', '', '2', 2, '2020-12-31', 'W', 8000, 0),
(12, 6, '2021-01-02', '2021-01-09', 61000, '', 'apart 1p c/b', 0, 'damian falcon werthein', '', '', '2', 2, '2020-12-31', 'D', 18000, 0),
(13, 8, '2021-01-02', '2021-01-09', 61000, '', '1p con balcon', 0, 'sandra natacha werthein', '', '', '2+m', 2, '2020-12-31', 'W', 18000, 0),
(14, 4, '2021-01-02', '2021-01-03', 77000, 'apart 4 por 1 noche , apart 17 el resto de las noches', 'apart 2do piso sin balcon', 0, 'cecilia soledad colombo', '', '', '1+2', 3, '2020-12-31', 'G', 20000, 0),
(15, 17, '2021-01-03', '2021-01-10', 0, 'se viene del apart 4 , es cambio de apart', '', 0, 'cecilia soledad colombo', '', '', '1+2', 3, '2020-12-31', 'G', 0, 0),
(16, 9, '2021-01-03', '2021-01-07', 35200, 'dicho s/b', '', 2147483647, 'analia mvravicich', '', '', '2', 2, '2020-12-31', 'G', 15200, 0),
(17, 10, '2021-01-03', '2021-01-07', 32000, 'c/b', '', 0, 'gabriela kostolnik', '', '', '1', 1, '2020-12-31', 'Y', 8000, 0),
(18, 4, '2021-01-03', '2021-01-12', 63000, 'apart en pb', '', 0, 'graciela ali', '', '', '3', 3, '2020-12-31', 'A', 23000, 0),
(19, 12, '2021-01-03', '2021-01-13', 77000, 'apart nro 12 v/mar', '', 0, 'vabina llaneza', '', '', '2+2', 4, '2020-12-31', 'Y', 50000, 0),
(20, 21, '2021-01-03', '2021-01-11', 78000, 'apart 2do piso con balcon', '', 0, 'adrian luna', '', '', '3', 3, '2020-12-31', 'G', 55000, 0),
(21, 33, '2021-01-03', '2021-01-09', 64800, 'apart en pb', '', 0, 'alejandra eirin', '', '', '2+2', 4, '2020-12-31', 'A', 19200, 0),
(23, 37, '2021-01-03', '2021-01-23', 174000, 'apart en 2do piso c/b', '', 0, 'maria sol quiroga', '', '', '1+1', 2, '2020-12-31', 'Y', 52000, 0),
(24, 11, '2021-01-04', '2021-01-14', 88000, 'apart 11 , 1p con balcon', '', 0, 'juan carlos cisneros', '', '', '2', 2, '2020-12-31', 'D', 26000, 0),
(25, 18, '2021-01-04', '2021-01-18', 122000, 'apart 2do piso con balcon', '', 0, 'alfredo y alicia pesce polanc', '', '', '2', 2, '2020-12-31', 'W', 36000, 0),
(26, 34, '2021-01-04', '2021-01-11', 68000, '1p con vista al mar', '', 0, 'isadora de mora', '', '', '2+1+caniche', 3, '2020-12-31', 'W', 18000, 0),
(27, 2, '2021-01-05', '2021-01-11', 48000, 'apart en planta baja', '', 0, 'francisco ortiz', '', '', '2', 2, '2020-12-31', 'A', 15000, 0),
(28, 7, '2021-01-06', '2021-01-13', 68000, 'apart en 1p sin balcon vista al mar', '', 0, 'laura cantarella', '', '', '1+2', 3, '2020-12-31', 'Y', 20000, 0),
(29, 5, '2021-01-07', '2021-01-11', 43200, 'apart en planta baja con vista al mar', '', 0, 'lorena deiros', '', '', '2+2+m', 4, '2020-12-31', 'W', 12200, 0),
(30, 9, '2021-01-07', '2021-01-10', 0, 'APART 9 viene junto con el apart 10 ', '', 0, 'alejandra schoijet', '', '', '1+1', 2, '2020-12-31', 'W', 0, 0),
(31, 10, '2021-01-07', '2021-01-10', 61800, 'apart en 1p contiguos apart 9 y 10', '', 0, 'miriam sztejnberg', '', '', '2+1+m', 3, '2020-12-31', 'W', 18800, 0),
(32, 19, '2021-01-07', '2021-01-21', 122000, 'apart 2do piso con balcon y vista al mar', '', 0, 'pablo gabriel rodriguez', '', '', '2+caniche', 2, '2020-12-31', 'D', 122000, 0),
(33, 35, '2021-01-07', '2021-01-12', 59000, 'apart vista al mar , todo pago', '', 0, 'sandra vernica garzon', '', '', '2+3', 5, '2020-12-31', 'D', 59000, 0),
(34, 14, '2021-01-08', '2021-01-16', 72000, 'apart 2do piso con balcon', '', 0, 'javier godoy', '', '', '2', 2, '2020-12-31', 'A', 21600, 0),
(35, 16, '2021-01-08', '2021-01-13', 44000, 'apart 2do piso con balcon', '', 0, 'marcos ariola', '', '', '2', 2, '2020-12-31', 'Y', 14000, 0),
(36, 32, '2021-01-08', '2021-01-16', 94000, 'apart en planta baja', '', 0, 'maria eva rey', '', '', '2+3', 5, '2020-12-31', 'D', 28000, 0),
(37, 8, '2021-01-09', '2021-01-16', 61000, 'apart en 1p con balcon y vista al mar', '', 0, 'marcela rizzi', '', '', '2', 2, '2020-12-31', 'A', 20000, 0),
(38, 6, '2021-01-09', '2021-01-16', 0, 'apart 1p con balcon vista al  mar', '', 0, 'priscila aleixo', '', '', '2+2', 4, '2020-12-31', 'Y', 22000, 0),
(39, 13, '2021-01-09', '2021-01-17', 85800, 'apart 13 ', '', 0, 'carina primaverile', '', '', '2+2', 4, '2020-12-31', 'W', 25800, 0),
(40, 20, '2021-01-09', '2021-01-11', 18000, 'apart 2do piso vista al mar', '', 0, 'jorge berinstein', '', '', '2', 2, '2020-12-31', 'A', 8000, 0),
(41, 33, '2021-01-09', '2021-02-01', 200000, 'apart planta baja ', '', 0, 'dani quiroga', '', '', '2+2', 4, '2020-12-31', '', 0, 0),
(42, 38, '2021-01-09', '2021-01-17', 96000, '2do piso vista al mar', '', 0, 'paola leonardt', '', '', '2+2', 4, '2020-12-31', 'D', 29000, 0),
(43, 39, '2021-01-09', '2021-01-17', 96000, '2do piso vista al mar ap38 y 39 juntos', '', 0, 'claudia analia geist', '', '', '2+2', 4, '2020-12-31', 'D', 29000, 0),
(44, 36, '2021-01-09', '2021-01-14', 54000, 'todo pago\nap 1er piso v/m', '', 0, 'adriana bergaglio', '', '', '2+2', 4, '2020-12-31', 'D', 54000, 0),
(45, 10, '2021-01-10', '2021-01-16', 52800, '1er piso c/b', '', 0, 'nora dofi', '', '', '2', 2, '2020-12-31', 'A', 12800, 0),
(46, 17, '2021-01-10', '2021-01-18', 72000, 'ap 17 v/m', '', 0, 'melanie pajaro', '', '', '2', 2, '2020-12-31', 'G', 22000, 0),
(47, 9, '2021-01-11', '2021-01-18', 56000, 'ap 1er p s/B', '', 0, 'carlos alberto  carabba', '', '', '2', 2, '2020-12-31', 'D', 16000, 0),
(48, 5, '2021-01-11', '2021-01-18', 75000, 'previaje todo pago ap pb', '', 0, 'nadia zubiria', '', '', '2+1+c', 3, '2020-12-31', 'D', 75000, 0),
(49, 20, '2021-01-11', '2021-01-19', 70000, 'ap 20 v/m', '', 0, 'nora mangieri', '', '', '1+1', 2, '2020-12-31', 'A', 20000, 0),
(50, 21, '2021-01-11', '2021-01-17', 70800, '2p c/b', '', 0, 'milano jorge', '', '', '2+3', 5, '2020-12-31', 'Y', 20800, 0),
(51, 34, '2021-01-11', '2021-01-16', 54000, '1er p v/m', '', 0, 'cristian matias castro', '', '', '2+2', 4, '2020-12-31', 'W', 14000, 0),
(52, 35, '2021-01-12', '2021-01-18', 64800, 'ap 1er piso 5 pax', '', 0, 'gabriel campitelli', '', '', '2+2', 4, '2020-12-31', 'W', 19800, 0),
(53, 16, '2021-01-13', '2021-01-23', 88000, 'ap 2p c/b\n', '', 0, 'daniel aranega', '', '', '2', 2, '2020-12-31', 'D', 26000, 0),
(54, 11, '2021-01-14', '2021-01-20', 52800, 'ap 1er p c/b v/m\n\n', '', 0, 'andrea pereyra', '', '', '1+1', 2, '2020-12-31', 'G', 12800, 0),
(55, 31, '2021-01-14', '2021-01-17', 107000, '3 noches apart 31 y 7 noches apart 21.', '', 0, 'miguel angel ernaiz', '', '', '2+2+m', 4, '2020-12-31', 'W', 37000, 0),
(56, 21, '2021-01-17', '2021-01-24', 0, 'viene de pase del apart 31.', '', 0, 'miguel angel ernaiz', '', '', '2+2+m', 4, '2020-12-31', 'W', 0, 0),
(57, 36, '2021-01-14', '2021-01-23', 97000, 'apart 1p vista al mar con balcon', '', 0, 'guadalupe lopez', '', '', '2+2', 4, '2020-12-31', 'Y', 27000, 0),
(58, 1, '2021-01-16', '2021-01-25', 64000, 'dicho apart 1', '', 0, 'hernan maraslioglu', '', '', '2', 2, '2020-12-31', 'W', 20000, 0),
(59, 6, '2021-01-16', '2021-01-31', 145000, 'apart en 1p con balcon', '', 0, 'juan peletti y maria prietto', '', '', '3', 3, '2020-12-31', 'W', 45000, 0),
(60, 8, '2021-01-16', '2021-01-24', 70000, 'apart 1p con balcon', '', 0, 'ernesto orsini', '', '', '2', 2, '2020-12-31', 'W', 21000, 0),
(61, 32, '2021-01-16', '2021-01-18', 17600, 'apart en pb', '', 0, 'francisco geseli y josefina cullen', '', '', '2+m', 2, '2020-12-31', 'W', 7600, 0),
(62, 10, '2021-01-16', '2021-01-23', 75000, 'apart 1p con balcon apart 10', '', 0, 'gustavo iglesias', '', '', '2+2+caniche', 4, '2020-12-31', 'W', 25000, 0),
(63, 34, '2021-01-16', '2021-01-23', 82000, 'apart 1 p ', '', 0, 'leandro kovalevski', '', '', '2+1+cuna', 3, '2020-12-31', 'Y', 25000, 0),
(64, 13, '2021-01-17', '2021-01-23', 60000, 'apart 1p con balcon 5 pax', '', 0, 'carolina torres moreno', '', '', '2+2+m', 4, '2020-12-31', 'W', 18000, 0),
(65, 38, '2021-01-17', '2021-01-31', 123000, 'apart 2do piso v al mar 5 pax', '', 0, 'jonathan sasky', '', '', '2+cocker', 2, '2020-12-31', 'D', 37000, 0),
(66, 39, '2021-01-17', '2021-01-25', 86000, 'apart 2do p con balcon parte nueva', '', 0, 'guillermina comas', '', '', '2+2', 4, '2020-12-31', 'D', 26000, 0),
(67, 5, '2021-01-18', '2021-01-22', 40000, 'apart en PB', '', 0, 'martin norma', '', '', '1+1+1+1', 4, '2020-12-31', 'Y', 10000, 0),
(68, 9, '2021-01-18', '2021-01-20', 61000, '2 noches apart 9 , 5 noches apart 11', '', 0, 'sandra cazorla', '', '', '2', 2, '2020-12-31', 'G', 18000, 0),
(69, 11, '2021-01-20', '2021-01-25', 0, 'viene de pase del apart 9', '', 0, 'sandra cazorla', '', '', '2', 2, '2020-12-31', 'G', 0, 0),
(70, 14, '2021-01-18', '2021-01-23', 52500, 'apart 2do piso v al mar y balcon', '', 0, 'marisa pignolo', '', '', '1+2+m', 3, '2020-12-31', 'G', 15500, 0),
(71, 15, '2021-01-18', '2021-01-23', 54000, 'apart vista al mar', '', 0, 'gabriela vainstein', '', '', '4', 4, '2020-12-31', 'A', 16000, 0),
(72, 17, '2021-01-18', '2021-01-23', 54000, 'apart vista al mar', '', 0, 'susana castagno', '', '', '4', 4, '2020-12-31', 'A', 16000, 0),
(73, 18, '2021-01-18', '2021-01-28', 88000, '2p con balcon', '', 0, 'samanta blanco', '', '', '2', 2, '2020-12-31', 'D', 26000, 0),
(74, 31, '2021-01-18', '2021-01-23', 59000, 'apart planta baja', '', 0, 'natalia rebon', '', '', '2+2+cuna+sillita', 4, '2020-12-31', 'D', 19000, 0),
(75, 32, '2021-01-18', '2021-01-25', 75000, 'apart en planta baja', '', 0, 'elena silvana garzon', '', '', '2+2+golden', 4, '2020-12-31', 'D', 25000, 0),
(76, 35, '2021-01-18', '2021-01-31', 130000, 'apart 1p vista al mar para 5 pax', '', 0, 'eduardo moreno vera', '', '', '2+2+m', 4, '2020-12-31', 'W', 30000, 0),
(77, 20, '2021-01-19', '2021-01-23', 36000, 'apart 2do v/m', '', 0, 'sol giuliodori', '', '', '2', 2, '2020-12-31', 'Y', 10000, 0),
(79, 19, '2021-01-21', '2021-01-28', 62000, 'apart 2do piso v/m', '', 0, 'myriam susana maciel', '', '', '2', 2, '2020-12-31', 'Y', 18000, 0),
(80, 5, '2021-01-22', '2021-01-27', 54000, 'apart pb', '', 0, 'emilio puccitelli', '', '', '2+2', 4, '2020-12-31', 'Y', 16000, 0),
(81, 15, '2021-01-23', '2021-01-28', 50000, 'apart 2do piso sin balcon ', '', 0, 'daniel ricltione', '', '', '4 adultos', 4, '2020-12-31', 'Y', 15000, 0),
(82, 16, '2021-01-23', '2021-01-30', 68000, '2do piso balcon vista mar', '', 0, 'rodrigo pellegnoti y agostina maniotti', '', '', '2+1', 3, '2020-12-31', 'D', 20000, 0),
(83, 17, '2021-01-23', '2021-01-26', 27000, '2do piso vista mar', '', 0, 'fernando saul', '', '', '2+1', 3, '2020-12-31', 'Y', 7000, 0),
(84, 20, '2021-01-23', '2021-01-28', 45000, '2do piso con balcon vista mar', '', 0, 'erica casarin novak', '', '', '2', 2, '2020-12-31', 'D', 26000, 0),
(85, 36, '2021-01-23', '2021-01-30', 70000, '1er piso con balcon vista mar', '', 0, 'paola cova', '', '', '2+2', 4, '2020-12-31', 'G', 20000, 0),
(86, 37, '2021-01-23', '2021-01-30', 77900, 'apart 37\n', '', 0, 'cinthia chirichella', '', '', '2+3', 5, '2020-12-31', 'Y', 18000, 0),
(87, 34, '2021-01-23', '2021-01-31', 93000, '1er piso con balcon', '', 0, 'marina german', '', '', '5 adultos', 5, '2020-12-31', 'G', 28000, 0),
(88, 8, '2021-01-24', '2021-01-31', 62000, '1er piso con balcon', '', 0, 'raquel torres', '', '', '2', 2, '2020-12-31', 'Y', 18000, 0),
(89, 31, '2021-01-24', '2021-02-05', 120000, 'celiaca', '', 0, 'gisela kovacic', '', '', '2+2', 4, '2020-12-31', 'G', 36000, 0),
(90, 10, '2021-01-25', '2021-02-01', 61000, '1er piso con balcon\n', '', 0, 'maria eterovich', '', '', '2', 2, '2020-12-31', 'G', 18000, 0),
(91, 32, '2021-01-25', '2021-01-30', 54000, 'ap 32 pb vista al frente', '', 0, 'della bita susana', '', '', '4', 4, '2021-01-01', 'Y', 15000, 0),
(93, 11, '2021-01-25', '2021-02-01', 61000, 'apart 1er piso', '', 0, 'alicia mannino', '', '', '2', 2, '2021-01-01', 'G', 18000, 0),
(94, 13, '2021-01-25', '2021-02-01', 82000, 'apart 1er piso con balcon y vista al mar', '', 0, 'tobio juan carlos', '', '', '2+2', 4, '2021-01-01', 'W', 22000, 0),
(95, 14, '2021-01-25', '2021-01-29', 35200, 'apart 2do piso con balcon', '', 0, 'susana mamoliti', '', '', '1+1', 2, '2021-01-01', 'Y', 10200, 0),
(96, 3, '2021-01-19', '2021-01-24', 45000, 'apart planta baja', '', 0, 'maria cecilia zappa villar', '', '', '2+labrador', 2, '2021-01-01', 'G', 15000, 0),
(97, 4, '2021-01-29', '2021-02-01', 27000, 'apart pb', '', 0, 'gloria pasman', '', '', '1+1', 2, '2021-01-01', 'W', 7000, 0),
(98, 14, '2021-01-29', '2021-02-02', 48000, 'ap 2do piso con balcon vista mar', '', 0, 'masters elizabeth', '', '', '2+2', 4, '2021-01-01', 'W', 15000, 0),
(99, 36, '2021-01-30', '2021-02-13', 140000, 'apart 10 vista mar', '', 0, 'flavio bustos', '', '', '2+2', 4, '2021-01-01', 'W', 50000, 0),
(100, 16, '2021-01-30', '2021-02-06', 61000, '2do piso con balcon', '', 0, 'analia armand', '', '', '2', 2, '2021-01-01', 'D', 18000, 0),
(101, 32, '2021-01-30', '2021-02-13', 140000, 'apart 5pax pb', '', 0, 'julieta barambones', '', '', '2+2', 4, '2021-01-01', 'W', 40000, 0),
(102, 34, '2021-01-31', '2021-02-10', 118000, '', '', 0, 'analia kalamesky y rodrigo schoj', '', '', '2+2', 4, '2021-01-01', 'D', 118000, 0),
(103, 38, '2021-01-31', '2021-02-12', 105600, '', '', 0, 'liliana beatriz silnik', '', '', '1+1', 2, '2021-01-01', 'D', 105600, 0),
(104, 39, '2021-01-31', '2021-02-12', 117600, '', '', 0, 'matias schoj y solange madariaga', '', '', '2+1+bb', 3, '2021-01-01', 'D', 117600, 0),
(105, 35, '2021-01-31', '2021-02-07', 75000, '2do piso vista mar sin balcon\n', '', 0, 'laura vanesa conti', '', '', '2+2', 4, '2021-01-01', 'D', 75000, 0),
(106, 15, '2021-01-31', '2021-02-07', 61000, '2do piso vista mar', '', 0, 'karina norma mercadante', '', '', '1+1', 2, '2021-01-01', 'D', 61000, 0),
(107, 35, '2021-01-03', '2021-01-06', 35400, 'apart 35 y apart 1 vienen juntos', '', 0, 'carolina otero', '', '', '2+2+bb', 4, '2021-01-02', 'W', 10000, 0),
(108, 1, '2021-01-03', '2021-01-06', 26400, 'apart 35 y apart 1 vienen juntos', '', 0, 'carolina otero', '', '', '2+1', 3, '2021-01-02', 'W', 10000, 0),
(109, 20, '2021-01-03', '2021-01-07', 35200, 'apart en segundo píso  vista al mar plena ', '', 0, 'silvina gomez', '', '', '2', 2, '2021-01-02', 'W', 0, 0),
(110, 22, '2021-01-05', '2021-01-09', 36000, 'apart 22', '', 0, 'rocio virginia sauco', '', '', '2+1', 3, '2021-01-02', 'G', 10000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `pass`) VALUES
(1, 'aparthotel', '0a7f27b7e2ed910db55b99e343a98c9a');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_cliente`
--
ALTER TABLE `datos_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_cliente`
--
ALTER TABLE `datos_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
