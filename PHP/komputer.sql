-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2018 at 02:12 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailtransaksi`
--

CREATE TABLE `detailtransaksi` (
  `ID` int(10) NOT NULL,
  `NoNota` varchar(4) DEFAULT NULL,
  `KodePrd` varchar(6) DEFAULT NULL,
  `Harga` int(10) DEFAULT NULL,
  `Jml` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `KodeJns` varchar(3) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`KodeJns`, `Nama`) VALUES
('ACC', 'ACESSORIES'),
('CAB', 'cable'),
('CAS', 'cassing'),
('CDR', 'cdrom'),
('DSK', 'meja'),
('FLP', 'floppy'),
('HDD', 'harddisk'),
('hhh', 'fgdfgd'),
('KYB', 'keyboard'),
('LAN', 'lancard'),
('MBD', 'mainboard'),
('MEM', 'memory'),
('MOD', 'modem'),
('MON', 'monitor'),
('MOS', 'mouse'),
('PRC', 'processor'),
('PRN', 'printer'),
('rrr', 'fff'),
('SCN', 'scanner'),
('SND', 'soundcard'),
('SPK', 'speaker'),
('STV', 'stavolt'),
('UPS', 'ups'),
('VGA', 'vgacard');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `NoPeg` varchar(5) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Jabatan` varchar(50) DEFAULT NULL,
  `JK` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`NoPeg`, `pass`, `Nama`, `Jabatan`, `JK`) VALUES
('K001', '123', 'Eko Setijadi', '1', '1'),
('K002', '111', 'Abi Izza', '1', '1'),
('KS01', '789', 'Nurma S', '4', '2'),
('KS02', '111', 'Fika M', '4', '2'),
('KS06', '888', 'Tetap Paijo', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `KodePlg` int(10) NOT NULL,
  `Kategori` varchar(10) DEFAULT NULL,
  `Nama` varchar(20) DEFAULT NULL,
  `ALamat` varchar(50) DEFAULT NULL,
  `Kota` varchar(50) DEFAULT NULL,
  `NoTelp` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`KodePlg`, `Kategori`, `Nama`, `ALamat`, `Kota`, `NoTelp`) VALUES
