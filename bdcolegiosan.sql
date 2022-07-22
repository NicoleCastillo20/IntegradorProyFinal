-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2022 a las 00:23:57
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdcolegiosan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `IdAlumno` varchar(5) NOT NULL,
  `ApeAlumno` varchar(30) DEFAULT NULL,
  `NomAlumno` varchar(30) DEFAULT NULL,
  `Idgra` varchar(3) DEFAULT NULL,
  `PROCE` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`IdAlumno`, `ApeAlumno`, `NomAlumno`, `Idgra`, `PROCE`) VALUES
('A0001', 'Donayre Mena', 'Christian', 'E01', 'N'),
('A0002', 'Ortiz Rodriguez', 'Freddy', 'E02', 'P'),
('A0003', 'Silva Mejia', 'Ruth Ketty', 'E03', 'N'),
('A0004', 'Melendez Noriega', 'Liliana', 'E01', 'P'),
('A0005', 'Huerta Leon', 'Silvia', 'E02', 'N'),
('A0006', 'Carranza Fuentes', 'Maria Elena', 'E03', 'P'),
('A0007', 'Prado Castro', 'Gabriela', 'E01', 'N'),
('A0008', 'Atuncar Mesias', 'Juan', 'E02', 'P'),
('A0009', 'Aguilar Zavala', 'Patricia Elena', 'E03', 'P'),
('A0010', 'Rodruigez Trujillo', 'Rubén Eduardo', 'E01', 'N'),
('A0011', 'Canales Ruiz', 'Gino Leonel', 'E02', 'P'),
('A0012', 'Ruiz Quispe', 'Edgar', 'E03', 'N'),
('A0013', 'PanduroTerrazas', 'Omar', 'E01', 'P'),
('A0014', 'Zita Padilla', 'Peter Wilmer', 'E02', 'N'),
('A0015', 'Ternero Ubillús', 'Luis', 'E03', 'P'),
('A0016', 'Rivera García', 'Raúl Joel', 'E01', 'P'),
('A0017', 'Pomar García', 'Ana', 'E02', 'P'),
('A0018', 'Palomares Venegas', 'Mercedes', 'E03', 'N'),
('A0019', 'Ruiz Venegaz', 'Luis Alberto', 'E01', 'P'),
('A0020', 'Tejada Bernal', 'Janet', 'E02', 'P'),
('A0021', 'Sotelo Canales', 'Juan Carlos', 'E03', 'P'),
('A0022', 'LLosa Montalvan', 'Karla', 'E01', 'P'),
('A0023', 'Galarza Torres', 'Hugo', 'E02', 'P'),
('A0024', 'Valverde Jaramillo', 'Saul', 'E03', 'N'),
('A0025', 'Cipriano Avila', 'Roxana', 'E01', 'N'),
('A0026', 'Rodriguez Quispe', 'Luis Alberto', 'E02', 'P'),
('A0027', 'Huerta Leon', 'Marco Antonio', 'E03', 'N'),
('A0028', 'Ortiz Fuentes', 'Ana María', 'E01', 'P'),
('A0029', 'Rivera Jaramillo', 'Martha', 'E02', 'P'),
('A0030', 'Bustamante Campos', 'Guino', 'E03', 'N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id_asistencias` int(3) NOT NULL,
  `idAlumno` varchar(5) NOT NULL,
  `IdCurso` varchar(4) DEFAULT NULL,
  `nroAsis` int(11) NOT NULL,
  `diasAsis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id_asistencias`, `idAlumno`, `IdCurso`, `nroAsis`, `diasAsis`) VALUES
