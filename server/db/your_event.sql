-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2022 a las 16:35:26
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `your_event`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_u` (`id_user1` INT(10))   DELETE FROM users WHERE id_user = id_user1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar` ()   SELECT * FROM users$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_u` (IN `id_user1` INT(10), IN `nom_user1` VARCHAR(30), IN `mail_user1` VARCHAR(50), IN `password_user1` VARCHAR(30))   INSERT INTO users (id_user ,nom_user ,mail_user,password_user ) VALUES (id_user1,nom_user1,mail_user1,password_user1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_u` (`id_user1` INT(10), `nom_user1` VARCHAR(30))   UPDATE users SET nom_user=nom_user1 WHERE id_user=id_user1$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `nom_user` varchar(30) DEFAULT NULL,
  `mail_user` varchar(50) DEFAULT NULL,
  `password_user` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `nom_user`, `mail_user`, `password_user`) VALUES
(12, 'juan', 'juan@', 'sadasd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
