-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-06-2020 a las 06:41:21
-- Versión del servidor: 8.0.13-4
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kfLR4Hw1f7`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alumno` int(11) NOT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `egresadoDe` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `titulo` varchar(35) NOT NULL,
  `promedio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_alumno`, `id_persona`, `egresadoDe`, `titulo`, `promedio`) VALUES
(1, 4, 'Escuela N5', 'Titulo Comun', 6),
(2, 19, 'Escuela de Educación Artística N°1', 'Tecnico Superior en Artística', 6),
(3, 20, 'Esc. de Comercio Nº 34', 'Tecnico Superior en Comercio', 8),
(4, 21, 'ENS Nº 09 D.Sarmiento', 'Bachiller', 8),
(5, 22, 'Liceo Nº 09 DE 10 Santiago Derqui', 'Bachiller', 8),
(6, 23, 'Liceo Nº 09 DE 10 Santiago Derqui', 'Bachiller', 8),
(7, 24, 'Lanus', 'Escuela Comun', 9),
(8, 25, 'Lanus', 'Escuela Comun', 9),
(9, 26, 'UTN', 'Genio', 10),
(10, 27, 'Escuela Lanus', 'Bachiller', 9),
(11, 28, 'Escuela Lanus', 'Bachiller', 9),
(12, 29, 'Avellaneda', 'Bachiller', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_inscripto`
--

CREATE TABLE `alumno_inscripto` (
  `id_alumno_inscripto` int(11) NOT NULL,
  `id_asignacion_curso` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno_inscripto`
--

INSERT INTO `alumno_inscripto` (`id_alumno_inscripto`, `id_asignacion_curso`, `id_alumno`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 2, 1),
(4, 6, 1),
(5, 8, 1),
(6, 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `id_asignacion` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `cuatrimestre` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`id_asignacion`, `id_materia`, `cuatrimestre`, `id_carrera`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 2, 1),
(7, 7, 2, 1),
(8, 8, 2, 1),
(9, 9, 2, 1),
(10, 10, 2, 1),
(11, 11, 2, 1),
(12, 12, 3, 1),
(13, 13, 3, 1),
(14, 14, 3, 1),
(15, 15, 3, 1),
(16, 16, 3, 1),
(17, 17, 4, 1),
(18, 18, 4, 1),
(19, 19, 4, 1),
(20, 20, 4, 1),
(21, 21, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_x_curso`
--

CREATE TABLE `asignacion_x_curso` (
  `id_asignacion_curso` int(11) NOT NULL,
  `id_asignacion` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_dia` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_profesor_1` int(11) NOT NULL,
  `id_profesor_2` int(11) DEFAULT NULL,
  `id_profesor_3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asignacion_x_curso`
--

INSERT INTO `asignacion_x_curso` (`id_asignacion_curso`, `id_asignacion`, `id_curso`, `id_dia`, `id_horario`, `id_profesor_1`, `id_profesor_2`, `id_profesor_3`) VALUES
(1, 4, 1, 2, 4, 2, 3, NULL),
(2, 1, 1, 3, 5, 4, NULL, NULL),
(3, 3, 1, 3, 6, 5, NULL, NULL),
(4, 5, 1, 4, 4, 2, 3, NULL),
(6, 2, 1, 6, 4, 2, NULL, NULL),
(7, 8, 4, 2, 5, 5, NULL, NULL),
(8, 11, 4, 2, 6, 5, NULL, NULL),
(9, 9, 4, 3, 4, 7, NULL, NULL),
(10, 10, 4, 4, 4, 7, NULL, NULL),
(11, 7, 4, 5, 4, 4, NULL, NULL),
(12, 6, 4, 6, 4, 8, NULL, NULL),
(13, 13, 5, 2, 4, 7, 9, NULL),
(14, 12, 5, 3, 4, 6, NULL, NULL),
(16, 16, 5, 5, 4, 11, NULL, NULL),
(17, 14, 5, 6, 4, 7, 9, NULL),
(19, 19, 6, 3, 4, 13, NULL, NULL),
(20, 17, 6, 4, 4, 14, NULL, NULL),
(21, 18, 6, 5, 4, 9, NULL, NULL),
(22, 20, 6, 6, 4, 12, NULL, NULL),
(23, 21, 6, 7, 4, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(11) NOT NULL,
  `id_alumno_inscripto` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `asistencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id_carrera` int(11) NOT NULL,
  `carrera` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `carrera`) VALUES
(1, 'Tecnico Superior en Programacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclo_lectivo`
--

CREATE TABLE `ciclo_lectivo` (
  `id_ciclo` int(11) DEFAULT NULL,
  `ciclo_año` int(11) DEFAULT NULL,
  `ciclo_lectivo` int(11) DEFAULT NULL,
  `ciclo_fecha_inicio` date DEFAULT NULL,
  `ciclo_fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ciclo_lectivo`
--

INSERT INTO `ciclo_lectivo` (`id_ciclo`, `ciclo_año`, `ciclo_lectivo`, `ciclo_fecha_inicio`, `ciclo_fecha_fin`) VALUES
(1, 2020, 1, '2020-03-30', '2020-07-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correlativas`
--

CREATE TABLE `correlativas` (
  `id_correlativa` int(11) NOT NULL,
  `id_asignacion` int(11) NOT NULL,
  `id_materia_1` int(11) NOT NULL,
  `id_materia_2` int(11) NOT NULL,
  `id_materia_3` int(11) NOT NULL,
  `id_materia_4` int(11) NOT NULL,
  `id_materia_5` int(11) NOT NULL,
  `etapa` int(11) NOT NULL COMMENT '1_ Cursada - 2_Final'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `correlativas`
--

INSERT INTO `correlativas` (`id_correlativa`, `id_asignacion`, `id_materia_1`, `id_materia_2`, `id_materia_3`, `id_materia_4`, `id_materia_5`, `etapa`) VALUES
(1, 1, 0, 0, 0, 0, 0, 1),
(2, 1, 0, 0, 0, 0, 0, 2),
(3, 2, 0, 0, 0, 0, 0, 1),
(4, 2, 0, 0, 0, 0, 0, 2),
(5, 3, 0, 0, 0, 0, 0, 1),
(6, 3, 0, 0, 0, 0, 0, 2),
(7, 4, 0, 0, 0, 0, 0, 1),
(8, 4, 0, 0, 0, 0, 0, 2),
(9, 5, 0, 0, 0, 0, 0, 1),
(10, 5, 0, 0, 0, 0, 0, 2),
(11, 6, 2, 0, 0, 0, 0, 1),
(12, 6, 2, 0, 0, 0, 0, 2),
(13, 7, 1, 0, 0, 0, 0, 1),
(14, 7, 1, 0, 0, 0, 0, 2),
(15, 8, 3, 0, 0, 0, 0, 1),
(16, 8, 3, 0, 0, 0, 0, 2),
(17, 9, 4, 5, 0, 0, 0, 1),
(18, 9, 4, 5, 0, 0, 0, 2),
(19, 10, 4, 5, 0, 0, 0, 1),
(20, 10, 4, 5, 0, 0, 0, 2),
(21, 11, 0, 0, 0, 0, 0, 1),
(22, 11, 0, 0, 0, 0, 0, 2),
(23, 12, 7, 0, 0, 0, 0, 1),
(24, 12, 7, 0, 0, 0, 0, 2),
(25, 13, 9, 10, 0, 0, 0, 1),
(26, 13, 9, 10, 0, 0, 0, 2),
(27, 14, 9, 10, 0, 0, 0, 1),
(28, 14, 9, 10, 0, 0, 0, 2),
(29, 15, 1, 0, 0, 0, 0, 1),
(30, 15, 1, 0, 0, 0, 0, 2),
(31, 16, 7, 0, 0, 0, 0, 1),
(32, 16, 7, 0, 0, 0, 0, 2),
(33, 17, 13, 14, 0, 0, 0, 1),
(34, 17, 13, 14, 0, 0, 0, 2),
(35, 18, 13, 14, 0, 0, 0, 1),
(36, 18, 13, 14, 0, 0, 0, 2),
(37, 19, 0, 0, 0, 0, 0, 1),
(38, 19, 0, 0, 0, 0, 0, 2),
(39, 20, 11, 15, 13, 14, 16, 1),
(40, 20, 11, 15, 13, 14, 16, 2),
(41, 37, 0, 0, 0, 0, 0, 1),
(42, 37, 0, 0, 0, 0, 0, 2),
(43, 38, 0, 0, 0, 0, 0, 1),
(44, 38, 0, 0, 0, 0, 0, 2),
(45, 39, 37, 0, 0, 0, 0, 1),
(46, 39, 37, 0, 0, 0, 0, 2),
(47, 40, 38, 39, 0, 0, 0, 1),
(48, 40, 38, 39, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `descripcion` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `descripcion`) VALUES
(1, '1A'),
(4, '2A'),
(5, '3A'),
(6, '4A'),
(7, '1B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia_clase`
--

CREATE TABLE `dia_clase` (
  `id_dia_clase` int(11) NOT NULL,
  `descripcion` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dia_clase`
--

INSERT INTO `dia_clase` (`id_dia_clase`, `descripcion`) VALUES
(1, 'Domingo'),
(2, 'Lunes'),
(3, 'Martes'),
(4, 'Miercoles'),
(5, 'Jueves'),
(6, 'Viernes'),
(7, 'Sabado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_alumno`
--

CREATE TABLE `estado_alumno` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `asistencia` int(11) NOT NULL,
  `nota_1` int(11) NOT NULL,
  `nota_2` int(11) NOT NULL,
  `final` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estado_alumno`
--

INSERT INTO `estado_alumno` (`id_estado`, `estado`, `asistencia`, `nota_1`, `nota_2`, `final`) VALUES
(1, 'Aprobado Sin Final', 0, 4, 4, 0),
(2, 'Aprobado Con Final', 0, 0, 0, 4),
(3, 'Desaprobado', 0, 3, 3, 0),
(4, 'Libre', 4, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `id_examen` int(11) NOT NULL,
  `id_asignacion_curso` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_tipo_examen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `examen`
--

INSERT INTO `examen` (`id_examen`, `id_asignacion_curso`, `fecha`, `id_tipo_examen`) VALUES
(1, 1, '2020-05-11', 1),
(2, 1, '2020-05-11', 3),
(3, 1, '2020-05-11', 2),
(4, 1, '2020-05-11', 5),
(5, 1, '2020-06-10', 4),
(6, 2, '2020-06-10', 1),
(7, 2, '2020-06-10', 2),
(8, 2, '2020-06-10', 3),
(9, 2, '2020-06-10', 4),
(10, 2, '2020-06-10', 5),
(11, 3, '2020-06-10', 1),
(12, 3, '2020-06-10', 2),
(13, 3, '2020-06-10', 3),
(14, 3, '2020-06-10', 4),
(15, 3, '2020-06-10', 5),
(16, 4, '2020-06-10', 1),
(17, 4, '2020-06-10', 2),
(18, 4, '2020-06-10', 3),
(19, 4, '2020-06-10', 4),
(20, 4, '2020-06-10', 5),
(21, 6, '2020-06-10', 1),
(22, 6, '2020-06-10', 2),
(23, 6, '2020-06-10', 3),
(24, 6, '2020-06-10', 4),
(25, 6, '2020-06-10', 5),
(26, 7, '2020-06-10', 1),
(27, 7, '2020-06-10', 2),
(28, 7, '2020-06-10', 3),
(29, 7, '2020-06-10', 4),
(30, 7, '2020-06-10', 5),
(31, 8, '2020-06-10', 1),
(32, 8, '2020-06-10', 2),
(33, 8, '2020-06-10', 3),
(34, 8, '2020-06-10', 4),
(35, 8, '2020-06-10', 5),
(36, 9, '2020-06-10', 1),
(37, 9, '2020-06-10', 2),
(38, 9, '2020-06-10', 3),
(39, 9, '2020-06-10', 4),
(40, 9, '2020-06-10', 5),
(41, 10, '2020-06-10', 1),
(42, 10, '2020-06-10', 2),
(43, 10, '2020-06-10', 3),
(44, 10, '2020-06-10', 4),
(45, 10, '2020-06-10', 5),
(46, 11, '2020-06-10', 1),
(47, 11, '2020-06-10', 2),
(48, 11, '2020-06-10', 3),
(49, 11, '2020-06-10', 4),
(50, 11, '2020-06-10', 5),
(51, 12, '2020-06-10', 1),
(52, 12, '2020-06-10', 2),
(53, 12, '2020-06-10', 3),
(54, 12, '2020-06-10', 4),
(55, 12, '2020-06-10', 5),
(56, 13, '2020-06-10', 1),
(57, 13, '2020-06-10', 2),
(58, 13, '2020-06-10', 3),
(59, 13, '2020-06-10', 4),
(60, 13, '2020-06-10', 5),
(61, 14, '2020-06-10', 1),
(62, 14, '2020-06-10', 2),
(63, 14, '2020-06-10', 3),
(64, 14, '2020-06-10', 4),
(65, 14, '2020-06-10', 5),
(66, 15, '2020-06-10', 1),
(67, 15, '2020-06-10', 2),
(68, 15, '2020-06-10', 3),
(69, 15, '2020-06-10', 4),
(70, 15, '2020-06-10', 5),
(71, 16, '2020-06-10', 1),
(72, 16, '2020-06-10', 2),
(73, 16, '2020-06-10', 3),
(74, 16, '2020-06-10', 4),
(75, 16, '2020-06-10', 5),
(76, 17, '2020-06-10', 1),
(77, 17, '2020-06-10', 2),
(78, 17, '2020-06-10', 3),
(79, 17, '2020-06-10', 4),
(80, 17, '2020-06-10', 5),
(81, 18, '2020-06-10', 1),
(82, 18, '2020-06-10', 2),
(83, 18, '2020-06-10', 3),
(84, 18, '2020-06-10', 4),
(85, 18, '2020-06-10', 5),
(86, 19, '2020-06-10', 1),
(87, 19, '2020-06-10', 2),
(88, 19, '2020-06-10', 3),
(89, 19, '2020-06-10', 4),
(90, 19, '2020-06-10', 5),
(91, 20, '2020-06-10', 1),
(92, 20, '2020-06-10', 2),
(93, 20, '2020-06-10', 3),
(94, 20, '2020-06-10', 4),
(95, 20, '2020-06-10', 5),
(96, 21, '2020-06-10', 1),
(97, 21, '2020-06-10', 2),
(98, 21, '2020-06-10', 3),
(99, 21, '2020-06-10', 4),
(100, 21, '2020-06-10', 5),
(101, 22, '2020-06-10', 1),
(102, 22, '2020-06-10', 2),
(103, 22, '2020-06-10', 3),
(104, 22, '2020-06-10', 4),
(105, 22, '2020-06-10', 5),
(106, 23, '2020-06-10', 1),
(107, 23, '2020-06-10', 2),
(108, 23, '2020-06-10', 3),
(109, 23, '2020-06-10', 4),
(110, 23, '2020-06-10', 5),
(111, 24, '2020-06-30', 1),
(112, 24, '2020-06-30', 2),
(113, 24, '2020-06-30', 3),
(114, 24, '2020-06-30', 4),
(115, 24, '2020-06-30', 5),
(116, 25, '2020-06-30', 1),
(117, 25, '2020-06-30', 2),
(118, 25, '2020-06-30', 3),
(119, 25, '2020-06-30', 4),
(120, 25, '2020-06-30', 5),
(121, 26, '2020-06-30', 1),
(122, 26, '2020-06-30', 2),
(123, 26, '2020-06-30', 3),
(124, 26, '2020-06-30', 4),
(125, 26, '2020-06-30', 5),
(126, 27, '2020-06-30', 1),
(127, 27, '2020-06-30', 2),
(128, 27, '2020-06-30', 3),
(129, 27, '2020-06-30', 4),
(130, 27, '2020-06-30', 5),
(131, 28, '2020-06-30', 1),
(132, 28, '2020-06-30', 2),
(133, 28, '2020-06-30', 3),
(134, 28, '2020-06-30', 4),
(135, 28, '2020-06-30', 5),
(136, 29, '2020-06-30', 1),
(137, 29, '2020-06-30', 2),
(138, 29, '2020-06-30', 3),
(139, 29, '2020-06-30', 4),
(140, 29, '2020-06-30', 5),
(141, 30, '2020-06-30', 1),
(142, 30, '2020-06-30', 2),
(143, 30, '2020-06-30', 3),
(144, 30, '2020-06-30', 4),
(145, 30, '2020-06-30', 5),
(146, 31, '2020-06-30', 1),
(147, 31, '2020-06-30', 2),
(148, 31, '2020-06-30', 3),
(149, 31, '2020-06-30', 4),
(150, 31, '2020-06-30', 5),
(151, 32, '2020-06-30', 1),
(152, 32, '2020-06-30', 2),
(153, 32, '2020-06-30', 3),
(154, 32, '2020-06-30', 4),
(155, 32, '2020-06-30', 5),
(156, 33, '2020-06-30', 1),
(157, 33, '2020-06-30', 2),
(158, 33, '2020-06-30', 3),
(159, 33, '2020-06-30', 4),
(160, 33, '2020-06-30', 5),
(161, 34, '2020-06-30', 1),
(162, 34, '2020-06-30', 2),
(163, 34, '2020-06-30', 3),
(164, 34, '2020-06-30', 4),
(165, 34, '2020-06-30', 5),
(166, 35, '2020-06-30', 1),
(167, 35, '2020-06-30', 2),
(168, 35, '2020-06-30', 3),
(169, 35, '2020-06-30', 4),
(170, 35, '2020-06-30', 5),
(171, 36, '2020-06-30', 1),
(172, 36, '2020-06-30', 2),
(173, 36, '2020-06-30', 3),
(174, 36, '2020-06-30', 4),
(175, 36, '2020-06-30', 5),
(176, 37, '2020-06-30', 1),
(177, 37, '2020-06-30', 2),
(178, 37, '2020-06-30', 3),
(179, 37, '2020-06-30', 4),
(180, 37, '2020-06-30', 5),
(181, 38, '2020-06-30', 1),
(182, 38, '2020-06-30', 2),
(183, 38, '2020-06-30', 3),
(184, 38, '2020-06-30', 4),
(185, 38, '2020-06-30', 5),
(186, 39, '2020-06-30', 1),
(187, 39, '2020-06-30', 2),
(188, 39, '2020-06-30', 3),
(189, 39, '2020-06-30', 4),
(190, 39, '2020-06-30', 5),
(191, 40, '2020-06-30', 1),
(192, 40, '2020-06-30', 2),
(193, 40, '2020-06-30', 3),
(194, 40, '2020-06-30', 4),
(195, 40, '2020-06-30', 5),
(196, 41, '2020-06-30', 1),
(197, 41, '2020-06-30', 2),
(198, 41, '2020-06-30', 3),
(199, 41, '2020-06-30', 4),
(200, 41, '2020-06-30', 5),
(201, 42, '2020-06-30', 1),
(202, 42, '2020-06-30', 2),
(203, 42, '2020-06-30', 3),
(204, 42, '2020-06-30', 4),
(205, 42, '2020-06-30', 5),
(206, 43, '2020-06-30', 1),
(207, 43, '2020-06-30', 2),
(208, 43, '2020-06-30', 3),
(209, 43, '2020-06-30', 4),
(210, 43, '2020-06-30', 5),
(211, 44, '2020-06-30', 1),
(212, 44, '2020-06-30', 2),
(213, 44, '2020-06-30', 3),
(214, 44, '2020-06-30', 4),
(215, 44, '2020-06-30', 5),
(216, 45, '2020-06-30', 1),
(217, 45, '2020-06-30', 2),
(218, 45, '2020-06-30', 3),
(219, 45, '2020-06-30', 4),
(220, 45, '2020-06-30', 5),
(221, 46, '2020-06-30', 1),
(222, 46, '2020-06-30', 2),
(223, 46, '2020-06-30', 3),
(224, 46, '2020-06-30', 4),
(225, 46, '2020-06-30', 5),
(226, 47, '2020-06-30', 1),
(227, 47, '2020-06-30', 2),
(228, 47, '2020-06-30', 3),
(229, 47, '2020-06-30', 4),
(230, 47, '2020-06-30', 5),
(231, 48, '2020-06-30', 1),
(232, 48, '2020-06-30', 2),
(233, 48, '2020-06-30', 3),
(234, 48, '2020-06-30', 4),
(235, 48, '2020-06-30', 5),
(236, 49, '2020-06-30', 1),
(237, 49, '2020-06-30', 2),
(238, 49, '2020-06-30', 3),
(239, 49, '2020-06-30', 4),
(240, 49, '2020-06-30', 5),
(241, 50, '2020-06-30', 1),
(242, 50, '2020-06-30', 2),
(243, 50, '2020-06-30', 3),
(244, 50, '2020-06-30', 4),
(245, 50, '2020-06-30', 5),
(246, 51, '2020-06-30', 1),
(247, 51, '2020-06-30', 2),
(248, 51, '2020-06-30', 3),
(249, 51, '2020-06-30', 4),
(250, 51, '2020-06-30', 5),
(251, 52, '2020-06-30', 1),
(252, 52, '2020-06-30', 2),
(253, 52, '2020-06-30', 3),
(254, 52, '2020-06-30', 4),
(255, 52, '2020-06-30', 5),
(256, 53, '2020-06-30', 1),
(257, 53, '2020-06-30', 2),
(258, 53, '2020-06-30', 3),
(259, 53, '2020-06-30', 4),
(260, 53, '2020-06-30', 5),
(261, 54, '2020-06-30', 1),
(262, 54, '2020-06-30', 2),
(263, 54, '2020-06-30', 3),
(264, 54, '2020-06-30', 4),
(265, 54, '2020-06-30', 5),
(266, 55, '2020-06-30', 1),
(267, 55, '2020-06-30', 2),
(268, 55, '2020-06-30', 3),
(269, 55, '2020-06-30', 4),
(270, 55, '2020-06-30', 5),
(271, 56, '2020-06-30', 1),
(272, 56, '2020-06-30', 2),
(273, 56, '2020-06-30', 3),
(274, 56, '2020-06-30', 4),
(275, 56, '2020-06-30', 5),
(276, 57, '2020-06-30', 1),
(277, 57, '2020-06-30', 2),
(278, 57, '2020-06-30', 3),
(279, 57, '2020-06-30', 4),
(280, 57, '2020-06-30', 5),
(281, 58, '2020-06-30', 1),
(282, 58, '2020-06-30', 2),
(283, 58, '2020-06-30', 3),
(284, 58, '2020-06-30', 4),
(285, 58, '2020-06-30', 5),
(286, 59, '2020-06-30', 1),
(287, 59, '2020-06-30', 2),
(288, 59, '2020-06-30', 3),
(289, 59, '2020-06-30', 4),
(290, 59, '2020-06-30', 5),
(291, 60, '2020-06-30', 1),
(292, 60, '2020-06-30', 2),
(293, 60, '2020-06-30', 3),
(294, 60, '2020-06-30', 4),
(295, 60, '2020-06-30', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_alumno`
--

CREATE TABLE `examen_alumno` (
  `id_examen` int(11) NOT NULL,
  `id_alumno_inscripto` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `id_examen_alumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `examen_alumno`
--

INSERT INTO `examen_alumno` (`id_examen`, `id_alumno_inscripto`, `nota`, `id_examen_alumno`) VALUES
(11, 2, 6, NULL),
(13, 2, 8, NULL),
(15, 2, 10, NULL),
(26, 6, 8, NULL),
(28, 6, 8, NULL),
(30, 6, 8, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas_2020`
--

CREATE TABLE `fechas_2020` (
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `fechas_2020`
--

INSERT INTO `fechas_2020` (`fecha`) VALUES
('2020-01-01'),
('2020-01-02'),
('2020-01-03'),
('2020-01-04'),
('2020-01-05'),
('2020-01-06'),
('2020-01-07'),
('2020-01-08'),
('2020-01-09'),
('2020-01-10'),
('2020-01-11'),
('2020-01-12'),
('2020-01-13'),
('2020-01-14'),
('2020-01-15'),
('2020-01-16'),
('2020-01-17'),
('2020-01-18'),
('2020-01-19'),
('2020-01-20'),
('2020-01-21'),
('2020-01-22'),
('2020-01-23'),
('2020-01-24'),
('2020-01-25'),
('2020-01-26'),
('2020-01-27'),
('2020-01-28'),
('2020-01-29'),
('2020-01-30'),
('2020-01-31'),
('2020-02-01'),
('2020-02-02'),
('2020-02-03'),
('2020-02-04'),
('2020-02-05'),
('2020-02-06'),
('2020-02-07'),
('2020-02-08'),
('2020-02-09'),
('2020-02-10'),
('2020-02-11'),
('2020-02-12'),
('2020-02-13'),
('2020-02-14'),
('2020-02-15'),
('2020-02-16'),
('2020-02-17'),
('2020-02-18'),
('2020-02-19'),
('2020-02-20'),
('2020-02-21'),
('2020-02-22'),
('2020-02-23'),
('2020-02-24'),
('2020-02-25'),
('2020-02-26'),
('2020-02-27'),
('2020-02-28'),
('2020-02-29'),
('2020-03-01'),
('2020-03-02'),
('2020-03-03'),
('2020-03-04'),
('2020-03-05'),
('2020-03-06'),
('2020-03-07'),
('2020-03-08'),
('2020-03-09'),
('2020-03-10'),
('2020-03-11'),
('2020-03-12'),
('2020-03-13'),
('2020-03-14'),
('2020-03-15'),
('2020-03-16'),
('2020-03-17'),
('2020-03-18'),
('2020-03-19'),
('2020-03-20'),
('2020-03-21'),
('2020-03-22'),
('2020-03-23'),
('2020-03-24'),
('2020-03-25'),
('2020-03-26'),
('2020-03-27'),
('2020-03-28'),
('2020-03-29'),
('2020-03-30'),
('2020-03-31'),
('2020-04-01'),
('2020-04-02'),
('2020-04-03'),
('2020-04-04'),
('2020-04-05'),
('2020-04-06'),
('2020-04-07'),
('2020-04-08'),
('2020-04-09'),
('2020-04-10'),
('2020-04-11'),
('2020-04-12'),
('2020-04-13'),
('2020-04-14'),
('2020-04-15'),
('2020-04-16'),
('2020-04-17'),
('2020-04-18'),
('2020-04-19'),
('2020-04-20'),
('2020-04-21'),
('2020-04-22'),
('2020-04-23'),
('2020-04-24'),
('2020-04-25'),
('2020-04-26'),
('2020-04-27'),
('2020-04-28'),
('2020-04-29'),
('2020-04-30'),
('2020-05-01'),
('2020-05-02'),
('2020-05-03'),
('2020-05-04'),
('2020-05-05'),
('2020-05-06'),
('2020-05-07'),
('2020-05-08'),
('2020-05-09'),
('2020-05-10'),
('2020-05-11'),
('2020-05-12'),
('2020-05-13'),
('2020-05-14'),
('2020-05-15'),
('2020-05-16'),
('2020-05-17'),
('2020-05-18'),
('2020-05-19'),
('2020-05-20'),
('2020-05-21'),
('2020-05-22'),
('2020-05-23'),
('2020-05-24'),
('2020-05-25'),
('2020-05-26'),
('2020-05-27'),
('2020-05-28'),
('2020-05-29'),
('2020-05-30'),
('2020-05-31'),
('2020-06-01'),
('2020-06-02'),
('2020-06-03'),
('2020-06-04'),
('2020-06-05'),
('2020-06-06'),
('2020-06-07'),
('2020-06-08'),
('2020-06-09'),
('2020-06-10'),
('2020-06-11'),
('2020-06-12'),
('2020-06-13'),
('2020-06-14'),
('2020-06-15'),
('2020-06-16'),
('2020-06-17'),
('2020-06-18'),
('2020-06-19'),
('2020-06-20'),
('2020-06-21'),
('2020-06-22'),
('2020-06-23'),
('2020-06-24'),
('2020-06-25'),
('2020-06-26'),
('2020-06-27'),
('2020-06-28'),
('2020-06-29'),
('2020-06-30'),
('2020-07-01'),
('2020-07-02'),
('2020-07-03'),
('2020-07-04'),
('2020-07-05'),
('2020-07-06'),
('2020-07-07'),
('2020-07-08'),
('2020-07-09'),
('2020-07-10'),
('2020-07-11'),
('2020-07-12'),
('2020-07-13'),
('2020-07-14'),
('2020-07-15'),
('2020-07-16'),
('2020-07-17'),
('2020-07-18'),
('2020-07-19'),
('2020-07-20'),
('2020-07-21'),
('2020-07-22'),
('2020-07-23'),
('2020-07-24'),
('2020-07-25'),
('2020-07-26'),
('2020-07-27'),
('2020-07-28'),
('2020-07-29'),
('2020-07-30'),
('2020-07-31'),
('2020-08-01'),
('2020-08-02'),
('2020-08-03'),
('2020-08-04'),
('2020-08-05'),
('2020-08-06'),
('2020-08-07'),
('2020-08-08'),
('2020-08-09'),
('2020-08-10'),
('2020-08-11'),
('2020-08-12'),
('2020-08-13'),
('2020-08-14'),
('2020-08-15'),
('2020-08-16'),
('2020-08-17'),
('2020-08-18'),
('2020-08-19'),
('2020-08-20'),
('2020-08-21'),
('2020-08-22'),
('2020-08-23'),
('2020-08-24'),
('2020-08-25'),
('2020-08-26'),
('2020-08-27'),
('2020-08-28'),
('2020-08-29'),
('2020-08-30'),
('2020-08-31'),
('2020-09-01'),
('2020-09-02'),
('2020-09-03'),
('2020-09-04'),
('2020-09-05'),
('2020-09-06'),
('2020-09-07'),
('2020-09-08'),
('2020-09-09'),
('2020-09-10'),
('2020-09-11'),
('2020-09-12'),
('2020-09-13'),
('2020-09-14'),
('2020-09-15'),
('2020-09-16'),
('2020-09-17'),
('2020-09-18'),
('2020-09-19'),
('2020-09-20'),
('2020-09-21'),
('2020-09-22'),
('2020-09-23'),
('2020-09-24'),
('2020-09-25'),
('2020-09-26'),
('2020-09-27'),
('2020-09-28'),
('2020-09-29'),
('2020-09-30'),
('2020-10-01'),
('2020-10-02'),
('2020-10-03'),
('2020-10-04'),
('2020-10-05'),
('2020-10-06'),
('2020-10-07'),
('2020-10-08'),
('2020-10-09'),
('2020-10-10'),
('2020-10-11'),
('2020-10-12'),
('2020-10-13'),
('2020-10-14'),
('2020-10-15'),
('2020-10-16'),
('2020-10-17'),
('2020-10-18'),
('2020-10-19'),
('2020-10-20'),
('2020-10-21'),
('2020-10-22'),
('2020-10-23'),
('2020-10-24'),
('2020-10-25'),
('2020-10-26'),
('2020-10-27'),
('2020-10-28'),
('2020-10-29'),
('2020-10-30'),
('2020-10-31'),
('2020-11-01'),
('2020-11-02'),
('2020-11-03'),
('2020-11-04'),
('2020-11-05'),
('2020-11-06'),
('2020-11-07'),
('2020-11-08'),
('2020-11-09'),
('2020-11-10'),
('2020-11-11'),
('2020-11-12'),
('2020-11-13'),
('2020-11-14'),
('2020-11-15'),
('2020-11-16'),
('2020-11-17'),
('2020-11-18'),
('2020-11-19'),
('2020-11-20'),
('2020-11-21'),
('2020-11-22'),
('2020-11-23'),
('2020-11-24'),
('2020-11-25'),
('2020-11-26'),
('2020-11-27'),
('2020-11-28'),
('2020-11-29'),
('2020-11-30'),
('2020-12-01'),
('2020-12-02'),
('2020-12-03'),
('2020-12-04'),
('2020-12-05'),
('2020-12-06'),
('2020-12-07'),
('2020-12-08'),
('2020-12-09'),
('2020-12-10'),
('2020-12-11'),
('2020-12-12'),
('2020-12-13'),
('2020-12-14'),
('2020-12-15'),
('2020-12-16'),
('2020-12-17'),
('2020-12-18'),
('2020-12-19'),
('2020-12-20'),
('2020-12-21'),
('2020-12-22'),
('2020-12-23'),
('2020-12-24'),
('2020-12-25'),
('2020-12-26'),
('2020-12-27'),
('2020-12-28'),
('2020-12-29'),
('2020-12-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha_clase`
--

CREATE TABLE `fecha_clase` (
  `id_fecha_clase` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fecha_clase`
--

INSERT INTO `fecha_clase` (`id_fecha_clase`, `id_carrera`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 1, '2019-03-20', '2019-06-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feriados`
--

CREATE TABLE `feriados` (
  `feriado` date NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_clase`
--

CREATE TABLE `horario_clase` (
  `id_horario_clase` int(11) NOT NULL,
  `horario_desde` varchar(20) NOT NULL,
  `horario_hasta` varchar(20) NOT NULL,
  `turno` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_clase`
--

INSERT INTO `horario_clase` (`id_horario_clase`, `horario_desde`, `horario_hasta`, `turno`) VALUES
(1, '18:30HS', '22:30HS', 'N'),
(2, '18:30HS', '20:30HS', 'N'),
(3, '20:30HS', '22:30HS', 'N'),
(4, '8:30HS', '12:30HS', 'M'),
(5, '8:30HS', '10:30HS', 'M'),
(6, '10:30HS', '12:30HS', 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `materia` varchar(52) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `legajo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `materia`, `legajo`) VALUES
(1, 'Matematica', '95-1123'),
(2, 'Sistema de Procesamiento de Datos', '95-1122'),
(3, 'Inglés', '95-1111'),
(4, 'Programacion I', '95-1121'),
(5, 'Laboratorio de Computacion I', '95-1124'),
(6, 'Arquitectura y Sistemas Operativo', '95-1126'),
(7, 'Estadistica', '95-1104'),
(8, 'Ingles II', '95-1112'),
(9, 'Programacion II', '95-1125'),
(10, 'Laboratorio de Computacion II', '95-1127'),
(11, 'Metodologia de la Investigacion', '95-1128'),
(12, 'Elemento de Investigacion Operativa', '95-1223'),
(13, 'Programacion III', '95-1230'),
(14, 'Laboratorio de Computacion III', '95-1234'),
(16, 'Organizacion Empresarial', '95-1232'),
(17, 'Diseño y Administracion de Bases de Datos', '95-1236'),
(18, 'Laboratorio de Computacion IV', '95-1234'),
(19, 'Legislacion', '95-1209'),
(20, 'Metodologia en Sistemas I', '95-1235'),
(21, 'Practica Supervisada I', '03-1252'),
(15, 'Organizacion Contable', '95-1231');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `todos` int(11) NOT NULL,
  `noticia` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `id_alumno`, `id_curso`, `todos`, `noticia`) VALUES
(7, 0, 0, 1, 'Todos: Ejemplo general.'),
(8, 4, 0, 0, 'Legajo 10021: Ejemplo mensaje Luna.'),
(9, 0, 1, 0, '1A: Ejemplo curso 1A.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `legajo` varchar(35) NOT NULL,
  `nombre` varchar(35) DEFAULT NULL,
  `apellido` varchar(35) DEFAULT NULL,
  `tipoDoc` int(11) DEFAULT NULL,
  `nroDoc` varchar(35) DEFAULT NULL,
  `fechNacimiento` date DEFAULT NULL,
  `sexo` varchar(2) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `piso` varchar(10) DEFAULT NULL,
  `codPostal` int(11) DEFAULT NULL,
  `localidad` int(11) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `id_tipo_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `legajo`, `nombre`, `apellido`, `tipoDoc`, `nroDoc`, `fechNacimiento`, `sexo`, `direccion`, `piso`, `codPostal`, `localidad`, `telefono`, `celular`, `email`, `id_tipo_persona`) VALUES
(1, '10001', 'Julian A.', 'Moreno', 1, '37659989', '1993-07-15', 'M', 'Lisandro de la torre', '1273', 1838, 4, '42969001', '157699504', 'asd@asd.com', 2),
(2, '10002', 'Fernando', 'Insua', 1, '36545665', '1992-04-25', 'M', 'Lisandro de la torre 1232', '4', 2322, NULL, NULL, NULL, NULL, 3),
(3, '10003', 'Juan', 'Perez', 1, '34231233', '0000-00-00', '', '', '', 0, 0, '', '', '', 1),
(4, '10004', 'Jose', 'Fernandez', 1, '23456789', NULL, 'M', 'XXX XXX', '5A', 1454, 0, '432243324', '324234234', 'fernandez.jose@gmail.com', 4),
(5, '10005', 'Crhistian', 'Baus', 1, '28564856', NULL, 'M', 'Alsina 559', NULL, 1870, 11, NULL, '1152132558', 'crhistian.baus@gmail.com', 2),
(6, '10006', 'Jose', 'Scudero', 1, '28566480', NULL, 'M', 'Alsina 559', NULL, 1870, 11, NULL, '1156785585', 'jose.scudero@gmail.com', 2),
(7, '10007', 'Luis', 'Cerratti', 1, '28222852', NULL, 'M', 'Alsina 559', NULL, 1870, 11, NULL, '1156785585', 'luis.cerratti@gmail.com', 2),
(8, '10008', 'Laura', 'Estrany', 1, '21585654', NULL, 'F', 'Alsina 559', NULL, 1870, 11, NULL, '1156785585', 'laura.estrany@hotmail.com', 2),
(9, '10009', 'Carlos', 'Fonte', 1, '20254854', NULL, 'M', 'Alsina 559', NULL, 1870, 11, NULL, '1156785585', 'carlos.fonte@outlook.com', 2),
(10, '10010', 'Pepe', 'Neiner', 1, '21585654', NULL, 'M', 'Alsina 570', NULL, 1870, 11, NULL, '1156785585', 'pepe.neiner@gmail.com', 2),
(11, '10011', 'Octavio', 'Villegas', 1, '21585654', NULL, 'M', 'Alsina 570', NULL, 1870, 11, NULL, '1156785585', 'octavio.villegas@hotmail.com', 2),
(12, '10012', 'Juan', 'Rampi', 1, '21856543', NULL, 'M', 'Alsina 570', NULL, 1870, 11, NULL, '1156212540', 'juan.rampi@gmail.com', 2),
(13, '10013', 'Jose', 'Prants', 1, '21856543', NULL, 'M', 'Alsina 570', NULL, 1870, 11, NULL, '1156212540', 'jose.prants@gmail.com', 2),
(14, '10014', 'Hernan', 'Martinez', 1, '21856541', NULL, 'M', 'Alsina 667', NULL, 1870, 11, NULL, '1156852148', 'hernan.martinez@gmail.com', 2),
(15, '10015', 'Evelina', 'Benavidez', 1, '21569845', NULL, 'F', 'Alsina 680', NULL, 1870, 11, NULL, '1156852148', 'evelina.benavidez@gmail.com', 2),
(16, '10016', 'Carla', 'Buratovich', 1, '17585452', NULL, 'F', 'Mitre 542', NULL, 1870, 11, NULL, '1156852148', 'carla.buratovich@gmail.com', 2),
(17, '10017', 'Esteban', 'Vazquez', 1, '18457545', NULL, 'M', 'Belgrano 890', NULL, 1870, 11, NULL, '1156852148', 'esteban.vazquez09@gmail.com', 2),
(19, '10019', 'Laura', 'García', 1, '378963147', NULL, 'F', 'Roma 586', NULL, 1824, 10, NULL, '1158654524', 'laura.garcia@gmail.com', 4),
(20, '10020', 'Leo', 'González', 1, '378963148', NULL, 'M', 'Palma 850', NULL, 1824, 10, NULL, '1112545612', 'leo.gonzalez@gmail.com', 4),
(21, '10021', 'Luna', 'Martínez', 1, '378963149', NULL, 'F', 'San Lorenzo 755', NULL, 1824, 10, NULL, '1112545612', 'luna.martinez@gmail.com', 4),
(22, '10022', 'Carlos', 'Sánchez', 1, '378963150', NULL, 'M', 'San Martin 205', NULL, 1838, 4, NULL, '1112545612', 'carlos.sanchez@gmail.com', 4),
(23, '10023', 'Liliana', 'perez', 1, '378963151', NULL, 'F', 'De la torre 1275', NULL, 1838, 4, NULL, '1158654524', 'liliana.sanchez@gmail.com', 4),
(25, '10025', 'Rocio', 'Moreira', 1, '41258963', '1998-07-24', 'F', 'Alsina 585', '3B', 1804, 10, '42589545', '1123512421', 'rocio.moreira@gmail.com', 4),
(26, '10026', 'Horacio', 'Ruiz', 1, '89899899', '1976-10-27', 'M', 'Oro 234', '4', 1234, 2, '01143009090', NULL, 'pepitolito@gmail.com', 4),
(27, '10027', 'Daniela', 'Alva', 1, '17659985', '1993-07-15', 'F', 'Lisandro de la torre 1858', '5B', 1874, 5, '42965564', '1125487421', 'daniela.alva@gmail.com', 4),
(28, '10028', 'Daniela', 'Alva', 1, '17659985', '1993-07-15', 'F', 'Lisandro de la torre 1858', '5B', 1874, 5, '42965564', '1125487421', 'daniela.alva@gmail.com', 4),
(29, '10029', 'Camila', 'Torres', 1, '38549212', '1993-02-15', 'F', 'Lisandro de la torre 1001', '1A', 1838, 12, '42966451', '1125456330', 'camila.torres@hotmail.com', 4),
(30, '10030', 'Lorena', 'Capitana', 1, '324234', '1993-10-15', 'F', 'ewr', '2', 1838, 9, '42222120', '1125445230', 'lorena.capitana@gmail.com', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(11) NOT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `egresadoDe` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `promedio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `id_persona`, `egresadoDe`, `titulo`, `promedio`) VALUES
(1, 1, NULL, NULL, NULL),
(2, 5, 'Disney', 'Mago Blanco', 9),
(3, 6, 'Disney_1', 'Mago Oscuro', 9),
(4, 7, 'Disney_1', 'Mago Oscuro', 9),
(5, 8, 'Disney_3', 'Hechizera', 9),
(6, 9, 'Del_espacio', 'Extraterrestre', 9),
(7, 10, 'De le tierra', 'Cuidadano comun', 9),
(8, 11, 'Del_espacio', 'Cosa no identificada', 9),
(9, 12, 'De la tierra', 'Node Express', 9),
(10, 13, 'Planeta_Jupiter', 'Operario', 9),
(11, 14, 'Planeta_Jupiter', 'Operario', 9),
(12, 15, 'Planeta_Saturno', 'Operario/a', 9),
(13, 16, 'Planeta_Mercurio', 'Operario/a', 9),
(14, 17, 'Planeta_Jupiter', 'Operario/a', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id_programa` int(11) NOT NULL,
  `id_asignacion` int(11) NOT NULL,
  `id_dia_clase_1` int(11) NOT NULL,
  `id_dia_clase_2` int(11) NOT NULL,
  `id_horario_clase_1` int(11) NOT NULL,
  `id_horario_clase_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id_programa`, `id_asignacion`, `id_dia_clase_1`, `id_dia_clase_2`, `id_horario_clase_1`, `id_horario_clase_2`) VALUES
(1, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretaria`
--

CREATE TABLE `secretaria` (
  `id_secretaria` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `secretaria`
--

INSERT INTO `secretaria` (`id_secretaria`, `id_persona`) VALUES
(1, 2),
(2, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documentacion`
--

CREATE TABLE `tipo_documentacion` (
  `tipo_documento` int(11) NOT NULL,
  `descripcion` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_documentacion`
--

INSERT INTO `tipo_documentacion` (`tipo_documento`, `descripcion`) VALUES
(1, 'DNI'),
(2, 'CI'),
(3, 'CUIT'),
(4, 'LC'),
(5, 'LE'),
(6, 'ID');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_examen`
--

CREATE TABLE `tipo_examen` (
  `id_tipo_examen` int(11) NOT NULL,
  `tipo_examen` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_examen`
--

INSERT INTO `tipo_examen` (`id_tipo_examen`, `tipo_examen`) VALUES
(1, 'Primer Parcial'),
(2, 'Primer Parcial/Rec'),
(3, 'Segundo Parcial'),
(4, 'Segundo Parcial/Rec'),
(5, 'Final');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `id_tipo` int(11) NOT NULL,
  `descripcion` varchar(35) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`id_tipo`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Profesor'),
(3, 'Secretaria'),
(4, 'Alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `tipo_usuario` int(11) DEFAULT NULL,
  `usuario` varchar(35) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`tipo_usuario`, `usuario`) VALUES
(1, 'Admin'),
(2, 'Profesor'),
(3, 'Secretaria'),
(4, 'Alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(35) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `tipo_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `contraseña`, `id_persona`, `tipo_usuario`) VALUES
(1, 'admin', 'admin1', 3, 1),
(2, '10001', 'welcome1', 1, 2),
(3, '10002', 'welcome1', 2, 3),
(4, '10011', 'welcome1', 11, 2),
(5, '10007', 'welcome1', 7, 2),
(6, '10005', 'welcome1', 5, 2),
(7, '10006', 'welcome1', 6, 2),
(8, '10007', 'welcome1', 7, 2),
(9, '10008', 'welcome1', 8, 2),
(10, '10009', 'welcome1', 9, 2),
(11, '10010', 'welcome1', 10, 2),
(13, '10012', 'welcome1', 12, 2),
(14, '10013', 'welcome1', 13, 2),
(15, '10014', 'welcome1', 14, 2),
(16, '10015', 'welcome1', 15, 2),
(17, '10016', 'welcome1', 16, 2),
(18, '10017', 'welcome1', 17, 2),
(19, '10004', 'welcome1', 4, 4),
(20, '10019', 'welcome1', 19, 4),
(21, '10020', 'welcome1', 20, 4),
(22, '10021', 'welcome1', 21, 4),
(23, '10023', 'welcome1', 23, 4),
(24, '10022', 'welcome1', 22, 4),
(25, '10025', 'welcome1', 25, 4),
(26, '10026', 'welcome1', 26, 4),
(27, '10028', 'welcome1', 28, 4),
(28, '10029', 'welcome1', 29, 4),
(29, '10030', 'welcome1', 30, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
