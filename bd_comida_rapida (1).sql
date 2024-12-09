-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2022 a las 06:58:35
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_comida_rapida`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_aux_ped_beb`
--

CREATE TABLE `t_aux_ped_beb` (
  `Clv_Axpb` int(11) NOT NULL,
  `Apb_Cant` int(11) NOT NULL,
  `Clv_Pedi` int(11) NOT NULL,
  `Clv_Bebi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_aux_ped_beb`
--

INSERT INTO `t_aux_ped_beb` (`Clv_Axpb`, `Apb_Cant`, `Clv_Pedi`, `Clv_Bebi`) VALUES
(1, 5, 3, 1),
(2, 3, 5, 5),
(3, 2, 9, 6),
(4, 4, 3, 2),
(5, 2, 3, 7),
(6, 4, 7, 3),
(7, 6, 7, 6),
(8, 4, 8, 4),
(9, 6, 2, 2),
(10, 5, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_aux_ped_pla`
--

CREATE TABLE `t_aux_ped_pla` (
  `Clv_Pepl` int(11) NOT NULL,
  `Pep_Cant` int(11) NOT NULL,
  `Clv_Pedi` int(11) NOT NULL,
  `Clv_Plat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_aux_ped_pla`
--

INSERT INTO `t_aux_ped_pla` (`Clv_Pepl`, `Pep_Cant`, `Clv_Pedi`, `Clv_Plat`) VALUES
(1, 8, 7, 8),
(2, 3, 5, 1),
(3, 3, 5, 7),
(4, 4, 6, 10),
(5, 6, 8, 7),
(6, 3, 6, 1),
(7, 3, 2, 9),
(8, 2, 1, 3),
(9, 3, 10, 14),
(10, 7, 9, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_bebidas`
--

CREATE TABLE `t_bebidas` (
  `Clv_Bebi` int(11) NOT NULL,
  `Beb_Nomb` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Beb_Prec` float NOT NULL,
  `Beb_Desc` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Beb_Cant` float NOT NULL,
  `Beb_Cadu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_bebidas`
--

INSERT INTO `t_bebidas` (`Clv_Bebi`, `Beb_Nomb`, `Beb_Prec`, `Beb_Desc`, `Beb_Cant`, `Beb_Cadu`) VALUES
(1, 'Refrescos', 25, 'Refrescos de 250ml', 20, '2024-08-09'),
(2, 'Aguas frescas', 30, 'Aguas naturales de sabor ', 20, '2022-10-11'),
(3, 'Limonadas', 50, 'De limón fresco, tamaño personal', 15, '2022-10-10'),
(4, 'Micheladas', 65, 'Micheladas clásicas preparadas', 20, '2022-10-12'),
(5, 'Cerveza', 30, 'Cervezas frías, tamaño personal', 50, '2027-08-17'),
(6, 'Agua natural', 18, 'Agua somple natural, tamaño personal', 70, '2022-10-04'),
(7, 'Café', 30, 'Café clásico tamaño personal ', 20, '2022-10-11'),
(8, 'Té', 30, 'Té tamaño personal', 20, '2022-10-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_clientes`
--

CREATE TABLE `t_clientes` (
  `Clv_Clie` int(11) NOT NULL,
  `Cli_Nomb` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Cli_Appa` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Cli_Amma` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Cli_Edad` int(11) NOT NULL,
  `Cli_Tele` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Cli_Dire` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Cli_Corr` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_clientes`
--

INSERT INTO `t_clientes` (`Clv_Clie`, `Cli_Nomb`, `Cli_Appa`, `Cli_Amma`, `Cli_Edad`, `Cli_Tele`, `Cli_Dire`, `Cli_Corr`) VALUES
(1, 'Etelvina', 'Cabello', 'Castro', 23, '938.383-0495', 'AZUCENA NO. 105 NO. 8, FUENTE DE LA UNIDAD, 24118, Campeche', 'etelvinaaa@gmail.com'),
(2, 'Catalina', 'Vicario', 'Zamorano', 19, '33.3180-9042', 'MANGO 2102, PARAISOS DEL COLLI, 45069, Jalisco', 'cataaa@gmail.com'),
(3, 'Floriana', 'De La Cruz', 'Garcia', 34, '81.8356-8331', 'AV BOSQUES DEL VALLE S/N 106, BOSQUES DEL VALLE, 66250, Nuevo Leon', 'foriss@gmail.com'),
(4, 'Cesar', 'Losa', 'Garza', 28, '351.512-0897', 'AQUILES SERDAN NO. 279 NO. 6, ZONA CENTRO, 59600, Michoacan', 'cesaarr@gmail.com'),
(5, 'Mirinda', 'Lopez', 'Chávez', 18, '55.5693-4511', 'PLAN DE SAN LUIS MZ. 53 L 602 SN, SANTA MARIA AZTAHUACAN, 09500, Distrito Federal', 'miriiss@gmail.com'),
(6, 'Esperanza', 'Mendoza', 'Velasco', 31, '5555656294', 'Emiliano Zapata Numero 10, Tlalnepantla De Baz, Estado De Mexico', 'Espeeranza123@gmailcom'),
(7, 'Octavio', 'Serrano', 'Alonso', 25, '(52) (33) 31803115', 'Deprtiva 437 Cp. 45090, Guadalajara, Jalisco', 'octavioo@gmail.com'),
(8, 'Cortez', 'Del Champo', 'Delgado', 30, '461.615-3717', 'LAGO DE YURIRIA NO. 413 NO. A, LARIOS, 38060, Guanajuato, Celaya', 'Corteeezz@gmail.com'),
(9, 'Jovana', 'Iglesias', 'Ortiz', 23, '461.611-5478', 'AZALEA 307, VALLE HERMOSO, 38010, Guanajuato, Celaya', 'jovaaanaa@gmail.com'),
(10, 'Alondra', 'Muñoz', 'Bolivar', 26, '722.270-4187', 'PROL 5 DE MAYO NO. 1406 NO. A, ELECTRICISTAS FEDERALES 1RA SECC, 50140, Estado De Mexico, Toluca', 'alondraa@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_empleados`
--

CREATE TABLE `t_empleados` (
  `Clv_Empl` int(11) NOT NULL,
  `Emp_Nomb` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Emp_Appa` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Emp_Amma` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Emp_Tele` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Emp_Corr` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Emp_Pues` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Emp_Hore` time NOT NULL,
  `Emp_Hors` time NOT NULL,
  `Emp_Dire` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Emp_Gene` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_empleados`
--

INSERT INTO `t_empleados` (`Clv_Empl`, `Emp_Nomb`, `Emp_Appa`, `Emp_Amma`, `Emp_Tele`, `Emp_Corr`, `Emp_Pues`, `Emp_Hore`, `Emp_Hors`, `Emp_Dire`, `Emp_Gene`) VALUES
(1, 'Baja', 'Salinas', 'Ortiz', '999.923-1244', 'bajaaa@gmail.com', 'Intendente', '06:00:00', '09:44:00', '97 NO. 500 Int. NO. A, MERIDA CENTRO, 97000, Yucatan', 'Mujer'),
(2, 'Mersades', 'Velasco', 'Alonso', '664.607-1069', 'mersaaa@gmail.com', 'Cocinera', '04:00:00', '13:00:00', 'DIAZ ORDAZ 12649 LOC 6, FRACC EL PARAISO, 22320, Baja California', 'Mujer'),
(3, 'Eulalio', 'De La Cruz', 'Campos', '287.428-3467', 'eulalioo@gmail.com', 'Supervisor', '06:00:00', '15:00:00', 'PROL 5 DE MAYO NO. 1406 NO. A, ELECTRICISTAS FEDERALES 1RA SECC, 50140, Estado De Mexico', 'Hombre'),
(4, 'Naiara', 'Serrano', 'Delgado', '461.611-5478', 'nairaa@gmail.com', 'Bartender', '00:00:00', '00:00:00', 'AZALEA 307, VALLE HERMOSO, 38010, Guanajuato', 'Mujer'),
(5, 'María', 'Ortiz', 'Mendez', '81.8151-1524', 'mariaa@gmail.com', 'Intendencia', '00:00:00', '00:00:00', 'AV ROGELIO CANTU GOMEZ NO. 358, SANTA MARÍA, 64630, Nuevo León\r\n', 'Mujer'),
(6, 'Naria', 'Serrano', 'Calderón', '33.3196-1196', 'nariiiss@gmail.com', 'nariaaa@gmail.com', '05:00:00', '12:00:00', 'AV. 8 DE JULIO NO. 2487, ZONA INDUSTRIAL, 44940, Jalisco\r\n', 'Mujer'),
(7, 'Cesar', 'Mendoza', 'Velazquez', '462.624-0515', 'cesaaar@gmail.com', 'Director general', '00:00:00', '00:00:00', 'PASEO JARDINES DEL VALLE NO. 2751, JARDINES DEL VALLE, 36611, Guanajuato\r\n', 'Hombre'),
(8, 'Anna', 'Martínez', 'Gómez', '686.905-6464', 'anaaa@gmail.com', 'Repartidor', '00:00:00', '00:00:00', 'PADRE KINO 1300, VISTA HERMOSA, 21240, Baja California\r\n', 'Mujer'),
(9, 'Mateo', 'Martín', 'Pérez', '614.417-1982', 'meteooo@gmail.com', 'Bartender', '00:00:00', '00:00:00', 'AV TECNOLOGICO 9292 NO. C, VILLA NUEVA, 31000, Chihuahua\r\n', 'Hombre'),
(10, 'Lucía', 'Ortiz', 'Santiago', '449.912-5542', 'luci@gmail.com', 'Repartidor', '00:00:00', '00:00:00', 'PROLONGACION INDEPENDENCIA 11886, VILLAS DE SAN NICOLAS, 20110, Aguascalientes\r\n', 'Mujer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_pedidos`
--

CREATE TABLE `t_pedidos` (
  `Clv_Pedi` int(11) NOT NULL,
  `Ped_Fech` date NOT NULL,
  `Ped_Hora` time NOT NULL,
  `Ped_Tota` float NOT NULL,
  `Clv_Clie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_pedidos`
--

INSERT INTO `t_pedidos` (`Clv_Pedi`, `Ped_Fech`, `Ped_Hora`, `Ped_Tota`, `Clv_Clie`) VALUES
(1, '0000-00-00', '10:48:00', 541, 10),
(2, '2022-10-20', '14:00:00', 48552, 1),
(3, '2022-10-11', '09:00:00', 5954, 1),
(4, '2022-10-12', '16:00:00', 413, 4),
(5, '2022-10-13', '14:00:00', 213, 9),
(6, '2022-10-19', '16:00:00', 351, 3),
(7, '2022-10-27', '17:00:00', 1215, 2),
(8, '2022-10-24', '13:00:00', 648, 6),
(9, '2022-10-13', '20:00:00', 511, 8),
(10, '2022-10-08', '19:00:00', 413, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_platillo`
--

CREATE TABLE `t_platillo` (
  `Clv_Plat` int(11) NOT NULL,
  `Pla_Nomb` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Pla_Desc` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Pla_Prec` int(11) NOT NULL,
  `Pla_Cate` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_platillo`
--

INSERT INTO `t_platillo` (`Clv_Plat`, `Pla_Nomb`, `Pla_Desc`, `Pla_Prec`, `Pla_Cate`) VALUES
(1, 'Clásica americana', 'Con exquisito queso amarillo, precio con papas y refresco $135', 68, 'Hamburgesa'),
(2, 'La oaxaca', 'Queso oaxaca de la región con papas y refresco $135', 70, 'Hamburguesa'),
(3, 'Pepinillos', 'Un sabor diferente con papas y refresco en $135', 75, 'Hamburguesa'),
(4, 'Bbq', 'Bañada en una jugosa salsa bbq con papas y refresco en $135', 75, 'Hamburguesa'),
(5, 'Philadelphia', 'Con exquisito queso philadelphia con pas y refresco en $140', 75, 'Hamburguesa'),
(6, 'Dos quesos', 'Queso amarillo y queso oaxaca con papas y refresco en $145', 75, 'Hamburguesa'),
(7, 'Tres quesos', 'Queso manchego, oaxaca y amarillo muy recomendable con papas y refresco en \r\n$150', 80, ''),
(8, 'Arrachera', '150g de carne jugosa y suave, con papas y refresco en $180', 130, 'Comida'),
(9, 'Especial', '3 piezas de carne y quesos, con papas y refresco en $180', 155, 'Hamburguesa'),
(10, 'Mega burger', '2 piezas de carne, piña, tocino, jamón, 2 quesos, con papas y refresco en $180', 155, 'Hamburguesa'),
(11, 'Camarón', '130g de camarón con tocino envuelto en queso manchego, con papas y refresco en $175', 125, 'Hamburguesa'),
(12, 'Hawaiana', 'Con exquisita piña a las brasas, jamón y queso, con papas y refresco en $145', 80, 'Hamburguesa'),
(13, 'Tocino', 'Con tiras de tocino y queso, con papas y refresco  en $170', 120, 'Hamburguesa'),
(14, 'Pechuga de pollo', '1/2 pechuga de pollo marinada y asada al carbón, con papas y refresco en $140', 85, 'Hamburguesa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_reservaciones`
--

CREATE TABLE `t_reservaciones` (
  `Clv_Rese` int(11) NOT NULL,
  `Clv_Clie` int(11) NOT NULL,
  `Res_Fech` date NOT NULL,
  `Res_Hora` time NOT NULL,
  `Res_Nope` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_reservaciones`
--

INSERT INTO `t_reservaciones` (`Clv_Rese`, `Clv_Clie`, `Res_Fech`, `Res_Hora`, `Res_Nope`) VALUES
(1, 5, '2022-10-06', '12:00:00', 3),
(2, 2, '2022-10-21', '15:00:00', 2),
(3, 6, '2022-10-06', '17:00:00', 5),
(4, 1, '2022-10-19', '16:00:00', 4),
(5, 4, '2022-10-26', '14:00:00', 2),
(6, 8, '2022-10-27', '17:00:00', 3),
(7, 9, '2022-10-20', '16:00:00', 5),
(8, 3, '2022-10-19', '16:00:00', 8),
(9, 2, '2022-10-18', '16:00:00', 12),
(10, 9, '2022-10-05', '11:00:00', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_aux_ped_beb`
--
ALTER TABLE `t_aux_ped_beb`
  ADD PRIMARY KEY (`Clv_Axpb`),
  ADD KEY `Clv_Bebi` (`Clv_Bebi`),
  ADD KEY `Clv_Pedi` (`Clv_Pedi`);

--
-- Indices de la tabla `t_aux_ped_pla`
--
ALTER TABLE `t_aux_ped_pla`
  ADD PRIMARY KEY (`Clv_Pepl`),
  ADD KEY `Clv_Pedi` (`Clv_Pedi`),
  ADD KEY `Clv_Plat` (`Clv_Plat`);

--
-- Indices de la tabla `t_bebidas`
--
ALTER TABLE `t_bebidas`
  ADD PRIMARY KEY (`Clv_Bebi`);

--
-- Indices de la tabla `t_clientes`
--
ALTER TABLE `t_clientes`
  ADD PRIMARY KEY (`Clv_Clie`);

--
-- Indices de la tabla `t_empleados`
--
ALTER TABLE `t_empleados`
  ADD PRIMARY KEY (`Clv_Empl`);

--
-- Indices de la tabla `t_pedidos`
--
ALTER TABLE `t_pedidos`
  ADD PRIMARY KEY (`Clv_Pedi`),
  ADD KEY `Clv_Clie` (`Clv_Clie`);

--
-- Indices de la tabla `t_platillo`
--
ALTER TABLE `t_platillo`
  ADD PRIMARY KEY (`Clv_Plat`);

--
-- Indices de la tabla `t_reservaciones`
--
ALTER TABLE `t_reservaciones`
  ADD PRIMARY KEY (`Clv_Rese`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_aux_ped_beb`
--
ALTER TABLE `t_aux_ped_beb`
  MODIFY `Clv_Axpb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `t_aux_ped_pla`
--
ALTER TABLE `t_aux_ped_pla`
  MODIFY `Clv_Pepl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `t_bebidas`
--
ALTER TABLE `t_bebidas`
  MODIFY `Clv_Bebi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `t_clientes`
--
ALTER TABLE `t_clientes`
  MODIFY `Clv_Clie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `t_empleados`
--
ALTER TABLE `t_empleados`
  MODIFY `Clv_Empl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `t_pedidos`
--
ALTER TABLE `t_pedidos`
  MODIFY `Clv_Pedi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `t_platillo`
--
ALTER TABLE `t_platillo`
  MODIFY `Clv_Plat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `t_reservaciones`
--
ALTER TABLE `t_reservaciones`
  MODIFY `Clv_Rese` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_aux_ped_beb`
--
ALTER TABLE `t_aux_ped_beb`
  ADD CONSTRAINT `t_aux_ped_beb_ibfk_1` FOREIGN KEY (`Clv_Bebi`) REFERENCES `t_bebidas` (`Clv_Bebi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_aux_ped_beb_ibfk_2` FOREIGN KEY (`Clv_Pedi`) REFERENCES `t_pedidos` (`Clv_Pedi`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `t_aux_ped_pla`
--
ALTER TABLE `t_aux_ped_pla`
  ADD CONSTRAINT `t_aux_ped_pla_ibfk_1` FOREIGN KEY (`Clv_Pedi`) REFERENCES `t_pedidos` (`Clv_Pedi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_aux_ped_pla_ibfk_2` FOREIGN KEY (`Clv_Plat`) REFERENCES `t_platillo` (`Clv_Plat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `t_pedidos`
--
ALTER TABLE `t_pedidos`
  ADD CONSTRAINT `t_pedidos_ibfk_1` FOREIGN KEY (`Clv_Clie`) REFERENCES `t_clientes` (`Clv_Clie`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
