-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2024 a las 07:19:49
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
-- Base de datos: `gestionmascotasdb`
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
  `Contraseña` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_Admin`, `Correo`, `Nombre`, `Identificacion`, `Telefono`, `Contraseña`) VALUES
(1, 'admin@gmail.com', 'paola sanchez', 1111111111, '3133334', 'T?????');

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
  `Direccion` varchar(30) DEFAULT NULL,
  `Identificacion` decimal(15,0) DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_Cliente`, `Nombre`, `Apellidos`, `Telefono`, `Correo`, `Direccion`, `Identificacion`, `Estado`) VALUES
(1, 'Camila', 'Torres', '3299937635', 'cami@gmail', 'Calle103', 2134123113, 'Activo'),
(2, 'Julian', 'Mora', '3847264938', 'julian33@gmail', 'Calle112', 213412312, 'Activo'),
(3, 'Manuel', 'Rodriguez', '3748206378', 'manu4@gmail', 'Calle115', 213412312, 'Activo'),
(4, 'Camila', 'Aguila', '3198364738', 'camili44@gmail', 'Calle110', 213412312, 'Activo'),
(5, 'Rodrigo', 'Lopez', '3208473829', 'rodri@gmai', 'Calle118', 213412312, 'Activo'),
(6, 'Juliana', 'Useche', '3137843782', 'juliana33@gmail', 'Calle127', 213412312, 'Activo'),
(7, 'David', 'Puentes', '3263562612', 'davidpu99@gmail.com', 'Calle119', 213412312, 'Activo'),
(8, 'Kevin', 'Calderon', '3183726355', 'kevinmarin00@gmail.com', 'Calle111', 213412312, 'Activo'),
(9, 'Fernanda', 'Arciniegas', '3672167623', 'ferarc39@gmail.com', 'Calle1104', 213412312, 'Activo'),
(10, 'Sandra', 'Sanchez', '3298376626', 'sandrasan@gmail.com', 'Calle101', 213412312, 'Activo'),
(11, 'Luis', 'Pérez', '555-0102', 'luis.perez@example.com', 'Avenida Siempre Viva 742', 21341231, 'Activo'),
(12, 'Marta', 'López', '555-0103', 'marta.lopez@example.com', 'Boulevard del Sol 45', 213412312, 'Activo'),
(13, 'Pedro', 'Martínez', '555-0104', 'pedro.martinez@example.com', 'Calle Luna 8', 213412312, 'Activo'),
(14, 'Laura', 'Ramírez', '555-0105', 'laura.ramirez@example.com', 'Calle Estrella 20', 213412312, 'Activo'),
(15, 'Jorge', 'García', '555-0106', 'jorge.garcia@example.com', 'Plaza Mayor 3', 213412312, 'Activo'),
(16, 'Carla', 'Hernández', '555-0107', 'carla.hernandez@example.com', 'Calle del Mar 21', 213412312, 'Activo'),
(17, 'Mario', 'Sánchez', '555-0108', 'mario.sanchez@example.com', 'Calle Verde 15', 213412312, 'Activo'),
(18, 'Isabel', 'Moreno', '555-0109', 'isabel.moreno@example.com', 'Avenida del Norte 50', 213412312, 'Activo'),
(19, 'Ricardo', 'Jiménez', '555-0110', 'ricardo.jimenez@example.com', 'Calle de la Paz 12', 213412312, 'Activo'),
(20, 'Sofia', 'Torres', '555-0111', 'sofia.torres@example.com', 'Calle Nueva 88', 213412312, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contraseñacliente`
--

CREATE TABLE `contraseñacliente` (
  `id_Cliente` int(10) NOT NULL,
  `Contraseña` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contraseñacliente`
--

INSERT INTO `contraseñacliente` (`id_Cliente`, `Contraseña`) VALUES
(1, '?R??w??A?\n,???\"??);??bU6%??V?'),
(2, '??t?o\0S?:?\\?Ф\"??);??bU6%??V?'),
(3, '6???]?v?j?????l\"??);??bU6%??V?'),
(4, '??c[?`?\n?w+m??%\"??);??bU6%??V?'),
(5, '???mOSm?^??S?y\0?\"??);??bU6%??V?'),
(6, '????-lCu??|?m~\"??);??bU6%??V?'),
(7, '?ٗM	??}Ct????W\"??);??bU6%??V?'),
(8, 'ژ\0jy???~??|@\"??);??bU6%??V?'),
(9, '$?z??>???-_s?\"??);??bU6%??V?'),
(10, 'q??_w5G??1??Y???\"??);??bU6%??V?'),
(11, '??3m???3?*?%w?D\"??);??bU6%??V?'),
(12, 'L\"??ror?2????\"??);??bU6%??V?'),
(13, 'Ě=7m?hL???\r??\"??);??bU6%??V?'),
(14, '????\rF??\0?@K??\"??);??bU6%??V?'),
(15, '?X?g\"??*=O5???\"??);??bU6%??V?'),
(16, '?8	\ZԎ?=G?lw?\"??);??bU6%??V?'),
(17, '????i??ʞ???S?\"??);??bU6%??V?'),
(18, '???^?	,? /?\0(\"??);??bU6%??V?'),
(19, 'a+?⹎؉_?f??\"??);??bU6%??V?'),
(20, ']PR??z?F?jkp??\"??);??bU6%??V?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_Factura` int(10) NOT NULL,
  `id_Producto` int(10) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Precio` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_Factura`, `id_Producto`, `Cantidad`, `Precio`) VALUES
(1, 2, 10, 100),
(1, 3, 5, 150),
(1, 5, 7, 200),
(2, 7, 5, 200),
(2, 9, 3, 120),
(3, 11, 8, 150),
(3, 12, 2, 300),
(3, 13, 6, 250),
(4, 14, 12, 250),
(4, 15, 10, 300),
(5, 16, 4, 150),
(5, 17, 2, 200),
(5, 18, 1, 180),
(6, 19, 5, 120),
(6, 20, 8, 300);

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
  `Contraseña` varchar(30) DEFAULT NULL,
  `Identificacion` decimal(15,0) DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_Empleado`, `Nombre`, `Apellido`, `id_rol`, `Telefono`, `Correo`, `Contraseña`, `Identificacion`, `Estado`) VALUES
(1, 'Adriana', 'Barragan', 3, '34232432', 'adri@gmail.com', 'J?پi3kR{E??|Ɛ', 21321321312, 'Activo'),
(2, 'Juan', 'Cardenas', 4, '657687', 'juanin34@gmail.com', '?@.*I3?&`P}a', 213412312, 'Activo'),
(3, 'Marco', 'Lopez', 2, '3456787697', 'marquito@gmail.com', '?@9?b?j(Ň?A??', 2134123312, 'Activo'),
(4, 'Marco', 'Diaz', 5, '45346546', 'marcosdi234@gmail.com', '? ?+ W???l8???', 21342312312, 'Activo'),
(5, 'Monica', 'Herrera', 5, '546546', 'moni1334@gmail.com', 'ٕپ???a???', 21341342312, 'Activo'),
(6, 'Juan', 'Rueda', 7, '56756756', 'juanse93@gmail.com', '?~????$??)ݾ?', 213412234312, 'Activo'),
(7, 'Mateo', 'Garzon', 2, '35652565', 'mat00@gmail.com', '????&3??#?<@?', 2134122312, 'Activo'),
(8, 'Laura', 'García', 1, '3788753422', 'lau88@gmail.com', '??* d?????Ʊ?', 213411322312, 'Activo'),
(9, 'Carlos', 'Pérez', 3, '3263763827', 'carlopez@gmail.com', 'j.B????x;!?H/?', 21334412312, 'Activo'),
(10, 'Ana', 'Martínez', 1, '767467346', 'anamar09@gmail.com', '&???????:U\'1`)>', 213412322312, 'Activo'),
(11, 'Carlos', 'Fernández', 1, '555', 'carlos.fernandez@example.com', '??M????ͨM߬\r?', 213232412312, 'Activo'),
(12, 'Sofía', 'Gutiérrez', 2, '555', 'sofia.gutierrez@example.com', '?@.*I3?&`P}a', 21341212312, 'Activo'),
(13, 'Miguel', 'Martínez', 3, '555', 'miguel.martinez@example.com', '?@9?b?j(Ň?A??', 213412322312, 'Activo'),
(14, 'Ana', 'Sánchez', 4, '555', 'ana.sanchez@example.com', '? ?+ W???l8???', 2134121321312, 'Activo'),
(15, 'Luis', 'Morales', 5, '555', 'luis.morales@example.com', 'ٕپ???a???', 213412232312, 'Activo'),
(16, 'María', 'Romero', 1, '555', 'maria.romero@example.com', '?~????$??)ݾ?', 21341223312, 'Activo'),
(17, 'Jorge', 'Vásquez', 2, '555', 'jorge.vasquez@example.com', '????&3??#?<@?', 213423212312, 'Activo'),
(18, 'Laura', 'Cruz', 3, '555', 'laura.cruz@example.com', '??* d?????Ʊ?', 21332432412312, 'Activo'),
(19, 'Fernando', 'Jiménez', 4, '555', 'fernando.jimenez@example.com', 'j.B????x;!?H/?', 213412322312, 'Activo'),
(20, 'Isabel', 'Paredes', 5, '555', 'isabel.paredes@example.com', '&???????:U\'1`)>', 213412312, 'Activo'),
(21, 'antonio', 'jose', 2, '121312321', 'anti@gmail.com', 'Lina_12345', 13213213, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_Factura` int(10) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Monto_final` decimal(6,0) DEFAULT NULL,
  `id_Empleado` int(10) NOT NULL,
  `id_Cliente` int(10) NOT NULL,
  `Estado_factura` enum('Pagada','Anulada') DEFAULT 'Pagada'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_Factura`, `Fecha`, `Monto_final`, `id_Empleado`, `id_Cliente`, `Estado_factura`) VALUES
(1, '2024-01-15', 1500, 8, 9, 'Pagada'),
(2, '2024-01-20', 2501, 2, 3, 'Pagada'),
(3, '2024-02-05', 1201, 9, 8, 'Pagada'),
(4, '2024-02-15', 3000, 8, 4, 'Pagada'),
(5, '2024-03-10', 1800, 1, 7, 'Pagada'),
(6, '2024-03-20', 2201, 3, 10, 'Pagada'),
(7, '2024-04-05', 1600, 7, 9, 'Pagada'),
(8, '2024-04-15', 2101, 5, 3, 'Pagada'),
(9, '2024-05-01', 2700, 2, 2, 'Pagada'),
(10, '2024-05-15', 1901, 4, 5, 'Pagada'),
(11, '2024-01-15', 1500, 11, 10, 'Pagada'),
(12, '2024-02-20', 2300, 12, 1, 'Pagada'),
(13, '2024-03-10', 1800, 13, 1, 'Pagada'),
(14, '2024-04-05', 2200, 14, 13, 'Pagada'),
(15, '2024-05-12', 1750, 15, 1, 'Pagada'),
(16, '2024-06-25', 2000, 16, 5, 'Pagada'),
(17, '2024-07-18', 2100, 17, 16, 'Pagada'),
(18, '2024-08-30', 1900, 18, 17, 'Pagada'),
(19, '2024-09-12', 1650, 19, 8, 'Pagada'),
(20, '2024-10-22', 2400, 20, 19, 'Pagada');

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
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(35) NOT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Estado` enum('Disponible','No disponible') DEFAULT 'Disponible',
  `id_Categoria` int(10) NOT NULL,
  `id_proveedor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_Producto`, `Nombre`, `Descripcion`, `imagen`, `Precio`, `Estado`, `id_Categoria`, `id_proveedor`) VALUES
