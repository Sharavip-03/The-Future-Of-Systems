-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2024 a las 06:20:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formularios1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_Admin` int(10) NOT NULL,
  `Correo` varchar(30) DEFAULT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `Identificacion` decimal(15,0) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `id_empleado` int(10) DEFAULT NULL,
  `Contraseña` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_Admin`, `Correo`, `Nombre`, `Identificacion`, `Telefono`, `id_empleado`, `Contraseña`) VALUES
(1, 'admin@gmail.com', 'paola sanchez', 1111111111, '3133334', NULL, '987654');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_Categoria` int(10) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_Categoria`, `Nombre`, `Descripcion`) VALUES
(1, 'Comidas', 'Productos alimenticios diseñados para mascotas, que incluyen croquetas, alimentos húmedos, suplement'),
(2, 'Camas', 'Accesorios de descanso para mascotas, como colchones, cojines, camas elevadas, y cunas, diseñadas pa'),
(3, 'Accesorios', 'Artículos complementarios para mascotas como correas, arneses, collares, platos, bebederos, transpor'),
(4, 'Juguetes', 'Productos diseñados para entretenimiento y estimulación de mascotas, que incluyen pelotas, cuerdas, ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_Cliente` int(10) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `Apellidos` varchar(15) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `Correo` varchar(30) DEFAULT NULL,
  `Contraseña` varchar(40) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_Cliente`, `Nombre`, `Apellidos`, `Telefono`, `Correo`, `Contraseña`, `Direccion`) VALUES
(1, 'Camila', 'Torres', '3299937635', 'cami@gmail', 'žäûhnÔh”ö=`K:ÈÏ', 'Calle103'),
(2, 'Julian', 'Mora', '3847264938', 'julian33@gmail', '0àíbš· ÓCÔ²k·:¢', 'Calle112'),
(3, 'Manuel', 'Rodriguez', '3748206378', 'manu4@gmail', 'ÉE¹{M\rˆ]™]·F—', 'Calle115'),
(4, 'Camila', 'Aguila', '3198364738', 'camili44@gmail', 'WGq¶\'OãÿÞÙN', 'Calle110'),
(5, 'Rodrigo', 'Lopez', '3208473829', 'rodri@gmai', 'ôÛ»‘!7?#^+ÌÎxV', 'Calle118'),
(6, 'Juliana', 'Useche', '3137843782', 'juliana33@gmail', 'WÉÈlôj7k¶ÓäËp$', 'Calle127'),
(7, 'David', 'Puentes', '3263562612', 'davidpu99@gmail.com', '-Û)T‰|Ó8ˆÇü´À¡!', 'Calle119'),
(8, 'Kevin', 'Calderon', '3183726355', 'kevinmarin00@gmail.com', '±®±²6e4·ZV@öû,', 'Calle111'),
(9, 'Fernanda', 'Arciniegas', '3672167623', 'ferarc39@gmail.com', 'í[;PO‰íYÜfuïÏ»óÁ', 'Calle1104'),
(10, 'Sandra', 'Sanchez', '3298376626', 'sandrasan@gmail.com', '\Z7ü’.„&ßo#NG', 'Calle101'),
(11, 'Luis', 'Pérez', '555-0102', 'luis.perez@example.com', 'ï¬¯j–èt;¿Èî¡Šp*', 'Avenida Siempre Viva 742'),
(12, 'Marta', 'López', '555-0103', 'marta.lopez@example.com', 'êÌ®‡Ok¸©˜fŒl', 'Boulevard del Sol 45'),
(13, 'Pedro', 'Martínez', '555-0104', 'pedro.martinez@example.com', '‰\Zø;ùd–ˆŽæŸ.Q', 'Calle Luna 8'),
(14, 'Laura', 'Ramírez', '555-0105', 'laura.ramirez@example.com', '¼\ZÁWWrAµ\\oŸ.', 'Calle Estrella 20'),
(15, 'Jorge', 'García', '555-0106', 'jorge.garcia@example.com', 'CŸÂ»Â_œZWwx[ÑR', 'Plaza Mayor 3'),
(16, 'Carla', 'Hernández', '555-0107', 'carla.hernandez@example.com', 'ADÙ½fÛFf5”Ç¥ŠmK', 'Calle del Mar 21'),
(17, 'Mario', 'Sánchez', '555-0108', 'mario.sanchez@example.com', '(\'c‰Ï°ëþ~\nÞð', 'Calle Verde 15'),
(18, 'Isabel', 'Moreno', '555-0109', 'isabel.moreno@example.com', 'k‚4BU„ù´‚ ±', 'Avenida del Norte 50'),
(19, 'Ricardo', 'Jiménez', '555-0110', 'ricardo.jimenez@example.com', '‚{Æ¼ÿk±Uà‹7{V', 'Calle de la Paz 12'),
(20, 'Sofia', 'Torres', '555-0111', 'sofia.torres@example.com', 'a˜öÓ2ñÏ¿d\rNàòü', 'Calle Nueva 88');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_Empleado` int(10) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `Apellido` varchar(15) DEFAULT NULL,
  `id_rol` int(10) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `Correo` varchar(30) DEFAULT NULL,
  `Contraseña` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_Empleado`, `Nombre`, `Apellido`, `id_rol`, `Telefono`, `Correo`, `Contraseña`) VALUES
