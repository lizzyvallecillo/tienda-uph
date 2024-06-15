-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2023 a las 18:31:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `orden` varchar(50) DEFAULT NULL,
  `id_producto` int(11) NOT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha` varchar(50) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `orden`, `id_producto`, `estado`, `cantidad`, `descripcion`, `fecha`, `usuario`) VALUES
(1, 'ORD-001', 1, 'Salida', 1.00, 'HP - Tóner color negro para impresora', '10/05/2023', 'Adelmo Roque'),
(2, 'ORD-01', 1, 'Salida', 1.00, 'HP - Tóner color negro para impresora', '10/05/2023', 'Adelmo Roque'),
(3, 'ORD-003', 1, 'Salida', 1.00, 'HP - Tóner color negro para impresora', '10/05/2023', 'Adelmo Roque'),
(4, 'ORD-003', 1, 'Salida', 1.00, 'HP - Tóner color negro para impresora', '11/05/2023', 'Adelmo Roque'),
(5, 'ORD-003', 1, 'Activo', 1.00, 'HP - Tóner color negro para impresora', '11/05/2023', 'Adelmo Roque'),
(6, 'ORD-003', 1, 'Activo', 1.00, 'HP - Tóner color negro para impresora', '11/05/2023', 'Adelmo Roque'),
(7, 'ORD-003', 1, 'Activo', 1.00, 'HP - Tóner color negro para impresora', '11/05/2023', 'Adelmo Roque'),
(8, 'ORD-004', 1, 'Salida', 1.00, 'HP - Tóner color negro para impresora', '11/05/2023', 'Adelmo Roque'),
(9, '', 0, '', 0.00, '', '', ''),
(10, '', 0, '', 0.00, '', '', ''),
(11, '', 0, '', 0.00, '', '', ''),
(12, '', 0, '', 0.00, '', '', ''),
(13, '', 0, '', 0.00, '', '', ''),
(14, '', 0, '', 0.00, '', '', ''),
(15, '', 0, '', 0.00, '', '', ''),
(16, 'ORD-003', 1, '', 1.00, 'HP - Tóner color negro para impresora', '2023-05-11T10:04', 'Adelmo Roque'),
(17, 'ORD-003', 1, '', 1.00, 'HP - Tóner color negro para impresora', '2023-05-11T10:04', 'Adelmo Roque'),
(18, 'ORD-003', 1, '', 1.00, 'HP - Tóner color negro para impresora', '2023-05-11T10:04', 'Adelmo Roque'),
(19, '', 0, '', 0.00, '', '', ''),
(20, '', 0, '', 0.00, '', '', ''),
(21, '', 0, '', 0.00, '', '', ''),
(22, '', 0, '', 0.00, '', '', ''),
(23, 'ORD-005', 1, 'Activo', 0.00, 'HP - Tóner color negro para impresora', '2023-05-11T10:11', 'Adelmo Roque'),
(24, 'ORD-005', 1, 'Activo', 0.00, 'HP - Tóner color negro para impresora', '2023-05-11T10:11', 'Adelmo Roque'),
(25, '', 0, '', 0.00, '', '', ''),
(26, '', 0, '', 0.00, '', '', ''),
(27, '', 0, '', 0.00, '', '', ''),
(28, '', 0, '', 0.00, '', '', ''),
(29, '', 0, '', 0.00, '', '', ''),
(30, '', 0, '', 0.00, '', '', ''),
(31, '', 0, '', 0.00, '', '', ''),
(32, '', 0, '', 0.00, '', '', ''),
(33, '', 0, '', 0.00, '', '', ''),
(34, '', 0, '', 0.00, '', '', ''),
(35, '', 0, '', 0.00, '', '', ''),
(36, '', 0, '', 0.00, '', '', ''),
(37, '', 0, '', 0.00, '', '', ''),
(38, '', 0, '', 0.00, '', '', ''),
(39, '', 0, '', 0.00, '', '', ''),
(40, '', 0, '', 0.00, '', '', ''),
(41, '', 0, '', 0.00, '', '', ''),
(42, 'ORD-041', 1, '', 1.00, 'HP - Tóner color negro para impresora', '2023-05-11T10:36', 'Adelmo Roque'),
(43, 'ORD-041', 1, '', 1.00, 'HP - Tóner color negro para impresora', '2023-05-11T10:36', 'Adelmo Roque'),
(44, '', 0, '', 0.00, '', '', ''),
(45, '', 0, '', 0.00, '', '', ''),
(46, '', 0, '', 0.00, '', '', ''),
(47, '', 0, '', 0.00, '', '', ''),
(48, '', 0, '', 0.00, '', '', ''),
(49, '', 0, '', 0.00, '', '', ''),
(50, '', 0, '', 0.00, '', '', ''),
(51, '', 0, '', 0.00, '', '', ''),
(52, '', 0, '', 0.00, '', '', ''),
(53, '', 0, '', 0.00, '', '', ''),
(54, '', 0, '', 0.00, '', '', ''),
(55, '', 0, '', 0.00, '', '', ''),
(56, '', 0, '', 0.00, '', '', ''),
(57, '', 0, '', 0.00, '', '', ''),
(58, '', 0, '', 0.00, '', '', ''),
(59, '', 0, '', 0.00, '', '', ''),
(60, '', 0, '', 0.00, '', '', ''),
(61, '', 0, '', 0.00, '', '', ''),
(62, '', 0, '', 0.00, '', '', ''),
(63, '', 0, '', 0.00, '', '', ''),
(64, '', 0, '', 0.00, '', '', ''),
(65, '', 0, '', 0.00, '', '', ''),
(66, '', 0, '', 0.00, '', '', ''),
(67, '', 0, '', 0.00, '', '', ''),
(68, '', 0, '', 0.00, '', '', ''),
(69, 'ORD-003', 1, 'Activo', 1.00, 'HP - Tóner color negro para impresora', '2023-05-11T11:45', 'Adelmo Roque'),
(70, 'ORD-003', 1, 'Activo', 1.00, 'HP - Tóner color negro para impresora', '2023-05-11T11:45', 'Adelmo Roque'),
(71, '', 0, '', 0.00, '', '', ''),
(72, '', 0, '', 0.00, '', '', ''),
(73, '', 0, '', 0.00, '', '', ''),
(74, '', 0, '', 0.00, '', '', ''),
(75, '', 0, '', 0.00, '', '', ''),
(76, '', 0, '', 0.00, '', '', ''),
(77, '', 0, '', 0.00, '', '', ''),
(78, '', 0, '', 0.00, '', '', ''),
(79, '', 0, '', 0.00, '', '', ''),
(80, '', 0, '', 0.00, '', '', ''),
(81, '', 0, '', 0.00, '', '', ''),
(82, '', 0, '', 0.00, '', '', ''),
(83, '', 0, '', 0.00, '', '', ''),
(84, '', 0, '', 0.00, '', '', ''),
(85, '', 0, '', 0.00, '', '', ''),
(86, '', 0, '', 0.00, '', '', ''),
(87, '', 0, '', 0.00, '', '', ''),
(88, '', 0, '', 0.00, '', '', ''),
(89, 'ORD-200', 0, '', 0.00, '', '', ''),
(90, '', 0, '', 0.00, '', '', ''),
(91, 'ORD-2002', 0, '', 0.00, '', '', ''),
(92, '', 0, '', 0.00, '', '', ''),
(93, '', 0, NULL, 1.00, '', '', ''),
(94, '', 0, NULL, 1.00, '', '2023-05-16T15:15', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `modelo`, `descripcion`) VALUES
(1, 'HP-mew-1025 -2023', 'HP - Tóner color negro para impresora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `presentacion` varchar(50) DEFAULT NULL,
  `id_marca` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `codigo`, `descripcion`, `presentacion`, `id_marca`, `id_proveedor`, `ubicacion`, `estado`, `precio`, `stock`, `total`, `id_user`) VALUES
(2, '442524', 'HP - Tóner color negro para impresora', 'caja', 1, 1, 'almacén 1', 'Activo', 20.00, 2.00, 40.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `descripcion`, `estado`, `fecha`) VALUES
(1, 'Inversiones tecnológicos SAC', 'Activo', '2023-05-10 12:12'),
(2, 'Importadora chincha SAC', 'Activo', '2023-05-10 12:09'),
(3, 'Deltom SAC', 'Activo', '2023-05-10 12:10'),
(4, 'IMPORTACIONES PERU EIRL', 'Activo', '2023-05-10 12:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `name`, `rol`, `pass`, `estado`) VALUES
(1, 'admin', 'Adelmo Roque', 'Admin', '$2a$08$VMVySU0UQVaAiv5uQ7n7ZOpAMHZpaTLZHRrMq1jlRHg/bqepu16lO', ''),
(2, 'Usuario', 'Usuario Invitado', 'Data entry', '$2a$08$73SuTQVYUfBZaX0.CI4p7.qZ4zs/uG2IGmHwZAMgRLVJirrE65/QO', ''),
(3, 'sistemas@arifeperu.com', '', 'Data entry', '', ''),
(4, 'Asistente', '', 'Data entry', '', ''),
(5, 'Asistente2', 'Lucy Díaz', 'Data entry', '$2a$08$dcjN/KmzO1b.wNUtUbZMqesqyk58OqL9lbHWC8rIzgDHEpmpskdSy', ''),
(6, 'user', 'Lucy Díaz', 'Admin', '$2a$08$ya.K4EXGP2ukQJ4rYlMeAupaUOF7Z/brZf0JQaVSmlWls4tIWbqny', ''),
(7, 'Asistente3', 'Juan lucas', 'Data entry', '$2a$08$uR5usdTj930mvbVI8tx.9uP4/fPHZ4agiLJqHTsfppvd5gS9/eE7q', ''),
(8, 'Asistente4', 'Juana Lupita', 'Data entry', '$2a$08$stBZMDeBOkr/8K8HPn5hNOwJih/8pBBzY97vudjmgj2oUJnLExIee', ''),
(9, 'Asistente4', 'Juana Lupita', 'Data entry', '$2a$08$d4v3dgPg9p.VjcP/iTvM4OdwUlwrJjsE1Z/MRJvTN99vg6cPUXg32', ''),
(10, 'Asistente4', 'Lucy Díaz', 'Data entry', '$2a$08$mZbLgCz2sX8WnAudXucUHOPWgRGVg0D13H5ttEwjYlBMXvOS1tsd2', ''),
(11, 'softsystemperu', 'soft', 'Admin', '$2a$08$RG.3hNPJuRon5gXbczWY5OkYPeW/k7AXCZSqCBxPtM821fEhecHyq', ''),
(12, 'admin', 'Juan lucas', 'Data entry', '$2a$08$qIHkQiJEaBgutjBHQRx7HO56XqUcG6osioOO0eUFJoCqwuFBdzCoy', ''),
(13, 'admin', 'Lucy Díaz', 'Admin', '$2a$08$8vdG7jRMZpk6VSyULKubQOOD/3MAlAnpjTFOx8MInx294kFlo.IrC', ''),
(14, 'Asistente4', 'Lucy Díaz', 'Admin', '$2a$08$rCP30MCsqVg1BMbjsraw3OjWXR78/uEg3PJMesjtPTpZpfaXl0Wn2', ''),
(15, 'admin', 'Lucy Díaz', 'Admin', '$2a$08$5POJCqmzlKclulcTHP3PUesKh36Eq2697DY76lrDw7HxI3rwKDj5a', ''),
(16, 'Asistente2', 'Lucy Díaz', 'Admin', '$2a$08$2g4UWC0/iyIHc76HNoquLORlnWwPJauKTccwVGdeWHGzgtpYQjN82', ''),
(17, 'admin', 'Juan lucas', 'Admin', '$2a$08$8J4OhiRJ/MlyU3tHuEocyex9BDkBWluePgNW9g6GmND9XtiV2aY62', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
