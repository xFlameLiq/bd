-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2023 a las 02:49:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phone_mobile`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `procesador` varchar(255) NOT NULL,
  `memoriaRAM` varchar(255) NOT NULL,
  `memoriaROM` varchar(255) NOT NULL,
  `bateria` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `cantidad` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `marca`, `modelo`, `precio`, `procesador`, `memoriaRAM`, `memoriaROM`, `bateria`, `descripcion`, `foto`, `cantidad`) VALUES
(1, 'APPLE', 'IPHONE 13', 23000, 'AM4', '4 GB', '64 GB', '4500 mA', 'Un bonito telefono', 'iphone_13.png', 1),
(2, 'XIAOMI', 'REDMI NOTE 8', 3999, 'SNAPDRAGON', '4 GB', '64 GB', '4000 mA', 'Calidad-Precio', 'redmi_note_8.png', 2),
(3, 'MOTOROLA', 'G22', 5200, 'SNAPDRAGON', '6 GB', '128 GB', '5200 mA', 'Rapido, eficiente, dinamico', 'motorola_g22.png', 5),
(4, 'SAMSUNG', 'GALAXY A23', 10300, 'SNAPDRAGON', '8 GB', '256 GB', '6000 mA', 'Negro, diseño ergonomico y gamer', 'samsung_galaxy_A23.jpg', 1),
(7, 'ASUS', 'ROG PHONE', 18500, 'Qualcomm Adreno', '8 GB', '512 GB', '4000 mA', 'Nueva generacion', 'asus_rog_phone.jpg', 1),
(8, 'HUAWEI', 'NOVA Y70', 8499.99, 'CORTEX-A76', '4 GB', '128 GB', '4000 mA', 'Sensor de luz ambiental, Brújula, sensor de gravedad, Sensor de huellas dactilares (montado lateralmente), EMUI 12', 'huawei_nova_y70.jpg', 15),
(9, 'XIAOMI', 'REDMI NOTE 11', 3100, 'OCTA-CORE', '6 GB', '128 GB', '5000 mA', 'Pantalla de 6.43 pulgadas, Memoria Ram 6GB , Potente batería de 5000 mAh', 'redmi_note_11.jpg', 5),
(10, 'MOTOROLA', 'EDGE 30', 20000, 'SNAPDRAGON 888', '12 GB', '256 GB', '4400 mA', 'Acelerómetro, Sensor de Proximidad, Brújula (Campo magnético), Giroscopio, Huella Dactilar, Desbloqueo Facial', 'motorola_edge30.png', 3),
(11, 'APPLE', 'IPHONE 11', 12000, 'CHIP A13 BIONIC', '2 GB', '64 GB', '2000 mA', 'Procesador Chip A13 Bionic Pantalla de retina HD 6.1', 'iphone_11.jpg', 10),
(13, 'SAMSUNG', 'S22', 23000, 'QUALCOMM SM8450 Octa', '8 GB', '256 GB', '5000 mA', 'ANDROID 12', 'samsung_galaxy_s22.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provider`
--

CREATE TABLE `provider` (
  `id` int(255) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `encargado` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `seguimiento` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_FKProducts` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `userType` int(255) NOT NULL DEFAULT 0,
  `id_FKProducts` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `nombre`, `apellido`, `direccion`, `telefono`, `sexo`, `correo`, `contrasena`, `userType`, `id_FKProducts`) VALUES
(1, 'benjamin', 'Cortina', 'av paseo de la tierra #2124', '3312293135', 'Masculino', 'a21110150@ceti.mx', 'pass', 1, 0),
(3, 'David', 'Loera', 'Tonala', '3310259087', 'Masculino', 'a21110121@ceti.mx', 'padrino', 0, 0),
(4, 'Nahomy', 'Hernandez', 'Av. Rio Nilo', '3311302835', 'Femenino', 'a21110142@ceti.mx', 'solecito', 0, 0),
(5, 'Marquito', 'Herrrera', 'Tlajomulco', '3313230032', 'Masculino', 'a21110114@ceti.mx', '123', 0, 0),
(6, 'Hector', 'Gonzalez', 'Sabe', '3338323774', 'Masculino', 'a21110152@ceti.mx', 'asd', 0, 0),
(7, 'Ross', 'Santana', 'Colotlan', '3338323774', 'Femenino', 'arossySantana@ceti.mx', '12345', 0, 0),
(8, 'Santiago', 'Perez', 'Chapala', '3312756789', 'Masculino', 'hola123@hotmail.com', '123', 0, 0),
(9, '1', '1', '1', '1', '1', '1@1.com', '1', 0, 0),
(10, '2', '2', '2', '2', '2', '2@ASD.COM', '2', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_FKProducts` (`id_FKProducts`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_FKProducts` (`id_FKProducts`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
