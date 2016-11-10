-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-11-2016 a las 22:59:22
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sisinvent`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_cargos`
--

CREATE TABLE IF NOT EXISTS `sss_cargos` (
  `idsss_cargos` int(11) NOT NULL AUTO_INCREMENT,
  `sss_cargos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsss_cargos`),
  UNIQUE KEY `car_nombre_UNIQUE` (`sss_cargos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Almacena los cargos de los trabajadores' AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `sss_cargos`
--

INSERT INTO `sss_cargos` (`idsss_cargos`, `sss_cargos`) VALUES
(25, 'Asistente I'),
(26, 'Asistente II'),
(27, 'Asistente III'),
(6, 'Bachiller I'),
(7, 'Bachiller II'),
(8, 'Bachiller III'),
(5, 'Gerente de Administracion'),
(4, 'Gerente de RRHH'),
(3, 'Gerente de Ventas'),
(2, 'Gerente General'),
(18, 'Ingeniero I'),
(19, 'Ingeniero II'),
(20, 'Ingeniero III'),
(15, 'Licenciado I'),
(16, 'Licenciado II'),
(17, 'Licenciado III'),
(21, 'Obrero I'),
(22, 'Obrero II'),
(23, 'Obrero III'),
(1, 'Presidente'),
(0, 'Root'),
(12, 'Tecnico Medio I'),
(13, 'Tecnico Medio II'),
(14, 'Tecnico Medio III'),
(9, 'Tecnico Superior Universitario I'),
(10, 'Tecnico Superior Universitario II'),
(11, 'Tecnico Superior Universitario III'),
(24, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_clientes`
--

CREATE TABLE IF NOT EXISTS `sss_clientes` (
  `idsss_clientes` int(11) NOT NULL AUTO_INCREMENT,
  `cli_ci` varchar(9) DEFAULT NULL,
  `cli_nombres` varchar(45) DEFAULT NULL,
  `cli_apellidos` varchar(45) DEFAULT NULL,
  `cli_fecha_nac` date DEFAULT NULL,
  `cli_fecha` date DEFAULT NULL,
  `cli_direccion` text,
  `cli_telefono` varchar(12) DEFAULT NULL,
  `cli_email` varchar(45) DEFAULT NULL,
  `cli_estcivil` int(11) DEFAULT NULL,
  `cli_nacionalidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsss_clientes`),
  UNIQUE KEY `cli_ci_UNIQUE` (`cli_ci`),
  UNIQUE KEY `cli_email_UNIQUE` (`cli_email`),
  UNIQUE KEY `cli_telefono_UNIQUE` (`cli_telefono`),
  KEY `fk_sss_clinacionalidad` (`cli_nacionalidad`),
  KEY `fk_sss_cliestcivil` (`cli_estcivil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la informacion de los clientes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_empresa`
--

CREATE TABLE IF NOT EXISTS `sss_empresa` (
  `idsss_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `emp_razon` varchar(45) DEFAULT NULL,
  `emp_rif` varchar(12) DEFAULT NULL,
  `emp_direccion` text,
  `emp_telefono` varchar(12) DEFAULT NULL,
  `emp_fax` varchar(12) DEFAULT NULL,
  `emp_email` varchar(45) DEFAULT NULL,
  `emp_logo` varchar(45) DEFAULT NULL,
  `emp_representante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsss_empresa`),
  UNIQUE KEY `emp_razon_UNIQUE` (`emp_razon`),
  UNIQUE KEY `emp_rif_UNIQUE` (`emp_rif`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Almacena la Informacion de la empresa' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sss_empresa`
--

INSERT INTO `sss_empresa` (`idsss_empresa`, `emp_razon`, `emp_rif`, `emp_direccion`, `emp_telefono`, `emp_fax`, `emp_email`, `emp_logo`, `emp_representante`) VALUES
(1, 'aaaaa', 'aaaaa', 'aaaa', 'aaaa', 'aaaaa', 'aaaaa', 'aaaa', 'aaaaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_estatus`
--

CREATE TABLE IF NOT EXISTS `sss_estatus` (
  `idsss_estatus` int(11) NOT NULL AUTO_INCREMENT,
  `sss_estatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsss_estatus`),
  UNIQUE KEY `sss_estatus_UNIQUE` (`sss_estatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Almacena los diferentes estatus que existen en el sistema' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `sss_estatus`
--

INSERT INTO `sss_estatus` (`idsss_estatus`, `sss_estatus`) VALUES
(1, 'Activo'),
(3, 'Inactivo'),
(2, 'Suspendido'),
(4, 'Vacaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_estcivil`
--

CREATE TABLE IF NOT EXISTS `sss_estcivil` (
  `idsss_estcivil` int(11) NOT NULL AUTO_INCREMENT,
  `sss_estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsss_estcivil`),
  UNIQUE KEY `sic_estado_UNIQUE` (`sss_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Almacena la configuración del estado Civil' AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `sss_estcivil`
--

INSERT INTO `sss_estcivil` (`idsss_estcivil`, `sss_estado`) VALUES
(2, 'Casado (a)'),
(5, 'Concubino (a)'),
(3, 'Divorciado (a)'),
(1, 'Soltero (a)'),
(4, 'Viudo (a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_invertario`
--

CREATE TABLE IF NOT EXISTS `sss_invertario` (
  `idsss_invertario` int(11) NOT NULL AUTO_INCREMENT,
  `inv_codigo` varchar(45) DEFAULT NULL,
  `inv_nombre` varchar(45) DEFAULT NULL,
  `inv_valor` float DEFAULT NULL,
  `inv_existencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsss_invertario`),
  UNIQUE KEY `inv_codigo_UNIQUE` (`inv_codigo`),
  UNIQUE KEY `nombre_UNIQUE` (`inv_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la informacion de todos los articulos del inventari' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_movimiento`
--

CREATE TABLE IF NOT EXISTS `sss_movimiento` (
  `idsss_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `mov_fecha` date DEFAULT NULL,
  `mov_detalle` varchar(45) DEFAULT NULL,
  `mov_codigo_inv` varchar(45) DEFAULT NULL,
  `mov_cantidad` int(11) DEFAULT NULL,
  `mov_usuario` varchar(45) DEFAULT NULL,
  `mov_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsss_movimiento`),
  KEY `fk_sss_mov_codigo` (`mov_codigo_inv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena los movimientos del inventario' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_nacionalidad`
--

CREATE TABLE IF NOT EXISTS `sss_nacionalidad` (
  `idsss_nacionalidad` int(11) NOT NULL AUTO_INCREMENT,
  `sss_nacionalidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsss_nacionalidad`),
  UNIQUE KEY `nac_descripcion_UNIQUE` (`sss_nacionalidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Almacena la configuración de la nacionalidad para los dueños' AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `sss_nacionalidad`
--

INSERT INTO `sss_nacionalidad` (`idsss_nacionalidad`, `sss_nacionalidad`) VALUES
(2, 'Extranjero (a)'),
(3, 'Nacionalizado (a)'),
(1, 'Venezolano (a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_nivel`
--

CREATE TABLE IF NOT EXISTS `sss_nivel` (
  `idsss_nivel` int(11) NOT NULL AUTO_INCREMENT,
  `sss_nivel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsss_nivel`),
  UNIQUE KEY `sss_nivele_UNIQUE` (`sss_nivel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Almacena los diferentes niveles de usuario en el sistema' AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `sss_nivel`
--

INSERT INTO `sss_nivel` (`idsss_nivel`, `sss_nivel`) VALUES
(1, 'Administrador'),
(6, 'Otro'),
(0, 'Root'),
(2, 'Supervisor'),
(4, 'Usuario'),
(3, 'Usuario Avanzado'),
(5, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_proveedores`
--

CREATE TABLE IF NOT EXISTS `sss_proveedores` (
  `idsss_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `pro_ci` varchar(9) DEFAULT NULL,
  `pro_nacionalidad` int(11) DEFAULT NULL,
  `pro_rif` varchar(10) DEFAULT NULL,
  `pro_nombre` varchar(45) DEFAULT NULL,
  `pro_apellido` varchar(45) DEFAULT NULL,
  `pro_fech_nac` date DEFAULT NULL,
  `pro_fech` date DEFAULT NULL,
  `pro_telefono` varchar(12) DEFAULT NULL,
  `pro_email` varchar(45) DEFAULT NULL,
  `pro_direccion` text,
  `pro_nota` text,
  PRIMARY KEY (`idsss_proveedores`),
  UNIQUE KEY `pro_ci_UNIQUE` (`pro_ci`),
  UNIQUE KEY `pro_rif_UNIQUE` (`pro_rif`),
  KEY `fk_sss_pronacionalidad` (`pro_nacionalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la informacion de los proveedores' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_usuarios`
--

CREATE TABLE IF NOT EXISTS `sss_usuarios` (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nacionalidad` int(11) DEFAULT NULL,
  `usu_ci` varchar(11) DEFAULT NULL,
  `usu_nombres` varchar(45) DEFAULT NULL,
  `usu_apellidos` varchar(45) DEFAULT NULL,
  `usu_direccion` text,
  `usu_telefono` varchar(11) DEFAULT NULL,
  `usu_celular` varchar(11) DEFAULT NULL,
  `usu_email` varchar(75) DEFAULT NULL,
  `usu_fech_ingreso` date DEFAULT NULL,
  `usu_fech_nacimiento` date DEFAULT NULL,
  `usu_cargos` int(11) DEFAULT NULL,
  `usu_login` varchar(16) DEFAULT NULL,
  `usu_clave` varchar(16) DEFAULT NULL,
  `usu_estcivil` int(11) DEFAULT NULL,
  `usu_estatus` int(11) DEFAULT NULL,
  `usu_nivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`),
  UNIQUE KEY `usu_ci_UNIQUE` (`usu_ci`),
  UNIQUE KEY `usu_email_UNIQUE` (`usu_email`),
  UNIQUE KEY `usu_login_UNIQUE` (`usu_login`),
  KEY `fk_usu_nac_id` (`usu_nacionalidad`),
  KEY `fk_usu_est_id` (`usu_estatus`),
  KEY `fk_usu_eciv_id` (`usu_estcivil`),
  KEY `fk_usu_car_id` (`usu_cargos`),
  KEY `fk_usu_niv_id` (`usu_nivel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Almacena la ficha de los usuarios que tienen acceso al siste' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sss_usuarios`
--

INSERT INTO `sss_usuarios` (`id_usuarios`, `usu_nacionalidad`, `usu_ci`, `usu_nombres`, `usu_apellidos`, `usu_direccion`, `usu_telefono`, `usu_celular`, `usu_email`, `usu_fech_ingreso`, `usu_fech_nacimiento`, `usu_cargos`, `usu_login`, `usu_clave`, `usu_estcivil`, `usu_estatus`, `usu_nivel`) VALUES
(1, 1, '16103079', 'Daniel Humberto', 'Flores Medina', 'Calle Sucre N 32', '02684113578', '04262623504', 'flrsdaniel@gmail.com', '2012-07-25', '1981-07-23', 0, 'dflores', '123', 2, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sss_venta`
--

CREATE TABLE IF NOT EXISTS `sss_venta` (
  `idsss_venta` int(11) NOT NULL AUTO_INCREMENT,
  `ven_fecha` date DEFAULT NULL,
  `ven_id_cliente` int(11) DEFAULT NULL,
  `ven_id_detalle_ven` int(11) DEFAULT NULL,
  `ven_subtoal` float DEFAULT NULL,
  `ven_iva` float DEFAULT NULL,
  `ven_total` float DEFAULT NULL,
  `ven_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsss_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena las Ventas' AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sss_clientes`
--
ALTER TABLE `sss_clientes`
  ADD CONSTRAINT `fk_sss_cliestcivil` FOREIGN KEY (`cli_estcivil`) REFERENCES `sss_estcivil` (`idsss_estcivil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sss_clinacionalidad` FOREIGN KEY (`cli_nacionalidad`) REFERENCES `sss_nacionalidad` (`idsss_nacionalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sss_movimiento`
--
ALTER TABLE `sss_movimiento`
  ADD CONSTRAINT `fk_sss_mov_codigo` FOREIGN KEY (`mov_codigo_inv`) REFERENCES `sss_invertario` (`inv_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sss_proveedores`
--
ALTER TABLE `sss_proveedores`
  ADD CONSTRAINT `fk_sss_pronacionalidad` FOREIGN KEY (`pro_nacionalidad`) REFERENCES `sss_nacionalidad` (`idsss_nacionalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sss_usuarios`
--
ALTER TABLE `sss_usuarios`
  ADD CONSTRAINT `fk_usu_car_id` FOREIGN KEY (`usu_cargos`) REFERENCES `sss_cargos` (`idsss_cargos`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_usu_eciv_id` FOREIGN KEY (`usu_estcivil`) REFERENCES `sss_estcivil` (`idsss_estcivil`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_usu_est_id` FOREIGN KEY (`usu_estatus`) REFERENCES `sss_estatus` (`idsss_estatus`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_usu_nac_id` FOREIGN KEY (`usu_nacionalidad`) REFERENCES `sss_nacionalidad` (`idsss_nacionalidad`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_usu_niv_id` FOREIGN KEY (`usu_nivel`) REFERENCES `sss_nivel` (`idsss_nivel`) ON DELETE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