(10197002, 'Personal', 'FREssssI ARYANaaaaTO', 'JL. KAMPAR NO. 06', 'SURABAYA', '031-8967201'),
(10197003, 'Company', 'FAZRIN FABI YUSA', 'JL. MERDEKA NO. 51', 'NGANJUK', '1223'),
(10197004, 'Personal', 'AdTIK KRISNA WATI', 'JL. BARU 36', 'BLITAR', '2132'),
(10197005, 'Company', 'AJENG EVA TRISNAWATI', 'JL. PEKALONGAN 12', 'BLITAR', '0341-586457'),
(10197006, 'Personal', 'AYU PUSPITASARI', 'JL. SAWOJAJAR 11', 'KEDIRI', '4324'),
(10197007, 'Personal', 'ENI WIDIAWATI', 'JL. TANJUNG PUTRA Y V22', 'MALANG', '0341-245824'),
(10197008, 'Company', 'NILA FUJI RATNA DEWI', 'JL. BANTEN 109', 'TUMPANG', '0341-568547'),
(10197009, 'Company', 'PRASETYO DWI SAPUTRO', 'JL. PUTRI KUNING 23', 'MADURA', '34'),
(10197010, 'Personal', 'FIFIN EVIAN DEWI', 'JL. TRUNOJOYO 12', 'MALANG', '43243'),
(10197011, 'Personal', 'REINA ANGRAINI', 'JL. SUMATRA 12', 'SURABAYA', '031-8759684'),
(10197012, 'Company', 'JAYA SANTOSA', 'JL. GRIYASANTA 13', 'MALANG', '0341-564685'),
(10197013, 'Company', 'WIJAYA SALEH', 'JL. GIRILAYA 15', 'SIDOARJO', '0341-576558'),
(10197014, 'Personal', 'ANDRE HEHANUSA', 'JL. BATU PERMAI 1', 'MALANG', '0341-564857'),
(10197015, 'Company', 'RIRIN EVI LESTARI', 'JL. KAWI 51', 'JAKARTA', '021-5685475'),
(10197016, 'Personal', 'BAMBANG HERU', 'JL. CIPUNEGARA 45', 'SEMARANG', '432'),
(10197017, 'Company', 'FELINDA', 'JL. CANGAK NO. 21 SUKUN', 'NGANJUK', '32432'),
(10197018, 'Personal', 'DESY NATALIA', 'JL. LAHOR NO. 72', 'TUBAN', '324'),
(10197019, 'Personal', 'HENDRA SUFIYANTO', 'JL. MADYASARI 18', 'MALANG', '0341-568595');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `KodePrd` varchar(6) NOT NULL,
  `Jenis` varchar(3) DEFAULT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Merk` varchar(20) DEFAULT NULL,
  `Harga` double DEFAULT NULL,
  `Stok` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`KodePrd`, `Jenis`, `Nama`, `Merk`, `Harga`, `Stok`) VALUES
('ACC005', 'ACC', 'canon bc21E', 'CANON', 306000, NULL),
('ACC006', 'ACC', 'CD RW verbatim', 'VERBATIM', 18000, NULL),
('ACC007', 'ACC', 'CD-R verbatim COLOR', 'VERBATIM', 9000, NULL),
('ACC008', 'ACC', 'CD-R verbatim POLOS', 'VERBATIM', 9000, NULL),
('ACC011', 'ACC', 'Data switch 1-4 auto atten', 'DATASWITCH', 139500, NULL),
('ACC012', 'ACC', 'Data switch auto 1-2 atten', 'DATASWITCH', 85500, NULL),
('CAB001', 'CAB', 'Cable Belden RJ 45/UTP USA Ench', 'USA', 423000, NULL),
('CAB002', 'CAB', 'Cable Belden RJ 45/UTP Australia Ench', 'AUS', 369000, NULL),
('CAB003', 'CAB', 'Kabel USB', 'UNKNOW', 10800, NULL),
('CAB004', 'CAB', 'Kabel Modem 25-25', 'UNKNOW', 9000, NULL),
('CAB005', 'CAB', 'Kabel Printer 25 pin mulding', 'UNKNOW', 9000, NULL),
('CAB006', 'CAB', 'Kabel Printer 25 pin mulding GOLD', 'UNKNOW', 15750, NULL),
('CAB007', 'CAB', 'Kabel Serial', 'UNKNOW', 8100, NULL),
('CAS001', 'CAS', 'ATX Middle Casetech Arcadia 250W', 'CASETECH', 202500, NULL),
('CAS002', 'CAS', 'ATX Middle Casetech Omega 250W', 'CASETECH', 202500, NULL),
('CAS003', 'CAS', 'ATX Middle Casetech NOKIA ps 250W', 'CASETECH', 171000, NULL),
('CAS004', 'CAS', 'ATX Middle Casetech NOKIA PIV 400W', 'CASETECH', 171000, NULL),
('CAS005', 'CAS', 'ATX Middle Simbada AX19,AX22,AX23 PIV ps 300W', 'SIMBADA', 198000, NULL),
('CAS006', 'CAS', 'ATX Middle Aibo PC115 PIV ps 300W 2 fan internal', 'AIBO', 202500, NULL),
('CAS007', 'CAS', 'ATX Middle Aibo PC146  PIV ps 300W 2 fan internal', 'AIBO', 211500, NULL),
('CAS008', 'CAS', 'ATX Middle Aibo PC140P  PIV ps 300W 2 fan intenal', 'AIBO', 81000, NULL),
('CAS009', 'CAS', 'Power Supply ATX 250Watt', 'AIBO', 135000, NULL),
('DSK001', 'DSK', 'Meja Aztech CD 300(Cherry) ukuran 110x77x130 cm', 'AZTECH', 468000, NULL),
('DSK002', 'DSK', 'Meja Glory 80cm/ Beech', 'GLORY', 72000, NULL),
('DSK003', 'DSK', 'Meja Aztech CD 802 (Grey) ukuran 80x40x75cm', 'AZTECH', 81000, NULL),
('DSK004', 'DSK', 'Meja Aztech CD 800 (Grey)ukuran 80x40x75cm', 'AZTECH', 126000, NULL),
('DSK005', 'DSK', 'Meja Aztech CD 800 (Beech)ukuran 80x40x75cm', 'AZTECH', 130500, NULL),
('DSK006', 'DSK', 'Meja Aztech CD 800 P(Grey)ukuran 80x40x75cm', 'AZTECH', 130500, NULL),
('DSK007', 'DSK', 'Meja Aztech CD 800 P(Beech)ukuran 80x40x75cm', 'AZTECH', 144000, NULL),
('DSK008', 'DSK', 'Meja Aztech DC 1101 (Grey)ukuran 110x48x75cm', 'AZTECH', 162000, NULL),
('DSK009', 'DSK', 'Meja Aztech DC 1102 (Beech)ukuran 110x48x75cm', 'AZTECH', 202500, NULL),
('DSK010', 'DSK', 'Meja Aztech DC 1201 (Grey)ukuran 120x48x75cm', 'AZTECH', 171000, NULL),
('DSK011', 'DSK', 'Meja Aztech CD 1202 (Grey)ukuran 120x48x75cm', 'AZTECH', 211500, NULL),
('DSK012', 'DSK', 'Meja Aztech CD 1202 (Beech)ukuran 120x48x75cm', 'AZTECH', 225000, NULL),
('DSK013', 'DSK', 'Meja Aztech CD 1207 (Grey)ukuran 120x60x78.5cm', 'AZTECH', 405000, NULL),
('DSK014', 'DSK', 'Meja Aztech CD 1208 (Beech)ukuran 120x60x78.5cm', 'AZTECH', 486000, NULL),
('DSK015', 'DSK', 'Meja Aztech CD 1209 (Beech)ukuran 120x60x78.5cm', 'AZTECH', 486000, NULL),
('DSK016', 'DSK', 'Meja Aztech  CD 808 M ukuran 80x60x78.5cm', 'AZTECH', 297000, NULL),
('DSK017', 'DSK', 'Meja Aztech CD 809 M  ukuran 120x60x78.5cm', 'AZTECH', 427500, NULL),
('DSK018', 'DSK', 'Meja Aztech CD 710(Cherry) ukuran 83x80x125cm', 'AZTECH', 342000, NULL),
('MDM001', 'MDM', 'Netto Dragon 56K Int', 'DRAGON', 90000, NULL),
('MDM002', 'MDM', 'PC Tel 56K Int', 'PC TEL', 90000, NULL),
('MDM003', 'MDM', 'ACCTON Rockwell(Conexant) 56K Int', 'CONEXANT', 103500, NULL),
('MDM004', 'MDM', 'Rockwell(Conexant) 56K Int', 'CONEXANT', 90000, NULL),
('MDM005', 'MDM', 'Rockwell 56K Ext USB', 'ROCKWELL', 216000, NULL),
('MDM006', 'MDM', 'Intel 56K Ext', 'INTEL', 243000, NULL),
('MDM007', 'MDM', 'Dlink 56k Ext', 'DLINK', 236250, NULL),
('MDM008', 'MDM', 'Dlink 56k Int', 'DLINK', 117000, NULL),
('MON001', 'MON', 'ADVANCE 14inchi', 'ADVANCE', 657000, NULL),
('MON002', 'MON', 'GTC VM468(0,28)', 'GTC', 657000, NULL),
('MON003', 'MON', 'NEWCCON', 'NEWCCON', 585000, NULL),
('MON004', 'MON', 'SMART', 'SMART', 612000, NULL),
('MON005', 'MON', 'SPC HURRICANE/PEACOCK', 'SPC', 594000, NULL),
('MON006', 'MON', 'ACER 15 AC 501', 'ACER', 792000, NULL),
('MON007', 'MON', 'ADVANCE 15inchi', 'ADVANCE', 729000, NULL),
('MON008', 'MON', 'AOC 5EN 15inchi', 'AOC 5EN', 774000, NULL),
('MON009', 'MON', 'GTC FUTURA(0,28)DIGITAL/OSD', 'GTC', 621000, NULL),
('MON010', 'MON', 'GTC ULTIMATE(0,28)DIGITAL/OSD 1280X1024', 'GTC', 738000, NULL),
('MON011', 'MON', 'GTC MILLENIA(0,28)DIGITAL/OSD', 'GTC', 801000, NULL),
('MON012', 'MON', 'LG I5inchi 500G DIGITAL', 'LG', 765000, NULL),
('MON013', 'MON', 'NEWCCON', 'NEWCCON', 666000, NULL),
('MON014', 'MON', 'PHILIPS 105E 15inchi', 'PHILIPS', 792000, NULL),
('MON015', 'MON', 'SAMSUNG 551V', 'SAMSUNG', 756000, NULL),
('MON016', 'MON', 'VIEWSONIC E50C (15inchi/0,27/1024x768)', 'VIEWSONIC', 747000, NULL),
('MON017', 'MON', 'VIEWSONIC E55 (15inchi/0,27/1280x1024)', 'VIEWSONIC', 990000, NULL),
('MON018', 'MON', 'ACER 17 AC711', 'ACER', 1152000, NULL),
('MON019', 'MON', 'ACER 17 AF705 REAL FLAT 17', 'ACER', 1395000, NULL),
('MON020', 'MON', 'ADVANCE 17inchi', 'ADVANCE', 918000, NULL),
('MON021', 'MON', 'AOC 7V 17inch', 'AOC', 1143000, NULL),
('MON022', 'MON', 'AOC 7FHB 17inch FLAT', 'AOC', 1323000, NULL),
('MON023', 'MON', 'GTC Ultimate 17inch(0,27)Digital/OSD', 'GTC', 1008000, NULL),
('MON024', 'MON', 'GTC Millenia 17inch(0,27)Digital/OSD', 'GTC', 1134000, NULL),
('MON025', 'MON', 'GTC Millenia/FLAT 17inch(0,25)Digital/OSD 1920x1440', 'GTC', 1188000, NULL),
('MON026', 'MON', 'GTC Primera TD770 17inch(0,24)SonyTrinitron/1280x1024', 'GTC', 1278000, NULL),
('MON027', 'MON', 'GTC Primera HD786 17inch(0,24)SonyTrinitron/1600x1280', 'GTC', 1656000, NULL),
('MON028', 'MON', 'LG 17inch 700S Digital', 'LG', 1125000, NULL),
('MON029', 'MON', 'LG 17inch E700B Digital Flat', 'LG', 1377000, NULL),
('MON030', 'MON', 'LG 17inch F700B Digital Flatron', 'LG', 1665000, NULL),
('MON031', 'MON', 'LG 17inch F700P Digital Flatron', 'LG', 2070000, NULL),
('MON032', 'MON', 'PHILIPS 107E 17inch', 'PHILIPS', 1116000, NULL),
('MON033', 'MON', 'PHILIPS 107SLF 17inch', 'PHILIPS', 1206000, NULL),
('MON034', 'MON', 'PHILIPS 107TLF 17inch Flat', 'PHILIPS', 1413000, NULL),
('MON035', 'MON', 'PHILIPS 107X 17inch,1280X1024,LF,FLAT', 'PHILIPS', 1530000, NULL),
('MON036', 'MON', 'SAMSUNG 753S 17inch', 'SAMSUNG', 1170000, NULL),
('MON037', 'MON', 'SAMSUNG 753DFX 17inch FLAT', 'SAMSUNG', 1206000, NULL),
('MON038', 'MON', 'VIEWSONIC E70 (17inch/0,27/1280x1024)', 'VIEWSONIC', 1170000, NULL),
('MON039', 'MON', 'VIEWSONIC E70f-SB(17inch/0,24/1600x1200)P.Flat/DualTone', 'VIEWSONIC', 1431000, NULL),
('MON040', 'MON', 'VIEWSONIC P70f (17inch/0,24/1600x1200)P.Flat/DualTone', 'VIEWSONIC', 2106000, NULL),
('MON041', 'MON', 'GTC Milenia 19inch(0,27)Digital/OSD', 'GTC', 1971000, NULL),
('MON042', 'MON', 'GTC Millenia/FLAT 19inch (0,25)Digital/OSD 1920X1440', 'GTC', 2070000, NULL),
('MON043', 'MON', 'LG 995FT 19inch FLATTRON', 'LG', 2835000, NULL),
('MON044', 'MON', 'PHILIPS 107XLF 17inch Flat', 'PHILIPS', 1539000, NULL),
('MON045', 'MON', 'PHILIPS 107BLF 17inch Flat', 'PHILIPS', 1683000, NULL),
('MON046', 'MON', 'VIEWSONICG90f(19inch/0,25/1600x1200)P.Flat', 'VIEWSONIC', 3240000, NULL),
('MON047', 'MON', 'VIEWSONICG220f(21inch/0,25/2048x1536)P.Flat', 'VIEWSONIC', 5130000, NULL),
('MON048', 'MON', 'VIEWSONIC P225f (22inch/0,25/2048x1536)P.Flat(BNC)', 'VIEWSONIC', 7155000, NULL),
('MON049', 'MON', 'SMART DIGITAL', 'SMART DIGITAL', 657000, NULL),
('MON050', 'MON', 'SPC Digital 15inch', 'SPC', 657000, NULL),
('MON052', 'MON', '15inch Digital Samsung(second)', 'SAMSUNG', 315000, NULL),
('MOS001', 'MOS', 'MOUSE Speed 2 button serial SPMS11', 'SPEED', 18000, NULL),
('MOS002', 'MOS', 'MOUSE Speed 2 button ps2 SPMS11', 'SPEED', 18000, NULL),
('MOS003', 'MOS', 'MOUSE Speed ps2 scroll color SPMS23', 'SPEED', 31500, NULL),
('MOS004', 'MOS', 'MOUSE Speed Optical ps2 scroll color SPMS31', 'SPEED', 85500, NULL),
('MOS005', 'MOS', 'Net scroll serial (genius)', 'GENIUS', 5000, NULL),
('MOS006', 'MOS', 'Net scroll PS2 (genius)', 'GENIUS', 5000, NULL),
('MOS007', 'MOS', 'Logitech  S-34 ps2', 'LOGITECH', 54000, NULL),
('MOS008', 'MOS', 'Logitech scroll ps2', 'LOGITECH', 67500, NULL),
('MOS009', 'MOS', 'Logitech First box ps2', 'LOGITECH', 72000, NULL),
('MOS010', 'MOS', 'Trekker ps2', 'TREKKER', 45000, NULL),
('MOS011', 'MOS', 'Microsoft ps2', 'MICROSOFT', 45000, NULL),
('MOS012', 'MOS', 'A4 TECH Fast Mouse OK-820', 'A4 TECH', 27000, NULL),
('MOS013', 'MOS', 'A4 TECH Single Scroll SWW36', 'A4 TECH', 49500, NULL),
('MOS014', 'MOS', 'A4 TECH Single Scroll SWW37', 'A4 TECH', 45000, NULL),
('MOS015', 'MOS', 'A4 TECH Fastnet D Scroll WWW35', 'A4 TECH', 53100, NULL),
('MOS016', 'MOS', 'A4 TECH Fastnet D Scroll WWW31', 'A4 TECH', 81000, NULL),
('MOS017', 'MOS', 'A4 TECH Optical S Scroll SWOP25', 'A4 TECH', 90000, NULL),
('MOS018', 'MOS', 'A4 TECH Optical D Scroll WOP35', 'A4 TECH', 99000, NULL),
('MOS019', 'MOS', 'A4 TECH Optical D Scroll WOP35 PU', 'A4 TECH', 117000, NULL),
('MOS020', 'MOS', 'A4 TECH Wireless, S Scroll RFSW25', 'A4 TECH', 117000, NULL),
('MOS021', 'MOS', 'A4 TECH Wireless, S Scroll RFSW27', 'A4 TECH', 117000, NULL),
('MOS022', 'MOS', 'A4 TECH Wireless, S Scroll RFW25', 'A4 TECH', 126000, NULL),
('MOS023', 'MOS', 'A4 TECH Wireless, S Scroll RFW33', 'A4 TECH', 126000, NULL),
('MOS024', 'MOS', 'A4 TECH Wireless, Optical, S Scroll RFSOP35', 'A4 TECH', 225000, NULL),
('PRC001', 'PRC', 'P-Intel PPGA Cel 1.20AGB', 'INTEL', 441000, NULL),
('PRC002', 'PRC', 'P-Intel PPGA Cel 1.3AGB', 'INTEL', 549000, NULL),
('PRC003', 'PRC', 'P-Intel PPGA Cel 1.7GB for MB PIV', 'INTEL', 522000, NULL),
('PRC004', 'PRC', 'P-Intel PIII 1,2 GB Tualatin box socket 370', 'INTEL', 1026000, NULL),
('PRC005', 'PRC', 'P-Intel PiV 1,7GB 256 Socket 478', 'INTEL', 1179000, NULL),
('PRC006', 'PRC', 'P-Intel PiV 1,8GB 512 Socket 478', 'INTEL', 1350000, NULL),
('PRC007', 'PRC', 'P-Intel PiV 2GB  512 Socket 478', 'INTEL', 1530000, NULL),
('PRC008', 'PRC', 'P-Intel PiV 2.4GB  512 Socket 478', 'INTEL', 1620000, NULL),
('PRC009', 'PRC', 'AMD K7(Duron) 1.3G', 'AMD', 468000, NULL),
('PRC010', 'PRC', 'AMD XP 1.8gh', 'AMD', 693000, NULL),
('PRC011', 'PRC', 'AMD XP 1.9gh', 'AMD', 801000, NULL),
('PRC012', 'PRC', 'AMD XP 2gh', 'AMD', 918000, NULL),
('PRC013', 'PRC', 'AMD XP 2.1gh', 'AMD', 1152000, NULL),
('PRN001', 'PRN', 'Hp Deskjet 3420C', 'HP', 828000, NULL),
('PRN002', 'PRN', 'Hp Deskjet 3820', 'HP', 1215000, NULL),
('PRN003', 'PRN', 'Hp Laser 1000', 'HP', 2466000, NULL),
('PRN004', 'PRN', 'Hp Laser 1200', 'HP', 3150000, NULL),
('PRN005', 'PRN', 'Canon BJC-2100 BC21E', 'CANON', 576000, NULL),
('PRN006', 'PRN', 'Canon S 100 Sp', 'CANON', 486000, NULL),
('PRN007', 'PRN', 'Canon S 200 Sp + Kabel USB', 'CANON', 5000, NULL),
('PRN008', 'PRN', 'Canon S 600', 'CANON', 1818000, NULL),
('PRN009', 'PRN', 'Canon BJC 6300 A3', 'CANON', 3735000, NULL),
('PRN010', 'PRN', 'Canon BJC-55', 'CANON', 2556000, NULL),
('PRN011', 'PRN', 'Canon BJC-85', 'CANON', 2052000, NULL),
('PRN012', 'PRN', 'Canon BJC 5500 A2', 'CANON', 4833000, NULL),
('PRN013', 'PRN', 'Epson Stylus C41 SX Metrodata', 'EPSON', 5000, NULL),
('PRN014', 'PRN', 'Epson LX 300 plus Metrodata', 'EPSON', 1413000, NULL),
('PRN015', 'PRN', 'Epson LQ 2180 Metrodata', 'EPSON', 5319000, NULL),
('PRN016', 'PRN', 'S25(1200x1200,C)parallel,USB, Mac', 'LEXMARK', 423000, NULL),
('PRN017', 'PRN', 'Z25(1200x1200,C&B)parallel,USB, Mac', 'LEXMARK', 576000, NULL),
('PRN018', 'PRN', 'Z42(2400x1200,C&B)parallel,USB,Mac', 'LEXMARK', 1440000, NULL),
('PRN019', 'PRN', 'Z52(2400x1200,C&B)parallel,USB,Mac', 'LEXMARK', 1962000, NULL),
('PRN020', 'PRN', 'HP DESKJET 3535', 'HP', 5000, NULL),
('RAM001', 'RAM', 'SDRAM 32-133', 'VISIPRO', 117000, NULL),
('RAM002', 'RAM', 'SDRAM 64-133', 'VISIPRO', 126000, NULL),
('RAM003', 'RAM', 'SDRAM 128-133', 'VISIPRO', 247500, NULL),
('RAM004', 'RAM', 'SDRAM 256 -133', 'VISIPRO', 468000, NULL),
('RAM005', 'RAM', 'SDRAM 512 -133', 'VISIPRO', 886500, NULL),
('RAM006', 'RAM', 'RDRAM 64', 'VISIPRO', 319500, NULL),
('RAM007', 'RAM', 'RDRAM 128-800', 'VISIPRO', 477000, NULL),
('RAM008', 'RAM', 'RDRAM 256-800', 'VISIPRO', 909000, NULL),
('RAM009', 'RAM', 'DDR 128 Mb Visipro', 'VISIPRO', 229500, NULL),
('RAM010', 'RAM', 'DDR 256', 'VISIPRO', 405000, NULL),
('RAM011', 'RAM', 'DDR 512', 'VISIPRO', 774000, NULL),
('RAM012', 'RAM', 'DDR 128-333', 'VISIPRO', 243000, NULL),
('RAM013', 'RAM', 'DDR 256-333', 'VISIPRO', 414000, NULL),
('RAM014', 'RAM', 'DDR 512-333', 'VISIPRO', 792000, NULL),
('RAM015', 'RAM', '250 MB PC2100 DDR SDRAM Memory', 'PC', 427500, NULL),
('RAM016', 'RAM', 'SDRAM 128 Mb', 'VISIPRO', 234000, NULL),
('SCD001', 'SCD', 'SB Vibra Creative', 'CREATIVE', 144000, NULL),
('SCD002', 'SCD', 'SB Live Creative', 'CREATIVE', 319500, NULL),
('SCD003', 'SCD', 'SB Live Creative Audigy', 'CREATIVE', 756000, NULL),
('SCN001', 'SCN', 'Canoscan N640P', 'CANON', 513000, NULL),
('SCN002', 'SCN', 'Canoscan N646U', 'CANON', 531000, NULL),
('SCN003', 'SCN', 'Canoscan N660U', 'CANON', 1260000, NULL),
('SCN004', 'SCN', 'Canoscan N676U', 'CANON', 828000, NULL),
('SCN005', 'SCN', 'Canoscan D1250U2', 'CANON', 972000, NULL),
('SCN006', 'SCN', 'Canoscan D1250U2F', 'CANON', 1710000, NULL),
('SCN007', 'SCN', 'Canoscan D2400U', 'CANON', 3510000, NULL),
('SPK001', 'SPK', 'Speaker Speed SPS02', 'SPEED', 81000, NULL),
('SPK002', 'SPK', 'Speaker Speed SPS003', 'SPEED', 54000, NULL),
('SPK003', 'SPK', 'Speaker Speed SPS05', 'SPEED', 90000, NULL),
('SPK004', 'SPK', 'Speaker Speed SP07S', 'SPEED', 72000, NULL),
('SPK005', 'SPK', 'Speaker Speed SPD06', 'SPEED', 76500, NULL),
('SPK006', 'SPK', 'Speaker Speed SPS04/SPD10', 'SPEED', 99000, NULL),
('SPK007', 'SPK', 'Speaker Speed SP004', 'SPEED', 112500, NULL),
('SPK008', 'SPK', 'Speaker Speed SPS08', 'SPEED', 207000, NULL),
('SPK011', 'SPK', 'Labtec Spin 20', 'LABTEC', 85500, NULL),
('SPK012', 'SPK', 'Labtec Spin 50', 'LABTEC', 130500, NULL),
('SPK013', 'SPK', 'Labtec Pulse 325', 'LABTEC', 216000, NULL),
('SPK014', 'SPK', 'Labtec LCS 2414', 'LABTEC', 297000, NULL),
('SPK015', 'SPK', 'Labtec Pulse 424', 'LABTEC', 414000, NULL),
('SPK016', 'SPK', 'Labtec Arena 530', 'LABTEC', 540000, NULL),
('SPK017', 'SPK', 'HP Polkaudio Multimedia', 'HP', 45000, NULL),
('SPK018', 'SPK', 'Speaker Multimedia', 'MULTIMEDIA', 5000, NULL),
('SPK019', 'SPK', 'Speaker Multimedia BT', 'MULTIMEDIA', 5000, NULL),
('SPK020', 'SPK', 'Speaker Mercury(Mini Woofer)600 Watt', 'MERCURY', 5000, NULL),
('SPK021', 'SPK', 'Simbadda CST z100', 'SIMBADDA', 5000, NULL),
('SPK022', 'SPK', 'Simbadda CST z5000', 'SIMBADDA', 5000, NULL),
('SPK023', 'SPK', 'Speaker Buftech Black', 'BUFTECH', 5000, NULL),
('STV001', 'STV', 'Stavolt Minamoto 500VA Motor', 'MINAMOTO', 117000, NULL),
('STV002', 'STV', 'Stavolt Kasugawa 500VA Elektrik', 'KASUGAWA', 58500, NULL),
('STV003', 'STV', 'Stavolt Kenika 500VA Motor', 'KENIKA', 162000, NULL),
('STV004', 'STV', 'Stavolt Kenika 1000VA Motor', 'KENIKA', 252000, NULL),
('STV005', 'STV', 'Stavolt Kenika 600VA Motor', 'KENIKA', 153000, NULL),
('STV006', 'STV', 'Stavolt Nagoya 500VA', 'NAGOYA', 58500, NULL),
('UPS001', 'UPS', 'UPS Kenika PT 400', 'KENIKA', 405000, NULL),
('UPS002', 'UPS', 'UPS Kenika PT 500', 'KENIKA', 450000, NULL),
('UPS003', 'UPS', 'UPS Kenika PM 650', 'KENIKA', 607500, NULL),
('UPS004', 'UPS', 'UPS Kenika PM 800', 'KENIKA', 675000, NULL),
('UPS005', 'UPS', 'UPS Kenika UCP 400SA', 'KENIKA', 675000, NULL),
('UPS006', 'UPS', 'UPS Kenika UCP 625', 'KENIKA', 585000, NULL),
('UPS007', 'UPS', 'UPS Kenika UCP 825', 'KENIKA', 697500, NULL),
('UPS008', 'UPS', 'UPS Kenika UC 1000', 'KENIKA', 900000, NULL),
('UPS009', 'UPS', 'UPS APC BP 500I', 'APC', 864000, NULL),
('UPS010', 'UPS', 'UPS APC SU700INET', 'APC', 2700000, NULL),
('UPS011', 'UPS', 'UPS APC SUA1000I', 'APC', 4500000, NULL),
('UPS012', 'UPS', 'UPS APC SUA1500I', 'APC', 6030000, NULL),
('UPS013', 'UPS', 'UPS APC SU3000INET', 'APC', 12870000, NULL),
('UPS014', 'UPS', 'UPS ICA 382B 600VA', 'APC', 787500, NULL),
('UPS015', 'UPS', 'UPS ICA 682B 1200VA', 'APC', 1012500, NULL),
('UPS016', 'UPS', 'UPS ICA 1082B 2000VA', 'APC', 1552500, NULL),
('VGA001', 'VGA', 'SIS 305 16MB AGP 4x for PIV', 'SIS', 207000, NULL),
('VGA002', 'VGA', 'nVIDIA RIVA TNT M64 32MB AGP', 'DAYTONA', 252000, NULL),
('VGA003', 'VGA', 'GE Force2 MX 200 32MB AGP', 'DAYTONA', 328500, NULL),
('VGA004', 'VGA', 'GE Force2 MX 200 64MB AGP', 'DAYTONA', 387000, NULL),
('VGA005', 'VGA', 'GE Force2 MX 400 32MB 128bit AGP', 'DAYTONA', 333000, NULL),
('VGA006', 'VGA', 'GE Force2 MX 400 64MB 64bit AGP', 'DAYTONA', 306000, NULL),
('VGA007', 'VGA', 'GE Force2 MX 400 64MB 128bit  AGP', 'DAYTONA', 441000, NULL),
('VGA008', 'VGA', 'GE Force4 MX 440 64MB DDR TV OUT AGP', 'DAYTONA', 702000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `NoNota` varchar(4) NOT NULL,
  `KodePLg` int(10) DEFAULT NULL,
  `Tgl` datetime DEFAULT NULL,
  `CaraBayar` varchar(10) DEFAULT NULL,
  `NoPeg` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`KodeJns`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`NoPeg`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`KodePlg`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`KodePrd`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`NoNota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `KodePlg` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10197020;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
