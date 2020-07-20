-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `depto`;
CREATE TABLE `depto` (
  `depcodigo` int(11) NOT NULL AUTO_INCREMENT,
  `depnome` varchar(200) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`depcodigo`),
  KEY `depnome` (`depnome`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;


DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos` (
  `grpcodigo` int(11) NOT NULL AUTO_INCREMENT,
  `grpnome` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `grpdepto` varchar(200) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`grpcodigo`),
  KEY `grpdepto` (`grpdepto`),
  KEY `grpnome` (`grpnome`),
  CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`grpdepto`) REFERENCES `depto` (`depnome`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;


DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `usumatricula` varchar(12) COLLATE utf8_general_mysql500_ci NOT NULL,
  `usunome` varchar(200) COLLATE utf8_general_mysql500_ci NOT NULL,
  `usuemail` varchar(200) COLLATE utf8_general_mysql500_ci NOT NULL,
  `ususenha` varchar(12) COLLATE utf8_general_mysql500_ci NOT NULL,
  `usucargo` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `usudepto` varchar(200) COLLATE utf8_general_mysql500_ci NOT NULL,
  `usugrupo` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`usumatricula`),
  KEY `usudepto` (`usudepto`),
  KEY `usugrupo` (`usugrupo`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`usudepto`) REFERENCES `depto` (`depnome`),
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`usugrupo`) REFERENCES `grupos` (`grpnome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;


-- 2020-07-20 18:38:21