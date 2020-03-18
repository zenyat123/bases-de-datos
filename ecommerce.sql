-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-03-2020 a las 20:06:35
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombre`, `email`, `foto`, `password`, `perfil`, `estado`, `fecha`) VALUES
(1, 'Tienda Virtual', 'admin@tiendavirtual.com', 'vistas/img/perfiles/499.png', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 'administrador', 1, '2018-03-27 18:48:36'),
(2, 'Editor de la Tienda', 'editor@tiendavirtual.com', 'vistas/img/perfiles/477.png', '$2a$07$asxx54ahjppf45sd87a5auBnK0T8g/TaNYrkZQmRmlyohJLox8X9S', 'editor', 1, '2018-03-27 18:56:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `ruta`, `tipo`, `img`, `estado`, `fecha`) VALUES
(1, 'sin-categoria', 'sin-categoria', 'vistas/img/banner/default.jpg', 1, '2018-03-26 13:29:51'),
(3, 'desarrollo-web', 'subcategorias', 'vistas/img/banner/web.jpg', 1, '2018-03-26 15:05:48'),
(4, 'pulpas', 'categorias', 'vistas/img/banner/sandia.jpg', 1, '2020-03-18 12:33:29'),
(5, 'bebidas', 'categorias', 'vistas/img/banner/limonada.jpg', 1, '2020-03-10 15:51:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeceras`
--

