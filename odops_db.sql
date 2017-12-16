-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 26. Jan 2017 um 00:55
-- Server-Version: 10.1.9-MariaDB
-- PHP-Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `olddorps`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `banip`
--

CREATE TABLE `banip` (
  `ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `clanes`
--

CREATE TABLE `clanes` (
  `clanID` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tagNombre` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `clanes`
--

INSERT INTO `clanes` (`clanID`, `nombre`, `tagNombre`) VALUES
(1, 'Administrators', 'ADM');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cuentas`
--

CREATE TABLE `cuentas` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `servidor` int(2) NOT NULL DEFAULT '1',
  `empresa` varchar(5) CHARACTER SET utf8 NOT NULL COMMENT 'VRU,EIC,MMO',
  `premium` int(1) NOT NULL DEFAULT '1' COMMENT '0: No, Premium | 1: Si, Premium',
  `nave` int(11) NOT NULL DEFAULT '1',
  `clan` int(11) NOT NULL DEFAULT '0',
  `gfx` int(11) NOT NULL DEFAULT '1',
  `rango` int(11) NOT NULL DEFAULT '1' COMMENT '1: Piloto espacial bÃ¡sico',
  `fecha_creacion` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pos` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT '1000|1000',
  `mapa` int(11) NOT NULL DEFAULT '1' COMMENT 'mapID',
  `hp` bigint(255) NOT NULL DEFAULT '4000',
  `hpMax` bigint(255) NOT NULL DEFAULT '4000',
  `escudo` bigint(255) NOT NULL DEFAULT '0',
  `escudoMax` bigint(255) NOT NULL DEFAULT '0',
  `nivel` int(11) NOT NULL DEFAULT '1',
  `vel` int(11) NOT NULL DEFAULT '320',
  `carga` bigint(255) NOT NULL DEFAULT '100',
  `cargaMax` bigint(255) NOT NULL DEFAULT '100',
  `experiencia` bigint(255) NOT NULL DEFAULT '0',
  `honor` bigint(255) NOT NULL DEFAULT '0',
  `creditos` bigint(255) NOT NULL DEFAULT '20000',
  `uridium` bigint(255) NOT NULL DEFAULT '2000',
  `jackpot` double(50,2) NOT NULL DEFAULT '0.00',
  `energia_extra` int(50) NOT NULL DEFAULT '0',
  `vants` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `skylab` int(50) NOT NULL DEFAULT '-1',
  `estado` int(11) NOT NULL DEFAULT '0' COMMENT '0: Desconectado | 1: Conectado',
  `acceso` int(11) NOT NULL DEFAULT '0' COMMENT '0: Usuario normal | 1: Moderador | 2: Super Moderador | 3: Administrador',
  `puertas_alfa` int(11) NOT NULL DEFAULT '0',
  `puertas_beta` int(11) NOT NULL DEFAULT '0',
  `puertas_delta` int(11) NOT NULL DEFAULT '0',
  `puertas_omega` int(11) NOT NULL DEFAULT '0',
  `inventario` longtext CHARACTER SET utf8 COMMENT 'minerales|...',
  `config` int(11) NOT NULL DEFAULT '1',
  `configs` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '1|2',
  `mun1` varchar(999) CHARACTER SET utf8 NOT NULL DEFAULT '2000|0|0|0|0' COMMENT 'LCB-10(x1)|MCB-25(x2)|MCB-50(x3)|UCB-100(x4)|SAB-50(roba escudo)',
  `mun2` varchar(999) CHARACTER SET utf8 NOT NULL DEFAULT '100|0|0|0' COMMENT 'R-310|PLT-2026|PLT-2021|M-1',
  `invisible` int(11) NOT NULL DEFAULT '0' COMMENT '0: Visible | 1: Invisible',
  `lastIP` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lf1` int(11) NOT NULL DEFAULT '0',
  `mp1` int(11) NOT NULL DEFAULT '0',
  `lf2` int(11) NOT NULL DEFAULT '0',
  `lf3` int(11) NOT NULL DEFAULT '0',
  `lf4` int(11) NOT NULL DEFAULT '10',
  `ao1` int(11) NOT NULL DEFAULT '0',
  `ao2` int(11) NOT NULL DEFAULT '1',
  `ao3` int(11) NOT NULL DEFAULT '0',
  `bo1` int(11) NOT NULL DEFAULT '0',
  `bo2` int(11) NOT NULL DEFAULT '0',
  `sgen1010` int(11) NOT NULL DEFAULT '0',
  `sgen2010` int(11) NOT NULL DEFAULT '0',
  `sgen3210` int(11) NOT NULL DEFAULT '0',
  `sgen6900` int(11) NOT NULL DEFAULT '0',
  `sgen7900` int(11) NOT NULL DEFAULT '0',
  `titulo` smallint(6) NOT NULL DEFAULT '0',
  `ultimaConexion` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Daten für Tabelle `cuentas`
--

INSERT INTO `cuentas` (`id`, `usuario`, `password`, `email`, `servidor`, `empresa`, `premium`, `nave`, `clan`, `gfx`, `rango`, `fecha_creacion`, `pos`, `mapa`, `hp`, `hpMax`, `escudo`, `escudoMax`, `nivel`, `vel`, `carga`, `cargaMax`, `experiencia`, `honor`, `creditos`, `uridium`, `jackpot`, `energia_extra`, `vants`, `skylab`, `estado`, `acceso`, `puertas_alfa`, `puertas_beta`, `puertas_delta`, `puertas_omega`, `inventario`, `config`, `configs`, `mun1`, `mun2`, `invisible`, `lastIP`, `lf1`, `mp1`, `lf2`, `lf3`, `lf4`, `ao1`, `ao2`, `ao3`, `bo1`, `bo2`, `sgen1010`, `sgen2010`, `sgen3210`, `sgen6900`, `sgen7900`, `titulo`, `ultimaConexion`) VALUES
(12, 'itsme', '098f6bcd4621d373cade4e832627b4f6', 'test@test.test', 0, '3', 1, 53, 1, 53, 21, '', '18500|11500', 9, 256000, 256000, 500000, 500000, 1, 460, 100, 100, 0, 0, 20000, 2000, 0.00, 0, '3/2-25,0-25,0/4-25,0-25,0-25,0-25,0/2-25,0-25,0', -1, 0, 0, 0, 0, 0, 0, NULL, 1, '1|2', '2000|0|0|0|0', '100|0|0|0', 0, '', 0, 0, 0, 32, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16, 0, ''),
(13, 'itsme2', '098f6bcd4621d373cade4e832627b4f6', 'test@test.test', 0, '1', 1, 52, 1, 52, 21, '', '18500|11500', 9, 256000, 256000, 250000, 250000, 1, 460, 100, 100, 0, 0, 20000, 2000, 0.00, 0, '3/2-25,0-25,0/4-25,0-25,0-25,0-25,0/2-25,0-25,0', -1, 0, 0, 0, 0, 0, 0, NULL, 1, '1|2', '2000|0|0|0|0', '100|0|0|0', 0, '', 0, 0, 2, 4, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `experiencias`
--

CREATE TABLE `experiencias` (
  `nivel` int(11) NOT NULL,
  `nave` bigint(255) NOT NULL DEFAULT '-1',
  `vant` bigint(255) NOT NULL DEFAULT '-1',
  `pet` bigint(255) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `experiencias`
--

INSERT INTO `experiencias` (`nivel`, `nave`, `vant`, `pet`) VALUES
(1, 0, 0, 0),
(2, 10000, 100, 8000),
(3, 20000, 200, 64000),
(4, 40000, 400, 216000),
(5, 80000, 800, 512000),
(6, 160000, 1600, 1000000),
(7, 320000, -1, 1728000),
(8, 640000, -1, 2744000),
(9, 1280000, -1, 4096000),
(10, 2560000, -1, 8000000),
(11, 5120000, -1, -1),
(12, 10240000, -1, -1),
(13, 20480000, -1, -1),
(14, 40960000, -1, -1),
(15, 81920000, -1, -1),
(16, 163840000, -1, -1),
(17, 327680000, -1, -1),
(18, 655360000, -1, -1),
(19, 1310720000, -1, -1),
(20, 2147483647, -1, -1),
(21, 5242880000, -1, -1),
(22, 10485760000, -1, -1),
(23, 20971520000, -1, -1),
(24, 41943040000, -1, -1),
(25, 83886080000, -1, -1),
(26, 167772160000, -1, -1),
(27, 335544320000, -1, -1),
(28, 671088640000, -1, -1),
(29, 1342177280000, -1, -1),
(30, 2684354560000, -1, -1),
(31, 5368709120000, -1, -1),
(32, 10737418240000, -1, -1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `maps`
--

CREATE TABLE `maps` (
  `id` smallint(4) NOT NULL,
  `Name` varchar(20) NOT NULL DEFAULT '',
  `Portals` text NOT NULL,
  `NPCS` text NOT NULL,
  `isStarterMap` enum('0','1') NOT NULL DEFAULT '0',
  `factionId` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `maps`
--

INSERT INTO `maps` (`id`, `Name`, `Portals`, `NPCS`, `isStarterMap`, `factionId`) VALUES
(1, '1-1', '[{"Id":1,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":2}]', '[{"npcId":84,"Count":50}]', '1', 1),
(2, '1-2', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":1},{"Id":2,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":4},{"Id":3,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":3}]', '[{"npcId":84,"Count":50},{"npcId":71,"Count":25}]', '1', 1),
(3, '1-3', '[{"Id":1,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":2},{"Id":2,"x":"18500","y":"11500","newX":"18500","newY":"2000","Map":4},{"Id":3,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":7}]', '[{"npcId":71,"Count":25},{"npcId":72,"Count":10}]', '0', 1),
(4, '1-4', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":2},{"Id":2,"x":"18500","y":"2000","newX":"18500","newY":"11500","Map":3},{"Id":3,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":12},{"Id":4,"x":"19500","y":"7000","newX":"2000","newY":"7000","Map":13}]', '[{"npcId":71,"Count":25},{"npcId":74,"Count":10},{"npcId":73,"Count":20},{"npcId":75,"Count":18}]', '0', 1),
(5, '2-1', '[{"Id":1,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":6}]', '[{"npcId":84,"Count":50}]', '1', 2),
(6, '2-2', '[{"Id":1,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":8},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":5},{"Id":3,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":7}]', '[{"npcId":84,"Count":50},{"npcId":71,"Count":25}]', '1', 2),
(7, '2-3', '[{"Id":1,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":6},{"Id":2,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":3},{"Id":3,"x":"18500","y":"11500","newX":"18500","newY":"2000","Map":8}]', '[{"npcId":71,"Count":25},{"npcId":72,"Count":10},{"npcId":73,"Count":20},{"npcId":75,"Count":18}]', '0', 2),
(8, '2-4', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":6},{"Id":2,"x":"2000","y":"11500","newX":"2000","newY":"2000","Map":11},{"Id":3,"x":"10000","y":"12000","newX":"10700","newY":"1200","Map":14},{"Id":4,"x":"18500","y":"2000","newX":"18500","newY":"11500","Map":7}]', '[{"npcId":71,"Count":25},{"npcId":74,"Count":10},{"npcId":73,"Count":20},{"npcId":75,"Count":18}]', '0', 2),
(9, '3-1', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":10}]', '[{"npcId":84,"Count":50}]', '1', 3),
(10, '3-2', '[{"Id":1,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":9},{"Id":2,"x":"18500","y":"2000","newX":"18500","newY":"11500","Map":11},{"Id":3,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":12}]', '[{"npcId":84,"Count":50},{"npcId":71,"Count":25}]', '1', 3),
(11, '3-3', '[{"Id":1,"x":"18500","y":"11500","newX":"18500","newY":"2000","Map":10},{"Id":2,"x":"2000","y":"2000","newX":"2000","newY":"11500","Map":8},{"Id":3,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":12}]', '[{"npcId":71,"Count":25},{"npcId":72,"Count":10},{"npcId":73,"Count":20},{"npcId":75,"Count":18}]', '0', 3),
(12, '3-4', '[{"Id":1,"x":"10000","y":"1200","newX":"19500","newY":"7000","Map":15},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":11},{"Id":3,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":4},{"Id":4,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":10}]', '[{"npcId":71,"Count":25},{"npcId":74,"Count":10},{"npcId":73,"Count":20},{"npcId":75,"Count":18}]', '0', 3),
(13, '4-1', '[{"Id":1,"x":"2000","y":"7000","newX":"19500","newY":"7000","Map":4},{"Id":2,"x":"10700","y":"7000","newX":"9500","newY":"7500","Map":16},{"Id":3,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":14},{"Id":4,"x":"18500","y":"11500","newX":"2000","newY":"11500","Map":15}]', '[{"npcId":98,"Count":5}]', '0', 1),
(14, '4-2', '[{"Id":1,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":13},{"Id":2,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":15},{"Id":3,"x":"10700","y":"7000","newX":"10700","newY":"5500","Map":16},{"Id":4,"x":"10700","y":"1200","newX":"10000","newY":"12000","Map":8}]', '[{"npcId":98,"Count":5}]\r\n', '0', 2),
(15, '4-3', '[{"Id":1,"x":"10700","y":"7000","newX":"11900","newY":"7500","Map":16},{"Id":2,"x":"19500","y":"7000","newX":"10000","newY":"1200","Map":12},{"Id":3,"x":"2000","y":"11500","newX":"18500","newY":"11500","Map":13},{"Id":4,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":14}]', '[{"npcId":98,"Count":5}]', '0', 3),
(16, '4-4', '[{"Id":1,"x":"19000","y":"15000","newX":"10700","newY":"7000","Map":13},\r\n{"Id":6,"x":"23800","y":"15000","newX":"10700","newY":"7000","Map":15},\r\n{"Id":2,"x":"21400","y":"11000","newX":"10700","newY":"7000","Map":14},\r\n{"Id":3,"x":"5000","y":"15000","newX":"18500","newY":"6000","Map":17},\r\n{"Id":4,"x":"32000","y":"24000","newX":"2000","newY":"2000","Map":25},\r\n{"Id":5,"x":"32000","y":"2400","newX":"2000","newY":"11500","Map":21}]', '[{"npcId":98,"Count":5}]', '0', 0),
(17, '1-5', '[{"Id":1,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":19},{"Id":2,"x":"18500","y":"6000","newX":"2500","newY":"7500","Map":16},{"Id":3,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":18},\n{"Id":4,"x":10500,"y":12000,"newX":"5500","newY":"13500","Map":29}]', '[{"npcId":71,"Count":25},{"npcId":76,"Count":35},{"npcId":77,"Count":10}]', '0', 1),
(18, '1-6', '[{"Id":1,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":20},{"Id":2,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":17}]', '[{"npcId":78,"Count":40},{"npcId":79,"Count":12},{"npcId":80,"Count":4}]', '0', 1),
(19, '1-7', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"2000","Map":20},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":17}]', '[{"npcId":78,"Count":40},{"npcId":79,"Count":20}]', '0', 1),
(20, '1-8', '[{"Id":1,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":18},{"Id":2,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":19}]', '[{"npcId":85,"Count":70}]', '0', 1),
(21, '2-5', '[{"Id":1,"x":"2000","y":"2000","newX":"2000","newY":"11500","Map":22},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":23},{"Id":3,"x":"2000","y":"11500","newX":"16000","newY":"1200","Map":16},{"Id":4,"x":"18500","y":"11500","newX":"25000","newY":"2000","Map":29}]', '[{"npcId":71,"Count":25},{"npcId":76,"Count":35},{"npcId":77,"Count":10}]', '0', 2),
(22, '2-6', '[{"Id":1,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":24},{"Id":2,"x":"2000","y":"11500","newX":"2000","newY":"2000","Map":21}]', '[{"npcId":78,"Count":40},{"npcId":79,"Count":12},{"npcId":80,"Count":4}]', '0', 2),
(23, '2-7', '[{"Id":1,"x":"18500","y":"2000","newX":"18500","newY":"11500","Map":24},{"Id":2,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":21}]', '[{"npcId":78,"Count":45},{"npcId":79,"Count":15}]', '0', 2),
(24, '2-8', '[{"Id":1,"x":"18500","y":"11500","newX":"18500","newY":"2000","Map":23},{"Id":2,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":22}]', '[{"npcId":85,"Count":70}]', '0', 2),
(25, '3-5', '[{"Id":1,"x":"2000","y":"11500","newX":"2000","newY":"2000","Map":26},{"Id":2,"x":"18500","y":"11500","newX":"2000","newY":"11500","Map":27},{"Id":3,"x":"2000","y":"2000","newX":"16000","newY":"12000","Map":16},\n{"Id":4,"x":"18500","y":"2000","newX":"25000","newY":"25000","Map":29}]', '[{"npcId":71,"Count":25},{"npcId":76,"Count":35},{"npcId":77,"Count":10}]', '0', 3),
(26, '3-6', '[{"Id":1,"x":"18500","y":"11500","newX":"2000","newY":"11500","Map":28},{"Id":2,"x":"2000","y":"2000","newX":"2000","newY":"11500","Map":25}]', '[{"npcId":78,"Count":40},{"npcId":79,"Count":12},{"npcId":80,"Count":4}]', '0', 3),
(27, '3-7', '[{"Id":1,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":28},{"Id":2,"x":"2000","y":"11500","newX":"18500","newY":"11500","Map":25}]', '[{"npcId":78,"Count":45},{"npcId":79,"Count":15}]', '0', 3),
(28, '3-8', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":27},{"Id":2,"x":"2000","y":"11500","newX":"18500","newY":"11500","Map":26}]', '[{"npcId":85,"Count":70}]', '0', 3),
(29, '4-5', '[{"Id":1,"x":"5500","y":"13500","newX":"10500","newY":"12000","Map":17},{"Id":2,"x":"27000","y":"2000","newX":"18500","newY":"11500","Map":21},{"Id":3,"x":"27000","y":"25000","newX":"18500","newY":"2000","Map":25}]', '[{"npcId":84,"Count":15},{"npcId":71,"Count":15},{"npcId":72,"Count":15},{"npcId":73,"Count":15},{"npcId":74,"Count":15},{"npcId":75,"Count":15},{"npcId":76,"Count":15},{"npcId":77,"Count":15},{"npcId":78,"Count":15},{"npcId":79,"Count":15},{"npcId":85,"Count":15}]', '0', 0),
(0, '0-0', 'DONTREMOVETHIS', '', '0', 0),
(42, '???', '', '[{"npcId":80,"Count":500}]', '0', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `naves`
--

CREATE TABLE `naves` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `velocidad` int(11) NOT NULL,
  `carga` int(11) NOT NULL,
  `lasers` int(11) NOT NULL,
  `generadores` int(11) NOT NULL,
  `vida` bigint(255) NOT NULL,
  `baterias` int(11) NOT NULL,
  `misiles` int(11) NOT NULL,
  `extras` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `naves`
--

INSERT INTO `naves` (`id`, `nombre`, `velocidad`, `carga`, `lasers`, `generadores`, `vida`, `baterias`, `misiles`, `extras`) VALUES
(1, 'Phoenix', 320, 100, 1, 1, 4000, 2000, 100, 1),
(2, 'Yamato', 340, 200, 2, 2, 8000, 4000, 200, 1),
(3, 'Leonov', 380, 1000, 6, 6, 160000, 6000, 300, 1),
(4, 'Defcom', 280, 300, 3, 5, 12000, 8000, 400, 2),
(5, 'Liberator', 300, 400, 4, 6, 16000, 10000, 500, 2),
(6, 'Piranha', 320, 500, 5, 7, 32000, 12000, 600, 2),
(7, 'Nostromo', 340, 600, 6, 8, 64000, 14000, 700, 2),
(8, 'Vengeance', 360, 1000, 10, 10, 180000, 16000, 800, 2),
(9, 'Bigboy', 260, 700, 7, 15, 128000, 18000, 900, 3),
(10, 'Goliath K2', 300, 1500, 15, 15, 256000, 32000, 1600, 3),
(50, 'Red BigBoy', 260, 700, 7, 15, 128000, 18000, 900, 3),
(52, 'Orange Goliath', 300, 1500, 15, 15, 256000, 32000, 1600, 3),
(53, 'Red Goliath', 300, 1500, 15, 15, 256000, 32000, 1600, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npcs`
--

CREATE TABLE `npcs` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `gfx` int(11) NOT NULL DEFAULT '1',
  `pv` int(20) NOT NULL DEFAULT '800',
  `esc` int(20) NOT NULL DEFAULT '0',
  `exp` int(20) NOT NULL DEFAULT '0',
  `hon` int(20) NOT NULL DEFAULT '0',
  `cre` int(20) NOT NULL DEFAULT '0',
  `uri` int(20) NOT NULL DEFAULT '0',
  `xenomit` int(20) NOT NULL DEFAULT '0',
  `prometium` int(20) NOT NULL DEFAULT '0',
  `terbium` int(20) NOT NULL DEFAULT '0',
  `endurium` int(20) NOT NULL DEFAULT '0',
  `prometid` int(20) NOT NULL DEFAULT '0',
  `duranium` int(20) NOT NULL DEFAULT '0',
  `promerium` int(20) NOT NULL DEFAULT '0',
  `dmg` varchar(255) NOT NULL DEFAULT 'D10,20',
  `IA` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `npcs`
--

INSERT INTO `npcs` (`id`, `nombre`, `gfx`, `pv`, `esc`, `exp`, `hon`, `cre`, `uri`, `xenomit`, `prometium`, `terbium`, `endurium`, `prometid`, `duranium`, `promerium`, `dmg`, `IA`, `speed`) VALUES
(1, '-=[ Streuner ]=-', 84, 800, 400, 400, 2, 400, 1, 0, 10, 0, 10, 0, 0, 0, '20', 0, 280),
(2, '-=[ Lordakia ]=-', 71, 2000, 2000, 800, 4, 800, 2, 0, 20, 20, 20, 0, 0, 0, '80', 1, 320),
(3, '-=[ Saimon ]=-', 75, 6000, 3000, 1600, 8, 1600, 4, 0, 40, 40, 40, 2, 2, 0, '200', 1, 320),
(4, '-=[ Mordon ]=-', 73, 20000, 10000, 3200, 16, 6400, 8, 0, 80, 80, 80, 8, 8, 1, '300', 0, 125),
(5, '-=[ Devolarium ]=-', 72, 100000, 100000, 6400, 32, 51200, 16, 0, 100, 100, 100, 16, 16, 2, '1000', 1, 200),
(6, '-=[ Sibelon ]=-', 74, 200000, 200000, 12800, 64, 102400, 32, 0, 200, 200, 200, 32, 32, 4, '2400', 1, 100),
(7, '-=[ Sibelonit ]=-', 76, 40000, 40000, 3200, 16, 12800, 12, 0, 100, 100, 100, 8, 8, 1, '1000', 1, 320),
(8, '-=[ Lordakium ]=-', 77, 300000, 200000, 25600, 128, 204800, 64, 0, 300, 300, 300, 64, 64, 8, '3150', 2, 230),
(9, '-=[ Kristallin ]=-', 78, 50000, 40000, 6400, 32, 12800, 16, 0, 100, 100, 100, 16, 16, 1, '1500', 1, 320),
(10, '-=[ Kristallon ]=-', 79, 400000, 300000, 51200, 256, 409600, 128, 0, 300, 300, 300, 128, 128, 16, '4050', 2, 250),
(11, '-=[ StreuneR ]=-', 85, 20000, 10000, 3200, 16, 6400, 8, 0, 80, 80, 80, 8, 8, 0, '400', 0, 280),
(12, '-=[ Protegit ]=-', 81, 50000, 40000, 6400, 32, 12800, 16, 0, 100, 100, 100, 16, 16, 2, '1300', 3, 420),
(13, '-=[ Cubikon ]=-', 80, 1600000, 1200000, 512000, 4096, 1638400, 1024, 64, 1200, 1200, 1200, 512, 512, 64, '0', 4, 30);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `objetos`
--

CREATE TABLE `objetos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `gfx` int(50) NOT NULL DEFAULT '0',
  `efectos` text NOT NULL,
  `uridiums` double(255,1) NOT NULL DEFAULT '-1.0',
  `creditos` int(255) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `objetos`
--

INSERT INTO `objetos` (`id`, `nombre`, `tipo`, `gfx`, `efectos`, `uridiums`, `creditos`) VALUES
(1, 'LF-1', 'laser', 1, 'D40', -1.0, 10000),
(2, 'MP-1', 'laser', 2, 'D60', -1.0, 40000),
(3, 'LF-2', 'laser', 3, 'D100', 5000.0, -1),
(4, 'LF-3', 'laser', 4, 'D150', 10000.0, -1),
(5, 'HST-1', 'laser', 11, 'HM3', -1.0, 500000),
(6, 'HST-2', 'laser', 12, 'HM5', 15000.0, -1),
(7, 'LCB-10', 'battery', 1, '', -1.0, 10),
(8, 'MCB-25', 'battery', 2, '', 0.5, -1),
(9, 'MCB-50', 'battery', 3, '', 1.0, -1),
(10, 'UCB-100', 'battery', 4, '', 2.5, -1),
(11, 'SAB-50', 'battery', 5, '', 1.0, -1),
(12, 'RSB-75', 'battery', 6, '', 5.0, -1),
(13, 'R-310', 'rocket', 1, 'D1000', -1.0, 100),
(14, 'PLT-2026', 'rocket', 2, 'D2000', -1.0, 500),
(15, 'PLT-2021', 'rocket', 3, 'D4000', 5.0, -1),
(16, 'PLD-8', 'rocket', 4, 'DIS3', 100.0, -1),
(17, 'PLT-3030', 'rocket', 5, 'D6000', 7.0, -1),
(18, 'ACM-1', 'rocket', 11, 'DM20', 100.0, -1),
(19, 'HSTRM-01', 'rocket', 50, 'D5000', 25.0, -1),
(20, 'UBR-100', 'rocket', 51, 'D8000', 30.0, -1),
(21, 'ECO-10', 'rocket', 52, 'D2400', -1.0, 1500),
(22, 'G3N-1010', 'generator', 1, 'V2', -1.0, 2000),
(23, 'G3N-2010', 'generator', 2, 'V3', -1.0, 4000),
(24, 'G3N-3210', 'generator', 3, 'V4', -1.0, 8000),
(25, 'G3N-3310', 'generator', 4, 'V5', -1.0, 16000),
(26, 'G3N-6900', 'generator', 5, 'V7', 1000.0, -1),
(27, 'G3N-7900', 'generator', 6, 'V10', 2000.0, -1),
(28, 'SG3N-A01', 'generator', 7, 'E1000|40', -1.0, 8000),
(29, 'SG3N-A02', 'generator', 8, 'E2000|50', -1.0, 16000),
(30, 'SG3N-B01', 'generator', 9, 'E4000|70', 2500.0, -1),
(31, 'SG3N-A03', 'generator', 10, 'E5000|60', -1.0, 256000),
(32, 'SG3N-B02', 'generator', 11, 'E10000|80', 10000.0, -1),
(33, 'LF-4', 'laser', 0, 'D200', 50000.0, -1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `portales`
--

CREATE TABLE `portales` (
  `ID` int(11) NOT NULL,
  `factionID` int(11) NOT NULL COMMENT '1: MMO 2: EIC 3:VRU',
  `keyPortal` int(11) NOT NULL DEFAULT '1' COMMENT 'swfID',
  `mapID` int(11) NOT NULL,
  `posX` int(11) NOT NULL DEFAULT '0',
  `posY` int(11) NOT NULL DEFAULT '0',
  `factionScrap` int(11) NOT NULL DEFAULT '1' COMMENT '1: MMO 2: EIC 3:VRU',
  `toMapID` int(11) NOT NULL,
  `toPos` varchar(255) NOT NULL,
  `reqNivel` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `portales`
--

INSERT INTO `portales` (`ID`, `factionID`, `keyPortal`, `mapID`, `posX`, `posY`, `factionScrap`, `toMapID`, `toPos`, `reqNivel`) VALUES
(1, 1, 1, 1, 18500, 11500, 0, 2, '2000|2000', 1),
(2, 1, 1, 2, 2000, 2000, 0, 1, '18500|11500', 1),
(3, 1, 1, 2, 18500, 11500, 0, 4, '2000|2000', 1),
(4, 1, 1, 2, 18500, 2000, 0, 3, '2000|11500', 1),
(5, 1, 1, 3, 2000, 11500, 0, 2, '18500|2000', 1),
(6, 1, 1, 3, 18500, 11500, 0, 4, '18500|2000', 1),
(7, 1, 1, 3, 18500, 2000, 0, 7, '2000|11500', 1),
(8, 1, 1, 4, 2000, 2000, 0, 2, '18500|11500', 1),
(9, 1, 1, 4, 18500, 2000, 0, 3, '18500|11500', 1),
(10, 1, 1, 4, 18500, 11500, 0, 12, '2000|2000', 1),
(11, 1, 1, 4, 19500, 7000, 0, 13, '2000|7000', 1),
(12, 2, 1, 5, 2000, 11500, 0, 6, '18500|2000', 1),
(13, 2, 1, 6, 18500, 2000, 0, 5, '2000|11500', 1),
(14, 2, 1, 6, 18500, 11500, 0, 8, '2000|2000', 1),
(15, 2, 1, 7, 18500, 2000, 0, 6, '2000|11500', 1),
(16, 2, 1, 7, 2000, 11500, 0, 3, '18500|2000', 1),
(17, 2, 1, 7, 18500, 11500, 0, 8, '18500|2000', 1),
(18, 2, 1, 8, 2000, 2000, 0, 6, '18500|11500', 1),
(19, 2, 1, 8, 18500, 2000, 0, 7, '18500|11500', 1),
(20, 2, 1, 8, 2000, 11500, 0, 11, '2000|2000', 1),
(21, 2, 1, 8, 10000, 12000, 0, 11, '10700|1200', 1),
(22, 3, 1, 9, 2000, 2000, 1, 10, '18500|11500', 1),
(23, 3, 1, 10, 18500, 11500, 1, 9, '2000|2000', 1),
(24, 3, 1, 10, 18500, 2000, 1, 11, '18500|11500', 1),
(25, 3, 1, 10, 2000, 2000, 1, 12, '18500|11500', 1),
(26, 3, 1, 11, 18500, 11500, 1, 10, '18500|2000', 1),
(27, 3, 1, 11, 2000, 11500, 1, 12, '18500|2000', 1),
(28, 3, 1, 11, 2000, 2000, 1, 8, '2000|11500', 1),
(29, 3, 1, 12, 18500, 2000, 1, 10, '2000|2000', 1),
(30, 3, 1, 12, 18500, 2000, 1, 11, '2000|11500', 1),
(31, 3, 1, 12, 2000, 2000, 1, 4, '18500|11500', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rangos`
--

CREATE TABLE `rangos` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `porcentaje` double(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rangos`
--

INSERT INTO `rangos` (`id`, `nombre`, `porcentaje`) VALUES
(1, 'Piloto Básico', 20.00),
(2, 'Piloto', 12.39),
(3, 'Jefe Piloto', 10.00),
(4, 'Sargento Básico', 9.00),
(5, 'Sargento', 8.00),
(6, 'Sargento Mayor', 7.00),
(7, 'Teniente Básico', 6.00),
(8, 'Teniente', 5.00),
(9, 'Teniente Mayor', 4.50),
(10, 'Capitán Básico', 4.00),
(11, 'Capitán', 3.50),
(12, 'Capitán Bayor', 3.00),
(13, 'Mayor Básico', 2.50),
(14, 'Mayor', 2.00),
(15, 'Jefe Mayor', 1.50),
(16, 'Coronel Básico', 1.00),
(17, 'Coronel', 0.50),
(18, 'Coronel Bayor', 0.10),
(19, 'General Básico', 0.01),
(20, 'General', 0.00),
(99, 'Administrador', 0.00),
(21, 'Administrador', 0.00),
(22, 'Deshonorable', 0.00);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `servidores`
--

CREATE TABLE `servidores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1' COMMENT '1: Activado | 0: Desactivado',
  `idioma` varchar(50) NOT NULL DEFAULT 'Español'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `servidores`
--

INSERT INTO `servidores` (`id`, `nombre`, `estado`, `idioma`) VALUES
(1, 'PoopOrbit', 1, 'Español');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `settings`
--

CREATE TABLE `settings` (
  `userID` int(11) NOT NULL,
  `SET` varchar(255) NOT NULL DEFAULT '1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|0|0|1|1|0|0|1|1|1|1',
  `MINIMAP_SCALE` varchar(255) NOT NULL DEFAULT '11',
  `DISPLAY_PLAYER_NAMES` varchar(255) NOT NULL DEFAULT '1',
  `DISPLAY_CHAT` varchar(255) NOT NULL DEFAULT '1',
  `PLAY_MUSIC` varchar(255) NOT NULL DEFAULT '0',
  `PLAY_SFX` varchar(255) NOT NULL DEFAULT '1',
  `BAR_STATUS` varchar(255) NOT NULL DEFAULT '1',
  `WINDOW_SETTINGS` varchar(255) NOT NULL DEFAULT '0,9,4,1,1,232,3,1,3,780,388,1,5,5,5,0,10,5,288,0,13,187,50,0,20,5,402,1,22,347,188,0,23,458,1,1,24,284,25,0',
  `AUTO_REFINEMENT` varchar(255) NOT NULL DEFAULT '0',
  `QUICKSLOT_STOP_ATTACK` varchar(255) NOT NULL DEFAULT '1',
  `DOUBLECLICK_ATTACK` varchar(255) NOT NULL DEFAULT '1',
  `AUTO_START` varchar(255) NOT NULL DEFAULT '0',
  `DISPLAY_NOTIFICATIONS` varchar(255) NOT NULL DEFAULT '1',
  `SHOW_DRONES` varchar(255) NOT NULL DEFAULT '1',
  `DISPLAY_WINDOW_BACKGROUND` varchar(255) NOT NULL DEFAULT '1',
  `ALWAYS_DRAGGABLE_WINDOWS` varchar(255) NOT NULL DEFAULT '1',
  `PRELOAD_USER_SHIPS` varchar(255) NOT NULL DEFAULT '0',
  `QUALITY_PRESETTING` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_CUSTOMIZED` varchar(255) NOT NULL DEFAULT '0',
  `QUALITY_BACKGROUND` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_POIZONE` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_SHIP` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_ENGINE` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_COLLECTABLE` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_ATTACK` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_EFFECT` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_EXPLOSION` varchar(255) NOT NULL DEFAULT '3',
  `QUICKBAR_SLOT` varchar(255) NOT NULL DEFAULT '-1,-1,-1,-1,-1,-1,-1,-1,-1,-1',
  `SLOTMENU_POSITION` varchar(255) NOT NULL DEFAULT '313,451',
  `SLOTMENU_ORDER` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `skylabs`
--

CREATE TABLE `skylabs` (
  `id` int(11) NOT NULL,
  `gen_prometium` int(11) NOT NULL DEFAULT '1',
  `prometium` int(11) NOT NULL DEFAULT '0',
  `gen_endurium` int(11) NOT NULL DEFAULT '1',
  `endurium` int(11) NOT NULL DEFAULT '0',
  `gen_terbium` int(11) NOT NULL DEFAULT '1',
  `terbium` int(11) NOT NULL DEFAULT '0',
  `transporte` int(11) NOT NULL DEFAULT '1',
  `almacen` int(11) NOT NULL DEFAULT '1',
  `mod_solar` int(11) NOT NULL DEFAULT '1',
  `mod_base` int(11) NOT NULL DEFAULT '1',
  `gen_prometid` int(11) NOT NULL DEFAULT '1',
  `prometid` int(11) NOT NULL DEFAULT '0',
  `gen_duranium` int(11) NOT NULL DEFAULT '1',
  `duranium` int(11) NOT NULL DEFAULT '0',
  `gen_promerium` int(11) NOT NULL DEFAULT '1',
  `promerium` int(11) NOT NULL DEFAULT '0',
  `mod_xeno` int(11) NOT NULL DEFAULT '1',
  `gen_seprom` int(11) NOT NULL,
  `seprom` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `skylabs`
--

INSERT INTO `skylabs` (`id`, `gen_prometium`, `prometium`, `gen_endurium`, `endurium`, `gen_terbium`, `terbium`, `transporte`, `almacen`, `mod_solar`, `mod_base`, `gen_prometid`, `prometid`, `gen_duranium`, `duranium`, `gen_promerium`, `promerium`, `mod_xeno`, `gen_seprom`, `seprom`) VALUES
(2, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `titles`
--

CREATE TABLE `titles` (
  `id` int(4) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `titles`
--

INSERT INTO `titles` (`id`, `title`) VALUES
(1, 'DEVELOPER'),
(2, 'ADMINISTRATOR'),
(3, 'MODERATOR'),
(4, 'THE LAW'),
(5, 'FUCK YOU'),
(6, 'Just testing');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `useronline`
--

CREATE TABLE `useronline` (
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `useronline`
--

INSERT INTO `useronline` (`timestamp`, `ip`) VALUES
(1471392658, '95.222.229.88');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vants`
--

CREATE TABLE `vants` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ranuras` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `vants`
--

INSERT INTO `vants` (`id`, `nombre`, `ranuras`) VALUES
(1, 'Flax', '1'),
(2, 'Iris', '2');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `banip`
--
ALTER TABLE `banip`
  ADD PRIMARY KEY (`ip`);

--
-- Indizes für die Tabelle `clanes`
--
ALTER TABLE `clanes`
  ADD PRIMARY KEY (`clanID`);

--
-- Indizes für die Tabelle `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `experiencias`
--
ALTER TABLE `experiencias`
  ADD PRIMARY KEY (`nivel`);

--
-- Indizes für die Tabelle `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `naves`
--
ALTER TABLE `naves`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `npcs`
--
ALTER TABLE `npcs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `objetos`
--
ALTER TABLE `objetos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`id`),
  ADD KEY `2` (`nombre`),
  ADD KEY `3` (`tipo`);

--
-- Indizes für die Tabelle `portales`
--
ALTER TABLE `portales`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id` (`ID`);

--
-- Indizes für die Tabelle `rangos`
--
ALTER TABLE `rangos`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `servidores`
--
ALTER TABLE `servidores`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- Indizes für die Tabelle `skylabs`
--
ALTER TABLE `skylabs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`timestamp`,`ip`),
  ADD KEY `ip` (`ip`);

--
-- Indizes für die Tabelle `vants`
--
ALTER TABLE `vants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT für Tabelle `maps`
--
ALTER TABLE `maps`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT für Tabelle `npcs`
--
ALTER TABLE `npcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT für Tabelle `skylabs`
--
ALTER TABLE `skylabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;