

--
-- Base de datos: `Usuarios`
--

CREATE DATABASE Usuarios;

USE Usuarios;


-- --------------------------------------------------------

--
-- Estructura de tabla `Usuario`
--

CREATE TABLE `usuario` (
  `documento` int(10) NOT NULL,
  `nombres` text COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `celular` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Indices de la tabla `Usuario`
--

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`documento`);

