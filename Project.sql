-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.11-beta-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema proyecto
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ proyecto;
USE proyecto;

--
-- Table structure for table `proyecto`.`clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `papellido` varchar(45) NOT NULL,
  `sapellido` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyecto`.`clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`,`nombre`,`papellido`,`sapellido`,`direccion`,`telefono`,`email`) VALUES 
 ('04','wil','cas','++','here','4444444','wil04@mysql.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


--
-- Table structure for table `proyecto`.`cxcliente`
--

DROP TABLE IF EXISTS `cxcliente`;
CREATE TABLE `cxcliente` (
  `numcuenta` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  `idtipo` varchar(45) NOT NULL,
  `saldo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyecto`.`cxcliente`
--

/*!40000 ALTER TABLE `cxcliente` DISABLE KEYS */;
INSERT INTO `cxcliente` (`numcuenta`,`id`,`idtipo`,`saldo`) VALUES 
 ('1','04','1','10000');
/*!40000 ALTER TABLE `cxcliente` ENABLE KEYS */;


--
-- Table structure for table `proyecto`.`tiposcuentas`
--

DROP TABLE IF EXISTS `tiposcuentas`;
CREATE TABLE `tiposcuentas` (
  `idtipo` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyecto`.`tiposcuentas`
--

/*!40000 ALTER TABLE `tiposcuentas` DISABLE KEYS */;
INSERT INTO `tiposcuentas` (`idtipo`,`nombre`,`descripcion`) VALUES 
 ('1','credito','no se');
/*!40000 ALTER TABLE `tiposcuentas` ENABLE KEYS */;


--
-- Table structure for table `proyecto`.`tipotransacciones`
--

DROP TABLE IF EXISTS `tipotransacciones`;
CREATE TABLE `tipotransacciones` (
  `idtipo` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyecto`.`tipotransacciones`
--

/*!40000 ALTER TABLE `tipotransacciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipotransacciones` ENABLE KEYS */;


--
-- Table structure for table `proyecto`.`transaccionesxcliente`
--

DROP TABLE IF EXISTS `transaccionesxcliente`;
CREATE TABLE `transaccionesxcliente` (
  `tipo` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `monto` varchar(45) NOT NULL,
  `numcliente` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyecto`.`transaccionesxcliente`
--

/*!40000 ALTER TABLE `transaccionesxcliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaccionesxcliente` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
