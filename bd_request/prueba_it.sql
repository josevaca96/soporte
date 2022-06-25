-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-06-2022 a las 21:13:15
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
-- Base de datos: `prueba_it`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_codigo` (`inicio` INT, `fin` INT, `sub` VARCHAR(255))  BEGIN
  loop_label: LOOP
    IF inicio<= fin THEN
 		UPDATE activos SET codigo=(concat(sub,inicio))
        	WHERE activos.id=inicio;
        	set inicio=inicio+1;
        END IF;
    END LOOP;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_id` ()  BEGIN
 DECLARE bucle_ini int;
 DECLARE bucle_fin int;
 DECLARE id_ini int;
 
 SET bucle_ini =3;
 SET bucle_fin =433;
 SET id_ini =4; 
  loop_label: LOOP
    IF  bucle_ini<= bucle_fin THEN
 		UPDATE activos SET id=bucle_ini
        	WHERE activos.id=id_ini;
        	set bucle_ini=bucle_ini+1;
            set id_ini=id_ini+1;
        END IF;
    END LOOP;
END$$

DELIMITER ;

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
  `IdCategoria` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activos`
--

INSERT INTO `activos` (`id`, `Codigo`, `NombreActivo`, `Marca`, `Modelo`, `NroSerial`, `Oficina`, `Condicion`, `UsuarioAsig`, `Observaciones`, `CapRecursos`, `Empresa`, `IdCategoria`, `deleted_at`) VALUES
(1, 'IT-ACT00001', 'laptop', 'HP', 'HP-15-CX0', 'CN085038BS', 'PRIMER PISO', 'adecuado', 'BRANDON COPALI', NULL, 'si', 'galileo', NULL, NULL),
(2, 'IT-ACT00002', 'cargador', 'HP', 'TPN-CA11', NULL, 'PRIMER PISO', 'adecuado', 'BRANDON COPALI', NULL, 'no', 'galileo', NULL, NULL),
(3, 'IT-ACT00003', 'mouse', 'GENIUS', 'NX-7015', NULL, 'PRIMER PISO', 'adecuado', 'BRANDON COPALI', NULL, 'no', 'galileo', NULL, NULL),
(4, 'IT-ACT00004', 'tv-plasma', 'LG', '50PW', '10812MEN32527', 'PRIMER PISO', 'adecuado', 'MARITZA NUÑEZ', NULL, 'no', 'galileo', NULL, NULL),
(5, 'IT-ACT00005', 'teclado', 'QR', NULL, NULL, 'PRIMER PISO', 'adecuado', 'MILENKA', NULL, 'no', 'celina', NULL, NULL),
(6, 'IT-ACT00006', 'mouse', 'QR', '3D OPTICAL', NULL, 'PRIMER PISO', 'adecuado', 'MILENKA', NULL, 'no', 'celina', NULL, NULL),
(7, 'IT-ACT00007', 'monitor', 'ASUS', '10HY002A0S', NULL, 'PRIMER PISO', 'adecuado', 'MILENKA', NULL, 'no', 'celina', NULL, NULL),
(8, 'IT-ACT00008', 'pc-escritorio', 'LENOVO', 'M700', NULL, 'PRIMER PISO', 'adecuado', 'MILENKA', NULL, 'si', 'celina', NULL, NULL),
(9, 'IT-ACT00009', 'pc-escritorio', NULL, 'PRIME Z390', NULL, 'PRIMER PISO', 'adecuado', 'LUIS MIGUEL', 'Suspesión mala', 'si', 'celina', NULL, NULL),
(10, 'IT-ACT00010', 'mouse', 'DELUX', 'H321', NULL, 'PRIMER PISO', 'dañado', 'LUIS MIGUEL', 'Falla', 'no', 'celina', NULL, NULL),
(11, 'IT-ACT00011', 'teclado', 'GENIUS', 'GK-1500', NULL, 'PRIMER PISO', 'adecuado', 'LUIS MIGUEL', NULL, 'no', 'celina', NULL, NULL),
(12, 'IT-ACT00012', 'monitor', 'SAMSUNG', 'LUU28E5', NULL, 'PRIMER PISO', 'adecuado', 'LUIS MIGUEL', NULL, 'no', 'celina', NULL, NULL),
(13, 'IT-ACT00013', 'pc-escritorio', 'LENOVO', 'MJ046X', '10FLS0YA', 'PRIMER PISO', 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(14, 'IT-ACT00014', 'teclado', 'GENIUS', 'GK-1000', NULL, 'PLANTA BAJA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(15, 'IT-ACT00015', 'mouse', 'GENIUS', 'GM-150030', NULL, 'PLANTA BAJA', 'req_man', NULL, 'Scroll no sirve', 'no', 'celina', NULL, NULL),
(16, 'IT-ACT00016', 'pc-escritorio', 'LENOVO', '10FLS0YA00', 'MJ04APK2', 'PLANTA BAJA', 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(17, 'IT-ACT00017', 'mouse', 'GENIUS', 'DX-110', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL, NULL),
(18, 'IT-ACT00018', 'teclado', 'GENIUS', 'OM-06', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL, NULL),
(19, 'IT-ACT00019', 'tv-plasma', 'SURE', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL, NULL),
(20, 'IT-ACT00020', 'impresora', 'HP', 'CE658A', 'BRBSH5D6HW', 'PLANTA BAJA', 'adecuado', 'JOSE CARLOS', NULL, 'no', 'pacucito', NULL, NULL),
(21, 'IT-ACT00021', 'teclado', 'GENIUS', 'GK-070006', '509036931', 'PLANTA BAJA', 'adecuado', 'JOSE CARLOS', NULL, 'no', 'pacucito', NULL, NULL),
(22, 'IT-ACT00022', 'mouse', 'SURE', 'OPTICAL MOUSE', NULL, 'PRIMER PISO', 'adecuado', 'JOSE CARLOS', NULL, 'no', 'pacucito', NULL, NULL),
(23, 'IT-ACT00023', 'teclado', 'GENIUS', 'GK-100015', 'XE1807624152', 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL, NULL),
(24, 'IT-ACT00024', 'mouse', 'GENIUS', 'GM-03003', '148292404319', 'TERCER PISO', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(25, 'IT-ACT00025', 'proyector', 'EPSON', NULL, NULL, 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL, NULL),
(26, 'IT-ACT00026', 'proyector', 'EPSON', NULL, NULL, 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL, NULL),
(27, 'IT-ACT00027', 'parlantes', 'GENIUS', 'SP-U115', 'ZF2Z74511203', 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL, NULL),
(28, 'IT-ACT00028', 'pc-escritorio', 'LG', 'H61H2-MV', '00000000', 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'si', 'celina', NULL, NULL),
(29, 'IT-ACT00029', 'impresora', 'ZEBRA', 'ZXP51', 'Z11US00', 'SEGUNDO PISO', 'adecuado', 'NOELIA QUISPE', NULL, 'no', 'celina', NULL, NULL),
(30, 'IT-ACT00030', 'impresora', 'EPSON', 'L220', '509082908', 'SEGUNDO PISO', 'adecuado', 'TATIANA HURTADO', 'NECESITA TINTA', 'no', 'celina', NULL, NULL),
(31, 'IT-ACT00031', 'laptop', 'APPLE', 'MACBOOK PRO', 'W89361HR644', 'SEGUNDO PISO', 'dañado', 'NOELIA QUISPE', 'sistema operativo lento', 'si', 'celina', NULL, NULL),
(32, 'IT-ACT00032', 'laptop', 'DELL', 'V-5402', 'A2XUPQ3', 'SEGUNDO PISO', 'adecuado', 'CARMEN BALCAZAR', 'Sistema Operativo Lento', 'si', 'celina', NULL, NULL),
(33, 'IT-ACT00033', 'monitor', 'LG', 'LED 20M3S', '403NDVWSW903', 'SEGUNDO PISO', 'adecuado', 'CARMEN BALCAZAR', NULL, 'no', 'celina', NULL, NULL),
(34, 'IT-ACT00034', 'cargador', 'APPLE', 'MACBOOK PRO', NULL, 'SEGUNDO PISO', 'req_man', 'NOELIA QUISPE', 'Cargador Antiguo', 'no', 'celina', NULL, NULL),
(35, 'IT-ACT00035', 'laptop', 'TOSHIBA', 'SATELITE C45', '8F1086625P', 'SEGUNDO PISO', 'req_man', 'JOSUE ARPANDONA', 'No Funciona el Panel Tatil', 'si', 'celina', NULL, NULL),
(36, 'IT-ACT00036', 'cargador', 'TOSHIBA', NULL, 'G7116000AR410', 'SEGUNDO PISO', 'adecuado', 'JOSUE ARPANDONA', NULL, 'no', 'celina', NULL, NULL),
(37, 'IT-ACT00037', 'cargador', 'DELL', 'CN-OKYTRW', 'R-41012432', 'SEGUNDO PISO', 'adecuado', 'CARMEN BALCAZAR', NULL, 'no', 'celina', NULL, NULL),
(38, 'IT-ACT00038', 'mouse', 'SOFT', '3P OPTICAL', NULL, 'SEGUNDO PISO', 'req_man', 'CARMEN BALCAZAR', 'Scroll no sirve', 'no', 'celina', NULL, NULL),
(39, 'IT-ACT00039', 'pc-escritorio', 'SAMSUMG', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'MAYRA VELAZQUEZ', 'Sistema Operativo Lento y Puerto Frontal No Sirve', 'si', 'celina', NULL, NULL),
(40, 'IT-ACT00040', 'mouse', 'GENIUS', 'GM-150', NULL, 'PLANTA BAJA', 'adecuado', 'MAYRA VACA', NULL, 'no', 'celina', NULL, NULL),
(41, 'IT-ACT00041', 'teclado', 'DELUX', 'OM-06', NULL, 'PLANTA BAJA', 'adecuado', 'MAYRA VACA', NULL, 'no', 'celina', NULL, NULL),
(42, 'IT-ACT00042', 'pc-escritorio', NULL, NULL, NULL, 'PLANTA BAJA', 'req_man', 'JORGE CAMPOS', 'Sistema operativo lento', 'si', 'celina', NULL, NULL),
(43, 'IT-ACT00043', 'monitor', 'VIEWSONIC', 'VA1903A', NULL, 'PLANTA BAJA', 'adecuado', 'JORGE CAMPOS', NULL, 'no', 'celina', NULL, NULL),
(44, 'IT-ACT00044', 'teclado', 'SOFT', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'JORGE CAMPOS', NULL, 'no', 'celina', NULL, NULL),
(45, 'IT-ACT00045', 'mouse', 'Optical', NULL, NULL, 'PLANTA BAJA', 'baja', 'JORGE CAMPOS', 'scroll no sirve', 'no', 'celina', NULL, NULL),
(46, 'IT-ACT00046', 'scanner', 'BROTHER', 'ADS--2400N', 'U65B7G1', 'PLANTA BAJA', 'adecuado', 'JORGE CAMPOS', NULL, 'no', 'celina', NULL, NULL),
(47, 'IT-ACT00047', 'cargador', 'BROTHER', 'R4102256', NULL, 'PLANTA BAJA', 'adecuado', 'JORGE CAMPOS', NULL, 'no', 'celina', NULL, NULL),
(48, 'IT-ACT00048', 'laptop', 'LENOVO', 'ZDU1S0FY00', 'PF2DZ5AH', 'PRIMER PISO', 'adecuado', 'Beatriz Caceres', NULL, 'si', 'celina', NULL, NULL),
(49, 'IT-ACT00049', 'cargador', 'LENOVO', NULL, NULL, 'PRIMER PISO', 'adecuado', 'Beatriz Caceres', NULL, 'no', 'celina', NULL, NULL),
(50, 'IT-ACT00050', 'mouse', 'OPTICAL', 'M363', 'M363J001804', 'PRIMER PISO', 'adecuado', 'Beatriz Caceres', 'NRO 15', 'no', 'celina', NULL, NULL),
(51, 'IT-ACT00051', 'monitor', 'SAMSUMG', 'S19D300', 'ZZE4H4LG805761M', 'PRIMER PISO', 'adecuado', 'Beatriz Caceres', NULL, 'no', 'celina', NULL, NULL),
(52, 'IT-ACT00052', 'laptop', 'LENOVO', 'OUE5', 'MP1CJJUE', 'PRIMER PISO', 'adecuado', 'ROBERT VACA', 'kfnfknsdfkjnsdkjfnsdkjfnskjdfnksjfnkjsdnfjknfkjnskjfnewjfnawenfkaenfakjlsenf\r\n\\asfewfaefasef\r\nasef\r\nasef\r\nasef\r\nsdf\r\nfsdgfxg\r\nDFGDF\r\nGD\r\nFG\r\nDFG\r\nDF\r\nGDF\r\nGDF\r\nGDF\r\nG\r\nDFG\r\nDFGFD\r\nGDF\r\nG\r\nsdafasefsd\r\nf', 'si', 'celina', NULL, NULL),
(53, 'IT-ACT00053', 'monitor', 'ASUS', NULL, 'KZLMTF078405', 'PRIMER PISO', 'adecuado', 'ROBERT VACA', NULL, 'no', 'celina', NULL, NULL),
(54, 'IT-ACT00054', 'cargador', 'LENOVO', 'PA145055LL', NULL, 'PRIMER PISO', 'adecuado', 'ROBERT VACA', NULL, 'no', 'celina', NULL, NULL),
(55, 'IT-ACT00055', 'monitor', 'SAMSUMG', 'LS22F350', '0ABZHCNNC007798', 'PRIMER PISO', 'adecuado', 'RICARDO YEPEZ', NULL, 'no', 'celina', NULL, NULL),
(56, 'IT-ACT00056', 'pc-escritorio', NULL, 'A0HY002AUS', 'MJ04LN0', 'PRIMER PISO', 'adecuado', 'ELIANA SUAREZ', NULL, 'si', 'celina', NULL, NULL),
(57, 'IT-ACT00057', 'monitor', 'ASUS', NULL, NULL, 'PRIMER PISO', 'adecuado', 'ELIANA SUAREZ', NULL, 'no', 'celina', NULL, NULL),
(58, 'IT-ACT00058', 'mouse', NULL, '3D OPTICAL', NULL, 'PRIMER PISO', 'adecuado', 'ELIANA SUAREZ', NULL, 'no', 'celina', NULL, NULL),
(59, 'IT-ACT00059', 'teclado', 'QR', NULL, NULL, 'PRIMER PISO', 'req_man', 'ELIANA SUAREZ', 'Teclas Dañadas', 'no', 'celina', NULL, NULL),
(60, 'IT-ACT00060', 'laptop', 'HP', 'HP 250 G6', 'CND7476B3Y', 'PRIMER PISO', 'req_man', 'MARITZA NUÑEZ', 'Sistema operativo lento', 'si', 'celina', NULL, NULL),
(61, 'IT-ACT00061', 'mouse', 'KNUP', 'KPM6005', NULL, 'PRIMER PISO', 'dañado', 'MARITZA NUÑEZ', 'Cable Suelto', 'no', 'celina', NULL, NULL),
(62, 'IT-ACT00062', 'cargador', 'HP', NULL, NULL, 'PRIMER PISO', 'adecuado', 'MARITZA NUÑEZ', NULL, 'no', 'celina', NULL, NULL),
(63, 'IT-ACT00063', 'telefono', 'DENWA', 'DW-ZLOP', '440G26744002661', 'PRIMER PISO', 'adecuado', 'MARITZA NUÑEZ', NULL, 'no', 'celina', NULL, NULL),
(64, 'IT-ACT00064', 'laptop', 'DELL', 'V 143000', '59RB2D3', 'SEGUNDO PISO', 'req_man', 'TATIANA HURTADO', 'El equipo se calienta', 'si', 'celina', NULL, NULL),
(65, 'IT-ACT00065', 'laptop', 'HP', '15-D5XX', 'CND8118LSP', 'SEGUNDO PISO', 'adecuado', 'CHRISTELL P.', 'Un Puerto Dañado', 'si', 'celina', NULL, NULL),
(66, 'IT-ACT00066', 'laptop', 'DELL', 'V 3400', 'C1XL983', 'SEGUNDO PISO', 'adecuado', 'SERGIO B.', NULL, 'si', 'celina', NULL, NULL),
(67, 'IT-ACT00067', 'laptop', 'DELL', '5520', 'B9C0DS1', 'SEGUNDO PISO', 'req_man', 'BETZAIDA', 'Sistema Ooperativo lento', 'si', 'celina', NULL, NULL),
(68, 'IT-ACT00068', 'telefono', 'DENWA', 'DW-21OP', 'G26744002667', 'SEGUNDO PISO', 'dañado', 'SERGIO B.', 'Se cortan las llamadas', 'no', 'celina', NULL, NULL),
(69, 'IT-ACT00069', 'pc-escritorio', NULL, NULL, NULL, 'SEGUNDO PISO', 'req_man', 'SHARON', 'Sistema Operativo lento', 'si', 'celina', NULL, NULL),
(70, 'IT-ACT00070', 'laptop', 'DELL', 'G155510', '7QSYLF3', 'SEGUNDO PISO', 'req_man', 'LILIANA', 'Sistema operativo lento', 'si', 'celina', NULL, NULL),
(71, 'IT-ACT00071', 'impresora', 'HP', 'LISEGP11', 'VRUVSFGRP', 'SEGUNDO PISO', 'baja', NULL, 'Fuera de servicio', 'no', 'celina', NULL, NULL),
(72, 'IT-ACT00072', 'laptop', 'LENOVO', '30TDS00B00', 'MJ0GEGZ', 'SEGUNDO PISO', 'adecuado', 'REBECA', 'Sofware nececita Serial', 'si', 'celina', NULL, NULL),
(73, 'IT-ACT00073', 'cargador', 'LENOVO', '1A60JFK', NULL, 'SEGUNDO PISO', 'adecuado', 'REBECA', NULL, 'no', 'celina', NULL, NULL),
(74, 'IT-ACT00074', 'cargador', 'DELL', NULL, 'CN-OKX', 'SEGUNDO PISO', 'adecuado', 'TATIANA HURTADO', NULL, 'no', 'celina', NULL, NULL),
(75, 'IT-ACT00075', 'cargador', 'HP', 'R-4T012327', NULL, 'SEGUNDO PISO', 'adecuado', 'CHRISTELL P.', NULL, 'no', 'celina', NULL, NULL),
(76, 'IT-ACT00076', 'cargador', 'DELL', 'CN-0KXTTW', NULL, 'SEGUNDO PISO', 'adecuado', 'SERGIO B.', NULL, 'no', 'celina', NULL, NULL),
(77, 'IT-ACT00077', 'monitor', 'AOC', NULL, NULL, 'SEGUNDO PISO', 'adecuado', 'SHARON', NULL, 'no', 'celina', NULL, NULL),
(78, 'IT-ACT00078', 'mouse', 'DELUX', 'M321', NULL, 'SEGUNDO PISO', 'adecuado', 'SHARON', NULL, 'no', 'celina', NULL, NULL),
(79, 'IT-ACT00079', 'teclado', 'DELUX', 'KA180', NULL, 'SEGUNDO PISO', 'adecuado', 'SHARON', NULL, 'no', 'celina', NULL, NULL),
(80, 'IT-ACT00080', 'parlantes', 'KNUP', 'KP-7030', NULL, 'SEGUNDO PISO', 'adecuado', 'SHARON', NULL, 'no', 'celina', NULL, NULL),
(81, 'IT-ACT00081', 'cargador', 'DELL', NULL, NULL, 'SEGUNDO PISO', 'adecuado', 'LILIANA', NULL, 'no', 'celina', NULL, NULL),
(82, 'IT-ACT00082', 'telefono', 'DENWA', 'DW-910', '339 FR7136000333', 'PLANTA BAJA', 'dañado', 'MAYRA VELASCO', 'Se cortan las  llamadas', 'no', 'celina', NULL, NULL),
(83, 'IT-ACT00083', 'monitor', 'SAMSUMG', 'S19D300', 'ZZE444LG800878P', 'PLANTA BAJA', 'adecuado', 'MAYRA VELASCO', NULL, 'no', 'celina', NULL, NULL),
(84, 'IT-ACT00084', 'impresora', 'BROTHER', 'QL-700', 'E70712-E67900', 'PLANTA BAJA', 'adecuado', 'MAYRA VELASCO', NULL, 'no', 'celina', NULL, NULL),
(85, 'IT-ACT00085', 'laptop', 'HP', 'HP-250-G6', 'CND-91740PD', 'PRIMER PISO', 'adecuado', 'DANIELA JUSTINIANO', NULL, 'si', 'celina', NULL, NULL),
(86, 'IT-ACT00086', 'mouse', 'GENIUS', 'OX-110', 'X7H9036819', 'PLANTA BAJA', 'adecuado', 'DANIELA JUSTINIANO', NULL, 'no', 'celina', NULL, NULL),
(87, 'IT-ACT00087', 'monitor', 'SAMSUMG', 'ls-22f', NULL, 'PRIMER PISO', 'adecuado', 'DANIELA JUSTINIANO', NULL, 'no', 'celina', NULL, NULL),
(88, 'IT-ACT00088', 'cargador', 'HP', 'L-25296', NULL, 'PRIMER PISO', 'adecuado', 'DANIELA JUSTINIANO', NULL, 'no', 'celina', NULL, NULL),
(89, 'IT-ACT00089', 'laptop', 'TOSHIBA', 'C55-C', '7F312988C', 'PRIMER PISO', 'adecuado', 'GRECIA CANDIA', 'Se le cambio su bateria por una nueva', 'si', 'celina', NULL, NULL),
(90, 'IT-ACT00090', 'pc-escritorio', NULL, 'GB-BPCE345', NULL, 'PLANTA BAJA', 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(91, 'IT-ACT00091', 'impresora', 'STAR MICRONIC', 'A001', '2430116010', 'PLANTA BAJA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(92, 'IT-ACT00092', 'pc-escritorio', 'ASUS', 'A0HY002AUS', 'MJ04MLCG', 'PRIMER PISO', 'adecuado', 'MERCEDES', NULL, 'si', 'galileo', NULL, NULL),
(93, 'IT-ACT00093', 'monitor', 'ASUS', NULL, NULL, 'PRIMER PISO', 'adecuado', 'MERCEDES', NULL, 'no', 'galileo', NULL, NULL),
(94, 'IT-ACT00094', 'teclado', NULL, NULL, NULL, 'PRIMER PISO', 'adecuado', 'MERCEDES', NULL, 'no', 'celina', NULL, NULL),
(95, 'IT-ACT00095', 'telefono', 'DENWA', 'DW-ZIDP', '440G26744002518', 'PRIMER PISO', 'adecuado', 'RAUL TERCEROS', NULL, 'no', 'celina', NULL, NULL),
(96, 'IT-ACT00096', 'laptop', 'LENOVO', '81WA', 'PF33NH2T', 'PRIMER PISO', 'adecuado', 'MIGUEL VACA', NULL, 'si', 'celina', NULL, NULL),
(97, 'IT-ACT00097', 'cargador', 'LENOVO', 'PA-145055LL', NULL, 'PRIMER PISO', 'adecuado', 'MIGUEL VACA', NULL, 'no', 'celina', NULL, NULL),
(98, 'IT-ACT00098', 'laptop', 'DELL', 'VOSTRO-3400', '8N9H2D3', 'PRIMER PISO', 'adecuado', 'VIVIANA PAZ', NULL, 'si', 'celina', NULL, NULL),
(99, 'IT-ACT00099', 'mouse', 'LOGI', 'M187', '2113LZDISO98', 'PRIMER PISO', 'adecuado', 'VIVIANA PAZ', NULL, 'no', 'celina', NULL, NULL),
(100, 'IT-ACT00100', 'cargador', 'DELL', 'CN-DKXRRW', NULL, 'PRIMER PISO', 'adecuado', 'VIVIANA PAZ', NULL, 'no', 'celina', NULL, NULL),
(101, 'IT-ACT00101', 'laptop', 'LENOVO', '81HN', 'R9OUV29AK', 'PRIMER PISO', 'adecuado', 'MARIA JUSTINIANO', NULL, 'si', 'celina', NULL, NULL),
(102, 'IT-ACT00102', 'mouse', 'GENIUS', 'GM-03003', '148102103162', 'PRIMER PISO', 'adecuado', 'MARIA JUSTINIANO', NULL, 'no', 'celina', NULL, NULL),
(103, 'IT-ACT00103', 'cargador', 'LENOVO', 'APLX45NDC3A', NULL, 'PRIMER PISO', 'adecuado', 'MARIA JUSTINIANO', NULL, 'no', 'celina', NULL, NULL),
(104, 'IT-ACT00104', 'mouse', 'RLIP', 'KMD130', NULL, 'PRIMER PISO', 'adecuado', 'MARIA JUSTINIANO', NULL, 'no', 'celina', NULL, NULL),
(105, 'IT-ACT00105', 'mouse', 'GENIUS', 'GM-150032', 'X0L95786605533', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL, NULL),
(106, 'IT-ACT00106', 'pc-escritorio', 'LENOVO', 'INSPIRON 3050', '3PYMSX1', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'si', 'celina', NULL, NULL),
(107, 'IT-ACT00107', 'monitor', 'LG', '32LH5008', '607JXQ4N172', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL, NULL),
(108, 'IT-ACT00108', 'teclado', 'GENIUS', 'GX-10011', 'XP1658980408', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL, NULL),
(109, 'IT-ACT00109', 'cargador', 'DELL', 'LA45NM140', NULL, 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL, NULL),
(110, 'IT-ACT00110', 'cargador', 'LENOVO', NULL, '11542T492671ZF3F', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL, NULL),
(111, 'IT-ACT00111', 'laptop', 'DELL', 'INSPIRON 3583', '680Q0Y2', 'PLANTA BAJA', 'req_man', 'XIMENA EGUEZ', 'Sistema operativo lento', 'si', 'celina', NULL, NULL),
(112, 'IT-ACT00112', 'laptop', 'DELL', 'INSPIRON 3583', '8GGB672', 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'si', 'celina', NULL, NULL),
(113, 'IT-ACT00113', 'cargador', 'DELL', 'HA45NM140', NULL, 'PLANTA BAJA', 'adecuado', 'TAMARA', NULL, 'no', 'celina', NULL, NULL),
(114, 'IT-ACT00114', 'telefono', 'PANASONIC', 'KXT550', '8AAKJ767155', 'PLANTA BAJA', 'adecuado', 'CRISTIAN CASTEDO', NULL, 'no', 'celina', NULL, NULL),
(115, 'IT-ACT00115', 'tv-plasma', 'SURE', NULL, '213057110', 'PLANTA BAJA', 'adecuado', 'CRISTIAN CASTEDO', NULL, 'no', 'celina', NULL, NULL),
(116, 'IT-ACT00116', 'telefono', 'PANASONIC', 'KXT5500LX', '8AAJ767156', 'PLANTA BAJA', 'adecuado', 'CRISTIAN CASTEDO', NULL, 'no', 'celina', NULL, NULL),
(117, 'IT-ACT00117', 'mouse', '3D OPTICAL', 'RTM019', NULL, 'PLANTA BAJA', 'adecuado', 'CRISTIAN CASTEDO', NULL, 'no', 'celina', NULL, NULL),
(118, 'IT-ACT00118', 'pc-escritorio', 'GIGABYTE', 'GX3-BACE-3150', NULL, 'PLANTA BAJA', 'adecuado', 'ROCIO', NULL, 'no', 'celina', NULL, NULL),
(119, 'IT-ACT00119', 'teclado', 'DELUX', 'OM-06', 'X0M-066J000510', 'PLANTA BAJA', 'adecuado', 'ROCIO', NULL, 'no', 'celina', NULL, NULL),
(120, 'IT-ACT00120', 'mouse', 'DELUX', '3D OPTICAL', NULL, 'PLANTA BAJA', 'adecuado', 'ROCIO', NULL, 'no', 'celina', NULL, NULL),
(121, 'IT-ACT00121', 'laptop', 'DELL', 'INSPIRON 3583', 'C475572', 'PLANTA BAJA', 'req_man', 'DANIEL RIVERO', 'Excel demasiado lento, no prende el equipo en ciertas ocasiones.', 'si', 'celina', NULL, NULL),
(122, 'IT-ACT00122', 'cargador', 'DELL', 'LA45NM140', NULL, 'PLANTA BAJA', 'adecuado', 'DANIEL RIVERO', NULL, 'no', 'celina', NULL, NULL),
(123, 'IT-ACT00123', 'monitor', 'LG', '19EN335A', '301N0PMGX906', 'PLANTA BAJA', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL, NULL),
(124, 'IT-ACT00124', 'laptop', 'DELL', 'VOSTRO-3400', '6X9M393', 'PLANTA BAJA', 'adecuado', 'CARLOS MELGAR', NULL, 'si', 'celina', NULL, NULL),
(125, 'IT-ACT00125', 'pc-escritorio', 'GIGABYTE', 'MZGLKDP', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', 'PC-MINI', 'si', 'celina', NULL, NULL),
(126, 'IT-ACT00126', 'teclado', 'GENIUS', '6K070', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL, NULL),
(127, 'IT-ACT00127', 'mouse', 'DELUX', 'M-360', NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL, NULL),
(128, 'IT-ACT00128', 'tv-plasma', 'SURE', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL, NULL),
(129, 'IT-ACT00129', 'tv-plasma', 'SURE', NULL, NULL, 'PLANTA BAJA', 'adecuado', 'CELINA', NULL, 'no', 'celina', NULL, NULL),
(130, 'IT-ACT00130', 'laptop', 'LENOVO', 'E5X0', 'PF1ET3WF', 'PRIMER PISO', 'adecuado', 'CHARLES BARRETO', NULL, 'si', 'celina', NULL, NULL),
(131, 'IT-ACT00131', 'teclado', 'LOGITECH', 'K120', NULL, 'PRIMER PISO', 'adecuado', 'CHARLES BARRETO', NULL, 'no', 'celina', NULL, NULL),
(132, 'IT-ACT00132', 'mouse', 'LOGITECH', 'HS-04', NULL, 'PRIMER PISO', 'adecuado', 'CHARLES BARRETO', NULL, 'no', 'celina', NULL, NULL),
(133, 'IT-ACT00133', 'monitor', 'LG', '25-UM', NULL, 'PRIMER PISO', 'adecuado', 'CHARLES BARRETO', NULL, 'no', 'celina', NULL, NULL),
(134, 'IT-ACT00134', 'pc-escritorio', NULL, NULL, NULL, 'PLANTA BAJA', 'adecuado', 'JOSE CARLOS', 'Sistema operativo lento, la mayoría de los puertos usb no sirven', 'si', 'pacucito', NULL, NULL),
(135, 'IT-ACT00135', 'monitor', 'SAMSUNG', 'S19D3', NULL, 'PLANTA BAJA', 'adecuado', 'JOSE CARLOS', NULL, 'no', 'pacucito', NULL, NULL),
(136, 'IT-ACT00136', 'impresora', 'CANON', 'ME-3520', 'KKDET19251', 'TERCER PISO', 'adecuado', 'DIRECTORIO', NULL, 'no', 'celina', NULL, NULL),
(137, 'IT-ACT00137', 'pc-escritorio', 'SOFT', NULL, NULL, NULL, 'adecuado', NULL, NULL, 'si', 'multipago', NULL, NULL),
(138, 'IT-ACT00138', 'monitor', 'SAMSUNG', '5190D300', 'ZZE4H4LGBO5333V', 'CALL CENTER', 'adecuado', 'JOSE EDUARDO ROBLES', NULL, 'no', 'multipago', NULL, NULL),
(139, 'IT-ACT00139', 'teclado', 'SOFT', NULL, NULL, 'CALL CENTER', 'adecuado', 'JOSE EDUARDO ROBLES', NULL, 'no', 'multipago', NULL, NULL),
(140, 'IT-ACT00140', 'mouse', 'SOFT', 'OPTICAL MOUSE', NULL, 'CALL CENTER', 'adecuado', 'JOSE EDUARDO ROBLES', NULL, 'no', 'multipago', NULL, NULL),
(141, 'IT-ACT00141', 'pc-escritorio', 'DELUX', NULL, NULL, 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', 'No sirve una entrada USB', 'si', 'multipago', NULL, NULL),
(142, 'IT-ACT00142', 'monitor', 'SAMSUNG', 'SYNC MASTER SA100', 'ZTN6H41D404529X', 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', NULL, 'no', 'multipago', NULL, NULL),
(143, 'IT-ACT00143', 'teclado', 'SOFT', NULL, NULL, 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', NULL, 'no', 'multipago', NULL, NULL),
(144, 'IT-ACT00144', 'mouse', 'GENIUS', 'GM-03022P', 'X804089025485', 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', NULL, 'no', 'multipago', NULL, NULL),
(145, 'IT-ACT00145', 'pc-escritorio', 'LENOVO', '10FLS0YA00', 'MJ05GYNX', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', NULL, 'si', 'multipago', NULL, NULL),
(146, 'IT-ACT00146', 'auriculares', 'LOGI', NULL, '2107ME007', 'CALL CENTER', 'adecuado', 'JOSE EDUARDO ROBLES', NULL, 'no', 'multipago', NULL, NULL),
(147, 'IT-ACT00147', 'auriculares', 'LOGI', NULL, NULL, 'CALL CENTER', 'adecuado', 'FRANKLIN TACEO', NULL, 'no', 'multipago', NULL, NULL),
(148, 'IT-ACT00148', 'monitor', 'SAMSUNG', 'S22I350FHL', 'DABZHCNNC00772V', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', 'Entrada HDMI dañada', 'no', 'multipago', NULL, NULL),
(149, 'IT-ACT00149', 'teclado', 'GENIUS', 'GK-100015', 'XEL8076241156', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', NULL, 'no', 'multipago', NULL, NULL),
(150, 'IT-ACT00150', 'mouse', 'GENIUS', 'XUCELLX3', 'XEL807624156', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', NULL, 'no', 'multipago', NULL, NULL),
(151, 'IT-ACT00151', 'auriculares', 'LOGI', NULL, NULL, 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', NULL, 'no', 'multipago', NULL, NULL),
(152, 'IT-ACT00152', 'pc-escritorio', 'DELUX', NULL, NULL, 'CALL CENTER', 'adecuado', 'NIZA MASABY', 'Sistema operativo lento', 'si', 'multipago', NULL, NULL),
(153, 'IT-ACT00153', 'monitor', 'SAMSUNG', 'E1920NX', 'V893H9NZ588638Y', 'CALL CENTER', 'adecuado', 'NIZA MASABY', NULL, 'no', 'multipago', NULL, NULL),
(154, 'IT-ACT00154', 'teclado', 'DELUX', 'K3100', 'K31008B002323', 'CALL CENTER', 'adecuado', 'NIZA MASABY', NULL, 'no', 'multipago', NULL, NULL),
(155, 'IT-ACT00155', 'mouse', 'GENIUS', 'NET SCROLL 120', 'X4F87820703615', 'CALL CENTER', 'adecuado', 'NIZA MASABY', NULL, 'no', 'multipago', NULL, NULL),
(156, 'IT-ACT00156', 'auriculares', 'LOGI', NULL, '2107MA00Z0', 'CALL CENTER', 'adecuado', 'NIZA MASABY', NULL, 'no', 'multipago', NULL, NULL),
(157, 'IT-ACT00157', 'cargador', 'LENOVO', '42T4430', '11542T4430Z7ZGWEL5W360', 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', 'pc mini', 'no', 'multipago', NULL, NULL),
(158, 'IT-ACT00158', 'cargador', 'LENOVO', NULL, '11542T442671ZFBF15T423', 'CALL CENTER', 'adecuado', 'BELEN SALAZAR', 'pc mini', 'no', 'multipago', NULL, NULL),
(159, 'IT-ACT00159', 'pc-escritorio', 'LG', NULL, NULL, 'PRODUCCIÓN', 'adecuado', 'ERCIK SANCHEZ', NULL, 'si', 'ticketeg', NULL, NULL),
(160, 'IT-ACT00160', 'monitor', 'LG', NULL, NULL, 'PRODUCCIÓN', 'adecuado', 'ERICK SANCHEZ', NULL, 'no', 'ticketeg', NULL, NULL),
(161, 'IT-ACT00161', 'teclado', 'DELUX', 'DM-06', 'KOM-064K004154', 'PRODUCCIÓN', 'adecuado', 'ERCIK SANCHEZ', NULL, 'no', 'ticketeg', NULL, NULL),
(162, 'IT-ACT00162', 'mouse', 'DELUX', 'MS111L', NULL, 'PRODUCCIÓN', 'adecuado', 'ERICK SANCHEZ', NULL, 'no', 'ticketeg', NULL, NULL),
(163, 'IT-ACT00163', 'impresora', 'HP', 'LASER P1102', 'BRBSH5F8P9', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL, NULL),
(164, 'IT-ACT00164', 'impresora', 'BARCODE', 'PT039-50', 'D393030782', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'Impresora de manillas', 'no', 'ticketeg', NULL, NULL),
(165, 'IT-ACT00165', 'etiquetadora', 'BROTHER', 'QL-700', 'E70712-E6Z900699', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'No se usa', 'no', 'ticketeg', NULL, NULL),
(166, 'IT-ACT00166', 'etiquetadora', 'BROTHER', 'QL-700', 'E70712-E67900702', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'No se usa', 'no', 'ticketeg', NULL, NULL),
(167, 'IT-ACT00167', 'impresora', 'BOCA', 'LEMUR', '225083', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'Impresora de manillas', 'no', 'ticketeg', NULL, NULL),
(168, 'IT-ACT00168', 'usb', 'KINGSTON', 'DTX-64', NULL, 'SEGUNDO PISO', 'adecuado', 'KEVIN TOLEDO', NULL, 'no', 'celina', NULL, NULL),
(169, 'IT-ACT00169', 'usb', 'KINGSTON', 'DTX-64', NULL, 'SEGUNDO PISO', 'adecuado', 'KEVIN TOLEDO', NULL, 'no', 'celina', NULL, NULL),
(170, 'IT-ACT00170', 'usb', 'KINGSTON', 'DTX-64', NULL, 'SEGUNDO PISO', 'adecuado', 'WALTER VACA', NULL, 'no', 'celina', NULL, NULL),
(171, 'IT-ACT00171', 'laptop', 'APPLE', 'MID2015', 'C02QJ7W768WN', 'SOPORTE', 'adecuado', 'FLAVIA RIVERO', 'Bocina no sirve', 'no', 'multipago', NULL, NULL),
(172, 'IT-ACT00172', 'cargador', 'APPLE', NULL, NULL, 'SOPORTE', 'adecuado', 'FLAVIA RIVERO', NULL, 'no', 'multipago', NULL, NULL),
(173, 'IT-ACT00173', 'pc-escritorio', NULL, NULL, NULL, 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'si', 'multipago', NULL, NULL),
(174, 'IT-ACT00174', 'monitor', 'SURE', 'SR-LED32W', 'DSE32D715110', 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'no', 'multipago', NULL, NULL),
(175, 'IT-ACT00175', 'teclado', 'DELUX', 'KA980', 'KA18081001292', 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'no', 'multipago', NULL, NULL),
(176, 'IT-ACT00176', 'mouse', 'GENIUS', 'GM-03003', '148292404298', 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'no', 'multipago', NULL, NULL),
(177, 'IT-ACT00177', 'auriculares', 'LOGI', NULL, '2107HE0020', 'CALL CENTER', 'adecuado', 'RODOLFO MARTINEZ', NULL, 'no', 'multipago', NULL, NULL),
(178, 'IT-ACT00178', 'pc-escritorio', 'LENOVO', '10FLS0YA00', NULL, 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', NULL, 'si', 'multipago', NULL, NULL),
(179, 'IT-ACT00179', 'teclado', 'GENIUS', 'GK-100015', 'XE1807624153', 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', NULL, 'no', 'multipago', NULL, NULL),
(180, 'IT-ACT00180', 'monitor', 'SAMSUNG', 'S22F35', '0ABZHCNNC00', 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', NULL, 'no', 'multipago', NULL, NULL),
(181, 'IT-ACT00181', 'mouse', 'GENIUS', 'GM-150050', 'KE1807624153', 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', NULL, 'no', 'multipago', NULL, NULL),
(182, 'IT-ACT00182', 'pc-escritorio', 'GIGABYTE', 'GB-BASE3150', NULL, 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'multipago', NULL, NULL),
(183, 'IT-ACT00183', 'teclado', 'SURE', 'KA-180', 'KAM808H007425', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'multipago', NULL, NULL),
(184, 'IT-ACT00184', 'cargador', 'UNIVERSAL', 'KFD-90WNB', NULL, 'CALL CENTER', 'adecuado', 'ALEX PEREZ', '(PC MINI) \r\nSe mueve', 'no', 'multipago', NULL, NULL),
(185, 'IT-ACT00185', 'pc-escritorio', NULL, NULL, NULL, 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'Cambio de disco', 'si', 'ticketeg', NULL, NULL),
(186, 'IT-ACT00186', 'mouse', 'GENIUS', 'DX-120', 'XE17087047448', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL, NULL),
(187, 'IT-ACT00187', 'teclado', 'CPS', 'CPS-X559', NULL, 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL, NULL),
(188, 'IT-ACT00188', 'monitor', 'SAMSUNG', 'E1920NX', 'V893H9NZ58875AR', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL, NULL),
(189, 'IT-ACT00189', 'parlantes', 'SOFT', NULL, NULL, 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL, NULL),
(190, 'IT-ACT00190', 'etiquetadora', 'BROTHER', 'QL-700', 'E70712-E6Z900713', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'No se usa', 'no', 'celina', NULL, NULL),
(191, 'IT-ACT00191', 'impresora', 'BARCODE', 'DT039-50', 'D3918270636', 'PRODUCCIÓN', 'baja', 'MIGUEL MERCADO', 'No funciona', 'no', 'ticketeg', NULL, NULL),
(192, 'IT-ACT00192', 'impresora', 'BOCA', 'LEMUR', '225086', NULL, 'adecuado', 'MIGUEL MERCADO', 'Impresora térmica', 'no', 'ticketeg', NULL, NULL),
(193, 'IT-ACT00193', 'impresora', 'BOCA', 'LEMUR', '225085', 'PRODUCCIÓN', 'adecuado', 'MIGUEL MERCADO', 'Impresora térmica', 'no', 'ticketeg', NULL, NULL),
(194, 'IT-ACT00194', 'laptop', 'HP', 'HP MINI5103', 'CNV12027JH', 'TICKETEG', 'adecuado', NULL, 'Nro 15', 'si', 'ticketeg', NULL, NULL),
(195, 'IT-ACT00195', 'laptop', 'HP', 'HP 3115M', '5CD23934RY', 'TICKETEG', 'adecuado', NULL, 'Nro 3\r\nSistema operativo lento', 'no', 'ticketeg', NULL, NULL),
(196, 'IT-ACT00196', 'laptop', 'HP', 'Hp 3115M', '5CD23602V8', 'TICKETEG', 'adecuado', NULL, 'Nro 4\r\nSistema operativo lento', 'si', 'ticketeg', NULL, NULL),
(197, 'IT-ACT00197', 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 22\r\nEnciende solo con cargador\r\nSin Bateria', 'si', 'ticketeg', NULL, NULL),
(198, 'IT-ACT00198', 'laptop', 'SAMSUNG', 'N100SP', 'HQV491AC800111', 'TICKETEG', 'adecuado', NULL, 'Nro 11\r\nSistema operativo lento\r\nEnciende solo con cargador', 'si', 'ticketeg', NULL, NULL),
(199, 'IT-ACT00199', 'laptop', 'HP', 'HP 3115M', 'SCD23434RW', 'TICKETEG', 'adecuado', NULL, 'Nro 2\r\nSoporte roto\r\nEnciende con cargador', 'si', 'ticketeg', NULL, NULL),
(200, 'IT-ACT00200', 'laptop', 'SAMSUNG', 'N100SP', 'HQV491AC900324', 'TICKETEG', 'adecuado', NULL, 'Nro 8 \r\nSistema Operativo lento\r\nPantalla dañada', 'si', 'ticketeg', NULL, NULL),
(201, 'IT-ACT00201', 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 9\r\nPantalla dañada\r\nEnciende con cargador', 'si', 'ticketeg', NULL, NULL),
(202, 'IT-ACT00202', 'laptop', 'MSI', 'MSN051', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 12\r\nSistema operativo lento\r\nSin bateria', 'si', 'ticketeg', NULL, NULL),
(203, 'IT-ACT00203', 'laptop', 'MSI', 'MS-N014', 'FFFFFFFF', 'TICKETEG', 'adecuado', NULL, 'Nro 13\r\nEnciende con cargador', 'si', 'ticketeg', NULL, NULL),
(204, 'IT-ACT00204', 'laptop', 'HP', 'HP MINI 5103', 'CNV1200WVQ', 'TICKETEG', 'adecuado', NULL, 'Nro 16 \r\nSistema operativo lento\r\nEnciende con cargador', 'si', 'ticketeg', NULL, NULL),
(205, 'IT-ACT00205', 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 24 \r\nSistema operativo lento', 'si', 'ticketeg', NULL, NULL),
(206, 'IT-ACT00206', 'laptop', 'HP', 'HP MINI 5103', 'CNV1200YJ0', 'TICKETEG', 'adecuado', NULL, 'Nro 17\r\nEnciende con cargador', 'si', 'ticketeg', NULL, NULL),
(207, 'IT-ACT00207', 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 20\r\nEnciende con cargador', 'si', 'ticketeg', NULL, NULL),
(208, 'IT-ACT00208', 'laptop', 'SAMSUNG', 'N100SP', 'HQU491JC600465', 'TICKETEG', 'adecuado', NULL, 'Nro 6\r\nPantalla rota', 'si', 'ticketeg', NULL, NULL),
(209, 'IT-ACT00209', 'laptop', 'HP', 'HP MINI 5103', 'CVU1191BSD', 'TICKETEG', 'adecuado', NULL, 'Nro 18\r\nEnciende con cargador', 'si', 'ticketeg', NULL, NULL),
(210, 'IT-ACT00210', 'laptop', 'SAMSUNG', 'N100SP', 'HQU491AC900250', 'TICKETEG', 'adecuado', NULL, 'Nro 10', 'si', 'ticketeg', NULL, NULL),
(211, 'IT-ACT00211', 'laptop', 'SAMSUNG', 'N100SP', 'HQV491KL300579', 'TICKETEG', 'adecuado', NULL, 'Nro 7\r\nSistema operativo lento', 'si', 'ticketeg', NULL, NULL),
(212, 'IT-ACT00212', 'laptop', 'ACER', NULL, '95203872125', 'TICKETEG', 'dañado', NULL, 'Nro15\r\nNo enciende', 'no', 'ticketeg', NULL, NULL),
(213, 'IT-ACT00213', 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 26\r\nSistema operativo lento', 'si', 'ticketeg', NULL, NULL),
(214, 'IT-ACT00214', 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 19\r\nNo tiene bateria', 'si', 'ticketeg', NULL, NULL),
(215, 'IT-ACT00215', 'teclado', 'SURE', 'SURE-K851GKO7000', '508636912', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(216, 'IT-ACT00216', 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 25\r\nEnciende con cargadror', 'si', 'ticketeg', NULL, NULL),
(217, 'IT-ACT00217', 'laptop', 'DELUX', 'MONTVINA', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 21\r\nSistema operativo lento\r\nNo sirve un puerto USB', 'si', 'ticketeg', NULL, NULL),
(218, 'IT-ACT00218', 'teclado', 'GENIUS', 'GK070008', 'ZCE242700031', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(219, 'IT-ACT00219', 'teclado', 'DELUX', 'K6000', 'K60001506000734', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(220, 'IT-ACT00220', 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Nro 23 \r\nSistema operativo lento\r\nNo tiene batería', 'no', 'ticketeg', NULL, NULL),
(221, 'IT-ACT00221', 'teclado', 'DELUX', 'K6000', 'K60001506000314', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(222, 'IT-ACT00222', 'laptop', 'HP', 'HP MINI 5103', 'CNU1200Y97', NULL, 'dañado', NULL, 'Nro 14\r\nNo funciona la pantalla', 'no', 'ticketeg', NULL, NULL),
(223, 'IT-ACT00223', 'teclado', 'DELUX', 'K6000', 'K60001506000309', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(224, 'IT-ACT00224', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 15', 'no', 'ticketeg', NULL, NULL),
(225, 'IT-ACT00225', 'teclado', 'DELUX', 'K6000', 'K60001506000665', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(226, 'IT-ACT00226', 'teclado', 'DELUX', '0M-06', 'KOM064L004735', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(227, 'IT-ACT00227', 'teclado', 'AQUA', 'LK0685', 'INC80763', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(228, 'IT-ACT00228', 'cargador', 'Hp', NULL, 'WBGTADBLB2WBSJ', NULL, 'adecuado', 'TICKETEG', 'Nro. 6', 'no', 'ticketeg', NULL, NULL),
(229, 'IT-ACT00229', 'teclado', 'HP', 'KB-0316', 'BAUDR0JVB', 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(230, 'IT-ACT00230', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(231, 'IT-ACT00231', 'teclado', 'LOGITECH', 'Y-R0009', '1447SY015468', 'TICKETEG', 'baja', NULL, NULL, 'si', 'celina', NULL, NULL),
(232, 'IT-ACT00232', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 12', 'no', 'ticketeg', NULL, NULL),
(233, 'IT-ACT00233', 'cargador', NULL, 'CPA09-002A', NULL, NULL, 'adecuado', 'TICKETEG', 'Nro. 9', 'no', 'ticketeg', NULL, NULL),
(234, 'IT-ACT00234', 'teclado', 'LOGITECH', 'Y-R0042', '1432CE07BBD8', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(235, 'IT-ACT00235', 'tv-plasma', 'SURE', 'SR-LED32W', 'OSE3218-156', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(236, 'IT-ACT00236', 'scanner', 'MOTOROLA', 'DS9208', '14008000502059', 'TICKETEG', 'req_man', NULL, 'Nro 5\r\nCable dañado', 'no', 'ticketeg', NULL, NULL),
(237, 'IT-ACT00237', 'cargador', NULL, 'ADP-40PH', NULL, NULL, 'adecuado', 'TICKETEG', 'Nro. 25', 'no', 'ticketeg', NULL, NULL),
(238, 'IT-ACT00238', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 11\r\nCable dañado', 'no', 'ticketeg', NULL, NULL),
(239, 'IT-ACT00239', 'tv-plasma', 'SURE', 'SR-LED32W', 'OSE32D7-987', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(240, 'IT-ACT00240', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'Nro 13\r\nNo funciona', 'no', 'ticketeg', NULL, NULL),
(241, 'IT-ACT00241', 'cargador', 'HP', 'PPP009C', 'WCNXBOA3L5KM23', NULL, 'adecuado', 'TICKETEG', 'Nro. 16', 'no', 'ticketeg', NULL, NULL),
(242, 'IT-ACT00242', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Nro 10\r\nCable dañado', 'no', 'ticketeg', NULL, NULL),
(243, 'IT-ACT00243', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(244, 'IT-ACT00244', 'scanner', 'CANNON', 'LIDE110', '8C3-5241-03', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'celina', NULL, NULL),
(245, 'IT-ACT00245', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro 2', 'no', 'ticketeg', NULL, NULL),
(246, 'IT-ACT00246', 'proyector', 'INFOCUS', 'X1', 'AHHP33800127', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(247, 'IT-ACT00247', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(248, 'IT-ACT00248', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(249, 'IT-ACT00249', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(250, 'IT-ACT00250', 'cargador', NULL, 'CPA09-002A', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro. 8', 'no', 'ticketeg', NULL, NULL),
(251, 'IT-ACT00251', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(252, 'IT-ACT00252', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(253, 'IT-ACT00253', 'monitor', 'SANSUMG', 'S19DE00HY', 'ZZE4HYGD09011J', 'TICKETEG', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(254, 'IT-ACT00254', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(255, 'IT-ACT00255', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(256, 'IT-ACT00256', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(257, 'IT-ACT00257', 'monitor', 'ACER', 'V206HQLL', 'MMLXKAA4210', NULL, 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(258, 'IT-ACT00258', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(259, 'IT-ACT00259', 'scanner', 'MOTOROLA', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(260, 'IT-ACT00260', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(261, 'IT-ACT00261', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(262, 'IT-ACT00262', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(263, 'IT-ACT00263', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(264, 'IT-ACT00264', 'cargador', 'HP', 'PPP009A', 'CNBGTA0BLB2WGPP', 'TICKETEG', 'adecuado', NULL, 'Nro. 18', 'no', 'ticketeg', NULL, NULL),
(265, 'IT-ACT00265', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(266, 'IT-ACT00266', 'laptop', 'HP', 'HP100 NOTEBOOK PC', '5C634706BR', NULL, 'adecuado', NULL, 'Sistema operativo lento, Pantalla dañada y no funciona sin corriente', 'si', 'celina', NULL, NULL),
(267, 'IT-ACT00267', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(268, 'IT-ACT00268', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(269, 'IT-ACT00269', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(270, 'IT-ACT00270', 'laptop', NULL, 'ACE', 'ZR1', 'HCZR1007018', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(271, 'IT-ACT00271', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(272, 'IT-ACT00272', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(273, 'IT-ACT00273', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(274, 'IT-ACT00274', 'scanner', 'YOUJIE 2D', NULL, NULL, 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(275, 'IT-ACT00275', 'cargador', NULL, NULL, 'ADP400H', 'TICKETEG', 'adecuado', NULL, 'Nro. 26\r\nSin serial', 'no', 'ticketeg', NULL, NULL),
(276, 'IT-ACT00276', 'laptop', 'HP', 'HP 3115M', '5CD232134XX', 'TICKETEG', 'dañado', NULL, 'Nro 29\r\nNo sirve la pantalla', 'si', 'ticketeg', NULL, NULL),
(277, 'IT-ACT00277', 'laptop', 'MSI', NULL, 'VION-075A8K0903000048', 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL, NULL),
(278, 'IT-ACT00278', 'laptop', 'HP', 'HP 3115M', '3961919', 'TICKETEG', 'dañado', NULL, 'Pantalla rota\r\nNo tiene batería', 'no', 'ticketeg', NULL, NULL),
(279, 'IT-ACT00279', 'monitor', 'LG', 'W1934ST', '905TPWQ0D009', 'CELINA', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(280, 'IT-ACT00280', 'etiquetadora', 'BROTHER', 'QL-700', 'E70712-EE7900705', 'TICKETEG', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL, NULL),
(281, 'IT-ACT00281', 'cargador', NULL, 'ADP90H', '35TW06A0297', 'TICKETEG', 'adecuado', NULL, 'Nro. 25', 'no', 'ticketeg', NULL, NULL),
(282, 'IT-ACT00282', 'monitor', 'SURE', 'SR-LED19WM', 'OSE1906116', NULL, 'req_man', NULL, 'Sin prueba de estado por falta de cargador', 'no', 'celina', NULL, NULL),
(283, 'IT-ACT00283', 'cargador', NULL, 'APP-40PH', '35TW13302G8', 'TICKETEG', 'adecuado', NULL, 'Nro. 24', 'no', 'ticketeg', NULL, NULL),
(284, 'IT-ACT00284', 'cargador', NULL, NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Nro. 21', 'no', 'ticketeg', NULL, NULL),
(285, 'IT-ACT00285', 'laptop', 'DELL', 'INSPIRON', 'F5S0DS1', NULL, 'baja', NULL, 'No enciende', 'no', 'celina', NULL, NULL),
(286, 'IT-ACT00286', 'cargador', 'HP', NULL, 'F129011030003321', 'TICKETEG', 'adecuado', NULL, 'Nro. 2', 'no', 'ticketeg', NULL, NULL),
(287, 'IT-ACT00287', 'etiquetadora', 'BROTHER', 'QL-700', 'E70712-F5Z651900', 'TICKETEG', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL, NULL),
(288, 'IT-ACT00288', 'cargador', NULL, NULL, '35TW06N02HT', 'TICKETEG', 'adecuado', NULL, 'Nro. 19', 'no', 'ticketeg', NULL, NULL),
(289, 'IT-ACT00289', 'laptop', 'TOSHIBA', 'C55-B5116KM', '3F113912P', NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(290, 'IT-ACT00290', 'scanner', 'MOTOROLA', 'D54808', '11105005022', 'TICKETEG', 'adecuado', 'MIGUEL MERCADO', NULL, 'no', 'ticketeg', NULL, NULL),
(291, 'IT-ACT00291', 'pc-escritorio', 'SURE', NULL, NULL, 'PRODASA', 'baja', NULL, 'No enciende', 'no', 'celina', NULL, NULL),
(292, 'IT-ACT00292', 'cargador', NULL, 'ADP-40PH', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro. 20', 'no', 'ticketeg', NULL, NULL),
(293, 'IT-ACT00293', 'laptop', 'SAMSUNG', 'N100SP', NULL, 'TICKETEG', 'dañado', NULL, 'No enciende la pantalla', 'no', 'ticketeg', NULL, NULL),
(294, 'IT-ACT00294', 'pc-escritorio', 'SURE', NULL, NULL, 'PRODASA', 'baja', 'No enciende', NULL, 'no', 'celina', NULL, NULL),
(295, 'IT-ACT00295', 'cargador', NULL, NULL, '09003006703021062603', 'TICKETEG', 'adecuado', NULL, 'Nro. 12', 'no', 'ticketeg', NULL, NULL),
(296, 'IT-ACT00296', 'impresora', 'BOCA', 'LEMUR', '403935', 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(297, 'IT-ACT00297', 'cargador', 'TARGUS', NULL, 'A1037A001399', 'TICKETEG', 'adecuado', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(298, 'IT-ACT00298', 'impresora', 'BOCA', 'LEMUR', '403937', 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(299, 'IT-ACT00299', 'laptop', 'SAMSUNG', 'N100SP', NULL, 'TICKETEG', 'dañado', NULL, 'No c¡enciende la pantalla', 'no', 'ticketeg', NULL, NULL),
(300, 'IT-ACT00300', 'laptop', 'HP', NULL, 'F12901103003304', 'TICKETEG', 'adecuado', NULL, 'Nro. 4', 'no', 'ticketeg', NULL, NULL),
(301, 'IT-ACT00301', 'impresora', 'BOCA', 'LEMUR', '403936', 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(302, 'IT-ACT00302', 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'baja', NULL, 'Piezas faltantes', 'no', 'ticketeg', NULL, NULL),
(303, 'IT-ACT00303', 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'baja', NULL, 'Piezas faltantes', 'no', 'ticketeg', NULL, NULL),
(304, 'IT-ACT00304', 'cargador', 'HP', 'PPP09LE', 'WLNVA003L64DFD', 'TICKETEG', 'adecuado', NULL, 'Nro. 15', 'no', 'ticketeg', NULL, NULL),
(305, 'IT-ACT00305', 'laptop', 'MSI', 'MS-160', NULL, 'TICKETEG', 'dañado', NULL, 'No sirve la pantalla', 'no', 'ticketeg', NULL, NULL),
(306, 'IT-ACT00306', 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(307, 'IT-ACT00307', 'laptop', 'ACER', NULL, '9192610416', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(308, 'IT-ACT00308', 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(309, 'IT-ACT00309', 'cargador', 'TOSHIBA', 'PA51770', 'G71C000GX110', 'TICKETEG', 'adecuado', NULL, 'Nro. 22', 'no', 'ticketeg', NULL, NULL),
(310, 'IT-ACT00310', 'laptop', 'DELUX', NULL, NULL, 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(311, 'IT-ACT00311', 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(312, 'IT-ACT00312', 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(313, 'IT-ACT00313', 'laptop', 'MSI', 'U160', NULL, 'TICKETEG', 'adecuado', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(314, 'IT-ACT00314', 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(315, 'IT-ACT00315', 'cargador', NULL, 'CPA09002A', NULL, 'TICKETEG', 'adecuado', NULL, 'Nro. 7', 'no', 'ticketeg', NULL, NULL),
(316, 'IT-ACT00316', 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(317, 'IT-ACT00317', 'laptop', 'DELUX', 'DLN-XC11', NULL, 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL, NULL),
(318, 'IT-ACT00318', 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(319, 'IT-ACT00319', 'impresora', 'BOCA', NULL, NULL, 'TICKETEG', 'req_man', NULL, 'Impresora de ticket', 'no', 'ticketeg', NULL, NULL),
(320, 'IT-ACT00320', 'laptop', 'DELUX', NULL, 'M116BKDEÑ1311030900200', 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL, NULL),
(321, 'IT-ACT00321', 'cargador', 'HP', 'PPPD09A', 'WBG1ADBLBB3A7AX', 'TICKETEG', 'adecuado', NULL, 'Nro. 3', 'no', 'ticketeg', NULL, NULL),
(322, 'IT-ACT00322', 'laptop', 'TOSHIBA', 'NB505', '6B505335K', 'TICKETEG', 'req_man', NULL, 'No tiene bateria', 'no', 'ticketeg', NULL, NULL),
(323, 'IT-ACT00323', 'laptop', 'DELUX', 'DLN-XC12', '11083900200061', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(324, 'IT-ACT00324', 'cargador', 'SANSUMG', 'A1514-DHN', 'CN07BN4400590BDT40GAR0397', 'TICKETEG', 'baja', NULL, 'No sirve y  no tiene cable de corriente', 'no', 'ticketeg', NULL, NULL),
(325, 'IT-ACT00325', 'cargador', 'SAMSUNG', 'AP04214UV', 'QA5Q02425', 'TICKETEG', 'adecuado', NULL, 'Nro. 8', 'no', 'ticketeg', NULL, NULL),
(326, 'IT-ACT00326', 'laptop', 'ACER', NULL, 'LU5780400292309', 'TICKETEG', 'req_man', NULL, 'No tiene batería', 'no', 'ticketeg', NULL, NULL),
(327, 'IT-ACT00327', 'laptop', 'SAMSUNG', 'N100SP', 'HQU491JC600165A', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(328, 'IT-ACT00328', 'laptop', 'MSI', 'MS-N051', NULL, 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL, NULL),
(329, 'IT-ACT00329', 'scanner', 'MOTOROLA', 'D59208', '140800050209', 'TICKETEG', 'baja', NULL, 'No tiene cable \r\nNo enciende', 'no', 'ticketeg', NULL, NULL),
(330, 'IT-ACT00330', 'scanner', 'MOTOROLA', '05000487', NULL, 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL, NULL),
(331, 'IT-ACT00331', 'cargador', 'CAFINI', 'CN-C0091', NULL, 'TICKETEG', 'baja', NULL, '#8 Falta testear y no tiene cable', 'no', 'ticketeg', NULL, NULL),
(332, 'IT-ACT00332', 'cargador', 'DELTA', NULL, '35TW1330267', 'TICKETEG', 'adecuado', NULL, 'Nro. 23', 'no', 'ticketeg', NULL, NULL),
(333, 'IT-ACT00333', 'scanner', 'MOTOROLA', 'D59208', '140280105008', 'TICKETEG', 'baja', NULL, 'No enciende', 'no', 'ticketeg', NULL, NULL),
(334, 'IT-ACT00334', 'cargador', 'KNUP', 'KP-525', NULL, 'TICKETEG', 'baja', NULL, '#19 Falta de  testear y no tiene cable', 'no', 'ticketeg', NULL, NULL),
(335, 'IT-ACT00335', 'cargador', 'HP', 'PPP009H', 'F12921205007888', 'TICKETEG', 'baja', NULL, 'Nro. 1', 'no', 'ticketeg', NULL, NULL),
(336, 'IT-ACT00336', 'scanner', 'YOUJIE 2D', 'YJ4600', '1867584064', 'TICKETEG', 'baja', NULL, 'No sirve', 'no', 'ticketeg', NULL, NULL),
(337, 'IT-ACT00337', 'cargador', NULL, 'CPAD9002A', NULL, 'TICKETEG', 'baja', NULL, 'Nro. 11', 'no', 'ticketeg', NULL, NULL),
(338, 'IT-ACT00338', 'cargador', 'KNUP', 'KP-525', NULL, 'TICKETEG', 'baja', NULL, 'Falta testear y  no tiene cable', 'no', 'ticketeg', NULL, NULL),
(339, 'IT-ACT00339', 'cargador', NULL, 'PA165002', 'PK100009000', 'TICKETEG', 'baja', NULL, 'Nro. 13', 'no', 'ticketeg', NULL, NULL),
(340, 'IT-ACT00340', 'teclado', 'GENIUS', 'SMARTKB-200', 'X0L95786605525', 'TICKETEG', 'adecuado', NULL, 'Falta una tecla', 'no', 'ticketeg', NULL, NULL),
(341, 'IT-ACT00341', 'cargador', 'DELTA', 'ADP-40PH', '35TW06A2A9', 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(342, 'IT-ACT00342', 'scanner', 'GENIUS', NULL, '1352721012B', 'TICKETEG', 'adecuado', NULL, 'Escanner de targeta', 'no', 'ticketeg', NULL, NULL),
(343, 'IT-ACT00343', 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, 'Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(344, 'IT-ACT00344', 'scanner', 'GENIUS', NULL, '13527390067', 'TICKETEG', 'adecuado', NULL, 'Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(345, 'IT-ACT00345', 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#11 Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(346, 'IT-ACT00346', 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#12 Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(347, 'IT-ACT00347', 'cargador', NULL, 'KPA040F', '111006014011474', 'TICKETEG', 'baja', NULL, 'Nro. 21', 'no', 'ticketeg', NULL, NULL),
(348, 'IT-ACT00348', 'scanner', 'GENIUS', NULL, '13527390062', 'TICKETEG', 'adecuado', NULL, 'Escanner de targeta, no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(349, 'IT-ACT00349', 'mouse', 'OPTICAL MOUESE', NULL, '100907876', 'TICKETEG', 'baja', NULL, 'no sirve', 'no', 'ticketeg', NULL, NULL),
(350, 'IT-ACT00350', 'cargador', NULL, 'PA140014', 'PA2N4DW', 'TICKETEG', 'adecuado', NULL, 'Nro. 22', 'no', 'ticketeg', NULL, NULL),
(351, 'IT-ACT00351', 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#8 escanner de ticket no se leen los datos', 'no', 'ticketeg', NULL, NULL);
INSERT INTO `activos` (`id`, `Codigo`, `NombreActivo`, `Marca`, `Modelo`, `NroSerial`, `Oficina`, `Condicion`, `UsuarioAsig`, `Observaciones`, `CapRecursos`, `Empresa`, `IdCategoria`, `deleted_at`) VALUES
(352, 'IT-ACT00352', 'cargador', 'KNUP', 'KP525', NULL, 'TICKETEG', 'baja', NULL, 'Nro. 18', 'no', 'ticketeg', NULL, NULL),
(353, 'IT-ACT00353', 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#14 escanner de ticket Y no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(354, 'IT-ACT00354', 'scanner', 'GENIUS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#1 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(355, 'IT-ACT00355', 'cargador', NULL, NULL, '090030067D3021D6P603', 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(356, 'IT-ACT00356', 'scanner', 'MICROSOFT WINDOWS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#5 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(357, 'IT-ACT00357', 'cargador', NULL, 'CSX0081204', NULL, 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(358, 'IT-ACT00358', 'scanner', 'MICROSOFT WINDOWS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#13 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(359, 'IT-ACT00359', 'scanner', 'MICROSOFT WINDOWS', NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#9 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(360, 'IT-ACT00360', 'cargador', NULL, 'LPS12V200MA', NULL, 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(361, 'IT-ACT00361', 'scanner', NULL, NULL, NULL, 'TICKETEG', 'adecuado', NULL, '#10 escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(362, 'IT-ACT00362', 'cargador', 'ASUS', 'ADP65DB', 'LN261936', 'TICKETEG', 'baja', NULL, NULL, 'no', 'ticketeg', NULL, NULL),
(363, 'IT-ACT00363', 'scanner', 'MICROSOFT WINDOWS', NULL, '13527390063', 'TICKETEG', 'adecuado', NULL, 'escanner de ticket y no se leen los datos', 'no', 'ticketeg', NULL, NULL),
(364, 'IT-ACT00364', 'cargador', NULL, 'ADP0933', 'AH19474B', 'TICKETEG', 'baja', NULL, 'Nro. 20', 'si', 'ticketeg', NULL, NULL),
(365, 'IT-ACT00365', 'scanner', 'MICROSOFT WINDOWS', NULL, '13527390029', 'TICKETEG', 'adecuado', NULL, 'escanner de ticket y no tiene cable usb', 'no', 'ticketeg', NULL, NULL),
(366, 'IT-ACT00366', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(367, 'IT-ACT00367', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(368, 'IT-ACT00368', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(369, 'IT-ACT00369', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(370, 'IT-ACT00370', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(371, 'IT-ACT00371', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(372, 'IT-ACT00372', 'cargador', 'VOLT', 'KFD90WNB', NULL, 'TICKETEG', 'adecuado', NULL, 'Solo funciona cabezal', 'no', 'ticketeg', NULL, NULL),
(373, 'IT-ACT00373', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(374, 'IT-ACT00374', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(375, 'IT-ACT00375', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(376, 'IT-ACT00376', 'cargador', NULL, 'CPA09002A', NULL, 'TICKETEG', 'baja', NULL, 'NO SIRVE', 'no', 'ticketeg', NULL, NULL),
(377, 'IT-ACT00377', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(378, 'IT-ACT00378', 'camara-web', 'RAMBO', NULL, NULL, NULL, 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(379, 'IT-ACT00379', 'cargador', NULL, 'CPA09002A', NULL, 'TICKETEG', 'baja', NULL, 'NO SIRVE', 'no', 'ticketeg', NULL, NULL),
(380, 'IT-ACT00380', 'laptop', 'DELL', '3583', 'GN-006Z2', 'Call Center', 'adecuado', 'ALEX PEREZ', NULL, 'si', 'celina', NULL, NULL),
(381, 'IT-ACT00381', 'monitor', 'SURE', 'SR-LED19WM', 'OSE1906130901128', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL, NULL),
(382, 'IT-ACT00382', 'teclado', 'LOGITEC', 'K220', '1529SC10P60UV8', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL, NULL),
(383, 'IT-ACT00383', 'mouse', 'LOGITEC', 'H150', NULL, 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL, NULL),
(384, 'IT-ACT00384', 'laptop', 'SAMSUNG', NULL, 'SE9W91UD500949', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', 'Sistema operativo lento', 'si', 'celina', NULL, NULL),
(385, 'IT-ACT00385', 'cargador', 'SAMSUNG', 'ADP-60ZHA', 'LA1421080401A007219', 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL, NULL),
(386, 'IT-ACT00386', 'cargador', 'DELL', NULL, NULL, 'CALL CENTER', 'adecuado', 'ALEX PEREZ', NULL, 'no', 'celina', NULL, NULL),
(387, 'IT-ACT00387', 'monitor', 'SAMSUNG', 'S22F30FHL', '0ABZHCNNC00448F', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(388, 'IT-ACT00388', 'mouse', 'GENIUS', 'GM-150030', 'XEL807707220', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(389, 'IT-ACT00389', 'teclado', 'GENIUS', 'SMART KB200', 'X0L95786605530', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(390, 'IT-ACT00390', 'pc-escritorio', 'LENOVO', '11AD', 'MJ0DAKHF', 'ACADEMIA', 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(391, 'IT-ACT00391', 'pc-escritorio', 'GIGABYTE', 'GB-BACE-3150', 'SN1606632021', 'ACADEMIA', 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(392, 'IT-ACT00392', 'teclado', 'GENIUS', 'SMART KB200', 'X0L95786605522', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(393, 'IT-ACT00393', 'mouse', 'GENIUS', 'GM-150032', 'XOL95786605522', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(394, 'IT-ACT00394', 'monitor', 'SAMSUNG', 'S22F350FHL', '0ABZHCNNC00750W', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(395, 'IT-ACT00395', 'cargador', 'LENOVO', 'PA-1650-72', '8SSL0J20149L2CZ04R1YM', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(396, 'IT-ACT00396', 'adaptador', 'LENOVO', 'RT02166CG3', '855C10R59254', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(397, 'IT-ACT00397', 'pc-escritorio', 'GIGABYTE', 'GB-BACE-3150', '5N1606631618', 'ACADEMIA', 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(398, 'IT-ACT00398', 'monitor', 'SAMSUNG', 'S22T35DFHL', '0ABZNCNNCNN422F', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(399, 'IT-ACT00399', 'teclado', 'GENIUS', 'GK070006', 'YBZAC1U07250', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(400, 'IT-ACT00400', 'mouse', 'GENIUS', 'GM-150032', 'XOL95786605530', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(401, 'IT-ACT00401', 'adaptador', 'SAMSUNG', 'A2514RPN', 'SK28N9PO180', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(402, 'IT-ACT00402', 'pc-escritorio', 'LENOVO', '11AD', 'MJ0DAKH2', 'ACADEMIA', 'adecuado', NULL, 'Tiene Windows 11', 'si', 'celina', NULL, NULL),
(403, 'IT-ACT00403', 'adaptador', 'LENOVO', 'RT02166C', '855C10959Z4DLA022A9', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(404, 'IT-ACT00404', 'monitor', 'SAMSUNG', 'S22F350FHL', '0ABZHCNNC00452L', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(405, 'IT-ACT00405', 'teclado', 'GENIUS', 'SMART KB200', 'XOL95786605523', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(406, 'IT-ACT00406', 'pc-escritorio', 'GIGABYTE', 'MZGLKDP-00', 'IJ401801540', 'ACADEMIA', 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(407, 'IT-ACT00407', 'teclado', 'GENIUS', 'SMART KB200', 'X0L95786605526', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(408, 'IT-ACT00408', 'telefono', 'DENWA', 'DW-210P', 'G26744002520', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(409, 'IT-ACT00409', 'telefono', 'DENWA', 'SW-210P', 'G26744002663', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(410, 'IT-ACT00410', 'tv-plasma', 'SURE', 'SR-LED-3244', 'SUR32A12G1804040437', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(411, 'IT-ACT00411', 'pc-escritorio', 'LENOVO', '11AD', 'MJ0DAJSH', 'ACADEMIA', 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(412, 'IT-ACT00412', 'adaptador', 'LENOVO', 'RTD2166CG3', '855C10R59254DLA022E5', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(413, 'IT-ACT00413', 'cargador', 'LENOVO', 'DA-1650-72', '85SA10J20149L2Z70HR235D', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(414, 'IT-ACT00414', 'teclado', 'GENIUS', 'SMART KB200', 'X0L95786605529', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(415, 'IT-ACT00415', 'monitor', 'SAMSUNG', 'S22F35DFHL', '0ABZHCNNC00449P', 'ACADEMIA', 'adecuado', 'RICARDO YEPEZ', NULL, 'no', 'celina', NULL, NULL),
(416, 'IT-ACT00416', 'adaptador', 'SAMSUNG', 'A2514RPN', 'RN4400939A', 'ACADEMIA', 'adecuado', 'RICARDO YEPEZ', NULL, 'no', 'celina', NULL, NULL),
(417, 'IT-ACT00417', 'pc-escritorio', 'GIGABYTE', 'GB-BACE-3150', '1548631887', 'ACADEMIA', 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(418, 'IT-ACT00418', 'mouse', 'GENIUS', 'SM150032', 'X0L95786605526', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(419, 'IT-ACT00419', 'teclado', 'GENIUS', 'KB200', 'X0L9578660531', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(420, 'IT-ACT00420', 'cargador', 'APD', 'CW-01F3', 'Y16020075784', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(421, 'IT-ACT00421', 'cargador', 'SAMSUNG', 'A2514', 'SK28N9O0222', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(422, 'IT-ACT00422', 'cargador', 'LENOVO', 'PA165072', '855A10J20149L2CZ04R1YJJ', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(423, 'IT-ACT00423', 'laptop', 'LENOVO', '80EC', 'PF0JCOQH', 'ACADEMIA', 'adecuado', NULL, 'Sistema operativo lento\r\nNo da su batería', 'si', 'celina', NULL, NULL),
(424, 'IT-ACT00424', 'mouse', 'GENIUS', 'GM-150032', 'X0L95786605529', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(425, 'IT-ACT00425', 'cargador', 'AC-ADAPTER', 'AF09', NULL, 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(426, 'IT-ACT00426', 'pc-escritorio', 'LENOVO', '11AD50E600', NULL, 'DIGITAL', 'adecuado', 'LUIS MIGUEL', NULL, 'si', 'celina', NULL, NULL),
(427, 'IT-ACT00427', 'teclado', 'SURE', 'K589', NULL, 'DIGITAL', 'adecuado', 'LUIS MIGUEL', NULL, 'no', 'celina', NULL, NULL),
(428, 'IT-ACT00428', 'mouse', 'GENIUS', '150032', 'XL095786605531', 'DIGITAL', 'adecuado', 'LUIS MIGUEL', NULL, 'no', 'celina', NULL, NULL),
(429, 'IT-ACT00429', 'cargador', 'LENOVO', 'PA-1650-72', '855A10J20149L2CZ04R1YNT', 'DIGITAL', 'adecuado', 'LUIS MIGUEL', NULL, 'no', 'celina', NULL, NULL),
(430, 'IT-ACT00430', 'tv-plasma', 'SURE', 'ISDBT-HD32W', 'SR32J01G20030316', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(431, 'IT-ACT00431', 'cargador', 'LENOVO', 'PA-1650-72', '855A10J20149L2CZ04R235D', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(432, 'IT-ACT00432', 'tv-plasma', 'SURE', 'ISDBT-HD32W', 'SR32J01G20030332', 'ACADEMIA', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(433, 'IT-ACT00433', 'laptop', 'SAMSUNG', 'NP470R4E', 'JE9W91UD700014Z', 'SOPORTE', 'req_man', NULL, 'FALTA REVISAR', 'no', 'celina', NULL, NULL),
(434, 'IT-ACT00434', 'laptop', 'SONY', NULL, NULL, NULL, 'adecuado', NULL, NULL, 'si', 'celina', NULL, '2022-06-15 05:46:05'),
(435, 'IT-ACT00435', 'laptop', 'SONY', 'PCG-61317L', '275278373000525', 'SOPORTE', 'req_man', NULL, 'FALTA REVISAR', 'no', 'celina', NULL, NULL),
(436, 'IT-ACT00436', 'telefono', 'DENWA', 'DW-210P', '440G26744002665', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(437, 'IT-ACT00437', 'cargador', 'HP', 'PA-165032H3', 'PPPD19L-S', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(438, 'IT-ACT00438', 'cargador', 'SONY', 'VGP-AC19V48', '1489078110646500', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(439, 'IT-ACT00439', 'cargador', NULL, 'ADP-12V2A', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(440, 'IT-ACT00440', 'cargador', 'TOSHIBA', 'PA5178U', 'G71C000H111', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(441, 'IT-ACT00441', 'cargador', 'HP', 'PPP009A', 'WBGTA0BLB3CH05', 'SOPORTE', 'dañado', NULL, 'No tiene cable de corriente', 'no', 'celina', NULL, NULL),
(442, 'IT-ACT00442', 'cargador', 'SAMSUNG', 'PCGA-AC', '1477205810294816', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(443, 'IT-ACT00443', 'cargador', 'LENOVO', 'ADLX45NCC3A', '577C6SLMF0819', 'SOPORTE', 'dañado', NULL, 'Hace corte', 'no', 'celina', NULL, NULL),
(444, 'IT-ACT00444', 'cargador', 'ZEBRA', 'FSP075-RAAN2', 'P1076001-006', 'SOPORTE', 'baja', NULL, 'No tiene cable de corriente', 'no', 'celina', NULL, NULL),
(445, 'IT-ACT00445', 'cargador', 'APPLE', NULL, NULL, 'SOPORTE', 'adecuado', NULL, 'No tiene cable de corriente', 'no', 'celina', NULL, NULL),
(446, 'IT-ACT00446', 'cargador', NULL, 'WA-30B12', 'YK54215228001218600', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(447, 'IT-ACT00447', 'auriculares', 'GENIUS', NULL, NULL, 'SOPORTE', 'req_man', NULL, 'Solo suena un lado', 'no', 'celina', NULL, NULL),
(448, 'IT-ACT00448', 'cargador', 'LG', 'ADS-40FSG-19', 'FAY62768607', 'SOPORTE', 'adecuado', NULL, 'Requiere adaptador', 'no', 'celina', NULL, NULL),
(449, 'IT-ACT00449', 'cargador', 'TP-LINK', 'TO90060-2C1', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(450, 'IT-ACT00450', 'cargador', NULL, 'FP500USA', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(451, 'IT-ACT00451', 'cargador', NULL, 'PS120J12-DY', 'H1131111B255410', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(452, 'IT-ACT00452', 'cargador', NULL, 'ADS-18E-12N', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(453, 'IT-ACT00453', 'cargador', 'KNUP', 'KP-564', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(454, 'IT-ACT00454', 'cargador', NULL, 'ADS-18F-12N', '7101480HNB17A0J04ST', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(455, 'IT-ACT00455', 'cargador', 'CWT', 'SAG024F', '11-14030615-00254', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(456, 'IT-ACT00456', 'cargador', 'LEI', 'A35120035-C5', NULL, 'SOPORTE', 'baja', NULL, 'No sirve', 'no', 'celina', NULL, NULL),
(457, 'IT-ACT00457', 'cargador', NULL, 'UP0121172PA', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(458, 'IT-ACT00458', 'cargador', NULL, 'ADS-40FS1-12', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(459, 'IT-ACT00459', 'cargador', NULL, 'WA-30B12', 'YK54215228001434300', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(460, 'IT-ACT00460', 'cargador', NULL, 'F12L19', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(461, 'IT-ACT00461', 'cargador', NULL, 'SND-3601', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(462, 'IT-ACT00462', 'adaptador', 'LENOVO', 'RTD2166CG3', '85SC10R5254DLA029C', 'SOPORTE', 'adecuado', NULL, 'Tipo C a VGA', 'no', 'celina', NULL, NULL),
(463, 'IT-ACT00463', 'adaptador', 'LENOVO', 'RTD2166-CG3', '8SSC10R659254DLA01L9G', 'SOPORTE', 'adecuado', NULL, 'Tipo C a VGA', 'no', 'celina', NULL, NULL),
(464, 'IT-ACT00464', 'adaptador', 'LENOVO', 'RTD2166-CG3', '8SSC10R659254DLA022DL', 'SOPORTE', 'adecuado', NULL, 'Tipo C a VGA', 'no', 'celina', NULL, NULL),
(465, 'IT-ACT00465', 'adaptador', 'LENOVO', 'RTD2166-CG3', '8SSC10R659254DLA022DN', 'SOPORTE', 'adecuado', NULL, 'Tipo C a VGA', 'no', 'celina', NULL, NULL),
(466, 'IT-ACT00466', 'adaptador', 'LENOVO', 'RTD2166-CG3', '8SSC10R659254DLA022BB', 'SOPORTE', 'adecuado', NULL, 'Tipo C a VGA', 'no', 'celina', NULL, NULL),
(467, 'IT-ACT00467', 'adaptador', 'LENOVO', 'LCH300', 'DNH351MZ', 'SOPORTE', 'adecuado', NULL, 'Tipo C a HDMI', 'no', 'celina', NULL, NULL),
(468, 'IT-ACT00468', 'adaptador', 'LENOVO', 'LCH300', 'DNH351ML', 'SOPORTE', 'adecuado', NULL, 'Tipo C a HDMI', 'si', 'celina', NULL, NULL),
(469, 'IT-ACT00469', 'adaptador', 'LENOVO', 'LCH300', 'DNH351MG', 'SOPORTE', 'adecuado', NULL, 'Tipo C a HDMI', 'no', 'celina', NULL, NULL),
(470, 'IT-ACT00470', 'cargador', NULL, 'ADS-25ESG-12', NULL, 'SOPORTE', 'baja', NULL, 'No sirve', 'no', 'celina', NULL, NULL),
(471, 'IT-ACT00471', 'cargador', NULL, 'FP500USA', NULL, 'SOPORTE', 'baja', NULL, 'No sirve', 'no', 'celina', NULL, NULL),
(472, 'IT-ACT00472', 'cargador', NULL, 'ADS-5M-06', NULL, 'SOPORTE', 'baja', NULL, 'No sirve', 'no', 'celina', NULL, NULL),
(473, 'IT-ACT00473', 'cargador', 'SAMSUNG', 'PCGA-AC', '1477205810294816', 'SOPORTE', 'dañado', NULL, 'Cable pelado', 'no', 'celina', NULL, NULL),
(474, 'IT-ACT00474', 'telefono', 'DENWA', 'DW-210P', '440G26744002669', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(475, 'IT-ACT00475', 'telefono', 'DENWA', 'DW-210P', '440G26744002511', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(476, 'IT-ACT00476', 'telefono', 'DENWA', 'DW-210P', '440G26744002664', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(477, 'IT-ACT00477', 'telefono', 'DENWA', 'DW-210P', '440G26744002669', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(478, 'IT-ACT00478', 'pc-escritorio', 'HP', 'HSTNS-5151', 'CN71D3P18C', 'SOPORTE', 'baja', NULL, 'No sirve', 'no', 'celina', NULL, NULL),
(479, 'IT-ACT00479', 'switch', 'ADVANTEK NETWORKS', 'ANS-08P', '000021145001256', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(480, 'IT-ACT00480', 'cargador', NULL, 'FP500USA', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(481, 'IT-ACT00481', 'tv-plasma', 'SURE', 'SR-LED32W', '05E3P715080073', 'SOPORTE', 'req_man', NULL, 'No prende la pantalla', 'no', 'celina', NULL, NULL),
(482, 'IT-ACT00482', 'pizarra_digital', 'IPEVO', 'CSW2-D2IP', '131720WL00121', 'SOPORTE', 'adecuado', NULL, 'Falta el lápiz digital', 'no', 'celina', NULL, NULL),
(483, 'IT-ACT00483', 'cargador', 'IPEVO', 'PSA-SPFU1-05', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(484, 'IT-ACT00484', 'modem', 'ZTE', 'MP3132', NULL, 'SOPORTE', 'baja', NULL, 'No sirve', 'no', 'celina', NULL, NULL),
(485, 'IT-ACT00485', 'cargador', NULL, 'PSAIO5R', 'FRTB4042P34802', 'SOPORTE', 'baja', NULL, 'No tiene cabezal', 'no', 'celina', NULL, NULL),
(486, 'IT-ACT00486', 'control_remoto', 'UNIVERSAL', 'KT-N828', NULL, 'SOPORTE', 'req_man', NULL, 'A/C', 'no', 'celina', NULL, NULL),
(487, 'IT-ACT00487', 'bateria', 'LENOVO', 'L15M4PC2', '855B10K907', 'SOPORTE', 'baja', NULL, 'No sirve', 'no', 'celina', NULL, NULL),
(488, 'IT-ACT00488', 'cloud_key', 'UNIFI', 'UC-CK', '1604K44409E79F367C-KAb461', 'SOPORTE', 'dañado', NULL, 'No sirve', 'no', 'celina', NULL, NULL),
(489, 'IT-ACT00489', 'modem', 'TIGO', 'P530T', '512025301000224', 'SOPORTE', 'baja', NULL, 'No sirve', 'no', 'celina', NULL, '2022-06-18 07:03:43'),
(490, 'IT-ACT00490', 'modem', 'TIGO', 'P530T', '512025301000122', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(491, 'IT-ACT00491', 'teclado', 'DELUX', 'KA180', 'KA1808J001686', 'SOPORTE', 'req_man', NULL, 'No sirve el espacio', 'no', 'celina', NULL, NULL),
(492, 'IT-ACT00492', 'teclado', 'DELUX', 'K6000', 'K6000150600095', 'SOPORTE', 'dañado', NULL, 'No hay mouse (combo)', 'no', 'celina', NULL, NULL),
(493, 'IT-ACT00493', 'teclado', 'GENIUS', 'GK-070006/U', 'YBIAC1U07108', 'SOPORTE', 'req_man', NULL, 'No sirven las teclas E y 3', 'no', 'celina', NULL, NULL),
(494, 'IT-ACT00494', 'control_remoto', 'SURE', NULL, NULL, 'SOPORTE', 'req_man', NULL, NULL, 'no', 'celina', NULL, NULL),
(495, 'IT-ACT00495', 'adaptador', 'UNIFI', 'UAP-AC', 'E063DA6A3AC2', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(496, 'IT-ACT00496', 'switch', 'TP-LINK', 'TL-WR941ND', '10B7404279', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(497, 'IT-ACT00497', 'switch', 'BANDLUXE', 'R506', '315017001000046', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(498, 'IT-ACT00498', 'switch', 'EDGE ROUTER', 'FRLITE-3', NULL, 'SOPORTE', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(499, 'IT-ACT00499', 'switch', 'TP-LINK', 'TL-U0R941ND', '2143222000431', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(500, 'IT-ACT00500', 'switch', 'ZYXEL', 'AM61202-T10B', '5132E32023237', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(501, 'IT-ACT00501', 'teclado', 'GENIUS', 'K939', 'WE2592050680', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(502, 'IT-ACT00502', 'teclado', NULL, 'KB-IMW6828', '41106109842', 'SOPORTE', 'req_man', NULL, 'Falta probar', 'no', 'celina', NULL, NULL),
(503, 'IT-ACT00503', 'teclado', 'DELUX', 'KA180', 'KA1808H000210', 'SOPORTE', 'req_man', NULL, NULL, 'no', 'celina', NULL, NULL),
(504, 'IT-ACT00504', 'teclado', 'BTO', NULL, NULL, 'SOPORTE', 'req_man', NULL, 'Falta probar', 'no', 'celina', NULL, NULL),
(505, 'IT-ACT00505', 'teclado', 'IMICRO', 'KB-IMW6020', '81106109842', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(506, 'IT-ACT00506', 'mouse', 'IMICRO', 'KB-IMW6020', '81106109842', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(507, 'IT-ACT00507', 'teclado', 'LOGITECH', 'MK220', '2127SC10RZ09', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(508, 'IT-ACT00508', 'mouse', 'LOGITECH', 'MK220', '2127SC10RZ09', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(509, 'IT-ACT00509', 'teclado', 'IMICRO', 'KB-IMW6020', '841106109842', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(510, 'IT-ACT00510', 'mouse', 'IMICRO', 'KB-IMW6020', '81106109842', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(511, 'IT-ACT00511', 'teclado', 'IMICRO', 'KB-JMW', '841106109842', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(512, 'IT-ACT00512', 'mouse', 'IMICRO', 'KB-JMW', '841106109842', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(513, 'IT-ACT00513', 'teclado', 'IMICRO', 'KB-IMW6020', '841106109842', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(514, 'IT-ACT00514', 'mouse', 'IMICRO', 'KB-IMW6020', '841106109842', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(515, 'IT-ACT00515', 'mouse', NULL, 'KB-IMW6020', '841106109842', 'SOPORTE', 'req_man', NULL, 'Falta revisar', 'no', 'celina', NULL, NULL),
(516, 'IT-ACT00516', 'pc-escritorio', 'GIGABYTE', 'GB-BASE3150', '1548632093', 'SOPORTE', 'dañado', NULL, 'Tiene disco SSD\r\nRam de 4G', 'no', 'celina', NULL, NULL),
(517, 'IT-ACT00517', 'pc-escritorio', 'GIGABYTE', 'GB-BACE3150', '1548631917', 'SOPORTE', 'dañado', NULL, 'RAM 4G', 'no', 'celina', NULL, NULL),
(518, 'IT-ACT00518', 'pc-escritorio', 'GIGABYTE', 'GB-BACE3150', '1548632045', 'SOPORTE', 'dañado', NULL, 'Disco duro 5006', 'no', 'celina', NULL, NULL),
(519, 'IT-ACT00519', 'pc-escritorio', 'GIGABYTE', 'GB-BACE3150', '1548632049', 'SOPORTE', 'dañado', NULL, 'Ram de 2G\r\nDisco duro', 'no', 'celina', NULL, NULL),
(520, 'IT-ACT00520', 'switch', 'DENWA', 'MEDIANT 800', 'DT2279235', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(521, 'IT-ACT00521', 'bateria', NULL, 'HT03XL', NULL, 'SOPORTE', 'dañado', NULL, 'Para repuesto', 'no', 'celina', NULL, NULL),
(522, 'IT-ACT00522', 'bateria', 'DELL', 'YRDD6', NULL, 'SOPORTE', 'dañado', NULL, 'Para repuesto', 'no', 'celina', NULL, NULL),
(523, 'IT-ACT00523', 'bateria', 'DELL', 'WDXBR', NULL, 'SOPORTE', 'dañado', NULL, 'Para repuesto', 'no', 'celina', NULL, NULL),
(524, 'IT-ACT00524', 'bateria', NULL, '3481', NULL, 'SOPORTE', 'baja', NULL, 'Para reciclar', 'no', 'celina', NULL, NULL),
(525, 'IT-ACT00525', 'bateria', NULL, '3481', NULL, 'SOPORTE', 'baja', NULL, 'Para reciclar', 'no', 'celina', NULL, NULL),
(526, 'IT-ACT00526', 'bateria', NULL, '3481', NULL, 'SOPORTE', 'baja', NULL, 'Para reciclar', 'no', 'celina', NULL, NULL),
(527, 'IT-ACT00527', 'bateria', NULL, '3481', NULL, 'SOPORTE', 'baja', NULL, 'Para reciclar', 'no', 'celina', NULL, NULL),
(528, 'IT-ACT00528', 'bateria', 'HP', 'R-41015938', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(529, 'IT-ACT00529', 'auriculares', 'GENIUS', NULL, NULL, 'SOPORTE', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(530, 'IT-ACT00530', 'auriculares', 'PANASONIC', NULL, NULL, 'SOPORTE', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(531, 'IT-ACT00531', 'auriculares', 'PANASONIC', NULL, NULL, 'SOPORTE', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(532, 'IT-ACT00532', 'adaptador', 'VOLT', 'KFD-90WNB', NULL, 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(533, 'IT-ACT00533', 'bateria', 'DIMAX', 'BAT-12V', NULL, 'SOPORTE', 'baja', NULL, NULL, 'no', 'celina', NULL, NULL),
(534, 'IT-ACT00534', 'camara-web', 'LOGITECH', NULL, '1636LZ0K7208', 'SOPORTE', 'baja', NULL, 'Tiene cargador', 'no', 'celina', NULL, NULL),
(535, 'IT-ACT00535', 'impresora', 'BROTHER', 'DCP-T500W', 'U64050J6H811572', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(536, 'IT-ACT00536', 'impresora', 'CANON', 'E481', 'KJSV15475', 'SOPORTE', 'adecuado', NULL, 'No tiene cartuchos', 'no', 'celina', NULL, NULL),
(537, 'IT-ACT00537', 'proyector', 'EPSON', 'H429A', 'PSCK2100714', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(538, 'IT-ACT00538', 'proyector', 'EPSON', 'H553A', 'VA9K5100125', 'SOPORTE', 'adecuado', NULL, NULL, 'no', 'celina', NULL, NULL),
(539, 'IT-ACT00539', 'laptop', 'Registro de prueba', 'registro de prueba', NULL, NULL, 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(540, 'IT-ACT00540', 'laptop', 'Registro de prueba', 'registro de prueba', NULL, NULL, 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(541, 'IT-ACT00541', 'laptop', 'Registro de prueba', 'registro de prueba', NULL, NULL, 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(542, 'IT-ACT00542', 'laptop', 'Registro de prueba', 'registro de prueba', NULL, NULL, 'adecuado', NULL, NULL, 'si', 'celina', NULL, NULL),
(543, 'IT-ACT00543', 'auriculares', 'LOGI', NULL, NULL, 'CALL CENTER', 'adecuado', 'OLIVIA MENDOZA DURAN', NULL, 'no', 'celina', NULL, NULL),
(544, 'IT-ACT00544', 'tv-plasma', 'SURE', NULL, NULL, 'CALL CENTER', 'adecuado', 'ALEX PEREZ', 'No se ven los datos', 'no', 'celina', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) NOT NULL,
  `NombreCategoria` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `NombreCategoria`, `Descripcion`, `deleted_at`) VALUES
(1, 'Monitores', 'Todos los monitore que se pueden registrar', NULL),
(2, 'Mause', 'Ratones', NULL);

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
(4, '2022_06_22_154005_table_categorias', 1),
(5, '2022_06_22_155249_table_activos', 1);

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
(1, 'JOSE ANDRES', 'soporte.joseandres@email.com', NULL, '$2y$10$MKrcdFVvQFDqaOyeJyy7uOSa1IG1c0irK47vu0wygJE6NVzXJ5tqa', 'siHoFVfSvOFpQHQdShKcpNZTqI0BSdaoqsO7KJK57AW8V5E0B24scax6FH4O', '2022-06-22 20:56:57', '2022-06-22 20:56:57');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos`
--
ALTER TABLE `activos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activos_idcategoria_foreign` (`IdCategoria`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activos`
--
ALTER TABLE `activos`
  ADD CONSTRAINT `activos_idcategoria_foreign` FOREIGN KEY (`IdCategoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
