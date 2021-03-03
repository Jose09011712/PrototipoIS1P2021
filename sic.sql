-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2021 a las 19:57:25
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `pk_id_aplicacion` int(10) NOT NULL,
  `fk_id_modulo` int(10) NOT NULL,
  `nombre_aplicacion` varchar(40) NOT NULL,
  `descripcion_aplicacion` varchar(45) NOT NULL,
  `estado_aplicacion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`pk_id_aplicacion`, `fk_id_modulo`, `nombre_aplicacion`, `descripcion_aplicacion`, `estado_aplicacion`) VALUES
(1, 1, 'Login', 'Ventana de Ingreso', 1),
(2, 1, 'Mantenimiento Usuario', 'Mantenimientos de usuario', 1),
(3, 1, 'Mantenimiento Aplicacion', 'ABC de las Aplicaciones', 1),
(4, 1, 'Mantenimiento Perfil', 'ABC de perfiles', 1),
(5, 1, 'Asignacion de Aplicaciones a Perfil', 'Asignacion Aplicacion y perfil', 1),
(6, 1, 'Asignacaion de Aplicaciones', 'Asignacion especificas a un usuario', 1),
(7, 1, 'Consulta Aplicacion', 'Mantenimiento de Aplicaciones', 1),
(8, 1, 'Agregar Modulo', 'Mantenimientos de Modulos', 1),
(9, 1, 'Consultar Perfil', 'Consultas de perfiles disponibles', 1),
(10, 1, 'Permisos', 'Asignar permisos a perfiles y aplicaciones', 1),
(11, 1, 'Bitacora', 'Guarda todos los movimientos', 1),
(12, 10, 'Gestión de Citas ', 'Gestionar Citas', 1),
(1302, 5, 'Tipo Caso', 'Tipo de casos', 1),
(1303, 5, 'Tipo Pasaporte', 'Tipo Pasaporte', 1),
(1304, 5, 'Tipo Tramite', 'Tipo Tramite', 1),
(1305, 5, 'Centro', 'Centro', 1),
(1306, 5, 'PROPIETARIO', 'PROPIETARIO', 1),
(1307, 5, 'TRANSACCIONES', 'TRANSACCIONES', 1),
(1308, 5, 'DISPONIBILIDAD DIARIA', 'REPORTE DE DISPONIBILIDAD DIARIA', 1),
(1309, 5, 'PETICION POLIZA', 'PETICION POLIZA', 1),
(1310, 5, 'CUENTAS CONTABLES', 'AGREGAR CUENTAS CONTABLES', 1),
(1311, 5, 'POLIZAS', 'POLIZAS', 1),
(1312, 5, 'LIBRO DIARIO', 'LIBRO DIARIO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion_perfil`
--

