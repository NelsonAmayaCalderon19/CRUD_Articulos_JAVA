-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2019 a las 17:11:44
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonales`
--

CREATE TABLE `datospersonales` (
  `ID` varchar(15) DEFAULT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `APELLIDO` varchar(20) DEFAULT NULL,
  `EDAD` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datospersonales`
--

INSERT INTO `datospersonales` (`ID`, `NOMBRE`, `APELLIDO`, `EDAD`) VALUES
('1093798043', 'NELSON', 'AMAYA', 19),
('1093857920', 'EDUARDO', 'CALDERON', 28),
('1094297584', 'ALBERTO', 'DIAS', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_usuarios`
--

CREATE TABLE `datos_usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Direccion` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datos_usuarios`
--

INSERT INTO `datos_usuarios` (`Id`, `Nombre`, `Apellido`, `Direccion`) VALUES
(2, 'Carlos', 'Caceres  ', 'Calle Valencia'),
(3, 'Sandra', 'Garcia', 'Av Gran Colombia'),
(6, 'Nelson', 'Amaya', 'Calle Simón Bolivar'),
(8, 'Jaider', 'Calderon ', 'Crra San Cristobal'),
(9, 'Alberto', 'Díaz', 'Av Avellana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoja1`
--

CREATE TABLE `hoja1` (
  `CÓDIGO_ARTICULO` varchar(5) DEFAULT NULL,
  `SECCIÓN` varchar(10) DEFAULT NULL,
  `NOMBRE_ARTICULO` varchar(18) DEFAULT NULL,
  `PRECIO` varchar(6) DEFAULT NULL,
  `FECHA` varchar(10) DEFAULT NULL,
  `IMPORTADO` varchar(9) DEFAULT NULL,
  `PAIS_DE_ORÍGEN` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hoja1`
--

INSERT INTO `hoja1` (`CÓDIGO_ARTICULO`, `SECCIÓN`, `NOMBRE_ARTICULO`, `PRECIO`, `FECHA`, `IMPORTADO`, `PAIS_DE_ORÍGEN`) VALUES
('ART01', 'FERRETERIA', 'DESTORNILLADOR', '6,63', '22/10/2015', 'VERDADERO', 'COLOMBIA'),
('ART02', 'CONFECCION', 'TRAJE CABALLERO', '284,53', '23/10/2015', 'FALSO', 'COLOMBIA'),
('ART03', 'JUGUETERIA', 'COCHE TELEDIRIGIDO', '25,89', '24/10/2015', 'FALSO', 'COLOMBIA'),
('ART04', 'DEPORTES', 'RAQUETA TENIS', '49,02', '25/10/2015', 'FALSO', 'COLOMBIA'),
('ART05', 'DEPORTES', 'MANCUERNAS', '12,45', '26/10/2015', 'FALSO', 'COLOMBIA'),
('ART06', 'JUGUETERIA', 'BALON FUTBOL', '3,89', '27/10/2015', 'FALSO', 'COLOMBIA'),
('ART07', 'CONFECCION', 'PANTALÓN', '35,38', '28/10/2015', 'FALSO', 'COLOMBIA'),
('ART08', 'JUGUETERIA', 'CONSOLA', '345,23', '29/10/2015', 'FALSO', 'COLOMBIA'),
('ART09', 'FERRETERIA', 'TUBOS', '24,59', '30/10/2015', 'FALSO', 'COLOMBIA'),
('ART10', 'FERRETERIA', 'LLAVE INGLESA', '40,8', '31/10/2015', 'VERDADERO', 'COLOMBIA'),
('ART11', 'CONFECCION', 'CAMISA CABALLERO', '27,03', '1/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART12', 'JUGUETERIA', 'TREN ELECTRICO', '79,26', '2/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART13', 'CERÁMICA', 'PLATO DECORATIVO', '79,26', '3/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART15', 'JUGUETERIA', 'MUÑECA', '79,26', '5/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART16', 'FERRETERIA', 'PISTOLA OLIMPICA', '79,26', '6/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART18', 'CERÁMICA', 'JUEGO DE TE', '23,94', '16/12/2018', 'FALSO', 'COLOMBIA'),
('ART19', 'CERÁMICA', 'CENICERO', '23,94', '17/12/2018', 'FALSO', 'COLOMBIA'),
('ART20', 'FERRETERIA', 'MARTILLO', '23,94', '18/12/2018', 'FALSO', 'COLOMBIA'),
('ART21', 'CONFECCION', 'CAZADORA PIEL', '299,39', '19/12/2018', 'FALSO', 'COLOMBIA'),
('ART22', 'JUGUETERIA', 'BALON RUGBY', '299,39', '20/12/2018', 'FALSO', 'COLOMBIA'),
('ART23', 'JUGUETERIA', 'BALON BALONCESTO', '299,39', '21/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART24', 'JUGUETERIA', 'SOLDADOS', '299,39', '22/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART25', 'CONFECCION', 'ABRIGO CABALLERO', '299,39', '23/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART26', 'CONFECCION', 'ABRIGO DAMA', '23,94', '24/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART27', 'FERRETERIA', 'TUERCA', '23,94', '25/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART28', 'JUGUETERIA', 'MAXTIL', '23,94', '26/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART29', 'CONFECCION', 'BUFANDA', '23,94', '27/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART30', 'FERRETERIA', 'PEGANTE', '23,94', '28/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART17', 'FERRETERIA', 'PORRA', '50', '2019-01-11', 'FALSO', 'PORTUGAL'),
('ART01', 'FERRETERIA', 'DESTORNILLADOR', '6,63', '22/10/2015', 'VERDADERO', 'COLOMBIA'),
('ART02', 'CONFECCION', 'TRAJE CABALLERO', '284,53', '23/10/2015', 'FALSO', 'COLOMBIA'),
('ART03', 'JUGUETERIA', 'COCHE TELEDIRIGIDO', '25,89', '24/10/2015', 'FALSO', 'COLOMBIA'),
('ART04', 'DEPORTES', 'RAQUETA TENIS', '49,02', '25/10/2015', 'FALSO', 'COLOMBIA'),
('ART05', 'DEPORTES', 'MANCUERNAS', '12,45', '26/10/2015', 'FALSO', 'COLOMBIA'),
('ART06', 'JUGUETERIA', 'BALON FUTBOL', '3,89', '27/10/2015', 'FALSO', 'COLOMBIA'),
('ART07', 'CONFECCION', 'PANTALOS DAMA', '35,38', '28/10/2015', 'FALSO', 'COLOMBIA'),
('ART08', 'JUGUETERIA', 'CONSOLA', '345,23', '29/10/2015', 'FALSO', 'COLOMBIA'),
('ART09', 'FERRETERIA', 'TUBOS', '24,59', '30/10/2015', 'FALSO', 'COLOMBIA'),
('ART10', 'FERRETERIA', 'LLAVE INGLESA', '40,85', '31/10/2015', 'VERDADERO', 'COLOMBIA'),
('ART11', 'CONFECCION', 'CAMISA CABALLERO', '27,03', '1/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART12', 'JUGUETERIA', 'TREN ELECTRICO', '79,26', '2/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART13', 'CERÁMICA', 'PLATO DECORATIVO', '79,26', '3/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART14', 'FERRETERIA', 'ALICATES', '79,26', '4/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART15', 'JUGUETERIA', 'MUÑECA', '79,26', '5/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART16', 'FERRETERIA', 'PISTOLA OLIMPICA', '79,26', '6/11/2015', 'VERDADERO', 'COLOMBIA'),
('ART17', 'CONFECCION', 'BLUSA', '23,94', '7/11/2015', 'FALSO', 'COLOMBIA'),
('ART18', 'CERÁMICA', 'JUEGO DE TE', '23,94', '16/12/2018', 'FALSO', 'COLOMBIA'),
('ART19', 'CERÁMICA', 'CENICERO', '23,94', '17/12/2018', 'FALSO', 'COLOMBIA'),
('ART20', 'FERRETERIA', 'MARTILLO', '23,94', '18/12/2018', 'FALSO', 'COLOMBIA'),
('ART21', 'CONFECCION', 'CAZADORA PIEL', '299,39', '19/12/2018', 'FALSO', 'COLOMBIA'),
('ART22', 'JUGUETERIA', 'BALON RUGBY', '299,39', '20/12/2018', 'FALSO', 'COLOMBIA'),
('ART23', 'JUGUETERIA', 'BALON BALONCESTO', '299,39', '21/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART24', 'JUGUETERIA', 'SOLDADOS', '299,39', '22/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART25', 'CONFECCION', 'ABRIGO CABALLERO', '299,39', '23/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART26', 'CONFECCION', 'ABRIGO DAMA', '23,94', '24/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART27', 'FERRETERIA', 'TUERCA', '23,94', '25/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART28', 'JUGUETERIA', 'MAXTIL', '23,94', '26/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART29', 'CONFECCION', 'BUFANDA', '23,94', '27/12/2018', 'VERDADERO', 'COLOMBIA'),
('ART30', 'FERRETERIA', 'PEGANTE', '23,94', '28/12/2018', 'VERDADERO', 'COLOMBIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosblocnotas`
--

CREATE TABLE `productosblocnotas` (
  `CODIGOARTICULO` varchar(5) DEFAULT NULL,
  `SECCION` varchar(15) DEFAULT NULL,
  `NOMBREARTICULO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productosblocnotas`
--

INSERT INTO `productosblocnotas` (`CODIGOARTICULO`, `SECCION`, `NOMBREARTICULO`) VALUES
('ART01', 'DEPORTES', 'RAQUETA'),
('ART02', 'FERRETERIA', 'MARTILLO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `NOMBRE_USUARIO` varchar(20) DEFAULT NULL,
  `CONTRASEÑA` varchar(1000) DEFAULT NULL,
  `TELEFONO` varchar(15) DEFAULT NULL,
  `DIRECCION` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`NOMBRE_USUARIO`, `CONTRASEÑA`, `TELEFONO`, `DIRECCION`) VALUES
('Adriana', '1235', '3007582942', 'Cll 10 Sevilla'),
('Jaider', '1230', '3107930549', 'Cll 14 Guaimaral2'),
('Eduardo', '1236', '3002957813', 'AV 33 Belen'),
('Bebe', '1237', '3002957813', 'Cll 15 Ceiba'),
('Estela', '1238', '3212737194', 'Cll 22 Toledo'),
('Alberto', '1239', '3107930544', 'Cll 15 Ceiba'),
('Amparo', '1245', '3107930542', 'Cll 22 Toledo'),
('Paola', '1268', '2157816185', 'Cll 16 Ceci'),
('Alberto', '1974', '3002957813', 'Cll 16 Ceci'),
('Nene', '$2y$10$6RWmkN1.F8PVvqt.wql2CeDYEg6StbjE.zYKMk1RpzwpmE1DOXfne', '342', 'xvxc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_pass`
--

CREATE TABLE `usuarios_pass` (
  `ID` int(11) NOT NULL,
  `USUARIOS` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_pass`
--

INSERT INTO `usuarios_pass` (`ID`, `USUARIOS`, `PASSWORD`) VALUES
(1, 'JUAN', '1234'),
(2, 'MARIA', '2345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_usuarios`
--
ALTER TABLE `datos_usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuarios_pass`
--
ALTER TABLE `usuarios_pass`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_usuarios`
--
ALTER TABLE `datos_usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios_pass`
--
ALTER TABLE `usuarios_pass`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
