-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2019 a las 05:47:21
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejercicio5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `edad` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `edad`, `correo`, `fecha_nacimiento`) VALUES
(7, 'camilo', '21', 'camilo1@gmail.com', '2019-04-09'),
(1234, 'luisa', '20', 'luisa67@gmail.com', '2019-02-19'),
(123435, 'juan jose', '24', 'juanjose17@gmail.com', '2019-03-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `referencia_id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `precio` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`referencia_id`, `nombre`, `precio`) VALUES
(123435, 'jabon', '15.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedor`
--

CREATE TABLE `provedor` (
  `nit` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provedor`
--

INSERT INTO `provedor` (`nit`, `nombre`, `telefono`, `fecha_nacimiento`) VALUES
(123435, 'alejandra', 3165880, '2019-04-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`referencia_id`),
  ADD KEY `referencia_id` (`referencia_id`);

--
-- Indices de la tabla `provedor`
--
ALTER TABLE `provedor`
  ADD PRIMARY KEY (`nit`),
  ADD KEY `nit` (`nit`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123436;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `referencia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123436;

--
-- AUTO_INCREMENT de la tabla `provedor`
--
ALTER TABLE `provedor`
  MODIFY `nit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123436;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`referencia_id`) REFERENCES `cliente` (`id`);

--
-- Filtros para la tabla `provedor`
--
ALTER TABLE `provedor`
  ADD CONSTRAINT `provedor_ibfk_1` FOREIGN KEY (`nit`) REFERENCES `producto` (`referencia_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
