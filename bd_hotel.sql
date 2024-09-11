-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2024 a las 14:19:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_hotel`
--
CREATE DATABASE IF NOT EXISTS `bd_hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_hotel`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` tinyint(4) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `nombre`) VALUES
(101, '1 Estrella'),
(102, '2 Estrellas'),
(103, '3 Estrellas'),
(104, '4 Estrellas'),
(105, '5 Estrellas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `ciudad_id` smallint(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `pais_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`ciudad_id`, `nombre`, `pais_id`) VALUES
(1, 'Guatemala', 1),
(2, 'Retahuleu', 1),
(4, 'Acapulco', 2),
(5, 'Cancún', 2),
(7, 'Cartagena', 3),
(8, 'Bogota', 3),
(11, 'Cartago', 4),
(13, 'Rio de Janeiro', 5),
(14, 'Sao Paulo', 5),
(16, 'Cusco', 6),
(17, 'Limar', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo_electronico` varchar(80) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `contrasenia` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `nombre`, `apellido`, `nit`, `telefono`, `correo_electronico`, `direccion`, `contrasenia`) VALUES
(1, 'Estefania', 'Arocas Pasadas', '546212121', 938205580, 'teta@intercom.es', 'AVENIDA JIMÉNEZ # 4 - 69', '123'),
(2, 'Queralt', 'Viso Gilgabert', '625215452', 936545115, 'tomasa@hotmail.com', 'CRA 3 # 12 B 55', '123'),
(3, 'Joan', 'Ayala Ferreas', '649212123', 938202768, 'tremenda@altecom.es', 'CALLE 12 # 3 - 92', '123'),
(4, 'Joan', 'Baez Tejado', '645121212', 938727844, 'tripa@intercom.es', 'CALLE 12 D # 4 -15', '123'),
(5, 'Marc', 'Bastardes Soto', '648221111', 938350521, 'verruga@hotmail.com', 'CALLE 12 # 3', '123'),
(6, 'Josep', 'Anguera VilaFranca', '658444412', 938755645, 'sincer@altecom.es', 'CARRERA 3 # 12 B 79', '123'),
(7, 'Esther', 'Pascual Aloy', '654899994', 936520547, 'sincera@hotmail.com', 'CALLE 12 # 3', '123'),
(8, 'Laura', 'Vallés Girvent', '625411320', 936565656, 'suau@hotmail.com', 'CARRERA 3 # 12 B 79', '123'),
(9, 'Raquel', 'Raya García', '690522200', 936752156, 'superman@altecom.es', 'CRA 4 # 12 -15', '123'),
(10, 'Joan', 'Andreu Cruz', '647821111', 938300025, 'superwoman@wandoo.es', 'CLL 12B # 1-44', '123'),
(11, 'Maria Isabel', 'Baraldes Comas', '632548744', 938385567, 'tablon@hotmail.com', 'CALLE 10 # 2 - 99', '123'),
(12, 'Adriá', 'Berengueras Cullés', '632986321', 937809812, 'tendre@terra.es', 'CRA 3 # 12B - 35', '123'),
(13, 'Gerard', 'Lopez de Pablo García Ucéda', '647111021', 936520741, 'ronc@cataloniamail.com', 'CRA 6 # 10 - 38', '123'),
(14, 'Eliot', 'Arnau Moreno', '625481111', 938202456, 'sabrosa@hotmail.com', 'CARRERA 3 # 12 D 46', '123'),
(15, 'Jordi', 'Raya Gavilan', '648555214', 938754554, 'salsa@cataloniamail.com', 'CRA 1A # 12B - 12', '123'),
(16, 'Lluís', 'Zambudio Filgus', '621114452', 936875544, 'romeo@intercom.es', 'AV. JIMENEZ # 4 - 77', '123'),
(17, 'Laura', 'Bidault Cúlleres', '645874112', 935880712, 'roman@wandoo.es', 'CALLE 12 # 3 - 45', '123'),
(18, 'Jordi', 'Biosca Fontanet', '632125482', 936875255, 'rockera@terra.es', 'CRA 1A # 12B -26', '123'),
(19, 'Dounya', 'Zafra Altado', '621445221', 936542775, 'rica@terra.es', 'CALLE 10 # 2 - 82', '123'),
(20, 'Julio', 'Aleu Ircart', '621455662', 938773545, 'rene@intercom.es', 'CRA 3 # 15 - 47 ANTIGUA', '123'),
(21, 'Andreu', 'Badia Torné', '658954422', 938200022, 'rebeca@cataloniamail.com', 'CRA 2 # 12 - 84', '123'),
(22, 'Ramon', 'Morales Gese', '652148555', 936512545, 'rebelde@intercom.es', 'CRA 3 # 12D -50', '123'),
(23, 'David-Jese', 'Blanco Fontanet', '625477881', 937785655, 'pelusa@hotmail.com', 'CALLE 12 D # 4 -31', '123'),
(24, 'Aran', 'Alvarez Férnandez', '648555552', 938300385, 'perla@cataloniamail.com', 'CALLE 12 D # 4 - 37', '123'),
(25, 'Gema', 'Garcia Almoguera', '690254111', 936520471, 'psicosis@intercom.es', 'CARREA 4# 12 C 34', '123'),
(26, 'Ivan', 'Libori Figueroas', '632587441', 936012445, 'napoleon@cidet.com', 'CRA 4 # 12C -34', '123'),
(27, 'David-Jese', 'Bidault Cúlleres', '602412052', 934500611, 'orondo@altecom.es', 'CRA 1 NO. 12-27', '123'),
(28, 'Xavier', 'Benites José', '625411014', 937885544, 'papagayo@altecom.es', 'CRA 3 # 12B', '123'),
(29, 'Mario', 'Pascual Flores', '654822414', 936512105, 'merche@terra.es', 'CLL 17 2', '123'),
(30, 'Jesus', 'Ayala Torné', '698774444', 938202200, 'midas@cataloniamail.com', 'CLL 10 # 5-72', '123'),
(31, 'Gemma', 'Listan Figueras', '602111254', 939965585, 'mona lisa@minorisa.es', 'CLL 10 # 5-72', '123'),
(32, 'Silvia', 'Rasero Gavilan', '599191544', 934111475, 'moro@minorisa.es', 'Cra. 4 # 12 C - 14', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_reservacion`
--

CREATE TABLE `detalle_reservacion` (
  `reservacion_id` int(11) NOT NULL,
  `habitacion_id` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `nombre_reservacion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_reservacion`
--

INSERT INTO `detalle_reservacion` (`reservacion_id`, `habitacion_id`, `fecha_ingreso`, `fecha_salida`, `nombre_reservacion`) VALUES
(1, 13, '2019-01-01', '2019-01-04', 'Queralt Viso Gilgabert'),
(2, 62, '2019-01-02', '2019-01-05', 'Marc Bastardes Soto'),
(3, 1, '2019-01-03', '2019-01-06', 'Xavier Benites José'),
(4, 95, '2019-01-04', '2019-01-07', 'David-Jese Blanco Fontanet'),
(5, 55, '2019-01-05', '2019-01-08', 'Mario Pascual Flores'),
(6, 7, '2019-01-06', '2019-01-09', 'Silvia Rasero Gavilan'),
(7, 51, '2019-01-07', '2019-01-10', 'Marc Bastardes Soto'),
(8, 95, '2019-01-08', '2019-01-11', 'Josep Anguera VilaFranca'),
(9, 84, '2019-01-09', '2019-01-12', 'David-Jese Bidault Cúlleres'),
(10, 56, '2019-01-10', '2019-01-13', 'Lluís Zambudio Filgus'),
(11, 73, '2019-01-11', '2019-01-14', 'Jordi Biosca Fontanet'),
(12, 43, '2019-01-12', '2019-01-15', 'Dounya Zafra Altado'),
(13, 27, '2019-01-13', '2019-01-16', 'Julio Aleu Ircart'),
(14, 11, '2019-01-14', '2019-01-17', 'Aran Alvarez Férnandez'),
(15, 62, '2019-01-15', '2019-01-18', 'Lluís Zambudio Filgus'),
(16, 91, '2019-01-16', '2019-01-19', 'Eliot Arnau Moreno'),
(17, 36, '2019-01-17', '2019-01-20', 'Dounya Zafra Altado'),
(18, 68, '2019-01-18', '2019-01-21', 'Laura Bidault Cúlleres'),
(19, 90, '2019-01-19', '2019-01-22', 'Gema Garcia Almoguera'),
(20, 2, '2019-01-20', '2019-01-23', 'Dounya Zafra Altado'),
(21, 78, '2019-01-21', '2019-01-24', 'Maria Isabel Baraldes Comas'),
(22, 63, '2019-01-22', '2019-01-25', 'Queralt Viso Gilgabert'),
(23, 30, '2019-01-23', '2019-01-26', 'Julio Aleu Ircart'),
(24, 58, '2019-01-24', '2019-01-27', 'Eliot Arnau Moreno'),
(25, 72, '2019-01-25', '2019-01-28', 'Jesus Ayala Torné'),
(26, 38, '2019-01-26', '2019-01-29', 'Andreu Badia Torné'),
(27, 25, '2019-01-27', '2019-01-30', 'Laura Vallés Girvent'),
(28, 32, '2019-01-28', '2019-01-31', 'Esther Pascual Aloy'),
(29, 70, '2019-01-29', '2019-02-01', 'David-Jese Blanco Fontanet'),
(30, 58, '2019-01-30', '2019-02-02', 'Gema Garcia Almoguera'),
(31, 105, '2019-01-31', '2019-02-03', 'Marc Bastardes Soto'),
(32, 30, '2019-02-01', '2019-02-04', 'Xavier Benites José'),
(33, 31, '2019-02-02', '2019-02-05', 'Laura Vallés Girvent'),
(34, 52, '2019-02-03', '2019-02-06', 'Joan Baez Tejado'),
(35, 5, '2019-02-04', '2019-02-07', 'Marc Bastardes Soto'),
(36, 90, '2019-02-05', '2019-02-08', 'Esther Pascual Aloy'),
(37, 94, '2019-02-06', '2019-02-09', 'Josep Anguera VilaFranca'),
(38, 25, '2019-02-07', '2019-02-10', 'Joan Andreu Cruz'),
(39, 45, '2019-02-08', '2019-02-11', 'Adriá Berengueras Cullés'),
(40, 83, '2019-02-09', '2019-02-12', 'Laura Vallés Girvent'),
(41, 22, '2019-02-10', '2019-02-13', 'Raquel Raya García'),
(42, 101, '2019-02-11', '2019-02-14', 'Julio Aleu Ircart'),
(43, 78, '2019-02-12', '2019-02-15', 'Eliot Arnau Moreno'),
(44, 100, '2019-02-13', '2019-02-16', 'Lluís Zambudio Filgus'),
(45, 81, '2019-02-14', '2019-02-17', 'Julio Aleu Ircart'),
(46, 61, '2019-02-15', '2019-02-18', 'Andreu Badia Torné'),
(47, 71, '2019-02-16', '2019-02-19', 'Queralt Viso Gilgabert'),
(48, 36, '2019-02-17', '2019-02-20', 'Queralt Viso Gilgabert'),
(49, 104, '2019-02-18', '2019-02-21', 'Jordi Biosca Fontanet'),
(50, 45, '2019-02-19', '2019-02-22', 'Estefania Arocas Pasadas'),
(51, 103, '2019-02-20', '2019-02-23', 'Jordi Biosca Fontanet'),
(52, 91, '2019-02-21', '2019-02-24', 'Raquel Raya García'),
(53, 51, '2019-02-22', '2019-02-25', 'Esther Pascual Aloy'),
(54, 27, '2019-02-23', '2019-02-26', 'Marc Bastardes Soto'),
(55, 97, '2019-02-24', '2019-02-27', 'Ivan Libori Figueroas'),
(56, 14, '2019-02-25', '2019-02-28', 'Andreu Badia Torné'),
(57, 83, '2019-02-26', '2019-03-01', 'Aran Alvarez Férnandez'),
(58, 50, '2019-02-27', '2019-03-02', 'Andreu Badia Torné'),
(59, 78, '2019-02-28', '2019-03-03', 'David-Jese Bidault Cúlleres'),
(60, 1, '2019-03-01', '2019-03-04', 'Joan Baez Tejado'),
(61, 98, '2019-03-02', '2019-03-05', 'Ivan Libori Figueroas'),
(62, 68, '2019-03-03', '2019-03-06', 'Laura Bidault Cúlleres'),
(63, 31, '2019-03-04', '2019-03-07', 'Jesus Ayala Torné'),
(64, 94, '2019-03-05', '2019-03-08', 'Julio Aleu Ircart'),
(65, 39, '2019-03-06', '2019-03-09', 'Jesus Ayala Torné'),
(66, 45, '2019-03-07', '2019-03-10', 'Ramon Morales Gese'),
(67, 1, '2019-03-08', '2019-03-11', 'David-Jese Bidault Cúlleres'),
(68, 12, '2019-03-09', '2019-03-12', 'Joan Baez Tejado'),
(69, 21, '2019-03-10', '2019-03-13', 'Julio Aleu Ircart'),
(70, 86, '2019-03-11', '2019-03-14', 'Josep Anguera VilaFranca'),
(71, 97, '2019-03-12', '2019-03-15', 'Silvia Rasero Gavilan'),
(72, 75, '2019-03-13', '2019-03-16', 'Dounya Zafra Altado'),
(73, 34, '2019-03-14', '2019-03-17', 'Lluís Zambudio Filgus'),
(74, 63, '2019-03-15', '2019-03-18', 'Mario Pascual Flores'),
(75, 88, '2019-03-16', '2019-03-19', 'Mario Pascual Flores'),
(76, 102, '2019-03-17', '2019-03-20', 'Gerard Lopez de Pablo García Ucéda'),
(77, 57, '2019-03-18', '2019-03-21', 'Lluís Zambudio Filgus'),
(78, 15, '2019-03-19', '2019-03-22', 'Joan Baez Tejado'),
(79, 41, '2019-03-20', '2019-03-23', 'Gemma Listan Figueras'),
(80, 45, '2019-03-21', '2019-03-24', 'Eliot Arnau Moreno'),
(81, 47, '2019-03-22', '2019-03-25', 'Gemma Listan Figueras'),
(82, 50, '2019-03-23', '2019-03-26', 'Estefania Arocas Pasadas'),
(83, 49, '2019-03-24', '2019-03-27', 'David-Jese Blanco Fontanet'),
(84, 95, '2019-03-25', '2019-03-28', 'Laura Vallés Girvent'),
(85, 90, '2019-03-26', '2019-03-29', 'Gema Garcia Almoguera'),
(86, 28, '2019-03-27', '2019-03-30', 'Ivan Libori Figueroas'),
(87, 53, '2019-03-28', '2019-03-31', 'Silvia Rasero Gavilan'),
(88, 23, '2019-03-29', '2019-04-01', 'Mario Pascual Flores'),
(89, 64, '2019-03-30', '2019-04-02', 'Mario Pascual Flores'),
(90, 24, '2019-03-31', '2019-04-03', 'Eliot Arnau Moreno'),
(91, 28, '2019-04-01', '2019-04-04', 'Xavier Benites José'),
(92, 9, '2019-04-02', '2019-04-05', 'Queralt Viso Gilgabert'),
(93, 11, '2019-04-03', '2019-04-06', 'Gemma Listan Figueras'),
(94, 88, '2019-04-04', '2019-04-07', 'Jordi Raya Gavilan'),
(95, 42, '2019-04-05', '2019-04-08', 'Xavier Benites José'),
(96, 75, '2019-04-06', '2019-04-09', 'Joan Andreu Cruz'),
(97, 15, '2019-04-07', '2019-04-10', 'Joan Andreu Cruz'),
(98, 57, '2019-04-08', '2019-04-11', 'Gerard Lopez de Pablo García Ucéda'),
(99, 57, '2019-04-12', '2019-04-15', 'Raquel Raya García');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `factura_id` int(11) NOT NULL,
  `noserie` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `reservacion_id` int(11) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `habitacion_id` int(11) NOT NULL,
  `hotel_id` smallint(6) NOT NULL,
  `tipo_id` tinyint(4) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`habitacion_id`, `hotel_id`, `tipo_id`, `descripcion`, `precio`, `usuario_id`) VALUES
(1, 2, 2, 'Habitación para 4 personas', 150.00, 100),
(2, 3, 1, 'Habitación para 2 personas', 152.50, 301),
(3, 4, 2, 'Habitación para 1 persona', 475.50, 300),
(4, 5, 1, 'Habitación para 6 personas', 375.00, 777),
(5, 1, 1, 'Habitación para 4 personas', 250.00, 2),
(6, 4, 2, 'Habitación para 2 personas', 200.00, 5),
(7, 15, 1, 'Habitación para 1 persona', 150.00, 100),
(8, 16, 1, 'Habitación para 6 personas', 175.00, 200),
(9, 14, 1, 'Habiatacion para 2 personas con 2 camas', 200.00, 301),
(10, 13, 2, 'Habitación para 4 personas con 2 camas', 125.00, 777),
(11, 12, 2, 'Habitación para 4 personas con 4 camas', 430.00, 300),
(12, 2, 1, 'Habitación para 4 personas', 210.00, 2),
(13, 5, 2, 'Habitación para 2 personas', 158.00, 5),
(14, 3, 1, 'Habitación para 1 persona', 375.00, 100),
(15, 6, 2, 'Habitación para 6 personas', 58.00, 200),
(16, 10, 1, 'Habiatacion para 2 personas con 2 camas', 123.00, 301),
(17, 7, 2, 'Habitación para 4 personas con 2 camas', 350.00, 777),
(18, 11, 1, 'Habitación para 4 personas con 4 camas', 550.00, 300),
(19, 9, 2, 'Habitación para 4 personas', 250.00, 2),
(20, 8, 2, 'Habitación para 2 personas', 200.00, 5),
(21, 1, 2, 'Habitación para 1 persona', 150.00, 100),
(22, 4, 1, 'Habitación para 6 personas', 175.00, 200),
(23, 15, 2, 'Habiatacion para 2 personas con 2 camas', 200.00, 301),
(24, 16, 1, 'Habitación para 4 personas con 2 camas', 125.00, 777),
(25, 14, 1, 'Habitación para 4 personas con 4 camas', 430.00, 300),
(26, 13, 1, 'Habitación para 4 personas', 210.00, 2),
(27, 12, 2, 'Habitación para 2 personas', 158.00, 5),
(28, 2, 2, 'Habitación para 1 persona', 375.00, 100),
(29, 5, 1, 'Habitación para 6 personas', 58.00, 200),
(30, 3, 2, 'Habiatacion para 2 personas con 2 camas', 123.00, 301),
(31, 6, 1, 'Habitación para 4 personas con 2 camas', 350.00, 777),
(32, 10, 2, 'Habitación para 4 personas con 4 camas', 550.00, 300),
(33, 7, 1, 'Habitación para 4 personas', 250.00, 2),
(34, 11, 2, 'Habitación para 2 personas', 200.00, 5),
(35, 9, 1, 'Habitación para 1 persona', 150.00, 100),
(36, 8, 2, 'Habitación para 6 personas', 175.00, 200),
(37, 1, 2, 'Habiatacion para 2 personas con 2 camas', 200.00, 301),
(38, 4, 2, 'Habitación para 4 personas con 2 camas', 125.00, 777),
(39, 15, 1, 'Habitación para 4 personas con 4 camas', 430.00, 300),
(40, 16, 2, 'Habitación para 4 personas', 210.00, 2),
(41, 14, 1, 'Habitación para 2 personas', 158.00, 5),
(42, 13, 1, 'Habitación para 1 persona', 375.00, 100),
(43, 12, 1, 'Habitación para 6 personas', 58.00, 200),
(44, 2, 2, 'Habiatacion para 2 personas con 2 camas', 123.00, 301),
(45, 5, 2, 'Habitación para 4 personas con 2 camas', 350.00, 777),
(46, 3, 1, 'Habitación para 4 personas con 4 camas', 550.00, 300),
(47, 6, 2, 'Habitación para 4 personas', 250.00, 2),
(48, 10, 1, 'Habitación para 2 personas', 200.00, 5),
(49, 7, 2, 'Habitación para 1 persona', 150.00, 100),
(50, 11, 1, 'Habitación para 6 personas', 175.00, 200),
(51, 9, 2, 'Habiatacion para 2 personas con 2 camas', 200.00, 301),
(52, 8, 1, 'Habitación para 4 personas con 2 camas', 125.00, 777),
(53, 1, 2, 'Habitación para 4 personas con 4 camas', 430.00, 300),
(54, 4, 2, 'Habitación para 4 personas', 210.00, 2),
(55, 15, 2, 'Habitación para 2 personas', 158.00, 5),
(56, 16, 1, 'Habitación para 1 persona', 375.00, 100),
(57, 14, 2, 'Habitación para 6 personas', 58.00, 200),
(58, 13, 1, 'Habiatacion para 2 personas con 2 camas', 123.00, 301),
(59, 12, 1, 'Habitación para 4 personas con 2 camas', 350.00, 777),
(60, 2, 1, 'Habitación para 4 personas con 4 camas', 550.00, 300),
(61, 5, 2, 'Habitación para 4 personas', 250.00, 2),
(62, 3, 2, 'Habitación para 2 personas', 200.00, 5),
(63, 6, 1, 'Habitación para 1 persona', 150.00, 100),
(64, 10, 2, 'Habitación para 6 personas', 175.00, 200),
(65, 7, 1, 'Habiatacion para 2 personas con 2 camas', 200.00, 301),
(66, 11, 2, 'Habitación para 4 personas con 2 camas', 125.00, 777),
(67, 9, 1, 'Habitación para 4 personas con 4 camas', 430.00, 300),
(68, 8, 2, 'Habitación para 4 personas', 210.00, 2),
(69, 1, 1, 'Habitación para 2 personas', 158.00, 5),
(70, 4, 2, 'Habitación para 1 persona', 375.00, 100),
(71, 15, 2, 'Habitación para 6 personas', 58.00, 200),
(72, 16, 2, 'Habiatacion para 2 personas con 2 camas', 123.00, 301),
(73, 14, 1, 'Habitación para 4 personas con 2 camas', 350.00, 777),
(74, 13, 2, 'Habitación para 4 personas con 4 camas', 550.00, 300),
(75, 12, 1, 'Habitación para 4 personas', 250.00, 2),
(76, 2, 1, 'Habitación para 2 personas', 200.00, 5),
(77, 5, 1, 'Habitación para 1 persona', 150.00, 100),
(78, 3, 2, 'Habitación para 6 personas', 175.00, 200),
(79, 6, 2, 'Habiatacion para 2 personas con 2 camas', 200.00, 301),
(80, 10, 1, 'Habitación para 4 personas con 2 camas', 125.00, 777),
(81, 7, 2, 'Habitación para 4 personas con 4 camas', 430.00, 300),
(82, 11, 1, 'Habitación para 4 personas', 210.00, 2),
(83, 9, 2, 'Habitación para 2 personas', 158.00, 5),
(84, 8, 1, 'Habitación para 1 persona', 375.00, 100),
(85, 1, 2, 'Habitación para 6 personas', 58.00, 200),
(86, 4, 1, 'Habiatacion para 2 personas con 2 camas', 123.00, 301),
(87, 15, 2, 'Habitación para 4 personas con 2 camas', 350.00, 777),
(88, 16, 2, 'Habitación para 4 personas con 4 camas', 550.00, 300),
(89, 14, 2, 'Habitación para 4 personas', 250.00, 2),
(90, 13, 1, 'Habitación para 2 personas', 200.00, 5),
(91, 12, 2, 'Habitación para 1 persona', 150.00, 100),
(92, 2, 1, 'Habitación para 6 personas', 175.00, 200),
(93, 5, 1, 'Habiatacion para 2 personas con 2 camas', 200.00, 301),
(94, 3, 1, 'Habitación para 4 personas con 2 camas', 125.00, 777),
(95, 6, 2, 'Habitación para 4 personas con 4 camas', 430.00, 300),
(96, 10, 2, 'Habitación para 4 personas', 210.00, 2),
(97, 7, 1, 'Habitación para 2 personas', 158.00, 5),
(98, 11, 2, 'Habitación para 1 persona', 375.00, 100),
(99, 9, 1, 'Habitación para 6 personas', 58.00, 200),
(100, 8, 2, 'Habiatacion para 2 personas con 2 camas', 123.00, 301),
(101, 1, 1, 'Habitación para 4 personas con 2 camas', 350.00, 777),
(102, 4, 2, 'Habitación para 4 personas con 4 camas', 550.00, 300),
(103, 15, 1, 'Habitación para 4 personas', 250.00, 2),
(104, 19, 2, 'Habitacion 2 personas', 175.00, 777),
(105, 15, 2, 'Habitacion para 2 personas', 145.00, 777),
(112, 24, 1, 'Habitacion para 2 personas', 145.00, 777),
(116, 25, 1, 'Habitacion para 2 personas', 145.00, 777),
(119, 26, 1, 'Habitacion para 2 personas', 145.00, 777),
(121, 27, 1, 'Habitacion para 2 personas', 145.00, 777);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteles`
--

CREATE TABLE `hoteles` (
  `hotel_id` smallint(6) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `correoelectronico` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `ciudad_id` smallint(6) NOT NULL,
  `categoria_id` tinyint(4) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `hoteles`
--

INSERT INTO `hoteles` (`hotel_id`, `nombre`, `correoelectronico`, `telefono`, `direccion`, `ciudad_id`, `categoria_id`, `usuario_id`) VALUES
(1, 'Gran Jaguar', 'jaguar@gmail.com', 77894512, 'Biotopo quezal km 250 carretera a Coban', 4, 105, 100),
(2, 'Real InterContinental', 'realinter@hotmail.com', 24105578, '14 Calle 2-51 Zona 10, Guatemala City, Guatemala', 1, 102, 100),
(3, 'Gran Tikal Futura Hotel', 'grantikhot@hotel.com', 20104789, 'Calzada Roosevelt 22-43, Zona 11, Guatemala City, Guatemala', 2, 103, 777),
(4, 'Casa Bourbon Hote', 'bourbonHote@gmail.com', 79365412, 'km. 180.5 carretera al Pacífico, Retalhuleu', 4, 105, 777),
(5, 'Hotel Y Restaurante Río Reu', 'RioReu@yahoo.es', 79364521, 'Klm. 181.15 Santa Cruz Muluá, Retalhuleu 11003', 5, 104, 301),
(6, 'Santa Clara', 'santaclara@outlook.es', 45789632, 'calle principal km 192.5 ruta a takalik abaj, Retalhuleu', 7, 103, 300),
(7, 'Palomar', 'santapalomar@gmail.com', 12345678, 'Km 178.5 Santa Cruz Muluá (A 1 minuto de Xocomil y Xetulul), Retalhuleu 11007', 8, 102, 200),
(8, 'TriCentenario', 'centenario@mihotel.com', 54123698, '1300 Lilac Lane, 2 Blocks West Of Hwy 99 On Hwy 24, Wamego, KS', 11, 105, 100),
(9, 'Hospedajon', 'hospjd12@yahoo.es', 12784596, 'St. George, Kansas', 13, 105, 777),
(10, 'Los locos', 'loquis@23@gmail.com', 25369874, ' Manuel Antonio 1300 Lilac Lane, 2 Blocks West Of Hwy 99', 14, 105, 100),
(11, 'La GInebra', 'ginegine@hotmail.com', 45698732, 'calle principal km 192.5 ruta aSt. George, Kansas', 16, 105, 200),
(12, 'El abuelo ', 'grandpa@hotmail.es', 60865203, '1300 Lilac Lane, 2 Blocks West Of Hwy 99 On Hwy 24, Wamego, KS', 17, 104, 301),
(13, 'Las pajaras', 'biords@gmail.com', 77322271, 'St. George, Kansas Calzada Roosevelt 22-43, Zona 11', 7, 103, 300),
(14, 'Los amuletos', 'amulets@outlook.es', 93779339, 'Km 178.5 Santa Cruz Muluá (A 1 minuto de Xocomil y Xetulul)22-43, Zona 11a', 8, 105, 300),
(15, 'Las ruinas', 'ruinruin@mihotel.com', 110236407, 'Calzada Roosevelt 22-43, Zona 11, Guatemala City, Guatemala', 1, 104, 300),
(16, 'Agua verde', 'aguasverdes@hui5.com', 126693475, '1300 Lilac Lane, 2 Blocks West Of Hwy 99 On Hwy 24, Wamego, KS', 13, 104, 100),
(19, 'Santo Thomas ', 'HotelSantoTomas@hotmail.com', 78451345, 'Zona 4', 8, 103, 777),
(20, 'Grand HotelContinental', 'Continental@mihotel.com', 24104578, 'Zona 5', 2, 103, 777),
(24, 'El Buen Viajero', 'Viajero@outlook.es', 12345678, 'Zona 5, barrio Chihuahua', 5, 103, 777),
(25, 'Años de Estancia', 'estancia@outlook.es', 45789423, 'Barrio vieneBIen, zona 4', 11, 103, 777),
(26, 'Guerrero Maya', 'Mayan@yahoo.es', 79254678, '4-35, 3 Avenida, Zona 5', 2, 104, 777),
(27, 'SIempre Feliz', 'feliz@gmail.com', 12345678, 'Zona 4, Carretera Marcial', 1, 103, 777);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `pais_id` smallint(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `codigo_area` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`pais_id`, `nombre`, `codigo_area`) VALUES
(1, 'Guatemala', 502),
(2, 'Mexico', 52),
(3, 'Colombia', 57),
(4, 'Costa Rica', 506),
(5, 'Brasil', 55),
(6, 'Peru', 51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

CREATE TABLE `reservaciones` (
  `reservacion_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `hotel_id` smallint(6) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reservaciones`
--

INSERT INTO `reservaciones` (`reservacion_id`, `fecha`, `cliente_id`, `hotel_id`, `descripcion`, `usuario_id`) VALUES
(1, '2018-12-31', 2, 5, '2 personas', 777),
(2, '2019-01-01', 5, 3, '2 personas', 777),
(3, '2019-01-02', 28, 2, '4 personas', 777),
(4, '2019-01-03', 23, 6, '4 personas', 777),
(5, '2019-01-04', 29, 15, '2 personas', 777),
(6, '2019-01-05', 32, 15, '1 persona', 777),
(7, '2019-01-06', 5, 9, '2 personas', 777),
(8, '2019-01-07', 6, 6, '4 personas', 777),
(9, '2019-01-08', 27, 8, '1 persona', 777),
(10, '2019-01-09', 16, 16, '1 persona', 777),
(11, '2019-01-10', 18, 14, '4 personas', 777),
(12, '2019-01-11', 19, 12, '6 personas', 777),
(13, '2019-01-12', 20, 12, '2 personas', 777),
(14, '2019-01-13', 24, 12, '4 personas', 777),
(15, '2019-01-14', 16, 3, '2 personas', 777),
(16, '2019-01-15', 14, 12, '1 persona', 777),
(17, '2019-01-16', 19, 8, '6 personas', 777),
(18, '2019-01-17', 17, 8, '4 personas', 777),
(19, '2019-01-18', 25, 13, '2 personas', 777),
(20, '2019-01-19', 19, 3, '2 personas', 777),
(21, '2019-01-20', 11, 3, '6 personas', 777),
(22, '2019-01-21', 2, 6, '1 persona', 777),
(23, '2019-01-22', 20, 3, '2 personas', 777),
(24, '2019-01-23', 14, 13, '2 personas', 777),
(25, '2019-01-24', 30, 16, '2 personas', 777),
(26, '2019-01-25', 21, 4, '4 personas', 777),
(27, '2019-01-26', 8, 14, '4 personas', 777),
(28, '2019-01-27', 7, 10, '4 personas', 777),
(29, '2019-01-28', 23, 4, '1 persona', 777),
(30, '2019-01-29', 25, 13, '2 personas', 777),
(31, '2019-01-30', 5, 15, '2 personas', 777),
(32, '2019-01-31', 28, 3, '2 personas', 777),
(33, '2019-02-01', 8, 6, '4 personas', 777),
(34, '2019-02-02', 3, 8, '4 personas', 777),
(35, '2019-02-03', 5, 1, '4 personas', 777),
(36, '2019-02-04', 7, 13, '2 personas', 777),
(37, '2019-02-05', 6, 3, '4 personas', 777),
(38, '2019-02-06', 10, 14, '4 personas', 777),
(39, '2019-02-07', 12, 5, '4 personas', 777),
(40, '2019-02-08', 8, 9, '2 personas', 777),
(41, '2019-02-09', 9, 4, '6 personas', 777),
(42, '2019-02-10', 20, 1, '4 personas', 777),
(43, '2019-02-11', 14, 3, '6 personas', 777),
(44, '2019-02-12', 16, 8, '2 personas', 777),
(45, '2019-02-13', 20, 7, '4 personas', 777),
(46, '2019-02-14', 21, 5, '4 personas', 777),
(47, '2019-02-15', 2, 15, '6 personas', 777),
(48, '2019-02-16', 2, 8, '6 personas', 777),
(49, '2019-02-17', 18, 19, '2 personas', 777),
(50, '2019-02-18', 1, 5, '4 personas', 777),
(51, '2019-02-19', 18, 15, '4 personas', 777),
(52, '2019-02-20', 9, 12, '1 persona', 777),
(53, '2019-02-21', 7, 9, '2 personas', 777),
(54, '2019-02-22', 5, 12, '2 personas', 777),
(55, '2019-02-23', 26, 7, '2 personas', 777),
(56, '2019-02-24', 21, 3, '1 persona', 777),
(57, '2019-02-25', 24, 9, '2 personas', 777),
(58, '2019-02-26', 21, 11, '6 personas', 777),
(59, '2019-02-27', 27, 3, '6 personas', 777),
(60, '2019-02-28', 4, 2, '4 personas', 777),
(61, '2019-03-01', 26, 11, '1 persona', 777),
(62, '2019-03-02', 17, 8, '4 personas', 777),
(63, '2019-03-03', 30, 6, '4 personas', 777),
(64, '2019-03-04', 20, 3, '4 personas', 777),
(65, '2019-03-05', 30, 15, '4 personas', 777),
(66, '2019-03-06', 22, 5, '4 personas', 777),
(67, '2019-03-07', 27, 2, '4 personas', 777),
(68, '2019-03-08', 4, 2, '4 personas', 777),
(69, '2019-03-09', 20, 1, '1 persona', 777),
(70, '2019-03-10', 6, 4, '2 personas', 777),
(71, '2019-03-11', 32, 7, '2 personas', 777),
(72, '2019-03-12', 19, 12, '4 personas', 777),
(73, '2019-03-13', 16, 11, '2 personas', 777),
(74, '2019-03-14', 29, 6, '1 persona', 777),
(75, '2019-03-15', 29, 16, '4 personas', 777),
(76, '2019-03-16', 13, 4, '4 personas', 777),
(77, '2019-03-17', 16, 14, '6 personas', 777),
(78, '2019-03-18', 4, 6, '6 personas', 777),
(79, '2019-03-19', 31, 14, '2 personas', 777),
(80, '2019-03-20', 14, 5, '4 personas', 777),
(81, '2019-03-21', 31, 6, '4 personas', 777),
(82, '2019-03-22', 1, 11, '6 personas', 777),
(83, '2019-03-23', 23, 7, '1 persona', 777),
(84, '2019-03-24', 8, 6, '4 personas', 777),
(85, '2019-03-25', 25, 13, '2 personas', 777),
(86, '2019-03-26', 26, 2, '1 persona', 777),
(87, '2019-03-27', 32, 1, '4 personas', 777),
(88, '2019-03-28', 29, 15, '2 personas', 777),
(89, '2019-03-29', 29, 10, '6 personas', 777),
(90, '2019-03-30', 14, 16, '4 personas', 777),
(91, '2019-03-31', 28, 2, '1 persona', 777),
(92, '2019-04-01', 2, 14, '2 personas', 777),
(93, '2019-04-02', 31, 12, '4 personas', 777),
(94, '2019-04-03', 15, 16, '4 personas', 777),
(95, '2019-04-04', 28, 13, '1 persona', 777),
(96, '2019-04-05', 10, 12, '4 personas', 777),
(97, '2019-04-06', 10, 6, '6 personas', 777),
(98, '2019-04-07', 13, 14, '6 personas', 777),
(99, '2019-04-11', 9, 14, '6 personas', 777);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` tinyint(4) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Recepcionista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_habitaciones`
--

CREATE TABLE `tipos_habitaciones` (
  `tipo_id` tinyint(4) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipos_habitaciones`
--

INSERT INTO `tipos_habitaciones` (`tipo_id`, `nombre`) VALUES
(1, 'Simple'),
(2, 'Doble');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `telefono` int(8) NOT NULL,
  `direccion` varchar(70) NOT NULL,
  `correo_electronico` varchar(80) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `rol_id` tinyint(4) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `contrasenia` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `apellido`, `telefono`, `direccion`, `correo_electronico`, `fecha_nacimiento`, `rol_id`, `activo`, `contrasenia`) VALUES
(2, 'Soyla', 'Recepcionista', 22334455, 'Zona 2', 'soylarecepcionista@mihotelcom', '1990-01-01', 1, 1, '123456'),
(5, 'Juan', 'Perez', 78784545, 'Zona 13', 'holaamix@mihotel.com', '1990-01-01', 2, 2, '123456'),
(100, 'Juan', 'Alavarez', 22334455, 'Zona 5', 'juanperez@hotelgt.com', '1985-02-02', 1, 1, '123456'),
(200, 'Maria', 'Batz', 33445566, 'Zona 3', 'mariabatz@hotelesgt.com', '1995-03-03', 1, 1, '123456'),
(300, 'Martha', 'Flores', 77889900, 'Zona 7', 'marthaflores@hotelesgt.com', '1993-05-05', 1, 2, '123456'),
(301, 'Daniel', 'Urizar', 12341567, 'Zona 1', 'daniel@hotmail.com', '1999-09-14', 1, 1, '123456'),
(777, 'Soyel', 'Administrador', 33445566, 'Zona 1', 'soyeladmin@mihotel.com', '1980-01-01', 1, 1, '123456'),
(888, 'Soyel', 'Recepcionista', 54789687, 'Zona 23', 'soyelrecepcionista@mihotel.com', '1990-07-25', 1, 1, '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`ciudad_id`),
  ADD KEY `pais_id` (`pais_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`);

--
-- Indices de la tabla `detalle_reservacion`
--
ALTER TABLE `detalle_reservacion`
  ADD PRIMARY KEY (`reservacion_id`),
  ADD KEY `reservacion_id` (`reservacion_id`,`habitacion_id`),
  ADD KEY `habitacion_id` (`habitacion_id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`factura_id`,`noserie`),
  ADD KEY `cliente_id` (`reservacion_id`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`habitacion_id`),
  ADD KEY `hotel_id` (`hotel_id`,`tipo_id`),
  ADD KEY `tipo_id` (`tipo_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD PRIMARY KEY (`hotel_id`),
  ADD UNIQUE KEY `correoelectronico` (`correoelectronico`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `ciudad_id` (`ciudad_id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`pais_id`);

--
-- Indices de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD PRIMARY KEY (`reservacion_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `tipos_habitaciones`
--
ALTER TABLE `tipos_habitaciones`
  ADD PRIMARY KEY (`tipo_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `habitacion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  MODIFY `hotel_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=889;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`pais_id`);

--
-- Filtros para la tabla `detalle_reservacion`
--
ALTER TABLE `detalle_reservacion`
  ADD CONSTRAINT `detalle_reservacion_ibfk_3` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`habitacion_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_reservacion_ibfk_4` FOREIGN KEY (`reservacion_id`) REFERENCES `reservaciones` (`reservacion_id`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`reservacion_id`) REFERENCES `reservaciones` (`reservacion_id`);

--
-- Filtros para la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD CONSTRAINT `habitaciones_ibfk_2` FOREIGN KEY (`tipo_id`) REFERENCES `tipos_habitaciones` (`tipo_id`),
  ADD CONSTRAINT `habitaciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `habitaciones_ibfk_4` FOREIGN KEY (`hotel_id`) REFERENCES `hoteles` (`hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD CONSTRAINT `hoteles_ibfk_1` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudades` (`ciudad_id`),
  ADD CONSTRAINT `hoteles_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`),
  ADD CONSTRAINT `hoteles_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD CONSTRAINT `reservaciones_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `reservaciones_ibfk_3` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
