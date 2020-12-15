-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2020 a las 03:32:05
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_distritox`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `titulo_dep` varchar(150) DEFAULT NULL,
  `sigla_dep` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `titulo_dep`, `sigla_dep`) VALUES
(1, 'Desarrollo Humano', 'DH'),
(2, 'Sin Departamento', 'SD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id_documento` int(11) NOT NULL,
  `titulo_doc` varchar(100) DEFAULT NULL,
  `descripcion_doc` varchar(200) DEFAULT NULL,
  `tramitante` varchar(100) NOT NULL,
  `fecha_inicio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `documento_departamento` int(11) DEFAULT NULL,
  `documento_tipodoc` int(11) DEFAULT NULL,
  `documento_usuario` int(11) DEFAULT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_documento`, `titulo_doc`, `descripcion_doc`, `tramitante`, `fecha_inicio`, `documento_departamento`, `documento_tipodoc`, `documento_usuario`, `estado`) VALUES
(17, 'Permiso comercial', 'Para la feria tantos del distrito tantos', 'Jorge Gorgojo', '2020-12-14 00:29:22', 1, 1, 4, 'pendiente'),
(22, 'Solicitud de mantenimiento', 'esta es una solicitud de mantenimiento', 'Wilson Condori Pairumani', '2020-12-14 22:58:41', 2, 1, 4, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipodocumento` int(11) NOT NULL,
  `titulo_tipodoc` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_tipodocumento`, `titulo_tipodoc`) VALUES
(1, 'Solicitud'),
(2, 'Invitacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `titulo_tipouser` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `titulo_tipouser`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombres_usuario` varchar(50) DEFAULT NULL,
  `apellido_usuario` varchar(100) DEFAULT NULL,
  `celular_usuario` varchar(100) DEFAULT NULL,
  `ci_usuario` int(11) DEFAULT NULL,
  `fnac_usuario` date DEFAULT NULL,
  `direccion_usuario` varchar(150) DEFAULT NULL,
  `email_usuario` varchar(100) DEFAULT NULL,
  `clave_usuario` varchar(50) DEFAULT NULL,
  `usuario_tipouser` int(11) NOT NULL,
  `usuario_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombres_usuario`, `apellido_usuario`, `celular_usuario`, `ci_usuario`, `fnac_usuario`, `direccion_usuario`, `email_usuario`, `clave_usuario`, `usuario_tipouser`, `usuario_departamento`) VALUES
(1, 'Wilson', 'con', '777', 6666, '1996-11-17', 'La Paz', 'wil@wil', '123', 1, 1),
(3, 'wendy', 'stacyc', '99933', 55511, '1996-11-12', 'Sta Cruz', 'Wendy@q', '111', 1, 1),
(4, 'Wen', 'dalas', '12345', 888, '1996-11-01', 'Ciudad de Cochabamba', 'wendy@wen', '111', 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_documento`),
  ADD KEY `documento_departamento` (`documento_departamento`),
  ADD KEY `documento_tipodoc` (`documento_tipodoc`),
  ADD KEY `documento_usuario` (`documento_usuario`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipodocumento`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `usuario_tipouser` (`usuario_tipouser`),
  ADD KEY `usuario_departamento` (`usuario_departamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipodocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`documento_departamento`) REFERENCES `departamento` (`id_departamento`),
  ADD CONSTRAINT `documento_ibfk_2` FOREIGN KEY (`documento_tipodoc`) REFERENCES `tipo_documento` (`id_tipodocumento`),
  ADD CONSTRAINT `documento_ibfk_3` FOREIGN KEY (`documento_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usuario_tipouser`) REFERENCES `tipo_usuario` (`id_tipo_usuario`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`usuario_departamento`) REFERENCES `departamento` (`id_departamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