(1, 'Whiskas Adulto', 'Whiskas Adulto 1 año - Comida para gatos adultos', 'producto-1-whiskas.png', 3489.00, 'Disponible', 1, 1),
(2, 'Sheba sobre par', 'Sheba sobre para gato adulto con sabor a pollo', 'producto-2-sheba.jpg', 3489.00, 'Disponible', 1, 1),
(3, 'Comida para per', 'Comida para perros Equilibrio Light, todas las razas, adulto', 'comida-perros-equilibrio.jpg', 438489.00, 'Disponible', 1, 1),
(4, 'Cama para perro', 'Cama para perros de color beige, tamaño mediano', 'camaconhuellas.jpg', 101015.00, 'Disponible', 2, 4),
(5, 'Juguete cascabe', 'Juguete para gatos con cascabel y plumas dobles', 'Jueguetecascabel.jpg', 13000.00, 'Disponible', 4, 3),
(6, 'Pelota para per', 'Pelota para perros GiGwi, resistente y divertida', 'pelotaparaperros.jpg', 14000.00, 'Disponible', 4, 3),
(7, 'Corbatin talla', 'Corbatín para gatos, talla S, color rojo', 'corbata.jpg', 3708.00, 'Disponible', 3, 2),
(8, 'Ratones para ga', 'Ratones de juguete para gatos, paquete de 4', 'ratonesparagatos.jpg', 25789.00, 'Disponible', 4, 3),
(9, 'Royal Canin-Com', 'Royal Canin - Comida para gatos', 'atun_para_gatos.jpg', 11390.00, 'Disponible', 1, 1),
(10, 'Cama Dona-Para', 'Cama tipo dona para perros, color gris', 'cama_dona_para_perros.png', 110200.00, 'Disponible', 2, 4),
(11, 'Ocean Blue Home', 'Cama para perros Ocean Blue Home, tamaño grande', 'cama_puntiaguda_iglu_para_perros.jp', 285000.00, 'Disponible', 2, 4),
(12, 'Cama Ortopédica', 'Cama ortopédica para perros grandes', 'cama ortopedica.jpg', 1200.00, 'Disponible', 2, 4),
(13, 'Juguete Squeaky', 'Juguete que hace ruido para perros', 'Juguete Squeaky.png', 150.00, 'Disponible', 4, 3),
(14, 'Collar de Cuero', 'Collar de cuero resistente para perros', 'Collar de Cuero.jpg', 300.00, 'Disponible', 3, 2),
(15, 'Alimento Húmedo', 'Comida húmeda para gatos', 'Alimento Húmedo.jpg', 400.00, 'Disponible', 1, 1),
(16, 'Cama para Gato', 'Cama suave para gatos', 'camas para gatos.jpg', 800.00, 'Disponible', 2, 4),
(17, 'Arnés Reflectan', 'Arnés para perros con bandas reflectantes', 'Arnés Reflectan.jpg', 350.00, 'Disponible', 3, 2),
(18, 'Ratón de Juguet', 'Ratón de juguete para gatos', 'Ratón de Juguet.png', 100.00, 'Disponible', 4, 3),
(19, 'Comida Balancea', 'Comida balanceada para perros de razas pequeñas', 'Comida Balancea.jpg', 600.00, 'Disponible', 1, 1),
(20, 'Juguete de Pelu', 'Peluches para perros de tamaño mediano', 'Juguete de Peluche.jpg', 200.00, 'Disponible', 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_Proveedor` int(10) NOT NULL,
  `Proveedor` varchar(50) DEFAULT NULL,
  `Contacto` varchar(50) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `id_Admin` int(10) DEFAULT '1',
  `Direccion` varchar(100) DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_Proveedor`, `Proveedor`, `Contacto`, `Telefono`, `Direccion`, `Estado`) VALUES
