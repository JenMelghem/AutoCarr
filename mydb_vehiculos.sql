-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-08-2024 a las 19:52:44
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb_vehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aval`
--

DROP TABLE IF EXISTS `aval`;
CREATE TABLE IF NOT EXISTS `aval` (
  `idAval` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del aval',
  `Persona_idPersona` int NOT NULL COMMENT 'Identificador de la persona asociada al aval',
  PRIMARY KEY (`idAval`),
  KEY `fk_persona3` (`Persona_idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `aval`
--

INSERT INTO `aval` (`idAval`, `Persona_idPersona`) VALUES
(1, 151),
(2, 152),
(3, 153),
(4, 154),
(5, 155),
(6, 156),
(7, 157),
(8, 158),
(9, 159),
(10, 160),
(11, 161),
(12, 162),
(13, 163),
(14, 164),
(15, 165),
(16, 166),
(17, 167),
(18, 168),
(19, 169),
(20, 170),
(21, 171),
(22, 172),
(23, 173),
(24, 174),
(25, 175),
(26, 177);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

DROP TABLE IF EXISTS `bodega`;
CREATE TABLE IF NOT EXISTS `bodega` (
  `idbodega` int NOT NULL COMMENT 'Identificador único de la bodega',
  `nombre` varchar(45) NOT NULL COMMENT 'Nombre de la bodega',
  `ubicacion` varchar(500) NOT NULL COMMENT 'Ubicación física de la bodega',
  `capacidad` varchar(45) NOT NULL COMMENT 'Capacidad de almacenamiento de la bodega',
  PRIMARY KEY (`idbodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `bodega`
--

INSERT INTO `bodega` (`idbodega`, `nombre`, `ubicacion`, `capacidad`) VALUES
(1, 'Bodega Central', 'Ciudad A', '1000'),
(2, 'Bodega Norte', 'Ciudad B', '800'),
(3, 'Bodega Sur', 'Ciudad C', '600'),
(4, 'Bodega Este', 'Ciudad D', '700'),
(5, 'Bodega Oeste', 'Ciudad E', '900');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega_has_entrada`
--

DROP TABLE IF EXISTS `bodega_has_entrada`;
CREATE TABLE IF NOT EXISTS `bodega_has_entrada` (
  `bodega_has_entrada_id` int NOT NULL AUTO_INCREMENT COMMENT 'Entradas que tuvo la bodega',
  `Bodega_idBodega` int NOT NULL COMMENT 'Identificador de la bodega asociada',
  `Entrada_idEntrada` int NOT NULL COMMENT 'Identificador de la entrada asociada a la bodega',
  PRIMARY KEY (`bodega_has_entrada_id`),
  KEY `fk_identrada` (`Entrada_idEntrada`),
  KEY `fk_idbodega1` (`Bodega_idBodega`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega_has_salida`
--

DROP TABLE IF EXISTS `bodega_has_salida`;
CREATE TABLE IF NOT EXISTS `bodega_has_salida` (
  `bodega_has_salida_id` int NOT NULL AUTO_INCREMENT COMMENT 'identificador de la salida de la bodega',
  `Bodega_idBodega` int NOT NULL COMMENT 'Identificador de la bodega asociada',
  `Salida_idSalida` int NOT NULL COMMENT 'Identificador de la salida asociada a la bodega',
  PRIMARY KEY (`bodega_has_salida_id`),
  KEY `fk_idsalida` (`Salida_idSalida`),
  KEY `fk_idbodega2` (`Bodega_idBodega`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del cliente',
  `Persona_idPersona` int NOT NULL COMMENT 'Identificador de la persona asociada al cliente',
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Persona_idPersona`) VALUES
(1, 76),
(2, 77),
(3, 78),
(4, 79),
(5, 80),
(6, 81),
(7, 82),
(8, 83),
(9, 84),
(10, 85),
(11, 86),
(12, 87),
(13, 88),
(14, 89),
(15, 90),
(16, 91),
(17, 92),
(18, 93),
(19, 94),
(20, 95),
(21, 96),
(22, 97),
(23, 98),
(24, 99),
(25, 100),
(26, 101),
(27, 102),
(28, 103),
(29, 104),
(30, 105),
(31, 106),
(32, 107),
(33, 108),
(34, 109),
(35, 110),
(36, 111),
(37, 112),
(38, 113),
(39, 114),
(40, 115),
(41, 116),
(42, 117),
(43, 118),
(44, 119),
(45, 120),
(46, 121),
(47, 122),
(48, 123),
(49, 124),
(50, 125),
(51, 126),
(52, 127),
(53, 128),
(54, 129),
(55, 130),
(56, 131),
(57, 132),
(58, 133),
(59, 134),
(60, 135),
(61, 136),
(62, 137),
(63, 138),
(64, 139),
(65, 140),
(66, 141),
(67, 142),
(68, 143),
(69, 144),
(70, 145),
(71, 146),
(72, 147),
(73, 148),
(74, 149),
(75, 150),
(76, 176);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credito`
--

DROP TABLE IF EXISTS `credito`;
CREATE TABLE IF NOT EXISTS `credito` (
  `idCredito` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del crédito',
  `Nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Nombre del tipo de credito',
  `Descripcion` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Descripción del crédito',
  `Tasa_de_interes` decimal(5,2) NOT NULL COMMENT 'Tasa de interés del crédito',
  `PlazoMeses` int NOT NULL COMMENT 'Número de meses en que se realizará el pago',
  PRIMARY KEY (`idCredito`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `credito`
--

INSERT INTO `credito` (`idCredito`, `Nombre`, `Descripcion`, `Tasa_de_interes`, `PlazoMeses`) VALUES
(1, 'Crédito Directo', 'Pagos mensuales fijos con una tasa de interés establecida.', 5.00, 24),
(2, 'Crédito Revolvente', 'Crédito que puede ser reutilizado a medida que se paga, similar a una tarjeta de crédito.', 18.00, 12),
(3, 'Crédito Bancario', 'Financiado por una institución bancaria con condiciones especiales.', 5.50, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

DROP TABLE IF EXISTS `devolucion`;
CREATE TABLE IF NOT EXISTS `devolucion` (
  `idDevolucion` int NOT NULL AUTO_INCREMENT,
  `sucursal_idscursal` int DEFAULT NULL,
  `tipoDevolucion` varchar(50) DEFAULT NULL,
  `vehiculo_idVehiculo` int DEFAULT NULL,
  `cliente_idCliente` int DEFAULT NULL,
  `fechaDevolucion` date DEFAULT NULL,
  `motivo` text,
  PRIMARY KEY (`idDevolucion`),
  KEY `vehiculo_idVehiculo` (`vehiculo_idVehiculo`),
  KEY `sucursal_idscursal` (`sucursal_idscursal`),
  KEY `fk_idcliente` (`cliente_idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del empleado',
  `Persona_idPersona` int NOT NULL COMMENT 'Identificador de la persona asociada al empleado',
  `rol_idrol` int NOT NULL COMMENT 'identificador del rol que tiene el empleado',
  `sucursal_idsucursal` int NOT NULL COMMENT 'Identificador de la sucursal en la que trabaja el empleado',
  PRIMARY KEY (`idEmpleado`),
  KEY `fk_idrol` (`rol_idrol`),
  KEY `fk_idpersona1` (`Persona_idPersona`),
  KEY `fk_idsucursal` (`sucursal_idsucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `Persona_idPersona`, `rol_idrol`, `sucursal_idsucursal`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 1, 2),
(7, 7, 1, 2),
(8, 8, 1, 2),
(9, 9, 1, 2),
(10, 10, 1, 2),
(11, 11, 1, 3),
(12, 12, 1, 3),
(13, 13, 1, 3),
(14, 14, 1, 3),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 4),
(18, 18, 1, 4),
(19, 19, 1, 4),
(20, 20, 1, 4),
(21, 21, 1, 5),
(22, 22, 1, 5),
(23, 23, 1, 5),
(24, 24, 1, 5),
(25, 25, 1, 5),
(26, 26, 2, 1),
(27, 27, 2, 1),
(28, 28, 2, 1),
(29, 29, 2, 1),
(30, 30, 2, 1),
(31, 31, 2, 2),
(32, 32, 2, 2),
(33, 33, 2, 2),
(34, 34, 2, 2),
(35, 35, 2, 2),
(36, 36, 2, 3),
(37, 37, 2, 3),
(38, 38, 2, 3),
(39, 39, 2, 3),
(40, 40, 2, 3),
(41, 41, 2, 4),
(42, 42, 2, 4),
(43, 43, 2, 4),
(44, 44, 2, 4),
(45, 45, 2, 4),
(46, 46, 2, 5),
(47, 47, 2, 5),
(48, 48, 2, 5),
(49, 49, 2, 5),
(50, 50, 2, 5),
(51, 51, 3, 1),
(52, 52, 3, 1),
(53, 53, 3, 1),
(54, 54, 3, 1),
(55, 55, 3, 1),
(56, 56, 3, 2),
(57, 57, 3, 2),
(58, 58, 3, 2),
(59, 59, 3, 2),
(60, 60, 3, 2),
(61, 61, 3, 3),
(62, 62, 3, 3),
(63, 63, 3, 3),
(64, 64, 3, 3),
(65, 65, 3, 3),
(66, 66, 3, 4),
(67, 67, 3, 4),
(68, 68, 3, 4),
(69, 69, 3, 4),
(70, 70, 3, 4),
(71, 71, 3, 5),
(72, 72, 3, 5),
(73, 73, 3, 5),
(74, 74, 3, 5),
(75, 75, 3, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

DROP TABLE IF EXISTS `entrada`;
CREATE TABLE IF NOT EXISTS `entrada` (
  `idEntrada` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la entrada',
  `Fecha_Hora` datetime NOT NULL COMMENT 'Fecha y hora de la entrada',
  `Vehiculo_idVehiculo` int NOT NULL COMMENT 'Identificador del vehículo asociado a la entrada',
  `proveedor_idproveedor` int NOT NULL COMMENT 'Identificador del proveedor que envió el vehículo',
  PRIMARY KEY (`idEntrada`),
  KEY `fk_idvehiculo1` (`Vehiculo_idVehiculo`),
  KEY `fk_idproveedor` (`proveedor_idproveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

DROP TABLE IF EXISTS `estado`;
CREATE TABLE IF NOT EXISTS `estado` (
  `idestado` int NOT NULL AUTO_INCREMENT COMMENT 'identificador del estado',
  `nombre` varchar(50) NOT NULL COMMENT 'Nombre del estado',
  `descripcion` varchar(400) NOT NULL COMMENT 'descripción del estado',
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idestado`, `nombre`, `descripcion`) VALUES
(1, 'Vendido', 'Indica que el vehículo ya esta vendido'),
(2, 'Rentado', 'Indica que el vehículo esta rentado'),
(3, 'Disponible', 'Indica que el vehículo esta disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_mantenimiento`
--

DROP TABLE IF EXISTS `factura_mantenimiento`;
CREATE TABLE IF NOT EXISTS `factura_mantenimiento` (
  `idfactura_mantenimiento` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la factura del mantenimiento de un vehículo',
  `fecha` date NOT NULL COMMENT 'fecha en la que se realizó la factura del mantenimiento',
  `Empleado_idEmpleado` int NOT NULL COMMENT 'Identificador del empleado que realizó el mantenimiento',
  `Cliente_idcliente` int NOT NULL COMMENT 'Identificador del cliente que solicitó el mantenimiento',
  `Vehiculo_idVehiculo` int NOT NULL COMMENT 'Identificador del vehículo asociado',
  `sucursal_idsucursal` int NOT NULL COMMENT 'Identificación de la sucursal',
  `Descripcion` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Descripción del mantenimiento realizado',
  `fecha_inicio` datetime NOT NULL COMMENT 'Fecha y hora en que se empezó el mantenimiento',
  `fecha_fin` datetime NOT NULL COMMENT 'Fecha y hora en la que terminó el mantenimiento',
  `Total` double NOT NULL COMMENT 'Total a pagar',
  PRIMARY KEY (`idfactura_mantenimiento`),
  KEY `fk_idcliente1` (`Cliente_idcliente`),
  KEY `fk_idempleado_fm` (`Empleado_idEmpleado`),
  KEY `fk_vehiculom` (`Vehiculo_idVehiculo`),
  KEY `fk_sucursalm` (`sucursal_idsucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `factura_mantenimiento`
--

INSERT INTO `factura_mantenimiento` (`idfactura_mantenimiento`, `fecha`, `Empleado_idEmpleado`, `Cliente_idcliente`, `Vehiculo_idVehiculo`, `sucursal_idsucursal`, `Descripcion`, `fecha_inicio`, `fecha_fin`, `Total`) VALUES
(1, '2024-08-17', 1, 1, 1, 1, 'Mantenimiento de prueba', '2024-08-17 10:00:00', '2024-08-17 12:00:00', 100),
(9, '2024-02-01', 3, 2, 2, 1, 'cambio de llantas', '2024-08-27 21:34:26', '2024-08-28 21:34:26', 20000),
(10, '2024-02-01', 2, 6, 2, 1, 'cambio de aceite', '2024-08-27 21:48:08', '2024-08-29 21:48:08', 200),
(11, '2024-02-01', 2, 6, 2, 1, 'cambio de aceite', '2024-08-27 21:48:08', '2024-08-29 21:48:08', 200),
(12, '2024-03-10', 3, 7, 3, 1, 'revisión de frenos', '2024-08-01 08:30:00', '2024-08-01 10:45:00', 150),
(13, '2024-04-15', 1, 8, 1, 1, 'cambio de llantas', '2024-08-15 09:00:00', '2024-08-15 11:00:00', 300),
(14, '2024-05-20', 4, 9, 4, 1, 'alineación y balanceo', '2024-08-17 13:30:00', '2024-08-17 15:00:00', 100),
(15, '2024-06-25', 2, 10, 5, 1, 'cambio de batería', '2024-08-10 14:15:00', '2024-08-10 14:45:00', 120);

--
-- Disparadores `factura_mantenimiento`
--
DROP TRIGGER IF EXISTS `after_insert_factura_mantenimiento`;
DELIMITER $$
CREATE TRIGGER `after_insert_factura_mantenimiento` AFTER INSERT ON `factura_mantenimiento` FOR EACH ROW BEGIN
    INSERT INTO HistorialMantenimiento (
        sucursal_idsucursal,
        idfactura_mantenimiento,
        empleado_idempleado,
        cliente_idcliente,
        vehiculo_idVehiculo,
        fechaMantenimiento,
        descripcion,
        costo
    )
    VALUES (
        NEW.sucursal_idsucursal,
        NEW.idfactura_mantenimiento,
        NEW.Empleado_idEmpleado,
        NEW.Cliente_idcliente,
        NEW.Vehiculo_idVehiculo,
        NEW.fecha,
        NEW.Descripcion,
        NEW.Total
    );
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `before_insert_factura_mantenimiento`;
DELIMITER $$
CREATE TRIGGER `before_insert_factura_mantenimiento` BEFORE INSERT ON `factura_mantenimiento` FOR EACH ROW BEGIN
    DECLARE temp_sucursal INT;
    
    -- Obtener el id_sucursal basado en el idVehiculo
    SELECT shb.Sucursal_idSucursal INTO temp_sucursal
    FROM vehiculo v
    JOIN sucursal_has_bodega shb ON v.Bodega_idBodega = shb.Bodega_idBodega
    WHERE v.idVehiculo = NEW.Vehiculo_idVehiculo;
    
    -- Asignar el id_sucursal al campo en la nueva fila
    SET NEW.sucursal_idsucursal = temp_sucursal;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_renta`
--

DROP TABLE IF EXISTS `factura_renta`;
CREATE TABLE IF NOT EXISTS `factura_renta` (
  `idfactura_renta` int NOT NULL AUTO_INCREMENT COMMENT 'identificador de la renta',
  `fechaEmision` date NOT NULL COMMENT 'Fecha emisión de la factura',
  `empleado_idempleado` int NOT NULL COMMENT 'identificador del empleado que a realizado la renta',
  `cliente_idcliente` int NOT NULL COMMENT 'identificador de el empleado que realizo la renta',
  `vehiculo_idvehiculo` int NOT NULL COMMENT 'identificador del vehículo rentado',
  `sucursal_idsucursal` int NOT NULL COMMENT 'Identificación de la sucursal ',
  `seguro_idseguro` int NOT NULL COMMENT 'Seguro de renta del vehículo',
  `fecha_inicio` datetime NOT NULL COMMENT 'Fecha inicio de la renta del vehículo',
  `fecha_fin` datetime NOT NULL COMMENT 'Fecha fin de la renta del vehículo',
  `aval_idaval` int NOT NULL COMMENT 'identificador del aval',
  `Total` double NOT NULL COMMENT 'Total a pagar',
  `mpago_idmpago` int NOT NULL COMMENT 'Identificador del metodo de pago',
  PRIMARY KEY (`idfactura_renta`),
  KEY `fk_idvehiculo` (`vehiculo_idvehiculo`),
  KEY `fk_idmpago1` (`mpago_idmpago`),
  KEY `fk_idsucursal1` (`sucursal_idsucursal`),
  KEY `fk_idseguro2` (`seguro_idseguro`),
  KEY `fk_idcliente2` (`cliente_idcliente`),
  KEY `fk_idaval` (`aval_idaval`),
  KEY `fk_idempleado_fr` (`empleado_idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `factura_renta`
--

INSERT INTO `factura_renta` (`idfactura_renta`, `fechaEmision`, `empleado_idempleado`, `cliente_idcliente`, `vehiculo_idvehiculo`, `sucursal_idsucursal`, `seguro_idseguro`, `fecha_inicio`, `fecha_fin`, `aval_idaval`, `Total`, `mpago_idmpago`) VALUES
(1, '2024-08-13', 4, 3, 5, 5, 2, '2024-08-18 03:33:37', '2024-08-18 03:33:37', 12, 20000, 1),
(2, '2024-08-20', 3, 3, 6, 4, 5, '2024-08-27 21:44:33', '2024-08-29 21:44:33', 10, 20000, 1);

--
-- Disparadores `factura_renta`
--
DROP TRIGGER IF EXISTS `actualizar_estado_renta`;
DELIMITER $$
CREATE TRIGGER `actualizar_estado_renta` AFTER INSERT ON `factura_renta` FOR EACH ROW BEGIN
    -- Actualiza el estado del vehículo a 'Rentado'
    UPDATE vehiculo
    SET estado_idestado = (SELECT idestado FROM estado WHERE nombre = 'Rentado')
    WHERE idVehiculo = NEW.vehiculo_idvehiculo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_venta`
--

DROP TABLE IF EXISTS `factura_venta`;
CREATE TABLE IF NOT EXISTS `factura_venta` (
  `idfactura_venta` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la factura de las ventas',
  `fecha` date NOT NULL COMMENT 'fecha en la que se realizó la venta',
  `Empleado_idEmpleado` int NOT NULL COMMENT 'Identificador del empleado que realizo la venta',
  `Cliente_idCliente` int NOT NULL COMMENT 'Identificador del cliente asociado a la venta del vehículo',
  `Vehiculo_idVehiculo` int NOT NULL COMMENT 'Identificador del vehículo asociado',
  `sucursal_idsucursal` int NOT NULL COMMENT 'Identificación de la sucursal',
  `seguro_idseguro` int NOT NULL COMMENT 'Seguro de venta del vehículo',
  `Total` double NOT NULL COMMENT 'Total a pagar',
  `mpago_idmpago` int NOT NULL COMMENT 'Identificador del metodo en que se realizó el pago',
  PRIMARY KEY (`idfactura_venta`),
  KEY `fk_idvehiculoo` (`Vehiculo_idVehiculo`),
  KEY `fk_idsucursal2` (`sucursal_idsucursal`),
  KEY `fk_idmpago` (`mpago_idmpago`),
  KEY `fk_idseguro` (`seguro_idseguro`),
  KEY `fk_cliente2` (`Cliente_idCliente`),
  KEY `fk_idempleado_fv` (`Empleado_idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `factura_venta`
--

INSERT INTO `factura_venta` (`idfactura_venta`, `fecha`, `Empleado_idEmpleado`, `Cliente_idCliente`, `Vehiculo_idVehiculo`, `sucursal_idsucursal`, `seguro_idseguro`, `Total`, `mpago_idmpago`) VALUES
(13, '2024-02-01', 26, 1, 1, 1, 1, 20000, 1),
(14, '2024-03-01', 27, 2, 2, 1, 1, 22000, 1),
(15, '2024-02-03', 28, 3, 3, 1, 2, 25000, 2),
(16, '2024-02-05', 29, 4, 4, 1, 4, 35000, 2),
(17, '2024-02-04', 30, 5, 5, 1, 3, 3000, 1),
(18, '2024-02-01', 31, 6, 16, 2, 1, 23000, 1),
(19, '2024-03-01', 32, 7, 17, 2, 3, 24000, 1),
(20, '2024-02-03', 33, 8, 18, 2, 2, 27000, 2),
(21, '2024-02-05', 34, 9, 19, 2, 4, 45000, 2),
(22, '2024-02-04', 35, 10, 20, 2, 3, 3200, 1),
(23, '2024-02-01', 36, 11, 37, 3, 1, 47000, 1),
(24, '2024-03-01', 37, 12, 38, 3, 3, 50000, 1),
(25, '2024-02-03', 38, 13, 39, 3, 2, 29000, 2),
(26, '2024-02-05', 39, 14, 40, 3, 4, 50000, 2),
(27, '2024-02-04', 40, 15, 41, 3, 3, 36000, 1),
(30, '2024-08-18', 1, 1, 8, 1, 1, 65000, 1),
(31, '2024-08-18', 1, 1, 9, 1, 1, 65000, 1),
(32, '0000-00-00', 2, 1, 10, 4, 5, 200, 2),
(33, '2024-08-14', 4, 3, 11, 2, 3, 200, 1),
(34, '2024-08-18', 4, 6, 12, 2, 1, 32000, 1),
(35, '2024-08-18', 4, 6, 13, 2, 1, 32000, 2);

--
-- Disparadores `factura_venta`
--
DROP TRIGGER IF EXISTS `actualizar_estado_venta`;
DELIMITER $$
CREATE TRIGGER `actualizar_estado_venta` AFTER INSERT ON `factura_venta` FOR EACH ROW BEGIN
    -- Actualiza el estado del vehículo a 'Vendido'
    UPDATE vehiculo
    SET estado_idestado = (SELECT idestado FROM estado WHERE nombre = 'Vendido')
    WHERE idVehiculo = NEW.Vehiculo_idVehiculo;
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `after_insert_factura_venta`;
DELIMITER $$
CREATE TRIGGER `after_insert_factura_venta` AFTER INSERT ON `factura_venta` FOR EACH ROW BEGIN
    INSERT INTO HistorialVenta (
        sucursal_idsucursal,
        idfactura_venta,
        empleado_idempleado,
        cliente_idcliente,
        vehiculo_idVehiculo,
        fechaventa,
        costo,
        mpago_idmpago
    )
    VALUES (
        NEW.sucursal_idsucursal,
        NEW.idfactura_venta,
        NEW.Empleado_idEmpleado,
        NEW.Cliente_idCliente,
        NEW.Vehiculo_idVehiculo,
        NEW.fecha,
        NEW.Total,
        NEW.mpago_idmpago
    );
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `before_insert_factura_venta`;
DELIMITER $$
CREATE TRIGGER `before_insert_factura_venta` BEFORE INSERT ON `factura_venta` FOR EACH ROW BEGIN
   IF NEW.fecha IS NULL THEN
      SET NEW.fecha = CURRENT_DATE;
   END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialmantenimiento`
--

DROP TABLE IF EXISTS `historialmantenimiento`;
CREATE TABLE IF NOT EXISTS `historialmantenimiento` (
  `idHistorial` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del historial de mantenimiento',
  `sucursal_idsucursal` int NOT NULL COMMENT 'Identificador de la sucursal donde se realizó el mantenimiento',
  `idfactura_mantenimiento` int NOT NULL COMMENT 'Identificador de la factura del mantenimiento',
  `empleado_idempleado` int NOT NULL COMMENT 'Identificador del empleado que realizó el mantenimiento',
  `cliente_idcliente` int NOT NULL COMMENT 'Identificador del cliente que solicitó el mantenimiento',
  `vehiculo_idVehiculo` int NOT NULL COMMENT 'Identificador del vehículo que recibió el mantenimiento',
  `fechaMantenimiento` date NOT NULL COMMENT 'Fecha en la que se realizó el mantenimiento',
  `descripcion` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Descripción del mantenimiento realizado',
  `costo` double NOT NULL COMMENT 'Costo del mantenimiento',
  PRIMARY KEY (`idHistorial`),
  KEY `sucursal_idsucursal` (`sucursal_idsucursal`),
  KEY `idfactura_mantenimiento` (`idfactura_mantenimiento`),
  KEY `vehiculo_idVehiculo` (`vehiculo_idVehiculo`),
  KEY `fk_idcliente3` (`cliente_idcliente`),
  KEY `fk_idempleado_hm` (`empleado_idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `historialmantenimiento`
--

INSERT INTO `historialmantenimiento` (`idHistorial`, `sucursal_idsucursal`, `idfactura_mantenimiento`, `empleado_idempleado`, `cliente_idcliente`, `vehiculo_idVehiculo`, `fechaMantenimiento`, `descripcion`, `costo`) VALUES
(2, 1, 9, 3, 2, 2, '2024-02-01', 'cambio de llantas', 20000),
(3, 1, 10, 2, 6, 2, '2024-02-01', 'cambio de aceite', 200),
(4, 1, 11, 2, 6, 2, '2024-02-01', 'cambio de aceite', 200),
(5, 1, 12, 3, 7, 3, '2024-03-10', 'revisión de frenos', 150),
(6, 1, 13, 1, 8, 1, '2024-04-15', 'cambio de llantas', 300),
(7, 1, 14, 4, 9, 4, '2024-05-20', 'alineación y balanceo', 100),
(8, 1, 15, 2, 10, 5, '2024-06-25', 'cambio de batería', 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialrenta`
--

DROP TABLE IF EXISTS `historialrenta`;
CREATE TABLE IF NOT EXISTS `historialrenta` (
  `idHistorial` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del historial de renta',
  `sucursal_idsucursal` int DEFAULT NULL COMMENT 'Identificador de la sucursal donde se realizó la renta',
  `idfactura_renta` int DEFAULT NULL COMMENT 'Identificador de la factura de la renta',
  `empleado_idempleado` int DEFAULT NULL COMMENT 'Identificador del empleado que realizó la renta',
  `cliente_idcliente` int DEFAULT NULL COMMENT 'Identificador del cliente que hizo la renta',
  `vehiculo_idVehiculo` int DEFAULT NULL COMMENT 'Identificador del vehículo que recibió la renta',
  `aval_idaval` int DEFAULT NULL COMMENT 'Identificador del aval',
  `fechainicio` date DEFAULT NULL COMMENT 'Fecha en la que se realizó la renta',
  `fechafin` date DEFAULT NULL COMMENT 'Fecha en la que se finalizó la renta',
  `costoTotal` double DEFAULT NULL COMMENT 'Costo total de la renta',
  `mpago_idmpago` int DEFAULT NULL COMMENT 'Identificador de la forma de pago',
  PRIMARY KEY (`idHistorial`),
  KEY `sucursal_idsucursal` (`sucursal_idsucursal`),
  KEY `vehiculo_idVehiculo` (`vehiculo_idVehiculo`),
  KEY `mpago_idmpago` (`mpago_idmpago`),
  KEY `fk_idaval1` (`aval_idaval`),
  KEY `fk_idcliente4` (`cliente_idcliente`),
  KEY `fk_idempleado_hr` (`empleado_idempleado`),
  KEY `fk_idfacturarenta_h` (`idfactura_renta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `historialrenta`
--

INSERT INTO `historialrenta` (`idHistorial`, `sucursal_idsucursal`, `idfactura_renta`, `empleado_idempleado`, `cliente_idcliente`, `vehiculo_idVehiculo`, `aval_idaval`, `fechainicio`, `fechafin`, `costoTotal`, `mpago_idmpago`) VALUES
(1, 5, 1, 4, 3, 5, 12, '2024-08-18', '2024-08-18', 20000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialventa`
--

DROP TABLE IF EXISTS `historialventa`;
CREATE TABLE IF NOT EXISTS `historialventa` (
  `idHistorial` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del historial de venta',
  `sucursal_idsucursal` int DEFAULT NULL COMMENT 'Identificador de la sucursal donde se realizó la venta',
  `idfactura_venta` int DEFAULT NULL COMMENT 'Identificador de la factura de la venta',
  `empleado_idempleado` int DEFAULT NULL COMMENT 'Identificador del empleado que realizó la venta',
  `cliente_idcliente` int DEFAULT NULL COMMENT 'Identificador del cliente que hizo la compra',
  `vehiculo_idVehiculo` int DEFAULT NULL COMMENT 'Identificador del vehículo que recibió el mantenimiento',
  `fechaventa` date DEFAULT NULL COMMENT 'Fecha en la que se realizó la venta',
  `descripcion` varchar(400) DEFAULT NULL COMMENT 'Descripción de la venta realizada',
  `costo` double DEFAULT NULL COMMENT 'Costo de la venta',
  `mpago_idmpago` int DEFAULT NULL COMMENT 'Identificador de la forma de pago',
  PRIMARY KEY (`idHistorial`),
  KEY `sucursal_idsucursal` (`sucursal_idsucursal`),
  KEY `idfactura_venta` (`idfactura_venta`),
  KEY `vehiculo_idVehiculo` (`vehiculo_idVehiculo`),
  KEY `mpago_idmpago` (`mpago_idmpago`),
  KEY `fk_idcliente5` (`cliente_idcliente`),
  KEY `fk_idempleado_hv` (`empleado_idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `historialventa`
--

INSERT INTO `historialventa` (`idHistorial`, `sucursal_idsucursal`, `idfactura_venta`, `empleado_idempleado`, `cliente_idcliente`, `vehiculo_idVehiculo`, `fechaventa`, `descripcion`, `costo`, `mpago_idmpago`) VALUES
(5, 1, 13, 26, 1, 1, '2024-02-01', NULL, 20000, 1),
(6, 1, 14, 27, 2, 2, '2024-03-01', NULL, 22000, 1),
(7, 1, 15, 28, 3, 3, '2024-02-03', NULL, 25000, 2),
(8, 1, 16, 29, 4, 4, '2024-02-05', NULL, 35000, 2),
(9, 1, 17, 30, 5, 5, '2024-02-04', NULL, 3000, 1),
(10, 2, 18, 31, 6, 16, '2024-02-01', NULL, 23000, 1),
(11, 2, 19, 32, 7, 17, '2024-03-01', NULL, 24000, 1),
(12, 2, 20, 33, 8, 18, '2024-02-03', NULL, 27000, 2),
(13, 2, 21, 34, 9, 19, '2024-02-05', NULL, 45000, 2),
(14, 2, 22, 35, 10, 20, '2024-02-04', NULL, 3200, 1),
(15, 3, 23, 36, 11, 37, '2024-02-01', NULL, 47000, 1),
(16, 3, 24, 37, 12, 38, '2024-03-01', NULL, 50000, 1),
(17, 3, 25, 38, 13, 39, '2024-02-03', NULL, 29000, 2),
(18, 3, 26, 39, 14, 40, '2024-02-05', NULL, 50000, 2),
(19, 3, 27, 40, 15, 41, '2024-02-04', NULL, 36000, 1),
(20, 2, 33, 4, 3, 11, '2024-08-14', NULL, 200, 1),
(21, 2, 34, 4, 6, 12, '2024-08-18', NULL, 32000, 1),
(22, 2, 35, 4, 6, 13, '2024-08-18', NULL, 32000, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mpago`
--

DROP TABLE IF EXISTS `mpago`;
CREATE TABLE IF NOT EXISTS `mpago` (
  `idmPago` int NOT NULL COMMENT 'Identificador único del pago',
  `metodo_pago` varchar(100) DEFAULT NULL COMMENT 'método en que se realiza el pago',
  PRIMARY KEY (`idmPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `mpago`
--

INSERT INTO `mpago` (`idmPago`, `metodo_pago`) VALUES
(1, 'Contado'),
(2, 'Credito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idPersona` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la persona',
  `Pnombre` varchar(45) NOT NULL COMMENT 'Primer nombre de la persona',
  `Snombre` varchar(45) DEFAULT NULL COMMENT 'Segundo nombre de la persona',
  `Papellido` varchar(50) NOT NULL COMMENT 'Primer apellido de la persona',
  `Sapellido` varchar(45) DEFAULT NULL COMMENT 'Segundo apellido de la persona',
  `telefono` varchar(45) NOT NULL COMMENT 'Teléfono de contacto de la persona',
  `correo` varchar(45) NOT NULL COMMENT 'Correo electrónico de la persona',
  `direccion` varchar(45) DEFAULT NULL COMMENT 'Dirección de la persona',
  `personat_idpersonat` int DEFAULT NULL COMMENT 'Que tipo de persona será(cliente, empleado, aval)',
  PRIMARY KEY (`idPersona`),
  KEY `fk_personatip` (`personat_idpersonat`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `Pnombre`, `Snombre`, `Papellido`, `Sapellido`, `telefono`, `correo`, `direccion`, `personat_idpersonat`) VALUES
(1, 'Juan', 'Carlos', 'Perez', 'Gomez', '1234567890', 'juan.perez@example.com', 'Calle Falsa 123', NULL),
(2, 'Maria', 'Jose', 'Lopez', 'Martinez', '2345678901', 'maria.lopez@example.com', 'Avenida Siempre Viva 456', NULL),
(3, 'Pedro', 'Antonio', 'Gonzalez', 'Hernandez', '3456789012', 'pedro.gonzalez@example.com', 'Calle del Sol 789', NULL),
(4, 'Ana', 'Isabel', 'Garcia', 'Rodriguez', '4567890123', 'ana.garcia@example.com', 'Plaza Mayor 101', NULL),
(5, 'Luis', 'Miguel', 'Martinez', 'Diaz', '5678901234', 'luis.martinez@example.com', 'Avenida de los Poetas 202', NULL),
(6, 'Laura', 'Patricia', 'Sanchez', 'Fernandez', '6789012345', 'laura.sanchez@example.com', 'Calle de la Luna 303', NULL),
(7, 'Jose', 'Manuel', 'Ramirez', 'Gutierrez', '7890123456', 'jose.ramirez@example.com', 'Camino Real 404', NULL),
(8, 'Carmen', 'Lucia', 'Torres', 'Castillo', '8901234567', 'carmen.torres@example.com', 'Paseo de la Reforma 505', NULL),
(9, 'Miguel', 'Angel', 'Flores', 'Vargas', '9012345678', 'miguel.flores@example.com', 'Calle de los Olivos 606', NULL),
(10, 'Rosa', 'Elena', 'Rivera', 'Morales', '0123456789', 'rosa.rivera@example.com', 'Boulevard del Bosque 707', NULL),
(11, 'Daniel', 'Eduardo', 'Hernandez', 'Ortega', '1234509876', 'daniel.hernandez@example.com', 'Avenida de las Rosas 808', NULL),
(12, 'Sandra', 'Beatriz', 'Moreno', 'Ruiz', '2345610987', 'sandra.moreno@example.com', 'Calle de los Pinos 909', NULL),
(13, 'Jorge', 'Francisco', 'Ramos', 'Soto', '3456721098', 'jorge.ramos@example.com', 'Callejón del Gato 1010', NULL),
(14, 'Patricia', 'Margarita', 'Gomez', 'Rios', '4567832109', 'patricia.gomez@example.com', 'Avenida del Parque 1111', NULL),
(15, 'Ricardo', 'Jesus', 'Martinez', 'Jimenez', '5678943210', 'ricardo.martinez@example.com', 'Callejón del Diablo 1212', NULL),
(16, 'Sofia', 'Valentina', 'Navarro', 'Mendoza', '1122334455', 'sofia.navarro@example.com', 'Avenida Central 1313', NULL),
(17, 'Diego', 'Emiliano', 'Romero', 'Cruz', '2233445566', 'diego.romero@example.com', 'Calle de la Esperanza 1414', NULL),
(18, 'Gabriela', 'Paola', 'Dominguez', 'Mejia', '3344556677', 'gabriela.dominguez@example.com', 'Plaza de la Libertad 1515', NULL),
(19, 'Carlos', 'Adrian', 'Medina', 'Paredes', '4455667788', 'carlos.medina@example.com', 'Avenida de la Paz 1616', NULL),
(20, 'Fernanda', 'Alejandra', 'Vega', 'Santos', '5566778899', 'fernanda.vega@example.com', 'Calle del Río 1717', NULL),
(21, 'Oscar', 'Hugo', 'Rojas', 'Molina', '6677889900', 'oscar.rojas@example.com', 'Boulevard de los Héroes 1818', NULL),
(22, 'Alicia', 'Lorena', 'Ortiz', 'Escobar', '7788990011', 'alicia.ortiz@example.com', 'Avenida del Sol 1919', NULL),
(23, 'Juanita', 'Margarita', 'Lara', 'Campos', '8899001122', 'juanita.lara@example.com', 'Calle de la Luz 2020', NULL),
(24, 'Roberto', 'Felipe', 'Silva', 'Marin', '9900112233', 'roberto.silva@example.com', 'Camino de los Cipreses 2121', NULL),
(25, 'Luisa', 'Renata', 'Herrera', 'Reyes', '0011223344', 'luisa.herrera@example.com', 'Plaza de los Cedros 2222', NULL),
(26, 'Eduardo', 'Miguel', 'Aguirre', 'Villanueva', '1122334455', 'eduardo.aguirre@example.com', 'Callejón de los Ángeles 2323', NULL),
(27, 'Elena', 'Montserrat', 'Guzman', 'Blanco', '2233445566', 'elena.guzman@example.com', 'Avenida de la Unión 2424', NULL),
(28, 'Javier', 'Esteban', 'Carrillo', 'Montero', '3344556677', 'javier.carrillo@example.com', 'Calle del Bosque 2525', NULL),
(29, 'Valeria', 'Camila', 'Soto', 'Palacios', '4455667788', 'valeria.soto@example.com', 'Avenida de las Estrellas 2626', NULL),
(30, 'Pablo', 'Antonio', 'Fuentes', 'Ramos', '5566778899', 'pablo.fuentes@example.com', 'Plaza de la Independencia 2727', NULL),
(31, 'Laura', 'Valeria', 'Ramirez', 'Torres', '6677889900', 'laura.ramirez@example.com', 'Plaza de los Pinos 2828', NULL),
(32, 'Hector', 'Alejandro', 'Moreno', 'Flores', '7788990011', 'hector.moreno@example.com', 'Calle de los Cedros 2929', NULL),
(33, 'Carmen', 'Maria', 'Lopez', 'Vargas', '6677889900', 'carmen.lopez@example.com', 'Calle de la Libertad 2828', NULL),
(34, 'Fernando', 'Alejandro', 'Martinez', 'Garcia', '7788990011', 'fernando.martinez@example.com', 'Avenida del Bosque 2929', NULL),
(35, 'Gloria', 'Isabel', 'Hernandez', 'Guzman', '8899001122', 'gloria.hernandez@example.com', 'Calle de la Paz 3030', NULL),
(36, 'Hector', 'Francisco', 'Gomez', 'Moreno', '9900112233', 'hector.gomez@example.com', 'Plaza de las Flores 3131', NULL),
(37, 'Irene', 'Patricia', 'Diaz', 'Pacheco', '0011223344', 'irene.diaz@example.com', 'Camino de los Reyes 3232', NULL),
(38, 'Julio', 'Cesar', 'Ramirez', 'Perez', '1122334455', 'julio.ramirez@example.com', 'Callejón de los Sueños 3333', NULL),
(39, 'Karen', 'Lucia', 'Torres', 'Lopez', '2233445566', 'karen.torres@example.com', 'Avenida de la Amistad 3434', NULL),
(40, 'Lorenzo', 'Miguel', 'Vazquez', 'Hernandez', '3344556677', 'lorenzo.vazquez@example.com', 'Boulevard de las Rosas 3535', NULL),
(41, 'Mariana', 'Sofia', 'Sanchez', 'Ortiz', '4455667788', 'mariana.sanchez@example.com', 'Calle del Sol 3636', NULL),
(42, 'Nicolas', 'Andres', 'Mendoza', 'Ramirez', '5566778899', 'nicolas.mendoza@example.com', 'Plaza del Sol 3737', NULL),
(43, 'Olga', 'Beatriz', 'Fernandez', 'Lopez', '6677889900', 'olga.fernandez@example.com', 'Avenida de la Primavera 3838', NULL),
(44, 'Pablo', 'Gabriel', 'Silva', 'Gonzalez', '7788990011', 'pablo.silva@example.com', 'Calle de los Arboles 3939', NULL),
(45, 'Raquel', 'Lorena', 'Perez', 'Jimenez', '8899001122', 'raquel.perez@example.com', 'Plaza de la Fuente 4040', NULL),
(46, 'Sara', 'Paola', 'Garcia', 'Hernandez', '9900112233', 'sara.garcia@example.com', 'Avenida de la Victoria 4141', NULL),
(47, 'Tomas', 'Emilio', 'Gonzalez', 'Soto', '0011223344', 'tomas.gonzalez@example.com', 'Calle de la Esperanza 4242', NULL),
(48, 'Ursula', 'Beatriz', 'Martinez', 'Ruiz', '1122334455', 'ursula.martinez@example.com', 'Plaza del Carmen 4343', NULL),
(49, 'Victor', 'Hugo', 'Rios', 'Moreno', '2233445566', 'victor.rios@example.com', 'Avenida de los Poetas 4444', NULL),
(50, 'Wendy', 'Carolina', 'Navarro', 'Vega', '3344556677', 'wendy.navarro@example.com', 'Callejón del Silencio 4545', NULL),
(51, 'Ximena', 'Monserrat', 'Castillo', 'Flores', '4455667788', 'ximena.castillo@example.com', 'Plaza de la Libertad 4646', NULL),
(52, 'Yolanda', 'Margarita', 'Ortega', 'Perez', '5566778899', 'yolanda.ortega@example.com', 'Avenida del Bosque 4747', NULL),
(53, 'Zoe', 'Elena', 'Lopez', 'Sanchez', '6677889900', 'zoe.lopez@example.com', 'Calle de las Estrellas 4848', NULL),
(54, 'Angel', 'Luis', 'Ramos', 'Guzman', '7788990011', 'angel.ramos@example.com', 'Avenida del Lago 4949', NULL),
(55, 'Brenda', 'Patricia', 'Cruz', 'Hernandez', '8899001122', 'brenda.cruz@example.com', 'Calle del Sol 5050', NULL),
(56, 'Carlos', 'Fernando', 'Mendoza', 'Lopez', '9900112233', 'carlos.mendoza@example.com', 'Plaza de la Amistad 5151', NULL),
(57, 'Diana', 'Maria', 'Soto', 'Perez', '0011223344', 'diana.soto@example.com', 'Avenida de los Reyes 5252', NULL),
(58, 'Eduardo', 'Francisco', 'Hernandez', 'Lopez', '1122334455', 'eduardo.hernandez@example.com', 'Camino del Bosque 5353', NULL),
(59, 'Francisco', 'Javier', 'Garcia', 'Martinez', '2233445566', 'francisco.garcia@example.com', 'Plaza de la Luna 5454', NULL),
(60, 'Gabriela', 'Alejandra', 'Lopez', 'Garcia', '3344556677', 'gabriela.lopez@example.com', 'Calle de los Pinos 5555', NULL),
(61, 'Hector', 'Antonio', 'Sanchez', 'Fernandez', '4455667788', 'hector.sanchez@example.com', 'Avenida de la Paz 5656', NULL),
(62, 'Isabel', 'Lucia', 'Diaz', 'Ramirez', '5566778899', 'isabel.diaz@example.com', 'Calle de las Flores 5757', NULL),
(63, 'Jorge', 'Manuel', 'Ramirez', 'Hernandez', '6677889900', 'jorge.ramirez@example.com', 'Camino Real 5858', NULL),
(64, 'Karla', 'Beatriz', 'Hernandez', 'Lopez', '7788990011', 'karla.hernandez@example.com', 'Plaza Mayor 5959', NULL),
(65, 'Luis', 'Alberto', 'Martinez', 'Garcia', '8899001122', 'luis.martinez@example.com', 'Avenida de los Poetas 6060', NULL),
(66, 'Maria', 'Isabel', 'Garcia', 'Sanchez', '9900112233', 'maria.garcia@example.com', 'Calle del Sol 6161', NULL),
(67, 'Nicolas', 'Ricardo', 'Fernandez', 'Diaz', '0011223344', 'nicolas.fernandez@example.com', 'Camino de los Cipreses 6262', NULL),
(68, 'Olga', 'Lorena', 'Lopez', 'Ramirez', '1122334455', 'olga.lopez@example.com', 'Calle de la Luz 6363', NULL),
(69, 'Pedro', 'Emilio', 'Martinez', 'Vazquez', '2233445566', 'pedro.martinez@example.com', 'Plaza de la Libertad 6464', NULL),
(70, 'Quirino', 'Javier', 'Ramirez', 'Lopez', '3344556677', 'quirino.ramirez@example.com', 'Avenida del Sol 6565', NULL),
(71, 'Rosa', 'Elena', 'Sanchez', 'Garcia', '4455667788', 'rosa.sanchez@example.com', 'Calle de los Olivos 6666', NULL),
(72, 'Sofia', 'Valentina', 'Lopez', 'Hernandez', '5566778899', 'sofia.lopez@example.com', 'Plaza del Sol 6767', NULL),
(73, 'Tomas', 'Fernando', 'Diaz', 'Ramirez', '6677889900', 'tomas.diaz@example.com', 'Camino de los Reyes 6868', NULL),
(74, 'Ursula', 'Beatriz', 'Gomez', 'Martinez', '7788990011', 'ursula.gomez@example.com', 'Avenida de la Libertad 6969', NULL),
(75, 'Victor', 'Manuel', 'Hernandez', 'Lopez', '8899001122', 'victor.hernandez@example.com', 'Plaza de la Amistad 7070', NULL),
(76, 'Wendy', 'Patricia', 'Garcia', 'Sanchez', '9900112233', 'wendy.garcia@example.com', 'Calle del Bosque 7171', NULL),
(77, 'Ximena', 'Lucia', 'Ramirez', 'Diaz', '0011223344', 'ximena.ramirez@example.com', 'Plaza del Carmen 7272', NULL),
(78, 'Yolanda', 'Paola', 'Lopez', 'Ramirez', '1122334455', 'yolanda.lopez@example.com', 'Avenida de las Flores 7373', NULL),
(79, 'Zoe', 'Patricia', 'Martinez', 'Vazquez', '2233445566', 'zoe.martinez@example.com', 'Calle de la Esperanza 7474', NULL),
(80, 'Angel', 'Gabriel', 'Hernandez', 'Garcia', '3344556677', 'angel.hernandez@example.com', 'Plaza de la Libertad 7575', NULL),
(81, 'Brenda', 'Maria', 'Ramirez', 'Lopez', '4455667788', 'brenda.ramirez@example.com', 'Avenida del Bosque 7676', NULL),
(82, 'Carlos', 'Andres', 'Sanchez', 'Fernandez', '5566778899', 'carlos.sanchez@example.com', 'Calle del Sol 7777', NULL),
(83, 'Diana', 'Alejandra', 'Diaz', 'Hernandez', '6677889900', 'diana.diaz@example.com', 'Plaza del Carmen 7878', NULL),
(84, 'Eduardo', 'Manuel', 'Lopez', 'Ramirez', '7788990011', 'eduardo.lopez@example.com', 'Avenida de la Paz 7979', NULL),
(85, 'Francisco', 'Javier', 'Ramirez', 'Hernandez', '8899001122', 'francisco.ramirez@example.com', 'Calle de la Esperanza 8080', NULL),
(86, 'Gabriela', 'Maria', 'Hernandez', 'Garcia', '9900112233', 'gabriela.hernandez@example.com', 'Plaza del Sol 8181', NULL),
(87, 'Hector', 'Alejandro', 'Garcia', 'Lopez', '0011223344', 'hector.garcia@example.com', 'Avenida de los Reyes 8282', NULL),
(88, 'Isabel', 'Lucia', 'Lopez', 'Ramirez', '1122334455', 'isabel.lopez@example.com', 'Camino de las Flores 8383', NULL),
(89, 'Jorge', 'Manuel', 'Martinez', 'Sanchez', '2233445566', 'jorge.martinez@example.com', 'Calle del Sol 8484', NULL),
(90, 'Karla', 'Patricia', 'Ramirez', 'Diaz', '3344556677', 'karla.ramirez@example.com', 'Plaza de la Libertad 8585', NULL),
(91, 'Luis', 'Gabriel', 'Hernandez', 'Garcia', '4455667788', 'luis.hernandez@example.com', 'Avenida del Bosque 8686', NULL),
(92, 'Maria', 'Valentina', 'Lopez', 'Ramirez', '5566778899', 'maria.lopez@example.com', 'Calle del Bosque 8787', NULL),
(93, 'Nicolas', 'Antonio', 'Sanchez', 'Fernandez', '6677889900', 'nicolas.sanchez@example.com', 'Camino del Bosque 8888', NULL),
(94, 'Olga', 'Lucia', 'Diaz', 'Hernandez', '7788990011', 'olga.diaz@example.com', 'Plaza del Carmen 8989', NULL),
(95, 'Pedro', 'Emilio', 'Garcia', 'Lopez', '8899001122', 'pedro.garcia@example.com', 'Avenida de la Amistad 9090', NULL),
(96, 'Quirino', 'Javier', 'Ramirez', 'Sanchez', '9900112233', 'quirino.ramirez@example.com', 'Plaza Mayor 9191', NULL),
(97, 'Rosa', 'Elena', 'Lopez', 'Garcia', '0011223344', 'rosa.lopez@example.com', 'Calle de los Pinos 9292', NULL),
(98, 'Sofia', 'Valentina', 'Ramirez', 'Diaz', '1122334455', 'sofia.ramirez@example.com', 'Plaza de la Libertad 9393', NULL),
(99, 'Tomas', 'Fernando', 'Hernandez', 'Lopez', '2233445566', 'tomas.hernandez@example.com', 'Avenida del Sol 9494', NULL),
(100, 'Ursula', 'Beatriz', 'Garcia', 'Ramirez', '3344556677', 'ursula.garcia@example.com', 'Callejón del Silencio 9595', NULL),
(101, 'Victor', 'Manuel', 'Lopez', 'Ramirez', '4455667788', 'victor.lopez@example.com', 'Plaza de la Libertad 9696', NULL),
(102, 'Wendy', 'Patricia', 'Ramirez', 'Hernandez', '5566778899', 'wendy.ramirez@example.com', 'Avenida del Bosque 9797', NULL),
(103, 'Ximena', 'Lucia', 'Hernandez', 'Lopez', '6677889900', 'ximena.hernandez@example.com', 'Callejón de los Sueños 9898', NULL),
(104, 'Yolanda', 'Paola', 'Lopez', 'Sanchez', '7788990011', 'yolanda.lopez@example.com', 'Plaza de la Amistad 9999', NULL),
(105, 'Zoe', 'Patricia', 'Ramirez', 'Hernandez', '8899001122', 'zoe.ramirez@example.com', 'Avenida de los Reyes 10000', NULL),
(106, 'Angel', 'Gabriel', 'Garcia', 'Lopez', '9900112233', 'angel.garcia@example.com', 'Camino de los Cipreses 10001', NULL),
(107, 'Brenda', 'Maria', 'Lopez', 'Ramirez', '0011223344', 'brenda.lopez@example.com', 'Plaza de la Libertad 10002', NULL),
(108, 'Carlos', 'Andres', 'Ramirez', 'Sanchez', '1122334455', 'carlos.ramirez@example.com', 'Calle del Sol 10003', NULL),
(109, 'Diana', 'Alejandra', 'Hernandez', 'Garcia', '2233445566', 'diana.hernandez@example.com', 'Plaza del Carmen 10004', NULL),
(110, 'Eduardo', 'Manuel', 'Lopez', 'Ramirez', '3344556677', 'eduardo.lopez@example.com', 'Avenida del Bosque 10005', NULL),
(111, 'Francisco', 'Javier', 'Garcia', 'Sanchez', '4455667788', 'francisco.garcia@example.com', 'Callejón del Silencio 10006', NULL),
(112, 'Gabriela', 'Maria', 'Ramirez', 'Hernandez', '5566778899', 'gabriela.ramirez@example.com', 'Calle de los Pinos 10007', NULL),
(113, 'Hector', 'Alejandro', 'Lopez', 'Ramirez', '6677889900', 'hector.lopez@example.com', 'Plaza de la Libertad 10008', NULL),
(114, 'Isabel', 'Lucia', 'Hernandez', 'Garcia', '7788990011', 'isabel.hernandez@example.com', 'Calle de la Esperanza 10009', NULL),
(115, 'Jorge', 'Manuel', 'Ramirez', 'Sanchez', '8899001122', 'jorge.ramirez@example.com', 'Avenida de la Amistad 10010', NULL),
(116, 'Karla', 'Patricia', 'Lopez', 'Ramirez', '9900112233', 'karla.lopez@example.com', 'Plaza Mayor 10011', NULL),
(117, 'Luis', 'Gabriel', 'Garcia', 'Hernandez', '0011223344', 'luis.garcia@example.com', 'Plaza del Sol 10012', NULL),
(118, 'Maria', 'Valentina', 'Ramirez', 'Diaz', '1122334455', 'maria.ramirez@example.com', 'Avenida de los Reyes 10013', NULL),
(119, 'Nicolas', 'Antonio', 'Lopez', 'Garcia', '2233445566', 'nicolas.lopez@example.com', 'Calle de los Olivos 10014', NULL),
(120, 'Olga', 'Lucia', 'Ramirez', 'Sanchez', '3344556677', 'olga.ramirez@example.com', 'Plaza del Carmen 10015', NULL),
(121, 'Pedro', 'Emilio', 'Hernandez', 'Lopez', '4455667788', 'pedro.hernandez@example.com', 'Calle del Sol 10016', NULL),
(122, 'Quirino', 'Javier', 'Lopez', 'Ramirez', '5566778899', 'quirino.lopez@example.com', 'Avenida del Sol 10017', NULL),
(123, 'Rosa', 'Elena', 'Garcia', 'Sanchez', '6677889900', 'rosa.garcia@example.com', 'Calle de los Olivos 10018', NULL),
(124, 'Sofia', 'Valentina', 'Ramirez', 'Diaz', '7788990011', 'sofia.ramirez@example.com', 'Camino Real 10019', NULL),
(125, 'Tomas', 'Fernando', 'Lopez', 'Garcia', '8899001122', 'tomas.lopez@example.com', 'Plaza del Carmen 10020', NULL),
(126, 'Ursula', 'Beatriz', 'Hernandez', 'Ramirez', '9900112233', 'ursula.hernandez@example.com', 'Callejón del Silencio 10021', NULL),
(127, 'Victor', 'Manuel', 'Garcia', 'Lopez', '0011223344', 'victor.garcia@example.com', 'Avenida de los Reyes 10022', NULL),
(128, 'Wendy', 'Patricia', 'Ramirez', 'Sanchez', '1122334455', 'wendy.ramirez@example.com', 'Calle del Sol 10023', NULL),
(129, 'Ximena', 'Lucia', 'Hernandez', 'Lopez', '2233445566', 'ximena.hernandez@example.com', 'Callejón del Silencio 10024', NULL),
(130, 'Yolanda', 'Paola', 'Lopez', 'Ramirez', '3344556677', 'yolanda.lopez@example.com', 'Plaza de la Libertad 10025', NULL),
(131, 'Zoe', 'Patricia', 'Garcia', 'Hernandez', '4455667788', 'zoe.garcia@example.com', 'Avenida del Sol 10026', NULL),
(132, 'Angel', 'Gabriel', 'Ramirez', 'Sanchez', '5566778899', 'angel.ramirez@example.com', 'Calle del Bosque 10027', NULL),
(133, 'Brenda', 'Maria', 'Lopez', 'Hernandez', '6677889900', 'brenda.lopez@example.com', 'Plaza de la Amistad 10028', NULL),
(134, 'Carlos', 'Andres', 'Ramirez', 'Garcia', '7788990011', 'carlos.ramirez@example.com', 'Avenida de la Amistad 10029', NULL),
(135, 'Diana', 'Alejandra', 'Hernandez', 'Lopez', '8899001122', 'diana.hernandez@example.com', 'Plaza Mayor 10030', NULL),
(136, 'Eduardo', 'Manuel', 'Lopez', 'Garcia', '9900112233', 'eduardo.lopez@example.com', 'Calle del Bosque 10031', NULL),
(137, 'Francisco', 'Javier', 'Ramirez', 'Hernandez', '0011223344', 'francisco.ramirez@example.com', 'Plaza del Sol 10032', NULL),
(138, 'Gabriela', 'Maria', 'Hernandez', 'Lopez', '1122334455', 'gabriela.hernandez@example.com', 'Avenida de los Reyes 10033', NULL),
(139, 'Hector', 'Alejandro', 'Lopez', 'Ramirez', '2233445566', 'hector.lopez@example.com', 'Calle de la Esperanza 10034', NULL),
(140, 'Isabel', 'Lucia', 'Ramirez', 'Hernandez', '3344556677', 'isabel.ramirez@example.com', 'Camino de los Cipreses 10035', NULL),
(141, 'Jorge', 'Manuel', 'Garcia', 'Lopez', '4455667788', 'jorge.garcia@example.com', 'Callejón de los Sueños 10036', NULL),
(142, 'Karla', 'Patricia', 'Ramirez', 'Sanchez', '5566778899', 'karla.ramirez@example.com', 'Plaza de la Libertad 10037', NULL),
(143, 'Luis', 'Gabriel', 'Lopez', 'Hernandez', '6677889900', 'luis.lopez@example.com', 'Calle del Sol 10038', NULL),
(144, 'Maria', 'Valentina', 'Hernandez', 'Ramirez', '7788990011', 'maria.hernandez@example.com', 'Avenida de los Poetas 10039', NULL),
(145, 'Nicolas', 'Antonio', 'Ramirez', 'Lopez', '8899001122', 'nicolas.ramirez@example.com', 'Calle del Bosque 10040', NULL),
(146, 'Olga', 'Lucia', 'Garcia', 'Lopez', '9900112233', 'olga.garcia@example.com', 'Plaza del Sol 10041', NULL),
(147, 'Pedro', 'Emilio', 'Lopez', 'Hernandez', '0011223344', 'pedro.lopez@example.com', 'Plaza Mayor 10042', NULL),
(148, 'Quirino', 'Javier', 'Hernandez', 'Ramirez', '1122334455', 'quirino.hernandez@example.com', 'Avenida del Bosque 10043', NULL),
(149, 'Rosa', 'Elena', 'Garcia', 'Ramirez', '2233445566', 'rosa.garcia@example.com', 'Callejón de los Sueños 10044', NULL),
(150, 'Sofia', 'Valentina', 'Ramirez', 'Lopez', '3344556677', 'sofia.ramirez@example.com', 'Plaza de la Libertad 10045', NULL),
(151, 'Tomas', 'Fernando', 'Hernandez', 'Garcia', '4455667788', 'tomas.hernandez@example.com', 'Camino de las Flores 10046', NULL),
(152, 'Ursula', 'Beatriz', 'Lopez', 'Ramirez', '5566778899', 'ursula.lopez@example.com', 'Avenida de los Reyes 10047', NULL),
(153, 'Victor', 'Manuel', 'Garcia', 'Hernandez', '6677889900', 'victor.garcia@example.com', 'Plaza del Carmen 10048', NULL),
(154, 'Wendy', 'Patricia', 'Ramirez', 'Lopez', '7788990011', 'wendy.ramirez@example.com', 'Calle del Bosque 10049', NULL),
(155, 'Ximena', 'Lucia', 'Hernandez', 'Garcia', '8899001122', 'ximena.hernandez@example.com', 'Callejón del Silencio 10050', NULL),
(156, 'Yolanda', 'Paola', 'Lopez', 'Ramirez', '9900112233', 'yolanda.lopez@example.com', 'Callejón de los Pinos 10051', NULL),
(157, 'Zoe', 'Patricia', 'Garcia', 'Lopez', '0011223344', 'zoe.garcia@example.com', 'Callejón del Silencio 10052', NULL),
(158, 'Angel', 'Gabriel', 'Lopez', 'Ramirez', '1122334455', 'angel.lopez@example.com', 'Plaza del Sol 10053', NULL),
(159, 'Brenda', 'Maria', 'Ramirez', 'Garcia', '2233445566', 'brenda.ramirez@example.com', 'Camino de los Cipreses 10054', NULL),
(160, 'Carlos', 'Andres', 'Hernandez', 'Lopez', '3344556677', 'carlos.hernandez@example.com', 'Calle de los Pinos 10055', NULL),
(161, 'Diana', 'Alejandra', 'Garcia', 'Sanchez', '4455667788', 'diana.garcia@example.com', 'Plaza Mayor 10056', NULL),
(162, 'Eduardo', 'Manuel', 'Ramirez', 'Diaz', '5566778899', 'eduardo.ramirez@example.com', 'Callejón del Silencio 10057', NULL),
(163, 'Francisco', 'Javier', 'Lopez', 'Hernandez', '6677889900', 'francisco.lopez@example.com', 'Plaza de la Libertad 10058', NULL),
(164, 'Gabriela', 'Maria', 'Garcia', 'Ramirez', '7788990011', 'gabriela.garcia@example.com', 'Callejón del Silencio 10059', NULL),
(165, 'Hector', 'Alejandro', 'Ramirez', 'Lopez', '8899001122', 'hector.ramirez@example.com', 'Plaza de la Libertad 10060', NULL),
(166, 'Isabel', 'Lucia', 'Hernandez', 'Garcia', '9900112233', 'isabel.hernandez@example.com', 'Camino de las Flores 10061', NULL),
(167, 'Jorge', 'Manuel', 'Garcia', 'Ramirez', '0011223344', 'jorge.garcia@example.com', 'Callejón de los Sueños 10062', NULL),
(168, 'Karla', 'Patricia', 'Ramirez', 'Lopez', '1122334455', 'karla.ramirez@example.com', 'Plaza del Sol 10063', NULL),
(169, 'Luis', 'Gabriel', 'Hernandez', 'Ramirez', '2233445566', 'luis.hernandez@example.com', 'Camino de los Cipreses 10064', NULL),
(170, 'Maria', 'Valentina', 'Lopez', 'Hernandez', '3344556677', 'maria.lopez@example.com', 'Plaza de la Amistad 10065', NULL),
(171, 'Nicolas', 'Antonio', 'Garcia', 'Ramirez', '4455667788', 'nicolas.garcia@example.com', 'Callejón del Silencio 10066', NULL),
(172, 'Olga', 'Lucia', 'Hernandez', 'Garcia', '5566778899', 'olga.hernandez@example.com', 'Calle del Bosque 10067', NULL),
(173, 'Pedro', 'Emilio', 'Lopez', 'Ramirez', '6677889900', 'pedro.lopez@example.com', 'Avenida de los Reyes 10068', NULL),
(174, 'Quirino', 'Javier', 'Garcia', 'Lopez', '7788990011', 'quirino.garcia@example.com', 'Plaza del Sol 10069', NULL),
(175, 'Rosa', 'Elena', 'Ramirez', 'Garcia', '8899001122', 'rosa.ramirez@example.com', 'Camino Real 10070', NULL),
(176, 'Jenifer', 'Alejandra', 'Melghem', 'Argueta', '93302696', 'jennyfermelghem@gmail.com', 'Comayagua', 2),
(177, 'Jorge', 'Alberto', 'Maldonado', 'Castillo', '98311931', 'Maldonado', 'Comayagua', 3);

--
-- Disparadores `persona`
--
DROP TRIGGER IF EXISTS `after_persona_insert`;
DELIMITER $$
CREATE TRIGGER `after_persona_insert` AFTER INSERT ON `persona` FOR EACH ROW BEGIN
    -- Insertar en la tabla `cliente` si `personat_idpersonat` es 2
    IF NEW.personat_idpersonat = 2 THEN
        INSERT INTO cliente (Persona_idPersona)
        VALUES (NEW.idPersona);

    -- Insertar en la tabla `empleado` si `personat_idpersonat` es 1
    ELSEIF NEW.personat_idpersonat = 1 THEN
        -- Nota: Debes proporcionar valores para `rol_idrol` y `sucursal_idsucursal`
        -- Por ahora, estos valores están establecidos en NULL o valores predeterminados
        INSERT INTO empleado (Persona_idPersona, rol_idrol, sucursal_idsucursal)
        VALUES (NEW.idPersona, NULL, NULL);

    -- Insertar en la tabla `aval` si `personat_idpersonat` es 3
    ELSEIF NEW.personat_idpersonat = 3 THEN
        INSERT INTO aval (Persona_idPersona)
        VALUES (NEW.idPersona);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personat`
--

DROP TABLE IF EXISTS `personat`;
CREATE TABLE IF NOT EXISTS `personat` (
  `idtp` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`idtp`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `personat`
--

INSERT INTO `personat` (`idtp`, `tipo`) VALUES
(1, 'Empleado'),
(2, 'Cliente'),
(3, 'Aval');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `idProveedor` int NOT NULL COMMENT 'Identificador único del proveedor',
  `Nombre` varchar(45) NOT NULL COMMENT 'Nombre del proveedor',
  `Descripcion` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Descripción del proveedor',
  `Telefono` varchar(45) NOT NULL COMMENT 'Teléfono de contacto del proveedor',
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `Nombre`, `Descripcion`, `Telefono`) VALUES
(1, 'Toyota', 'Provee autos económicos', '123456789'),
(2, 'Honda', 'Provee autos de lujo', '987654321'),
(3, 'Ford', 'Provee autos familiares', '234567890'),
(4, 'Chevrolet', 'Provee autos deportivos', '345678901'),
(5, 'Nissan', 'Provee autos eléctricos', '456789012'),
(6, 'BMW', 'Provee autos híbridos', '567890123'),
(7, 'Audi', 'Provee camionetas', '678901234'),
(8, 'Mercedes-Benz', 'Provee SUV', '789012345'),
(9, 'Hyundai', 'Provee autos compactos', '890123456'),
(10, 'Kia', 'Provee autos de lujo', '901234567'),
(11, 'Mazda', 'Provee autos antiguos', '112345678'),
(12, 'Subaru', 'Provee autos comerciales', '223456789'),
(13, 'Volkswagen', 'Provee autos blindados', '334567890'),
(14, 'Volvo', 'Provee autos usados', '445678901'),
(15, 'Tesla', 'Provee autos de segunda', '556789012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idRol` int NOT NULL COMMENT 'Identificador único del rol',
  `Nombre` varchar(45) DEFAULT NULL COMMENT 'Nombre del rol',
  `Descripción` varchar(455) DEFAULT NULL COMMENT 'Descripción del rol',
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `Nombre`, `Descripción`) VALUES
(1, 'Administrativo', 'Responsable de las tareas administrativas y la gestión de la oficina.'),
(2, 'Servicio al Cliente', 'Encargado de atender y resolver las consultas y problemas de los clientes.'),
(3, 'Mecánico', 'Realiza mantenimiento y reparaciones a los vehículos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

DROP TABLE IF EXISTS `salida`;
CREATE TABLE IF NOT EXISTS `salida` (
  `idSalida` int NOT NULL COMMENT 'Identificador único de la salida',
  `Fecha_Hora` datetime DEFAULT NULL COMMENT 'Fecha y hora de la salida',
  `Vehiculo_idVehiculo` int NOT NULL COMMENT 'Identificador del vehículo asociado a la salida',
  `Descripción` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Descripción de por que hubo una salida',
  PRIMARY KEY (`idSalida`),
  KEY `fk_Salida_Vehiculo1_idx` (`Vehiculo_idVehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sancion`
--

DROP TABLE IF EXISTS `sancion`;
CREATE TABLE IF NOT EXISTS `sancion` (
  `idSancion` int NOT NULL AUTO_INCREMENT,
  `renta_idRenta` int DEFAULT NULL,
  `cliente_idCliente` int DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `descripcion` text,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idSancion`),
  KEY `fk_idcliente6` (`cliente_idCliente`),
  KEY `fk_idfacturarenta_s` (`renta_idRenta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguro`
--

DROP TABLE IF EXISTS `seguro`;
CREATE TABLE IF NOT EXISTS `seguro` (
  `idSeguro` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del seguro',
  `tipo` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Tipo de seguro',
  `descripcion` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Descripción detallada del seguro ',
  `fecha_fin` date DEFAULT NULL COMMENT 'Fecha fin de la cobertura del seguro',
  `cobertura` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Cobertura del seguro (Ej: Accidentes, Robo, etc.)',
  `total` double NOT NULL COMMENT 'Costo total del seguro',
  `fecha_inicio` date DEFAULT NULL COMMENT '	Fecha de inicio de la cobertura del seguro',
  PRIMARY KEY (`idSeguro`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `seguro`
--

INSERT INTO `seguro` (`idSeguro`, `tipo`, `descripcion`, `fecha_fin`, `cobertura`, `total`, `fecha_inicio`) VALUES
(1, 'Ninguno', '', NULL, '', 0, NULL),
(2, 'Seguro Básico', 'Cobertura básica contra daños menores.', '2025-08-08', 'Daños Menores', 80, '2024-08-08'),
(3, 'Seguro Contra Robo', 'Cobertura únicamente contra robo del vehículo.', '2025-08-08', 'Robo', 100, '2024-08-08'),
(4, 'Seguro de Terceros', 'Cobertura para daños a terceros en accidentes.', '2025-08-08', 'Daños a Terceros', 120, '2024-08-08'),
(5, 'Seguro Completoo', 'Cobertura total contra daños, robo, y desastres naturales', '2025-01-01', 'Daños,Robo, Desastres Naturaless', 15, '2024-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
  `idsucursal` int NOT NULL COMMENT 'Identificador único de la sucursal',
  `nombre` varchar(45) NOT NULL COMMENT 'Nombre de la sucursal',
  `direccion` varchar(45) NOT NULL COMMENT 'Dirección de la sucursal',
  `telefono` varchar(45) NOT NULL COMMENT 'Teléfono de contacto de la sucursal',
  `pass` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'pass de la sucursal',
  PRIMARY KEY (`idsucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idsucursal`, `nombre`, `direccion`, `telefono`, `pass`) VALUES
(1, 'Sucursal Sur', 'Avenida Sur 789', '555-9101', '1111'),
(2, 'Sucursal Este', 'Calle Este 101', '555-1121', '2222'),
(3, 'Sucursal Oeste', 'Avenida Oeste 121', '555-3141', '3333'),
(4, 'Sucursal Noreste', 'Calle Noreste 141', '555-5161', '4444'),
(5, 'Sucursal Noroeste', 'Avenida Noroeste 161', '555-7181', '5555');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_has_bodega`
--

DROP TABLE IF EXISTS `sucursal_has_bodega`;
CREATE TABLE IF NOT EXISTS `sucursal_has_bodega` (
  `sucursal_has_bodega_id` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de s_h_b',
  `Sucursal_idSucursal` int NOT NULL COMMENT 'Identificador de la sucursal asociada',
  `Bodega_idBodega` int NOT NULL COMMENT 'Identificador de la bodega asociada a la sucursal',
  PRIMARY KEY (`sucursal_has_bodega_id`),
  KEY `fk_Sucursal_has_Bodega_Bodega1_idx` (`Bodega_idBodega`),
  KEY `fk_Sucursal_has_Bodega_Sucursal1_idx` (`Sucursal_idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `sucursal_has_bodega`
--

INSERT INTO `sucursal_has_bodega` (`sucursal_has_bodega_id`, `Sucursal_idSucursal`, `Bodega_idBodega`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE IF NOT EXISTS `vehiculo` (
  `idVehiculo` int NOT NULL COMMENT 'Identificador único del vehículo',
  `VIN` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Número de Identificación del Vehículo (VIN)',
  `marca` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Marca del vehículo',
  `modelo` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Modelo del vehículo',
  `color` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Color del vehículo',
  `año` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Año del vehículo',
  `tipo` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Tipo de vehículo',
  `costo_venta` double NOT NULL COMMENT 'Costo de compra del vehículo',
  `costo_renta` double NOT NULL COMMENT 'Costo de la renta de un vehículo por semana',
  `Bodega_idBodega` int NOT NULL COMMENT 'Identificador de la bodega asociada',
  `Proveedor_idProveedor` int NOT NULL COMMENT 'Identificador del proveedor asociado',
  `estado_idestado` int NOT NULL COMMENT 'Estado en el que se encuentre el vehículo (vendido, rentado, disponible)',
  PRIMARY KEY (`idVehiculo`),
  KEY `fk_Vehiculo_Bodega1_idx` (`Bodega_idBodega`),
  KEY `fk_Vehiculo_Proveedor1_idx` (`Proveedor_idProveedor`),
  KEY `fk_idestado` (`estado_idestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`idVehiculo`, `VIN`, `marca`, `modelo`, `color`, `año`, `tipo`, `costo_venta`, `costo_renta`, `Bodega_idBodega`, `Proveedor_idProveedor`, `estado_idestado`) VALUES
(1, '1HGBH41JXMN109186', 'Toyota', 'Corolla', 'Rojo', '2022', 'Sedán', 20000, 100, 1, 1, 1),
(2, '2FZHAZ74XCS655789', 'Honda', 'Civic', 'Negro', '2023', 'Sedán', 22000, 120, 1, 2, 1),
(3, '3D7HA18N39J744527', 'Ford', 'Escape', 'Azul', '2021', 'SUV', 25000, 140, 1, 3, 1),
(4, '4F2CU571X7KD98431', 'Chevrolet', 'Camaro', 'Amarillo', '2022', 'Deportivo', 35000, 200, 1, 4, 1),
(5, '5GZCZ63478S731894', 'Nissan', 'Leaf', 'Verde', '2024', 'Eléctrico', 30000, 160, 1, 5, 2),
(6, '6H3CU56781N400897', 'BMW', 'X5', 'Gris', '2023', 'SUV', 55000, 250, 1, 6, 2),
(7, '7J4HC28057F832765', 'Audi', 'Q7', 'Blanco', '2022', 'Camioneta', 60000, 270, 1, 7, 3),
(8, '8K1CX40356M921760', 'Mercedes-Benz', 'GLC', 'Negro', '2023', 'SUV', 65000, 280, 1, 8, 1),
(9, '9L5D3294K6R120876', 'Hyundai', 'Elantra', 'Plata', '2022', 'Compacto', 19000, 110, 1, 9, 1),
(10, '10M6D15473J614892', 'Kia', 'Stinger', 'Rojo', '2023', 'De lujo', 37000, 210, 1, 10, 1),
(11, '11N7B23481XH927431', 'Mazda', 'MX-5', 'Blanco', '2021', 'Deportivo', 28000, 150, 1, 11, 1),
(12, '12O8C94530YF843162', 'Subaru', 'Outback', 'Azul', '2022', 'Comercial', 32000, 170, 1, 12, 1),
(13, '13P9D87632WZ123456', 'Volkswagen', 'Touareg', 'Gris', '2023', 'SUV', 40000, 190, 1, 13, 1),
(14, '14Q1E76543AT234567', 'Volvo', 'S60', 'Negro', '2022', 'Sedán', 36000, 180, 1, 14, 3),
(15, '15R2F87654UB345678', 'Tesla', 'Model 3', 'Blanco', '2024', 'Eléctrico', 45000, 210, 1, 15, 3),
(16, '16A1B23456CD789012', 'Toyota', 'Camry', 'Gris', '2023', 'Sedán', 23000, 130, 2, 1, 1),
(17, '17B2C34567DE890123', 'Honda', 'Accord', 'Blanco', '2022', 'Sedán', 24000, 140, 2, 2, 1),
(18, '18C3D45678EF901234', 'Ford', 'Explorer', 'Negro', '2021', 'SUV', 27000, 150, 2, 3, 1),
(19, '19D4E56789FG012345', 'Chevrolet', 'Corvette', 'Azul', '2023', 'Deportivo', 45000, 220, 2, 4, 1),
(20, '20E5F67890GH123456', 'Nissan', 'Rogue', 'Rojo', '2022', 'SUV', 32000, 170, 2, 5, 1),
(21, '21F6G78901HI234567', 'BMW', '330i', 'Plata', '2023', 'De lujo', 40000, 200, 2, 6, 3),
(22, '22G7H89012IJ345678', 'Audi', 'A6', 'Negro', '2022', 'Sedán', 55000, 240, 2, 7, 3),
(23, '23H8I90123JK456789', 'Mercedes-Benz', 'E-Class', 'Gris', '2023', 'Sedán', 60000, 260, 2, 8, 3),
(24, '24I9J01234KL567890', 'Hyundai', 'Kona', 'Verde', '2022', 'SUV', 20000, 130, 2, 9, 3),
(25, '25J0K12345LM678901', 'Kia', 'Soul', 'Amarillo', '2023', 'Compacto', 22000, 140, 2, 10, 3),
(26, '26K1L23456MN789012', 'Mazda', 'CX-5', 'Blanco', '2022', 'SUV', 28000, 160, 2, 11, 3),
(27, '27L2M34567NO890123', 'Subaru', 'Forester', 'Azul', '2023', 'SUV', 30000, 180, 2, 12, 3),
(28, '28M3N45678OP901234', 'Volkswagen', 'Atlas', 'Gris', '2022', 'SUV', 35000, 190, 2, 13, 3),
(29, '29N4O56789PQ012345', 'Volvo', 'XC90', 'Negro', '2023', 'SUV', 70000, 300, 2, 14, 3),
(30, '30O5P67890QR123456', 'Tesla', 'Model S', 'Rojo', '2024', 'Eléctrico', 80000, 350, 2, 15, 3),
(31, '31P6Q78901RS234567', 'Toyota', 'Highlander', 'Negro', '2023', 'SUV', 34000, 160, 3, 1, 3),
(32, '32Q7R89012ST345678', 'Honda', 'Pilot', 'Gris', '2022', 'SUV', 36000, 170, 3, 2, 3),
(33, '33R8S90123TU456789', 'Ford', 'F-150', 'Rojo', '2021', 'Camioneta', 35000, 180, 3, 3, 3),
(34, '34S9T01234UV567890', 'Chevrolet', 'Silverado', 'Blanco', '2022', 'Camioneta', 37000, 190, 3, 4, 3),
(35, '35T0U12345VW678901', 'Nissan', 'Titan', 'Azul', '2023', 'Camioneta', 40000, 200, 3, 5, 3),
(36, '36U1V23456WX789012', 'BMW', 'X3', 'Plata', '2023', 'SUV', 45000, 210, 3, 6, 3),
(37, '37V2W34567XY890123', 'Audi', 'Q5', 'Verde', '2022', 'SUV', 47000, 220, 3, 7, 1),
(38, '38W3X45678YZ901234', 'Mercedes-Benz', 'GLA', 'Negro', '2023', 'SUV', 50000, 230, 3, 8, 1),
(39, '39X4Y56789ZA012345', 'Hyundai', 'Santa Fe', 'Gris', '2022', 'SUV', 29000, 150, 3, 9, 1),
(40, '40Y5Z67890AB123456', 'Kia', 'Seltos', 'Rojo', '2023', 'SUV', 31000, 160, 3, 10, 1),
(41, '41Z6A78901BC234567', 'Mazda', '6', 'Blanco', '2022', 'Sedán', 26000, 140, 3, 11, 1),
(42, '42A7B89012CD345678', 'Subaru', 'Legacy', 'Azul', '2023', 'Sedán', 28000, 150, 3, 12, 3),
(43, '43B8C90123DE456789', 'Volkswagen', 'Passat', 'Gris', '2022', 'Sedán', 29000, 160, 3, 13, 3),
(44, '44C9D01234EF567890', 'Volvo', 'S90', 'Negro', '2023', 'Sedán', 55000, 250, 3, 14, 3),
(45, '45D0E12345FG678901', 'Tesla', 'Model X', 'Blanco', '2024', 'Eléctrico', 90000, 400, 3, 15, 3),
(46, '46E1F23456GH789012', 'Toyota', 'Tacoma', 'Blanco', '2023', 'Camioneta', 33000, 150, 4, 1, 3),
(47, '47F2G34567HI890123', 'Honda', 'Ridgeline', 'Rojo', '2022', 'Camioneta', 34000, 160, 4, 2, 3),
(48, '48G3H45678IJ901234', 'Ford', 'Ranger', 'Gris', '2021', 'Camioneta', 35000, 170, 4, 3, 3),
(49, '49H4I56789JK012345', 'Chevrolet', 'Colorado', 'Azul', '2022', 'Camioneta', 36000, 180, 4, 4, 3),
(50, '50I5J67890KL123456', 'Nissan', 'Frontier', 'Negro', '2023', 'Camioneta', 38000, 190, 4, 5, 3),
(51, '51J6K78901LM234567', 'BMW', 'X4', 'Plata', '2023', 'SUV', 46000, 220, 4, 6, 3),
(52, '52K7L89012MN345678', 'Audi', 'Q3', 'Blanco', '2022', 'SUV', 49000, 230, 4, 7, 3),
(53, '53L8M90123NO456789', 'Mercedes-Benz', 'GLE', 'Negro', '2023', 'SUV', 55000, 250, 4, 8, 3),
(54, '54M9N01234OP567890', 'Hyundai', 'Palisade', 'Rojo', '2022', 'SUV', 30000, 170, 4, 9, 3),
(55, '55N0O12345PQ678901', 'Kia', 'Telluride', 'Gris', '2023', 'SUV', 32000, 180, 4, 10, 3),
(56, '56O1P23456QR789012', 'Mazda', 'CX-9', 'Azul', '2022', 'SUV', 29000, 160, 4, 11, 3),
(57, '57P2Q34567RS890123', 'Subaru', 'Ascent', 'Blanco', '2023', 'SUV', 31000, 170, 4, 12, 3),
(58, '58Q3R45678ST901234', 'Volkswagen', 'ID.4', 'Negro', '2022', 'Eléctrico', 34000, 180, 4, 13, 3),
(59, '59R4S56789TU012345', 'Volvo', 'XC60', 'Gris', '2023', 'SUV', 57000, 260, 4, 14, 3),
(60, '60S5T67890UV123456', 'Tesla', 'Model Y', 'Rojo', '2024', 'Eléctrico', 75000, 350, 4, 15, 3),
(61, '61T6U78901VW234567', 'Toyota', '4Runner', 'Negro', '2023', 'SUV', 35000, 170, 5, 1, 3),
(62, '62U7V89012WX345678', 'Honda', 'CR-V', 'Blanco', '2022', 'SUV', 34000, 160, 5, 2, 3),
(63, '63V8W90123XY456789', 'Ford', 'Bronco', 'Rojo', '2021', 'SUV', 37000, 180, 5, 3, 3),
(64, '64W9X01234YZ567890', 'Chevrolet', 'Equinox', 'Gris', '2022', 'SUV', 32000, 150, 5, 4, 3),
(65, '65X0Y12345ZA678901', 'Nissan', 'Murano', 'Azul', '2023', 'SUV', 33000, 160, 5, 5, 3),
(66, '66Y1Z23456AB789012', 'BMW', 'X7', 'Plata', '2023', 'SUV', 60000, 270, 5, 6, 3),
(67, '67Z2A34567BC890123', 'Audi', 'Q8', 'Negro', '2022', 'SUV', 65000, 290, 5, 7, 3),
(68, '68A3B45678CD901234', 'Mercedes-Benz', 'G-Class', 'Blanco', '2023', 'SUV', 70000, 320, 5, 8, 3),
(69, '69B4C56789DE012345', 'Hyundai', 'Kona Electric', 'Verde', '2022', 'Eléctrico', 35000, 180, 5, 9, 3),
(70, '70C5D67890EF123456', 'Kia', 'Niro EV', 'Rojo', '2023', 'Eléctrico', 36000, 190, 5, 10, 3),
(71, '71D6E78901FG234567', 'Mazda', 'MX-30', 'Gris', '2022', 'Eléctrico', 34000, 170, 5, 11, 3),
(72, '72E7F89012GH345678', 'Subaru', 'Solterra', 'Blanco', '2023', 'Eléctrico', 35000, 180, 5, 12, 3),
(73, '73F8G90123HI456789', 'Volkswagen', 'ID.3', 'Azul', '2022', 'Eléctrico', 33000, 160, 5, 13, 3),
(74, '74G9H01234IJ567890', 'Volvo', 'XC40 Recharge', 'Negro', '2023', 'Eléctrico', 37000, 190, 5, 14, 3),
(75, '75H0I12345JK678901', 'Tesla', 'Cybertruck', 'Gris', '2024', 'Eléctrico', 90000, 400, 5, 15, 3);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aval`
--
ALTER TABLE `aval`
  ADD CONSTRAINT `fk_persona1` FOREIGN KEY (`Persona_idPersona`) REFERENCES `persona` (`idPersona`),
  ADD CONSTRAINT `fk_persona2` FOREIGN KEY (`Persona_idPersona`) REFERENCES `persona` (`idPersona`),
  ADD CONSTRAINT `fk_persona3` FOREIGN KEY (`Persona_idPersona`) REFERENCES `persona` (`idPersona`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_idrol` FOREIGN KEY (`rol_idrol`) REFERENCES `rol` (`idRol`),
  ADD CONSTRAINT `fk_idsucursal` FOREIGN KEY (`sucursal_idsucursal`) REFERENCES `sucursal` (`idsucursal`);

--
-- Filtros para la tabla `factura_mantenimiento`
--
ALTER TABLE `factura_mantenimiento`
  ADD CONSTRAINT `fk_idcliente1` FOREIGN KEY (`Cliente_idcliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `fk_idempleado_fm` FOREIGN KEY (`Empleado_idEmpleado`) REFERENCES `empleado` (`idEmpleado`),
  ADD CONSTRAINT `fk_sucursalm` FOREIGN KEY (`sucursal_idsucursal`) REFERENCES `sucursal` (`idsucursal`),
  ADD CONSTRAINT `fk_vehiculom` FOREIGN KEY (`Vehiculo_idVehiculo`) REFERENCES `vehiculo` (`idVehiculo`);

--
-- Filtros para la tabla `factura_renta`
--
ALTER TABLE `factura_renta`
  ADD CONSTRAINT `fk_idaval` FOREIGN KEY (`aval_idaval`) REFERENCES `aval` (`idAval`),
  ADD CONSTRAINT `fk_idcliente2` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `fk_idempleado_fr` FOREIGN KEY (`empleado_idempleado`) REFERENCES `empleado` (`idEmpleado`),
  ADD CONSTRAINT `fk_idmpago1` FOREIGN KEY (`mpago_idmpago`) REFERENCES `mpago` (`idmPago`),
  ADD CONSTRAINT `fk_idseguro2` FOREIGN KEY (`seguro_idseguro`) REFERENCES `seguro` (`idSeguro`),
  ADD CONSTRAINT `fk_idsucursal1` FOREIGN KEY (`sucursal_idsucursal`) REFERENCES `sucursal` (`idsucursal`),
  ADD CONSTRAINT `fk_idvehiculo` FOREIGN KEY (`vehiculo_idvehiculo`) REFERENCES `vehiculo` (`idVehiculo`);

--
-- Filtros para la tabla `factura_venta`
--
ALTER TABLE `factura_venta`
  ADD CONSTRAINT `fk_cliente2` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `fk_idempleado_fv` FOREIGN KEY (`Empleado_idEmpleado`) REFERENCES `empleado` (`idEmpleado`),
  ADD CONSTRAINT `fk_idmpago` FOREIGN KEY (`mpago_idmpago`) REFERENCES `mpago` (`idmPago`),
  ADD CONSTRAINT `fk_idseguro` FOREIGN KEY (`seguro_idseguro`) REFERENCES `seguro` (`idSeguro`),
  ADD CONSTRAINT `fk_idsucursal2` FOREIGN KEY (`sucursal_idsucursal`) REFERENCES `sucursal` (`idsucursal`),
  ADD CONSTRAINT `fk_idvehiculoo` FOREIGN KEY (`Vehiculo_idVehiculo`) REFERENCES `vehiculo` (`idVehiculo`);

--
-- Filtros para la tabla `historialmantenimiento`
--
ALTER TABLE `historialmantenimiento`
  ADD CONSTRAINT `fk_idcliente3` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `fk_idempleado_hm` FOREIGN KEY (`empleado_idempleado`) REFERENCES `empleado` (`idEmpleado`),
  ADD CONSTRAINT `historialmantenimiento_ibfk_1` FOREIGN KEY (`sucursal_idsucursal`) REFERENCES `sucursal` (`idsucursal`),
  ADD CONSTRAINT `historialmantenimiento_ibfk_2` FOREIGN KEY (`idfactura_mantenimiento`) REFERENCES `factura_mantenimiento` (`idfactura_mantenimiento`),
  ADD CONSTRAINT `historialmantenimiento_ibfk_5` FOREIGN KEY (`vehiculo_idVehiculo`) REFERENCES `vehiculo` (`idVehiculo`);

--
-- Filtros para la tabla `historialrenta`
--
ALTER TABLE `historialrenta`
  ADD CONSTRAINT `fk_idaval1` FOREIGN KEY (`aval_idaval`) REFERENCES `aval` (`idAval`),
  ADD CONSTRAINT `fk_idcliente4` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `fk_idempleado_hr` FOREIGN KEY (`empleado_idempleado`) REFERENCES `empleado` (`idEmpleado`),
  ADD CONSTRAINT `fk_idfacturarenta_h` FOREIGN KEY (`idfactura_renta`) REFERENCES `factura_renta` (`idfactura_renta`),
  ADD CONSTRAINT `historialrenta_ibfk_1` FOREIGN KEY (`sucursal_idsucursal`) REFERENCES `sucursal` (`idsucursal`),
  ADD CONSTRAINT `historialrenta_ibfk_5` FOREIGN KEY (`vehiculo_idVehiculo`) REFERENCES `vehiculo` (`idVehiculo`),
  ADD CONSTRAINT `historialrenta_ibfk_7` FOREIGN KEY (`mpago_idmpago`) REFERENCES `mpago` (`idmPago`);

--
-- Filtros para la tabla `historialventa`
--
ALTER TABLE `historialventa`
  ADD CONSTRAINT `fk_idcliente5` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `fk_idempleado_hv` FOREIGN KEY (`empleado_idempleado`) REFERENCES `empleado` (`idEmpleado`),
  ADD CONSTRAINT `historialventa_ibfk_1` FOREIGN KEY (`sucursal_idsucursal`) REFERENCES `sucursal` (`idsucursal`),
  ADD CONSTRAINT `historialventa_ibfk_2` FOREIGN KEY (`idfactura_venta`) REFERENCES `factura_venta` (`idfactura_venta`),
  ADD CONSTRAINT `historialventa_ibfk_5` FOREIGN KEY (`vehiculo_idVehiculo`) REFERENCES `vehiculo` (`idVehiculo`),
  ADD CONSTRAINT `historialventa_ibfk_6` FOREIGN KEY (`mpago_idmpago`) REFERENCES `mpago` (`idmPago`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_personatip` FOREIGN KEY (`personat_idpersonat`) REFERENCES `personat` (`idtp`);

--
-- Filtros para la tabla `salida`
--
ALTER TABLE `salida`
  ADD CONSTRAINT `fk_Salida_Vehiculo1` FOREIGN KEY (`Vehiculo_idVehiculo`) REFERENCES `vehiculo` (`idVehiculo`);

--
-- Filtros para la tabla `sancion`
--
ALTER TABLE `sancion`
  ADD CONSTRAINT `fk_idcliente6` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `fk_idfacturarenta_s` FOREIGN KEY (`renta_idRenta`) REFERENCES `factura_renta` (`idfactura_renta`);

--
-- Filtros para la tabla `sucursal_has_bodega`
--
ALTER TABLE `sucursal_has_bodega`
  ADD CONSTRAINT `fk_Sucursal_has_Bodega_Bodega1` FOREIGN KEY (`Bodega_idBodega`) REFERENCES `bodega` (`idbodega`),
  ADD CONSTRAINT `fk_Sucursal_has_Bodega_Sucursal1` FOREIGN KEY (`Sucursal_idSucursal`) REFERENCES `sucursal` (`idsucursal`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_idestado` FOREIGN KEY (`estado_idestado`) REFERENCES `estado` (`idestado`),
  ADD CONSTRAINT `fk_Vehiculo_Bodega1` FOREIGN KEY (`Bodega_idBodega`) REFERENCES `bodega` (`idbodega`),
  ADD CONSTRAINT `fk_Vehiculo_Proveedor1` FOREIGN KEY (`Proveedor_idProveedor`) REFERENCES `proveedor` (`idProveedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
