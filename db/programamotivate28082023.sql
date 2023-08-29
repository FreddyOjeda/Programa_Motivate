-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2023 a las 04:33:27
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `programamotivate`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `idactividades` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `imagen` varchar(100) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `qr` varchar(45) DEFAULT NULL,
  `mensajeQr` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`idactividades`, `nombre`, `fechaCreacion`, `imagen`, `descripcion`, `qr`, `mensajeQr`) VALUES
(1, 'Capacitaciones', '2023-08-10 18:09:34', 'capacitaciones.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(2, 'Pausas Activas', '2023-08-10 18:09:34', 'pausasactivas.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'pausas.png', 'En este código QR puedes registrar tu asistencia a la pausa activa'),
(3, 'Reportes de Actos y Condiciones Inseguras', '2023-08-10 18:09:34', 'reportes.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'condiciones_inseguras.png', 'En este código QR puedes registrar tu reporte de actos y condiciones'),
(4, 'Participación en Comités de SSTA', '2023-08-10 18:09:34', 'participacionssta.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(5, 'Inspecciones Comportamentales', '2023-08-10 18:09:34', 'resultados.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(6, 'Tapitas Para Sanar', '2023-08-10 18:09:34', 'tapitas.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(7, 'Participación en Actividades Ambientales', '2023-08-10 18:09:34', 'participacionambiental.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(8, 'Hábitos y Estilos de Vida Saludable', '2023-08-10 18:09:34', 'habitos.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(9, 'Uso de Medio de Transporte Ambientales', '2023-08-10 18:09:34', 'transporte.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(10, 'Cumplimiento en los Tiempos de Respuesta', '2023-08-10 18:09:34', 'cumplimiento.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(11, 'Otras Actividades', '2023-08-10 18:09:34', 'otros.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(12, 'Ciberseguridad', '2023-08-10 18:09:34', 'ciberseguridad.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adminitradores`
--

CREATE TABLE `adminitradores` (
  `idadminitradores` int(11) NOT NULL,
  `correoElectronico` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE `colaborador` (
  `idcolaborador` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `fechaIngreso` datetime DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `id_empresa` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`idcolaborador`, `nombre`, `apellido`, `cedula`, `fechaIngreso`, `correoElectronico`, `cargo`, `id_empresa`) VALUES
(1, 'Julian Alberto', 'Mora Matiz', '1018474605', '2022-09-05 00:00:00', 'julian.mora95@gmail.com', 'Ingeniero Web Master', 2),
(2, 'Freddy ', 'Ojeda', '1007493702', '2023-04-26 00:00:00', 'freddyeojeda@gmail.com', 'Desarrollador Junior', 2),
(3, 'Jhon', 'Paipa', '123123123', '2023-04-26 00:00:00', 'jhonpaipa@gmail.com', 'Ingeniero de sistemas', 2),
(4, 'Ruben', 'Macias', '123456789', '2023-04-26 00:00:00', 'rubenmacias@gmail.com', 'Ingeniero de sistemas', 2),
(5, 'Andrea', 'Salcedo', '98765432', '2023-04-26 00:00:00', 'andreasalcedo@gmail.com', 'Ingeniero de sistemas', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `nombre`) VALUES
(1, 'bdguidance'),
(2, 'ittic'),
(3, 'bps');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `idhistorial` int(11) NOT NULL,
  `idAdministrador` int(11) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `observacion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion`
--

CREATE TABLE `puntuacion` (
  `idpuntuacion` int(11) NOT NULL,
  `puntos` varchar(45) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `idColaborador` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  `nombreActividad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puntuacion`
--

INSERT INTO `puntuacion` (`idpuntuacion`, `puntos`, `fechaCreacion`, `idColaborador`, `idActividad`, `observaciones`, `nombreActividad`) VALUES
(1, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'Capacitacion comunicacion asertiva'),
(2, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 1'),
(3, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 2'),
(4, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 3'),
(5, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 4'),
(6, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 5'),
(7, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 6'),
(8, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 7'),
(9, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 8'),
(10, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 9'),
(11, '10', '2023-08-22 00:00:00', 2, 1, 'N/A', 'semana de la salud 10'),
(12, '10', '2023-08-22 00:00:00', 3, 1, 'asd', 'semana de la salud 11'),
(13, '10', '2023-08-22 00:00:00', 3, 1, 'asd', 'semana de la salud 11'),
(14, '10', '2023-08-22 00:00:00', 3, 1, 'asd', 'semana de la salud 11'),
(15, '10', '2023-08-22 00:00:00', 4, 1, 'asd', 'semana de la salud 11'),
(16, '10', '2023-08-22 00:00:00', 4, 1, 'asd', 'semana de la salud 11'),
(17, '10', '2023-08-22 00:00:00', 5, 1, 'asd', 'semana de la salud 11'),
(18, '10', '2023-08-23 00:00:00', 1, 1, 'vbc', 'semana de la salud 12'),
(19, '10', '2023-08-23 00:00:00', 1, 1, 'vbc', 'semana de la salud 12'),
(20, '10', '2023-08-23 00:00:00', 1, 1, 'vbc', 'semana de la salud 12'),
(21, '10', '2023-08-23 00:00:00', 1, 1, 'vbc', 'semana de la salud 12'),
(22, '10', '2023-08-23 00:00:00', 1, 1, 'vbc', 'semana de la salud 12'),
(23, '30', '2023-08-28 00:00:00', 1, 1, 'asdasdasd', 'Semana de la salud 1'),
(24, '25', '2023-08-28 00:00:00', 1, 2, 'Lorem Ipsum', 'pausas activas'),
(25, '25', '2023-08-28 00:00:00', 1, 3, 'Lorem Ipsum', 'Reporte de actos inseguros'),
(26, '25', '2023-08-28 00:00:00', 1, 4, 'Lorem Ipsum', 'Comite ssta'),
(27, '25', '2023-08-28 00:00:00', 1, 5, 'Lorem Ipsum', 'Inspecciones comportamentales'),
(28, '25', '2023-08-28 00:00:00', 1, 6, 'Lorem Ipsum', 'Tapitas para sanar'),
(29, '25', '2023-08-28 00:00:00', 1, 7, 'Lorem Ipsum', 'Actividades ambientales'),
(30, '25', '2023-08-28 00:00:00', 1, 8, 'Lorem Ipsum', 'vida saludable'),
(31, '25', '2023-08-28 00:00:00', 1, 9, 'Lorem Ipsum', 'Medio de transporte ambiental'),
(32, '25', '2023-08-28 00:00:00', 1, 10, 'Lorem Ipsum', 'Tiempos de respuesta'),
(33, '25', '2023-08-28 00:00:00', 1, 11, 'Lorem Ipsum', 'Otras actividades'),
(34, '25', '2023-08-28 00:00:00', 1, 12, 'Lorem Ipsum', 'Ciberseguridad'),
(36, '0', '2023-08-28 00:00:00', 2, 2, 'lorem ipsum', 'asdasd'),
(37, '50', '2023-08-28 00:00:00', 1, 2, 'Lorem Ipsum', 'Pausas Pausas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`idactividades`);

--
-- Indices de la tabla `adminitradores`
--
ALTER TABLE `adminitradores`
  ADD PRIMARY KEY (`idadminitradores`);

--
-- Indices de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`idcolaborador`),
  ADD KEY `fk_empresa` (`id_empresa`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`idhistorial`),
  ADD KEY `idAdministrador` (`idAdministrador`);

--
-- Indices de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD PRIMARY KEY (`idpuntuacion`),
  ADD KEY `idColaborador` (`idColaborador`),
  ADD KEY `idActividad` (`idActividad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `idactividades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `adminitradores`
--
ALTER TABLE `adminitradores`
  MODIFY `idadminitradores` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `idcolaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `idhistorial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  MODIFY `idpuntuacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `fk_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`idempresa`);

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`idAdministrador`) REFERENCES `adminitradores` (`idadminitradores`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD CONSTRAINT `puntuacion_ibfk_1` FOREIGN KEY (`idColaborador`) REFERENCES `colaborador` (`idcolaborador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `puntuacion_ibfk_2` FOREIGN KEY (`idActividad`) REFERENCES `actividades` (`idactividades`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
