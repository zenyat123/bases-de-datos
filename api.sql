 

--
-- Base de datos: `Api`
--

CREATE DATABASE Api;

USE Api;


-- --------------------------------------------------------

--
-- Estructura de tabla `Dolar`
--

CREATE TABLE `dolar` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `valor` int(10) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla `Euro`
--

CREATE TABLE `euro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `valor` int(10) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para las tablas  
--

--
-- Indices de la tabla `Dolar`
--

ALTER TABLE `dolar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Euro`
--

ALTER TABLE `euro`
  ADD PRIMARY KEY (`id`);

