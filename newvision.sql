-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2023 a las 14:41:13
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `newvision`
--
CREATE DATABASE IF NOT EXISTS `newvision` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newvision`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `num_matricula` int(11) NOT NULL,
  `dni_alu` varchar(10) NOT NULL,
  `nombre_alu` varchar(50) NOT NULL,
  `apellido1_alu` varchar(25) NOT NULL,
  `apellido2_alu` varchar(25) NOT NULL,
  `email_alu` varchar(100) NOT NULL,
  `telf_alu` varchar(9) NOT NULL,
  `clase` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`num_matricula`, `dni_alu`, `nombre_alu`, `apellido1_alu`, `apellido2_alu`, `email_alu`, `telf_alu`, `clase`) VALUES
(1, '123456789A', 'Joan', 'Becerril', 'Hermida', 'joanbecerril@gmail.com', '987654321', 3),
(2, '987654321B', 'Adrian', 'Vazquez', 'Pascuas', 'adrianvazquez@gmail.com', '234567890', 2),
(3, '453738371C', 'Pol Marc', 'Montero', 'Roca', 'polmarcmontero@gmail.com', '876543210', 3),
(4, '748791388D', 'Iker', 'Luna', 'Cruz', 'ikerluna@gmail.com', '123456789', 1),
(5, '782387329E', 'Marc', 'Martinez', 'Mendez', 'marcmartinez@gmail.com', '345678901', 3),
(6, '789327832F', 'Oriol', 'Larrazabal', 'Teixido', 'olarrazabal@gmail.com', '789012345', 1),
(7, '883839832G', 'Adrian', 'Herraez', 'Arenas', 'adrianherraez@gmail.com', '456789012', 2),
(8, '371391910H', 'Luca', 'Lusuardi', 'Masip', 'lucalusuardi@gmail.com', '210987654', 3),
(9, '987380378I', 'Marc', 'Colome', 'Cuenca', 'marccolome@gmail.com', '567890123', 3),
(10, '198238393J', 'Juan Carlos', 'Prado', 'Garcia', 'juancarlos@gmail.com', '901234567', 2),
(11, '837838768K', 'Alberto', 'Bermejo', 'Nunez', 'albertobermejo@gmail.com', '654321098', 1),
(12, '938373635L', 'Mario', 'Palamari', 'Gomez', 'mariopalamari@gmail.com', '890123456', 2),
(13, '974794398M', 'Rafa', 'Garcia', 'del Rincon', 'rafagarcia@gmail.com', '432109876', 1),
(14, '900939837', 'Julio Cesar', 'Carrillo', 'Rocha', 'juliocesar@gmail.com', '678901234', 3),
(15, '900939837N', 'Sergi', 'Rafael', 'Sanchez', 'sergirafael@gmail.com', '109876543', 2),
(16, '643643764O', 'Christian', 'Monrabal', 'Donis', 'christianmonrabal@gmail.com', '765432109', 3),
(17, '763786435P', 'Guillem', 'Abad', 'Gonzalez', 'guillemabad@gmail.com', '321098765', 2),
(18, '779474739Q', 'Alex', 'Ventura', 'Reynes', 'alexventura@gmail.com', '789012345', 1),
(19, '436346374R', 'Eric', 'Alcazar', 'Contreras', 'ericalcazar@gmail.com', '234567890', 1),
(20, '343987798S', 'Oriol', 'Godoy', 'Morote', 'oriolgodoy@gmail.com', '901234567', 3),
(21, '778784377T', 'Ming', 'Zhou', 'Ho', 'mingzhou@gmail.com', '232323232', 2),
(22, '999898984U', 'Francesc', 'Soto', 'Alfonso', 'francescsoto@gmail.com', '543210987', 3),
(23, '973783764V', 'Ivan', 'Moreno', 'Ruiz', 'ivanmoreno@gmail.com', '987654321', 1),
(24, '656734567W', 'Julia', 'Suarez', 'Dueso', 'juliasuarez@gmail.com', '345678901', 3),
(25, '987676545Y', 'Carla', 'Maldonado', 'Benedicto', 'carlamaldonado@gmail.com', '210987654', 2),
(26, '876543253X', 'Aina', 'Orozco', 'Gonzalez', 'ainaorozco@gmail.com', '876543210', 1),
(27, '132323243Z', 'Dylan', 'Castles', 'Cazalla', 'dylancastles@gmail.com', '654321098', 3),
(28, '373268129A', 'Erik', 'Penya', 'Andrea', 'erikpenya@gmail.com', '678901234', 1),
(29, '763732983B', 'Manav', 'Kumar', 'Sharma', 'manavkumar@gmail.com', '432109876', 2),
(30, '644675765Z', 'Daniel', 'Font', 'Capilla', 'danifont@gmail.com', '567890123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `id_clase` int(11) NOT NULL,
  `codigo_clase` int(3) NOT NULL,
  `nombre_clase` varchar(25) NOT NULL,
  `profesor` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`id_clase`, `codigo_clase`, `nombre_clase`, `profesor`) VALUES
(1, 101, 'Social', 1),
(2, 201, 'SMX', 2),
(3, 301, 'ASIX', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_dep` int(11) NOT NULL,
  `nombre_dept` varchar(50) DEFAULT NULL,
  `codigo_dept` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_dep`, `nombre_dept`, `codigo_dept`) VALUES
(1, 'Departamento BATX', 1),
(2, 'Departamento GM (Grado Medio)', 2),
(3, 'Departamento GS (Grado Superior)', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `dni_prof` int(11) NOT NULL,
  `nombre_prof` varchar(50) NOT NULL,
  `apellido1_prof` varchar(25) NOT NULL,
  `apellido2_prof` varchar(25) NOT NULL,
  `email_prof` varchar(100) NOT NULL,
  `telf_prof` int(9) NOT NULL,
  `dept_prof` int(3) NOT NULL,
  `sal_prof` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`dni_prof`, `nombre_prof`, `apellido1_prof`, `apellido2_prof`, `email_prof`, `telf_prof`, `dept_prof`, `sal_prof`) VALUES
(1, 'Gerard', 'Orobitg', 'Boyer', 'gerardorobitg@gmail.com', 123456789, 2, '2500.00'),
(2, 'Agnes', 'Plans', 'Berenguer', 'agnesplans@gmail.com', 987654321, 2, '2200.00'),
(3, 'Ignasi', 'Romero', 'Sanjuan', 'ignasiromero@gmail.com', 555555555, 3, '3000.00'),
(4, 'Nuria', 'Garres', 'Gonzalez', 'nuriagarres@gmail.com', 617861871, 2, '2800.00'),
(5, 'Pedro', 'Blanco', 'Andres', 'pedroblanco@gmail.com', 354789267, 2, '2600.00'),
(6, 'Alberto', 'De Santos', 'Ontoria', 'albertodesantos@gmail.com', 463927461, 2, '2700.00'),
(7, 'Sergio', 'Velasco', 'Gomez', 'sergiovelasco@gmail.com', 749278420, 2, '2400.00'),
(8, 'Sergio', 'Jimenez', 'Garcia', 'sergiojimenez@gmail.com', 792483191, 2, '2300.00'),
(9, 'Anabel', 'Montells', 'Perez', 'anabelsmontells@gmail.com', 567383830, 1, '3200.00'),
(10, 'Virginia', 'Simon', 'Gonzalez', 'virginiasimon@gmail.com', 768379379, 1, '3100.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_alumno` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_users`
--

INSERT INTO `tbl_users` (`id_alumno`, `username`, `password`) VALUES
(1, 'newvision', 'qweQWE123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`num_matricula`),
  ADD KEY `fk_clase` (`clase`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`id_clase`),
  ADD KEY `fk_profesor` (`profesor`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_dep`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`dni_prof`),
  ADD KEY `fk_dept_prof` (`dept_prof`);

--
-- Indices de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_alumno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `num_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `id_clase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `dni_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_clase` FOREIGN KEY (`clase`) REFERENCES `clase` (`id_clase`);

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `fk_profesor` FOREIGN KEY (`profesor`) REFERENCES `profesor` (`dni_prof`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `fk_dept_prof` FOREIGN KEY (`dept_prof`) REFERENCES `departamento` (`id_dep`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