CREATE TABLE `cabeceras` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `palabrasClaves` text COLLATE utf8_spanish_ci NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cabeceras`
--

INSERT INTO `cabeceras` (`id`, `ruta`, `titulo`, `descripcion`, `palabrasClaves`, `portada`, `fecha`) VALUES
(1, 'inicio', 'Pulpa Fruit SA | Tienda', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia', 'Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse', 'vistas/img/cabeceras/default.jpg', '2020-02-26 21:22:48'),
(2, 'desarrollo-web', 'Desarrollo Web', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia', 'Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse', 'vistas/img/cabeceras/web.jpg', '2017-11-17 14:59:28'),
(4, 'bebidas', 'Bebidas', 'Bebidas naturales', 'bebidas,avena,jugos', 'vistas/img/cabeceras/default/default.jpg', '2020-02-25 20:33:28'),
(5, 'bebidas', 'Bebidas', 'Bebidas naturales', 'bebidas', 'vistas/img/cabeceras/default/default.jpg', '2020-02-25 20:26:40'),
(6, 'bebidas', 'Bebidas', 'Bebidas naturales', 'bebidas', 'vistas/img/cabeceras/bebidas.jpg', '2020-02-25 20:28:55'),
(7, 'alimentos', 'Alimentos', 'Alimentos naturales', 'alimentos', 'vistas/img/cabeceras/default/default.jpg', '2020-02-25 20:32:54'),
(8, 'compota-en-vidrio', 'Compota en Vidrio', 'Compota en vidrio', 'compota', 'vistas/img/cabeceras/default/default.jpg', '2020-02-25 20:41:22'),
(9, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compota,Manzana', 'vistas/img/cabeceras/default/default.jpg', '2020-02-25 21:14:27'),
(10, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compota,Manzana', 'vistas/img/cabeceras/default/default.jpg', '2020-02-25 21:14:29'),
(11, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compota,Manzana', 'vistas/img/cabeceras/default/default.jpg', '2020-02-25 21:14:35'),
(12, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/default/default.jpg', '2020-02-25 21:14:57'),
(13, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:19'),
(14, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:41'),
(15, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:43'),
(16, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:43'),
(17, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:44'),
(18, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:44'),
(19, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:44'),
(20, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:45'),
(21, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:45'),
(22, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:15:45'),
(23, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:09'),
(24, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:31'),
(25, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:33'),
(26, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:33'),
(27, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:39'),
(28, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:39'),
(29, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:40'),
(30, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:40'),
(31, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:40'),
(32, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:41'),
(33, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:41'),
(34, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:41'),
(35, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:42'),
(36, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:16:42'),
(37, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:22'),
(38, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:31'),
(39, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:36'),
(40, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:37'),
(41, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:38'),
(42, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:39'),
(43, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:40'),
(44, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:40'),
(45, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:41'),
(46, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:18:42'),
(47, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Saludables y nutritivas creadas para los nuevos integrantes de la familia en prácticos envases en diferentes sabores', 'Compotas ', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:19:57'),
(48, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:25:36'),
(49, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:25:38'),
(50, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:25:40'),
(51, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:04'),
(52, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:05'),
(53, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:09'),
(54, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:14'),
(55, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:35'),
(56, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:38'),
(57, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:39'),
(58, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:40'),
(59, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:41'),
(60, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:42'),
(61, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:26:47'),
(62, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:27:10'),
(63, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:27:13'),
(64, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:27:14'),
(65, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:27:15'),
(66, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:27:24'),
(67, 'compota-en-vidrio-de-manzana', 'Compota en vidrio de Manzana', 'Compota en Vidrio', 'compota', 'vistas/img/cabeceras/compota-en-vidrio-de-manzana.jpg', '2020-02-25 21:27:25'),
(68, 'gratuitos', 'Gratuitos', 'Artículos gratuitos', 'gratuitos,gratis', 'vistas/img/cabeceras/default/default.jpg', '2020-03-11 15:37:48'),
(69, 'gratuitos', 'Gratuitos', 'Artículos gratuitos', 'gratuitos,gratis', 'vistas/img/cabeceras/default/default.jpg', '2020-03-11 15:37:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `estado`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(1, 'Alimentación', 'alimentacion-infantil', 1, 0, 0, 0, '', '2020-02-25 15:29:49', '2020-03-03 19:17:20'),
(2, 'Bebidas', 'bebidas', 1, 1, 5, 50, 'vistas/img/ofertas/limonada.jpg', '2020-03-25 15:29:49', '2020-03-10 13:42:57'),
(3, 'Mermeladas', 'mermeladas', 1, 0, 0, 0, '', '2020-02-25 15:35:02', '2020-02-25 20:35:49'),
(4, 'Salsas', 'salsas', 1, 0, 0, 0, '', '2020-02-25 15:36:48', '2020-02-25 20:37:10'),
(5, 'Pulpas', 'pulpas', 1, 1, 16, 20, 'vistas/img/ofertas/sandia.jpg', '2020-03-28 16:08:30', '2020-03-10 14:39:34'),
(6, 'Gratuitos', 'gratuitos', 1, 0, 0, 0, '', '2020-03-31 10:38:33', '2020-03-11 15:40:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` float NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 2, 496, 4, 'Lo mejor de PHP', '2020-03-12 15:23:59'),
(2, 2, 12, 4.5, 'Excelente producto, recomendado.', '2020-03-12 16:02:06'),
(3, 12, 12, 4, 'Producto de calidad, con buen empaque.', '2020-03-12 16:04:48'),
(4, 3, 12, 5, 'De los mejores en el mercado.', '2020-03-12 16:06:30'),
(6, 2, 2, 5, 'Muy buen producto para los bebés aportandoles salud y bienestar.', '2020-03-12 16:39:57'),
(7, 2, 553, 5, 'Excelente producto para los bebés', '2020-02-27 21:47:08'),
(8, 2, 5, 5, 'Buen producto, mejor que otros del mercado', '2020-03-12 16:33:51'),
(9, 2, 6, 3, 'Deberian tener mas cantidad', '2020-03-12 16:44:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `impuesto` float NOT NULL,
  `envioNacional` float NOT NULL,
  `envioInternacional` float NOT NULL,
  `tasaMinimaNal` float NOT NULL,
  `tasaMinimaInt` float NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `clienteIdPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `llaveSecretaPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPayu` text COLLATE utf8_spanish_ci NOT NULL,
  `merchantIdPayu` int(11) NOT NULL,
  `accountIdPayu` int(11) NOT NULL,
  `apiKeyPayu` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `impuesto`, `envioNacional`, `envioInternacional`, `tasaMinimaNal`, `tasaMinimaInt`, `pais`, `modoPaypal`, `clienteIdPaypal`, `llaveSecretaPaypal`, `modoPayu`, `merchantIdPayu`, `accountIdPayu`, `apiKeyPayu`) VALUES
(1, 19, 1, 2, 10, 15, 'CO', 'sandbox', 'AecffvSZfOgj6g1MkrVmz12ACMES2-InggmWCpU5CblR-z5WwkYBYjmLsh9yPRLuRape1ahjqpcJet4N', 'EAx1SVMHGV6MJKwl-pnOSzaJASlAINZdYRdS--wkgaPYLevcGw88V0PU_W_rg00xLkBknybCjsO_xzA0', 'sandbox', 508029, 512321, '4Vj8eK4rloUd272L48hsrarnUA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `envio` int(11) NOT NULL,
  `metodo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `id_producto`, `envio`, `metodo`, `email`, `direccion`, `pais`, `cantidad`, `detalle`, `pago`, `fecha`) VALUES