(1, 'Adriana', 'Barragan', 3, '34232432', 'adri@gmail.com', 'Lina_12345'),
(2, 'Juan', 'Cardenas', 4, '657687', 'juanin34@gmail.com', '234567'),
(3, 'Marco', 'Lopez', 2, '3456787697', 'marquito@gmail.com', '345678'),
(4, 'Marco', 'Diaz', 5, '45346546', 'marcosdi234@gmail.com', '456789'),
(5, 'Monica', 'Herrera', 5, '546546', 'moni1334@gmail.com', '567890'),
(6, 'Juan', 'Rueda', 7, '56756756', 'juanse93@gmail.com', '678901'),
(7, 'Mateo', 'Garzon', 2, '35652565', 'mat00@gmail.com', 'Mat_12345'),
(8, 'Laura', 'García', 1, '3788753422', 'lau88@gmail.com', '890123'),
(9, 'Carlos', 'Pérez', 3, '3263763827', 'carlopez@gmail.com', '901234'),
(10, 'Ana', 'Martínez', 1, '767467346', 'anamar09@gmail.com', '012345'),
(11, 'Carlos', 'Fernández', 1, '555-1111', 'carlos.fernandez@example.com', '123456'),
(12, 'Sofía', 'Gutiérrez', 2, '555-1112', 'sofia.gutierrez@example.com', '234567'),
(13, 'Miguel', 'Martínez', 3, '555-1113', 'miguel.martinez@example.com', '345678'),
(14, 'Ana', 'Sánchez', 4, '555-1114', 'ana.sanchez@example.com', '456789'),
(15, 'Luis', 'Morales', 5, '555-1115', 'luis.morales@example.com', '567890'),
(16, 'María', 'Romero', 1, '555-1116', 'maria.romero@example.com', '678901'),
(17, 'Jorge', 'Vásquez', 2, '555-1117', 'jorge.vasquez@example.com', '789012'),
(18, 'Laura', 'Cruz', 3, '555-1118', 'laura.cruz@example.com', '890123'),
(19, 'Fernando', 'Jiménez', 4, '555-1119', 'fernando.jimenez@example.com', '901234'),
(20, 'Isabel', 'Paredes', 5, '555-1120', 'isabel.paredes@example.com', '012345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_Factura` int(10) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Monto_final` decimal(6,0) DEFAULT NULL,
  `id_Empleado` int(10) DEFAULT NULL,
  `id_Cliente` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_Factura`, `Fecha`, `Monto_final`, `id_Empleado`, `id_Cliente`) VALUES
(1, '2024-01-15', 1500, 8, 9),
(2, '2024-01-20', 2501, 2, 3),
(3, '2024-02-05', 1201, 9, 8),
(4, '2024-02-15', 3000, 8, 4),
(5, '2024-03-10', 1800, 1, 7),
(6, '2024-03-20', 2201, 3, 10),
(7, '2024-04-05', 1600, 7, 9),
(8, '2024-04-15', 2101, 5, 3),
(9, '2024-05-01', 2700, 2, 2),
(10, '2024-05-15', 1901, 4, 5),
(11, '2024-01-15', 1500, 11, 10),
(12, '2024-02-20', 2300, 12, 1),
(13, '2024-03-10', 1800, 13, 1),
(14, '2024-04-05', 2200, 14, 13),
(15, '2024-05-12', 1750, 15, 1),
(16, '2024-06-25', 2000, 16, 5),
(17, '2024-07-18', 2100, 17, 16),
(18, '2024-08-30', 1900, 18, 17),
(19, '2024-09-12', 1650, 19, 8),
(20, '2024-10-22', 2400, 20, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_producto`
--

CREATE TABLE `factura_producto` (
  `id_Factura` int(10) NOT NULL,
  `id_Producto` int(10) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Precio` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura_producto`
--

INSERT INTO `factura_producto` (`id_Factura`, `id_Producto`, `Cantidad`, `Precio`) VALUES
(1, 2, 10, 100),
(2, 7, 5, 200),
(3, 9, 8, 150),
(4, 11, 12, 250),
(5, 6, 7, 200),
(6, 5, 3, 120),
(7, 8, 15, 100),
(8, 1, 2, 300),
(9, 4, 4, 150),
(10, 10, 10, 180),
(11, 18, 3, 300),
(12, 13, 2, 300),
(13, 16, 1, 800),
(14, 19, 4, 2400),
(15, 14, 3, 900),
(16, 11, 5, 2500),
(17, 20, 2, 400),
(18, 17, 2, 700),
(19, 12, 2, 2400),
(20, 15, 6, 2400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_Inventario` int(10) NOT NULL,
  `Cantidad` decimal(5,0) DEFAULT NULL,
  `id_Producto` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_Inventario`, `Cantidad`, `id_Producto`) VALUES
(1, 100, 1),
(2, 150, 2),
(3, 200, 3),
(4, 50, 4),
(5, 75, 5),
(6, 120, 6),
(7, 90, 7),
(8, 110, 8),
(9, 85, 9),
(10, 95, 10),
(11, 100, 11),
(12, 50, 12),
(13, 200, 13),
(14, 150, 14),
(15, 120, 15),
(16, 80, 16),
(17, 60, 17),
(18, 300, 18),
(19, 90, 19),
(20, 110, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_Producto` int(10) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Precio` decimal(6,0) DEFAULT NULL,
  `id_Categoria` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_Producto`, `Nombre`, `Descripcion`, `Precio`, `id_Categoria`) VALUES
(1, 'Whiskas Adulto ', 'Whiskas Adulto 1 año - Comida para gatos adultos', 3489, 1),
(2, 'Sheba sobre par', 'Sheba sobre para gato adulto con sabor a pollo', 3489, 1),
(3, 'Comida para per', 'Comida para perros Equilibrio Light, todas las razas, adulto', 438489, 1),
(4, 'Cama para perro', 'Cama para perros de color beige, tamaño mediano', 101015, 2),
(5, 'Juguete cascabe', 'Juguete para gatos con cascabel y plumas dobles', 13000, 4),
(6, 'Pelota para per', 'Pelota para perros GiGwi, resistente y divertida', 14000, 4),
(7, 'Corbatin talla ', 'Corbatín para gatos, talla S, color rojo', 3708, 3),
(8, 'Ratones para ga', 'Ratones de juguete para gatos, paquete de 4', 25789, 4),
(9, 'Royal Canin-Com', 'Royal Canin - Comida para gatos', 11390, 1),
(10, 'Cama Dona-Para ', 'Cama tipo dona para perros, color gris', 110200, 2),
(11, 'Ocean Blue Home', 'Cama para perros Ocean Blue Home, tamaño grande', 285000, 2),
(12, 'Cama Ortopédica', 'Cama ortopédica para perros grandes', 1200, 2),
(13, 'Juguete Squeaky', 'Juguete que hace ruido para perros', 150, 4),
(14, 'Collar de Cuero', 'Collar de cuero resistente para perros', 300, 3),
(15, 'Alimento Húmedo', 'Comida húmeda para gatos', 400, 1),
(16, 'Cama para Gato', 'Cama suave para gatos', 800, 2),
(17, 'Arnés Reflectan', 'Arnés para perros con bandas reflectantes', 350, 3),
(18, 'Ratón de Juguet', 'Ratón de juguete para gatos', 100, 4),
(19, 'Comida Balancea', 'Comida balanceada para perros de razas pequeñas', 600, 1),
(20, 'Juguete de Pelu', 'Peluches para perros de tamaño mediano', 200, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_Rol` int(10) NOT NULL,
  `Rol` varchar(15) DEFAULT NULL,
  `Salario` decimal(5,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_Rol`, `Rol`, `Salario`) VALUES
(1, 'Gerente de Tien', 45000),
(2, 'Asistente de Ve', 30000),
(3, 'Encargado de Al', 32000),
(4, 'Cajero', 25000),
(5, 'Domiciliario', 23000),
(6, 'Responsable de ', 27000),
(7, 'Asesor de Produ', 29000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_Admin`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_Categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_Cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_Empleado`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_Factura`),
  ADD KEY `id_Empleado` (`id_Empleado`),
  ADD KEY `id_Cliente` (`id_Cliente`);

--
-- Indices de la tabla `factura_producto`
--
ALTER TABLE `factura_producto`
  ADD PRIMARY KEY (`id_Factura`,`id_Producto`),
  ADD KEY `id_Producto` (`id_Producto`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_Inventario`),
  ADD KEY `id_Producto` (`id_Producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_Producto`),
  ADD KEY `id_Categoria` (`id_Categoria`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_Cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_Empleado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_Empleado`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_Rol`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_Empleado`) REFERENCES `empleado` (`id_Empleado`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_Cliente`) REFERENCES `cliente` (`id_Cliente`);

--
-- Filtros para la tabla `factura_producto`
--
ALTER TABLE `factura_producto`
  ADD CONSTRAINT `factura_producto_ibfk_1` FOREIGN KEY (`id_Factura`) REFERENCES `factura` (`id_Factura`),
  ADD CONSTRAINT `factura_producto_ibfk_2` FOREIGN KEY (`id_Producto`) REFERENCES `producto` (`id_Producto`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_Producto`) REFERENCES `producto` (`id_Producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_Categoria`) REFERENCES `categoria` (`id_Categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
