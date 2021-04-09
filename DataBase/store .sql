-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-04-2021 a las 05:10:28
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(7) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Nombre`, `Clave`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('0001', 'TERROR', 'Libros con cierto suspenso'),
('0002', 'DRAMA', 'Libros con cierto cararacter de tragedia y comedia'),
('0003', 'ROMANCE', 'Libros con cierto caracter de amor'),
('0004', 'COMEDIA', 'libros de chistes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabanco`
--

CREATE TABLE `cuentabanco` (
  `id` int(50) NOT NULL,
  `NumeroCuenta` varchar(100) NOT NULL,
  `NombreBanco` varchar(100) NOT NULL,
  `NombreBeneficiario` varchar(100) NOT NULL,
  `TipoCuenta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentabanco`
--

INSERT INTO `cuentabanco` (`id`, `NumeroCuenta`, `NombreBanco`, `NombreBeneficiario`, `TipoCuenta`) VALUES
(1, '0123456789567891', 'Bancomer', 'Store', 'Bancaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL,
  `PrecioProd` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Descuento`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`, `Estado`) VALUES
(1, '00001', 'TRILOGIA DEL MALAMOR', '0003', '390.00', 0, 'Español', 'JOSE IGNACIO VALENZUELA', 23, '00001234', '00001.jpg', 'admin', 'Activo'),
(2, '00002', 'EL CHICO DE AL LADO', '0003', '369.00', 5, 'Español', 'KATIE VAN ARK', 2, '00001235', '00002.jpg', 'admin', 'Activo'),
(3, '00004', '#MAS GORDO EL AMOR', '0003', '350.00', 0, 'Español', 'ANTONIO MALPICA', 10, '00001234', '00004.jpg', 'admin', 'Activo'),
(4, '00005', 'DESPUES DE TODO ESTAS TU', '0003', '319.00', 15, 'Español', 'MICHELLE LEVY', 1, '00001236', '00005.jpg', 'admin', 'Activo'),
(5, '00003', 'BOY MEETS BOY', '0003', '309.00', 0, 'Ingles', 'DAVID LEVITHAN', 20, '00001234', '00003.jpg', 'admin', 'Activo'),
(6, '00011', 'Game of Thrones. Edición Pop u', '0001', '1499.00', 0, 'Español', 'MATTHEW REINHART', 100, '00001234', '00011.jpg', 'admin', 'Activo'),
(7, '00012', 'EL ICKABOG', '0001', '324.00', 0, 'Español', 'J.K. ROWLING', 5, '00001236', '00012.jpg', 'admin', 'Activo'),
(8, '00013', 'EL GRAN LIBRO DE LOS MITOS', '0001', '799.00', 30, 'Español', 'SUSAETA EDICIONES', 20, '00001236', '00013.jpg', 'admin', 'Activo'),
(9, '00014', 'HISTORIAS DE TERROR TIK TAK DR', '0001', '499.00', 6, 'Español', 'VV.AA.', 100, '00001235', '00014.jpg', 'admin', 'Activo'),
(10, '00015', 'SANCTUM', '0001', '286.00', 8, 'Español', 'MADELEINE ROUX', 3, '00001234', '00015.jpg', 'admin', 'Activo'),
(11, '00021', 'FIESTA Y DRAMA', '0002', '249.00', 0, 'Español', 'VARIOS AUTORES', 1, '00001234', '00021.jpg', 'admin', 'Activo'),
(12, '00022', 'CENIZAS. DRAMA EN TRES ACTOS', '0002', '99.00', 0, 'Español', 'RAMÓN MARÍA DEL VALLE-INCLÁN', 20, '00001236', '00022.jpg', 'admin', 'Activo'),
(13, '00023', 'EL DRAMA DE VARSOVIA', '0002', '169.00', 0, 'Español', 'CASIMIRO GRANZOW DE LA CERDA', 14, '00001236', '00023.jpg', 'admin', 'Activo'),
(14, '00024', 'DRAMA DEL HOMBRE', '0002', '520.00', 0, 'Español', 'JULIO ALVEAR TÉLLEZ', 20, '00001235', '00024.jpg', 'admin', 'Activo'),
(15, '00025', 'EL DRAMA DEL NIÑO DOTADO', '0002', '169.00', 0, 'Español', 'ALICE MILLER', 23, '00001234', '00025.jpg', 'admin', 'Activo'),
(16, '00031', 'HUMOR EN EL AULA', '0004', '239.00', 0, 'Español', 'ANA MARIA FERNANDEZ PONCELA', 23, '00001237', '00031.jpg', 'admin', 'Activo'),
(17, '00032', 'CUENTOS DE HUMOR NEGRO', '0004', '150.00', 5, 'Español', 'SAKI', 400, '00001234', '00032.jpg', 'admin', 'Activo'),
(18, '00033', 'BREVE HISTORIA DEL HUMOR INGLE', '0004', '379.00', 10, 'Ingles', 'CHARLY TAYLOR', 50, '00001237', '00033.jpg', 'admin', 'Activo'),
(19, '00034', 'DE BUEN HUMOR PRODUCIMOS MEJOR', '0004', '165.00', 0, 'Español', 'GUILLERMO JORGE RIOS ABARCA', 10, '00001234', '00034.jpg', 'admin', 'Activo'),
(20, '00035', 'EL HUMOR Y SUS LIMITES', '0004', '419.00', 20, 'Español', 'JOSE MARIA PERCEVAL', 5, '00001237', '00035.jpg', 'admin', 'Desactivado'),
(21, '00036', 'Humor', '0004', '18.00', 0, 'Ingles', 'Top Writers Block', 35, '00001237', '00036.jpg', 'admin', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('00001234', 'Conecta', 'Cd de mexico', '56789123', 'https://alfalibros.com'),
('00001235', 'ALFAGUARA JUVENIL', 'Cd de mexico', '56789123', 'https://alfalibros.com'),
('00001236', 'laurasse', 'Cd de mexico', '56789123', 'https://laurase.com'),
('00001237', 'Pearson', 'Cd de mexico', '56789123', 'https://pearson.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL,
  `NumeroDeposito` varchar(50) NOT NULL,
  `TipoEnvio` varchar(37) NOT NULL,
  `Adjunto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
