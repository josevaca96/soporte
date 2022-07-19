-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-07-2022 a las 17:11:32
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
-- Base de datos: `grupo_paz`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursoractivos` ()  BEGIN
    DECLARE listo BOOLEAN DEFAULT FALSE;
    DECLARE VarNombreActivo varchar(120);
    DECLARE IdActivo bigint;
    
    DECLARE C1 CURSOR FOR SELECT bd_contenedor.activos.id,bd_contenedor.activos.NombreActivo FROM bd_contenedor.activos;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET listo = TRUE;
    /*DECLARE C2 CURSOR FOR SELECT grupo_paz.activos.IdTAct FROM grupo_paz.activos;*/
    
    OPEN C1;
    	C1_loop: LOOP
        	FETCH C1 INTO IdActivo,VarNombreActivo;
            IF listo THEN
            	LEAVE C1_loop;
            END IF;
            IF (VarNombreActivo="Laptop")
			THEN
				UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=1 WHERE grupo_paz.activos.id=IdActivo ;
    		END IF;
            IF (VarNombreActivo="Cargador")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=2 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Teclado")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=3 WHERE grupo_paz.activos.id=IdActivo ;
                END IF;
            IF (VarNombreActivo="Mouse")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=4 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Pc-Escritorio")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=5 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Impresora")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=6 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Monitor")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=7 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Tv-Plasma")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=8 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Proyector")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=9 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Parlantes")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=10 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Scanner")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=11 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Telefono")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=12 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Auriculares")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=13 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Etiquetadora")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=14 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Usb")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=15 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Camara-Web")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=16 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Adaptador")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=17 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Bateria")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=18 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Swith")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=19 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Camara-de-Seguridad")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=20 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Modem")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=21 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Control-Remoto")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=22 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Cloud-key")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=23 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Pizarra-Digital")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=24 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Toner")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=25 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Poe")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=26 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="transformador-telefono")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=27 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Router")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=28 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Disco-Solido")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=29 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Disco-Duro")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=30 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Papel")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=31 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Soporte-Tv")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=32 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Usb-Vga")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=33 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="cargador-bateria")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=34 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Bluetooth")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=35 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Convertidor-Pop")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=36 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Ups")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=37 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
            IF (VarNombreActivo="Fuente-alimentacion")
                THEN
                    UPDATE grupo_paz.activos SET grupo_paz.activos.IdTAct=38 WHERE grupo_paz.activos.id=IdActivo ;
            END IF;
        END LOOP C1_loop;
    CLOSE C1;
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activos`
--

