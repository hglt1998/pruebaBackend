-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2021 a las 19:23:47
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aulabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idAlumno` int(11) NOT NULL,
  `nMatricula` int(11) NOT NULL,
  `isNewRegistration` int(11) NOT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birthday` varchar(100) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `instrumento` varchar(100) DEFAULT NULL,
  `idProfesorLenguaje` int(10) DEFAULT NULL,
  `idProfesorInstrumento` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idAlumno`, `nMatricula`, `isNewRegistration`, `surname`, `name`, `birthday`, `adress`, `city`, `email`, `instrumento`, `idProfesorLenguaje`, `idProfesorInstrumento`) VALUES
(1, 1, 0, 'López Trigueros', 'Humberto Feo', '1998/01/22', 'José María del Rey 12', 'Mairena del Alcor', 'g.lops.h1@gmail.com', 'Trompa', 1, 4),
(2, 2, 0, 'Figueroa Escribano', 'Feo mono', '2000-01-01', 'Tio mierda 20', 'Villanueva del trabuco', 'tiomierda@gmail.com', 'Tuba', 3, 7),
(3, 3, 1, 'Bonilla Roldán', 'Antonio', '2000-02-02', 'Shitty guy 10', 'Guarroman', 'shittyguy@gmail.com', 'Saxofón', 4, 6),
(4, 4, 1, 'Marín Fernández', 'Adán', '2000-02-02', 'Gandul 50', 'Mairena del Alcor', 'adan@gmail.com', 'Percusión', 3, 8),
(5, 5, 0, 'Bustos Moreno', 'Antonio', '2000-02-02', 'Bencarrón 10', 'Mairena del Alcor', 'antonio@gmail.com', 'Percusión', 2, 9),
(6, 6, 0, 'Gómez Marín', 'Iván', '2000-02-02', 'Ancha 10', 'Alcalá de Guadaíra', 'ivan@gmail.com', 'Flauta', 6, 4),
(7, 7, 0, 'Soto Sánchez', 'José Ángel', '2000-02-02', 'Paseo 30', 'Mairena del Alcor', 'seange@gmail.com', 'Percusión', 2, 3),
(8, 8, 0, 'Soto Sánchez', 'José Ángel', '2000-02-02', 'Paseo 30', 'Mairena del Alcor', 'seange@gmail.com', 'Percusión', 3, 5),
(9, 9, 0, 'Soto Sánchez', 'José Ángel', '2000-02-02', 'Paseo 30', 'Mairena del Alcor', 'seange@gmail.com', 'Percusión', 1, 5),
(10, 10, 0, 'Soto Sánchez', 'José Ángel', '2000-02-02', 'Paseo 30', 'Mairena del Alcor', 'seange@gmail.com', 'Percusión', 2, 1),
(11, 11, 0, 'Soto Sánchez', 'José Ángel', '2000-02-02', 'Paseo 30', 'Mairena del Alcor', 'seange@gmail.com', 'Percusión', 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `idProfesor` int(10) NOT NULL,
  `nombreProfesor` varchar(100) DEFAULT NULL,
  `apellidosProfesor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`idProfesor`, `nombreProfesor`, `apellidosProfesor`) VALUES
(1, 'Francisco Javier', 'Alonso Jiménez'),
(2, 'Francisco Javier', 'Sánchez Puente'),
(3, 'Iván', 'Gómez Marín'),
(4, 'Emilio', 'Santos Cadenas'),
(5, 'Inmaculada', 'Acosta Ramírez'),
(6, 'Manuel', 'Bustos Castro'),
(7, 'Francisco Antonio', 'García Romero'),
(8, 'Marta', 'Lucas Curado'),
(9, 'Álvaro', 'Rodríguez Dobarganes'),
(10, 'Javier', 'Martínez Gómez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idAlumno`),
  ADD KEY `idProfesorLenguaje` (`idProfesorLenguaje`),
  ADD KEY `idProfesorInstrumento` (`idProfesorInstrumento`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`idProfesor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`idProfesorLenguaje`) REFERENCES `profesor` (`idProfesor`),
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`idProfesorInstrumento`) REFERENCES `profesor` (`idProfesor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