(1, 'A0001', 'C001', 12, 30),
(2, 'A0001', 'C002', 20, 30),
(3, 'A0001', 'C003', 25, 30),
(4, 'A0002', 'C001', 20, 30),
(5, 'A0002', 'C002', 22, 30),
(6, 'A0002', 'C003', 15, 30),
(7, 'A0003', 'C001', 23, 30),
(8, 'A0003', 'C002', 10, 30),
(9, 'A0003', 'C003', 16, 30),
(10, 'A0004', 'C001', 25, 30),
(11, 'A0004', 'C002', 20, 30),
(12, 'A0004', 'C003', 20, 30),
(13, 'A0005', 'C001', 25, 30),
(14, 'A0005', 'C002', 25, 30),
(15, 'A0005', 'C003', 25, 30),
(16, 'A0006', 'C001', 16, 30),
(17, 'A0006', 'C002', 16, 30),
(18, 'A0006', 'C003', 18, 30),
(19, 'A0007', 'C001', 20, 30),
(20, 'A0007', 'C002', 25, 30),
(21, 'A0007', 'C003', 26, 30),
(22, 'A0008', 'C001', 7, 30),
(23, 'A0008', 'C002', 16, 30),
(24, 'A0008', 'C003', 29, 30),
(25, 'A0009', 'C001', 12, 30),
(26, 'A0009', 'C002', 20, 30),
(27, 'A0009', 'C003', 25, 30),
(28, 'A0010', 'C001', 20, 30),
(29, 'A0010', 'C002', 22, 30),
(30, 'A0010', 'C003', 15, 30),
(31, 'A0011', 'C001', 23, 30),
(32, 'A0011', 'C002', 10, 30),
(33, 'A0011', 'C003', 16, 30),
(34, 'A0012', 'C001', 25, 30),
(35, 'A0012', 'C002', 20, 30),
(36, 'A0012', 'C003', 20, 30),
(37, 'A0013', 'C001', 25, 30),
(38, 'A0013', 'C002', 25, 30),
(39, 'A0013', 'C003', 25, 30),
(40, 'A0014', 'C001', 16, 30),
(41, 'A0014', 'C002', 16, 30),
(42, 'A0014', 'C003', 18, 30),
(43, 'A0015', 'C001', 20, 30),
(44, 'A0015', 'C002', 25, 30),
(45, 'A0015', 'C003', 26, 30),
(46, 'A0016', 'C001', 16, 30),
(47, 'A0016', 'C002', 16, 30),
(48, 'A0016', 'C003', 18, 30),
(49, 'A0017', 'C001', 20, 30),
(50, 'A0017', 'C002', 25, 30),
(51, 'A0017', 'C003', 26, 30),
(52, 'A0018', 'C001', 7, 30),
(53, 'A0018', 'C002', 16, 30),
(54, 'A0018', 'C003', 29, 30),
(55, 'A0019', 'C001', 12, 30),
(56, 'A0019', 'C002', 20, 30),
(57, 'A0019', 'C003', 25, 30),
(58, 'A0020', 'C001', 20, 30),
(59, 'A0020', 'C002', 22, 30),
(60, 'A0020', 'C003', 15, 30),
(61, 'A0021', 'C001', 23, 30),
(62, 'A0021', 'C002', 10, 30),
(63, 'A0021', 'C003', 16, 30),
(64, 'A0022', 'C001', 25, 30),
(65, 'A0022', 'C002', 20, 30),
(66, 'A0022', 'C003', 20, 30),
(67, 'A0023', 'C001', 25, 30),
(68, 'A0023', 'C002', 25, 30),
(69, 'A0023', 'C003', 25, 30),
(70, 'A0024', 'C001', 16, 30),
(71, 'A0024', 'C002', 16, 30),
(72, 'A0024', 'C003', 18, 30),
(73, 'A0025', 'C001', 20, 30),
(74, 'A0025', 'C002', 25, 30),
(75, 'A0025', 'C003', 26, 30),
(76, 'A0026', 'C001', 16, 30),
(77, 'A0026', 'C002', 16, 30),
(78, 'A0026', 'C003', 18, 30),
(79, 'A0027', 'C001', 15, 30),
(80, 'A0027', 'C002', 12, 30),
(81, 'A0027', 'C003', 25, 30),
(82, 'A0028', 'C001', 18, 30),
(83, 'A0028', 'C002', 18, 30),
(84, 'A0028', 'C003', 18, 30),
(85, 'A0029', 'C001', 26, 30),
(86, 'A0029', 'C002', 26, 30),
(87, 'A0029', 'C003', 28, 30),
(88, 'A0030', 'C001', 30, 30),
(89, 'A0030', 'C002', 30, 30),
(90, 'A0030', 'C003', 30, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias_profesor`
--

CREATE TABLE `asistencias_profesor` (
  `id_asistpro` int(11) NOT NULL,
  `id_profe` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `hora_entrada` varchar(15) NOT NULL,
  `fecha_salida` date DEFAULT NULL,
  `hora_salida` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asistencias_profesor`
--

INSERT INTO `asistencias_profesor` (`id_asistpro`, `id_profe`, `fecha_entrada`, `hora_entrada`, `fecha_salida`, `hora_salida`) VALUES
(1, 4, '2022-05-04', '07:50:39', '2022-05-04', '13:20:49'),
(2, 5, '2022-05-04', '07:56:47', '2022-05-04', '13:05:36'),
(3, 6, '2022-05-04', '07:28:49', '2022-05-04', '13:47:36'),
(4, 3, '2022-05-04', '07:14:14', '2022-05-04', '13:53:58'),
(5, 2, '2022-05-04', '08:54:06', '2022-05-04', '13:02:08'),
(6, 1, '2022-05-04', '08:45:08', '2022-05-04', '13:09:36'),
(7, 4, '2022-05-05', '08:59:39', '2022-05-05', '13:08:49'),
(8, 5, '2022-05-05', '14:05:36', '2022-05-05', '18:20:06'),
(9, 6, '2022-05-05', '14:00:25', '2022-05-05', '18:53:58'),
(10, 3, '2022-05-05', '14:45:14', '2022-05-05', '18:00:45'),
(11, 2, '2022-05-05', '14:20:00', '2022-05-05', '18:10:00'),
(12, 1, '2022-05-05', '14:36:14', '2022-05-05', '18:36:14'),
(13, 4, '2022-05-06', '14:36:14', '2022-05-06', '18:47:00'),
(14, 5, '2022-05-06', '07:15:17', '2022-05-06', '13:00:06'),
(15, 6, '2022-05-06', '07:00:15', '2022-05-06', '13:25:10'),
(16, 1, '2022-05-06', '07:35:19', '2022-05-06', '13:17:17'),
(17, 3, '2022-05-27', '07:28:49', '2022-05-27', '13:02:08'),
(18, 2, '2022-05-27', '08:45:08', '2022-05-27', '13:53:58'),
(19, 4, '2022-05-27', '14:05:36', '2022-05-27', '18:53:58'),
(20, 1, '2022-05-27', '14:00:25', '2022-05-27', '18:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio`
--

CREATE TABLE `colegio` (
  `id_profe` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `nom_cargo` varchar(50) NOT NULL,
  `genero` varchar(15) NOT NULL,
  `nro_documento` varchar(20) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellido_paterno` varchar(45) NOT NULL,
  `apellido_materno` varchar(45) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `correo_electronico` varchar(160) NOT NULL,
  `nom_curso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `colegio`
--

INSERT INTO `colegio` (`id_profe`, `id_horario`, `nom_cargo`, `genero`, `nro_documento`, `nombres`, `apellido_paterno`, `apellido_materno`, `telefono`, `correo_electronico`, `nom_curso`) VALUES
(1, 1, 'Administrador', 'Masculino', '70542563', 'Manuel', 'Cardenas', 'Salazar', '987425632', 'manuel@admin.com', ''),
(2, 2, 'Docente', 'Femenino', '54125632', 'Maria', 'Fernandez', 'Quispe', '987425632', 'maria@profesor.com', 'Matematica'),
(3, 1, 'Docente', 'Masculino', '41523652', 'Jorge', 'Contreras', 'Montenegro', '987425632', 'jorge@profesor.com', 'Lenguaje'),
(4, 2, 'Docente', 'Femenino', '13464324', 'Daniela', 'Gomez', 'Salvatierra', '987452156', 'daniela@profesor.com', 'RV'),
(5, 1, 'Docente', 'Masculino', '14543678', 'Fernando', 'Alarcon', 'Guevara', '988999235', 'fernando@profesor.com', 'Lenguaje'),
(6, 2, 'Docente', 'Femenino', '37125632', 'Paula', 'Alvarez', 'Guzman', '2584125', 'paula@profesor.com', 'Matematica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `IdCurso` varchar(4) NOT NULL,
  `NomCurso` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`IdCurso`, `NomCurso`) VALUES
('C001', 'Matematica'),
('C002', 'Lenguaje'),
('C003', 'RV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `Idgra` varchar(3) NOT NULL,
  `Nomgra` varchar(30) DEFAULT NULL,
  `costo` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`Idgra`, `Nomgra`, `costo`) VALUES
('E01', 'Inicial', '250'),
('E02', 'Primaria', '300'),
('E03', 'Secundaria', '350');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `hora_entrada` varchar(15) NOT NULL,
  `hora_salida` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_horario`, `descripcion`, `hora_entrada`, `hora_salida`) VALUES
(1, 'Mañana', '08:00:00', '13:00:00'),
(2, 'Tarde', '14:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `idnotas` int(5) NOT NULL,
  `IdAlumno` varchar(5) DEFAULT NULL,
  `IdCurso` varchar(4) DEFAULT NULL,
  `ExaMen` float DEFAULT NULL,
  `ExaTrim` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`idnotas`, `IdAlumno`, `IdCurso`, `ExaMen`, `ExaTrim`) VALUES
(1, 'A0001', 'C001', 11, 13),
(2, 'A0001', 'C002', 9, 13),
(3, 'A0001', 'C003', 18, 13),
(4, 'A0002', 'C001', 15, 13),
(5, 'A0002', 'C002', 11, 13),
(6, 'A0002', 'C003', 14, 13),
(7, 'A0003', 'C001', 16, 13),
(8, 'A0003', 'C002', 8, 13),
(9, 'A0003', 'C003', 7, 13),
(10, 'A0004', 'C001', 11, 13),
(11, 'A0004', 'C002', 11, 13),
(12, 'A0004', 'C003', 11, 13),
(13, 'A0005', 'C001', 17, 13),
(14, 'A0005', 'C002', 12, 13),
(15, 'A0005', 'C003', 11, 13),
(16, 'A0006', 'C001', 11, 15),
(17, 'A0006', 'C002', 11, 12),
(18, 'A0006', 'C003', 8, 13),
(19, 'A0007', 'C001', 11, 13),
(20, 'A0007', 'C002', 17, 13),
(21, 'A0007', 'C003', 11, 13),
(22, 'A0008', 'C001', 11, 13),
(23, 'A0008', 'C002', 5, 13),
(24, 'A0008', 'C003', 7, 13),
(25, 'A0009', 'C001', 11, 13),
(26, 'A0009', 'C002', 11, 13),
(27, 'A0009', 'C003', 11, 13),
(28, 'A0010', 'C001', 11, 13),
(29, 'A0010', 'C002', 11, 13),
(30, 'A0010', 'C003', 11, 13),
(31, 'A0011', 'C001', 11, 13),
(32, 'A0011', 'C002', 11, 13),
(33, 'A0011', 'C003', 11, 13),
(34, 'A0012', 'C001', 11, 13),
(35, 'A0012', 'C002', 15, 10),
(36, 'A0012', 'C003', 17, 10),
(37, 'A0013', 'C001', 11, 3),
(38, 'A0013', 'C002', 7, 10),
(39, 'A0013', 'C003', 15, 13),
(40, 'A0014', 'C001', 11, 13),
(41, 'A0014', 'C002', 12, 13),
(42, 'A0014', 'C003', 15, 13),
(43, 'A0015', 'C001', 11, 13),
(44, 'A0015', 'C002', 14, 13),
(45, 'A0015', 'C003', 15, 12),
(46, 'A0016', 'C001', 11, 13),
(47, 'A0016', 'C002', 12, 11),
(48, 'A0016', 'C003', 17, 12),
(49, 'A0021', 'C001', 11, 17),
(50, 'A0021', 'C002', 14, 3),
(51, 'A0021', 'C003', 17, 13),
(52, 'A0022', 'C001', 11, 13),
(53, 'A0022', 'C002', 8, 13),
(54, 'A0022', 'C003', 7, 13),
(55, 'A0023', 'C001', 10, 13),
(56, 'A0023', 'C002', 12, 13),
(57, 'A0023', 'C003', 18, 13),
(58, 'A0024', 'C001', 10, 3),
(59, 'A0024', 'C002', 11, 9),
(60, 'A0024', 'C003', 16, 8),
(61, 'A0025', 'C001', 1, 13),
(62, 'A0025', 'C002', 10, 18),
(63, 'A0025', 'C003', 17, 7),
(64, 'A0026', 'C001', 14, 13),
(65, 'A0026', 'C002', 10, 18),
(66, 'A0026', 'C003', 17, 7),
(67, 'A0027', 'C001', 12, 13),
(68, 'A0027', 'C002', 18, 18),
(69, 'A0027', 'C003', 17, 17),
(70, 'A0028', 'C001', 15, 13),
(71, 'A0028', 'C002', 20, 18),
(72, 'A0028', 'C003', 18, 17),
(73, 'A0029', 'C001', 15, 15),
(74, 'A0029', 'C002', 20, 20),
(75, 'A0029', 'C003', 17, 12),
(76, 'A0030', 'C001', 18, 13),
(77, 'A0030', 'C002', 11, 18),
(78, 'A0030', 'C003', 15, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `idpagos` int(5) NOT NULL,
  `IdAlumno` varchar(5) DEFAULT NULL,
  `SEMESTRE` varchar(6) DEFAULT NULL,
  `NCUOTA` int(11) DEFAULT NULL,
  `MONTO` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`idpagos`, `IdAlumno`, `SEMESTRE`, `NCUOTA`, `MONTO`) VALUES
(1, 'A0001', '2022-1', 1, '1500'),
(2, 'A0001', '2022-2', 2, '1000'),
(3, 'A0002', '2022-1', 1, '1800'),
(4, 'A0002', '2022-2', 2, '1200'),
(5, 'A0003', '2022-1', 1, '2100'),
(6, 'A0003', '2022-2', 2, '1400'),
(7, 'A0004', '2022-1', 1, '1500'),
(8, 'A0004', '2022-2', 2, '1000'),
(9, 'A0005', '2022-1', 1, '1800'),
(10, 'A0005', '2022-2', 2, '1200'),
(11, 'A0006', '2022-1', 1, '2100'),
(12, 'A0006', '2022-2', 2, '1400'),
(13, 'A0007', '2022-1', 1, '1500'),
(14, 'A0007', '2022-2', 2, '1000'),
(15, 'A0008', '2022-1', 1, '1800'),
(16, 'A0008', '2022-2', 2, '1200'),
(17, 'A0009', '2022-1', 1, '2100'),
(18, 'A0009', '2022-2', 2, '1400'),
(19, 'A0010', '2022-1', 1, '1500'),
(20, 'A0010', '2022-2', 2, '1000'),
(21, 'A0011', '2022-1', 1, '1800'),
(22, 'A0011', '2022-2', 2, '1200'),
(23, 'A0012', '2022-1', 1, '2100'),
(24, 'A0012', '2022-2', 2, '1400'),
(25, 'A0013', '2022-1', 1, '1500'),
(26, 'A0013', '2022-2', 2, '1000'),
(27, 'A0014', '2022-1', 1, '1800'),
(28, 'A0014', '2022-2', 2, '1200'),
(29, 'A0015', '2022-1', 1, '2100'),
(30, 'A0015', '2022-2', 2, '1400'),
(31, 'A0016', '2022-1', 1, '1500'),
(32, 'A0016', '2022-2', 2, '1000'),
(33, 'A0017', '2022-1', 1, '1800'),
(34, 'A0017', '2022-2', 2, '1200'),
(35, 'A0018', '2022-1', 1, '2100'),
(36, 'A0018', '2022-2', 2, '1400'),
(37, 'A0019', '2022-1', 1, '1500'),
(38, 'A0019', '2022-2', 2, '1000'),
(39, 'A0020', '2022-1', 1, '1800'),
(40, 'A0020', '2022-2', 2, '1200'),
(41, 'A0021', '2022-1', 1, '2100'),
(42, 'A0021', '2022-2', 2, '1400'),
(43, 'A0022', '2022-1', 1, '1500'),
(44, 'A0022', '2022-2', 2, '1000'),
(45, 'A0023', '2022-1', 1, '1800'),
(46, 'A0023', '2022-2', 2, '1200'),
(47, 'A0024', '2022-1', 1, '2100'),
(48, 'A0024', '2022-2', 2, '1400'),
(49, 'A0025', '2022-1', 1, '1500'),
(50, 'A0025', '2022-2', 2, '1000'),
(51, 'A0026', '2022-1', 1, '1800'),
(52, 'A0026', '2022-2', 2, '1200'),
(53, 'A0027', '2022-1', 1, '2100'),
(54, 'A0027', '2022-2', 2, '1400'),
(55, 'A0028', '2022-1', 1, '1500'),
(56, 'A0028', '2022-2', 2, '1000'),
(57, 'A0029', '2022-1', 1, '1800'),
(58, 'A0029', '2022-2', 2, '1200'),
(59, 'A0030', '2022-1', 1, '2100'),
(60, 'A0030', '2022-2', 2, '1400');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_usuario`
--

CREATE TABLE `tipos_usuario` (
  `id_tipoU` int(11) NOT NULL,
  `nom_cargo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos_usuario`
--

INSERT INTO `tipos_usuario` (`id_tipoU`, `nom_cargo`) VALUES
(1, 'Docente'),
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUser` int(11) NOT NULL,
  `id_profe` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `contrasenia` varchar(45) DEFAULT NULL,
  `correo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUser`, `id_profe`, `id_tipo_usuario`, `contrasenia`, `correo`) VALUES
(1, 1, 2, '12345', 'manuel@admin.com'),
(2, 2, 1, '12345', 'maria@profesor.com'),
(3, 3, 1, '12345', 'jorge@profesor.com'),
(4, 4, 1, '12345', 'daniela@profesor.com'),
(5, 5, 1, '12345', 'fernando@profesor.com'),
(6, 6, 1, '12345', 'paula@profesor.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`IdAlumno`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id_asistencias`);

--
-- Indices de la tabla `asistencias_profesor`
--
ALTER TABLE `asistencias_profesor`
  ADD PRIMARY KEY (`id_asistpro`);

--
-- Indices de la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD PRIMARY KEY (`id_profe`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`IdCurso`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`Idgra`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`idnotas`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`idpagos`);

--
-- Indices de la tabla `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  ADD PRIMARY KEY (`id_tipoU`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id_asistencias` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `asistencias_profesor`
--
ALTER TABLE `asistencias_profesor`
  MODIFY `id_asistpro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `colegio`
--
ALTER TABLE `colegio`
  MODIFY `id_profe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `idnotas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `idpagos` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  MODIFY `id_tipoU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