CREATE TABLE `activos` (
  `id` bigint(20) NOT NULL,
  `Codigo` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IdTAct` bigint(20) DEFAULT NULL,
  `Marca` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Modelo` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NroSerial` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Condicion` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Observaciones` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activos`
--

INSERT INTO `activos` (`id`, `Codigo`, `IdTAct`, `Marca`, `Modelo`, `NroSerial`, `Condicion`, `Observaciones`, `deleted_at`) VALUES
(1, 'IT-ACT00001', 1, 'HP', 'HP-15-CX0', 'CN085038BS', 'adecuado', NULL, NULL),
(2, 'IT-ACT00002', 2, 'HP', 'TPN-CA11', NULL, 'adecuado', NULL, NULL),
(3, 'IT-ACT00003', 4, 'GENIUS', 'NX-7015', NULL, 'adecuado', NULL, NULL),
(4, 'IT-ACT00004', 8, 'LG', '50PW', '10812MEN32527', 'adecuado', NULL, NULL),
(5, 'IT-ACT00005', 3, 'QR', NULL, NULL, 'adecuado', NULL, NULL),
(6, 'IT-ACT00006', 4, 'QR', '3D OPTICAL', NULL, 'adecuado', NULL, NULL),
(7, 'IT-ACT00007', 7, 'ASUS', '10HY002A0S', NULL, 'adecuado', NULL, NULL),
(8, 'IT-ACT00008', 5, 'LENOVO', 'M700', NULL, 'adecuado', NULL, NULL),
(9, 'IT-ACT00009', 5, NULL, 'PRIME Z390', NULL, 'adecuado', 'Suspesión mala', NULL),
(10, 'IT-ACT00010', 4, 'DELUX', 'H321', NULL, 'dañado', 'Falla', NULL),
(11, 'IT-ACT00011', 3, 'GENIUS', 'GK-1500', NULL, 'adecuado', NULL, NULL),
(12, 'IT-ACT00012', 7, 'SAMSUNG', 'LUU28E5', NULL, 'adecuado', NULL, NULL),
(13, 'IT-ACT00013', 5, 'LENOVO', 'MJ046X', '10FLS0YA', 'adecuado', NULL, NULL),
(14, 'IT-ACT00014', 3, 'GENIUS', 'GK-1000', NULL, 'adecuado', NULL, NULL),
(15, 'IT-ACT00015', 4, 'GENIUS', 'GM-150030', NULL, 'req_man', 'Scroll no sirve', NULL),
(16, 'IT-ACT00016', 5, 'LENOVO', '10FLS0YA00', 'MJ04APKZ', 'adecuado', NULL, NULL),
(17, 'IT-ACT00017', 4, 'GENIUS', 'GM-150014', NULL, 'adecuado', NULL, NULL),
(18, 'IT-ACT00018', 3, 'GENIUS', 'OM-06', NULL, 'adecuado', NULL, NULL),
(19, 'IT-ACT00019', 8, 'SURE', NULL, NULL, 'adecuado', 'Dpto de ventas', NULL),
(20, 'IT-ACT00020', 6, 'HP', 'CE658A', 'BRBSH5D6HW', 'adecuado', NULL, NULL),
(21, 'IT-ACT00021', 3, 'GENIUS', 'GK-070006', '509036931', 'adecuado', NULL, NULL),
(22, 'IT-ACT00022', 4, 'SURE', 'OPTICAL MOUSE', NULL, 'adecuado', NULL, NULL),
(23, 'IT-ACT00023', 3, 'GENIUS', 'GK-100015', 'XE1807624152', 'adecuado', NULL, NULL),
(24, 'IT-ACT00024', 4, 'GENIUS', 'GM-03003', '148292404319', 'adecuado', NULL, NULL),
(25, 'IT-ACT00025', 9, 'EPSON', NULL, NULL, 'adecuado', NULL, NULL),
(26, 'IT-ACT00026', 9, 'EPSON', NULL, NULL, 'adecuado', NULL, NULL),
(27, 'IT-ACT00027', 10, 'GENIUS', 'SP-U115', 'ZF2Z74511203', 'adecuado', NULL, NULL),
(28, 'IT-ACT00028', 5, 'LG', 'H61H2-MV', '00000000', 'adecuado', NULL, NULL),
(29, 'IT-ACT00029', 6, 'ZEBRA', 'ZXP51', 'Z11US00', 'adecuado', NULL, NULL),
(30, 'IT-ACT00030', 6, 'EPSON', 'L220', '509082908', 'adecuado', 'NECESITA TINTA', NULL),
(31, 'IT-ACT00031', 1, 'APPLE', 'MACBOOK PRO', 'W89361HR644', 'dañado', 'sistema operativo lento', NULL),
(32, 'IT-ACT00032', 1, 'DELL', 'V-5402', 'A2XUPQ3', 'adecuado', 'Sistema Operativo Lento', NULL),
(33, 'IT-ACT00033', 7, 'LG', 'LED 20M3S', '403NDVWSW903', 'adecuado', NULL, NULL),
(34, 'IT-ACT00034', 2, 'APPLE', 'MACBOOK PRO', NULL, 'req_man', 'Cargador Antiguo', NULL),
(35, 'IT-ACT00035', 1, 'TOSHIBA', 'SATELITE C45', '8F1086625P', 'req_man', 'No Funciona el Panel Tatil', NULL),
(36, 'IT-ACT00036', 2, 'TOSHIBA', NULL, 'G7116000AR410', 'adecuado', NULL, NULL),
(37, 'IT-ACT00037', 2, 'DELL', 'CN-OKYTRW', 'R-41012432', 'adecuado', NULL, NULL),
(38, 'IT-ACT00038', 4, 'SOFT', '3P OPTICAL', NULL, 'req_man', 'Scroll no sirve', NULL),
(39, 'IT-ACT00039', 5, 'SAMSUMG', NULL, NULL, 'adecuado', 'Sistema Operativo Lento y Puerto Frontal No Sirve', NULL),
(40, 'IT-ACT00040', 4, 'GENIUS', 'GM-150', NULL, 'adecuado', NULL, NULL),
(41, 'IT-ACT00041', 3, 'DELUX', 'OM-06', NULL, 'adecuado', NULL, NULL),
(42, 'IT-ACT00042', 5, NULL, NULL, NULL, 'req_man', 'Sistema operativo lento', NULL),
(43, 'IT-ACT00043', 7, 'VIEWSONIC', 'VA1903A', NULL, 'adecuado', NULL, NULL),
(44, 'IT-ACT00044', 3, 'SOFT', NULL, NULL, 'adecuado', NULL, NULL),
(45, 'IT-ACT00045', 4, 'Optical', NULL, NULL, 'baja', 'scroll no sirve', NULL),
(46, 'IT-ACT00046', 11, 'BROTHER', 'ADS--2400N', 'U65B7G1', 'adecuado', NULL, NULL),
(47, 'IT-ACT00047', 2, 'BROTHER', 'R4102256', NULL, 'adecuado', NULL, NULL),
(48, 'IT-ACT00048', 1, 'LENOVO', 'ZDU1S0FY00', 'PF2DZ5AH', 'adecuado', NULL, NULL),
(49, 'IT-ACT00049', 2, 'LENOVO', NULL, NULL, 'adecuado', NULL, NULL),
(50, 'IT-ACT00050', 4, 'OPTICAL', 'M363', 'M363J001804', 'adecuado', 'NRO 15', NULL),
(51, 'IT-ACT00051', 7, 'SAMSUMG', 'S19D300', 'ZZE4H4LG805761M', 'adecuado', NULL, NULL),
(52, 'IT-ACT00052', 1, 'LENOVO', 'OUE5', 'MP1CJJUE', 'adecuado', 'kfnfknsdfkjnsdkjfnsdkjfnskjdfnksjfnkjsdnfjknfkjnskjfnewjfnawenfkaenfakjlsenf\r\nasfewfaefasef\r\nasef\r\nasef\r\nasef\r\nsdf\r\nfsdgfxg\r\nDFGDF\r\nGD\r\nFG\r\nDFG\r\nDF\r\nGDF\r\nGDF\r\nGDF\r\nG\r\nDFG\r\nDFGFD\r\nGDF\r\nG\r\nsdafasefsd\r\nf', NULL),
(53, 'IT-ACT00053', 7, 'ASUS', NULL, 'K2LMTF078405', 'adecuado', NULL, NULL),
(54, 'IT-ACT00054', 2, 'LENOVO', 'PA145055LL', NULL, 'adecuado', NULL, NULL),
(55, 'IT-ACT00055', 7, 'SAMSUMG', 'LS22F350', '0ABZHCNNC00779B', 'adecuado', NULL, NULL),
(56, 'IT-ACT00056', 5, 'LENOVO', 'A0HY002AUS', 'MJ04LN0', 'adecuado', 'Dpto de legal', NULL),
(57, 'IT-ACT00057', 7, 'ASUS', NULL, NULL, 'adecuado', NULL, NULL),
(58, 'IT-ACT00058', 4, 'QR', '3D OPTICAL', NULL, 'adecuado', NULL, NULL),
(59, 'IT-ACT00059', 3, 'QR', NULL, NULL, 'req_man', 'Teclas Dañadas', NULL),
(60, 'IT-ACT00060', 1, 'HP', 'HP 250 G6', 'CND7476B3Y', 'req_man', 'Sistema operativo lento', NULL),
(61, 'IT-ACT00061', 4, 'KNUP', 'KPM6005', NULL, 'dañado', 'Cable Suelto', NULL),
(62, 'IT-ACT00062', 2, 'HP', NULL, NULL, 'adecuado', NULL, NULL),
(63, 'IT-ACT00063', 12, 'DENWA', 'DW-ZLOP', '440G26744002661', 'adecuado', NULL, NULL),
(64, 'IT-ACT00064', 1, 'DELL', 'V 143000', '59RB2D3', 'req_man', 'El equipo se calienta', NULL),
(65, 'IT-ACT00065', 1, 'HP', '15-D5XX', 'CND8118LSP', 'adecuado', 'Un Puerto Dañado', NULL),
(66, 'IT-ACT00066', 1, 'DELL', 'V 3400', 'C1XL983', 'adecuado', NULL, NULL),
(67, 'IT-ACT00067', 1, 'DELL', '5520', 'B9C0DS1', 'req_man', 'Sistema Ooperativo lento', NULL),
(68, 'IT-ACT00068', 12, 'DENWA', 'DW-21OP', 'G26744002667', 'dañado', 'Se cortan las llamadas', NULL),
(69, 'IT-ACT00069', 5, NULL, NULL, NULL, 'req_man', 'Sistema Operativo lento', NULL),
(70, 'IT-ACT00070', 1, 'DELL', 'G155510', '7QSYLF3', 'req_man', 'Sistema operativo lento', NULL),
(71, 'IT-ACT00071', 6, 'HP', 'LISEGP11', 'VRUVSFGRP', 'baja', 'Fuera de servicio', NULL),
(72, 'IT-ACT00072', 1, 'LENOVO', '30TDS00B00', 'MJ0GEGZ', 'adecuado', 'Sofware nececita Serial', NULL),
(73, 'IT-ACT00073', 2, 'LENOVO', '1A60JFK', NULL, 'adecuado', NULL, NULL),
(74, 'IT-ACT00074', 2, 'DELL', NULL, 'CN-OKX', 'adecuado', NULL, NULL),
(75, 'IT-ACT00075', 2, 'HP', 'R-4T012327', NULL, 'adecuado', NULL, NULL),
(76, 'IT-ACT00076', 2, 'DELL', 'CN-0KXTTW', NULL, 'adecuado', NULL, NULL),
(77, 'IT-ACT00077', 7, 'AOC', NULL, NULL, 'adecuado', NULL, NULL),
(78, 'IT-ACT00078', 4, 'DELUX', 'M321', NULL, 'adecuado', NULL, NULL),
(79, 'IT-ACT00079', 3, 'DELUX', 'KA180', NULL, 'adecuado', NULL, NULL),
(80, 'IT-ACT00080', 10, 'KNUP', 'KP-7030', NULL, 'adecuado', NULL, NULL),
(81, 'IT-ACT00081', 2, 'DELL', NULL, NULL, 'adecuado', NULL, NULL),
(82, 'IT-ACT00082', 12, 'DENWA', 'DW-910', '339 FR7136000333', 'dañado', 'Se cortan las  llamadas', NULL),
(83, 'IT-ACT00083', 7, 'SAMSUMG', 'S19D300', 'ZZE444LG800878P', 'adecuado', NULL, NULL),
(84, 'IT-ACT00084', 6, 'BROTHER', 'QL-700', 'E70712-E67900', 'adecuado', NULL, NULL),
(85, 'IT-ACT00085', 1, 'HP', 'HP-250-G6', 'CND-91740PD', 'adecuado', NULL, NULL),
(86, 'IT-ACT00086', 4, 'GENIUS', 'OX-110', 'X7H9036819', 'adecuado', NULL, NULL),
(87, 'IT-ACT00087', 7, 'SAMSUMG', 'ls-22f', NULL, 'adecuado', NULL, NULL),
(88, 'IT-ACT00088', 2, 'HP', 'L-25296', NULL, 'adecuado', NULL, NULL),
(89, 'IT-ACT00089', 1, 'TOSHIBA', 'C55-C', '7F312988C', 'adecuado', 'Se le cambio su bateria por una nueva', NULL),
(90, 'IT-ACT00090', 5, NULL, 'GB-BPCE3455', NULL, 'adecuado', NULL, NULL),
(91, 'IT-ACT00091', 6, 'STAR MICRONIC', 'A001', '2430116010', 'adecuado', NULL, NULL),
(92, 'IT-ACT00092', 5, 'LENOVO', 'A0HY002AUS', 'MJ04MLCG', 'adecuado', NULL, NULL),
(93, 'IT-ACT00093', 7, 'ASUS', NULL, NULL, 'adecuado', NULL, NULL),
(94, 'IT-ACT00094', 3, NULL, NULL, NULL, 'adecuado', NULL, NULL),
(95, 'IT-ACT00095', 12, 'DENWA', 'DW-ZIDP', '440G26744002518', 'adecuado', NULL, NULL),
(96, 'IT-ACT00096', 1, 'LENOVO', '81WA', 'PF33NH2T', 'adecuado', NULL, NULL),
(97, 'IT-ACT00097', 2, 'LENOVO', 'PA-145055LL', NULL, 'adecuado', NULL, NULL),
(98, 'IT-ACT00098', 1, 'DELL', 'VOSTRO-3400', '8N9H2D3', 'adecuado', NULL, NULL),
(99, 'IT-ACT00099', 4, 'LOGI', 'M187', '2113LZDISO98', 'adecuado', NULL, NULL),
(100, 'IT-ACT00100', 2, 'DELL', 'CN-DKXRRW', NULL, 'adecuado', NULL, NULL),
(101, 'IT-ACT00101', 1, 'LENOVO', '81HN', 'R9OUV29AK', 'adecuado', NULL, NULL),
(102, 'IT-ACT00102', 4, 'GENIUS', 'GM-03003', '148102103162', 'adecuado', NULL, NULL),
(103, 'IT-ACT00103', 2, 'LENOVO', 'APLX45NDC3A', NULL, 'adecuado', NULL, NULL),
(104, 'IT-ACT00104', 4, 'RLIP', 'KMD130', NULL, 'adecuado', NULL, NULL),
(105, 'IT-ACT00105', 4, 'GENIUS', 'GM-150032', 'X0L95786605533', 'adecuado', NULL, NULL),
(106, 'IT-ACT00106', 5, 'DELL', 'INSPIRON 3050', '3PYMSX1', 'adecuado', NULL, NULL),
(107, 'IT-ACT00107', 7, 'LG', '32LH5008', '607JXQ4N172', 'adecuado', NULL, NULL),
(108, 'IT-ACT00108', 3, 'GENIUS', 'GX-10011', 'XP1658980408', 'adecuado', NULL, NULL),
(109, 'IT-ACT00109', 2, 'DELL', 'LA45NM140', NULL, 'adecuado', NULL, NULL),
(110, 'IT-ACT00110', 2, 'LENOVO', NULL, '11S42T4426Z1ZF3F9AM2B5', 'adecuado', NULL, NULL),
(111, 'IT-ACT00111', 1, 'DELL', 'INSPIRON 3583', '680Q0Y2', 'req_man', 'Sistema operativo lento', NULL),
(112, 'IT-ACT00112', 1, 'DELL', 'INSPIRON 3583', '8GGB6Z2', 'adecuado', 'Dpto. de ventas', NULL),
(113, 'IT-ACT00113', 2, 'DELL', 'HA45NM140', NULL, 'adecuado', NULL, NULL),
(114, 'IT-ACT00114', 12, 'PANASONIC', 'KXT550', '8AAKJ767155', 'adecuado', NULL, NULL),
(115, 'IT-ACT00115', 8, 'SURE', NULL, '213057110', 'adecuado', NULL, NULL),
(116, 'IT-ACT00116', 12, 'PANASONIC', 'KXT5500LX', '8AAJ767156', 'adecuado', NULL, NULL),
(117, 'IT-ACT00117', 4, '3D OPTICAL', 'RTM019', NULL, 'adecuado', NULL, NULL),
(118, 'IT-ACT00118', 5, 'GIGABYTE', 'GX3-BACE-3150', NULL, 'adecuado', NULL, NULL),
(119, 'IT-ACT00119', 3, 'DELUX', 'OM-06', 'X0M-066J000510', 'adecuado', NULL, NULL),
(120, 'IT-ACT00120', 4, 'DELUX', '3D OPTICAL', NULL, 'adecuado', NULL, NULL),
(121, 'IT-ACT00121', 1, 'DELL', 'INSPIRON 3583', 'C475572', 'req_man', 'Excel demasiado lento, no prende el equipo en ciertas ocasiones.', NULL),
(122, 'IT-ACT00122', 2, 'DELL', 'LA45NM140', NULL, 'adecuado', NULL, NULL),
(123, 'IT-ACT00123', 7, 'LG', '19EN335A', '301N0PMGX906', 'adecuado', NULL, NULL),
(124, 'IT-ACT00124', 1, 'DELL', 'VOSTRO-3400', '6X9M393', 'adecuado', NULL, NULL),
(125, 'IT-ACT00125', 5, 'GIGABYTE', 'MZGLKDP', NULL, 'adecuado', 'PC-MINI', NULL),
(126, 'IT-ACT00126', 3, 'GENIUS', '6K070', NULL, 'adecuado', NULL, NULL),
(127, 'IT-ACT00127', 4, 'DELUX', 'M-360', NULL, 'adecuado', NULL, NULL),
(128, 'IT-ACT00128', 8, 'SURE', NULL, NULL, 'adecuado', 'Dto de ventas', NULL),
(129, 'IT-ACT00129', 8, 'SURE', NULL, NULL, 'adecuado', NULL, NULL),
(130, 'IT-ACT00130', 1, 'LENOVO', 'E5X0', 'PF1ET3WF', 'adecuado', NULL, NULL),
(131, 'IT-ACT00131', 3, 'LOGITECH', 'K120', NULL, 'adecuado', NULL, NULL),
(132, 'IT-ACT00132', 4, 'LOGITECH', 'HS-04', NULL, 'adecuado', NULL, NULL),
(133, 'IT-ACT00133', 7, 'LG', '25-UM', NULL, 'adecuado', NULL, NULL),
(134, 'IT-ACT00134', 5, NULL, NULL, NULL, 'adecuado', 'Sistema operativo lento, la mayoría de los puertos usb no sirven', NULL),
(135, 'IT-ACT00135', 7, 'SAMSUNG', 'S19D3', NULL, 'adecuado', NULL, NULL),
(136, 'IT-ACT00136', 6, 'CANON', 'ME-3520', 'KKDET19251', 'adecuado', NULL, NULL),
(137, 'IT-ACT00137', 5, 'SOFT', NULL, NULL, 'adecuado', NULL, NULL),
(138, 'IT-ACT00138', 7, 'SAMSUNG', '5190D300', 'ZZE4H4LGBO5333V', 'adecuado', NULL, NULL),
(139, 'IT-ACT00139', 3, 'SOFT', NULL, NULL, 'adecuado', NULL, NULL),
(140, 'IT-ACT00140', 4, 'SOFT', 'OPTICAL MOUSE', NULL, 'adecuado', NULL, NULL),
(141, 'IT-ACT00141', 5, 'DELUX', NULL, NULL, 'adecuado', 'No sirve una entrada USB', NULL),
(142, 'IT-ACT00142', 7, 'SAMSUNG', 'SYNC MASTER SA100', 'ZTN6H41D404529X', 'adecuado', NULL, NULL),
(143, 'IT-ACT00143', 3, 'SOFT', NULL, NULL, 'adecuado', NULL, NULL),
(144, 'IT-ACT00144', 4, 'GENIUS', 'GM-03022P', 'X804089025485', 'adecuado', NULL, NULL),
(145, 'IT-ACT00145', 5, 'LENOVO', '10FLS0YA00', 'MJ05GYNX', 'adecuado', NULL, NULL),
(146, 'IT-ACT00146', 13, 'LOGI', NULL, '2107ME007', 'adecuado', NULL, NULL),
(147, 'IT-ACT00147', 13, 'LOGI', NULL, NULL, 'adecuado', NULL, NULL),
(148, 'IT-ACT00148', 7, 'SAMSUNG', 'S22I350FHL', 'DABZHCNNC00772V', 'adecuado', 'Entrada HDMI dañada', NULL),
(149, 'IT-ACT00149', 3, 'GENIUS', 'GK-100015', 'XEL8076241156', 'adecuado', NULL, NULL),
(150, 'IT-ACT00150', 4, 'GENIUS', 'XUCELLX3', 'XEL807624156', 'adecuado', NULL, NULL),
(151, 'IT-ACT00151', 13, 'LOGI', NULL, NULL, 'adecuado', NULL, NULL),
(152, 'IT-ACT00152', 5, 'DELUX', NULL, NULL, 'adecuado', 'Sistema operativo lento', NULL),
(153, 'IT-ACT00153', 7, 'SAMSUNG', 'E1920NX', 'V893H9NZ588638Y', 'adecuado', NULL, NULL),
(154, 'IT-ACT00154', 3, 'DELUX', 'K3100', 'K31008B002323', 'adecuado', NULL, NULL),
(155, 'IT-ACT00155', 4, 'GENIUS', 'NET SCROLL 120', 'X4F87820703615', 'adecuado', NULL, NULL),
(156, 'IT-ACT00156', 13, 'LOGI', NULL, '2107MA00Z0', 'adecuado', NULL, NULL),
(157, 'IT-ACT00157', 2, 'LENOVO', '42T4430', '11542T4430Z7ZGWEL5W360', 'adecuado', 'pc mini', NULL),
(158, 'IT-ACT00158', 2, 'LENOVO', NULL, '11542T442671ZFBF15T423', 'adecuado', 'pc mini', NULL),
(159, 'IT-ACT00159', 5, 'LG', NULL, NULL, 'adecuado', NULL, NULL),
(160, 'IT-ACT00160', 7, 'LG', NULL, NULL, 'adecuado', NULL, NULL),
(161, 'IT-ACT00161', 3, 'DELUX', 'DM-06', 'KOM-064K004154', 'adecuado', NULL, NULL),
(162, 'IT-ACT00162', 4, 'DELUX', 'MS111L', NULL, 'adecuado', NULL, NULL),
(163, 'IT-ACT00163', 6, 'HP', 'LASER P1102', 'BRBSH5F8P9', 'adecuado', NULL, NULL),
(164, 'IT-ACT00164', 6, 'BARCODE', 'PT039-50', 'D393030782', 'adecuado', 'Impresora de manillas', NULL),
(165, 'IT-ACT00165', 14, 'BROTHER', 'QL-700', 'E70712-E6Z900699', 'adecuado', 'No se usa', NULL),
(166, 'IT-ACT00166', 14, 'BROTHER', 'QL-700', 'E70712-E67900702', 'adecuado', 'No se usa', NULL),
(167, 'IT-ACT00167', 6, 'BOCA', 'LEMUR', '225083', 'adecuado', 'Impresora de manillas', NULL),
(168, 'IT-ACT00168', 15, 'KINGSTON', 'DTX-64', NULL, 'adecuado', NULL, NULL),
(169, 'IT-ACT00169', 15, 'KINGSTON', 'DTX-64', NULL, 'adecuado', NULL, NULL),
(170, 'IT-ACT00170', 15, 'KINGSTON', 'DTX-64', NULL, 'adecuado', NULL, NULL),
(171, 'IT-ACT00171', 1, 'APPLE', 'MID2015', 'C02QJ7W768WN', 'adecuado', 'Bocina no sirve', NULL),
(172, 'IT-ACT00172', 2, 'APPLE', NULL, NULL, 'adecuado', NULL, NULL),
(173, 'IT-ACT00173', 5, NULL, NULL, NULL, 'adecuado', NULL, NULL),
(174, 'IT-ACT00174', 7, 'SURE', 'SR-LED32W', 'DSE32D715110', 'adecuado', NULL, NULL),
(175, 'IT-ACT00175', 3, 'DELUX', 'KA980', 'KA18081001292', 'adecuado', NULL, NULL),
(176, 'IT-ACT00176', 4, 'GENIUS', 'GM-03003', '148292404298', 'adecuado', NULL, NULL),
(177, 'IT-ACT00177', 13, 'LOGI', NULL, '2107HE0020', 'adecuado', NULL, NULL),
(178, 'IT-ACT00178', 5, 'LENOVO', '10FLS0YA00', NULL, 'adecuado', NULL, NULL),
(179, 'IT-ACT00179', 3, 'GENIUS', 'GK-100015', 'XE1807624153', 'adecuado', NULL, NULL),
(180, 'IT-ACT00180', 7, 'SAMSUNG', 'S22F35', '0ABZHCNNC00', 'adecuado', NULL, NULL),
(181, 'IT-ACT00181', 4, 'GENIUS', 'GM-150050', 'KE1807624153', 'adecuado', NULL, NULL),
(182, 'IT-ACT00182', 5, 'GIGABYTE', 'GB-BASE3150', NULL, 'adecuado', NULL, NULL),
(183, 'IT-ACT00183', 3, 'SURE', 'KA-180', 'KAM808H007425', 'adecuado', NULL, NULL),
(184, 'IT-ACT00184', 2, 'UNIVERSAL', 'KFD-90WNB', NULL, 'adecuado', '(PC MINI) \r\nSe mueve', NULL),
(185, 'IT-ACT00185', 5, NULL, NULL, NULL, 'adecuado', 'Cambio de disco', NULL),
(186, 'IT-ACT00186', 4, 'GENIUS', 'DX-120', 'XE17087047448', 'adecuado', NULL, NULL),
(187, 'IT-ACT00187', 3, 'CPS', 'CPS-X559', NULL, 'adecuado', NULL, NULL),
(188, 'IT-ACT00188', 7, 'SAMSUNG', 'E1920NX', 'V893H9NZ58875AR', 'adecuado', NULL, NULL),
(189, 'IT-ACT00189', 10, 'SOFT', NULL, NULL, 'adecuado', NULL, NULL),
(190, 'IT-ACT00190', 14, 'BROTHER', 'QL-700', 'E70712-E6Z900713', 'adecuado', 'No se usa', NULL),
(191, 'IT-ACT00191', 6, 'BARCODE', 'DT039-50', 'D3918270636', 'baja', 'No funciona', NULL),
(192, 'IT-ACT00192', 6, 'BOCA', 'LEMUR', '225086', 'adecuado', 'Impresora térmica', NULL),
(193, 'IT-ACT00193', 6, 'BOCA', 'LEMUR', '225085', 'adecuado', 'Impresora térmica', NULL),
(194, 'IT-ACT00194', 1, 'HP', 'HP MINI5103', 'CNV12027JH', 'adecuado', 'Nro 15', NULL),
(195, 'IT-ACT00195', 1, 'HP', 'HP 3115M', '5CD23934RY', 'adecuado', 'Nro 3\r\nSistema operativo lento', NULL),
(196, 'IT-ACT00196', 1, 'HP', 'Hp 3115M', '5CD23602V8', 'adecuado', 'Nro 4\r\nSistema operativo lento', NULL),
(197, 'IT-ACT00197', 1, 'DELUX', NULL, NULL, 'adecuado', 'Nro 22\r\nEnciende solo con cargador\r\nSin Bateria', NULL),
(198, 'IT-ACT00198', 1, 'SAMSUNG', 'N100SP', 'HQV491AC800111', 'adecuado', 'Nro 11\r\nSistema operativo lento\r\nEnciende solo con cargador', NULL),
(199, 'IT-ACT00199', 1, 'HP', 'HP 3115M', 'SCD23434RW', 'adecuado', 'Nro 2\r\nSoporte roto\r\nEnciende con cargador', NULL),
(200, 'IT-ACT00200', 1, 'SAMSUNG', 'N100SP', 'HQV491AC900324', 'adecuado', 'Nro 8 Sistema Operativo lento-Pantalla dañada', NULL),
(201, 'IT-ACT00201', 1, 'DELUX', NULL, NULL, 'adecuado', 'Nro 9 -Pantalla dañada -Enciende con cargador', NULL),
(202, 'IT-ACT00202', 1, 'MSI', 'MSN051', NULL, 'adecuado', 'Nro 12 .Sistema operativo lento ,Sin bateria', NULL),
(203, 'IT-ACT00203', 1, 'MSI', 'MS-N014', 'FFFFFFFF', 'adecuado', 'Nro 13 .Enciende con cargador', NULL),
(204, 'IT-ACT00204', 1, 'HP', 'HP MINI 5103', 'CNV1200WVQ', 'adecuado', 'Nro 16 .Sistema operativo lento .Enciende con cargador', NULL),
(205, 'IT-ACT00205', 1, 'DELUX', NULL, NULL, 'adecuado', 'Nro 24 .Sistema operativo lento', NULL),
(206, 'IT-ACT00206', 1, 'HP', 'HP MINI 5103', 'CNV1200YJ0', 'adecuado', 'Nro 17 .Enciende con cargador', NULL),
(207, 'IT-ACT00207', 1, 'DELUX', 'MONTVINA', NULL, 'adecuado', 'Nro 20 .Enciende con cargador', NULL),
(208, 'IT-ACT00208', 1, 'SAMSUNG', 'N100SP', 'HQU491JC600465', 'adecuado', 'Nro 6 .Pantalla rota', NULL),
(209, 'IT-ACT00209', 1, 'HP', 'HP MINI 5103', 'CVU1191BSD', 'adecuado', 'Nro 18 .Enciende con cargador', NULL),
(210, 'IT-ACT00210', 1, 'SAMSUNG', 'N100SP', 'HQU491AC900250', 'adecuado', 'Nro 10', NULL),
(211, 'IT-ACT00211', 1, 'SAMSUNG', 'N100SP', 'HQV491KL300579', 'adecuado', 'Nro 7 .Sistema operativo lento', NULL),
(212, 'IT-ACT00212', 1, 'ACER', NULL, '95203872125', 'dañado', 'Nro15 .No enciende', NULL),
(213, 'IT-ACT00213', 1, 'DELUX', 'MONTVINA', NULL, 'adecuado', 'Nro 26 .Sistema operativo lento', NULL),
(214, 'IT-ACT00214', 1, 'DELUX', 'MONTVINA', NULL, 'adecuado', 'Nro 19 .No tiene bateria', NULL),
(215, 'IT-ACT00215', 3, 'SURE', 'SURE-K851GKO7000', '508636912', 'baja', NULL, NULL),
(216, 'IT-ACT00216', 1, 'DELUX', 'MONTVINA', NULL, 'adecuado', 'Nro 25 .Enciende con cargadror', NULL),
(217, 'IT-ACT00217', 1, 'DELUX', 'MONTVINA', NULL, 'adecuado', 'Nro 21 .Sistema operativo lento .No sirve un puerto USB', NULL),
(218, 'IT-ACT00218', 3, 'GENIUS', 'GK070008', 'ZCE242700031', 'baja', NULL, NULL),
(219, 'IT-ACT00219', 3, 'DELUX', 'K6000', 'K60001506000734', 'baja', NULL, NULL),
(220, 'IT-ACT00220', 1, 'DELUX', NULL, NULL, 'req_man', 'Nro 23 .Sistema operativo lento .No tiene batería', NULL),
(221, 'IT-ACT00221', 3, 'DELUX', 'K6000', 'K60001506000314', 'baja', NULL, NULL),
(222, 'IT-ACT00222', 1, 'HP', 'HP MINI 5103', 'CNU1200Y97', 'dañado', 'Nro 14 .No funciona la pantalla', NULL),
(223, 'IT-ACT00223', 3, 'DELUX', 'K6000', 'K60001506000309', 'baja', NULL, NULL),
(224, 'IT-ACT00224', 11, 'MOTOROLA', NULL, NULL, 'adecuado', 'Nro 15', NULL),
(225, 'IT-ACT00225', 3, 'DELUX', 'K6000', 'K60001506000665', 'baja', NULL, NULL),
(226, 'IT-ACT00226', 3, 'DELUX', '0M-06', 'KOM064L004735', 'baja', NULL, NULL),
(227, 'IT-ACT00227', 3, 'AQUA', 'LK0685', 'INC80763', 'baja', NULL, NULL),
(228, 'IT-ACT00228', 2, 'Hp', NULL, 'WBGTADBLB2WBSJ', 'adecuado', 'Nro. 6', NULL),
(229, 'IT-ACT00229', 3, 'HP', 'KB-0316', 'BAUDR0JVB', 'adecuado', NULL, NULL),
(230, 'IT-ACT00230', 11, 'MOTOROLA', NULL, NULL, 'baja', 'No sirve', NULL),
(231, 'IT-ACT00231', 3, 'LOGITECH', 'Y-R0009', '1447SY015468', 'baja', NULL, NULL),
(232, 'IT-ACT00232', 11, 'MOTOROLA', NULL, NULL, 'adecuado', 'Nro 12', NULL),
(233, 'IT-ACT00233', 2, NULL, 'CPA09-002A', NULL, 'adecuado', 'Nro. 9', NULL),
(234, 'IT-ACT00234', 3, 'LOGITECH', 'Y-R0042', '1432CE07BBD8', 'baja', NULL, NULL),
(235, 'IT-ACT00235', 8, 'SURE', 'SR-LED32W', 'OSE3218-156', 'baja', NULL, NULL),
(236, 'IT-ACT00236', 11, 'MOTOROLA', 'DS9208', '14008000502059', 'req_man', 'Nro 5 .Cable dañado', NULL),
(237, 'IT-ACT00237', 2, NULL, 'ADP-40PH', NULL, 'adecuado', 'Nro. 25', NULL),
(238, 'IT-ACT00238', 11, 'MOTOROLA', NULL, NULL, 'adecuado', 'Nro 11 .Cable dañado', NULL),
(239, 'IT-ACT00239', 8, 'SURE', 'SR-LED32W', 'OSE32D7-987', 'baja', NULL, NULL),
(240, 'IT-ACT00240', 11, 'MOTOROLA', NULL, NULL, 'baja', 'Nro 13 .No funciona', NULL),
(241, 'IT-ACT00241', 2, 'HP', 'PPP009C', 'WCNXBOA3L5KM23', 'adecuado', 'Nro. 16', NULL),
(242, 'IT-ACT00242', 11, 'MOTOROLA', NULL, NULL, 'req_man', 'Nro 10 .Cable dañado', NULL),
(243, 'IT-ACT00243', 11, 'MOTOROLA', NULL, NULL, 'adecuado', NULL, NULL),
(244, 'IT-ACT00244', 11, 'CANNON', 'LIDE110', '8C3-5241-03', 'baja', 'No sirve', NULL),
(245, 'IT-ACT00245', 11, 'MOTOROLA', NULL, NULL, 'adecuado', 'Nro 2', NULL),
(246, 'IT-ACT00246', 9, 'INFOCUS', 'X1', 'AHHP33800127', 'baja', NULL, NULL),
(247, 'IT-ACT00247', 11, 'MOTOROLA', NULL, NULL, 'adecuado', NULL, NULL),
(248, 'IT-ACT00248', 11, 'MOTOROLA', NULL, NULL, 'baja', 'No sirve', NULL),
(249, 'IT-ACT00249', 11, 'MOTOROLA', NULL, NULL, 'baja', 'No sirve', NULL),
(250, 'IT-ACT00250', 2, NULL, 'CPA09-002A', NULL, 'adecuado', 'Nro. 8', NULL),
(251, 'IT-ACT00251', 11, 'MOTOROLA', NULL, NULL, 'baja', 'No sirve', NULL),
(252, 'IT-ACT00252', 11, 'MOTOROLA', NULL, NULL, 'baja', 'No sirve', NULL),
(253, 'IT-ACT00253', 7, 'SANSUMG', 'S19DE00HY', 'ZZE4HYGD09011J', 'baja', NULL, NULL),
(254, 'IT-ACT00254', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(255, 'IT-ACT00255', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(256, 'IT-ACT00256', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(257, 'IT-ACT00257', 7, 'ACER', 'V206HQLL', 'MMLXKAA4210', 'adecuado', NULL, NULL),
(258, 'IT-ACT00258', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(259, 'IT-ACT00259', 11, 'MOTOROLA', NULL, NULL, 'adecuado', NULL, NULL),
(260, 'IT-ACT00260', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(261, 'IT-ACT00261', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(262, 'IT-ACT00262', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(263, 'IT-ACT00263', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(264, 'IT-ACT00264', 2, 'HP', 'PPP009A', 'CNBGTA0BLB2WGPP', 'adecuado', 'Nro. 18', NULL),
(265, 'IT-ACT00265', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(266, 'IT-ACT00266', 1, 'HP', 'HP100 NOTEBOOK PC', '5C634706BR', 'adecuado', 'Sistema operativo lento, Pantalla dañada y no funciona sin corriente', NULL),
(267, 'IT-ACT00267', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(268, 'IT-ACT00268', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(269, 'IT-ACT00269', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(270, 'IT-ACT00270', 1, NULL, 'ACE', 'ZR1', 'baja', NULL, NULL),
(271, 'IT-ACT00271', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(272, 'IT-ACT00272', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(273, 'IT-ACT00273', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(274, 'IT-ACT00274', 11, 'YOUJIE 2D', NULL, NULL, 'adecuado', NULL, NULL),
(275, 'IT-ACT00275', 2, NULL, NULL, 'ADP400H', 'adecuado', 'Nro. 26 .Sin serial', NULL),
(276, 'IT-ACT00276', 1, 'HP', 'HP 3115M', '5CD232134XX', 'dañado', 'Nro 29 .No sirve la pantalla', NULL),
(277, 'IT-ACT00277', 1, 'MSI', NULL, 'VION-075A8K0903000048', 'baja', 'No enciende', NULL),
(278, 'IT-ACT00278', 1, 'HP', 'HP 3115M', '3961919', 'dañado', 'Pantalla rota .No tiene batería', NULL),
(279, 'IT-ACT00279', 7, 'LG', 'W1934ST', '905TPWQ0D009', 'baja', NULL, NULL),
(280, 'IT-ACT00280', 14, 'BROTHER', 'QL-700', 'E70712-EE7900705', 'adecuado', NULL, NULL),
(281, 'IT-ACT00281', 2, NULL, 'ADP90H', '35TW06A0297', 'adecuado', 'Nro. 25', NULL),
(282, 'IT-ACT00282', 7, 'SURE', 'SR-LED19WM', 'OSE1906116', 'req_man', 'Sin prueba de estado por falta de cargador', NULL),
(283, 'IT-ACT00283', 2, NULL, 'APP-40PH', '35TW13302G8', 'adecuado', 'Nro. 24', NULL),
(284, 'IT-ACT00284', 2, NULL, NULL, NULL, 'adecuado', 'Nro. 21', NULL),
(285, 'IT-ACT00285', 1, 'DELL', 'INSPIRON', 'F5S0DS1', 'baja', 'No enciende', NULL),
(286, 'IT-ACT00286', 2, 'HP', NULL, 'F129011030003321', 'adecuado', 'Nro. 2', NULL),
(287, 'IT-ACT00287', 14, 'BROTHER', 'QL-700', 'E70712-F5Z651900', 'adecuado', NULL, NULL),
(288, 'IT-ACT00288', 2, NULL, NULL, '35TW06N02HT', 'adecuado', 'Nro. 19', NULL),
(289, 'IT-ACT00289', 1, 'TOSHIBA', 'C55-B5116KM', '3F113912P', 'baja', NULL, NULL),
(290, 'IT-ACT00290', 11, 'MOTOROLA', 'D54808', '11105005022', 'adecuado', NULL, NULL),
(291, 'IT-ACT00291', 5, 'SURE', NULL, NULL, 'baja', 'No enciende', NULL),
(292, 'IT-ACT00292', 2, NULL, 'ADP-40PH', NULL, 'adecuado', 'Nro. 20', NULL),
(293, 'IT-ACT00293', 1, 'SAMSUNG', 'N100SP', NULL, 'dañado', 'No enciende la pantalla', NULL),
(294, 'IT-ACT00294', 5, 'SURE', NULL, NULL, 'baja', NULL, NULL),
(295, 'IT-ACT00295', 2, NULL, NULL, '09003006703021062603', 'adecuado', 'Nro. 12', NULL),
(296, 'IT-ACT00296', 6, 'BOCA', 'LEMUR', '403935', 'req_man', 'Impresora de ticket', NULL),
(297, 'IT-ACT00297', 2, 'TARGUS', NULL, 'A1037A001399', 'adecuado', NULL, NULL),
(298, 'IT-ACT00298', 6, 'BOCA', 'LEMUR', '403937', 'req_man', 'Impresora de ticket', NULL),
(299, 'IT-ACT00299', 1, 'SAMSUNG', 'N100SP', NULL, 'dañado', 'No c¡enciende la pantalla', NULL),
(300, 'IT-ACT00300', 1, 'HP', NULL, 'F12901103003304', 'adecuado', 'Nro. 4', NULL),
(301, 'IT-ACT00301', 6, 'BOCA', 'LEMUR', '403936', 'req_man', 'Impresora de ticket', NULL),
(302, 'IT-ACT00302', 1, 'DELUX', NULL, NULL, 'baja', 'Piezas faltantes', NULL),
(303, 'IT-ACT00303', 1, 'DELUX', NULL, NULL, 'baja', 'Piezas faltantes', NULL),
(304, 'IT-ACT00304', 2, 'HP', 'PPP09LE', 'WLNVA003L64DFD', 'adecuado', 'Nro. 15', NULL),
(305, 'IT-ACT00305', 1, 'MSI', 'MS-160', NULL, 'dañado', 'No sirve la pantalla', NULL),
(306, 'IT-ACT00306', 6, 'BOCA', NULL, NULL, 'req_man', 'Impresora de ticket', NULL),
(307, 'IT-ACT00307', 1, 'ACER', NULL, '9192610416', 'baja', 'No sirve', NULL),
(308, 'IT-ACT00308', 6, 'BOCA', NULL, NULL, 'req_man', 'Impresora de ticket', NULL),
(309, 'IT-ACT00309', 2, 'TOSHIBA', 'PA51770', 'G71C000GX110', 'adecuado', 'Nro. 22', NULL),
(310, 'IT-ACT00310', 1, 'DELUX', NULL, NULL, 'baja', 'No sirve', NULL),
(311, 'IT-ACT00311', 6, 'BOCA', NULL, NULL, 'req_man', 'Impresora de ticket', NULL),
(312, 'IT-ACT00312', 6, 'BOCA', NULL, NULL, 'req_man', 'Impresora de ticket', NULL),
(313, 'IT-ACT00313', 1, 'MSI', 'U160', NULL, 'adecuado', 'No sirve', NULL),
(314, 'IT-ACT00314', 6, 'BOCA', NULL, NULL, 'req_man', 'Impresora de ticket', NULL),
(315, 'IT-ACT00315', 2, NULL, 'CPA09002A', NULL, 'adecuado', 'Nro. 7', NULL),
(316, 'IT-ACT00316', 6, 'BOCA', NULL, NULL, 'req_man', 'Impresora de ticket', NULL),
(317, 'IT-ACT00317', 1, 'DELUX', 'DLN-XC11', NULL, 'baja', 'No enciende', NULL),
(318, 'IT-ACT00318', 6, 'BOCA', NULL, NULL, 'req_man', 'Impresora de ticket', NULL),
(319, 'IT-ACT00319', 6, 'BOCA', NULL, NULL, 'req_man', 'Impresora de ticket', NULL),
(320, 'IT-ACT00320', 1, 'DELUX', NULL, 'M116BKDEÑ1311030900200', 'baja', 'No enciende', NULL),
(321, 'IT-ACT00321', 2, 'HP', 'PPPD09A', 'WBG1ADBLBB3A7AX', 'adecuado', 'Nro. 3', NULL),
(322, 'IT-ACT00322', 1, 'TOSHIBA', 'NB505', '6B505335K', 'req_man', 'No tiene bateria', NULL),
(323, 'IT-ACT00323', 1, 'DELUX', 'DLN-XC12', '11083900200061', 'baja', 'No sirve', NULL),
(324, 'IT-ACT00324', 2, 'SANSUMG', 'A1514-DHN', 'CN07BN4400590BDT40GAR0397', 'baja', 'No sirve y  no tiene cable de corriente', NULL),
(325, 'IT-ACT00325', 2, 'SAMSUNG', 'AP04214UV', 'QA5Q02425', 'adecuado', 'Nro. 8', NULL),
(326, 'IT-ACT00326', 1, 'ACER', NULL, 'LU5780400292309', 'req_man', 'No tiene batería', NULL),
(327, 'IT-ACT00327', 1, 'SAMSUNG', 'N100SP', 'HQU491JC600165A', 'baja', 'No sirve', NULL),
(328, 'IT-ACT00328', 1, 'MSI', 'MS-N051', NULL, 'baja', 'No enciende', NULL),
(329, 'IT-ACT00329', 11, 'MOTOROLA', 'D59208', '140800050209', 'baja', 'No tiene cable \r\nNo enciende', NULL),
(330, 'IT-ACT00330', 11, 'MOTOROLA', '05000487', NULL, 'baja', 'No enciende', NULL),
(331, 'IT-ACT00331', 2, 'CAFINI', 'CN-C0091', NULL, 'baja', '#8 Falta testear y no tiene cable', NULL),
(332, 'IT-ACT00332', 2, 'DELTA', NULL, '35TW1330267', 'adecuado', 'Nro. 23', NULL),
(333, 'IT-ACT00333', 11, 'MOTOROLA', 'D59208', '140280105008', 'baja', 'No enciende', NULL),
(334, 'IT-ACT00334', 2, 'KNUP', 'KP-525', NULL, 'baja', '#19 Falta de  testear y no tiene cable', NULL),
(335, 'IT-ACT00335', 2, 'HP', 'PPP009H', 'F12921205007888', 'baja', 'Nro. 1', NULL),
(336, 'IT-ACT00336', 11, 'YOUJIE 2D', 'YJ4600', '1867584064', 'baja', 'No sirve', NULL),
(337, 'IT-ACT00337', 2, NULL, 'CPAD9002A', NULL, 'baja', 'Nro. 11', NULL),
(338, 'IT-ACT00338', 2, 'KNUP', 'KP-525', NULL, 'baja', 'Falta testear y  no tiene cable', NULL),
(339, 'IT-ACT00339', 2, NULL, 'PA165002', 'PK100009000', 'baja', 'Nro. 13', NULL),
(340, 'IT-ACT00340', 3, 'GENIUS', 'SMARTKB-200', 'X0L95786605525', 'adecuado', 'Falta una tecla', NULL),
(341, 'IT-ACT00341', 2, 'DELTA', 'ADP-40PH', '35TW06A2A9', 'baja', NULL, NULL),
(342, 'IT-ACT00342', 11, 'GENIUS', NULL, '1352721012B', 'adecuado', 'Escanner de targeta', NULL),
(343, 'IT-ACT00343', 11, 'GENIUS', NULL, NULL, 'adecuado', 'Escanner de targeta, no se leen los datos', NULL),
(344, 'IT-ACT00344', 11, 'GENIUS', NULL, '13527390067', 'adecuado', 'Escanner de targeta, no se leen los datos', NULL),
(345, 'IT-ACT00345', 11, 'GENIUS', NULL, NULL, 'adecuado', '#11 Escanner de targeta, no se leen los datos', NULL),
(346, 'IT-ACT00346', 11, 'GENIUS', NULL, NULL, 'adecuado', '#12 Escanner de targeta, no se leen los datos', NULL),
(347, 'IT-ACT00347', 2, NULL, 'KPA040F', '111006014011474', 'baja', 'Nro. 21', NULL),
(348, 'IT-ACT00348', 11, 'GENIUS', NULL, '13527390062', 'adecuado', 'Escanner de targeta, no se leen los datos', NULL),
(349, 'IT-ACT00349', 4, 'OPTICAL MOUESE', NULL, '100907876', 'baja', 'no sirve', NULL),
(350, 'IT-ACT00350', 2, NULL, 'PA140014', 'PA2N4DW', 'adecuado', 'Nro. 22', NULL),
(351, 'IT-ACT00351', 11, 'GENIUS', NULL, NULL, 'adecuado', '#8 escanner de ticket no se leen los datos', NULL),
(352, 'IT-ACT00352', 2, 'KNUP', 'KP525', NULL, 'baja', 'Nro. 18', NULL),
(353, 'IT-ACT00353', 11, 'GENIUS', NULL, NULL, 'adecuado', '#14 escanner de ticket Y no se leen los datos', NULL),
(354, 'IT-ACT00354', 11, 'GENIUS', NULL, NULL, 'adecuado', '#1 escanner de ticket y no se leen los datos', NULL),
(355, 'IT-ACT00355', 2, NULL, NULL, '090030067D3021D6P603', 'baja', NULL, NULL),
(356, 'IT-ACT00356', 11, 'MICROSOFT WINDOWS', NULL, NULL, 'adecuado', '#5 escanner de ticket y no se leen los datos', NULL),
(357, 'IT-ACT00357', 2, NULL, 'CSX0081204', NULL, 'baja', NULL, NULL),
(358, 'IT-ACT00358', 11, 'MICROSOFT WINDOWS', NULL, NULL, 'adecuado', '#13 escanner de ticket y no se leen los datos', NULL),
(359, 'IT-ACT00359', 11, 'MICROSOFT WINDOWS', NULL, NULL, 'adecuado', '#9 escanner de ticket y no se leen los datos', NULL),
(360, 'IT-ACT00360', 2, NULL, 'LPS12V200MA', NULL, 'baja', NULL, NULL),
(361, 'IT-ACT00361', 11, NULL, NULL, NULL, 'adecuado', '#10 escanner de ticket y no se leen los datos', NULL),
(362, 'IT-ACT00362', 2, 'ASUS', 'ADP65DB', 'LN261936', 'baja', NULL, NULL),
(363, 'IT-ACT00363', 11, 'MICROSOFT WINDOWS', NULL, '13527390063', 'adecuado', 'escanner de ticket y no se leen los datos', NULL),
(364, 'IT-ACT00364', 2, NULL, 'ADP0933', 'AH19474B', 'baja', 'Nro. 20', NULL),
(365, 'IT-ACT00365', 11, 'MICROSOFT WINDOWS', NULL, '13527390029', 'adecuado', 'escanner de ticket y no tiene cable usb', NULL),
(366, 'IT-ACT00366', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(367, 'IT-ACT00367', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(368, 'IT-ACT00368', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(369, 'IT-ACT00369', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(370, 'IT-ACT00370', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(371, 'IT-ACT00371', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(372, 'IT-ACT00372', 2, 'VOLT', 'KFD90WNB', NULL, 'adecuado', 'Solo funciona cabezal', NULL),
(373, 'IT-ACT00373', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(374, 'IT-ACT00374', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(375, 'IT-ACT00375', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(376, 'IT-ACT00376', 2, NULL, 'CPA09002A', NULL, 'baja', 'NO SIRVE', NULL),
(377, 'IT-ACT00377', 16, 'RAMBO', NULL, NULL, 'baja', NULL, NULL),
(378, 'IT-ACT00378', 16, 'RAMBO', NULL, NULL, 'adecuado', NULL, NULL),
(379, 'IT-ACT00379', 2, NULL, 'CPA09002A', NULL, 'baja', 'NO SIRVE', NULL),
(380, 'IT-ACT00380', 1, 'DELL', '3583', 'GN-006Z2', 'adecuado', NULL, NULL),
(381, 'IT-ACT00381', 7, 'SURE', 'SR-LED19WM', 'OSE1906130901128', 'adecuado', NULL, NULL),
(382, 'IT-ACT00382', 3, 'LOGITEC', 'K220', '1529SC10P60UV8', 'adecuado', NULL, NULL),
(383, 'IT-ACT00383', 4, 'LOGITEC', 'H150', NULL, 'adecuado', NULL, NULL),
(384, 'IT-ACT00384', 1, 'SAMSUNG', NULL, 'SE9W91UD500949', 'adecuado', 'Sistema operativo lento', NULL),
(385, 'IT-ACT00385', 2, 'SAMSUNG', 'ADP-60ZHA', 'LA1421080401A007219', 'adecuado', NULL, NULL),
(386, 'IT-ACT00386', 2, 'DELL', NULL, NULL, 'adecuado', NULL, NULL),
(387, 'IT-ACT00387', 7, 'SAMSUNG', 'S22F30FHL', '0ABZHCNNC00448F', 'adecuado', NULL, NULL),
(388, 'IT-ACT00388', 4, 'GENIUS', 'GM-150030', 'XEL807707220', 'adecuado', NULL, NULL),
(389, 'IT-ACT00389', 3, 'GENIUS', 'SMART KB200', 'X0L95786605530', 'adecuado', NULL, NULL),
(390, 'IT-ACT00390', 5, 'LENOVO', '11AD', 'MJ0DAKHF', 'adecuado', NULL, NULL),
(391, 'IT-ACT00391', 5, 'GIGABYTE', 'GB-BACE-3150', 'SN1606632021', 'adecuado', NULL, NULL),
(392, 'IT-ACT00392', 3, 'GENIUS', 'SMART KB200', 'X0L95786605522', 'adecuado', NULL, NULL),
(393, 'IT-ACT00393', 4, 'GENIUS', 'GM-150032', 'XOL95786605522', 'adecuado', NULL, NULL),
(394, 'IT-ACT00394', 7, 'SAMSUNG', 'S22F350FHL', '0ABZHCNNC00750W', 'adecuado', NULL, NULL),
(395, 'IT-ACT00395', 2, 'LENOVO', 'PA-1650-72', '8SSL0J20149L2CZ04R1YM', 'adecuado', NULL, NULL),
(396, 'IT-ACT00396', 17, 'LENOVO', 'RT02166CG3', '855C10R59254', 'adecuado', NULL, NULL),
(397, 'IT-ACT00397', 5, 'GIGABYTE', 'GB-BACE-3150', '5N1606631618', 'adecuado', NULL, NULL),
(398, 'IT-ACT00398', 7, 'SAMSUNG', 'S22T35DFHL', '0ABZNCNNCNN422F', 'adecuado', NULL, NULL),
(399, 'IT-ACT00399', 3, 'GENIUS', 'GK070006', 'YBZAC1U07250', 'adecuado', NULL, NULL),
(400, 'IT-ACT00400', 4, 'GENIUS', 'GM-150032', 'XOL95786605530', 'adecuado', NULL, NULL),
(401, 'IT-ACT00401', 17, 'SAMSUNG', 'A2514RPN', 'SK28N9PO180', 'adecuado', NULL, NULL),
(402, 'IT-ACT00402', 5, 'LENOVO', '11AD', 'MJ0DAKH2', 'adecuado', 'Tiene Windows 11', NULL),
(403, 'IT-ACT00403', 17, 'LENOVO', 'RT02166C', '855C10959Z4DLA022A9', 'adecuado', NULL, NULL),
(404, 'IT-ACT00404', 7, 'SAMSUNG', 'S22F350FHL', '0ABZHCNNC00452L', 'adecuado', NULL, NULL),
(405, 'IT-ACT00405', 3, 'GENIUS', 'SMART KB200', 'XOL95786605523', 'adecuado', NULL, NULL),
(406, 'IT-ACT00406', 5, 'GIGABYTE', 'MZGLKDP-00', 'IJ401801540', 'adecuado', NULL, NULL),
(407, 'IT-ACT00407', 3, 'GENIUS', 'SMART KB200', 'X0L95786605526', 'adecuado', NULL, NULL),
(408, 'IT-ACT00408', 12, 'DENWA', 'DW-210P', 'G26744002520', 'adecuado', NULL, NULL),
(409, 'IT-ACT00409', 12, 'DENWA', 'SW-210P', 'G26744002663', 'adecuado', NULL, NULL),
(410, 'IT-ACT00410', 8, 'SURE', 'SR-LED-3244', 'SUR32A12G1804040437', 'adecuado', NULL, NULL),
(411, 'IT-ACT00411', 5, 'LENOVO', '11AD', 'MJ0DAJSH', 'adecuado', NULL, NULL),
(412, 'IT-ACT00412', 17, 'LENOVO', 'RTD2166CG3', '855C10R59254DLA022E5', 'adecuado', NULL, NULL),
(413, 'IT-ACT00413', 2, 'LENOVO', 'DA-1650-72', '85SA10J20149L2Z70HR235D', 'adecuado', NULL, NULL),
(414, 'IT-ACT00414', 3, 'GENIUS', 'SMART KB200', 'X0L95786605529', 'adecuado', NULL, NULL),
(415, 'IT-ACT00415', 7, 'SAMSUNG', 'S22F35DFHL', '0ABZHCNNC00449P', 'adecuado', NULL, NULL),
(416, 'IT-ACT00416', 17, 'SAMSUNG', 'A2514RPN', 'RN4400939A', 'adecuado', NULL, NULL),
(417, 'IT-ACT00417', 5, 'GIGABYTE', 'GB-BACE-3150', '1548631887', 'adecuado', NULL, NULL),
(418, 'IT-ACT00418', 4, 'GENIUS', 'SM150032', 'X0L95786605526', 'adecuado', NULL, NULL),
(419, 'IT-ACT00419', 3, 'GENIUS', 'KB200', 'X0L9578660531', 'adecuado', NULL, NULL),
(420, 'IT-ACT00420', 2, 'APD', 'CW-01F3', 'Y16020075784', 'adecuado', NULL, NULL),
(421, 'IT-ACT00421', 2, 'SAMSUNG', 'A2514', 'SK28N9O0222', 'adecuado', NULL, NULL),
(422, 'IT-ACT00422', 2, 'LENOVO', 'PA165072', '855A10J20149L2CZ04R1YJJ', 'adecuado', NULL, NULL),
(423, 'IT-ACT00423', 1, 'LENOVO', '80EC', 'PF0JCOQH', 'adecuado', 'Sistema operativo lento\r\nNo da su batería', NULL),
(424, 'IT-ACT00424', 4, 'GENIUS', 'GM-150032', 'X0L95786605529', 'adecuado', NULL, NULL),
(425, 'IT-ACT00425', 2, 'AC-ADAPTER', 'AF09', NULL, 'adecuado', NULL, NULL),
(426, 'IT-ACT00426', 5, 'LENOVO', '11AD50E600', NULL, 'adecuado', NULL, NULL),
(427, 'IT-ACT00427', 3, 'SURE', 'K589', NULL, 'adecuado', NULL, NULL),
(428, 'IT-ACT00428', 4, 'GENIUS', '150032', 'XL095786605531', 'adecuado', NULL, NULL),
(429, 'IT-ACT00429', 2, 'LENOVO', 'PA-1650-72', '855A10J20149L2CZ04R1YNT', 'adecuado', NULL, NULL),
(430, 'IT-ACT00430', 8, 'SURE', 'ISDBT-HD32W', 'SR32J01G20030316', 'adecuado', NULL, NULL),
(431, 'IT-ACT00431', 2, 'LENOVO', 'PA-1650-72', '855A10J20149L2CZ04R235D', 'adecuado', NULL, NULL),
(432, 'IT-ACT00432', 8, 'SURE', 'ISDBT-HD32W', 'SR32J01G20030332', 'adecuado', NULL, NULL),
(433, 'IT-ACT00433', 1, 'SAMSUNG', 'NP470R4E', 'JE9W91UD700014Z', 'req_man', 'FALTA REVISAR', NULL),
(434, 'IT-ACT00434', 1, 'SONY', NULL, NULL, 'adecuado', NULL, NULL),
(435, 'IT-ACT00435', 1, 'SONY', 'PCG-61317L', '275278373000525', 'req_man', 'FALTA REVISAR', NULL),
(436, 'IT-ACT00436', 12, 'DENWA', 'DW-210P', '440G26744002665', 'adecuado', NULL, NULL),
(437, 'IT-ACT00437', 2, 'HP', 'PA-165032H3', 'PPPD19L-S', 'adecuado', NULL, NULL),
(438, 'IT-ACT00438', 2, 'SONY', 'VGP-AC19V48', '1489078110646500', 'adecuado', NULL, NULL),
(439, 'IT-ACT00439', 2, NULL, 'ADP-12V2A', NULL, 'adecuado', NULL, NULL),
(440, 'IT-ACT00440', 2, 'TOSHIBA', 'PA5178U', 'G71C000H111', 'adecuado', NULL, NULL),
(441, 'IT-ACT00441', 2, 'HP', 'PPP009A', 'WBGTA0BLB3CH05', 'dañado', 'No tiene cable de corriente', NULL),
(442, 'IT-ACT00442', 2, 'SAMSUNG', 'PCGA-AC', '1477205810294816', 'adecuado', NULL, NULL),
(443, 'IT-ACT00443', 2, 'LENOVO', 'ADLX45NCC3A', '577C6SLMF0819', 'dañado', 'Hace corte', NULL),
(444, 'IT-ACT00444', 2, 'ZEBRA', 'FSP075-RAAN2', 'P1076001-006', 'baja', 'No tiene cable de corriente', NULL),
(445, 'IT-ACT00445', 2, 'APPLE', NULL, NULL, 'adecuado', 'No tiene cable de corriente', NULL),
(446, 'IT-ACT00446', 2, NULL, 'WA-30B12', 'YK54215228001218600', 'adecuado', NULL, NULL),
(447, 'IT-ACT00447', 13, 'GENIUS', NULL, NULL, 'req_man', 'Solo suena un lado', NULL),
(448, 'IT-ACT00448', 2, 'LG', 'ADS-40FSG-19', 'FAY62768607', 'adecuado', 'Requiere adaptador', NULL),
(449, 'IT-ACT00449', 2, 'TP-LINK', 'TO90060-2C1', NULL, 'adecuado', NULL, NULL),
(450, 'IT-ACT00450', 2, NULL, 'FP500USA', NULL, 'adecuado', NULL, NULL),
(451, 'IT-ACT00451', 2, NULL, 'PS120J12-DY', 'H1131111B255410', 'adecuado', NULL, NULL),
(452, 'IT-ACT00452', 2, NULL, 'ADS-18E-12N', NULL, 'adecuado', NULL, NULL),
(453, 'IT-ACT00453', 2, 'KNUP', 'KP-564', NULL, 'adecuado', NULL, NULL),
(454, 'IT-ACT00454', 2, NULL, 'ADS-18F-12N', '7101480HNB17A0J04ST', 'adecuado', NULL, NULL),
(455, 'IT-ACT00455', 2, 'CWT', 'SAG024F', '11-14030615-00254', 'adecuado', NULL, NULL),
(456, 'IT-ACT00456', 2, 'LEI', 'A35120035-C5', NULL, 'baja', 'No sirve', NULL),
(457, 'IT-ACT00457', 2, NULL, 'UP0121172PA', NULL, 'adecuado', NULL, NULL),
(458, 'IT-ACT00458', 2, NULL, 'ADS-40FS1-12', NULL, 'adecuado', NULL, NULL),
(459, 'IT-ACT00459', 2, NULL, 'WA-30B12', 'YK54215228001434300', 'adecuado', NULL, NULL),
(460, 'IT-ACT00460', 2, NULL, 'F12L19', NULL, 'adecuado', NULL, NULL),
(461, 'IT-ACT00461', 2, NULL, 'SND-3601', NULL, 'adecuado', NULL, NULL),
(462, 'IT-ACT00462', 17, 'LENOVO', 'RTD2166CG3', '85SC10R5254DLA029C', 'adecuado', 'Tipo C a VGA', NULL),
(463, 'IT-ACT00463', 17, 'LENOVO', 'RTD2166-CG3', '8SSC10R659254DLA01L9G', 'adecuado', 'Tipo C a VGA', NULL),
(464, 'IT-ACT00464', 17, 'LENOVO', 'RTD2166-CG3', '8SSC10R659254DLA022DL', 'adecuado', 'Tipo C a VGA', NULL),
(465, 'IT-ACT00465', 17, 'LENOVO', 'RTD2166-CG3', '8SSC10R659254DLA022DN', 'adecuado', 'Tipo C a VGA', NULL),
(466, 'IT-ACT00466', 17, 'LENOVO', 'RTD2166-CG3', '8SSC10R659254DLA022BB', 'adecuado', 'Tipo C a VGA', NULL),
(467, 'IT-ACT00467', 17, 'LENOVO', 'LCH300', 'DNH351MZ', 'adecuado', 'Tipo C a HDMI', NULL),
(468, 'IT-ACT00468', 17, 'LENOVO', 'LCH300', 'DNH351ML', 'adecuado', 'Tipo C a HDMI', NULL),
(469, 'IT-ACT00469', 17, 'LENOVO', 'LCH300', 'DNH351MG', 'adecuado', 'Tipo C a HDMI', NULL),
(470, 'IT-ACT00470', 2, NULL, 'ADS-25ESG-12', NULL, 'baja', 'No sirve', NULL),
(471, 'IT-ACT00471', 2, NULL, 'FP500USA', NULL, 'baja', 'No sirve', NULL),
(472, 'IT-ACT00472', 2, NULL, 'ADS-5M-06', NULL, 'baja', 'No sirve', NULL),
(473, 'IT-ACT00473', 2, 'SAMSUNG', 'PCGA-AC', '1477205810294816', 'dañado', 'Cable pelado', NULL),
(474, 'IT-ACT00474', 12, 'DENWA', 'DW-210P', '440G26744002669', 'adecuado', NULL, NULL),
(475, 'IT-ACT00475', 12, 'DENWA', 'DW-210P', '440G26744002511', 'adecuado', NULL, NULL),
(476, 'IT-ACT00476', 12, 'DENWA', 'DW-210P', '440G26744002664', 'adecuado', NULL, NULL),
(477, 'IT-ACT00477', 12, 'DENWA', 'DW-210P', '440G26744002669', 'adecuado', NULL, NULL),
(478, 'IT-ACT00478', 5, 'HP', 'HSTNS-5151', 'CN71D3P18C', 'baja', 'No sirve', NULL),
(479, 'IT-ACT00479', NULL, 'ADVANTEK NETWORKS', 'ANS-08P', '000021145001256', 'adecuado', NULL, NULL),
(480, 'IT-ACT00480', 2, NULL, 'FP500USA', NULL, 'adecuado', NULL, NULL),
(481, 'IT-ACT00481', 8, 'SURE', 'SR-LED32W', '05E3P715080073', 'req_man', 'No prende la pantalla', NULL),
(482, 'IT-ACT00482', NULL, 'IPEVO', 'CSW2-D2IP', '131720WL00121', 'adecuado', 'Falta el lápiz digital', NULL),
(483, 'IT-ACT00483', 2, 'IPEVO', 'PSA-SPFU1-05', NULL, 'adecuado', NULL, NULL),
(484, 'IT-ACT00484', 21, 'ZTE', 'MP3132', NULL, 'baja', 'No sirve', NULL),
(485, 'IT-ACT00485', 2, NULL, 'PSAIO5R', 'FRTB4042P34802', 'baja', 'No tiene cabezal', NULL),
(486, 'IT-ACT00486', NULL, 'UNIVERSAL', 'KT-N828', NULL, 'req_man', 'A/C', NULL),
(487, 'IT-ACT00487', 18, 'LENOVO', 'L15M4PC2', '855B10K907', 'baja', 'No sirve', NULL),
(488, 'IT-ACT00488', NULL, 'UNIFI', 'UC-CK', '1604K44409E79F367C-KAb461', 'dañado', 'No sirve', NULL),
(489, 'IT-ACT00489', 21, 'TIGO', 'P530T', '512025301000224', 'baja', 'No sirve', NULL),
(490, 'IT-ACT00490', 21, 'TIGO', 'P530T', '512025301000122', 'adecuado', NULL, NULL),
(491, 'IT-ACT00491', 3, 'DELUX', 'KA180', 'KA1808J001686', 'req_man', 'No sirve el espacio', NULL),
(492, 'IT-ACT00492', 3, 'DELUX', 'K6000', 'K6000150600095', 'dañado', 'No hay mouse (combo)', NULL),
(493, 'IT-ACT00493', 3, 'GENIUS', 'GK-070006/U', 'YBIAC1U07108', 'req_man', 'No sirven las teclas E y 3', NULL),
(494, 'IT-ACT00494', NULL, 'SURE', NULL, NULL, 'req_man', NULL, NULL),
(495, 'IT-ACT00495', 17, 'UNIFI', 'UAP-AC', 'E063DA6A3AC2', 'adecuado', NULL, NULL),
(496, 'IT-ACT00496', NULL, 'TP-LINK', 'TL-WR941ND', '10B7404279', 'adecuado', NULL, NULL),
(497, 'IT-ACT00497', NULL, 'BANDLUXE', 'R506', '315017001000046', 'adecuado', NULL, NULL),
(498, 'IT-ACT00498', NULL, 'EDGE ROUTER', 'FRLITE-3', NULL, 'baja', NULL, NULL),
(499, 'IT-ACT00499', NULL, 'TP-LINK', 'TL-U0R941ND', '2143222000431', 'adecuado', NULL, NULL),
(500, 'IT-ACT00500', NULL, 'ZYXEL', 'AM61202-T10B', '5132E32023237', 'adecuado', NULL, NULL),
(501, 'IT-ACT00501', 3, 'GENIUS', 'K939', 'WE2592050680', 'adecuado', NULL, NULL),
(502, 'IT-ACT00502', 3, NULL, 'KB-IMW6828', '41106109842', 'req_man', 'Falta probar', NULL),
(503, 'IT-ACT00503', 3, 'DELUX', 'KA180', 'KA1808H000210', 'req_man', NULL, NULL),
(504, 'IT-ACT00504', 3, 'BTO', NULL, NULL, 'req_man', 'Falta probar', NULL),
(505, 'IT-ACT00505', 3, 'IMICRO', 'KB-IMW6020', '81106109842', 'adecuado', NULL, NULL),
(506, 'IT-ACT00506', 4, 'IMICRO', 'KB-IMW6020', '81106109842', 'adecuado', NULL, NULL),
(507, 'IT-ACT00507', 3, 'LOGITECH', 'MK220', '2127SC10RZ09', 'adecuado', NULL, NULL),
(508, 'IT-ACT00508', 4, 'LOGITECH', 'MK220', '2127SC10RZ09', 'adecuado', NULL, NULL),
(509, 'IT-ACT00509', 3, 'IMICRO', 'KB-IMW6020', '841106109842', 'adecuado', NULL, NULL),
(510, 'IT-ACT00510', 4, 'IMICRO', 'KB-IMW6020', '81106109842', 'adecuado', NULL, NULL),
(511, 'IT-ACT00511', 3, 'IMICRO', 'KB-JMW', '841106109842', 'adecuado', NULL, NULL),
(512, 'IT-ACT00512', 4, 'IMICRO', 'KB-IMW6020', '841106109842', 'adecuado', NULL, NULL),
(513, 'IT-ACT00513', 3, 'IMICRO', 'KB-IMW6020', '841106109842', 'adecuado', NULL, NULL),
(514, 'IT-ACT00514', 4, 'IMICRO', 'KB-IMW6020', '841106109842', 'adecuado', NULL, NULL),
(515, 'IT-ACT00515', 4, NULL, 'KB-IMW6020', '841106109842', 'req_man', 'Falta revisar', NULL),
(516, 'IT-ACT00516', 5, 'GIGABYTE', 'GB-BASE3150', '1548632093', 'dañado', 'Tiene disco SSD\r\nRam de 4G', NULL),
(517, 'IT-ACT00517', 5, 'GIGABYTE', 'GB-BACE3150', '1548631917', 'dañado', 'RAM 4G', NULL),
(518, 'IT-ACT00518', 5, 'GIGABYTE', 'GB-BACE3150', '1548632045', 'dañado', 'Disco duro 5006', NULL),
(519, 'IT-ACT00519', 5, 'GIGABYTE', 'GB-BACE3150', '1548632049', 'dañado', 'Ram de 2G\r\nDisco duro', NULL),
(520, 'IT-ACT00520', NULL, 'DENWA', 'MEDIANT 800', 'DT2279235', 'adecuado', NULL, NULL),
(521, 'IT-ACT00521', 18, NULL, 'HT03XL', NULL, 'dañado', 'Para repuesto', NULL),
(522, 'IT-ACT00522', 18, 'DELL', 'YRDD6', NULL, 'dañado', 'Para repuesto', NULL),
(523, 'IT-ACT00523', 18, 'DELL', 'WDXBR', NULL, 'dañado', 'Para repuesto', NULL),
(524, 'IT-ACT00524', 18, NULL, '3481', NULL, 'baja', 'Para reciclar', NULL),
(525, 'IT-ACT00525', 18, NULL, '3481', NULL, 'baja', 'Para reciclar', NULL),
(526, 'IT-ACT00526', 18, NULL, '3481', NULL, 'baja', 'Para reciclar', NULL),
(527, 'IT-ACT00527', 18, NULL, '3481', NULL, 'baja', 'Para reciclar', NULL),
(528, 'IT-ACT00528', 18, 'HP', 'R-41015938', NULL, 'adecuado', NULL, NULL),
(529, 'IT-ACT00529', 13, 'GENIUS', NULL, NULL, 'baja', NULL, NULL),
(530, 'IT-ACT00530', 13, 'PANASONIC', NULL, NULL, 'baja', NULL, NULL),
(531, 'IT-ACT00531', 13, 'PANASONIC', NULL, NULL, 'baja', NULL, NULL),
(532, 'IT-ACT00532', 17, 'VOLT', 'KFD-90WNB', NULL, 'adecuado', NULL, NULL),
(533, 'IT-ACT00533', 18, 'DIMAX', 'BAT-12V', NULL, 'baja', NULL, NULL),
(534, 'IT-ACT00534', 16, 'LOGITECH', NULL, '1636LZ0K7208', 'baja', 'Tiene cargador', NULL),
(535, 'IT-ACT00535', 6, 'BROTHER', 'DCP-T500W', 'U64050J6H811572', 'adecuado', NULL, NULL),
(536, 'IT-ACT00536', 6, 'CANON', 'E481', 'KJSV15475', 'adecuado', 'No tiene cartuchos', NULL),
(537, 'IT-ACT00537', 9, 'EPSON', 'H429A', 'PSCK2100714', 'adecuado', NULL, NULL),
(538, 'IT-ACT00538', 9, 'EPSON', 'H553A', 'VA9K5100125', 'adecuado', NULL, NULL),
(539, 'IT-ACT00539', 9, 'EPSON', 'H448A', 'X4JU7X01233', 'adecuado', NULL, NULL),
(540, 'IT-ACT00540', 18, 'LENOVO', 'LI5M4PL2', '855B10K90778X2XP7AA04X1', 'baja', 'No funciona', NULL),
(541, 'IT-ACT00541', 6, 'ZEBRA', 'ZXP', '71I73400694', 'adecuado', NULL, NULL),
(542, 'IT-ACT00542', 12, 'PANASONIC', 'KX-TS500LX', '7FBKJ745994', 'adecuado', NULL, NULL),
(543, 'IT-ACT00543', 13, 'LOGI', NULL, NULL, 'adecuado', NULL, NULL),
(544, 'IT-ACT00544', 8, 'SURE', NULL, NULL, 'adecuado', 'No se ven los datos', NULL),
(545, 'IT-ACT00545', NULL, 'TENDA', '5108', 'E0977011529000496', 'adecuado', NULL, NULL),
(546, 'IT-ACT00546', 5, 'GIGABYTE', 'GB-BACE3150', '1548632092', 'adecuado', NULL, NULL),
(547, 'IT-ACT00547', 3, 'GENIUS', 'KB-200', 'X0L95786605533', 'adecuado', NULL, NULL),
(548, 'IT-ACT00548', 8, 'SURE', NULL, NULL, 'adecuado', 'No se ven los datos', NULL),
(549, 'IT-ACT00549', 1, 'GIGABYTE', 'GB-BXBT-1900', NULL, 'req_man', '1 puerto USB no sirve', NULL),
(550, 'IT-ACT00550', 12, 'PANASONIC', 'KX-TS500LX', '8AAKJ767176', 'adecuado', NULL, NULL),
(551, 'IT-ACT00551', 5, 'LENOVO', 'M700', 'USMJ053EVJ', 'adecuado', 'Pc mini', NULL),
(552, 'IT-ACT00552', 4, 'GENIUS', 'NET SCROLL', NULL, 'adecuado', NULL, NULL),
(553, 'IT-ACT00553', 2, NULL, 'AF09', 'LA1420121802AD000121', 'adecuado', NULL, NULL),
(554, 'IT-ACT00554', 3, 'SOFT', NULL, NULL, 'adecuado', 'No se leen los datos', NULL),
(555, 'IT-ACT00555', 7, 'LG', '19EN33SA', '301NDZJGY117', 'adecuado', NULL, NULL),
(556, 'IT-ACT00556', 3, 'SOFT', NULL, NULL, 'req_man', NULL, NULL),
(557, 'IT-ACT00557', 4, 'KNUP', 'OPTICAL MOUSE', NULL, 'req_man', NULL, NULL),
(558, 'IT-ACT00558', 3, 'DELUX', 'K3100', 'K31006L000946', 'adecuado', NULL, NULL),
(559, 'IT-ACT00559', 4, 'GENIUS', 'NET SCROLL', 'X0L95821403445', 'adecuado', NULL, NULL),
(560, 'IT-ACT00560', 7, 'HP', 'H5V-0043-K', '3CM1012NRW', 'adecuado', NULL, NULL),
(561, 'IT-ACT00561', 8, 'SURE', 'ISDB-T', NULL, 'adecuado', NULL, NULL),
(562, 'IT-ACT00562', 3, 'GENIUS', 'KB-M200', 'XE1807624159', 'adecuado', NULL, NULL),
(563, 'IT-ACT00563', 4, 'GENIUS', 'GM150030', 'XEL807624159', 'adecuado', NULL, NULL),
(564, 'IT-ACT00564', 1, 'DELL', '3583', 'FN8B6Z2', 'adecuado', 'Sistema operativo lento', NULL),
(565, 'IT-ACT00565', 2, 'DELL', 'LA45NM140', NULL, 'adecuado', NULL, NULL),
(566, 'IT-ACT00566', 12, 'PANASONIC', 'KXT55000X', '8AAKJ767174', 'adecuado', NULL, NULL),
(567, 'IT-ACT00567', 1, 'DELL', 'VOSTRO3400', '972VZF3', 'adecuado', NULL, NULL),
(568, 'IT-ACT00568', 2, 'DELL', NULL, NULL, 'adecuado', 'No se ven los datos', NULL),
(569, 'IT-ACT00569', 5, 'LENOVO', '10FLS21E00', 'MJ04JUUN', 'adecuado', NULL, NULL),
(570, 'IT-ACT00570', 7, 'HP', NULL, '3CM1012NQG', 'adecuado', NULL, NULL),
(571, 'IT-ACT00571', 3, 'GENIUS', 'KB-200', 'X0L95821403451', 'adecuado', NULL, NULL),
(572, 'IT-ACT00572', 4, 'GENIUS', 'GM-150032', 'X0L95821406451', 'adecuado', NULL, NULL),
(573, 'IT-ACT00573', 2, 'LENOVO', 'ADLX45DNXC3A', NULL, 'adecuado', NULL, NULL),
(574, 'IT-ACT00574', 5, 'GIGABYTE', 'GB-BXBT-1900', NULL, 'adecuado', NULL, NULL),
(575, 'IT-ACT00575', 4, 'GENIUS', NULL, NULL, 'adecuado', NULL, NULL),
(576, 'IT-ACT00576', 3, 'GENIUS', 'KB-M20', 'XE1807624', 'adecuado', NULL, NULL),
(577, 'IT-ACT00577', 8, 'SURE', NULL, NULL, 'adecuado', 'No se ven los datos', NULL),
(578, 'IT-ACT00578', 5, NULL, NULL, NULL, 'adecuado', NULL, NULL),
(579, 'IT-ACT00579', 3, 'DELUX', 'K3100', '31006I00960', 'adecuado', NULL, NULL),
(580, 'IT-ACT00580', 4, 'DELUX', 'M131', 'M1314L003219', 'req_man', 'Scroll no sirve', NULL),
(581, 'IT-ACT00581', 4, 'GENIUS', NULL, NULL, 'adecuado', NULL, NULL),
(582, 'IT-ACT00582', 12, 'GENIUS', 'KB-200', 'X0L95821403445', 'adecuado', NULL, NULL),
(583, 'IT-ACT00583', 12, 'PANASONIC', 'KXTS500LX', '8AAKJ767029', 'req_man', 'Al llamar no suena', NULL);
INSERT INTO `activos` (`id`, `Codigo`, `IdTAct`, `Marca`, `Modelo`, `NroSerial`, `Condicion`, `Observaciones`, `deleted_at`) VALUES
(584, 'IT-ACT00584', 5, NULL, NULL, NULL, 'req_man', 'Sistema operativo lento', NULL),
(585, 'IT-ACT00585', 4, 'GENIUS', NULL, NULL, 'adecuado', NULL, NULL),
(586, 'IT-ACT00586', 3, 'SURE', 'KB578', NULL, 'adecuado', NULL, NULL),
(587, 'IT-ACT00587', 7, 'SAMSUNG', 'S19D50ONY', 'ZZ86HHLFA00700H', 'adecuado', 'Tiene una mancha en la pantalla', NULL),
(588, 'IT-ACT00588', 7, 'SAMSUNG', 'S19D3S0NY', 'ZZ86HHLF60033GL', 'adecuado', NULL, NULL),
(589, 'IT-ACT00589', 5, 'LENOVO', '3238BP8', 'HJ76W6E', 'adecuado', NULL, NULL),
(590, 'IT-ACT00590', 7, 'SAMSUNG', 'S22F350FHL', '0ABZHCNNC00456V', 'adecuado', NULL, NULL),
(591, 'IT-ACT00591', 3, 'GENIUS', 'GK-1500-01', 'XE1708C23928', 'adecuado', NULL, NULL),
(592, 'IT-ACT00592', 4, 'LOGITECH', 'M-U00', '810-002182', 'adecuado', NULL, NULL),
(593, 'IT-ACT00593', 2, 'ADAPTER', 'LUN-665', NULL, 'adecuado', NULL, NULL),
(594, 'IT-ACT00594', 1, 'DELL', 'LNS-3583', NULL, 'adecuado', NULL, NULL),
(595, 'IT-ACT00595', 2, 'DELL', 'LA45NM140', 'CN-0KXTTW-L0C', 'adecuado', NULL, NULL),
(596, 'IT-ACT00596', 1, 'DELL', 'B-5402', '96XVP93', 'adecuado', NULL, NULL),
(597, 'IT-ACT00597', 2, 'DELL', 'LA45NM140', NULL, 'adecuado', NULL, NULL),
(598, 'IT-ACT00598', 8, 'SURE', NULL, NULL, 'adecuado', 'No se ven los datos', NULL),
(599, 'IT-ACT00599', 5, 'GIGABYTE', 'GB-BACE3150', 'SN1606632025', 'adecuado', NULL, NULL),
(600, 'IT-ACT00600', 3, 'GENIUS', 'KB-200', 'X0L95786605524', 'adecuado', NULL, NULL),
(601, 'IT-ACT00601', 4, 'EWTTO', 'OPTICAL 3D', NULL, 'adecuado', NULL, NULL),
(602, 'IT-ACT00602', 8, 'SURE', 'SR-LED-32W', 'SUR32A12618040316', 'adecuado', NULL, NULL),
(603, 'IT-ACT00603', 1, 'DELL', 'VOSTRO 3400', '915L983', 'adecuado', NULL, NULL),
(604, 'IT-ACT00604', 2, 'DELL', NULL, '00KXTTWL0C600RAN8Z2EA12', 'adecuado', NULL, NULL),
(605, 'IT-ACT00605', 8, 'SURE', 'SR-LED32W', 'SUR32A12G18040996', 'adecuado', NULL, NULL),
(606, 'IT-ACT00606', 4, 'GENIUS', 'DX-120', 'AE708704777', 'adecuado', NULL, NULL),
(607, 'IT-ACT00607', 3, 'GENIUS', 'GK-150001', 'XE1708704768', 'adecuado', NULL, NULL),
(608, 'IT-ACT00608', 5, 'GIGABYTE', 'GB-BXBT-1900', NULL, 'req_man', 'Enciende lento', NULL),
(609, 'IT-ACT00609', 2, 'APD', 'WA-40EL9R', NULL, 'adecuado', NULL, NULL),
(610, 'IT-ACT00610', 3, 'KLIP', 'KCK-2515', 'INC1703971451', 'adecuado', NULL, NULL),
(611, 'IT-ACT00611', 4, 'GENIUS', 'NET SCROLL 120V2', 'X0L95786605525', 'adecuado', NULL, NULL),
(612, 'IT-ACT00612', 2, 'TP-LINK', 'T090060-2C1', NULL, 'adecuado', NULL, NULL),
(613, 'IT-ACT00613', 18, NULL, 'SSBS19', 'WPTBJ11020PGN2411', 'baja', NULL, NULL),
(614, 'IT-ACT00614', 2, NULL, 'ADS-5M-06', NULL, 'adecuado', NULL, NULL),
(615, 'IT-ACT00615', 25, 'RICOH', 'MP C406', NULL, 'adecuado', NULL, NULL),
(616, 'IT-ACT00616', 25, 'RICOH', 'MP C406', NULL, 'adecuado', NULL, NULL),
(617, 'IT-ACT00617', 25, 'RICOH', 'MP C406', NULL, 'adecuado', NULL, NULL),
(618, 'IT-ACT00618', 25, 'RICOH', 'MP C406', NULL, 'adecuado', NULL, NULL),
(619, 'IT-ACT00619', 25, 'RICOH', 'MP C406', NULL, 'adecuado', NULL, NULL),
(620, 'IT-ACT00620', 26, NULL, NULL, NULL, 'adecuado', 'Poe de 24W', NULL),
(621, 'IT-ACT00621', 26, NULL, NULL, NULL, 'adecuado', NULL, NULL),
(622, 'IT-ACT00622', 27, 'GRAD STREAM', 'HT 802', '207GHQXH20ADE0FE', 'req_man', NULL, NULL),
(623, 'IT-ACT00623', 28, 'TP-LINK', 'TL-WR841ND', NULL, 'adecuado', NULL, NULL),
(624, 'IT-ACT00624', 29, 'ADATA', 'ASP600S128GM', NULL, 'baja', 'Disco solido de 6gb', NULL),
(625, 'IT-ACT00625', 30, 'DENWA', NULL, '5G1KPWWN07', 'adecuado', 'Disco duro de 500 gb falta probar', NULL),
(626, 'IT-ACT00626', 30, 'HITACHI', 'HT5542525K9SA00', '071105BB0F00WDGPEWTC', 'adecuado', 'Disco Duro de 250 gb falta probar', NULL),
(627, 'IT-ACT00627', 31, 'BROTHER', 'DK-2205', 'LB9290001', 'adecuado', NULL, NULL),
(628, 'IT-ACT00628', 31, 'BROTHER', 'DK2205', 'LB9290001', 'adecuado', NULL, NULL),
(629, 'IT-ACT00629', 31, 'BROTHER', 'DK-2205', 'LB9290001', 'adecuado', NULL, NULL),
(630, 'IT-ACT00630', 25, 'ULTRA MAX', 'CE285A', '6942937503213', 'adecuado', NULL, NULL),
(631, 'IT-ACT00631', 25, 'NEXT ONE', 'CF283A', NULL, 'adecuado', NULL, NULL),
(632, 'IT-ACT00632', 25, 'PRINTLINE', 'CF283A', NULL, 'adecuado', NULL, NULL),
(633, 'IT-ACT00633', 25, 'NEXT ONE', 'CF2834', NULL, 'adecuado', NULL, NULL),
(634, 'IT-ACT00634', 32, 'MAXICOM', 'HT-001', NULL, 'adecuado', NULL, NULL),
(635, 'IT-ACT00635', 33, 'MULTI-DISPLAY', '1600X1200', NULL, 'adecuado', NULL, NULL),
(636, 'IT-ACT00636', 34, 'CANON', 'LC-E83', NULL, 'adecuado', NULL, NULL),
(637, 'IT-ACT00637', 35, 'QR', '75270', NULL, 'adecuado', NULL, NULL),
(638, 'IT-ACT00638', 35, 'QR', '75270', NULL, 'adecuado', NULL, NULL),
(639, 'IT-ACT00639', 36, 'UPOE', 'GP-HY80-050G', NULL, 'adecuado', NULL, NULL),
(640, 'IT-ACT00640', 30, 'TOSHIBA', 'DHWD110', '18NGYDFS', 'adecuado', 'Disco duro de 1 tera, sin S.Ope.', NULL),
(641, 'IT-ACT00641', 30, 'TOSHIBA', 'DT01ACA100', '38NYA75FS', 'adecuado', 'Disco duro de 6Gb', NULL),
(642, 'IT-ACT00642', 30, 'SEAGATE', NULL, 'Z9C4G7RS', 'baja', 'No levanta el Sistema Operativo', NULL),
(643, 'IT-ACT00643', 37, 'CDP', 'R-UPR508I', '180325-1820685', 'baja', 'No funcional', NULL),
(644, 'IT-ACT00644', 37, 'DDP', 'R-SMART1010I', '170801-2360100', 'baja', 'No Funcional', NULL),
(645, 'IT-ACT00645', 38, 'VICOM', NULL, NULL, 'req_man', NULL, NULL),
(646, 'IT-ACT00646', 38, 'ZKT', 'PS902B', NULL, 'adecuado', NULL, NULL),
(647, 'IT-ACT00647', 30, 'SAMSUNG', 'HM501LX', 'S26HJ9ABB00935', 'adecuado', 'Disco duro de 500 Gb', NULL),
(648, 'IT-ACT00648', 4, 'GENIUS', 'GM-150032', 'XL0L95736605524', 'adecuado', NULL, NULL),
(649, 'IT-ACT00649', 3, 'DELUX', 'OM-06', 'KOM-066J002152', 'adecuado', NULL, NULL),
(650, 'IT-ACT00650', 5, 'SURE', NULL, NULL, 'adecuado', NULL, NULL),
(651, 'IT-ACT00651', 12, 'DENWA', 'DW-210P', '440G26744002513', 'baja', 'No sirve', NULL),
(652, 'IT-ACT00652', 6, 'HP', 'CE658A', 'BRBSF9RPH9', 'adecuado', NULL, NULL),
(653, 'IT-ACT00653', 2, 'LG', 'LCAP42', 'EE1MN630732013119', 'adecuado', NULL, NULL),
(654, 'IT-ACT00654', 2, 'TOSHIBA', NULL, 'G71C000GZ110', 'adecuado', NULL, NULL),
(655, 'IT-ACT00655', 4, 'LOGITECH', 'M170', '2052LZD7ELN8', 'adecuado', NULL, NULL),
(656, 'IT-ACT00656', 1, 'HP', 'PROBOOK 450 GB', '5CD1514NH1', 'adecuado', NULL, NULL),
(657, 'IT-ACT00657', 2, 'HP', 'R-41013153', NULL, 'adecuado', NULL, NULL),
(658, 'IT-ACT00658', 5, NULL, 'PRIME Z390-A', NULL, 'adecuado', NULL, NULL),
(659, 'IT-ACT00659', 3, 'GENIUS', 'GK-150001', 'XG1708704748', 'adecuado', NULL, NULL),
(660, 'IT-ACT00660', 4, 'DELUX', 'M321', 'M3218J0043', 'req_man', NULL, NULL),
(661, 'IT-ACT00661', 13, 'SCORPION', 'HG9018', NULL, 'adecuado', NULL, NULL),
(662, 'IT-ACT00662', 7, 'SAMSUNG', 'U28E590D', NULL, 'adecuado', NULL, NULL),
(663, 'IT-ACT00663', 3, 'GENIUS', 'GK-100015', 'XE1807624157', 'adecuado', NULL, NULL),
(664, 'IT-ACT00664', 3, 'DELUX', 'OM-06', 'KOM-066J000884', 'adecuado', 'Oficina Central, dpto ventas', NULL),
(665, 'IT-ACT00665', 2, 'LENOVO', 'AC ADAPDER', '11S42T4426Z1ZF3F9AM27C', 'adecuado', 'Dpto. de ventas', NULL),
(666, 'IT-ACT00666', 2, 'DELL', NULL, 'CN-0KXTTW-LO00-979-687T-A09', 'adecuado', 'Celina Central', NULL),
(667, 'IT-ACT00667', 2, 'APD', 'WA-40E19R', 'Y15380018561', 'adecuado', 'Celina Central atención al cliente', NULL),
(668, 'IT-ACT00668', 7, 'BEMATECH', NULL, '6300281620000090', 'adecuado', 'Planta baja ,pantalla de tickets', NULL),
(669, 'IT-ACT00669', 4, 'GENIUS', 'GM-070005', NULL, 'adecuado', 'RRHH', NULL),
(670, 'IT-ACT00670', 2, 'LENOVO', '42T4434', '11S42T4434Z1ZF3K25GBZD', 'adecuado', NULL, NULL),
(671, 'IT-ACT00671', 4, NULL, 'GM-150030', 'XE1807624152', 'adecuado', 'RRHH', NULL),
(672, 'IT-ACT00672', 1, 'DELL', 'I 5520', 'B9C0D51', 'adecuado', NULL, NULL),
(673, 'IT-ACT00673', 4, 'GENIUS', 'GM-150008', 'XE1708C23926', 'adecuado', NULL, NULL),
(674, 'IT-ACT00674', 2, 'DELL', NULL, 'CN0YY20N-73245-19G-0813-A00', 'adecuado', NULL, NULL),
(675, 'IT-ACT00675', 2, 'DELL', 'LA5NM140', NULL, 'adecuado', 'Dpto de Ventas', NULL),
(676, 'IT-ACT00676', 5, 'GIGABYTE', 'GB-BLCE-4105C', '1822632106', 'adecuado', 'Dpto ventas', NULL),
(677, 'IT-ACT00677', 2, 'APD', 'WA-40E19R', 'Y15380018451', 'adecuado', 'Dpto de ventas', NULL),
(678, 'IT-ACT00678', 3, 'GENIUS', 'GK-070006/U', NULL, 'adecuado', 'Dpto de ventas', NULL),
(679, 'IT-ACT00679', 4, 'DELUX', 'M363', 'M3636K001392', 'adecuado', 'Dpto de ventas', NULL),
(680, 'IT-ACT00680', 8, 'SURE', 'ISDBT-HD32W', 'SR32J01G20030321', 'adecuado', 'Dpto de ventas', NULL),
(681, 'IT-ACT00681', 27, 'GRANDSTREAM', 'HT802', '207GHQXH20ADE0F0', 'adecuado', 'Dpto de ventas', NULL),
(682, 'IT-ACT00682', 8, 'SURE', NULL, NULL, 'adecuado', 'Dpto de ventas', NULL),
(683, 'IT-ACT00683', 4, 'QR', '3D OPTICAL', NULL, 'adecuado', 'Dpto de Legal', NULL),
(684, 'IT-ACT00684', 2, 'LENOVO', NULL, '11S92P1109Z1ZBTZ88C08V', 'adecuado', 'Dpto de Legal', NULL),
(685, 'IT-ACT00685', 2, 'AC ADAPTER', 'AF09', NULL, 'adecuado', 'Dpto de legal', NULL),
(686, 'IT-ACT00686', 2, 'LENOVO', NULL, '8SSA10J20136L1CZ74K0J91', 'adecuado', 'Dpto de legal', NULL),
(687, 'IT-ACT00687', 7, 'SAMSUNG', 'S22F350FHL', '0ABZHCNNC00480W', 'adecuado', 'DIGITAL', NULL),
(688, 'IT-ACT00688', 1, NULL, 'CN07', 'SK28N9PO240', 'adecuado', 'DIGITAL', NULL),
(689, 'IT-ACT00689', 17, 'SAMSUNG', 'CN07', 'SK28N9PN972', 'adecuado', 'ACADEMIA', NULL),
(690, 'IT-ACT00690', 4, 'GENIUS', 'GM-150014', 'X7H94036819564', 'adecuado', 'ACADEMIA', NULL),
(691, 'IT-ACT00691', 2, 'ADP', NULL, 'Y18180008565', 'adecuado', 'ACADEMIA', NULL),
(692, 'IT-ACT00692', 17, 'SAMSUNG', 'A2514_RPN', 'CN07BM4400989ASK28N9PO217', 'adecuado', 'ACADEMIA', NULL),
(693, 'IT-ACT00693', 1, 'DELL', 'VOSTRO 3400', '2SSC2D3', 'adecuado', 'ACADEMIA', NULL),
(694, 'IT-ACT00694', 2, 'DELL', 'LA45NM140', 'CN-0KXTTW-LOC00-117-78E7-A12', 'adecuado', 'ACADEMIA', NULL),
(695, 'IT-ACT00695', 4, 'LOGI', 'M187', '2113LZD1RXK8', 'adecuado', 'ACADEMIA', NULL),
(696, 'IT-ACT00696', 9, 'EPSON', 'H553A', 'VA9K5301602', 'adecuado', 'ACADEMIA', NULL),
(697, 'IT-ACT00697', 1, 'DELL', 'INSPIRON 3583', '5ZSG5Z2', 'adecuado', 'ACADEMIA', NULL),
(698, 'IT-ACT00698', 4, 'DELL', 'MORFFLUOA', '0NNP0G-PRC00-00B-05TH', 'adecuado', 'ACADEMIA', NULL),
(699, 'IT-ACT00699', 2, 'DELL', 'LA45NM140', 'CN-0KXTTW-LOC00-98C-781F-A09', 'adecuado', 'ACADEMIA', NULL),
(700, 'IT-ACT00700', 1, 'DELL', 'VOSTRO 3400', '2X2M983', 'adecuado', 'ACADEMIA', NULL),
(701, 'IT-ACT00701', 2, 'DELL', 'LA45NM140', 'CN-0KXTTW-LOC00-0AG-8055-A12', 'adecuado', 'ACADEMIA', NULL),
(702, 'IT-ACT00702', 11, 'BROTHER', 'ADS-2400N', 'U64275B7G157321', 'adecuado', 'Primer piso cobranza', NULL),
(703, 'IT-ACT00703', 17, 'SAMSUNG', 'A2514_RPN', 'CN07BB4400989ASK28N9PO675', 'adecuado', 'PEIMER PISO', NULL),
(704, 'IT-ACT00704', 5, 'LENOVO', '10FLSFYA00', '1510FL0YA00MJ04PPH7', 'adecuado', 'TIENDA CELINA MONTERO', NULL),
(705, 'IT-ACT00705', 7, 'SAMSUNG', 'S19C150F', 'ZYGNH4LF00271W', 'adecuado', 'Tienda Celina Montero', NULL),
(706, 'IT-ACT00706', 3, 'IMICRO', 'KB-IMW6020', '841106109842', 'adecuado', 'Tienda Celina Montero', NULL),
(707, 'IT-ACT00707', 3, 'IMICRO', 'KB-IMW6020', '841106109842', 'adecuado', 'Tienda Celina Montero', NULL),
(708, 'IT-ACT00708', 4, 'BTO', 'OPTICAL MOUSE', NULL, 'adecuado', 'RRHH', NULL),
(709, 'IT-ACT00709', 4, 'GENIUS', 'GM-23003', '148102103179', 'adecuado', 'RRHH', NULL),
(710, 'IT-ACT00710', 1, 'prueba', 'prueba', 'prueba', 'adecuado', NULL, NULL),
(711, 'IT-ACT00711', 1, 'prueba', 'prueba', 'prueba', 'adecuado', NULL, NULL),
(712, 'IT-ACT00712', 1, 'prueba', 'prueba', NULL, 'adecuado', NULL, NULL),
(713, 'IT-ACT00713', 1, 'prueba', 'prueba', 'pruebaç', 'adecuado', NULL, NULL),
(714, 'IT-ACT00714', 1, 'prueba', 'prueba', 'prueba', 'adecuado', 'prue', NULL),
(715, 'IT-ACT00715', 5, NULL, NULL, NULL, 'adecuado', NULL, NULL),
(716, 'IT-ACT00716', 7, 'SAMSUNG', '519F350HNL', 'ZZJDH4TH804078A', 'adecuado', NULL, NULL),
(717, 'IT-ACT00717', 3, 'SURE', 'K589', NULL, 'adecuado', NULL, NULL),
(718, 'IT-ACT00718', 4, 'SURE', 'OPTICAL MOUSE', NULL, 'adecuado', NULL, NULL),
(719, 'IT-ACT00719', 6, 'HP', 'CE658A', 'BRB5FCYMSD', 'adecuado', NULL, NULL),
(720, 'IT-ACT00720', 2, 'SAMSUNG', 'A1514-EPN', 'CN07BN4400590C5K28H7ME583', 'adecuado', 'Cargador de Monitor', NULL),
(721, 'IT-ACT00721', 28, 'Mercusys', 'MW302R', '22135J2000978', 'adecuado', 'Router inalambrico', NULL),
(722, 'IT-ACT00722', 21, 'Alcatel', NULL, NULL, 'adecuado', NULL, NULL),
(723, 'IT-ACT00723', 5, 'SURE', NULL, NULL, 'adecuado', NULL, NULL),
(724, 'IT-ACT00724', 1, 'DELL', 'VOSTRO 3400', 'J4XL983', 'adecuado', NULL, NULL),
(725, 'IT-ACT00725', 4, 'DELL', 'MORF FLUOA', 'CN0NNP0G-PRC00-09 J-0100', 'adecuado', NULL, NULL),
(726, 'IT-ACT00726', 3, 'KLIP XTREME', 'KNP-110', 'INC20062717172', 'adecuado', NULL, NULL),
(727, 'IT-ACT00727', 2, 'DELL', 'LAU5NM140', 'CN0KXTTWL0C000AR7B48A12', 'adecuado', 'Cargador de Laptop', NULL),
(728, 'IT-ACT00728', 6, 'EPSON', 'L120', 'TNWK069327', 'adecuado', NULL, NULL),
(729, 'IT-ACT00729', 39, 'PAD', NULL, NULL, 'adecuado', NULL, NULL),
(730, 'IT-ACT00730', 40, 'VERICASH', 'VC3600', '1810034', 'adecuado', NULL, NULL),
(731, 'IT-ACT00731', 41, 'VERICASH', 'BC16M-220', '6S18011022', 'adecuado', NULL, NULL),
(732, 'IT-ACT00732', 41, 'VERICASH', 'VC16M-220', '6S1801011028', 'adecuado', NULL, NULL),
(733, 'IT-ACT00733', 1, 'DELL', 'VOSTRO 3400', '3HJL983', 'adecuado', NULL, NULL),
(734, 'IT-ACT00734', 4, 'DELL', 'MORFFUOA', 'CN-0NND0E-PRC00-09J-DLUE', 'adecuado', NULL, NULL),
(735, 'IT-ACT00735', 2, 'DELL', 'LA45NM140', NULL, 'adecuado', 'Cargador de Laptop', NULL),
(736, 'IT-ACT00736', 39, 'PAD', NULL, NULL, 'adecuado', NULL, NULL),
(737, 'IT-ACT00737', 6, 'CANON', 'F158200', 'MTCA203539', 'adecuado', NULL, NULL),
(738, 'IT-ACT00738', 3, 'GENIUS', 'F158200GK-100011', 'X8L759B01221', 'adecuado', NULL, NULL),
(739, 'IT-ACT00739', 4, 'GENIUS', 'GM-150014', 'X6J93286204483', 'adecuado', NULL, NULL),
(740, 'IT-ACT00740', 7, 'LG', '19EN33SA', '306NDUN6L374', 'adecuado', NULL, NULL),
(741, 'IT-ACT00741', 1, 'LENOVO', '20KSS0EA00', 'PF1G57UV', 'adecuado', NULL, NULL),
(742, 'IT-ACT00742', 4, 'GENIUS', 'GK-120012/T', 'WV15JWA01228', 'adecuado', NULL, NULL),
(743, 'IT-ACT00743', 2, 'LENOVO', 'ADLX65YCC2A', '8SSA10413947C1SG8A90E1G', 'adecuado', 'Cargador de laptop', NULL),
(744, 'IT-ACT00744', 1, 'DELL', 'VOSTRO-3400', '542V7F3', 'adecuado', NULL, NULL),
(745, 'IT-ACT00745', 4, 'GENIUS', 'NX-7020', 'X0F95593200375', 'adecuado', NULL, NULL),
(746, 'IT-ACT00746', 2, 'DELL', 'LA45NM14', 'CN0KXTTWC0C0011778C3A12', 'adecuado', 'Cargador de laptop', NULL),
(747, 'IT-ACT00747', 3, 'XKLIP-XTREME', 'KNP-110', 'INC20062717263', 'adecuado', NULL, NULL),
(748, 'IT-ACT00748', 39, 'PAD', NULL, NULL, 'adecuado', NULL, NULL),
(749, 'IT-ACT00749', 8, 'LG', NULL, 'MEZ6621840S(REV00)', 'adecuado', NULL, NULL),
(750, 'IT-ACT00750', 8, 'LG', '65UP7750PSB', '201RMTT2B969', 'adecuado', NULL, NULL),
(751, 'IT-ACT00751', 10, 'LOGITECH', NULL, NULL, 'adecuado', NULL, NULL),
(752, 'IT-ACT00752', 9, 'EPSON', 'H839', 'X4GL9201220', 'adecuado', NULL, NULL),
(753, 'IT-ACT00753', 2, 'LG', 'DSA-18CB-12FCA', NULL, 'adecuado', 'Cargador de TV', NULL),
(754, 'IT-ACT00754', 22, 'EPSON', NULL, NULL, 'adecuado', 'Control de Proyector', NULL),
(755, 'IT-ACT00755', 22, 'LG', 'AKB76037603', NULL, 'adecuado', 'Control de TV', NULL),
(756, 'IT-ACT00756', 22, 'LG', 'MR21GA', NULL, 'adecuado', 'Control de TV', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) NOT NULL,
  `Nombre` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `Nombre`, `Descripcion`, `deleted_at`) VALUES
(1, 'Recursos Humanos', '..', NULL),
(2, 'Soporte', '..', NULL),
(3, 'Call-Center', '..', NULL),
(4, 'Infraestructura', '..', NULL),
(5, 'Legal', '..', NULL),
(6, 'Ventas', '..', NULL),
(7, 'Marketing', '....', NULL),
(8, 'Producción', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_asignacions`
--

CREATE TABLE `detalle_asignacions` (
  `IdE` bigint(20) NOT NULL,
  `IdO` bigint(20) NOT NULL,
  `IdD` bigint(20) NOT NULL,
  `IdAct` bigint(20) NOT NULL,
  `fecha_i` date NOT NULL,
  `fecha_f` date DEFAULT NULL,
  `UsuarioAsig` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CapRecursos` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_asignacions`
--

INSERT INTO `detalle_asignacions` (`IdE`, `IdO`, `IdD`, `IdAct`, `fecha_i`, `fecha_f`, `UsuarioAsig`, `CapRecursos`, `deleted_at`) VALUES
(1, 2, 7, 3, '2022-07-04', '2022-07-04', 'BRANDON COPALI', 'NO', NULL),
(6, 3, 8, 715, '2022-07-05', '2022-07-06', 'Roger Mano', 'SI', NULL),
(6, 3, 8, 716, '2022-07-05', '2022-07-06', 'Roger Mano', 'NO', NULL),
(6, 3, 8, 717, '2022-07-05', '2022-07-06', 'Roger Mano', 'NO', NULL),
(6, 3, 8, 718, '2022-07-05', '2022-07-06', 'Roger Mano', 'NO', NULL),
(6, 3, 8, 719, '2022-07-05', NULL, 'Roger Mano', 'NO', NULL),
(6, 3, 8, 720, '2022-07-05', NULL, 'Roger Mano', 'NO', NULL),
(6, 3, 8, 721, '2022-07-05', '2022-07-06', 'Roger Mano', 'NO', NULL),
(6, 3, 8, 722, '2022-07-05', NULL, 'Roger Mano', 'NO', NULL),
(6, 4, 8, 723, '2022-07-05', NULL, 'Julio cesar Mercado', 'SI', NULL),
(6, 4, 8, 724, '2022-07-05', '2022-07-06', 'Carlos Morón', 'SI', NULL),
(6, 4, 8, 725, '2022-07-05', NULL, 'Carlos Morón', 'NO', NULL),
(6, 4, 8, 726, '2022-07-05', NULL, 'Carlos Morón', 'NO', NULL),
(6, 4, 8, 727, '2022-07-05', NULL, 'Carlos Morón', 'NO', NULL),
(6, 4, 8, 728, '2022-07-05', NULL, 'Carlos Morón', 'NO', NULL),
(6, 4, 8, 729, '2022-07-05', NULL, 'Carlos Morón', 'NO', NULL),
(6, 4, 8, 730, '2022-07-05', NULL, 'Carlos Morón', 'NO', NULL),
(6, 4, 8, 731, '2022-07-05', NULL, 'Carlos Morón', 'NO', NULL),
(6, 4, 8, 732, '2022-07-05', NULL, 'Alejandro Bustillos', 'NO', NULL),
(6, 4, 8, 733, '2022-07-05', NULL, 'Cinthia Iriarte', 'SI', NULL),
(6, 4, 8, 734, '2022-07-05', NULL, 'Cinthia Iriarte', 'NO', NULL),
(6, 4, 8, 735, '2022-07-05', NULL, 'Cinthia Iriarte', 'NO', NULL),
(6, 4, 8, 736, '2022-07-05', NULL, 'Cinthia Iriarte', 'NO', NULL),
(6, 4, 8, 737, '2022-07-05', NULL, NULL, 'NO', NULL),
(6, 4, 8, 738, '2022-07-05', NULL, 'Julio cesar Mercado', 'NO', NULL),
(6, 4, 8, 739, '2022-07-05', NULL, 'Julio cesar Mercado', 'NO', NULL),
(6, 4, 8, 740, '2022-07-05', NULL, 'Julio cesar Mercado', 'NO', NULL),
(6, 4, 8, 741, '2022-07-05', NULL, 'BORIS OBLITAS', 'SI', NULL),
(6, 4, 8, 742, '2022-07-05', NULL, 'BORIS OBLITAS', 'NO', NULL),
(6, 4, 8, 743, '2022-07-05', NULL, 'BORIS OBLITAS', 'NO', NULL),
(6, 4, 8, 744, '2022-07-05', NULL, 'JAIME VALDIVIA', 'SI', NULL),
(6, 4, 8, 745, '2022-07-05', NULL, 'JAIME VALDIVIA', 'NO', NULL),
(6, 4, 8, 746, '2022-07-05', NULL, 'JAIME VALDIVIA', 'NO', NULL),
(6, 4, 8, 747, '2022-07-05', NULL, 'JAIME VALDIVIA', 'NO', NULL),
(6, 4, 8, 748, '2022-07-05', NULL, 'CRISTIAN PINTO', 'NO', NULL),
(6, 4, 8, 749, '2022-07-05', NULL, NULL, 'NO', NULL),
(6, 4, 8, 750, '2022-07-05', NULL, NULL, 'NO', NULL),
(6, 4, 8, 751, '2022-07-05', NULL, NULL, 'NO', NULL),
(6, 4, 8, 752, '2022-07-05', NULL, NULL, 'NO', NULL),
(6, 4, 8, 753, '2022-07-05', NULL, NULL, 'NO', NULL),
(6, 4, 8, 754, '2022-07-05', NULL, NULL, 'NO', NULL),
(6, 4, 8, 755, '2022-07-05', NULL, NULL, 'NO', NULL),
(6, 4, 8, 756, '2022-07-05', NULL, NULL, 'NO', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) NOT NULL,
  `Nombre` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `Nombre`, `Descripcion`, `deleted_at`) VALUES
(1, 'Galileo', 'Empresa dedicada al Analisis de Datos', NULL),
(2, 'Celina', 'Rubro de ventas de Terrenos', NULL),
(3, 'Pacucito', 'Venta de Producto Apicula', NULL),
(4, 'Tienda Celina', 'Venta de Electrodomésticos y producto del Hogar', NULL),
(5, 'Brisas de Paz', 'Venta de terrenos Parque Cementerio', NULL),
(6, 'PRODASA', 'Rubro Avicola', NULL);

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
(4, '2022_06_23_160413_tabla_base', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficinas`
--

CREATE TABLE `oficinas` (
  `id` bigint(20) NOT NULL,
  `Direccion` text COLLATE utf8mb4_unicode_ci,
  `Descripcion` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oficinas`
--

INSERT INTO `oficinas` (`id`, `Direccion`, `Descripcion`, `deleted_at`) VALUES
(1, 'Las Brisas Cuarto Anillo av/Banzer', 'Las Brisas', NULL),
(2, 'Primer Anillo Av/Cañoto', 'Edificio Celina Central', NULL),
(3, 'Prodasa /Km 20 - Carretera al Norte', NULL, NULL),
(4, 'Prodasa /Km 9 - Carretera al Norte', NULL, NULL);

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
-- Estructura de tabla para la tabla `tipo_activos`
--

CREATE TABLE `tipo_activos` (
  `id` bigint(20) NOT NULL,
  `Nombre` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_activos`
--

INSERT INTO `tipo_activos` (`id`, `Nombre`, `Descripcion`, `deleted_at`) VALUES
(1, 'Laptop', '..', NULL),
(2, 'Cargador', '..', NULL),
(3, 'Teclado', '..', NULL),
(4, 'Mouse', '..', NULL),
(5, 'Pc-Escritorio', '..', NULL),
(6, 'Impresora', '..', NULL),
(7, 'Monitor', '..', NULL),
(8, 'Tv-Plasma', '..', NULL),
(9, 'Proyector', '..', NULL),
(10, 'Parlantes', '..', NULL),
(11, 'Scanner', '..', NULL),
(12, 'Telefono', '..', NULL),
(13, 'Auriculares', '..', NULL),
(14, 'Etiquetadora', '..', NULL),
(15, 'Usb', '..', NULL),
(16, 'Camara-Web', '..', NULL),
(17, 'Adaptador', '..', NULL),
(18, 'Bateria', '..', NULL),
(19, 'Swith', '..', NULL),
(20, 'Camara-de-Seguridad', '..', NULL),
(21, 'Modem', '..', NULL),
(22, 'Control-Remoto', '..', NULL),
(23, 'Cloud-key', '..', NULL),
(24, 'Pizarra-Digital', '..', NULL),
(25, 'Toner', '..', NULL),
(26, 'Poe', '..', NULL),
(27, 'Transformador-de-Telefonia', '..', NULL),
(28, 'Router', '..', NULL),
(29, 'Disco-Solido', '..', NULL),
(30, 'Disco-Duro', '..', NULL),
(31, 'Papel', '..', NULL),
(32, 'Soporte-Tv', '..', NULL),
(33, 'Usb-Vga', '..', NULL),
(34, 'Cargador-de-Bateria', '..', NULL),
(35, 'Bluetooth', '..', NULL),
(36, 'Convertidor-Pop', '..', NULL),
(37, 'Ups', '..', NULL),
(38, 'Fuente-de-Alimentacion', '..', NULL),
(39, 'Cooler', NULL, NULL),
(40, 'Contador de Billetes', NULL, NULL),
(41, 'Detector de Billetes', NULL, NULL);

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
(1, 'JOSE ANDRES', 'soporte.joseandres@email.com', NULL, '$2y$10$Slp12Mz3d8bYZ363PxsRrOgMX/Y1QxWUwedTiKxS5nqe4LyaQzx76', NULL, '2022-07-04 20:55:47', '2022-07-04 20:55:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos`
--
ALTER TABLE `activos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activos_idtact_foreign` (`IdTAct`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_asignacions`
--
ALTER TABLE `detalle_asignacions`
  ADD PRIMARY KEY (`IdE`,`IdO`,`IdD`,`IdAct`),
  ADD KEY `detalle_asignacions_idact_foreign` (`IdAct`),
  ADD KEY `detalle_asignacions_ido_foreign` (`IdO`),
  ADD KEY `detalle_asignacions_idd_foreign` (`IdD`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
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
-- Indices de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `tipo_activos`
--
ALTER TABLE `tipo_activos`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_activos`
--
ALTER TABLE `tipo_activos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  ADD CONSTRAINT `activos_idtact_foreign` FOREIGN KEY (`IdTAct`) REFERENCES `tipo_activos` (`id`);

--
-- Filtros para la tabla `detalle_asignacions`
--
ALTER TABLE `detalle_asignacions`
  ADD CONSTRAINT `detalle_asignacions_idact_foreign` FOREIGN KEY (`IdAct`) REFERENCES `activos` (`id`),
  ADD CONSTRAINT `detalle_asignacions_idd_foreign` FOREIGN KEY (`IdD`) REFERENCES `departamentos` (`id`),
  ADD CONSTRAINT `detalle_asignacions_ide_foreign` FOREIGN KEY (`IdE`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `detalle_asignacions_ido_foreign` FOREIGN KEY (`IdO`) REFERENCES `oficinas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