(1, 'Proveedor Alimentos S.A.', 'Jose Torres', '3001234567', 'Calle 123, Bogotá', 'Activo'),
(2, 'Accesorios Mascotas Ltda.', 'Claudia Romero', '3102345678', 'Carrera 45, Medellín', 'Activo'),
(3, 'Juguetes y Más S.A.S.', 'Karen Mora', '3203456789', 'Avenida Siempre Viva 742, Cali', 'Activo'),
(4, 'Camas Premium S.A.', 'Pedro Espinoza', '3304567890', 'Calle Luna 33, Barranquilla', 'Activo'),
(5, 'Alimentos Naturales S.A.', 'Alexander Aguila', '3405678901', 'Carrera 12, Cartagena', 'Inactivo');

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
  ADD PRIMARY KEY (`id_Admin`);

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
-- Indices de la tabla `contraseñacliente`
--
ALTER TABLE `contraseñacliente`
  ADD PRIMARY KEY (`id_Cliente`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id_Factura`,`id_Producto`),
  ADD KEY `detalle_factura_ibfk_2` (`id_Producto`);

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
  ADD PRIMARY KEY (`id_Factura`,`id_Empleado`,`id_Cliente`),
  ADD KEY `factura_ibfk_1` (`id_Cliente`),
  ADD KEY `factura_ibfk_2` (`id_Empleado`);

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
  ADD PRIMARY KEY (`id_Producto`,`id_Categoria`,`id_proveedor`),
  ADD KEY `producto_ibfk_1` (`id_proveedor`),
  ADD KEY `producto_ibfk_2` (`id_Categoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_Proveedor`, `id_Admin`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_Admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_Categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_Cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_Empleado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_Factura` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_Inventario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_Proveedor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_Rol` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contraseñacliente`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_Admin`) REFERENCES `admin` (`id_Admin`);

ALTER TABLE `contraseñacliente`
  ADD CONSTRAINT `contraseñacliente_ibfk_1` FOREIGN KEY (`id_Cliente`) REFERENCES `cliente` (`id_Cliente`);

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`id_Factura`) REFERENCES `factura` (`id_Factura`),
  ADD CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`id_Producto`) REFERENCES `producto` (`id_Producto`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_Rol`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_Cliente`) REFERENCES `cliente` (`id_Cliente`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_Empleado`) REFERENCES `empleado` (`id_Empleado`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_Producto`) REFERENCES `producto` (`id_Producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_Proveedor`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_Categoria`) REFERENCES `categoria` (`id_Categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
