-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2022 a las 04:00:38
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
-- Base de datos: `bd_didactic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areaconocimiento`
--

CREATE TABLE `areaconocimiento` (
  `cveArea` int(11) NOT NULL,
  `nombreArea` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `areaconocimiento`
--

INSERT INTO `areaconocimiento` (`cveArea`, `nombreArea`, `isActive`) VALUES
(9, 'Mates', 1),
(16, 'Calculo', 0),
(17, 'Ingles', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `cveCurso` int(11) NOT NULL,
  `nomCurso` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `temas` varchar(50) NOT NULL,
  `aprobacion` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `autor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`cveCurso`, `nomCurso`, `descripcion`, `temas`, `aprobacion`, `activo`, `autor`) VALUES
(1, 'Base de datos', 'Este es un curso de base de datos usando sql server', 'copias completas', 1, 1, 'EDME'),
(2, 'Programación orientada a objetos', 'Este es un curso de programación orientada a objetos con el profesor Apolinar', 'Herencia y poliformismo', 1, 1, 'EDME'),
(3, 'Aplicaciones web', 'Aprenderemos a desarrollar un front-end y un back-end de una aplicación web', 'HTML5 Y CSS3', 0, 0, 'EDME'),
(5, 'Sistemas Operativos', 'Curso de linux', 'Introduccion a linux', 0, 0, 'EDME'),
(7, 'Sistemas Operativos', 'Curso de linux', 'Introduccion a linux', 1, 0, 'EDME');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areaconocimiento`
--
ALTER TABLE `areaconocimiento`
  ADD PRIMARY KEY (`cveArea`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cveCurso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areaconocimiento`
--
ALTER TABLE `areaconocimiento`
  MODIFY `cveArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cveCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
