-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2022 a las 01:32:01
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
-- Base de datos: `stats`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actuacion`
--

CREATE TABLE `actuacion` (
  `concepto` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `organizador` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `idRepertorio` int(11) NOT NULL,
  `isLive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `composicion`
--

CREATE TABLE `composicion` (
  `idComposicion` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `subtitulo` varchar(100) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `anoComposicion` int(4) NOT NULL,
  `idCompositor` int(11) NOT NULL,
  `idAutor2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `composicion`
--

INSERT INTO `composicion` (`idComposicion`, `titulo`, `subtitulo`, `genero`, `anoComposicion`, `idCompositor`, `idAutor2`) VALUES
(1, 'Virgen de las Aguas', '', 'MARCHA DE PROCESIÓN', 1953, 8, 0),
(2, 'Encarnación de la Calzada', '', 'MARCHA DE PROCESIÓN', 1983, 9, 0),
(3, 'Pasan los Campanilleros', 'Marcha fúnebre', 'MARCHA DE PROCESIÓN', 1924, 1, 0),
(4, 'La Estrella Sublime', 'Marcha de procesión con cornetas y tambores', 'MARCHA DE PROCESIÓN', 1925, 1, 0),
(5, 'Hermanos Costaleros', 'Marcha costalera', 'MARCHA DE PROCESIÓN', 1985, 2, 0),
(6, 'Virgen de los Estudiantes', 'M. Procesión', 'MARCHA DE PROCESIÓN', 1987, 2, 0),
(7, 'Macarena', 'Marcha de Procesión', 'MARCHA DE PROCESIÓN', 1988, 2, 0),
(8, 'Cachorro', 'Saeta Sevillana', 'MARCHA DE PROCESIÓN', 1967, 4, 0),
(9, 'Amarguras', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1919, 10, 0),
(10, 'Aniversario Macareno', '', 'MARCHA DE PROCESIÓN', 1989, 11, 0),
(11, 'Jesús de las Penas', 'Marcha fúnebre', 'MARCHA DE PROCESIÓN', 1943, 12, 0),
(12, 'Consolación de Nervión', 'Marcha de Procesión', 'MARCHA DE PROCESIÓN', 1987, 2, 0),
(13, 'María Santísima del Dulce Nombre', 'Marcha procesional', 'MARCHA DE PROCESIÓN', 1955, 13, 0),
(14, 'Esperanza Macarena', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1969, 82, 0),
(15, 'Virgen de la Paz', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1971, 82, 0),
(16, 'Rocío', '', 'MARCHA DE PROCESIÓN', 1927, 14, 0),
(17, 'Esperanza Trianera', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1993, 15, 0),
(18, 'Marcha fúnebre', 'Quinta Angustia', 'MARCHA DE PROCESIÓN', 1891, 17, 0),
(19, 'Virgen de Montserrat', 'Marcha de Procesión', 'MARCHA DE PROCESIÓN', 1970, 82, 0),
(20, 'Virgen del Valle', 'Marcha lenta', 'MARCHA DE PROCESIÓN', 1897, 18, 0),
(21, 'Valle de Sevilla', '', 'MARCHA DE PROCESIÓN', 1990, 19, 0),
(22, 'Coronación de la Macarena', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1963, 20, 0),
(23, 'Pasa la Virgen Macarena', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1959, 4, 0),
(24, 'Triana, tu Esperanza', 'Marcha procesional', 'MARCHA DE PROCESIÓN', 2003, 19, 0),
(25, 'Madre de los Gitanos Coronada', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1988, 2, 0),
(26, 'El Refugio de María', '', 'MARCHA DE PROCESIÓN', 1921, 1, 0),
(27, 'La Madrugá', 'Marcha fúnebre', 'MARCHA DE PROCESIÓN', 1987, 2, 0),
(28, 'Esperanza Marinera', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1991, 2, 0),
(29, 'Oremos', 'Marcha lenta', 'MARCHA DE PROCESIÓN', 1969, 21, 0),
(30, 'Nuestra Señora del Patrocinio', 'Marcha procesional', 'MARCHA DE PROCESIÓN', 1969, 4, 0),
(31, 'Encarnación Coronada', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1994, 2, 0),
(32, 'Esperanza de Triana Coronada', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1984, 22, 0),
(33, 'Marcha fúnebre de la Ópera Jone', '', 'MARCHA DE PROCESIÓN', 1858, 23, 0),
(34, 'Macarena', '', 'MARCHA DE PROCESIÓN', 1943, 24, 0),
(35, 'Procesión de Semana Santa de Sevilla', 'Marcha', 'MARCHA DE PROCESIÓN', 1922, 25, 0),
(36, 'Mektub', 'Marcha fúnebre', 'MARCHA DE PROCESIÓN', 1925, 26, 0),
(37, 'Sevilla Cofradiera', 'Marcha de procesión', 'MARCHA DE PROCESIÓN', 1972, 4, 0),
(38, 'Mater mea', 'Marcha lenta', 'MARCHA DE PROCESIÓN', 1962, 21, 0),
(39, 'Santísimo Cristo del Desamparo y Abandono', 'A la memoria de mi buen padre Francisco Herrera García', 'MARCHA DE PROCESIÓN', 1995, 27, 0),
(40, 'Hiniesta Coronada', '', 'MARCHA DE PROCESIÓN', 1974, 22, 0),
(41, 'Rosario', '', 'MARCHA DE PROCESIÓN', 2011, 5, 0),
(42, 'Reina de San Román', 'Arrorró', 'MARCHA DE PROCESIÓN', 1992, 28, 0),
(43, 'Soleá, dame la mano', 'Impresión, en forma de marcha fúnebre', 'MARCHA DE PROCESIÓN', 1918, 10, 0),
(44, 'Hiniesta', 'Marchas de procesión', 'MARCHA DE PROCESIÓN', 1945, 29, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compositor`
--

CREATE TABLE `compositor` (
  `idCompositor` int(11) NOT NULL,
  `anoNacimiento` int(11) NOT NULL,
  `anoDefuncion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compositor`
--

INSERT INTO `compositor` (`idCompositor`, `anoNacimiento`, `anoDefuncion`, `nombre`, `apellidos`) VALUES
(1, 1872, 1944, 'Manuel', 'López Farfán'),
(2, 1944, 0, 'Abel', 'Moreno Gómez'),
(3, 1872, 1944, 'Manuel', 'López Farfán'),
(4, 1907, 1987, 'Pedro', 'Gámez Laserna'),
(5, 1956, 0, 'Manuel', 'Marvizón Carvallo'),
(6, 1976, 0, 'David', 'Hurtado Torres'),
(7, 1989, 0, 'Jesús Joaquín', 'Espinosa de los Monteros'),
(8, 1910, 1957, 'Santiago', 'Ramos Castro'),
(9, 1940, 0, 'Juan de los Santos', 'Sánchez Franco'),
(10, 1889, 1936, 'Manuel', 'Font de Anta'),
(11, 1937, 2010, 'José', 'Velázquez Sánchez'),
(12, 1898, 1974, 'Antonio', 'Pantión Pérez'),
(13, 1910, 1994, 'Luis', 'Lerate Santaella'),
(14, 1890, 1946, 'Manuel', 'Ruiz Vidriet'),
(15, 1960, 0, 'Ángel Alcaide', 'Barroso Vázquez'),
(17, 1839, 1898, 'José', 'Font Marimont'),
(18, 1870, 1956, 'Vicente', 'Gómez-Zarzuela Pérez'),
(19, 1929, 2010, 'José', 'De la Vega Sánchez'),
(20, 1902, 1995, 'Pedro', 'Braña Martínez'),
(21, 1907, 1988, 'Ricardo', 'Dorado Janeiro'),
(22, 1933, 0, 'José', 'Albero Francés'),
(23, 1813, 1877, 'Enrico', 'Petrella'),
(24, 1900, 1943, 'Emilio', 'Cebrián Ruiz'),
(25, 1873, 1948, 'Pascual', 'Marquina Narro'),
(26, 1879, 1935, 'Mariano', 'San Miguel Urcelay'),
(27, 1954, 0, 'Francisco', 'Herrera Míjez'),
(28, 1928, 1999, 'Ginés', 'Sánchez Torres'),
(29, 1898, 1974, 'José', 'Martínez Peralto'),
(30, 1960, 0, 'Juan José', 'Puntas Fernández'),
(31, 1940, 2021, 'Eloy', 'García López'),
(32, 1969, 0, 'Francisco Javier', 'Alonso Jiménez'),
(33, 1864, 1915, 'Braulio', 'Uralde Bringas'),
(34, 1904, 1974, 'Manuel', 'Gómez de Arriba'),
(35, 0, 0, 'Ángel', 'López Carreño'),
(36, 1929, 0, 'Fulgencio', 'Morón Ródenas'),
(37, 1906, 1984, 'José', 'Gardey Cuevas'),
(38, 0, 1922, 'José', 'Blanco'),
(39, 1986, 0, 'Claudio', 'Gómez Calado'),
(40, 1882, 1949, 'Joaquín', 'Turina Pérez'),
(41, 1981, 0, 'Óscar', 'Navarro González'),
(42, 1981, 0, 'Víctor Manuel', 'Ferrer Castillo'),
(43, 1984, 0, 'Alfonso', 'Lozano Ruiz'),
(44, 1862, 1943, 'Manuel', 'Font Fernández de la Herranz'),
(45, 1994, 0, 'Antonio David', 'Rodríguez Gómez'),
(46, 1882, 1968, 'Germán', 'Álvarez Beigbeder'),
(47, 1843, 1907, 'Edvar', 'Grieg'),
(48, 1810, 1849, 'Fryderyk Franciszek', 'Chopin'),
(49, 1978, 0, 'José', 'Peña Rubio'),
(50, 1985, 0, 'Pablo', 'Ojeda Jiménez'),
(51, 0, 0, 'Iván', 'Gómez Marín'),
(52, 1936, 2004, 'Guillermo', 'Fernández Ríos'),
(53, 1961, 0, 'Luis Pedro', 'Bedmar Estrada'),
(54, 1981, 0, 'Eduardo', 'de la Osa Crespo'),
(55, 0, 0, 'Francisco Javier', 'Jiménez Gómez'),
(56, 1951, 0, 'Francisco', 'Pastor Bueno'),
(57, 1978, 0, 'Francisco Javier', 'Parra Medina'),
(58, 1992, 0, 'Daniel', 'Albarrán Acosta'),
(59, 1955, 0, 'Julio', 'Páez Cano'),
(60, 1942, 2019, 'Juan', 'Velazquez Sánchez'),
(61, 1950, 0, 'Manuel', 'Alba Rubio'),
(62, 1936, 0, 'Vicente', 'Muñoz García'),
(63, 1989, 0, 'José Ángel', 'Esteban Velázquez'),
(64, 1987, 0, 'Luis Manuel', 'Catalán Núñez'),
(65, 1988, 0, 'Cristóbal', 'López Gándara'),
(66, 1925, 1983, 'Francisco', 'Barril Cortés'),
(67, 1922, 0, 'Víctor Arturo', 'López López'),
(68, 0, 0, 'José Félix', 'García Domínguez'),
(69, 1969, 0, 'José Manuel', 'Bernal Montero'),
(70, 1991, 0, 'José', 'León Alapont'),
(71, 1959, 0, 'José', 'Vélez García'),
(72, 1997, 0, 'Manuel', 'Román Hidalgo'),
(73, 1963, 0, 'Bruno', 'Marvizon Carvallo'),
(74, 1986, 2012, 'Manuel', 'Cabalgante Ortiz'),
(75, 0, 0, 'Juan Antonio', 'Verdiá Díaz'),
(76, 1973, 0, 'Jesús Manuel', 'Perojil Villar'),
(77, 1949, 0, 'José Manuel', 'Delgado Rodríguez'),
(78, 1978, 0, 'Germán', 'García González'),
(79, 1981, 0, 'Antonio', 'Moreno Pozo'),
(80, 1947, 2019, 'Francisco', 'Grau Vergara'),
(81, 0, 0, 'José Carlos', 'Archilla Luque'),
(82, 1923, 2017, 'Pedro', 'Morales Muñoz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repertorio`
--

CREATE TABLE `repertorio` (
  `idMarcha` int(11) NOT NULL,
  `ubicacion` point NOT NULL,
  `timestamp` datetime NOT NULL,
  `idRepertorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actuacion`
--
ALTER TABLE `actuacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `composicion`
--
ALTER TABLE `composicion`
  ADD PRIMARY KEY (`idComposicion`),
  ADD KEY `idCompositor` (`idCompositor`);

--
-- Indices de la tabla `compositor`
--
ALTER TABLE `compositor`
  ADD PRIMARY KEY (`idCompositor`);

--
-- Indices de la tabla `repertorio`
--
ALTER TABLE `repertorio`
  ADD PRIMARY KEY (`idRepertorio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actuacion`
--
ALTER TABLE `actuacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `composicion`
--
ALTER TABLE `composicion`
  MODIFY `idComposicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `composicion`
--
ALTER TABLE `composicion`
  ADD CONSTRAINT `composicion_ibfk_1` FOREIGN KEY (`idCompositor`) REFERENCES `compositor` (`idCompositor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
