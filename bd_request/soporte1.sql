-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-06-2022 a las 15:05:29
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soporte1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activos`
--

CREATE TABLE `activos` (
  `id` bigint(20) NOT NULL,
  `Codigo` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NombreActivo` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Marca` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Modelo` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NroSerial` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Oficina` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Condicion` text COLLATE utf8mb4_unicode_ci,
  `UsuarioAsig` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observaciones` text COLLATE utf8mb4_unicode_ci,
  `CapRecursos` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Empresa` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activos`
--

INSERT INTO `activos` (`id`, `Codigo`, `NombreActivo`, `Marca`, `Modelo`, `NroSerial`, `Oficina`, `Condicion`, `UsuarioAsig`, `Observaciones`, `CapRecursos`, `Empresa`, `deleted_at`) VALUES
(1, NULL, 'laptop', 'HP', 'HP-15-CX0', 'CN085038BS', 'PRIMER PISO', 'adecuado', 'BRANDON COPALI', NULL, 'si', 'galileo', NULL),
(2, NULL, 'cargador', 'HP', 'TPN-CA11', NULL, 'PRIMER PISO', 'adecuado', 'BRANDON COPALI', NULL, 'no', 'galileo', NULL),
(4, NULL, 'mouse', 'GENIUS', 'NX-7015', NULL, 'PRIMER PISO', 'adecuado', 'BRANDON COPALI', NULL, 'no', 'galileo', NULL),
(5, NULL, 'tv-plasma', 'LG', '50PW', '10812MEN32527', 'PRIMER PISO', 'adecuado', 'MARITZA NUÑEZ', NULL, 'no', 'galileo', NULL),
(6, NULL, 'teclado', 'QR', NULL, NULL, 'PRIMER PISO', 'adecuado', 'MILENKA', NULL, 'no', 'celina', NULL),
(7, NULL, 'mouse', 'QR', '3D OPTICAL', NULL, 'PRIMER PISO', 'adecuado', 'MILENKA', NULL, 'no', 'celina', NULL),
(8, NULL, 'monitor', 'ASUS', '10HY002A0S', NULL, 'PRIMER PISO', 'adecuado', 'MILENKA', NULL, 'no', 'celina', NULL),
(9, NULL, 'pc-escritorio', 'LENOVO', 'M700', NULL, 'PRIMER PISO', 'adecuado', 'MILENKA', NULL, 'si', 'celina', NULL),
(10, NULL, 'pc-escritorio', NULL, 'PRIME Z390', NULL, 'PRIMER PISO', 'adecuado', 'LUIS MIGUEL', 'Suspesión mala', 'si', 'celina', NULL),
(11, NULL, 'mouse', 'DELUX', 'H321', NULL, 'PRIMER PISO', 'dañado', 'LUIS MIGUEL', 'Falla', 'no', 'celina', NULL),
(12, NULL, 'teclado', 'GENIUS', 'GK-1500', NULL, 'PRIMER PISO', 'adecuado', 'LUIS MIGUEL', NULL, 'no', 'celina', NULL),
(13, NULL, 'monitor', 'SAMSUNG', 'LUU28E5', NULL, 'PRIMER PISO', 'adecuado', 'LUIS MIGUEL', NULL, 'no', 'celina', NULL),
(14, NULL, 'pc-escritorio', 'LENOVO', 'MJ046X', '10FLS0YA', 'PRIMER PISO', 'adecuado', NULL, NULL, 'si', 'celina', NULL),
(15, NULL, 'teclado', 'GENIUS', 'GK-1000', NULL, 'PLANTA BAJA', 'adecuado', NULL, NULL, 'no', 'celina', NULL),
(16, NULL, 'mouse', 'GENIUS', 'GM-150030', NULL, 'PLANTA BAJA', 'req_man', NULL, 'Scroll no sirve', 'no', 'celina', NULL),
(17, NULL, 'pc-escritorio', 'LENOVO', '10FLS0YA00', 'MJ04APK2', 'PLANTA BAJA', 'adecuado', NULL, NULL, 'si', 'celina', NULL),
(18, NULL, 'mouse', 'GENIUS', 'DX-110', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL),
(19, NULL, 'teclado', 'GENIUS', 'OM-06', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL),
(20, NULL, 'tv-plasma', 'SURE', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL),
(21, NULL, 'impresora', 'HP', 'CE658A', 'BRBSH5D6HW', 'PLANTA BAJA', 'adecuado', 'JOSE CARLOS', NULL, 'no', 'pacucito', NULL),
(22, NULL, 'teclado', 'GENIUS', 'GK-070006', '509036931', 'PLANTA BAJA', 'adecuado', 'JOSE CARLOS', NULL, 'no', 'pacucito', NULL),
(23, NULL, 'mouse', 'SURE', 'OPTICAL MOUSE', NULL, 'PRIMER PISO', 'adecuado', 'JOSE CARLOS', NULL, 'no', 'pacucito', NULL),
(24, NULL, 'teclado', 'GENIUS', 'GK-100015', 'XE1807624152', 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL),
(25, NULL, 'mouse', 'GENIUS', 'GM-03003', '148292404319', 'TERCER PISO', 'adecuado', NULL, NULL, 'no', 'celina', NULL),
(26, NULL, 'proyector', 'EPSON', NULL, NULL, 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL),
(27, NULL, 'proyector', 'EPSON', NULL, NULL, 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL),
(28, NULL, 'parlantes', 'GENIUS', 'SP-U115', 'ZF2Z74511203', 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL),
(29, NULL, 'pc-escritorio', 'LG', 'H61H2-MV', '00000000', 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'si', 'celina', NULL),
(30, NULL, 'impresora', 'ZEBRA', 'ZXP51', 'Z11US00', 'SEGUNDO PISO', 'adecuado', 'NOELIA QUISPE', NULL, 'no', 'celina', NULL),
(31, NULL, 'impresora', 'EPSON', 'L220', '509082908', 'SEGUNDO PISO', 'adecuado', 'TATIANA HURTADO', 'NECESITA TINTA', 'no', 'celina', NULL),
(32, NULL, 'laptop', 'APPLE', 'MACBOOK PRO', 'W89361HR644', 'SEGUNDO PISO', 'dañado', 'NOELIA QUISPE', 'sistema operativo lento', 'si', 'celina', NULL),
(33, NULL, 'laptop', 'DELL', 'V-5402', 'A2XUPQ3', 'SEGUNDO PISO', 'adecuado', 'CARMEN BALCAZAR', 'Sistema Operativo Lento', 'si', 'celina', NULL),
(34, NULL, 'monitor', 'LG', 'LED 20M3S', '403NDVWSW903', 'SEGUNDO PISO', 'adecuado', 'CARMEN BALCAZAR', NULL, 'no', 'celina', NULL),
(35, NULL, 'cargador', 'APPLE', 'MACBOOK PRO', NULL, 'SEGUNDO PISO', 'req_man', 'NOELIA QUISPE', 'Cargador Antiguo', 'no', 'celina', NULL),
(36, NULL, 'laptop', 'TOSHIBA', 'SATELITE C45', '8F1086625P', 'SEGUNDO PISO', 'req_man', 'JOSUE ARPANDONA', 'No Funciona el Panel Tatil', 'si', 'celina', NULL),
(37, NULL, 'cargador', 'TOSHIBA', NULL, 'G7116000AR410', 'SEGUNDO PISO', 'adecuado', 'JOSUE ARPANDONA', NULL, 'no', 'celina', NULL),
(38, NULL, 'cargador', 'DELL', 'CN-OKYTRW', 'R-41012432', 'SEGUNDO PISO', 'adecuado', 'CARMEN BALCAZAR', NULL, 'no', 'celina', NULL),
(39, NULL, 'mouse', 'SOFT', '3P OPTICAL', NULL, 'SEGUNDO PISO', 'req_man', 'CARMEN BALCAZAR', 'Scroll no sirve', 'no', 'celina', NULL),
(40, NULL, 'pc-escritorio', 'SAMSUMG', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'MAYRA VELAZQUEZ', 'Sistema Operativo Lento y Puerto Frontal No Sirve', 'si', 'celina', NULL),
(41, NULL, 'mouse', 'GENIUS', 'GM-150', NULL, 'PLANTA BAJA', 'adecuado', 'MAYRA VACA', NULL, 'no', 'celina', NULL),
(42, NULL, 'teclado', 'DELUX', 'OM-06', NULL, 'PLANTA BAJA', 'adecuado', 'MAYRA VACA', NULL, 'no', 'celina', NULL),
(43, NULL, 'pc-escritorio', NULL, NULL, NULL, 'PLANTA BAJA', 'req_man', 'JORGE CAMPOS', 'Sistema operativo lento', 'si', 'celina', NULL),
(44, NULL, 'monitor', 'VIEWSONIC', 'VA1903A', NULL, 'PLANTA BAJA', 'adecuado', 'JORGE CAMPOS', NULL, 'no', 'celina', NULL),
(45, NULL, 'teclado', 'SOFT', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'JORGE CAMPOS', NULL, 'no', 'celina', NULL),
(46, NULL, 'mouse', 'Optical', NULL, NULL, 'PLANTA BAJA', 'baja', 'JORGE CAMPOS', 'scroll no sirve', 'no', 'celina', NULL),
(47, NULL, 'scanner', 'BROTHER', 'ADS--2400N', 'U65B7G1', 'PLANTA BAJA', 'adecuado', 'JORGE CAMPOS', NULL, 'no', 'celina', NULL),
(48, NULL, 'cargador', 'BROTHER', 'R4102256', NULL, 'PLANTA BAJA', 'adecuado', 'JORGE CAMPOS', NULL, 'no', 'celina', NULL),
(49, NULL, 'laptop', 'LENOVO', 'ZDU1S0FY00', 'PF2DZ5AH', 'PRIMER PISO', 'adecuado', 'Beatriz Caceres', NULL, 'si', 'celina', NULL),
(50, NULL, 'cargador', 'LENOVO', NULL, NULL, 'PRIMER PISO', 'adecuado', 'Beatriz Caceres', NULL, 'no', 'celina', NULL),
(51, NULL, 'mouse', 'OPTICAL', 'M363', 'M363J001804', 'PRIMER PISO', 'adecuado', 'Beatriz Caceres', 'NRO 15', 'no', 'celina', NULL),
(52, NULL, 'monitor', 'SAMSUMG', 'S19D300', 'ZZE4H4LG805761M', 'PRIMER PISO', 'adecuado', 'Beatriz Caceres', NULL, 'no', 'celina', NULL),
(53, NULL, 'laptop', 'LENOVO', 'OUE5', 'MP1CJJUE', 'PRIMER PISO', 'adecuado', 'ROBERT VACA', NULL, 'si', 'celina', NULL),
(54, NULL, 'monitor', 'ASUS', NULL, 'KZLMTF078405', 'PRIMER PISO', 'adecuado', 'ROBERT VACA', NULL, 'no', 'celina', NULL),
(55, NULL, 'cargador', 'LENOVO', 'PA145055LL', NULL, 'PRIMER PISO', 'adecuado', 'ROBERT VACA', NULL, 'no', 'celina', NULL),
(56, NULL, 'monitor', 'SAMSUMG', 'LS22F350', '0ABZHCNNC007798', 'PRIMER PISO', 'adecuado', 'RICARDO YEPEZ', NULL, 'no', 'celina', NULL),
(57, NULL, 'pc-escritorio', NULL, 'A0HY002AUS', 'MJ04LN0', 'PRIMER PISO', 'adecuado', 'ELIANA SUAREZ', NULL, 'si', 'celina', NULL),
(58, NULL, 'monitor', 'ASUS', NULL, NULL, 'PRIMER PISO', 'adecuado', 'ELIANA SUAREZ', NULL, 'no', 'celina', NULL),
(59, NULL, 'mouse', NULL, '3D OPTICAL', NULL, 'PRIMER PISO', 'adecuado', 'ELIANA SUAREZ', NULL, 'no', 'celina', NULL),
(60, NULL, 'teclado', 'QR', NULL, NULL, 'PRIMER PISO', 'req_man', 'ELIANA SUAREZ', 'Teclas Dañadas', 'no', 'celina', NULL),
(61, NULL, 'laptop', 'HP', 'HP 250 G6', 'CND7476B3Y', 'PRIMER PISO', 'req_man', 'MARITZA NUÑEZ', 'Sistema operativo lento', 'si', 'celina', NULL),
(62, NULL, 'mouse', 'KNUP', 'KPM6005', NULL, 'PRIMER PISO', 'dañado', 'MARITZA NUÑEZ', 'Cable Suelto', 'no', 'celina', NULL),
(63, NULL, 'cargador', 'HP', NULL, NULL, 'PRIMER PISO', 'adecuado', 'MARITZA NUÑEZ', NULL, 'no', 'celina', NULL),
(64, NULL, 'telefono', 'DENWA', 'DW-ZLOP', '440G26744002661', 'PRIMER PISO', 'adecuado', 'MARITZA NUÑEZ', NULL, 'no', 'celina', NULL),
(65, NULL, 'laptop', 'DELL', 'V 143000', '59RB2D3', 'SEGUNDO PISO', 'req_man', 'TATIANA HURTADO', 'El equipo se calienta', 'si', 'celina', NULL),
(66, NULL, 'laptop', 'HP', '15-D5XX', 'CND8118LSP', 'SEGUNDO PISO', 'adecuado', 'CHRISTELL P.', 'Un Puerto Dañado', 'si', 'celina', NULL),
(67, NULL, 'laptop', 'DELL', 'V 3400', 'C1XL983', 'SEGUNDO PISO', 'adecuado', 'SERGIO B.', NULL, 'si', 'celina', NULL),
(68, NULL, 'laptop', 'DELL', '5520', 'B9C0DS1', 'SEGUNDO PISO', 'req_man', 'BETZAIDA', 'Sistema Ooperativo lento', 'si', 'celina', NULL),
(69, NULL, 'telefono', 'DENWA', 'DW-21OP', 'G26744002667', 'SEGUNDO PISO', 'dañado', 'SERGIO B.', 'Se cortan las llamadas', 'no', 'celina', NULL),
(70, NULL, 'pc-escritorio', NULL, NULL, NULL, 'SEGUNDO PISO', 'req_man', 'SHARON', 'Sistema Operativo lento', 'si', 'celina', NULL),
(71, NULL, 'laptop', 'DELL', 'G155510', '7QSYLF3', 'SEGUNDO PISO', 'req_man', 'LILIANA', 'Sistema operativo lento', 'si', 'celina', NULL),
(72, NULL, 'impresora', 'HP', 'LISEGP11', 'VRUVSFGRP', 'SEGUNDO PISO', 'baja', NULL, 'Fuera de servicio', 'no', 'celina', NULL),
(73, NULL, 'laptop', 'LENOVO', '30TDS00B00', 'MJ0GEGZ', 'SEGUNDO PISO', 'adecuado', 'REBECA', 'Sofware nececita Serial', 'si', 'celina', NULL),
(74, NULL, 'cargador', 'LENOVO', '1A60JFK', NULL, 'SEGUNDO PISO', 'adecuado', 'REBECA', NULL, 'no', 'celina', NULL),
(75, NULL, 'cargador', 'DELL', NULL, 'CN-OKX', 'SEGUNDO PISO', 'adecuado', 'TATIANA HURTADO', NULL, 'no', 'celina', NULL),
(76, NULL, 'cargador', 'HP', 'R-4T012327', NULL, 'SEGUNDO PISO', 'adecuado', 'CHRISTELL P.', NULL, 'no', 'celina', NULL),
(77, NULL, 'cargador', 'DELL', 'CN-0KXTTW', NULL, 'SEGUNDO PISO', 'adecuado', 'SERGIO B.', NULL, 'no', 'celina', NULL),
(78, NULL, 'monitor', 'AOC', NULL, NULL, 'SEGUNDO PISO', 'adecuado', 'SHARON', NULL, 'no', 'celina', NULL),
(79, NULL, 'mouse', 'DELUX', 'M321', NULL, 'SEGUNDO PISO', 'adecuado', 'SHARON', NULL, 'no', 'celina', NULL),
(80, NULL, 'teclado', 'DELUX', 'KA180', NULL, 'SEGUNDO PISO', 'adecuado', 'SHARON', NULL, 'no', 'celina', NULL),
(81, NULL, 'parlantes', 'KNUP', 'KP-7030', NULL, 'SEGUNDO PISO', 'adecuado', 'SHARON', NULL, 'no', 'celina', NULL),
(82, NULL, 'cargador', 'DELL', NULL, NULL, 'SEGUNDO PISO', 'adecuado', 'LILIANA', NULL, 'no', 'celina', NULL),
(83, NULL, 'telefono', 'DENWA', 'DW-910', '339 FR7136000333', 'PLANTA BAJA', 'dañado', 'MAYRA VELASCO', 'Se cortan las  llamadas', 'no', 'celina', NULL),
(84, NULL, 'monitor', 'SAMSUMG', 'S19D300', 'ZZE444LG800878P', 'PLANTA BAJA', 'adecuado', 'MAYRA VELASCO', NULL, 'no', 'celina', NULL),
(85, NULL, 'impresora', 'BROTHER', 'QL-700', 'E70712-E67900', 'PLANTA BAJA', 'adecuado', 'MAYRA VELASCO', NULL, 'no', 'celina', NULL),
(86, NULL, 'laptop', 'HP', 'HP-250-G6', 'CND-91740PD', 'PRIMER PISO', 'adecuado', 'DANIELA JUSTINIANO', NULL, 'si', 'celina', NULL),
(87, NULL, 'mouse', 'GENIUS', 'OX-110', 'X7H9036819', 'PLANTA BAJA', 'adecuado', 'DANIELA JUSTINIANO', NULL, 'no', 'celina', NULL),
(88, NULL, 'monitor', 'SAMSUMG', 'ls-22f', NULL, 'PRIMER PISO', 'adecuado', 'DANIELA JUSTINIANO', NULL, 'no', 'celina', NULL),
(89, NULL, 'cargador', 'HP', 'L-25296', NULL, 'PRIMER PISO', 'adecuado', 'DANIELA JUSTINIANO', NULL, 'no', 'celina', NULL),
(90, NULL, 'laptop', 'TOSHIBA', 'C55-C', '7F312988C', 'PRIMER PISO', 'adecuado', 'GRECIA CANDIA', 'Se le cambio su bateria por una nueva', 'si', 'celina', NULL),
(91, NULL, 'pc-escritorio', NULL, 'GB-BPCE345', NULL, 'PLANTA BAJA', 'adecuado', NULL, NULL, 'si', 'celina', NULL),
(92, NULL, 'impresora', 'STAR MICRONIC', 'A001', '2430116010', 'PLANTA BAJA', 'adecuado', NULL, NULL, 'no', 'celina', NULL),
(93, NULL, 'pc-escritorio', 'ASUS', 'A0HY002AUS', 'MJ04MLCG', 'PRIMER PISO', 'adecuado', 'MERCEDES', NULL, 'si', 'galileo', NULL),
(94, NULL, 'monitor', 'ASUS', NULL, NULL, 'PRIMER PISO', 'adecuado', 'MERCEDES', NULL, 'no', 'galileo', NULL),
(95, NULL, 'teclado', NULL, NULL, NULL, 'PRIMER PISO', 'adecuado', 'MERCEDES', NULL, 'no', 'celina', NULL),
(96, NULL, 'telefono', 'DENWA', 'DW-ZIDP', '440G26744002518', 'PRIMER PISO', 'adecuado', 'RAUL TERCEROS', NULL, 'no', 'celina', NULL),
(97, NULL, 'laptop', 'LENOVO', '81WA', 'PF33NH2T', 'PRIMER PISO', 'adecuado', 'MIGUEL VACA', NULL, 'si', 'celina', NULL),
(98, NULL, 'cargador', 'LENOVO', 'PA-145055LL', NULL, 'PRIMER PISO', 'adecuado', 'MIGUEL VACA', NULL, 'no', 'celina', NULL),
(99, NULL, 'laptop', 'DELL', 'VOSTRO-3400', '8N9H2D3', 'PRIMER PISO', 'adecuado', 'VIVIANA PAZ', NULL, 'si', 'celina', NULL),
(100, NULL, 'mouse', 'LOGI', 'M187', '2113LZDISO98', 'PRIMER PISO', 'adecuado', 'VIVIANA PAZ', NULL, 'no', 'celina', NULL),
(101, NULL, 'cargador', 'DELL', 'CN-DKXRRW', NULL, 'PRIMER PISO', 'adecuado', 'VIVIANA PAZ', NULL, 'no', 'celina', NULL),
(102, NULL, 'laptop', 'LENOVO', '81HN', 'R9OUV29AK', 'PRIMER PISO', 'adecuado', 'MARIA JUSTINIANO', NULL, 'si', 'celina', NULL),
(103, NULL, 'mouse', 'GENIUS', 'GM-03003', '148102103162', 'PRIMER PISO', 'adecuado', 'MARIA JUSTINIANO', NULL, 'no', 'celina', NULL),
(104, NULL, 'cargador', 'LENOVO', 'APLX45NDC3A', NULL, 'PRIMER PISO', 'adecuado', 'MARIA JUSTINIANO', NULL, 'no', 'celina', NULL),
(105, NULL, 'mouse', 'RLIP', 'KMD130', NULL, 'PRIMER PISO', 'adecuado', 'MARIA JUSTINIANO', NULL, 'no', 'celina', NULL),
(106, NULL, 'mouse', 'GENIUS', 'GM-150032', 'X0L95786605533', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL),
(107, NULL, 'pc-escritorio', 'LENOVO', 'INSPIRON 3050', '3PYMSX1', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'si', 'celina', NULL),
(108, NULL, 'monitor', 'LG', '32LH5008', '607JXQ4N172', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL),
(109, NULL, 'teclado', 'GENIUS', 'GX-10011', 'XP1658980408', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL),
(110, NULL, 'cargador', 'DELL', 'LA45NM140', NULL, 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL),
(111, NULL, 'cargador', 'LENOVO', NULL, '11542T492671ZF3F', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL),
(112, NULL, 'laptop', 'DELL', 'INSPIRON 3583', '680Q0Y2', 'PLANTA BAJA', 'req_man', 'XIMENA EGUEZ', 'Sistema operativo lento', 'si', 'celina', NULL),
(113, NULL, 'laptop', 'DELL', 'INSPIRON 3583', '8GGB672', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'si', 'celina', NULL),
(114, NULL, 'cargador', 'DELL', 'HA45NM140', NULL, 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL),
(115, NULL, 'telefono', 'PANASONIC', 'KXT550', '8AAKJ767155', 'PLANTA BAJA', 'adecuado', 'CRISTIAN CASTEDO', NULL, 'no', 'celina', NULL),
(116, NULL, 'tv-plasma', 'SURE', NULL, '213057110', 'PLANTA BAJA', 'adecuado', 'CRISTIAN CASTEDO', NULL, 'no', 'celina', NULL),
(117, NULL, 'telefono', 'PANASONIC', 'KXT5500LX', '8AAJ767156', 'PLANTA BAJA', 'adecuado', 'CRISTIAN CASTEDO', NULL, 'no', 'celina', NULL),
(118, NULL, 'mouse', '3D OPTICAL', 'RTM019', NULL, 'PLANTA BAJA', 'adecuado', 'CRISTIAN CASTEDO', NULL, 'no', 'celina', NULL),
(119, NULL, 'pc-escritorio', 'GIGABYTE', 'GX3-BACE-3150', NULL, 'PLANTA BAJA', 'adecuado', 'ROCIO', NULL, 'no', 'celina', NULL),
(120, NULL, 'teclado', 'DELUX', 'OM-06', 'X0M-066J000510', 'PLANTA BAJA', 'adecuado', 'ROCIO', NULL, 'no', 'celina', NULL),
(121, NULL, 'mouse', 'DELUX', '3D OPTICAL', NULL, 'PLANTA BAJA', 'adecuado', 'ROCIO', NULL, 'no', 'celina', NULL),
(122, NULL, 'laptop', 'DELL', 'INSPIRON 3583', 'C475572', 'PLANTA BAJA', 'req_man', 'DANIEL RIVERO', 'Excel demasiado lento, no prende el equipo en ciertas ocasiones.', 'si', 'celina', NULL),
(123, NULL, 'cargador', 'DELL', 'LA45NM140', NULL, 'PLANTA BAJA', 'adecuado', 'DANIEL RIVERO', NULL, 'no', 'celina', NULL),
(124, NULL, 'monitor', 'LG', '19EN335A', '301N0PMGX906', 'PLANTA BAJA', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL),
(125, NULL, 'laptop', 'DELL', 'VOSTRO-3400', '6X9M393', 'PLANTA BAJA', 'adecuado', 'CARLOS MELGAR', NULL, 'si', 'celina', NULL),
(126, NULL, 'pc-escritorio', 'GIGABYTE', 'MZGLKDP', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', 'PC-MINI', 'si', 'celina', NULL),
(127, NULL, 'teclado', 'GENIUS', '6K070', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL),
(128, NULL, 'mouse', 'DELUX', 'M-360', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL),
(129, NULL, 'tv-plasma', 'SURE', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL),
(130, NULL, 'tv-plasma', 'SURE', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL),
(131, NULL, 'laptop', 'LENOVO', 'E5X0', 'PF1ET3WF', 'PRIMER PISO', 'adecuado', 'CHARLES BARRETO', NULL, 'si', 'celina', NULL),
(132, NULL, 'teclado', 'LOGITECH', 'K120', NULL, 'PRIMER PISO', 'adecuado', 'CHARLES BARRETO', NULL, 'no', 'celina', NULL),
(133, NULL, 'mouse', 'LOGITECH', 'HS-04', NULL, 'PRIMER PISO', 'adecuado', 'CHARLES BARRETO', NULL, 'no', 'celina', NULL),
(134, NULL, 'monitor', 'LG', '25-UM', NULL, 'PRIMER PISO', 'adecuado', 'CHARLES BARRETO', NULL, 'no', 'celina', NULL),
(135, NULL, 'pc-escritorio', NULL, NULL, NULL, 'PLANTA BAJA', 'adecuado', 'JOSE CARLOS', 'Sistema operativo lento, la mayoría de los puertos usb no sirven', 'si', 'pacucito', NULL),
(136, NULL, 'monitor', 'SAMSUNG', 'S19D3', NULL, 'PLANTA BAJA', 'adecuado', 'JOSE CARLOS', NULL, 'no', 'pacucito', NULL),
(137, NULL, 'impresora', 'CANON', 'ME-3520', 'KKDET19251', 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL),
(138, NULL, 'pc-escritorio', 'SOFT', NULL, NULL, NULL, 'adecuado', NULL, NULL, 'si', 'multipago', NULL),
(139, NULL, 'monitor', 'SAMSUNG', '5190D300', 'ZZE4H4LGBO5333V', 'CALL CENTER', 'adecuado', 'JOSE EDUARDO ROBLES', NULL, 'no', 'multipago', NULL),
(140, NULL, 'teclado', 'SOFT', NULL, NULL, 'CALL CENTER', 'adecuado', 'JOSE EDUARDO ROBLES', NULL, 'no', 'multipago', NULL),
(141, NULL, 'mouse', 'SOFT', 'OPTICAL MOUSE', NULL, 'CALL CENTER', 'adecuado', 'JOSE EDUARDO ROBLES', NULL, 'no', 'multipago', NULL),
(142, NULL, 'pc-escritorio', 'DELUX', NULL, NULL, 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', 'No sirve una entrada USB', 'si', 'multipago', NULL),
(143, NULL, 'monitor', 'SAMSUNG', 'SYNC MASTER SA100', 'ZTN6H41D404529X', 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', NULL, 'no', 'multipago', NULL),
(144, NULL, 'teclado', 'SOFT', NULL, NULL, 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', NULL, 'no', 'multipago', NULL),
(145, NULL, 'mouse', 'GENIUS', 'GM-03022P', 'X804089025485', 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', NULL, 'no', 'multipago', NULL),
(146, NULL, 'pc-escritorio', 'LENOVO', '10FLS0YA00', 'MJ05GYNX', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', NULL, 'si', 'multipago', NULL),
(147, NULL, 'auriculares', 'LOGI', NULL, '2107ME007', 'CALL CENTER', 'adecuado', 'JOSE EDUARDO ROBLES', NULL, 'no', 'multipago', NULL),
(148, NULL, 'auriculares', 'LOGI', NULL, NULL, 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', NULL, 'no', 'multipago', NULL),
(149, NULL, 'monitor', 'SAMSUNG', 'S22I350FHL', 'DABZHCNNC00772V', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', 'Entrada HDMI dañada', 'no', 'multipago', NULL),
(150, NULL, 'teclado', 'GENIUS', 'GK-100015', 'XEL8076241156', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', NULL, 'no', 'multipago', NULL),
(151, NULL, 'mouse', 'GENIUS', 'XUCELLX3', 'XEL807624156', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', NULL, 'no', 'multipago', NULL),
(152, NULL, 'auriculares', 'LOGI', NULL, NULL, 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', NULL, 'no', 'multipago', NULL),
(153, NULL, 'pc-escritorio', 'DELUX', NULL, NULL, 'CALL CENTER', 'adecuado', 'NIZA MASABY', 'Sistema operativo lento', 'si', 'multipago', NULL),
(154, NULL, 'monitor', 'SAMSUNG', 'E1920NX', 'V893H9NZ588638Y', 'CALL CENTER', 'adecuado', 'NIZA MASABY', NULL, 'no', 'multipago', NULL),
(155, NULL, 'teclado', 'DELUX', 'K3100', 'K31008B002323', 'CALL CENTER', 'adecuado', 'NIZA MASABY', NULL, 'no', 'multipago', NULL),
(156, NULL, 'mouse', 'GENIUS', 'NET SCROLL 120', 'X4F87820703615', 'CALL CENTER', 'adecuado', 'NIZA MASABY', NULL, 'no', 'multipago', NULL),
(157, NULL, 'auriculares', 'LOGI', NULL, '2107MA00Z0', 'CALL CENTER', 'adecuado', 'NIZA MASABY', NULL, 'no', 'multipago', NULL),
(158, NULL, 'cargador', 'LENOVO', '42T4430', '11542T4430Z7ZGWEL5W360', 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', 'pc mini', 'no', 'multipago', NULL),
(159, NULL, 'cargador', 'LENOVO', NULL, '11542T442671ZFBF15T423', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', 'pc mini', 'no', 'multipago', NULL),
(160, NULL, 'pc-escritorio', 'LG', NULL, NULL, 'PRODUCCIÓN', 'adecuado', 'ERCIK SANCHEZ', NULL, 'si', 'ticketeg', NULL),
(161, NULL, 'monitor', 'LG', NULL, NULL, 'PRODUCCIÓN', 'adecuado', 'ERICK SANCHEZ', NULL, 'no', 'ticketeg', NULL),
(162, NULL, 'teclado', 'DELUX', 'DM-06', 'KOM-064K004154', 'PRODUCCIÓN', 'adecuado', 'ERCIK SANCHEZ', NULL, 'no', 'ticketeg', NULL),
(163, NULL, 'mouse', 'DELUX', 'MS111L', NULL, 'PRODUCCIÓN', 'adecuado', 'ERICK SANCHEZ', NULL, 'no', 'ticketeg', NULL),
(164, NULL, 'impresora', 'HP', 'LASER P1102', 'BRBSH5F8P9', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL),
(165, NULL, 'impresora', 'BARCODE', 'PT039-50', 'D393030782', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'Impresora de manillas', 'no', 'ticketeg', NULL),
(166, NULL, 'etiquetadora', 'BROTHER', 'QL-700', 'E70712-E6Z900699', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'No se usa', 'no', 'ticketeg', NULL),
(167, NULL, 'etiquetadora', 'BROTHER', 'QL-700', 'E70712-E67900702', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'No se usa', 'no', 'ticketeg', NULL),
(168, NULL, 'impresora', 'BOCA', 'LEMUR', '225083', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'Impresora de manillas', 'no', 'ticketeg', NULL),
(169, NULL, 'usb', 'KINGSTON', 'DTX-64', NULL, 'SEGUNDO PISO', 'adecuado', 'KEVIN TOLEDO', NULL, 'no', 'celina', NULL),
(170, NULL, 'usb', 'KINGSTON', 'DTX-64', NULL, 'SEGUNDO PISO', 'adecuado', 'KEVIN TOLEDO', NULL, 'no', 'celina', NULL),
(171, NULL, 'usb', 'KINGSTON', 'DTX-64', NULL, 'SEGUNDO PISO', 'adecuado', 'WALTER VACA', NULL, 'no', 'celina', NULL),
(172, NULL, 'laptop', 'APPLE', 'MID2015', 'C02QJ7W768WN', 'SOPORTE', 'adecuado', 'FLAVIA RIVERO', 'Bocina no sirve', 'no', 'multipago', NULL),
(173, NULL, 'cargador', 'APPLE', NULL, NULL, 'SOPORTE', 'adecuado', 'FLAVIA RIVERO', NULL, 'no', 'multipago', NULL),
(174, NULL, 'pc-escritorio', NULL, NULL, NULL, 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'si', 'multipago', NULL),
(175, NULL, 'monitor', 'SURE', 'SR-LED32W', 'DSE32D715110', 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'no', 'multipago', NULL),
(176, NULL, 'teclado', 'DELUX', 'KA980', 'KA18081001292', 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'no', 'multipago', NULL),
(177, NULL, 'mouse', 'GENIUS', 'GM-03003', '148292404298', 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'no', 'multipago', NULL),
(178, NULL, 'auriculares', 'LOGI', NULL, '2107HE0020', 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'no', 'multipago', NULL),
(179, NULL, 'pc-escritorio', 'LENOVO', '10FLS0YA00', NULL, 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', NULL, 'si', 'multipago', NULL),
(180, NULL, 'teclado', 'GENIUS', 'GK-100015', 'XE1807624153', 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', NULL, 'no', 'multipago', NULL),
(181, NULL, 'monitor', 'SAMSUNG', 'S22F35', '0ABZHCNNC00', 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', NULL, 'no', 'multipago', NULL),
(182, NULL, 'mouse', 'GENIUS', 'GM-150050', 'KE1807624153', 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', NULL, 'no', 'multipago', NULL),
(183, NULL, 'pc-escritorio', 'GIGABYTE', 'GB-BASE3150', NULL, 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'multipago', NULL),
(184, NULL, 'tv-plasma', 'SURE', 'KA-180', 'KAM808H007425', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'multipago', NULL),
(185, NULL, 'cargador', 'UNIVERSAL', 'KFD-90WNB', NULL, 'CALL CENTER', 'adecuado', 'ALEX PEREZ', '(PC MINI) \r\nSe mueve', 'no', 'multipago', NULL),
(186, NULL, 'pc-escritorio', NULL, NULL, NULL, 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'Cambio de disco', 'si', 'ticketeg', NULL),
(187, NULL, 'mouse', 'GENIUS', 'DX-120', 'XE17087047448', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL),
(188, NULL, 'teclado', 'CPS', 'CPS-X559', NULL, 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL),
(189, NULL, 'monitor', 'SAMSUNG', 'E1920NX', 'V893H9NZ58875AR', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL),
(190, NULL, 'parlantes', 'SOFT', NULL, NULL, 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL),
(191, NULL, 'etiquetadora', 'BROTHER', 'QL-700', 'Z70712-E6Z90', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'No se usa', 'no', 'celina', NULL),
(192, NULL, 'impresora', 'BARCODE', 'DT039-50', 'D3918270636', 'PRODUCCIÓN', 'baja', 'MIGUEL MERCADO', 'No funciona', 'no', 'ticketeg', NULL),
(193, NULL, 'impresora', 'BOCA', 'LEMUR', '225086', NULL, 'adecuado', 'MIGUEL MERCADO', 'Impresora térmica', 'no', 'ticketeg', NULL),
(194, NULL, 'impresora', 'BOCA', 'LEMUR', '225085', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'Impresora térmica', 'no', 'ticketeg', NULL),
(195, NULL, 'laptop', 'HP', 'HP MINI5103', 'CNV12027JH', 'TICKETEG', 'adecuado', NULL, 'Nro 15', 'si', 'ticketeg', NULL),
(196, NULL, 'laptop', 'HP', 'HP 3115M', '5CD23934RY', 'TICKETEG', 'adecuado', NULL, 'Nro 3\r\nSistema operativo lento', 'no', 'ticketeg', NULL),
(197, NULL, 'laptop', 'HP', 'Hp 3115M', '5CD23602V8', 'TICKETEG', 'adecuado', NULL, 'Nro 4\r\nSistema operativo lento', 'si', 'ticketeg', NULL),
(198, NULL, 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 22\r\nEnciende solo con cargador\r\nSin Bateria', 'si', 'ticketeg', NULL),
(199, NULL, 'laptop', 'SAMSUNG', 'N100SP', 'HQV491AC800111', 'TICKETEG', 'adecuado', NULL, 'Nro 11\r\nSistema operativo lento\r\nEnciende solo con cargador', 'si', 'ticketeg', NULL),
(200, NULL, 'laptop', 'HP', 'HP 3115M', 'SCD23434RW', 'TICKETEG', 'adecuado', NULL, 'Nro 2\r\nSoporte roto\r\nEnciende con cargador', 'si', 'ticketeg', NULL),
(201, NULL, 'laptop', 'SAMSUNG', 'N100SP', 'HQV491AC900324', 'TICKETEG', 'adecuado', NULL, 'Nro 8 \r\nSistema Operativo lento\r\nPantalla dañada', 'si', 'ticketeg', NULL),
(202, NULL, 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 9\r\nPantalla dañada\r\nEnciende con cargador', 'si', 'ticketeg', NULL),
(203, NULL, 'laptop', 'MSI', 'MSN051', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 12\r\nSistema operativo lento\r\nSin bateria', 'si', 'ticketeg', NULL),
(204, NULL, 'laptop', 'MSI', 'MS-N014', 'FFFFFFFF', 'TICKETEG', 'adecuado', NULL, 'Nro 13\r\nEnciende con cargador', 'si', 'ticketeg', NULL),
(205, NULL, 'laptop', 'HP', 'HP MINI 5103', 'CNV1200WVQ', 'TICKETEG', 'adecuado', NULL, 'Nro 16 \r\nSistema operativo lento\r\nEnciende con cargador', 'si', 'ticketeg', NULL),
(206, NULL, 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 24 \r\nSistema operativo lento', 'si', 'ticketeg', NULL),
(207, NULL, 'laptop', 'HP', 'HP MINI 5103', 'CNV1200YJ0', 'TICKETEG', 'adecuado', NULL, 'Nro 17\r\nEnciende con cargador', 'si', 'ticketeg', NULL),
(208, NULL, 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 20\r\nEnciende con cargador', 'si', 'ticketeg', NULL),
(209, NULL, 'laptop', 'SAMSUNG', 'N100SP', 'HQU491JC600465', 'TICKETEG', 'adecuado', NULL, 'Nro 6\r\nPantalla rota', 'si', 'ticketeg', NULL),
(210, NULL, 'laptop', 'HP', 'HP MINI 5103', 'CVU1191BSD', 'TICKETEG', 'adecuado', NULL, 'Nro 18\r\nEnciende con cargador', 'si', 'ticketeg', NULL),
(211, NULL, 'laptop', 'SAMSUNG', 'N100SP', 'HQU491AC900250', 'TICKETEG', 'adecuado', NULL, 'Nro 10', 'si', 'ticketeg', NULL),
(212, NULL, 'laptop', 'SAMSUNG', 'N100SP', 'HQV491KL300579', 'TICKETEG', 'adecuado', NULL, 'Nro 7\r\nSistema operativo lento', 'si', 'ticketeg', NULL),
(213, NULL, 'laptop', 'ACER', NULL, '95203872125', 'TICKETEG', 'dañado', NULL, 'Nro15\r\nNo enciende', 'no', 'ticketeg', NULL),
(214, NULL, 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 26\r\nSistema operativo lento', 'si', 'ticketeg', NULL),
(215, NULL, 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 19\r\nNo tiene bateria', 'si', 'ticketeg', NULL),
(216, NULL, 'teclado', 'SURE', 'SURE-K851GKO7000', '508636912', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(217, NULL, 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 25\r\nEnciende con cargadror', 'si', 'ticketeg', NULL),
(218, NULL, 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 21\r\nSistema operativo lento\r\nNo sirve un puerto USB', 'si', 'ticketeg', NULL),
(219, NULL, 'teclado', 'GENIUS', 'GK070008', 'ZCE242700031', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(220, NULL, 'teclado', 'DELUX', 'K6000', 'K60001506000734', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(221, NULL, 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Nro 23 \r\nSistema operativo lento\r\nNo tiene batería', 'no', 'ticketeg', NULL),
(222, NULL, 'teclado', 'DELUX', 'K6000', 'K60001506000314', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(223, NULL, 'laptop', 'HP', 'HP MINI 5103', 'CNU1200Y97', NULL, 'dañado', NULL, 'Nro 14\r\nNo funciona la pantalla', 'no', 'ticketeg', NULL),
(224, NULL, 'teclado', 'DELUX', 'K6000', 'K60001506000309', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(225, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 15', 'no', 'ticketeg', NULL),
(226, NULL, 'teclado', 'DELUX', 'K6000', 'K60001506000665', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(227, NULL, 'teclado', 'DELUX', '0M-06', 'KOM064L004735', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(228, NULL, 'teclado', 'AQUA', 'LK0685', 'INC80763', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(229, NULL, 'cargador', 'Hp', NULL, 'WBGTADBLB2WBSJ', NULL, 'adecuado', 'TICKETEG', 'Nro. 6', 'no', 'ticketeg', NULL),
(230, NULL, 'teclado', 'HP', 'KB-0316', 'BAUDR0JVB', 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'celina', NULL),
(231, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(232, NULL, 'teclado', 'LOGITECH', 'Y-R0009', '1447SY015468', 'TICKETEG', 'baja', NULL, NULL, 'si', 'celina', NULL),
(233, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 12', 'no', 'ticketeg', NULL),
(234, NULL, 'cargador', NULL, 'CPA09-002A', NULL, NULL, 'adecuado', 'TICKETEG', 'Nro. 9', 'no', 'ticketeg', NULL),
(235, NULL, 'teclado', 'LOGITECH', 'Y-R0042', '1432CE07BBD8', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(236, NULL, 'tv-plasma', 'SURE', 'SR-LED32W', 'OSE3218-156', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(237, NULL, 'scanner', 'MOTOROLA', 'DS9208', '14008000502059', 'TICKETEG', 'req_man', NULL, 'Nro 5\r\nCable dañado', 'no', 'ticketeg', NULL),
(238, NULL, 'cargador', NULL, 'ADP-40PH', NULL, NULL, 'adecuado', 'TICKETEG', 'Nro. 25', 'no', 'ticketeg', NULL),
(239, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 11\r\nCable dañado', 'no', 'ticketeg', NULL),
(240, NULL, 'tv-plasma', 'SURE', 'SR-LED32W', 'OSE32D7-987', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(241, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'Nro 13\r\nNo funciona', 'no', 'ticketeg', NULL),
(242, NULL, 'cargador', 'HP', 'PPP009C', 'WCNXBOA3L5KM23', NULL, 'adecuado', 'TICKETEG', 'Nro. 16', 'no', 'ticketeg', NULL),
(243, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Nro 10\r\nCable dañado', 'no', 'ticketeg', NULL),
(244, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(245, NULL, 'scanner', 'CANNON', 'LIDE110', '8C3-5241-03', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'celina', NULL),
(246, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 2', 'no', 'ticketeg', NULL),
(247, NULL, 'proyector', 'INFOCUS', 'X1', 'AHHP33800127', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(248, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(249, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(250, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(251, NULL, 'cargador', NULL, 'CPA09-002A', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro. 8', 'no', 'ticketeg', NULL),
(252, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(253, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(254, NULL, 'monitor', 'SANSUMG', 'S19DE00HY', 'ZZE4HYGD09011J', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL),
(255, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(256, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(257, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(258, NULL, 'monitor', 'ACER', 'V206HQLL', 'MMLXKAA4210', NULL, 'adecuado', NULL, NULL, 'no', 'celina', NULL),
(259, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(260, NULL, 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(261, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(262, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(263, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(264, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(265, NULL, 'cargador', 'HP', 'PPP009A', 'CNBGTA0BLB2WGPP', 'TICKETEG', 'adecuado', NULL, 'Nro. 18', 'no', 'ticketeg', NULL),
(266, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(267, NULL, 'laptop', 'HP', 'HP100 NOTEBOOK PC', '5C634706BR', NULL, 'adecuado', NULL, 'Sistema operativo lento, Pantalla dañada y no funciona sin corriente', 'si', 'celina', NULL),
(268, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(269, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(270, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(271, NULL, 'laptop', NULL, 'ACE', 'ZR1', 'HCZR1007018', 'baja', NULL, NULL, 'no', 'celina', NULL),
(272, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(273, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(274, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(275, NULL, 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(276, NULL, 'cargador', NULL, NULL, 'ADP400H', 'TICKETEG', 'adecuado', NULL, 'Nro. 26\r\nSin serial', 'no', 'ticketeg', NULL),
(277, NULL, 'laptop', 'HP', 'HP 3115M', '5CD232134XX', 'TICKETEG', 'dañado', NULL, 'Nro 29\r\nNo sirve la pantalla', 'si', 'ticketeg', NULL),
(278, NULL, 'laptop', 'MSI', NULL, 'VION-075A8K0903000048', 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL),
(279, NULL, 'laptop', 'HP', 'HP 3115M', '3961919', 'TICKETEG', 'dañado', NULL, 'Pantalla rota\r\nNo tiene batería', 'no', 'ticketeg', NULL),
(280, NULL, 'monitor', 'LG', 'W1934ST', '905TPWQ0D009', 'CELINA', 'baja', NULL, NULL, 'no', 'celina', NULL),
(281, NULL, 'etiquetadora', 'BROTHER', 'QL-700', 'E70712-EE7900705', 'TICKETEG', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL),
(282, NULL, 'cargador', NULL, 'ADP90H', '35TW06A0297', 'TICKETEG', 'adecuado', NULL, 'Nro. 25', 'no', 'ticketeg', NULL),
(283, NULL, 'monitor', 'SURE', 'SR-LED19WM', 'OSE1906116', NULL, 'req_man', NULL, 'Sin prueba de estado por falta de cargador', 'no', 'celina', NULL),
(284, NULL, 'cargador', NULL, 'APP-40PH', '35TW13302G8', 'TICKETEG', 'adecuado', NULL, 'Nro. 24', 'no', 'ticketeg', NULL),
(285, NULL, 'cargador', NULL, NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro. 21', 'no', 'ticketeg', NULL),
(286, NULL, 'laptop', 'DELL', 'INSPIRON', 'F5S0DS1', NULL, 'baja', NULL, 'No enciende', 'no', 'celina', NULL),
(287, NULL, 'cargador', 'HP', NULL, 'F129011030003321', 'TICKETEG', 'adecuado', NULL, 'Nro. 2', 'no', 'ticketeg', NULL),
(288, NULL, 'etiquetadora', 'BROTHER', 'QL-700', 'E70712-F5Z651900', 'TICKETEG', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL),
(289, NULL, 'cargador', NULL, NULL, '35TW06N02HT', 'TICKETEG', 'adecuado', NULL, 'Nro. 19', 'no', 'ticketeg', NULL),
(290, NULL, 'laptop', 'TOSHIBA', 'C55-B5116KM', '3F113912P', NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(291, NULL, 'scanner', 'MOTOROLA', 'D54808', '11105005022', 'TICKETEG', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL),
(292, NULL, 'pc-escritorio', 'SURE', NULL, NULL, 'PRODASA', 'baja', NULL, 'No enciende', 'no', 'celina', NULL),
(293, NULL, 'cargador', NULL, 'ADP-40PH', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro. 20', 'no', 'ticketeg', NULL),
(294, NULL, 'laptop', 'SAMSUNG', 'N100SP', NULL, 'TICKETEG', 'dañado', NULL, 'No enciende la pantalla', 'no', 'ticketeg', NULL),
(295, NULL, 'pc-escritorio', 'SURE', NULL, NULL, 'PRODASA', 'baja', 'No enciende', NULL, 'no', 'celina', NULL),
(296, NULL, 'cargador', NULL, NULL, '09003006703021062603', 'TICKETEG', 'adecuado', NULL, 'Nro. 12', 'no', 'ticketeg', NULL),
(297, NULL, 'impresora', 'BOCA', 'LEMUR', '403935', 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(298, NULL, 'cargador', 'TARGUS', NULL, 'A1037A001399', 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL),
(299, NULL, 'impresora', 'BOCA', 'LEMUR', '403937', 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(300, NULL, 'laptop', 'SAMSUNG', 'N100SP', NULL, 'TICKETEG', 'dañado', NULL, 'No c¡enciende la pantalla', 'no', 'ticketeg', NULL),
(301, NULL, 'laptop', 'HP', NULL, 'F12901103003304', 'TICKETEG', 'adecuado', NULL, 'Nro. 4', 'no', 'ticketeg', NULL),
(302, NULL, 'impresora', 'BOCA', 'LEMUR', '403936', 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(303, NULL, 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'baja', NULL, 'Piezas faltantes', 'no', 'ticketeg', NULL),
(304, NULL, 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'baja', NULL, 'Piezas faltantes', 'no', 'ticketeg', NULL),
(305, NULL, 'cargador', 'HP', 'PPP09LE', 'WLNVA003L64DFD', 'TICKETEG', 'adecuado', NULL, 'Nro. 15', 'no', 'ticketeg', NULL),
(306, NULL, 'laptop', 'MSI', 'MS-160', NULL, 'TICKETEG', 'dañado', NULL, 'No sirve la pantalla', 'no', 'ticketeg', NULL),
(307, NULL, 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(308, NULL, 'laptop', 'ACER', NULL, '9192610416', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(309, NULL, 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(310, NULL, 'cargador', 'TOSHIBA', 'PA51770', 'G71C000GX110', 'TICKETEG', 'adecuado', NULL, 'Nro. 22', 'no', 'ticketeg', NULL),
(311, NULL, 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(312, NULL, 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(313, NULL, 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(314, NULL, 'laptop', 'MSI', 'U160', NULL, 'TICKETEG', 'adecuado', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(315, NULL, 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(316, NULL, 'cargador', NULL, 'CPA09002A', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro. 7', 'no', 'ticketeg', NULL),
(317, NULL, 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(318, NULL, 'laptop', 'DELUX', 'DLN-XC11', NULL, 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL),
(319, NULL, 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(320, NULL, 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL),
(321, NULL, 'laptop', 'DELUX', NULL, 'M116BKDEÑ1311030900200', 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL),
(322, NULL, 'cargador', 'HP', 'PPPD09A', 'WBG1ADBLBB3A7AX', 'TICKETEG', 'adecuado', NULL, 'Nro. 3', 'no', 'ticketeg', NULL),
(323, NULL, 'laptop', 'TOSHIBA', 'NB505', '6B505335K', 'TICKETEG', 'req_man', NULL, 'No tiene bateria', 'no', 'ticketeg', NULL),
(324, NULL, 'laptop', 'DELUX', 'DLN-XC12', '11083900200061', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(325, NULL, 'cargador', 'SANSUMG', 'A1514-DHN', 'CN07BN4400590BDT40GAR0397', 'TICKETEG', 'baja', NULL, 'No sirve y  no tiene cable de corriente', 'no', 'ticketeg', NULL),
(326, NULL, 'cargador', 'SAMSUNG', 'AP04214UV', 'QA5Q02425', 'TICKETEG', 'adecuado', NULL, 'Nro. 8', 'no', 'ticketeg', NULL),
(327, NULL, 'laptop', 'ACER', NULL, 'LU5780400292309', 'TICKETEG', 'req_man', NULL, 'No tiene batería', 'no', 'ticketeg', NULL),
(328, NULL, 'laptop', 'SAMSUNG', 'N100SP', 'HQU491JC600165A', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(329, NULL, 'laptop', 'MSI', 'MS-N051', NULL, 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL),
(330, NULL, 'scanner', 'MOTOROLA', 'D59208', '140800050209', 'TICKETEG', 'baja', NULL, 'No tiene cable \r\nNo enciende', 'no', 'ticketeg', NULL),
(331, NULL, 'scanner', 'MOTOROLA', '05000487', NULL, 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL),
(332, NULL, 'cargador', 'CAFINI', 'CN-C0091', NULL, 'TICKETEG', 'baja', NULL, '#8 Falta testear y no tiene cable', 'no', 'ticketeg', NULL),
(333, NULL, 'cargador', 'DELTA', NULL, '35TW1330267', 'TICKETEG', 'adecuado', NULL, 'Nro. 23', 'no', 'ticketeg', NULL),
(334, NULL, 'scanner', 'MOTOROLA', 'D59208', '140280105008', 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL),
(335, NULL, 'cargador', 'KNUP', 'KP-525', NULL, 'TICKETEG', 'baja', NULL, '#19 Falta de  testear y no tiene cable', 'no', 'ticketeg', NULL),
(336, NULL, 'cargador', 'HP', 'PPP009H', 'F12921205007888', 'TICKETEG', 'baja', NULL, 'Nro. 1', 'no', 'ticketeg', NULL),
(337, NULL, 'scanner', 'YOUJIE 2D', 'YJ4600', '1867584064', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL),
(338, NULL, 'cargador', NULL, 'CPAD9002A', NULL, 'TICKETEG', 'baja', NULL, 'Nro. 11', 'no', 'ticketeg', NULL),
(339, NULL, 'cargador', 'KNUP', 'KP-525', NULL, 'TICKETEG', 'baja', NULL, 'Falta testear y  no tiene cable', 'no', 'ticketeg', NULL),
(340, NULL, 'cargador', NULL, 'PA165002', 'PK100009000', 'TICKETEG', 'baja', NULL, 'Nro. 13', 'no', 'ticketeg', NULL),
(341, NULL, 'teclado', 'GENIUS', 'SMARTKB-200', 'X0L95786605525', 'TICKETEG', 'adecuado', NULL, 'Falta una tecla', 'no', 'ticketeg', NULL),
(342, NULL, 'cargador', 'DELTA', 'ADP-40PH', '35TW06A2A9', 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL),
(343, NULL, 'scanner', 'GENIUS', NULL, '1352721012B', 'TICKETEG', 'adecuado', NULL, 'Escanner de targeta', 'no', 'ticketeg', NULL),
(344, NULL, 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL),
(345, NULL, 'scanner', 'GENIUS', NULL, '13527390067', 'TICKETEG', 'adecuado', NULL, 'Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL),
(346, NULL, 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#11 Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL),
(347, NULL, 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#12 Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL),
(348, NULL, 'cargador', NULL, 'KPA040F', '111006014011474', 'TICKETEG', 'baja', NULL, 'Nro. 21', 'no', 'ticketeg', NULL),
(349, NULL, 'scanner', 'GENIUS', NULL, '13527390062', 'TICKETEG', 'adecuado', NULL, 'Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL),
(350, NULL, 'mouse', 'OPTICAL MOUESE', NULL, '100907876', 'TICKETEG', 'baja', NULL, 'no sirve', 'no', 'ticketeg', NULL),
(351, NULL, 'cargador', NULL, 'PA140014', 'PA2N4DW', 'TICKETEG', 'adecuado', NULL, 'Nro. 22', 'no', 'ticketeg', NULL),
(352, NULL, 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#8 escanner de ticket no se leen los datos', 'no', 'ticketeg', NULL),
(353, NULL, 'cargador', 'KNUP', 'KP525', NULL, 'TICKETEG', 'baja', NULL, 'Nro. 18', 'no', 'ticketeg', NULL),
(354, NULL, 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#14 escanner de ticket Y no se leen los datos', 'no', 'ticketeg', NULL),
(355, NULL, 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#1 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL),
(356, NULL, 'cargador', NULL, NULL, '090030067D3021D6P603', 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL),
(357, NULL, 'scanner', 'MICROSOFT WINDOWS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#5 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL),
(358, NULL, 'cargador', NULL, 'CSX0081204', NULL, 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL),
(359, NULL, 'scanner', 'MICROSOFT WINDOWS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#13 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL),
(360, NULL, 'scanner', 'MICROSOFT WINDOWS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#9 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL),
(361, NULL, 'cargador', NULL, 'LPS12V200MA', NULL, 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL),
(362, NULL, 'scanner', NULL, NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#10 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL),
(363, NULL, 'cargador', 'ASUS', 'ADP65DB', 'LN261936', 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL),
(364, NULL, 'scanner', 'MICROSOFT WINDOWS', NULL, '13527390063', 'TICKETEG', 'adecuado', NULL, 'escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL),
(365, NULL, 'cargador', NULL, 'ADP0933', 'AH19474B', 'TICKETEG', 'baja', NULL, 'Nro. 20', 'si', 'ticketeg', NULL),
(366, NULL, 'scanner', 'MICROSOFT WINDOWS', NULL, '13527390029', 'TICKETEG', 'adecuado', NULL, 'escanner de ticket y no tiene cable usb', 'no', 'ticketeg', NULL),
(367, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(368, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(369, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(370, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(371, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(372, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(373, NULL, 'cargador', 'VOLT', 'KFD90WNB', NULL, 'TICKETEG', 'adecuado', NULL, 'Solo funciona cabezal', 'no', 'ticketeg', NULL),
(374, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(375, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(376, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(377, NULL, 'cargador', NULL, 'CPA09002A', NULL, 'TICKETEG', 'baja', NULL, 'NO SIRVE', 'no', 'ticketeg', NULL),
(378, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL),
(379, NULL, 'camara-web', 'RAMBO', NULL, NULL, NULL, 'adecuado', NULL, NULL, 'no', 'celina', NULL),
(380, NULL, 'cargador', NULL, 'CPA09002A', NULL, 'TICKETEG', 'baja', NULL, 'NO SIRVE', 'no', 'ticketeg', NULL),
(381, NULL, 'laptop', 'DELL', '3583', 'GN-006Z2', 'Call Center', 'adecuado', 'ALEX PEREZ', NULL, 'si', 'celina', NULL),
(382, NULL, 'monitor', 'SURE', 'SR-LED19WM', 'OSE1906130901128', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL),
(383, NULL, 'teclado', 'LOGITEC', 'K220', '1529SC10P60UV8', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL),
(384, NULL, 'mouse', 'LOGITEC', 'H150', NULL, 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL),
(385, NULL, 'laptop', 'SAMSUNG', NULL, 'SE9W91UD500949', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', 'Sistema operativo lento', 'si', 'celina', NULL),
(386, NULL, 'cargador', 'SAMSUNG', 'ADP-60ZHA', 'LA1421080401A007219', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL),
(387, NULL, 'cargador', 'DELL', NULL, NULL, 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_05_25_152516_crear_tabla_activos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JOSE ANDRES', 'soporte.joseandres@email.com', NULL, '$2y$10$/TWBTGwJlHqqLQFkAQzW/eEqyssGlSqo.SxHI1VuOGYBztUDXBYLO', 'fi6aHBeQpIJtB5fBU4SUvlMUIK8xBfGf5MwK8jOKO66CvooynryFnuQDhy9n', '2022-05-26 02:51:04', '2022-05-26 02:51:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos`
--
ALTER TABLE `activos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activos`
--
ALTER TABLE `activos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
