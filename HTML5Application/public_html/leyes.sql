-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2019 a las 20:54:33
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `leyes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ley`
--

CREATE TABLE `ley` (
  `IDLEY` bigint(20) NOT NULL,
  `NUMLEY` int(11) NOT NULL,
  `FECPUBLICACION` date NOT NULL,
  `FECPROMULGACION` date NOT NULL,
  `TITULO` varchar(500) DEFAULT NULL,
  `FECHAHORA` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ley`
--

INSERT INTO `ley` (`IDLEY`, `NUMLEY`, `FECPUBLICACION`, `FECPROMULGACION`, `TITULO`, `FECHAHORA`) VALUES
(1, 21014, '2017-05-26', '2017-05-18', 'Exige incorporar a los contratos de compraventa de inmuebles su superficie total y útil, y de terrazas bodegas y estacionamientos', '2019-04-16 15:01:05'),
(2, 21011, '2017-05-04', '2017-05-02', 'Modifica la fecha de la cuenta que debe rendir el presidente de la república ante el congreso pleno', '2019-04-16 15:01:05'),
(3, 21009, '2017-04-28', '2017-04-21', 'Facilita pago de propinas en establecimientos de atención al público', '2019-04-16 15:01:05'),
(4, 21010, '2017-04-28', '2017-04-18', 'Extiende y modifica la cotización extraordinaria para el seguro social contra riesgos de accidentes del trabajo y enfermedades profesionales, y crea el fondo que financiará el seguro para el acompañamiento de los niños y niñas', '2019-04-16 15:01:05'),
(5, 21003, '2017-04-21', '2017-04-10', 'Extiende los beneficios de la ley nº 20.948 a los funcionarios y funcionarias de la junta nacional de jardines infantiles, establece normas específicas para el incentivo de la ley nº 20.213 y modifica los requisitos de ingreso y promoción de la función de supervisión de la planta de profesionales de dicho servicio', '2019-04-16 15:01:05'),
(6, 21007, '2017-04-06', '2017-03-30', 'Establece el 6 de abril de cada año como día nacional del deporte para el desarrollo y la paz', '2019-04-16 15:01:05'),
(7, 21002, '2017-03-31', '2017-03-29', 'Crea una asignación de fortalecimiento de redes asistenciales para el personal que indica', '2019-04-16 15:01:05'),
(8, 21006, '2017-04-04', '2017-03-29', 'Modifica diversos cuerpos legales que rigen al sector educativo, en materia de subvención escolar preferencial, situación de becarios de postgrado, desarrollo profesional docente y otras', '2019-04-16 15:01:05'),
(9, 21008, '2017-04-05', '2017-03-29', 'Establece el día 14 de abril como día nacional del locutor', '2019-04-16 15:01:05'),
(10, 21005, '2017-04-07', '2017-03-29', 'Moderniza el consejo nacional de televisión, concede las asignaciones que indica y delega facultades para fijar su planta de personal', '2019-04-16 15:01:05'),
(11, 21004, '2017-03-29', '2017-03-23', 'Modifica el código procesal penal, para evitar la dilación injustificada del proceso penal', '2019-04-16 15:01:05'),
(12, 21001, '2017-03-22', '2017-03-09', 'Establece el nuevo escalafón del servicio de personal del ejército', '2019-04-16 15:01:05'),
(13, 20997, '2017-03-13', '2017-03-01', 'Moderniza la legislación aduanera', '2019-04-16 15:01:05'),
(14, 20988, '2017-02-11', '2017-02-03', 'Regula la donación cruzada de órganos entre vivos', '2019-04-16 15:01:05'),
(15, 20996, '2017-02-10', '2017-02-03', 'Otorga bonificación adicional por retiro al personal no académico ni profesional de las universidades del estado y faculta a estas para conceder otros beneficios transitorios', '2019-04-16 15:01:05'),
(16, 20999, '2017-02-09', '2017-01-31', 'Modifica la ley de servicios de gas y otras disposiciones que indica', '2019-04-16 15:01:05'),
(17, 20995, '2017-01-31', '2017-01-25', 'Concede la nacionalidad chilena, por especial gracia, a la ciudadana estadounidense señora Valene Leah Georges Larsen', '2019-04-16 15:01:05'),
(18, 20992, '2017-02-02', '2017-01-25', 'Regula feriado por censo', '2019-04-16 15:01:05'),
(19, 20993, '2017-01-28', '2017-01-23', 'Modifica diversos cuerpos legales para facilitar el funcionamiento del sistema escolar', '2019-04-16 15:01:05'),
(20, 20994, '2017-01-27', '2017-01-23', 'Regula beneficio que indica, para trabajadores de establecimientos de educación parvularia administrados en convenio con la junta nacional de jardines infantiles', '2019-04-16 15:01:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leyasignacion`
--

CREATE TABLE `leyasignacion` (
  `IDLEYASIGNACION` bigint(20) NOT NULL,
  `IDLEY` bigint(20) NOT NULL,
  `IDUSUARIO` bigint(20) NOT NULL,
  `REVISADA` int(11) NOT NULL,
  `DESCRIPCION` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDUSUARIO` bigint(20) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `NOMUSU` varchar(20) NOT NULL,
  `CLAVE` varchar(100) DEFAULT NULL,
  `PREF01` int(11) DEFAULT NULL,
  `PREF02` int(11) DEFAULT NULL,
  `PREF03` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDUSUARIO`, `NOMBRE`, `NOMUSU`, `CLAVE`, `PREF01`, `PREF02`, `PREF03`) VALUES
(1, 'Fabián Lopez', 'flopez', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL),
(2, 'Patricio Suazo', 'psuazo', 'fcea920f7412b5da7be0cf42b8c93759', NULL, NULL, NULL),
(3, 'Diego Barreiro', 'dbarreiro', 'bfd59291e825b5f2bbf1eb76569f8fe7', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ley`
--
ALTER TABLE `ley`
  ADD PRIMARY KEY (`IDLEY`);

--
-- Indices de la tabla `leyasignacion`
--
ALTER TABLE `leyasignacion`
  ADD PRIMARY KEY (`IDLEYASIGNACION`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDUSUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ley`
--
ALTER TABLE `ley`
  MODIFY `IDLEY` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `leyasignacion`
--
ALTER TABLE `leyasignacion`
  MODIFY `IDLEYASIGNACION` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDUSUARIO` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