(1, 86, 12, 0, 'paypal', '', 'barranca', 'pe', 0, NULL, '10', '2020-01-06 13:07:43'),
(2, 86, 8, 2, 'payu', '', 'barranca', 'pe', 0, NULL, '10', '2020-01-12 12:12:14'),
(3, 87, 7, 0, 'paypal', '', 'urb 17 de mayo mz a lt 1-2', 'pe', 0, NULL, '10', '2020-02-27 13:07:09'),
(12, 2, 2, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, NULL, '10', '2020-02-27 12:55:18'),
(13, 2, 5, 2, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, NULL, '10', '2020-02-27 12:55:24'),
(14, 2, 2, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, NULL, '10', '2020-03-08 12:56:01'),
(15, 2, 6, 0, 'payu', 'correo@test.com', '', '', 0, NULL, '20', '2020-03-08 12:56:06'),
(16, 2, 2, 2, 'payu', 'correo@test.com', '', '', 0, NULL, '20', '2020-03-09 12:55:58'),
(17, 2, 1, 0, 'payu', 'ejemplo@test.com', '', '', 0, NULL, '10', '2020-03-10 12:55:53'),
(18, 2, 3, 0, 'gratis', 'pepe@gmail.com', '', '', 0, NULL, '20', '2020-03-12 12:55:47'),
(19, 2, 8, 0, 'gratis', 'pepe@gmail.com', '', '', 0, NULL, '10', '2020-03-16 12:55:41'),
(20, 2, 12, 1, 'gratis', 'pepe@gmail.com', '', '', 0, NULL, '10', '2020-02-27 13:22:56'),
(21, 2, 3, 2, 'gratis', 'pepe@gmail.com', '', '', 0, NULL, '10', '2020-02-27 13:22:54'),
(22, 12, 1, 2, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, NULL, '10', '2020-02-27 13:22:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`id`, `id_usuario`, `id_producto`, `fecha`) VALUES
(1, 9, 469, '2018-03-26 22:03:34'),
(2, 9, 469, '2018-03-26 22:03:35'),
(3, 9, 467, '2018-03-26 22:03:39'),
(4, 9, 3, '2018-03-26 22:03:43'),
(5, 9, 469, '2018-03-26 22:03:54'),
(6, 9, 470, '2018-03-26 22:03:57'),
(7, 9, 467, '2018-03-26 22:04:00'),
(8, 9, 4, '2018-03-26 22:04:37'),
(9, 2, 2, '2020-02-25 16:39:26'),
(10, 2, 468, '2020-02-25 16:41:22'),
(11, 2, 464, '2020-02-25 16:43:46'),
(12, 2, 12, '2020-02-27 15:39:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `nuevosUsuarios` int(11) NOT NULL,
  `nuevasVentas` int(11) NOT NULL,
  `nuevasVisitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `nuevosUsuarios`, `nuevasVentas`, `nuevasVisitas`) VALUES
(1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `apiFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `pixelFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `googleAnalytics` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `apiFacebook`, `pixelFacebook`, `googleAnalytics`, `fecha`) VALUES
(1, '#42a641', '#ffffff', '#42a641', '#ffffff', 'vistas/img/plantilla/PulpaFruit.png', 'vistas/img/plantilla/icono.png', '[{\"red\":\"fa-facebook\",\"estilo\":\"facebookBlanco\",\"url\":\"http://facebook.com/\",\"activo\":1},{\"red\":\"fa-youtube\",\"estilo\":\"youtubeBlanco\",\"url\":\"http://youtube.com/\",\"activo\":1},{\"red\":\"fa-twitter\",\"estilo\":\"twitterBlanco\",\"url\":\"http://twitter.com/\",\"activo\":1},{\"red\":\"fa-google-plus\",\"estilo\":\"googleBlanco\",\"url\":\"http://google.com/\",\"activo\":1},{\"red\":\"fa-instagram\",\"estilo\":\"instagramBlanco\",\"url\":\"http://instagram.com/\",\"activo\":1}]', '\r\n      		<script>   window.fbAsyncInit = function() {     FB.init({       appId      : \'131737410786111\',       cookie     : true,       xfbml      : true,       version    : \'v2.10\'     });            FB.AppEvents.logPageView();             };    (function(d, s, id){      var js, fjs = d.getElementsByTagName(s)[0];      if (d.getElementById(id)) {return;}      js = d.createElement(s); js.id = id;      js.src = \"https://connect.facebook.net/en_US/sdk.js\";      fjs.parentNode.insertBefore(js, fjs);    }(document, \'script\', \'facebook-jssdk\'));  </script>\r\n      		', '\r\n  			<!-- Facebook Pixel Code --> 	<script> 	  !function(f,b,e,v,n,t,s) 	  {if(f.fbq)return;n=f.fbq=function(){n.callMethod? 	  n.callMethod.apply(n,arguments):n.queue.push(arguments)}; 	  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\'; 	  n.queue=[];t=b.createElement(e);t.async=!0; 	  t.src=v;s=b.getElementsByTagName(e)[0]; 	  s.parentNode.insertBefore(t,s)}(window, document,\'script\', 	  \'https://connect.facebook.net/en_US/fbevents.js\'); 	  fbq(\'init\', \'131737410786111\'); 	  fbq(\'track\', \'PageView\'); 	</script> 	<noscript><img height=\"1\" width=\"1\" style=\"display:none\" 	  src=\"https://www.facebook.com/tr?id=149877372404434&ev=PageView&noscript=1\" 	/></noscript> <!-- End Facebook Pixel Code -->    \r\n  			', '  \r\n  				<!-- Global site tag (gtag.js) - Google Analytics --> 	<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-999999-1\"></script> 	<script> 	  window.dataLayer = window.dataLayer || []; 	  function gtag(){dataLayer.push(arguments);} 	  gtag(\'js\', new Date());  	  gtag(\'config\', \'UA-9999999-1\'); 	</script>      \r\n            \r\n            \r\n            \r\n      ', '2020-02-27 19:10:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) DEFAULT NULL,
  `ventasGratis` int(11) DEFAULT NULL,
  `ofertadoPorCategoria` int(11) DEFAULT NULL,
  `ofertadoPorSubCategoria` int(11) DEFAULT NULL,
  `oferta` int(11) DEFAULT NULL,
  `precioOferta` float DEFAULT NULL,
  `descuentoOferta` int(11) DEFAULT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `finOferta` datetime DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `entrega` float DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `estado`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `portada`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `peso`, `entrega`, `fecha`) VALUES
(1, 1, 1, 'fisico', 'compota-en-frasco', 1, 'Compota en Frasco', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/111.png\"},{\"foto\":\"vistas/img/ordenados/112.png\"}, 	{\"foto\":\"vistas/img/ordenados/113.png\"},{\"foto\":\"vistas/img/ordenados/114.png\"}]', '{\"sabor\": [\"Manzana\",\"Mango\",\"Durazno\",\"Pera\"],\"contenido\": [\"30g\",\"60g\",\"120g\"],\"Marca\":\"\"}', 29, 'vistas/img/ordenados/139.png', 82, 1404, 0, 0, 0, 1, 0, 0, 0, 'vistas/img/ofertas/Ropa-para-dama.jpg', '2020-03-31 09:30:52', 1, 10, '2020-03-13 14:41:09'),
(2, 1, 2, 'fisico', 'compota-en-pouch', 1, 'Compota en Pouch', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/107.png\"},{\"foto\":\"vistas/img/ordenados/108.png\"}, 	{\"foto\":\"vistas/img/ordenados/109.png\"},{\"foto\":\"vistas/img/ordenados/110.png\"}]', '{\"sabor\": [\"Manzana\",\"Mango\",\"Durazno\",\"Pera\"],\"contenido\": [\"30g\",\"60g\",\"120g\"],\"Marca\":\"\"}', 29, 'vistas/img/ordenados/107.png', 41, 403, 0, 0, 0, 1, 0, 0, 40, 'vistas/img/ofertas/Ropa-para-dama.jpg', '0000-00-00 00:00:00', 1, 10, '2020-03-17 19:31:13'),
(3, 1, 3, 'fisico', 'compota-en-shachet', 1, 'Compota en Shachet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/135.png\"},{\"foto\":\"vistas/img/ordenados/136.png\"}, 	{\"foto\":\"vistas/img/ordenados/137.png\"},{\"foto\":\"vistas/img/ordenados/138.png\"}]', '{\"sabor\": [\"Durazno\",\"Banano\",\"Guayaba\",\"Pera\"],\"contenido\": [\"30g\",\"60g\",\"120g\"],\"Marca\":\"\"}', 29, 'vistas/img/ordenados/135.png', 22, 402, 0, 0, 0, 1, 0, 0, 40, 'vistas/img/ofertas/Ropa-para-dama.jpg', '0000-00-00 00:00:00', 1, 10, '2020-03-11 14:42:25'),
(4, 2, 4, 'fisico', 'jugo-funky', 1, 'Jugo Funky', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/118.png\"},{\"foto\":\"vistas/img/ordenados/119.png\"}, 	{\"foto\":\"vistas/img/ordenados/120.png\"}]', '{\"sabor\": [\"Manzana\",\"Mango\",\"Durazno\",\"Pera\"],\"contenido\": [\"30g\",\"60g\",\"120g\"],\"Marca\":\"\"}', 10, 'vistas/img/ordenados/118.png', 83, 404, 0, 0, 0, 0, 1, 5, 50, '', '0000-00-00 00:00:00', 1, 10, '2020-03-12 13:14:53'),
(5, 2, 5, 'fisico', 'avena', 1, 'Avena', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/134.png\"}]', '{\"sabor\": [\"Natural\",\"Canela\",\"Cinnamon\"],\"contenido\": [\"30g\",\"60g\",\"120g\"],\"Marca\":\"\"}', 20, 'vistas/img/ordenados/134.png', 38, 400, 0, 0, 1, 1, 1, 10, 50, 'vistas/img/ofertas/calzado.jpg', '2018-04-06 23:59:59', 1, 10, '2020-03-18 17:08:01'),
(6, 2, 6, 'fisico', 'leche-saborizada', 1, 'Leche saborizada', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/116.png\"},{\"foto\":\"vistas/img/ordenados/117.png\"}]', '{\"sabor\": [\"Manzana\",\"Mango\",\"Durazno\",\"Pera\"],\"contenido\": [\"30g\",\"60g\",\"120g\"],\"Marca\":\"\"}', 3, 'vistas/img/ordenados/116.png', 20, 399, 0, 0, 1, 0, 1, 1.5, 50, 'vistas/img/ofertas/calzado.jpg', '2018-04-06 23:59:59', 1, 10, '2020-03-12 13:21:18'),
(7, 3, 7, 'fisico', 'mermelada-de-mora', 1, 'Mermelada de Mora', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/105.png\"}]', '{\"sabor\":\"\",\"contenido\":\"\",\"Marca\":\"\"}', 45, 'vistas/img/ordenados/105.png', 42, 398, 0, 0, 1, 1, 0, 0, 0, 'vistas/img/ofertas/calzado.jpg', '2018-04-06 23:59:59', 1, 10, '2020-03-18 16:11:26'),
(8, 3, 8, 'fisico', 'mermelada-de-fresa', 1, 'Mermelada de Fresa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/106.png\"}]', '{\"sabor\":\"\",\"contenido\":\"\",\"Marca\":\"\"}', 55, 'vistas/img/ordenados/106.png', 25, 397, 0, 0, 1, 0, 0, 0, 0, 'vistas/img/ofertas/calzado.jpg', '2018-04-06 23:59:59', 1, 10, '2020-03-12 12:29:16'),
(9, 4, 10, 'fisico', 'salsa-tomate', 1, 'Salsa de Tomate', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/101.png\"}]', '{\"sabor\":\"\",\"contenido\": [\"30g\",\"60g\",\"120g\",\"200g\"],\"Marca\":\"\"}', 55, 'vistas/img/ordenados/101.png', 23, 396, 0, 0, 1, 0, 1, 27.5, 50, 'vistas/img/ofertas/calzado.jpg', '2018-04-06 23:59:59', 1, 10, '2020-03-11 14:21:46'),
(10, 4, 11, 'fisico', 'salsa-rosada', 1, 'Salsa Rosada', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/102.png\"}]', '{\"sabor\":\"\",\"contenido\": [\"30g\",\"60g\",\"120g\",\"200g\"],\"Marca\":\"\"}', 55, 'vistas/img/ordenados/102.png', 25, 395, 0, 0, 1, 0, 0, 0, 0, 'vistas/img/ofertas/calzado.jpg', '2018-04-06 23:59:59', 1, 10, '2020-03-14 13:08:33'),
(11, 4, 12, 'fisico', 'salsa-mayonesa', 1, 'Salsa de Mayonesa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/104.png\"}]', '{\"sabor\": \"\",\"contenido\": [\"30g\",\"60g\",\"120g\",\"200g\"],\"Marca\":\"\"}', 29, 'vistas/img/ordenados/104.png', 128, 1404, 0, 0, 0, 1, 0, 0, 0, 'vistas/img/ofertas/Ropa-para-dama.jpg', '0000-00-00 00:00:00', 1, 10, '2020-03-17 15:44:22'),
(12, 5, 13, 'fisico', 'pulpa-vitta', 1, 'Pulpa la Vitta', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/ordenados/91.png\"},{\"foto\":\"vistas/img/ordenados/92.png\"}, 	{\"foto\":\"vistas/img/ordenados/93.png\"}]', '{\"sabor\": [\"Mora\",\"Mango\",\"Lulo\"],\"contenido\": [\"30g\",\"60g\",\"120g\"],\"Marca\":\"\"}', 20, 'vistas/img/ordenados/91.png', 119, 1404, 0, 0, 0, 1, 1, 16, 20, 'vistas/img/ofertas/Ropa-para-dama.jpg', '0000-00-00 00:00:00', 1, 10, '2020-03-18 17:08:45'),
(13, 6, 16, 'fisico', 'llaveros-de-frutas', 1, 'Llaveros de frutas', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/gratuitos/llaveros.png\"}]', '{\"sabor\": \"\",\"contenido\": \"\",\"Marca\":\"\"}', 0, 'vistas/img/gratuitos/llaveros.png', 30, 20, 44, 20, NULL, NULL, 0, 0, 0, '', NULL, 1, 10, '2020-03-18 17:18:34'),
(14, 6, 17, 'fisico', 'juego-de-mesa-fruit', 1, 'Juego de mesa Fruit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/gratuitos/fichas.png\"}]', '{\"sabor\": \"\",\"contenido\": \"\",\"Marca\":\"\"}', 0, 'vistas/img/gratuitos/fichas.png', 20, 20, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-11 20:00:25'),
(15, 6, 18, 'fisico', 'stiker-cerezas', 1, 'Stikers de cerezas', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/gratuitos/pegatina.png\"}]', '{\"sabor\": \"\",\"contenido\": \"\",\"Marca\":\"\"}', 0, 'vistas/img/gratuitos/pegatina.png', 12, 12, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-17 21:26:42'),
(16, 6, 19, 'fisico', 'babero', 1, 'Babero para bebes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/gratuitos/babero.png\"}]', '{\"sabor\": \"\",\"contenido\": \"\",\"Marca\":\"\"}', 0, 'vistas/img/gratuitos/babero.png', 12, 12, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-11 19:59:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `orden` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `nombre`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `orden`, `fecha`) VALUES
(1, 'FRUTAS-1', 'vistas/img/slide/slide1.jpg', 'slideOpcion2', '', '{\"top\":\"5\",\"right\":\"\",\"left\":\"5\",\"width\":\"50\"}', '{\"top\":\"6\",\"right\":\"10\",\"left\":\"\",\"width\":\"40\"}', '{\"texto\":\"Puro y Natural\",\"color\":\"white\"}', '{\"texto\":\"Comprometidos con la calidad de nuestros alimentos e ingredientes\",\"color\":\"white\"}', '{\"texto\":\"Desde 1992\",\"color\":\"white\"}', '', '#', 1, '2020-03-11 13:12:58'),
(2, 'FRUTAS-2', 'vistas/img/slide/slide2.jpg', 'slideOpcion2', '', '{\"top\":\"0\",\"right\":\"\",\"left\":\"10\",\"width\":\"16\"}', '{\"top\":\"6\",\"right\":\"15\",\"left\":\"\",\"width\":\"40\"}', '{\"texto\":\"Nuestro compromiso\",\"color\":\"white\"}', '{\"texto\":\"Materia prima de la más alta calidad\",\"color\":\"white\"}', '{\"texto\":\"Certificaciones HACCP, Kosher, entre otras\",\"color\":\"white\"}', '', '#', 2, '2020-03-11 13:42:48'),
(3, 'FRUTAS-3', 'vistas/img/slide/slide3.jpg', 'slideOpcion1', '', '{\"top\":\"5\",\"right\":\"\",\"left\":\"10\",\"width\":\"35\"}', '{\"top\":\"6\",\"right\":\"\",\"left\":\"15\",\"width\":\"40\"}', '{\"texto\":\"Conócenos\",\"color\":\"white\"}', '{\"texto\":\"Amplio portafolio de productos\",\"color\":\"white\"}', '{\"texto\":\"27 años de experiencia en el mercado\",\"color\":\"white\"}', '', '#', 3, '2020-02-27 12:09:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `estado`, `ofertadoPorCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(1, 'Compotas en Frasco', 1, 'compotas-en-frasco', 1, 0, 0, 0, 0, '', '2020-02-25 15:41:39', '2020-02-26 14:38:25'),
(2, 'Compotas en Pouch ', 1, 'compotas-en-pouch', 1, 0, 0, 0, 0, '', '2020-02-25 15:43:13', '2020-02-26 14:38:29'),
(3, 'Compotas en Sachet', 1, 'compotas-en-sachet', 1, 0, 0, 0, 0, '', '2020-02-25 15:50:33', '2020-03-03 20:46:06'),
(4, 'Jugos Naturales', 2, 'jugos-naturales', 1, 0, 0, 0, 0, '', '2020-02-25 15:56:10', '2020-02-25 20:56:42'),
(5, 'Avenas', 2, 'avenas', 1, 0, 0, 0, 0, '', '2020-02-25 15:58:10', '2020-02-25 21:00:06'),
(6, 'Leches Saborizadas', 2, 'leches-saborizadas', 1, 0, 0, 0, 0, '', '2020-02-25 15:58:10', '2020-02-26 15:19:06'),
(7, 'Sabor a Mora', 3, 'sabor-a-mora', 1, 0, 0, 0, 0, '', '2020-02-25 16:00:56', '2020-02-25 21:04:05'),
(8, 'Sabor a Fresa', 3, 'sabor-a-fresa', 1, 0, 0, 0, 0, '', '2020-02-25 16:00:56', '2020-02-25 21:04:05'),
(9, 'Sabor a Sandía', 3, 'sabor-a-sandia', 1, 0, 0, 0, 0, '', '2020-02-25 16:04:26', '2020-02-25 21:05:22'),
(10, 'Salsa de Tomate', 4, 'salsas-tomate', 1, 0, 0, 0, 0, '', '2020-02-25 16:05:52', '2020-02-26 16:05:43'),
(11, 'Salsa Rosada', 4, 'salsas-rosada', 1, 0, 0, 0, 0, '', '2020-02-25 16:05:52', '2020-02-26 16:05:12'),
(12, 'Salsa Mayonesa ', 4, 'salsas-mayonesa', 1, 0, 0, 0, 0, '', '2020-02-25 16:08:03', '2020-02-26 16:05:16'),
(13, 'Pulpa de Mora', 5, 'pulpa-mora', 1, 0, 0, 0, 0, '', '2020-03-03 16:12:16', '2020-03-27 21:12:16'),
(14, 'Pulpa de Mango', 5, 'pulpa-mango', 1, 0, 0, 0, 0, '', '2020-03-03 16:13:56', '2020-03-03 21:13:56'),
(15, 'Pulpa de Lulo', 5, 'pulpa-lulo', 1, 0, 0, 0, 0, '', '2020-03-03 16:14:39', '2020-03-03 21:14:39'),
(16, 'Llaveros', 6, 'llaveros', 1, 0, 0, 0, 0, '', '2020-03-31 10:44:02', '2020-03-11 15:46:28'),
(17, 'Juegos de mesa', 6, 'juegos-de-mesa', 1, 0, 0, 0, 0, '', '2020-03-31 11:05:17', '2020-03-11 16:06:19'),
(18, 'Stickers', 6, 'stickers', 1, 0, 0, 0, 0, '', '2020-03-31 11:35:01', '2020-03-11 16:39:11'),
(19, 'Bebes', 6, 'bebes', 1, 0, 0, 0, 0, '', '2020-03-31 12:16:38', '2020-03-11 17:17:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `modo` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `emailEncriptado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `modo`, `foto`, `verificacion`, `emailEncriptado`, `fecha`) VALUES
(2, 'Francisco gomez', '$2a$07$asxx54ahjppf45sd87a5aumqT6Svf3GL0UeeQ1CMweNUj8rLmRxAC', 'usuario@gmail.com', 'directo', 'vistas/img/usuarios/2/708.jpg', 0, '6b0becddecd5a06042b3f8078c97f2e0', '2020-03-10 16:47:00'),
(3, 'Juan Fernando Urrego Alvarez', 'null', 'juanustudio@hotmail.com', 'facebook', 'http://graph.facebook.com/10215085853809464/picture?type=large', 0, 'null', '2017-10-27 15:55:12'),
(5, 'Juan Fernando Urrego Alvarez', 'null', 'contacto@juanfernandourrego.com', 'google', 'https://lh4.googleusercontent.com/-2UURMoPtS5Q/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_ZJSXsDExO9Jd1-5p1-4rjp2x4w/s96-c/photo.jpg', 0, 'null', '2017-12-13 16:53:03'),
(6, 'Juan Fernando Urrego Alvarez', 'null', 'juanu@misena.edu.co', 'google', 'https://lh6.googleusercontent.com/-WRzOjXfAxp4/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof31C6gB0EtqvVjoLv7yszCM_j2Udg/s96-c/photo.jpg', 0, 'null', '2017-12-13 16:54:00'),
(8, 'Tutoriales a tu Alcance', 'null', 'correo.tutorialesatualcance@gmail.com', 'google', 'https://lh4.googleusercontent.com/-80gqeIg_Gq8/AAAAAAAAAAI/AAAAAAAAAF4/0_8JQ_8Gffk/s96-c/photo.jpg', 0, 'null', '2018-03-06 18:06:24'),
(12, 'juanito perez', '$2a$07$asxx54ahjppf45sd87a5auptO89Bfb9XuXeaqzpkZhWf7pRyzngoO', 'juanito@gmail.com', 'directo', '', 0, 'c19e7e7da901025911234b21b7002143', '2018-03-27 23:08:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspaises`
--

CREATE TABLE `visitaspaises` (
  `id` int(11) NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspaises`
--

INSERT INTO `visitaspaises` (`id`, `pais`, `codigo`, `cantidad`, `fecha`) VALUES
(1, 'Colombia', 'CO', 620, '2020-02-27 12:00:07'),
(2, 'USA', 'US', 420, '2020-02-27 12:00:15'),
(3, 'Francia', 'FR', 120, '2020-02-27 12:00:27'),
(4, 'Japan', 'JP', 91, '2020-03-18 12:01:39'),
(6, 'Brazil', 'BR', 60, '2020-02-27 12:00:42'),
(7, 'México', 'MX', 36, '2020-02-27 12:00:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspersonas`
--

CREATE TABLE `visitaspersonas` (
  `id` int(11) NOT NULL,
  `ip` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `visitas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspersonas`
--

INSERT INTO `visitaspersonas` (`id`, `ip`, `pais`, `visitas`, `fecha`) VALUES
(1, '153.202.197.216', 'Japan', 1, '2017-11-08 18:37:07'),
(3, '249.170.168.184', 'Spain', 1, '2017-11-28 19:16:16'),
(5, '249.170.168.184', 'Spain', 1, '2017-11-28 19:16:19'),
(6, '234.13.198.119', 'Colombia', 1, '2017-11-28 19:16:03'),
(7, '141.46.61.241', 'Germany', 1, '2017-11-28 19:13:45'),
(8, '40.179.75.60', 'United States', 1, '2017-11-28 19:14:05'),
(9, '153.205.198.22', 'Japan', 1, '2017-11-01 19:14:18'),
(10, '148.21.177.158', 'United States', 1, '2017-10-28 19:14:34'),
(11, '40.224.125.226', 'United States', 1, '2017-11-28 19:14:56'),
(12, '10.98.135.68', 'China', 1, '2017-11-28 19:15:57'),
(13, '23.121.157.131', 'United States', 1, '2017-11-28 19:15:37'),
(17, '8.12.238.123', 'United States', 1, '2017-11-28 19:28:27'),
(18, '148.21.177.158', 'United States', 1, '2017-11-28 19:33:05'),
(19, '153.202.197.216', 'Japan', 1, '2017-11-28 19:33:50'),
(27, '153.205.198.22', 'Japan', 1, '2017-10-28 20:05:19'),
(31, '153.205.198.22', 'Japan', 1, '2017-11-28 20:09:49'),
(32, '153.205.198.22', 'Japan', 1, '2017-11-29 19:23:07'),
(33, '153.205.198.22', 'Japan', 1, '2017-11-30 23:01:27'),
(34, '153.205.198.22', 'Japan', 1, '2017-12-04 14:55:27'),
(35, '153.205.198.22', 'Japan', 1, '2017-12-05 20:58:04'),
(36, '153.205.198.22', 'Japan', 1, '2017-12-06 21:11:13'),
(37, '153.205.198.22', 'Japan', 1, '2017-12-07 22:32:13'),
(38, '153.205.198.22', 'Japan', 1, '2017-12-11 15:32:10'),
(39, '153.205.198.22', 'Japan', 1, '2017-12-13 15:45:58'),
(40, '153.205.198.22', 'Japan', 1, '2017-12-19 02:37:45'),
(41, '153.205.198.22', 'Japan', 1, '2017-12-19 12:54:21'),
(42, '153.205.198.22', 'Unknown', 1, '2017-12-30 15:41:47'),
(43, '153.205.198.22', 'Japan', 1, '2018-01-02 15:46:52'),
(44, '153.205.198.22', 'Japan', 1, '2018-01-03 13:54:29'),
(45, '153.205.198.22', 'Japan', 1, '2018-01-04 16:54:03'),
(46, '153.205.198.22', 'Japan', 1, '2018-01-05 17:17:05'),
(47, '153.205.198.22', 'Japan', 1, '2018-01-08 13:57:21'),
(48, '153.205.198.22', 'Japan', 1, '2018-01-09 15:46:40'),
(49, '153.205.198.22', 'Japan', 1, '2018-01-10 20:34:12'),
(50, '153.205.198.22', 'Japan', 1, '2018-01-11 14:08:56'),
(51, '153.205.198.22', 'Japan', 1, '2018-01-15 18:10:09'),
(52, '153.205.198.22', 'Japan', 1, '2018-01-16 16:15:33'),
(53, '153.205.198.22', 'Japan', 1, '2018-01-17 21:39:17'),
(54, '153.205.198.22', 'Japan', 1, '2018-01-18 20:16:09'),
(55, '153.205.198.22', 'Japan', 1, '2018-01-19 15:05:32'),
(56, '153.205.198.22', 'Japan', 1, '2018-01-22 14:38:48'),
(57, '153.205.198.22', 'Japan', 1, '2018-01-25 15:44:30'),
(58, '153.205.198.22', 'Japan', 1, '2018-01-26 21:24:38'),
(59, '153.205.198.22', 'Japan', 1, '2018-01-29 20:45:50'),
(60, '153.205.198.22', 'Japan', 1, '2018-01-30 22:32:35'),
(61, '153.205.198.22', 'Japan', 1, '2018-01-31 18:35:33'),
(62, '153.205.198.22', 'Japan', 1, '2018-02-07 17:37:45'),
(63, '153.205.198.22', 'Japan', 1, '2018-02-13 16:52:37'),
(64, '153.205.198.22', 'Japan', 1, '2018-02-14 13:33:04'),
(65, '153.205.198.22', 'Japan', 1, '2018-02-16 13:50:44'),
(66, '153.205.198.22', 'Japan', 1, '2018-02-23 17:06:23'),
(67, '153.205.198.22', 'Japan', 1, '2018-03-02 17:25:19'),
(68, '153.205.198.22', 'Japan', 1, '2018-03-03 12:06:54'),
(69, '153.205.198.22', 'Japan', 1, '2018-03-05 16:27:57'),
(70, '153.205.198.22', 'Japan', 1, '2018-03-06 17:59:36'),
(71, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(72, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(73, '153.205.198.22', 'Japan', 1, '2018-03-12 19:38:37'),
(74, '153.205.198.22', 'Japan', 1, '2018-03-13 20:35:47'),
(75, '153.205.198.22', 'Japan', 1, '2018-03-14 19:41:17'),
(76, '153.205.198.22', 'Japan', 1, '2018-03-15 16:41:11'),
(77, '153.205.198.22', 'Japan', 1, '2018-03-16 19:21:45'),
(78, '153.205.198.22', 'Japan', 1, '2018-03-17 12:23:58'),
(79, '153.205.198.22', 'Japan', 1, '2018-03-19 00:38:47'),
(80, '153.205.198.22', 'Japan', 1, '2018-03-19 12:57:20'),
(81, '153.205.198.22', 'Japan', 1, '2018-03-20 20:33:33'),
(82, '153.205.198.22', 'Japan', 1, '2018-03-21 19:30:58'),
(83, '153.205.198.22', 'Japan', 1, '2018-03-23 19:41:03'),
(84, '153.205.198.22', 'Japan', 1, '2018-03-26 12:42:06'),
(85, '153.205.198.22', 'Japan', 1, '2018-03-27 13:26:30'),
(86, '163.172.160.190', 'France', 1, '2018-03-27 23:23:14'),
(87, '153.205.198.22', 'Japan', 1, '2020-02-24 21:56:00'),
(88, '153.205.198.22', 'Japan', 1, '2020-02-25 12:06:42'),
(89, '153.205.198.22', 'Japan', 1, '2020-02-26 13:26:44'),
(90, '153.205.198.22', 'Japan', 1, '2020-02-27 11:58:22'),
(91, '153.205.198.22', 'Japan', 1, '2020-02-28 12:31:44'),
(92, '153.205.198.22', 'Japan', 1, '2020-02-29 15:53:30'),
(93, '153.205.198.22', 'Japan', 1, '2020-03-03 15:23:55'),
(94, '153.205.198.22', 'Japan', 1, '2020-03-04 16:38:22'),
(95, '153.205.198.22', 'Japan', 1, '2020-03-09 17:15:34'),
(96, '153.205.198.22', 'Japan', 1, '2020-03-10 12:04:54'),
(97, '153.205.198.22', 'Japan', 1, '2020-03-11 12:07:11'),
(98, '153.205.198.22', 'Japan', 1, '2020-03-12 12:06:10'),
(99, '153.205.198.22', 'Japan', 1, '2020-03-13 12:14:39'),
(100, '153.205.198.22', 'Japan', 1, '2020-03-14 12:57:18'),
(101, '153.205.198.22', 'Japan', 1, '2020-03-16 12:11:00'),
(102, '153.205.198.22', 'Japan', 1, '2020-03-17 11:55:52'),
(103, '153.205.198.22', 'Japan', 1, '2020-03-18 12:01:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