CREATE TABLE `aplicacion_perfil` (
  `pk_id_aplicacion_perfil` int(10) DEFAULT NULL,
  `fk_idaplicacion_aplicacion_perfil` int(10) DEFAULT NULL,
  `fk_idperfil_aplicacion_perfil` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacion_perfil` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aplicacion_perfil`
--

INSERT INTO `aplicacion_perfil` (`pk_id_aplicacion_perfil`, `fk_idaplicacion_aplicacion_perfil`, `fk_idperfil_aplicacion_perfil`, `fk_idpermiso_aplicacion_perfil`) VALUES
(1, 1, 1, 1),
(2, 4, 1, 2),
(3, 5, 1, 3),
(4, 2, 1, 4),
(5, 3, 1, 5),
(6, 6, 1, 6),
(7, 8, 1, 7),
(8, 2, 3, 8),
(9, 3, 3, 9),
(10, 4, 3, 11),
(11, 2, 4, 12),
(12, 8, 4, 13),
(13, 8, 5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion_usuario`
--

CREATE TABLE `aplicacion_usuario` (
  `pk_id_aplicacion_usuario` int(10) NOT NULL,
  `fk_idlogin_aplicacion_usuario` int(10) DEFAULT NULL,
  `fk_idaplicacion_aplicacion_usuario` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacion_usuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aplicacion_usuario`
--

INSERT INTO `aplicacion_usuario` (`pk_id_aplicacion_usuario`, `fk_idlogin_aplicacion_usuario`, `fk_idaplicacion_aplicacion_usuario`, `fk_idpermiso_aplicacion_usuario`) VALUES
(1, 1, 4, 1),
(2, 1, 5, 2),
(3, 1, 6, 3),
(4, 3, 8, 10),
(5, 4, 6, 14),
(6, 5, 5, 16),
(7, 5, 2, 17),
(8, 6, 2, 1),
(9, 6, 3, 1),
(10, 6, 4, 1),
(11, 6, 6, 1),
(12, 6, 8, 1),
(13, 6, 1302, 1),
(14, 6, 1303, 1),
(15, 6, 1304, 1),
(16, 6, 1305, 1),
(17, 6, 1306, 1),
(18, 6, 12, 1),
(19, 7, 12, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `pk_id_bitacora` int(10) NOT NULL,
  `fk_idusuario_bitacora` int(10) DEFAULT NULL,
  `fk_idaplicacion_bitacora` int(10) DEFAULT NULL,
  `fechahora_bitacora` varchar(50) DEFAULT NULL,
  `direccionhost_bitacora` varchar(20) DEFAULT NULL,
  `nombrehost_bitacora` varchar(20) DEFAULT NULL,
  `accion_bitacora` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`pk_id_bitacora`, `fk_idusuario_bitacora`, `fk_idaplicacion_bitacora`, `fechahora_bitacora`, `direccionhost_bitacora`, `nombrehost_bitacora`, `accion_bitacora`) VALUES
(1, 6, 1, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(2, 6, 1, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(3, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de linas'),
(4, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO lineas VALUES ( 1,  Nueva Linea,  1) '),
(5, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Cancelar'),
(6, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Salir de la aplicacion'),
(7, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de marcas'),
(8, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de linas'),
(9, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'UPDATE lineas SET   nombre_linea =  Cosmeticos\r\n,  estatus_linea =  1  WHERE codigo_linea = 1; '),
(10, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO lineas VALUES ( 2,  Comida,  1) '),
(11, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de linas'),
(12, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de marcas'),
(13, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de linas'),
(14, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO lineas VALUES ( 3,  Limpieza,  1) '),
(15, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO lineas VALUES ( 4,  aseo personal,  1) '),
(16, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de marcas'),
(17, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO marcas VALUES ( 1,  Nivea,  1) '),
(18, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO marcas VALUES ( 2,  Gillet,  1) '),
(19, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO marcas VALUES ( 3,  Colgate,  1) '),
(20, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de linas'),
(21, 6, 1302, '03/03/2021 11:10:19', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de marcas'),
(22, 6, 1, '03/03/2021 11:38:47', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(23, 6, 1, '03/03/2021 11:39:43', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(24, 6, 1302, '03/03/2021 11:39:43', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al PROCESO DE INVENTARIO'),
(25, 6, 1, '03/03/2021 11:40:49', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(26, 6, 1302, '03/03/2021 11:40:49', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al PROCESO DE INVENTARIO'),
(27, 6, 1, '03/03/2021 11:44:08', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(28, 6, 1302, '03/03/2021 11:44:08', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al PROCESO DE INVENTARIO'),
(29, 6, 1302, '03/03/2021 11:44:08', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO productos VALUES ( 1,  Crema,  1,  1,  100,  1) '),
(30, 6, 1302, '03/03/2021 11:44:08', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO productos VALUES ( 2,  Panes,  2,  1,  200,  1) '),
(31, 6, 1302, '03/03/2021 11:44:08', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Salir de la aplicacion'),
(32, 6, 1, '03/03/2021 11:48:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(33, 6, 1302, '03/03/2021 11:48:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al PROCESO DE INVENTARIO'),
(34, 6, 1, '03/03/2021 11:50:51', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(35, 6, 1302, '03/03/2021 11:50:51', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al PROCESO DE INVENTARIO'),
(36, 6, 1, '03/03/2021 11:51:42', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(37, 6, 1302, '03/03/2021 11:51:42', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al PROCESO DE INVENTARIO'),
(38, 6, 1302, '03/03/2021 11:51:42', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO productos VALUES ( 3,  Panqueques,  2,  1,  300,  1) '),
(39, 6, 1302, '03/03/2021 11:51:42', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Cancelar'),
(40, 6, 1, '03/03/2021 12:08:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(41, 6, 2, '03/03/2021 12:08:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(42, 6, 3, '03/03/2021 12:08:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de aplicaciones'),
(43, 6, 8, '03/03/2021 12:08:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso a la apliacion de Modulo'),
(44, 6, 1302, '03/03/2021 12:08:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de linas'),
(45, 6, 1302, '03/03/2021 12:08:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de marcas'),
(46, 6, 1302, '03/03/2021 12:08:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al PROCESO DE INVENTARIO'),
(47, 6, 1302, '03/03/2021 12:08:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Cancelar'),
(48, 6, 1, '03/03/2021 12:27:27', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(49, 6, 1302, '03/03/2021 12:27:27', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de linas'),
(50, 6, 1302, '03/03/2021 12:27:27', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de marcas'),
(51, 6, 1302, '03/03/2021 12:27:27', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al PROCESO DE INVENTARIO'),
(52, 6, 2, '03/03/2021 12:27:27', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(53, 6, 1, '03/03/2021 12:38:06', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(54, 6, 1302, '03/03/2021 12:38:06', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de linas'),
(55, 6, 1, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(56, 6, 1, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(57, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de linas'),
(58, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO lineas VALUES ( 1,  Cosmeticos,  1) '),
(59, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO lineas VALUES ( 2,  Comida,  1) '),
(60, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO lineas VALUES ( 3,  Limpieza,  1) '),
(61, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO lineas VALUES ( 4,  Aseo Personal,  1) '),
(62, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Salir de la aplicacion'),
(63, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de marcas'),
(64, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO marcas VALUES ( 1,  Nivea,  1) '),
(65, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO marcas VALUES ( 2,  Gillet,  1) '),
(66, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO marcas VALUES ( 3,  Colgate,  1) '),
(67, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al PROCESO DE INVENTARIO'),
(68, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO productos VALUES ( 1,  Crema para la cara,  1,  1,  100,  1) '),
(69, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO productos VALUES ( 2,  Panes,  2,  3,  500,  1) '),
(70, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO productos VALUES ( 3,  Rasuradoras,  4,  2,  100,  1) '),
(71, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'UPDATE productos SET   nombre_producto =  Rasuradoras,  codigo_linea =  4,  codigo_marca =  2,  existencia_producto =  50,  estatus_producto =  1  WHERE codigo_producto = 3; '),
(72, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO productos VALUES ( 4,  Crema para afeitar,  4,  2,  500,  1) '),
(73, 6, 1302, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO productos VALUES ( 5,  Pasta dental,  4,  3,  500,  1) '),
(74, 6, 2, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(75, 6, 8, '03/03/2021 12:40:45', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso a la apliacion de Modulo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas`
--

CREATE TABLE `bodegas` (
  `codigo_bodega` varchar(5) NOT NULL,
  `nombre_bodega` varchar(60) DEFAULT NULL,
  `estatus_bodega` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `codigo_cliente` varchar(5) NOT NULL,
  `nombre_cliente` varchar(60) DEFAULT NULL,
  `direccion_cliente` varchar(60) DEFAULT NULL,
  `nit_cliente` varchar(20) DEFAULT NULL,
  `telefono_cliente` varchar(50) DEFAULT NULL,
  `codigo_vendedor` varchar(5) DEFAULT NULL,
  `estatus_cliente` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_detalle`
--

CREATE TABLE `compras_detalle` (
  `documento_compraenca` varchar(10) NOT NULL,
  `codigo_producto` varchar(18) NOT NULL,
  `cantidad_compradet` float(10,2) DEFAULT NULL,
  `costo_compradet` float(10,2) DEFAULT NULL,
  `codigo_bodega` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_encabezado`
--

CREATE TABLE `compras_encabezado` (
  `documento_compraenca` varchar(10) NOT NULL,
  `codigo_proveedor` varchar(5) DEFAULT NULL,
  `fecha_compraenca` date DEFAULT NULL,
  `total_compraenca` float(10,2) DEFAULT NULL,
  `estatus_compraenca` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_bitacora`
--

CREATE TABLE `detalle_bitacora` (
  `pk_id_detalle_bitacora` int(10) NOT NULL,
  `fk_idbitacora_detalle_bitacora` int(10) DEFAULT NULL,
  `querryantigua_detalle_bitacora` varchar(50) DEFAULT NULL,
  `querrynueva_detalle_bitacora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existencias`
--

CREATE TABLE `existencias` (
  `codigo_bodega` varchar(5) NOT NULL,
  `codigo_producto` varchar(18) NOT NULL,
  `saldo_existencia` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

CREATE TABLE `lineas` (
  `codigo_linea` varchar(5) NOT NULL,
  `nombre_linea` varchar(60) DEFAULT NULL,
  `estatus_linea` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lineas`
--

INSERT INTO `lineas` (`codigo_linea`, `nombre_linea`, `estatus_linea`) VALUES
('1', 'Cosmeticos', '1'),
('2', 'Comida', '1'),
('3', 'Limpieza', '1'),
('4', 'Aseo Personal', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `pk_id_login` int(10) NOT NULL,
  `usuario_login` varchar(45) DEFAULT NULL,
  `contraseña_login` varchar(45) DEFAULT NULL,
  `nombreCompleto_login` varchar(100) DEFAULT NULL,
  `estado_login` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`pk_id_login`, `usuario_login`, `contraseña_login`, `nombreCompleto_login`, `estado_login`) VALUES
(1, 'sistema', 'bi0PL96rbxVRPKJQsLJJAg==', 'Usuario de prueba', 1),
(2, 'bjsican', '0FOYy5u5h0djKjzCYqfvkg==', 'Billy Sican', 1),
(3, 'bmaza', 'xTfsC3/XR/CVyDvNr1Fs+g==', 'Bryan Mazariegos', 1),
(4, 'jsican', 'jsican', 'Jeshua Sican', 0),
(5, 'jmorataya', '123', 'Julio Morataya', 0),
(6, 'JLOPEZ', 'LwUsihMe9Bl//D/5WaIzLA==', 'JOSE LOPEZ', 1),
(7, 'cliente', '21LRuDS2GcjNgOcK8q54Aw==', 'Usuario para clientes', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `codigo_marca` varchar(5) NOT NULL,
  `nombre_marca` varchar(60) DEFAULT NULL,
  `estatus_marca` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`codigo_marca`, `nombre_marca`, `estatus_marca`) VALUES
('1', 'Nivea', '1'),
('2', 'Gillet', '1'),
('3', 'Colgate', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `pk_id_modulo` int(10) NOT NULL,
  `nombre_modulo` varchar(30) NOT NULL,
  `descripcion_modulo` varchar(50) NOT NULL,
  `estado_modulo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`pk_id_modulo`, `nombre_modulo`, `descripcion_modulo`, `estado_modulo`) VALUES
(1, 'Seguridad', 'Aplicaciones de seguridad', 1),
(2, 'Consultas', 'Consultas Inteligentes', 1),
(3, 'Reporteador', 'Aplicaciones de Reporteador', 1),
(4, 'HRM', 'Aplicaciones de Recursos Humanos', 1),
(5, 'FRM', 'Aplicaciones de Finanzas', 1),
(6, 'SCM', 'Aplicaciones Control de Inventario', 1),
(7, 'MRP', 'Aplicaciones de Produccion', 1),
(8, 'CRM', 'Aplicaciones de Ventas', 1),
(9, 'PRUEBA', 'PRUEBA', 1),
(10, 'Gestión de Citas', 'En este modulo se pueden gestionar las citas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `pk_id_perfil` int(10) NOT NULL,
  `nombre_perfil` varchar(50) DEFAULT NULL,
  `descripcion_perfil` varchar(100) DEFAULT NULL,
  `estado_perfil` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`pk_id_perfil`, `nombre_perfil`, `descripcion_perfil`, `estado_perfil`) VALUES
(1, 'Admin', 'Administracion del programa', 1),
(2, 'Sistema', 'Administrador del sistema', 1),
(3, 'Digitador', 'Digitador para Cuentas', 1),
(4, 'Consultor', 'Unicamente consultas ', 1),
(5, 'Reportes', 'Ingreso y consultas de reportes', 1),
(6, 'Pruebas', 'pruebas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `pk_id_perfil_usuario` int(10) NOT NULL,
  `fk_idusuario_perfil_usuario` int(10) DEFAULT NULL,
  `fk_idperfil_perfil_usuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`pk_id_perfil_usuario`, `fk_idusuario_perfil_usuario`, `fk_idperfil_perfil_usuario`) VALUES
(2, 3, 3),
(4, 4, 1),
(5, 5, 5),
(6, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `pk_id_permiso` int(10) NOT NULL,
  `insertar_permiso` tinyint(1) DEFAULT NULL,
  `modificar_permiso` tinyint(1) DEFAULT NULL,
  `eliminar_permiso` tinyint(1) DEFAULT NULL,
  `consultar_permiso` tinyint(1) DEFAULT NULL,
  `imprimir_permiso` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`pk_id_permiso`, `insertar_permiso`, `modificar_permiso`, `eliminar_permiso`, `consultar_permiso`, `imprimir_permiso`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 1, 0, 0, 1, 1),
(3, 1, 1, 1, 0, 0),
(4, 1, 1, 1, 1, 1),
(5, 1, 1, 1, 1, 1),
(6, 1, 1, 1, 1, 1),
(7, 1, 1, 1, 1, 1),
(8, 1, 0, 1, 0, 0),
(9, 1, 1, 0, 0, 0),
(10, 1, 1, 0, 0, 0),
(11, 1, 1, 1, 1, 1),
(12, 0, 0, 0, 1, 0),
(13, 0, 0, 0, 1, 0),
(14, 0, 0, 0, 0, 0),
(15, 1, 0, 0, 1, 0),
(16, 0, 0, 0, 0, 0),
(17, 1, 1, 0, 0, 0),
(18, 0, 0, 0, 0, 0),
(19, 0, 0, 0, 0, 0),
(20, 0, 0, 0, 0, 0),
(21, 0, 0, 0, 0, 0),
(22, 0, 0, 0, 0, 0),
(23, 0, 0, 0, 0, 0),
(24, 0, 0, 0, 0, 0),
(25, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo_producto` varchar(18) NOT NULL,
  `nombre_producto` varchar(60) DEFAULT NULL,
  `codigo_linea` varchar(5) DEFAULT NULL,
  `codigo_marca` varchar(5) DEFAULT NULL,
  `existencia_producto` float(10,2) DEFAULT NULL,
  `estatus_producto` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo_producto`, `nombre_producto`, `codigo_linea`, `codigo_marca`, `existencia_producto`, `estatus_producto`) VALUES
('1', 'Crema para la cara', '1', '1', 100.00, '1'),
('2', 'Panes', '2', '3', 500.00, '1'),
('3', 'Rasuradoras', '4', '2', 50.00, '1'),
('4', 'Crema para afeitar', '4', '2', 500.00, '1'),
('5', 'Pasta dental', '4', '3', 500.00, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `codigo_proveedor` varchar(5) NOT NULL,
  `nombre_proveedor` varchar(60) DEFAULT NULL,
  `direccion_proveedor` varchar(60) DEFAULT NULL,
  `telefono_proveedor` varchar(50) DEFAULT NULL,
  `nit_proveedor` varchar(50) DEFAULT NULL,
  `estatus_proveedor` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `codigo_vendedor` varchar(5) NOT NULL,
  `nombre_vendedor` varchar(60) DEFAULT NULL,
  `direccion_vendedor` varchar(60) DEFAULT NULL,
  `telefono_vendedor` varchar(50) DEFAULT NULL,
  `nit_vendedor` varchar(20) DEFAULT NULL,
  `estatus_vendedor` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_detalle`
--

CREATE TABLE `ventas_detalle` (
  `documento_ventaenca` varchar(10) NOT NULL,
  `codigo_producto` varchar(18) NOT NULL,
  `cantidad_ventadet` float(10,2) DEFAULT NULL,
  `costo_ventadet` float(10,2) DEFAULT NULL,
  `precio_ventadet` float(10,2) DEFAULT NULL,
  `codigo_bodega` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_encabezado`
--

CREATE TABLE `ventas_encabezado` (
  `documento_ventaenca` varchar(10) NOT NULL,
  `codigo_cliente` varchar(5) DEFAULT NULL,
  `fecha_ventaenca` date DEFAULT NULL,
  `total_ventaenca` float(10,2) DEFAULT NULL,
  `estatus_ventaenca` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`pk_id_aplicacion`),
  ADD KEY `pk_id_aplicacion` (`pk_id_aplicacion`),
  ADD KEY `fk_aplicacion_modulo` (`fk_id_modulo`);

--
-- Indices de la tabla `aplicacion_perfil`
--
ALTER TABLE `aplicacion_perfil`
  ADD KEY `fk_aplicacionperfil_aplicacion` (`fk_idaplicacion_aplicacion_perfil`),
  ADD KEY `fk_aplicacionperfil_perfil` (`fk_idperfil_aplicacion_perfil`),
  ADD KEY `fk_aplicacionperfil_permiso` (`fk_idpermiso_aplicacion_perfil`);

--
-- Indices de la tabla `aplicacion_usuario`
--
ALTER TABLE `aplicacion_usuario`
  ADD PRIMARY KEY (`pk_id_aplicacion_usuario`),
  ADD KEY `fk_aplicacionusuario_login` (`fk_idlogin_aplicacion_usuario`),
  ADD KEY `fk_aplicacionusuario_aplicacion` (`fk_idaplicacion_aplicacion_usuario`),
  ADD KEY `fk_aplicacionusuario_permiso` (`fk_idpermiso_aplicacion_usuario`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`pk_id_bitacora`),
  ADD KEY `fk_login_bitacora` (`fk_idusuario_bitacora`),
  ADD KEY `fk_aplicacion_bitacora` (`fk_idaplicacion_bitacora`);

--
-- Indices de la tabla `bodegas`
--
ALTER TABLE `bodegas`
  ADD PRIMARY KEY (`codigo_bodega`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo_cliente`),
  ADD KEY `codigo_vendedor` (`codigo_vendedor`);

--
-- Indices de la tabla `compras_detalle`
--
ALTER TABLE `compras_detalle`
  ADD PRIMARY KEY (`documento_compraenca`,`codigo_producto`),
  ADD KEY `codigo_producto` (`codigo_producto`),
  ADD KEY `codigo_bodega` (`codigo_bodega`);

--
-- Indices de la tabla `compras_encabezado`
--
ALTER TABLE `compras_encabezado`
  ADD PRIMARY KEY (`documento_compraenca`),
  ADD KEY `codigo_proveedor` (`codigo_proveedor`);

--
-- Indices de la tabla `detalle_bitacora`
--
ALTER TABLE `detalle_bitacora`
  ADD PRIMARY KEY (`pk_id_detalle_bitacora`),
  ADD KEY `fk_bitacora_detallebitacora` (`fk_idbitacora_detalle_bitacora`);

--
-- Indices de la tabla `existencias`
--
ALTER TABLE `existencias`
  ADD PRIMARY KEY (`codigo_bodega`,`codigo_producto`),
  ADD KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD PRIMARY KEY (`codigo_linea`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_id_login`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`codigo_marca`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`pk_id_modulo`),
  ADD KEY `pk_id_modulo` (`pk_id_modulo`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`pk_id_perfil`);

--
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`pk_id_perfil_usuario`),
  ADD KEY `fk_perfil_usuario_login` (`fk_idusuario_perfil_usuario`),
  ADD KEY `fk_perfil_usuario_perfil` (`fk_idperfil_perfil_usuario`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`pk_id_permiso`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo_producto`),
  ADD KEY `codigo_linea` (`codigo_linea`),
  ADD KEY `codigo_marca` (`codigo_marca`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`codigo_proveedor`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`codigo_vendedor`);

--
-- Indices de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD PRIMARY KEY (`documento_ventaenca`,`codigo_producto`),
  ADD KEY `codigo_producto` (`codigo_producto`),
  ADD KEY `codigo_bodega` (`codigo_bodega`);

--
-- Indices de la tabla `ventas_encabezado`
--
ALTER TABLE `ventas_encabezado`
  ADD PRIMARY KEY (`documento_ventaenca`),
  ADD KEY `codigo_cliente` (`codigo_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  MODIFY `pk_id_aplicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1313;

--
-- AUTO_INCREMENT de la tabla `aplicacion_usuario`
--
ALTER TABLE `aplicacion_usuario`
  MODIFY `pk_id_aplicacion_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `pk_id_bitacora` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `detalle_bitacora`
--
ALTER TABLE `detalle_bitacora`
  MODIFY `pk_id_detalle_bitacora` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `pk_id_login` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `pk_id_modulo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `pk_id_perfil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `pk_id_perfil_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `pk_id_permiso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD CONSTRAINT `fk_aplicacion_modulo` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`);

--
-- Filtros para la tabla `aplicacion_perfil`
--
ALTER TABLE `aplicacion_perfil`
  ADD CONSTRAINT `fk_aplicacionperfil_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_perfil`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_perfil` FOREIGN KEY (`fk_idperfil_aplicacion_perfil`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_perfil`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `aplicacion_usuario`
--
ALTER TABLE `aplicacion_usuario`
  ADD CONSTRAINT `fk_aplicacionusuario_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_usuario`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_login` FOREIGN KEY (`fk_idlogin_aplicacion_usuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_usuario`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `fk_aplicacion_bitacora` FOREIGN KEY (`fk_idaplicacion_bitacora`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_login_bitacora` FOREIGN KEY (`fk_idusuario_bitacora`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`codigo_vendedor`) REFERENCES `vendedores` (`codigo_vendedor`);

--
-- Filtros para la tabla `compras_detalle`
--
ALTER TABLE `compras_detalle`
  ADD CONSTRAINT `compras_detalle_ibfk_1` FOREIGN KEY (`documento_compraenca`) REFERENCES `compras_encabezado` (`documento_compraenca`),
  ADD CONSTRAINT `compras_detalle_ibfk_2` FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`codigo_producto`),
  ADD CONSTRAINT `compras_detalle_ibfk_3` FOREIGN KEY (`codigo_bodega`) REFERENCES `bodegas` (`codigo_bodega`);

--
-- Filtros para la tabla `compras_encabezado`
--
ALTER TABLE `compras_encabezado`
  ADD CONSTRAINT `compras_encabezado_ibfk_1` FOREIGN KEY (`codigo_proveedor`) REFERENCES `proveedores` (`codigo_proveedor`);

--
-- Filtros para la tabla `detalle_bitacora`
--
ALTER TABLE `detalle_bitacora`
  ADD CONSTRAINT `fk_bitacora_detallebitacora` FOREIGN KEY (`fk_idbitacora_detalle_bitacora`) REFERENCES `bitacora` (`pk_id_bitacora`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `existencias`
--
ALTER TABLE `existencias`
  ADD CONSTRAINT `existencias_ibfk_1` FOREIGN KEY (`codigo_bodega`) REFERENCES `bodegas` (`codigo_bodega`),
  ADD CONSTRAINT `existencias_ibfk_2` FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`codigo_producto`);

--
-- Filtros para la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD CONSTRAINT `fk_perfil_usuario_login` FOREIGN KEY (`fk_idusuario_perfil_usuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_perfil_usuario_perfil` FOREIGN KEY (`fk_idperfil_perfil_usuario`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`codigo_linea`) REFERENCES `lineas` (`codigo_linea`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`codigo_marca`) REFERENCES `marcas` (`codigo_marca`);

--
-- Filtros para la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD CONSTRAINT `ventas_detalle_ibfk_1` FOREIGN KEY (`documento_ventaenca`) REFERENCES `ventas_encabezado` (`documento_ventaenca`),
  ADD CONSTRAINT `ventas_detalle_ibfk_2` FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`codigo_producto`),
  ADD CONSTRAINT `ventas_detalle_ibfk_3` FOREIGN KEY (`codigo_bodega`) REFERENCES `bodegas` (`codigo_bodega`);

--
-- Filtros para la tabla `ventas_encabezado`
--
ALTER TABLE `ventas_encabezado`
  ADD CONSTRAINT `ventas_encabezado_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `clientes` (`codigo_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
