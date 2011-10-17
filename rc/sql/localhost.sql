-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 16, 2011 at 10:53 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATE_NAME` varchar(32) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(60) NOT NULL DEFAULT '',
  `MAXLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `ID` bigint(11) NOT NULL DEFAULT '0',
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT '',
  `IS_COMPILED` varchar(3) NOT NULL DEFAULT '',
  `SORTLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', 'Yes', 1),
('dec8_bin', 'dec8', 69, '', 'Yes', 1),
('cp850_general_ci', 'cp850', 4, 'Yes', 'Yes', 1),
('cp850_bin', 'cp850', 80, '', 'Yes', 1),
('hp8_english_ci', 'hp8', 6, 'Yes', 'Yes', 1),
('hp8_bin', 'hp8', 72, '', 'Yes', 1),
('koi8r_general_ci', 'koi8r', 7, 'Yes', 'Yes', 1),
('koi8r_bin', 'koi8r', 74, '', 'Yes', 1),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', 'Yes', 1),
('swe7_bin', 'swe7', 82, '', 'Yes', 1),
('ascii_general_ci', 'ascii', 11, 'Yes', 'Yes', 1),
('ascii_bin', 'ascii', 65, '', 'Yes', 1),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', 'Yes', 1),
('hebrew_bin', 'hebrew', 71, '', 'Yes', 1),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', 'Yes', 1),
('koi8u_bin', 'koi8u', 75, '', 'Yes', 1),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', 'Yes', 1),
('greek_bin', 'greek', 70, '', 'Yes', 1),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('cp1250_polish_ci', 'cp1250', 99, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', 'Yes', 1),
('latin5_bin', 'latin5', 78, '', 'Yes', 1),
('armscii8_general_ci', 'armscii8', 32, 'Yes', 'Yes', 1),
('armscii8_bin', 'armscii8', 64, '', 'Yes', 1),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('cp866_general_ci', 'cp866', 36, 'Yes', 'Yes', 1),
('cp866_bin', 'cp866', 68, '', 'Yes', 1),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', 'Yes', 1),
('keybcs2_bin', 'keybcs2', 73, '', 'Yes', 1),
('macce_general_ci', 'macce', 38, 'Yes', 'Yes', 1),
('macce_bin', 'macce', 43, '', 'Yes', 1),
('macroman_general_ci', 'macroman', 39, 'Yes', 'Yes', 1),
('macroman_bin', 'macroman', 53, '', 'Yes', 1),
('cp852_general_ci', 'cp852', 40, 'Yes', 'Yes', 1),
('cp852_bin', 'cp852', 81, '', 'Yes', 1),
('latin7_estonian_cs', 'latin7', 20, '', 'Yes', 1),
('latin7_general_ci', 'latin7', 41, 'Yes', 'Yes', 1),
('latin7_general_cs', 'latin7', 42, '', 'Yes', 1),
('latin7_bin', 'latin7', 79, '', 'Yes', 1),
('cp1251_bulgarian_ci', 'cp1251', 14, '', 'Yes', 1),
('cp1251_ukrainian_ci', 'cp1251', 23, '', 'Yes', 1),
('cp1251_bin', 'cp1251', 50, '', 'Yes', 1),
('cp1251_general_ci', 'cp1251', 51, 'Yes', 'Yes', 1),
('cp1251_general_cs', 'cp1251', 52, '', 'Yes', 1),
('cp1256_general_ci', 'cp1256', 57, 'Yes', 'Yes', 1),
('cp1256_bin', 'cp1256', 67, '', 'Yes', 1),
('cp1257_lithuanian_ci', 'cp1257', 29, '', 'Yes', 1),
('cp1257_bin', 'cp1257', 58, '', 'Yes', 1),
('cp1257_general_ci', 'cp1257', 59, 'Yes', 'Yes', 1),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', 'Yes', 1),
('geostd8_bin', 'geostd8', 93, '', 'Yes', 1),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('filename', 'filename'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('cp1250_polish_ci', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(32) DEFAULT NULL,
  `COLLATION_NAME` varchar(32) DEFAULT NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL DEFAULT '',
  `EXTRA` varchar(27) NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(80) NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 27, 81, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(27)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'ENGINE', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'SUPPORT', 2, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'COMMENT', 3, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'TRANSACTIONS', 4, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'XA', 5, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'SAVEPOINTS', 6, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_CATALOG', 1, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'DEFINER', 4, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'TIME_ZONE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_BODY', 6, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_DEFINITION', 7, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_TYPE', 8, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EXECUTE_AT', 9, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'INTERVAL_VALUE', 10, NULL, 'YES', 'varchar', 256, 768, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(256)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'INTERVAL_FIELD', 11, NULL, 'YES', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'SQL_MODE', 12, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'STARTS', 13, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'ENDS', 14, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'STATUS', 15, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'ON_COMPLETION', 16, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'CREATED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'LAST_ALTERED', 18, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'LAST_EXECUTED', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_COMMENT', 20, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'ORIGINATOR', 21, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'CHARACTER_SET_CLIENT', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'COLLATION_CONNECTION', 23, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'DATABASE_COLLATION', 24, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FILE_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FILE_NAME', 2, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FILE_TYPE', 3, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLESPACE_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_CATALOG', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_SCHEMA', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_NAME', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LOGFILE_GROUP_NAME', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LOGFILE_GROUP_NUMBER', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'ENGINE', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FULLTEXT_KEYS', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'DELETED_ROWS', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'UPDATE_COUNT', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FREE_EXTENTS', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TOTAL_EXTENTS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'EXTENT_SIZE', 16, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'INITIAL_SIZE', 17, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'MAXIMUM_SIZE', 18, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'AUTOEXTEND_SIZE', 19, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CREATION_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LAST_UPDATE_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LAST_ACCESS_TIME', 22, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'RECOVER_TIME', 23, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TRANSACTION_COUNTER', 24, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'VERSION', 25, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'ROW_FORMAT', 26, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_ROWS', 27, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'AVG_ROW_LENGTH', 28, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'DATA_LENGTH', 29, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'MAX_DATA_LENGTH', 30, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'INDEX_LENGTH', 31, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'DATA_FREE', 32, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CREATE_TIME', 33, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'UPDATE_TIME', 34, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CHECK_TIME', 35, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CHECKSUM', 36, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'STATUS', 37, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'EXTRA', 38, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_NAME', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_ORDINAL_POSITION', 6, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_ORDINAL_POSITION', 7, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_METHOD', 8, NULL, 'YES', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_METHOD', 9, NULL, 'YES', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_EXPRESSION', 10, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_EXPRESSION', 11, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_DESCRIPTION', 12, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_ROWS', 13, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'AVG_ROW_LENGTH', 14, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'DATA_LENGTH', 15, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'MAX_DATA_LENGTH', 16, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'INDEX_LENGTH', 17, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'DATA_FREE', 18, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'CREATE_TIME', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'UPDATE_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'CHECK_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'CHECKSUM', 22, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_COMMENT', 23, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'NODEGROUP', 24, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLESPACE_NAME', 25, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_VERSION', 2, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_STATUS', 3, '', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_TYPE', 4, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_TYPE_VERSION', 5, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY_VERSION', 7, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_AUTHOR', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_DESCRIPTION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_LICENSE', 10, NULL, 'YES', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'USER', 2, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'HOST', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'DB', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'COMMAND', 5, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'TIME', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'STATE', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'INFO', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_NAME', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'MATCH_OPTION', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UPDATE_RULE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'DELETE_RULE', 9, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'TABLE_NAME', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'REFERENCED_TABLE_NAME', 11, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CHARACTER_SET_CLIENT', 21, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'COLLATION_CONNECTION', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DATABASE_COLLATION', 23, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CHARACTER_SET_CLIENT', 20, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'COLLATION_CONNECTION', 21, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'TRIGGERS', 'DATABASE_COLLATION', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHARACTER_SET_CLIENT', 9, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'COLLATION_CONNECTION', 10, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'radioc', 'approle', 'username', 1, NULL, 'NO', 'varchar', 16, 16, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'approle', 'authority', 2, NULL, 'NO', 'varchar', 16, 16, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(16)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'appuser', 'userid', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'radioc', 'appuser', 'username', 2, NULL, 'NO', 'varchar', 16, 16, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(16)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'appuser', 'password', 3, NULL, 'NO', 'varchar', 36, 36, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(36)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'appuser', 'firstname', 4, NULL, 'YES', 'varchar', 32, 32, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'appuser', 'lastname', 5, NULL, 'YES', 'varchar', 32, 32, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'appuser', 'email', 6, NULL, 'YES', 'varchar', 128, 128, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'appuser', 'enabled', 7, NULL, 'YES', 'varchar', 7, 7, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(7)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'appuser', 'id', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', 'Id for index'),
(NULL, 'radioc', 'audio_media', 'title', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', 'Title of media'),
(NULL, 'radioc', 'audio_media', 'private', 3, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', 'Private or not'),
(NULL, 'radioc', 'audio_media', 'path', 4, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', 'Path to file'),
(NULL, 'radioc', 'audio_media', 'type', 5, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'MUL', '', 'select,insert,update,references', 'Type of file'),
(NULL, 'radioc', 'audio_media', 'emission', 6, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'description', 7, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'datemodif', 8, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'datecreate', 9, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'author', 10, NULL, 'YES', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'blocked', 11, NULL, 'YES', 'bit', NULL, NULL, 1, NULL, NULL, NULL, 'bit(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'category', 12, NULL, 'YES', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'duration', 13, NULL, 'YES', 'time', NULL, NULL, NULL, NULL, NULL, NULL, 'time', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'episodeNumber', 14, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'explicit', 15, NULL, 'YES', 'bit', NULL, NULL, 1, NULL, NULL, NULL, 'bit(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'imgPath', 16, NULL, 'YES', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'isClosedCaptioned', 17, NULL, 'YES', 'bit', NULL, NULL, 1, NULL, NULL, NULL, 'bit(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'keywords', 18, NULL, 'YES', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'pubDate', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'subtitle', 20, NULL, 'YES', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'emission_id', 21, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'audio_media', 'accesskey', 22, NULL, 'YES', 'varchar', 32, 32, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(32)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'category', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'radioc', 'category', 'value', 2, NULL, 'NO', 'varchar', 128, 128, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emis_interv', 'id_emission', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emis_interv', 'id_intervenant', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emis_intervsuppl', 'id_emission', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emis_intervsuppl', 'id_intervenant', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emis_media', 'id_media', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emis_media', 'id_emission', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'name', 2, NULL, 'NO', 'varchar', 150, 150, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(150)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'date_emission', 3, NULL, 'YES', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'datemodif', 4, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'datecreate', 5, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'themes', 6, NULL, 'YES', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'podcastable', 7, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'category', 8, NULL, 'NO', 'varchar', 128, 128, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'complete', 9, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'keywords', 10, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'summary', 11, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'subtitle', 12, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'title', 13, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'emtime', 14, NULL, 'YES', 'time', NULL, NULL, NULL, NULL, NULL, NULL, 'time', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'weekday', 15, NULL, 'YES', 'varchar', 128, 128, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'emissions', 'week', 16, NULL, 'YES', 'varchar', 12, 12, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(12)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'hibernate_sequences', 'sequence_name', 1, NULL, 'YES', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'hibernate_sequences', 'sequence_next_hi_value', 2, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'intervenants', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'radioc', 'intervenants', 'name', 2, NULL, 'NO', 'varchar', 128, 128, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(128)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'intervenants', 'email', 3, NULL, 'YES', 'varchar', 128, 128, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'intervenants', 'datemodif', 4, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'intervenants', 'datecreate', 5, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'intervenants_emissions', 'intervenants_id', 1, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'intervenants_emissions', 'emissions_id', 2, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'itunesparams', 'param', 1, NULL, 'NO', 'varchar', 32, 32, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(32)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'itunesparams', 'value', 2, NULL, 'NO', 'varchar', 128, 128, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'itunesparams', 'datecreate', 3, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'itunesparams', 'datemodif', 4, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'itunesparams', 'description', 5, NULL, 'NO', 'varchar', 256, 256, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(256)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'mediatype', 'term', 1, NULL, 'NO', 'varchar', 4, 4, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(4)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'mediatype', 'type', 2, NULL, 'NO', 'varchar', 24, 24, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(24)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'roles', 'name', 1, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'roles', 'value', 2, NULL, 'YES', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'subcategory', 'supercatid', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'radioc', 'subcategory', 'subcatid', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', '');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ENGINES`
--

CREATE TEMPORARY TABLE `ENGINES` (
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `SUPPORT` varchar(8) NOT NULL DEFAULT '',
  `COMMENT` varchar(80) NOT NULL DEFAULT '',
  `TRANSACTIONS` varchar(3) DEFAULT NULL,
  `XA` varchar(3) DEFAULT NULL,
  `SAVEPOINTS` varchar(3) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ENGINES`
--

INSERT INTO `ENGINES` (`ENGINE`, `SUPPORT`, `COMMENT`, `TRANSACTIONS`, `XA`, `SAVEPOINTS`) VALUES
('InnoDB', 'YES', 'Supports transactions, row-level locking, and foreign keys', 'YES', 'YES', 'YES'),
('MRG_MYISAM', 'YES', 'Collection of identical MyISAM tables', 'NO', 'NO', 'NO'),
('BLACKHOLE', 'YES', '/dev/null storage engine (anything you write to it disappears)', 'NO', 'NO', 'NO'),
('CSV', 'YES', 'CSV storage engine', 'NO', 'NO', 'NO'),
('MEMORY', 'YES', 'Hash based, stored in memory, useful for temporary tables', 'NO', 'NO', 'NO'),
('FEDERATED', 'NO', 'Federated MySQL storage engine', NULL, NULL, NULL),
('ARCHIVE', 'YES', 'Archive storage engine', 'NO', 'NO', 'NO'),
('MyISAM', 'DEFAULT', 'Default engine as of MySQL 3.23 with great performance', 'NO', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `EVENTS`
--

CREATE TEMPORARY TABLE `EVENTS` (
  `EVENT_CATALOG` varchar(64) DEFAULT NULL,
  `EVENT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `TIME_ZONE` varchar(64) NOT NULL DEFAULT '',
  `EVENT_BODY` varchar(8) NOT NULL DEFAULT '',
  `EVENT_DEFINITION` longtext NOT NULL,
  `EVENT_TYPE` varchar(9) NOT NULL DEFAULT '',
  `EXECUTE_AT` datetime DEFAULT NULL,
  `INTERVAL_VALUE` varchar(256) DEFAULT NULL,
  `INTERVAL_FIELD` varchar(18) DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `STARTS` datetime DEFAULT NULL,
  `ENDS` datetime DEFAULT NULL,
  `STATUS` varchar(18) NOT NULL DEFAULT '',
  `ON_COMPLETION` varchar(12) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `EVENT_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `ORIGINATOR` bigint(10) NOT NULL DEFAULT '0',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FILES`
--

CREATE TEMPORARY TABLE `FILES` (
  `FILE_ID` bigint(4) NOT NULL DEFAULT '0',
  `FILE_NAME` varchar(64) DEFAULT NULL,
  `FILE_TYPE` varchar(20) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL,
  `TABLE_CATALOG` varchar(64) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `TABLE_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NUMBER` bigint(4) DEFAULT NULL,
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `FULLTEXT_KEYS` varchar(64) DEFAULT NULL,
  `DELETED_ROWS` bigint(4) DEFAULT NULL,
  `UPDATE_COUNT` bigint(4) DEFAULT NULL,
  `FREE_EXTENTS` bigint(4) DEFAULT NULL,
  `TOTAL_EXTENTS` bigint(4) DEFAULT NULL,
  `EXTENT_SIZE` bigint(4) NOT NULL DEFAULT '0',
  `INITIAL_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `LAST_ACCESS_TIME` datetime DEFAULT NULL,
  `RECOVER_TIME` bigint(4) DEFAULT NULL,
  `TRANSACTION_COUNTER` bigint(4) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL DEFAULT '',
  `EXTRA` varchar(255) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_STATUS`
--

CREATE TEMPORARY TABLE `GLOBAL_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_STATUS`
--

INSERT INTO `GLOBAL_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '8'),
('ABORTED_CONNECTS', '0'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '0'),
('BYTES_RECEIVED', '69441'),
('BYTES_SENT', '470011'),
('COM_ADMIN_COMMANDS', '1'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '0'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '3'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '0'),
('COM_BACKUP_TABLE', '0'),
('COM_BEGIN', '0'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '0'),
('COM_CHANGE_DB', '1'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '0'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '41'),
('COM_CREATE_DB', '0'),
('COM_CREATE_EVENT', '0'),
('COM_CREATE_FUNCTION', '0'),
('COM_CREATE_INDEX', '0'),
('COM_CREATE_PROCEDURE', '0'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '1'),
('COM_CREATE_TRIGGER', '0'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '0'),
('COM_CREATE_VIEW', '0'),
('COM_DEALLOC_SQL', '0'),
('COM_DELETE', '0'),
('COM_DELETE_MULTI', '0'),
('COM_DO', '0'),
('COM_DROP_DB', '0'),
('COM_DROP_EVENT', '0'),
('COM_DROP_FUNCTION', '0'),
('COM_DROP_INDEX', '0'),
('COM_DROP_PROCEDURE', '0'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '0'),
('COM_DROP_TRIGGER', '0'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '0'),
('COM_EMPTY_QUERY', '0'),
('COM_EXECUTE_SQL', '0'),
('COM_FLUSH', '0'),
('COM_GRANT', '0'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '0'),
('COM_INSERT', '0'),
('COM_INSERT_SELECT', '0'),
('COM_INSTALL_PLUGIN', '0'),
('COM_KILL', '0'),
('COM_LOAD', '0'),
('COM_LOAD_MASTER_DATA', '0'),
('COM_LOAD_MASTER_TABLE', '0'),
('COM_LOCK_TABLES', '0'),
('COM_OPTIMIZE', '0'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '0'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '0'),
('COM_RENAME_TABLE', '0'),
('COM_RENAME_USER', '0'),
('COM_REPAIR', '0'),
('COM_REPLACE', '0'),
('COM_REPLACE_SELECT', '0'),
('COM_RESET', '0'),
('COM_RESTORE_TABLE', '0'),
('COM_REVOKE', '0'),
('COM_REVOKE_ALL', '0'),
('COM_ROLLBACK', '0'),
('COM_ROLLBACK_TO_SAVEPOINT', '0'),
('COM_SAVEPOINT', '0'),
('COM_SELECT', '125'),
('COM_SET_OPTION', '178'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '2'),
('COM_SHOW_CHARSETS', '0'),
('COM_SHOW_COLLATIONS', '20'),
('COM_SHOW_COLUMN_TYPES', '0'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '0'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '0'),
('COM_SHOW_CREATE_PROC', '0'),
('COM_SHOW_CREATE_TABLE', '22'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '3'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '0'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '13'),
('COM_SHOW_FUNCTION_STATUS', '1'),
('COM_SHOW_GRANTS', '1'),
('COM_SHOW_KEYS', '13'),
('COM_SHOW_MASTER_STATUS', '0'),
('COM_SHOW_NEW_MASTER', '0'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '5'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '1'),
('COM_SHOW_PROCESSLIST', '0'),
('COM_SHOW_PROFILE', '0'),
('COM_SHOW_PROFILES', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '0'),
('COM_SHOW_STATUS', '0'),
('COM_SHOW_STORAGE_ENGINES', '0'),
('COM_SHOW_TABLE_STATUS', '18'),
('COM_SHOW_TABLES', '29'),
('COM_SHOW_TRIGGERS', '8'),
('COM_SHOW_VARIABLES', '21'),
('COM_SHOW_WARNINGS', '0'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '0'),
('COM_STMT_EXECUTE', '0'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '0'),
('COM_STMT_REPREPARE', '0'),
('COM_STMT_RESET', '0'),
('COM_STMT_SEND_LONG_DATA', '0'),
('COM_TRUNCATE', '0'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '0'),
('COM_UPDATE', '0'),
('COM_UPDATE_MULTI', '0'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '64'),
('CREATED_TMP_DISK_TABLES', '94'),
('CREATED_TMP_FILES', '5'),
('CREATED_TMP_TABLES', '355'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '0'),
('DELAYED_WRITES', '0'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '49'),
('HANDLER_DELETE', '0'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '0'),
('HANDLER_READ_FIRST', '15'),
('HANDLER_READ_KEY', '465'),
('HANDLER_READ_NEXT', '557'),
('HANDLER_READ_PREV', '0'),
('HANDLER_READ_RND', '0'),
('HANDLER_READ_RND_NEXT', '4974'),
('HANDLER_ROLLBACK', '2'),
('HANDLER_SAVEPOINT', '0'),
('HANDLER_SAVEPOINT_ROLLBACK', '0'),
('HANDLER_UPDATE', '0'),
('HANDLER_WRITE', '4776'),
('INNODB_BUFFER_POOL_PAGES_DATA', '96'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '0'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '34'),
('INNODB_BUFFER_POOL_PAGES_FREE', '927'),
('INNODB_BUFFER_POOL_PAGES_MISC', '1'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '1024'),
('INNODB_BUFFER_POOL_READ_AHEAD_RND', '3'),
('INNODB_BUFFER_POOL_READ_AHEAD_SEQ', '0'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '3923'),
('INNODB_BUFFER_POOL_READS', '26'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '564'),
('INNODB_DATA_FSYNCS', '12'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '4345856'),
('INNODB_DATA_READS', '87'),
('INNODB_DATA_WRITES', '19'),
('INNODB_DATA_WRITTEN', '1141248'),
('INNODB_DBLWR_PAGES_WRITTEN', '34'),
('INNODB_DBLWR_WRITES', '2'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '57'),
('INNODB_LOG_WRITES', '4'),
('INNODB_OS_LOG_FSYNCS', '8'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '25088'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '6'),
('INNODB_PAGES_READ', '90'),
('INNODB_PAGES_WRITTEN', '34'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '0'),
('INNODB_ROW_LOCK_TIME_AVG', '0'),
('INNODB_ROW_LOCK_TIME_MAX', '0'),
('INNODB_ROW_LOCK_WAITS', '0'),
('INNODB_ROWS_DELETED', '0'),
('INNODB_ROWS_INSERTED', '0'),
('INNODB_ROWS_READ', '854'),
('INNODB_ROWS_UPDATED', '0'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '14495'),
('KEY_BLOCKS_USED', '2'),
('KEY_READ_REQUESTS', '13'),
('KEY_READS', '2'),
('KEY_WRITE_REQUESTS', '8'),
('KEY_WRITES', '2'),
('LAST_QUERY_COST', '0.000000'),
('MAX_USED_CONNECTIONS', '9'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '56'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '38'),
('OPEN_TABLES', '41'),
('OPENED_FILES', '546'),
('OPENED_TABLE_DEFINITIONS', '44'),
('OPENED_TABLES', '180'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '1'),
('QCACHE_FREE_MEMORY', '16635384'),
('QCACHE_HITS', '15'),
('QCACHE_INSERTS', '30'),
('QCACHE_LOWMEM_PRUNES', '0'),
('QCACHE_NOT_CACHED', '94'),
('QCACHE_QUERIES_IN_CACHE', '30'),
('QCACHE_TOTAL_BLOCKS', '68'),
('QUERIES', '567'),
('QUESTIONS', '567'),
('RPL_STATUS', 'NULL'),
('SELECT_FULL_JOIN', '0'),
('SELECT_FULL_RANGE_JOIN', '0'),
('SELECT_RANGE', '19'),
('SELECT_RANGE_CHECK', '0'),
('SELECT_SCAN', '164'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '0'),
('SORT_MERGE_PASSES', '0'),
('SORT_RANGE', '0'),
('SORT_ROWS', '0'),
('SORT_SCAN', '0'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '117'),
('TABLE_LOCKS_WAITED', '0'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '0'),
('THREADS_CONNECTED', '9'),
('THREADS_CREATED', '10'),
('THREADS_RUNNING', '1'),
('UPTIME', '6515'),
('UPTIME_SINCE_FLUSH_STATUS', '6515');

-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_VARIABLES`
--

CREATE TEMPORARY TABLE `GLOBAL_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_VARIABLES`
--

INSERT INTO `GLOBAL_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('CHARACTER_SET_CONNECTION', 'latin1'),
('HAVE_CRYPT', 'YES'),
('MAX_CONNECT_ERRORS', '10'),
('MYISAM_REPAIR_THREADS', '1'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('CHARACTER_SET_DATABASE', 'latin1'),
('BACK_LOG', '50'),
('INNODB_FILE_PER_TABLE', 'OFF'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('SSL_CERT', ''),
('MYISAM_USE_MMAP', 'OFF'),
('DELAYED_INSERT_TIMEOUT', '300'),
('FLUSH', 'OFF'),
('LOG_BIN_TRUST_ROUTINE_CREATORS', 'OFF'),
('MAX_CONNECTIONS', '151'),
('MYISAM_SORT_BUFFER_SIZE', '8388608'),
('CHARACTER_SETS_DIR', '/usr/share/mysql/charsets/'),
('IDENTITY', '0'),
('BINLOG_CACHE_SIZE', '32768'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('LOWER_CASE_TABLE_NAMES', '0'),
('SLOW_LAUNCH_TIME', '2'),
('COMPLETION_TYPE', '0'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('RELAY_LOG_INDEX', ''),
('BASEDIR', '/usr/'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('LONG_QUERY_TIME', '10.000000'),
('SQL_LOG_UPDATE', 'ON'),
('DELAYED_QUEUE_SIZE', '1000'),
('INNODB_USE_LEGACY_CARDINALITY_ALGORITHM', 'ON'),
('FT_MAX_WORD_LEN', '84'),
('LOCKED_IN_MEMORY', 'OFF'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('SYSTEM_TIME_ZONE', 'MSD'),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('REPORT_HOST', ''),
('LARGE_PAGES', 'OFF'),
('SSL_KEY', ''),
('DELAYED_INSERT_LIMIT', '100'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('INTERACTIVE_TIMEOUT', '28800'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('COLLATION_DATABASE', 'latin1_swedish_ci'),
('INSERT_ID', '0'),
('CONCURRENT_INSERT', '1'),
('RELAY_LOG_PURGE', 'ON'),
('DELAY_KEY_WRITE', 'ON'),
('SKIP_SHOW_DATABASE', 'OFF'),
('FT_MIN_WORD_LEN', '4'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('AUTO_INCREMENT_OFFSET', '1'),
('INNODB_LOG_BUFFER_SIZE', '8388608'),
('LANGUAGE', '/usr/share/mysql/english/'),
('INNODB_CHECKSUMS', 'ON'),
('JOIN_BUFFER_SIZE', '131072'),
('INNODB_MAX_PURGE_LAG', '0'),
('CONNECT_TIMEOUT', '10'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('SQL_LOW_PRIORITY_UPDATES', 'OFF'),
('VERSION_COMPILE_OS', 'debian-linux-gnu'),
('INIT_FILE', ''),
('SQL_NOTES', 'ON'),
('LARGE_PAGE_SIZE', '0'),
('LOW_PRIORITY_UPDATES', 'OFF'),
('INIT_SLAVE', ''),
('REPORT_PASSWORD', ''),
('MAX_BINLOG_SIZE', '104857600'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('MAX_ERROR_COUNT', '64'),
('HAVE_COMPRESS', 'YES'),
('WARNING_COUNT', '0'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('LOG_WARNINGS', '1'),
('THREAD_CACHE_SIZE', '8'),
('PSEUDO_THREAD_ID', '0'),
('INNODB_DOUBLEWRITE', 'ON'),
('MAX_SORT_LENGTH', '1024'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('LOWER_CASE_FILE_SYSTEM', 'OFF'),
('DEFAULT_WEEK_FORMAT', '0'),
('MAX_RELAY_LOG_SIZE', '0'),
('LOG_OUTPUT', 'FILE'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('FT_STOPWORD_FILE', '(built-in)'),
('COLLATION_SERVER', 'latin1_swedish_ci'),
('PROTOCOL_VERSION', '10'),
('CHARACTER_SET_SERVER', 'latin1'),
('HAVE_SYMLINK', 'YES'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('TIME_ZONE', 'SYSTEM'),
('MAX_HEAP_TABLE_SIZE', '16777216'),
('INNODB_TABLE_LOCKS', 'ON'),
('LAST_INSERT_ID', '0'),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('NET_RETRY_COUNT', '10'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('NET_BUFFER_LENGTH', '16384'),
('SQL_AUTO_IS_NULL', 'ON'),
('NET_WRITE_TIMEOUT', '60'),
('SLAVE_TRANSACTION_RETRIES', '10'),
('CHARACTER_SET_RESULTS', 'latin1'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('LOG_SLAVE_UPDATES', 'OFF'),
('GENERAL_LOG', 'OFF'),
('REPORT_PORT', '3306'),
('TABLE_TYPE', 'MyISAM'),
('MYISAM_MAX_SORT_FILE_SIZE', '2146435072'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('HAVE_GEOMETRY', 'YES'),
('INNODB_STATS_ON_METADATA', 'ON'),
('FLUSH_TIME', '0'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('IGNORE_BUILTIN_INNODB', 'OFF'),
('PROFILING_HISTORY_SIZE', '15'),
('MAX_BINLOG_CACHE_SIZE', '4294963200'),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '2097152'),
('READ_BUFFER_SIZE', '131072'),
('READ_RND_BUFFER_SIZE', '262144'),
('BULK_INSERT_BUFFER_SIZE', '8388608'),
('SECURE_AUTH', 'OFF'),
('SQL_BIG_SELECTS', 'ON'),
('BIG_TABLES', 'OFF'),
('OLD_PASSWORDS', 'OFF'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('QUERY_PREALLOC_SIZE', '8192'),
('DATE_FORMAT', '%Y-%m-%d'),
('MAX_ALLOWED_PACKET', '16777216'),
('READ_ONLY', 'OFF'),
('MAX_SEEKS_FOR_KEY', '4294967295'),
('RAND_SEED1', ''),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('INNODB_DATA_FILE_PATH', '/idbdata1:10M:autoextend'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('QUERY_CACHE_SIZE', '16777216'),
('SQL_SAFE_UPDATES', 'OFF'),
('PROFILING', 'OFF'),
('THREAD_STACK', '196608'),
('PLUGIN_DIR', '/usr/lib/mysql/plugin'),
('OPEN_FILES_LIMIT', '1024'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('EVENT_SCHEDULER', 'OFF'),
('GENERAL_LOG_FILE', '/var/lib/mysql/gepjavaplatform.log'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('LARGE_FILES_SUPPORT', 'ON'),
('PID_FILE', '/var/lib/mysql/gepjavaplatform.pid'),
('AUTO_INCREMENT_INCREMENT', '1'),
('RPL_RECOVERY_RANK', '0'),
('TMPDIR', '/tmp'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('EXPIRE_LOGS_DAYS', '10'),
('QUERY_CACHE_LIMIT', '1048576'),
('HAVE_PARTITIONING', 'YES'),
('SSL_CAPATH', ''),
('FOREIGN_KEY_CHECKS', 'ON'),
('VERSION_COMMENT', '(Ubuntu)'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on'),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('MAX_WRITE_LOCK_COUNT', '4294967295'),
('UNIQUE_CHECKS', 'ON'),
('TIMED_MUTEXES', 'OFF'),
('VERSION', '5.1.41-3ubuntu12.10'),
('VERSION_COMPILE_MACHINE', 'i486'),
('INNODB_SUPPORT_XA', 'ON'),
('NET_READ_TIMEOUT', '30'),
('INNODB_SYNC_SPIN_LOOPS', '20'),
('SERVER_ID', '0'),
('COLLATION_CONNECTION', 'latin1_swedish_ci'),
('SKIP_NETWORKING', 'OFF'),
('HAVE_QUERY_CACHE', 'YES'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('INIT_CONNECT', ''),
('TABLE_DEFINITION_CACHE', '256'),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('DIV_PRECISION_INCREMENT', '4'),
('AUTOCOMMIT', 'ON'),
('DATADIR', '/var/lib/mysql/'),
('SSL_CIPHER', ''),
('INNODB_DATA_HOME_DIR', ''),
('MAX_SP_RECURSION_DEPTH', '0'),
('QUERY_CACHE_TYPE', 'ON'),
('TMP_TABLE_SIZE', '16777216'),
('SQL_SLAVE_SKIP_COUNTER', ''),
('TABLE_LOCK_WAIT_TIMEOUT', '50'),
('TIME_FORMAT', '%H:%i:%s'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('INNODB_FORCE_RECOVERY', '0'),
('HOSTNAME', 'gepjavaplatform'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('SQL_BIG_TABLES', 'OFF'),
('ERROR_COUNT', '0'),
('LOG_BIN', 'OFF'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('SQL_MODE', ''),
('SYNC_BINLOG', '0'),
('MAX_USER_CONNECTIONS', '0'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_OPEN_FILES', '300'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('OLD', 'OFF'),
('NEW', 'OFF'),
('INNODB_MAX_DIRTY_PAGES_PCT', '90'),
('SECURE_FILE_PRIV', ''),
('HAVE_COMMUNITY_FEATURES', 'YES'),
('SQL_BUFFER_RESULT', 'OFF'),
('KEY_BUFFER_SIZE', '16777216'),
('RELAY_LOG', ''),
('HAVE_NDBCLUSTER', 'NO'),
('HAVE_CSV', 'YES'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('SQL_LOG_BIN', 'ON'),
('INNODB_LOG_GROUP_HOME_DIR', './'),
('TABLE_OPEN_CACHE', '64'),
('INNODB_FAST_SHUTDOWN', '1'),
('HAVE_INNODB', 'YES'),
('SSL_CA', ''),
('MYISAM_RECOVER_OPTIONS', 'BACKUP'),
('INNODB_THREAD_CONCURRENCY', '8'),
('LOG_ERROR', '/var/log/mysql/error.log'),
('SLAVE_NET_TIMEOUT', '3600'),
('REPORT_USER', ''),
('INNODB_BUFFER_POOL_SIZE', '16777216'),
('LOG', 'OFF'),
('LOCAL_INFILE', 'ON'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('HAVE_RTREE_KEYS', 'YES'),
('LC_TIME_NAMES', 'en_US'),
('BINLOG_FORMAT', 'STATEMENT'),
('LOG_SLOW_QUERIES', 'OFF'),
('OLD_ALTER_TABLE', 'OFF'),
('MAX_TMP_TABLES', '32'),
('SQL_WARNINGS', 'OFF'),
('SQL_LOG_OFF', 'OFF'),
('SYNC_FRM', 'ON'),
('SLOW_QUERY_LOG_FILE', '/var/lib/mysql/gepjavaplatform-slow.log'),
('TIMESTAMP', '1318791198'),
('MULTI_RANGE_COUNT', '256'),
('MAX_DELAYED_THREADS', '20'),
('SLOW_QUERY_LOG', 'OFF'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('INNODB_FLUSH_METHOD', ''),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('INNODB_FILE_IO_THREADS', '4'),
('STORAGE_ENGINE', 'MyISAM'),
('LICENSE', 'GPL'),
('HAVE_SSL', 'DISABLED'),
('INNODB_LOG_FILE_SIZE', '262144000'),
('INNODB_CONCURRENCY_TICKETS', '500'),
('PORT', '3306'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('SORT_BUFFER_SIZE', '2097144'),
('WAIT_TIMEOUT', '28800'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('SOCKET', '/var/run/mysqld/mysqld.sock'),
('CHARACTER_SET_CLIENT', 'latin1'),
('RAND_SEED2', ''),
('HAVE_OPENSSL', 'DISABLED'),
('PRELOAD_BUFFER_SIZE', '32768'),
('SLAVE_LOAD_TMPDIR', '/tmp');

-- --------------------------------------------------------

--
-- Table structure for table `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(10) NOT NULL DEFAULT '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) DEFAULT NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `REFERENCED_TABLE_NAME` varchar(64) DEFAULT NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'approle', 'username', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'appuser', 'userid', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'userid', NULL, 'radioc', 'appuser', 'userid', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'audio_media', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'audio_media_ibfk_1', NULL, 'radioc', 'audio_media', 'emission', 1, 1, 'radioc', 'emissions', 'id'),
(NULL, 'radioc', 'audio_media_ibfk_2', NULL, 'radioc', 'audio_media', 'type', 1, 1, 'radioc', 'mediatype', 'term'),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'category', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'emis_interv', 'id_intervenant', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'emis_interv', 'id_emission', 2, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'emis_interv_ibfk_3', NULL, 'radioc', 'emis_interv', 'id_emission', 1, 1, 'radioc', 'emissions', 'id'),
(NULL, 'radioc', 'emis_interv_ibfk_4', NULL, 'radioc', 'emis_interv', 'id_intervenant', 1, 1, 'radioc', 'intervenants', 'id'),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'emis_intervsuppl', 'id_intervenant', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'emis_intervsuppl', 'id_emission', 2, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'emis_interv_ibfk_1', NULL, 'radioc', 'emis_intervsuppl', 'id_emission', 1, 1, 'radioc', 'emissions', 'id'),
(NULL, 'radioc', 'emis_interv_ibfk_2', NULL, 'radioc', 'emis_intervsuppl', 'id_intervenant', 1, 1, 'radioc', 'intervenants', 'id'),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'emis_media', 'id_media', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'emis_media_ibfk_3', NULL, 'radioc', 'emis_media', 'id_media', 1, 1, 'radioc', 'audio_media', 'id'),
(NULL, 'radioc', 'emis_media_ibfk_4', NULL, 'radioc', 'emis_media', 'id_emission', 1, 1, 'radioc', 'emissions', 'id'),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'emissions', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'intervenants', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'itunesparams', 'param', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'mediatype', 'term', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'mediatype', 'type', 2, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'roles', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'subcategory', 'supercatid', 1, NULL, NULL, NULL, NULL),
(NULL, 'radioc', 'PRIMARY', NULL, 'radioc', 'subcategory', 'subcatid', 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PARTITIONS`
--

CREATE TEMPORARY TABLE `PARTITIONS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PARTITION_NAME` varchar(64) DEFAULT NULL,
  `SUBPARTITION_NAME` varchar(64) DEFAULT NULL,
  `PARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `SUBPARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_METHOD` varchar(12) DEFAULT NULL,
  `SUBPARTITION_METHOD` varchar(12) DEFAULT NULL,
  `PARTITION_EXPRESSION` longtext,
  `SUBPARTITION_EXPRESSION` longtext,
  `PARTITION_DESCRIPTION` longtext,
  `TABLE_ROWS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `AVG_ROW_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_FREE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_COMMENT` varchar(80) NOT NULL DEFAULT '',
  `NODEGROUP` varchar(12) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PARTITIONS`
--

INSERT INTO `PARTITIONS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `PARTITION_NAME`, `SUBPARTITION_NAME`, `PARTITION_ORDINAL_POSITION`, `SUBPARTITION_ORDINAL_POSITION`, `PARTITION_METHOD`, `SUBPARTITION_METHOD`, `PARTITION_EXPRESSION`, `SUBPARTITION_EXPRESSION`, `PARTITION_DESCRIPTION`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `CHECKSUM`, `PARTITION_COMMENT`, `NODEGROUP`, `TABLESPACE_NAME`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 384, 0, 16604160, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLLATIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 231, 0, 16704765, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 195, 0, 16691610, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLUMNS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2565, 0, 16757145, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'ENGINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 490, 0, 16709000, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'EVENTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'FILES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2677, 0, 16758020, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'GLOBAL_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4637, 0, 16762755, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PARTITIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PLUGINS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PROCESSLIST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PROFILING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 308, 0, 16562084, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4814, 0, 16767162, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'ROUTINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SCHEMATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3464, 0, 16755368, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2179, 0, 16767405, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SESSION_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SESSION_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2679, 0, 16770540, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3545, 0, 16760760, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2504, 0, 16749256, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2372, 0, 16748692, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TRIGGERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'USER_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1986, 0, 16759854, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'VIEWS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'approle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 24, 96, 281474976710655, 3072, 0, '2011-10-16 18:50:41', '2011-10-16 18:50:41', NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'appuser', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 57, 228, 281474976710655, 3072, 0, '2011-10-02 13:00:34', '2011-10-02 13:00:34', '2011-10-16 16:41:43', NULL, '', '', NULL),
(NULL, 'radioc', 'audio_media', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 2730, 16384, NULL, 65536, 0, '2011-10-03 20:57:33', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 0, 0, '2011-10-02 13:00:34', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'emis_interv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74, 221, 16384, NULL, 16384, 0, '2011-10-02 13:00:34', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'emis_intervsuppl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8192, 16384, NULL, 16384, 0, '2011-10-02 13:00:34', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'emis_media', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 16384, 0, '2011-10-02 13:00:34', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'emissions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1129, 65536, NULL, 16384, 0, '2011-10-02 13:00:34', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'hibernate_sequences', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 20, 20, 281474976710655, 1024, 0, '2011-10-02 13:00:34', '2011-10-02 13:00:34', '2011-10-16 16:41:43', NULL, '', '', NULL),
(NULL, 'radioc', 'intervenants', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78, 210, 16384, NULL, 16384, 0, '2011-10-02 13:00:34', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'intervenants_emissions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 0, 0, '2011-10-02 13:00:34', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'itunesparams', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-10-02 13:00:34', '2011-10-02 13:00:34', NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'mediatype', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1820, 16384, NULL, 16384, 0, '2011-10-02 13:00:34', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'roles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 0, 0, '2011-10-16 18:50:41', NULL, NULL, NULL, '', '', NULL),
(NULL, 'radioc', 'subcategory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2533274790395903, 1024, 0, '2011-10-02 13:00:34', '2011-10-02 13:00:34', NULL, NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PLUGINS`
--

CREATE TEMPORARY TABLE `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_STATUS` varchar(10) NOT NULL DEFAULT '',
  `PLUGIN_TYPE` varchar(80) NOT NULL DEFAULT '',
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_LIBRARY` varchar(64) DEFAULT NULL,
  `PLUGIN_LIBRARY_VERSION` varchar(20) DEFAULT NULL,
  `PLUGIN_AUTHOR` varchar(64) DEFAULT NULL,
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PLUGINS`
--

INSERT INTO `PLUGINS` (`PLUGIN_NAME`, `PLUGIN_VERSION`, `PLUGIN_STATUS`, `PLUGIN_TYPE`, `PLUGIN_TYPE_VERSION`, `PLUGIN_LIBRARY`, `PLUGIN_LIBRARY_VERSION`, `PLUGIN_AUTHOR`, `PLUGIN_DESCRIPTION`, `PLUGIN_LICENSE`) VALUES
('binlog', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'MySQL AB', 'This is a pseudo storage engine to represent the binlog in a transaction', 'GPL'),
('partition', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'Mikael Ronstrom, MySQL AB', 'Partition Storage Engine Helper', 'GPL'),
('ARCHIVE', '3.0', 'ACTIVE', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'Brian Aker, MySQL AB', 'Archive storage engine', 'GPL'),
('BLACKHOLE', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'MySQL AB', '/dev/null storage engine (anything you write to it disappears)', 'GPL'),
('CSV', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'Brian Aker, MySQL AB', 'CSV storage engine', 'GPL'),
('FEDERATED', '1.0', 'DISABLED', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'Patrick Galbraith and Brian Aker, MySQL AB', 'Federated MySQL storage engine', 'GPL'),
('MEMORY', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'MySQL AB', 'Hash based, stored in memory, useful for temporary tables', 'GPL'),
('InnoDB', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'Innobase OY', 'Supports transactions, row-level locking, and foreign keys', 'GPL'),
('MyISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'MySQL AB', 'Default engine as of MySQL 3.23 with great performance', 'GPL'),
('MRG_MYISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50141.0', NULL, NULL, 'MySQL AB', 'Collection of identical MyISAM tables', 'GPL');

-- --------------------------------------------------------

--
-- Table structure for table `PROCESSLIST`
--

CREATE TEMPORARY TABLE `PROCESSLIST` (
  `ID` bigint(4) NOT NULL DEFAULT '0',
  `USER` varchar(16) NOT NULL DEFAULT '',
  `HOST` varchar(64) NOT NULL DEFAULT '',
  `DB` varchar(64) DEFAULT NULL,
  `COMMAND` varchar(16) NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT '0',
  `STATE` varchar(64) DEFAULT NULL,
  `INFO` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROCESSLIST`
--

INSERT INTO `PROCESSLIST` (`ID`, `USER`, `HOST`, `DB`, `COMMAND`, `TIME`, `STATE`, `INFO`) VALUES
(63, 'radioc', 'localhost', NULL, 'Query', 0, 'executing', 'SELECT * FROM `information_schema`.`PROCESSLIST`'),
(58, 'radioc', 'localhost:41397', 'radioc', 'Sleep', 83, '', NULL),
(57, 'radioc', 'localhost:41396', 'radioc', 'Sleep', 154, '', NULL),
(56, 'radioc', 'localhost:41395', 'radioc', 'Sleep', 154, '', NULL),
(55, 'radioc', 'localhost:41394', 'radioc', 'Sleep', 154, '', NULL),
(54, 'radioc', 'localhost:41393', 'radioc', 'Sleep', 154, '', NULL),
(53, 'radioc', 'localhost:41392', 'radioc', 'Sleep', 154, '', NULL),
(51, 'radioc', 'localhost:41380', 'radioc', 'Sleep', 154, '', NULL),
(50, 'radioc', 'localhost:41379', 'radioc', 'Sleep', 154, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` int(20) NOT NULL DEFAULT '0',
  `SEQ` int(20) NOT NULL DEFAULT '0',
  `STATE` varchar(30) NOT NULL DEFAULT '',
  `DURATION` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `CPU_USER` decimal(9,6) DEFAULT NULL,
  `CPU_SYSTEM` decimal(9,6) DEFAULT NULL,
  `CONTEXT_VOLUNTARY` int(20) DEFAULT NULL,
  `CONTEXT_INVOLUNTARY` int(20) DEFAULT NULL,
  `BLOCK_OPS_IN` int(20) DEFAULT NULL,
  `BLOCK_OPS_OUT` int(20) DEFAULT NULL,
  `MESSAGES_SENT` int(20) DEFAULT NULL,
  `MESSAGES_RECEIVED` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MAJOR` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MINOR` int(20) DEFAULT NULL,
  `SWAPS` int(20) DEFAULT NULL,
  `SOURCE_FUNCTION` varchar(30) DEFAULT NULL,
  `SOURCE_FILE` varchar(20) DEFAULT NULL,
  `SOURCE_LINE` int(20) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `REFERENTIAL_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `REFERENTIAL_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `UNIQUE_CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_NAME` varchar(64) DEFAULT NULL,
  `MATCH_OPTION` varchar(64) NOT NULL DEFAULT '',
  `UPDATE_RULE` varchar(64) NOT NULL DEFAULT '',
  `DELETE_RULE` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `REFERENCED_TABLE_NAME` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `REFERENTIAL_CONSTRAINTS`
--

INSERT INTO `REFERENTIAL_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `UNIQUE_CONSTRAINT_CATALOG`, `UNIQUE_CONSTRAINT_SCHEMA`, `UNIQUE_CONSTRAINT_NAME`, `MATCH_OPTION`, `UPDATE_RULE`, `DELETE_RULE`, `TABLE_NAME`, `REFERENCED_TABLE_NAME`) VALUES
(NULL, 'radioc', 'audio_media_ibfk_1', NULL, 'radioc', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'audio_media', 'emissions'),
(NULL, 'radioc', 'audio_media_ibfk_2', NULL, 'radioc', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'audio_media', 'mediatype'),
(NULL, 'radioc', 'emis_interv_ibfk_3', NULL, 'radioc', 'PRIMARY', 'NONE', 'RESTRICT', 'CASCADE', 'emis_interv', 'emissions'),
(NULL, 'radioc', 'emis_interv_ibfk_4', NULL, 'radioc', 'PRIMARY', 'NONE', 'RESTRICT', 'CASCADE', 'emis_interv', 'intervenants'),
(NULL, 'radioc', 'emis_interv_ibfk_1', NULL, 'radioc', 'PRIMARY', 'NONE', 'RESTRICT', 'CASCADE', 'emis_intervsuppl', 'emissions'),
(NULL, 'radioc', 'emis_interv_ibfk_2', NULL, 'radioc', 'PRIMARY', 'NONE', 'RESTRICT', 'CASCADE', 'emis_intervsuppl', 'intervenants'),
(NULL, 'radioc', 'emis_media_ibfk_3', NULL, 'radioc', 'PRIMARY', 'NONE', 'RESTRICT', 'CASCADE', 'emis_media', 'audio_media'),
(NULL, 'radioc', 'emis_media_ibfk_4', NULL, 'radioc', 'PRIMARY', 'NONE', 'RESTRICT', 'CASCADE', 'emis_media', 'emissions');

-- --------------------------------------------------------

--
-- Table structure for table `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_CATALOG` varchar(512) DEFAULT NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT '',
  `DTD_IDENTIFIER` varchar(64) DEFAULT NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL DEFAULT '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) DEFAULT NULL,
  `EXTERNAL_LANGUAGE` varchar(64) DEFAULT NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL DEFAULT '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL DEFAULT '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(64) DEFAULT NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `ROUTINE_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) DEFAULT NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(512) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL),
(NULL, 'radioc', 'latin1', 'latin1_swedish_ci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''radioc''@''localhost''', NULL, 'radioc', 'SELECT', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'INSERT', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'UPDATE', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'DELETE', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'CREATE', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'DROP', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'REFERENCES', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'INDEX', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'ALTER', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'CREATE TEMPORARY TABLES', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'LOCK TABLES', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'EXECUTE', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'CREATE VIEW', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'SHOW VIEW', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'CREATE ROUTINE', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'ALTER ROUTINE', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'EVENT', 'NO'),
('''radioc''@''localhost''', NULL, 'radioc', 'TRIGGER', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_STATUS`
--

CREATE TEMPORARY TABLE `SESSION_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_STATUS`
--

INSERT INTO `SESSION_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '8'),
('ABORTED_CONNECTS', '0'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '0'),
('BYTES_RECEIVED', '7304'),
('BYTES_SENT', '165137'),
('COM_ADMIN_COMMANDS', '0'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '0'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '0'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '0'),
('COM_BACKUP_TABLE', '0'),
('COM_BEGIN', '0'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '0'),
('COM_CHANGE_DB', '0'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '0'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '0'),
('COM_CREATE_DB', '0'),
('COM_CREATE_EVENT', '0'),
('COM_CREATE_FUNCTION', '0'),
('COM_CREATE_INDEX', '0'),
('COM_CREATE_PROCEDURE', '0'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '0'),
('COM_CREATE_TRIGGER', '0'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '0'),
('COM_CREATE_VIEW', '0'),
('COM_DEALLOC_SQL', '0'),
('COM_DELETE', '0'),
('COM_DELETE_MULTI', '0'),
('COM_DO', '0'),
('COM_DROP_DB', '0'),
('COM_DROP_EVENT', '0'),
('COM_DROP_FUNCTION', '0'),
('COM_DROP_INDEX', '0'),
('COM_DROP_PROCEDURE', '0'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '0'),
('COM_DROP_TRIGGER', '0'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '0'),
('COM_EMPTY_QUERY', '0'),
('COM_EXECUTE_SQL', '0'),
('COM_FLUSH', '0'),
('COM_GRANT', '0'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '0'),
('COM_INSERT', '0'),
('COM_INSERT_SELECT', '0'),
('COM_INSTALL_PLUGIN', '0'),
('COM_KILL', '0'),
('COM_LOAD', '0'),
('COM_LOAD_MASTER_DATA', '0'),
('COM_LOAD_MASTER_TABLE', '0'),
('COM_LOCK_TABLES', '0'),
('COM_OPTIMIZE', '0'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '0'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '0'),
('COM_RENAME_TABLE', '0'),
('COM_RENAME_USER', '0'),
('COM_REPAIR', '0'),
('COM_REPLACE', '0'),
('COM_REPLACE_SELECT', '0'),
('COM_RESET', '0'),
('COM_RESTORE_TABLE', '0'),
('COM_REVOKE', '0'),
('COM_REVOKE_ALL', '0'),
('COM_ROLLBACK', '0'),
('COM_ROLLBACK_TO_SAVEPOINT', '0'),
('COM_SAVEPOINT', '0'),
('COM_SELECT', '21'),
('COM_SET_OPTION', '23'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '0'),
('COM_SHOW_CHARSETS', '0'),
('COM_SHOW_COLLATIONS', '0'),
('COM_SHOW_COLUMN_TYPES', '0'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '0'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '0'),
('COM_SHOW_CREATE_PROC', '0'),
('COM_SHOW_CREATE_TABLE', '20'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '1'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '0'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '0'),
('COM_SHOW_FUNCTION_STATUS', '1'),
('COM_SHOW_GRANTS', '0'),
('COM_SHOW_KEYS', '0'),
('COM_SHOW_MASTER_STATUS', '0'),
('COM_SHOW_NEW_MASTER', '0'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '1'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '1'),
('COM_SHOW_PROCESSLIST', '0'),
('COM_SHOW_PROFILE', '0'),
('COM_SHOW_PROFILES', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '0'),
('COM_SHOW_STATUS', '0'),
('COM_SHOW_STORAGE_ENGINES', '0'),
('COM_SHOW_TABLE_STATUS', '40'),
('COM_SHOW_TABLES', '1'),
('COM_SHOW_TRIGGERS', '19'),
('COM_SHOW_VARIABLES', '0'),
('COM_SHOW_WARNINGS', '0'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '0'),
('COM_STMT_EXECUTE', '0'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '0'),
('COM_STMT_REPREPARE', '0'),
('COM_STMT_RESET', '0'),
('COM_STMT_SEND_LONG_DATA', '0'),
('COM_TRUNCATE', '0'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '0'),
('COM_UPDATE', '0'),
('COM_UPDATE_MULTI', '0'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '64'),
('CREATED_TMP_DISK_TABLES', '84'),
('CREATED_TMP_FILES', '5'),
('CREATED_TMP_TABLES', '275'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '0'),
('DELAYED_WRITES', '0'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '0'),
('HANDLER_DELETE', '0'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '0'),
('HANDLER_READ_FIRST', '3'),
('HANDLER_READ_KEY', '0'),
('HANDLER_READ_NEXT', '0'),
('HANDLER_READ_PREV', '0'),
('HANDLER_READ_RND', '0'),
('HANDLER_READ_RND_NEXT', '1532'),
('HANDLER_ROLLBACK', '0'),
('HANDLER_SAVEPOINT', '0'),
('HANDLER_SAVEPOINT_ROLLBACK', '0'),
('HANDLER_UPDATE', '0'),
('HANDLER_WRITE', '1619'),
('INNODB_BUFFER_POOL_PAGES_DATA', '96'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '0'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '34'),
('INNODB_BUFFER_POOL_PAGES_FREE', '927'),
('INNODB_BUFFER_POOL_PAGES_MISC', '1'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '1024'),
('INNODB_BUFFER_POOL_READ_AHEAD_RND', '3'),
('INNODB_BUFFER_POOL_READ_AHEAD_SEQ', '0'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '5207'),
('INNODB_BUFFER_POOL_READS', '26'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '564'),
('INNODB_DATA_FSYNCS', '12'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '4345856'),
('INNODB_DATA_READS', '87'),
('INNODB_DATA_WRITES', '19'),
('INNODB_DATA_WRITTEN', '1141248'),
('INNODB_DBLWR_PAGES_WRITTEN', '34'),
('INNODB_DBLWR_WRITES', '2'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '57'),
('INNODB_LOG_WRITES', '4'),
('INNODB_OS_LOG_FSYNCS', '8'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '25088'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '6'),
('INNODB_PAGES_READ', '90'),
('INNODB_PAGES_WRITTEN', '34'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '0'),
('INNODB_ROW_LOCK_TIME_AVG', '0'),
('INNODB_ROW_LOCK_TIME_MAX', '0'),
('INNODB_ROW_LOCK_WAITS', '0'),
('INNODB_ROWS_DELETED', '0'),
('INNODB_ROWS_INSERTED', '0'),
('INNODB_ROWS_READ', '854'),
('INNODB_ROWS_UPDATED', '0'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '14495'),
('KEY_BLOCKS_USED', '2'),
('KEY_READ_REQUESTS', '13'),
('KEY_READS', '2'),
('KEY_WRITE_REQUESTS', '8'),
('KEY_WRITES', '2'),
('LAST_QUERY_COST', '10.499000'),
('MAX_USED_CONNECTIONS', '9'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '56'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '38'),
('OPEN_TABLES', '41'),
('OPENED_FILES', '766'),
('OPENED_TABLE_DEFINITIONS', '0'),
('OPENED_TABLES', '15'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '1'),
('QCACHE_FREE_MEMORY', '16635384'),
('QCACHE_HITS', '15'),
('QCACHE_INSERTS', '30'),
('QCACHE_LOWMEM_PRUNES', '0'),
('QCACHE_NOT_CACHED', '105'),
('QCACHE_QUERIES_IN_CACHE', '30'),
('QCACHE_TOTAL_BLOCKS', '68'),
('QUERIES', '633'),
('QUESTIONS', '128'),
('RPL_STATUS', 'NULL'),
('SELECT_FULL_JOIN', '0'),
('SELECT_FULL_RANGE_JOIN', '0'),
('SELECT_RANGE', '0'),
('SELECT_RANGE_CHECK', '0'),
('SELECT_SCAN', '84'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '0'),
('SORT_MERGE_PASSES', '0'),
('SORT_RANGE', '0'),
('SORT_ROWS', '0'),
('SORT_SCAN', '0'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '118'),
('TABLE_LOCKS_WAITED', '0'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '0'),
('THREADS_CONNECTED', '9'),
('THREADS_CREATED', '10'),
('THREADS_RUNNING', '1'),
('UPTIME', '6515'),
('UPTIME_SINCE_FLUSH_STATUS', '6515');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_VARIABLES`
--

CREATE TEMPORARY TABLE `SESSION_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_VARIABLES`
--

INSERT INTO `SESSION_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('CHARACTER_SET_CONNECTION', 'utf8'),
('HAVE_CRYPT', 'YES'),
('MAX_CONNECT_ERRORS', '10'),
('MYISAM_REPAIR_THREADS', '1'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('CHARACTER_SET_DATABASE', 'latin1'),
('BACK_LOG', '50'),
('INNODB_FILE_PER_TABLE', 'OFF'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('SSL_CERT', ''),
('MYISAM_USE_MMAP', 'OFF'),
('DELAYED_INSERT_TIMEOUT', '300'),
('FLUSH', 'OFF'),
('LOG_BIN_TRUST_ROUTINE_CREATORS', 'OFF'),
('MAX_CONNECTIONS', '151'),
('MYISAM_SORT_BUFFER_SIZE', '8388608'),
('CHARACTER_SETS_DIR', '/usr/share/mysql/charsets/'),
('IDENTITY', '0'),
('BINLOG_CACHE_SIZE', '32768'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('LOWER_CASE_TABLE_NAMES', '0'),
('SLOW_LAUNCH_TIME', '2'),
('COMPLETION_TYPE', '0'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('RELAY_LOG_INDEX', ''),
('BASEDIR', '/usr/'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('LONG_QUERY_TIME', '10.000000'),
('SQL_LOG_UPDATE', 'ON'),
('DELAYED_QUEUE_SIZE', '1000'),
('INNODB_USE_LEGACY_CARDINALITY_ALGORITHM', 'ON'),
('FT_MAX_WORD_LEN', '84'),
('LOCKED_IN_MEMORY', 'OFF'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('SYSTEM_TIME_ZONE', 'MSD'),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('REPORT_HOST', ''),
('LARGE_PAGES', 'OFF'),
('SSL_KEY', ''),
('DELAYED_INSERT_LIMIT', '100'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('INTERACTIVE_TIMEOUT', '28800'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('COLLATION_DATABASE', 'latin1_swedish_ci'),
('INSERT_ID', '0'),
('CONCURRENT_INSERT', '1'),
('RELAY_LOG_PURGE', 'ON'),
('DELAY_KEY_WRITE', 'ON'),
('SKIP_SHOW_DATABASE', 'OFF'),
('FT_MIN_WORD_LEN', '4'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('AUTO_INCREMENT_OFFSET', '1'),
('INNODB_LOG_BUFFER_SIZE', '8388608'),
('LANGUAGE', '/usr/share/mysql/english/'),
('INNODB_CHECKSUMS', 'ON'),
('JOIN_BUFFER_SIZE', '131072'),
('INNODB_MAX_PURGE_LAG', '0'),
('CONNECT_TIMEOUT', '10'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('SQL_LOW_PRIORITY_UPDATES', 'OFF'),
('VERSION_COMPILE_OS', 'debian-linux-gnu'),
('INIT_FILE', ''),
('SQL_NOTES', 'ON'),
('LARGE_PAGE_SIZE', '0'),
('LOW_PRIORITY_UPDATES', 'OFF'),
('INIT_SLAVE', ''),
('REPORT_PASSWORD', ''),
('MAX_BINLOG_SIZE', '104857600'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('MAX_ERROR_COUNT', '64'),
('HAVE_COMPRESS', 'YES'),
('WARNING_COUNT', '0'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('LOG_WARNINGS', '1'),
('THREAD_CACHE_SIZE', '8'),
('PSEUDO_THREAD_ID', '63'),
('INNODB_DOUBLEWRITE', 'ON'),
('MAX_SORT_LENGTH', '1024'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('LOWER_CASE_FILE_SYSTEM', 'OFF'),
('DEFAULT_WEEK_FORMAT', '0'),
('MAX_RELAY_LOG_SIZE', '0'),
('LOG_OUTPUT', 'FILE'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('FT_STOPWORD_FILE', '(built-in)'),
('COLLATION_SERVER', 'latin1_swedish_ci'),
('PROTOCOL_VERSION', '10'),
('CHARACTER_SET_SERVER', 'latin1'),
('HAVE_SYMLINK', 'YES'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('TIME_ZONE', '+00:00'),
('MAX_HEAP_TABLE_SIZE', '16777216'),
('INNODB_TABLE_LOCKS', 'ON'),
('LAST_INSERT_ID', '0'),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('NET_RETRY_COUNT', '10'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('NET_BUFFER_LENGTH', '16384'),
('SQL_AUTO_IS_NULL', 'ON'),
('NET_WRITE_TIMEOUT', '60'),
('SLAVE_TRANSACTION_RETRIES', '10'),
('CHARACTER_SET_RESULTS', 'utf8'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('LOG_SLAVE_UPDATES', 'OFF'),
('GENERAL_LOG', 'OFF'),
('REPORT_PORT', '3306'),
('TABLE_TYPE', 'MyISAM'),
('MYISAM_MAX_SORT_FILE_SIZE', '2146435072'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('HAVE_GEOMETRY', 'YES'),
('INNODB_STATS_ON_METADATA', 'ON'),
('FLUSH_TIME', '0'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('IGNORE_BUILTIN_INNODB', 'OFF'),
('PROFILING_HISTORY_SIZE', '15'),
('MAX_BINLOG_CACHE_SIZE', '4294963200'),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '2097152'),
('READ_BUFFER_SIZE', '131072'),
('READ_RND_BUFFER_SIZE', '262144'),
('BULK_INSERT_BUFFER_SIZE', '8388608'),
('SECURE_AUTH', 'OFF'),
('SQL_BIG_SELECTS', 'ON'),
('BIG_TABLES', 'OFF'),
('OLD_PASSWORDS', 'OFF'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('QUERY_PREALLOC_SIZE', '8192'),
('DATE_FORMAT', '%Y-%m-%d'),
('MAX_ALLOWED_PACKET', '16777216'),
('READ_ONLY', 'OFF'),
('MAX_SEEKS_FOR_KEY', '4294967295'),
('RAND_SEED1', ''),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('INNODB_DATA_FILE_PATH', '/idbdata1:10M:autoextend'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('QUERY_CACHE_SIZE', '16777216'),
('SQL_SAFE_UPDATES', 'OFF'),
('PROFILING', 'OFF'),
('THREAD_STACK', '196608'),
('PLUGIN_DIR', '/usr/lib/mysql/plugin'),
('OPEN_FILES_LIMIT', '1024'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('EVENT_SCHEDULER', 'OFF'),
('GENERAL_LOG_FILE', '/var/lib/mysql/gepjavaplatform.log'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('LARGE_FILES_SUPPORT', 'ON'),
('PID_FILE', '/var/lib/mysql/gepjavaplatform.pid'),
('AUTO_INCREMENT_INCREMENT', '1'),
('RPL_RECOVERY_RANK', '0'),
('TMPDIR', '/tmp'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('EXPIRE_LOGS_DAYS', '10'),
('QUERY_CACHE_LIMIT', '1048576'),
('HAVE_PARTITIONING', 'YES'),
('SSL_CAPATH', ''),
('FOREIGN_KEY_CHECKS', 'ON'),
('VERSION_COMMENT', '(Ubuntu)'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on'),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('MAX_WRITE_LOCK_COUNT', '4294967295'),
('UNIQUE_CHECKS', 'ON'),
('TIMED_MUTEXES', 'OFF'),
('VERSION', '5.1.41-3ubuntu12.10'),
('VERSION_COMPILE_MACHINE', 'i486'),
('INNODB_SUPPORT_XA', 'ON'),
('NET_READ_TIMEOUT', '30'),
('INNODB_SYNC_SPIN_LOOPS', '20'),
('SERVER_ID', '0'),
('COLLATION_CONNECTION', 'utf8_general_ci'),
('SKIP_NETWORKING', 'OFF'),
('HAVE_QUERY_CACHE', 'YES'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('INIT_CONNECT', ''),
('TABLE_DEFINITION_CACHE', '256'),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('DIV_PRECISION_INCREMENT', '4'),
('AUTOCOMMIT', 'ON'),
('DATADIR', '/var/lib/mysql/'),
('SSL_CIPHER', ''),
('INNODB_DATA_HOME_DIR', ''),
('MAX_SP_RECURSION_DEPTH', '0'),
('QUERY_CACHE_TYPE', 'ON'),
('TMP_TABLE_SIZE', '16777216'),
('SQL_SLAVE_SKIP_COUNTER', ''),
('TABLE_LOCK_WAIT_TIMEOUT', '50'),
('TIME_FORMAT', '%H:%i:%s'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('INNODB_FORCE_RECOVERY', '0'),
('HOSTNAME', 'gepjavaplatform'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('SQL_BIG_TABLES', 'OFF'),
('ERROR_COUNT', '0'),
('LOG_BIN', 'OFF'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('SQL_MODE', ''),
('SYNC_BINLOG', '0'),
('MAX_USER_CONNECTIONS', '0'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_OPEN_FILES', '300'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('OLD', 'OFF'),
('NEW', 'OFF'),
('INNODB_MAX_DIRTY_PAGES_PCT', '90'),
('SECURE_FILE_PRIV', ''),
('HAVE_COMMUNITY_FEATURES', 'YES'),
('SQL_BUFFER_RESULT', 'OFF'),
('KEY_BUFFER_SIZE', '16777216'),
('RELAY_LOG', ''),
('HAVE_NDBCLUSTER', 'NO'),
('HAVE_CSV', 'YES'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('SQL_LOG_BIN', 'ON'),
('INNODB_LOG_GROUP_HOME_DIR', './'),
('TABLE_OPEN_CACHE', '64'),
('INNODB_FAST_SHUTDOWN', '1'),
('HAVE_INNODB', 'YES'),
('SSL_CA', ''),
('MYISAM_RECOVER_OPTIONS', 'BACKUP'),
('INNODB_THREAD_CONCURRENCY', '8'),
('LOG_ERROR', '/var/log/mysql/error.log'),
('SLAVE_NET_TIMEOUT', '3600'),
('REPORT_USER', ''),
('INNODB_BUFFER_POOL_SIZE', '16777216'),
('LOG', 'OFF'),
('LOCAL_INFILE', 'ON'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('HAVE_RTREE_KEYS', 'YES'),
('LC_TIME_NAMES', 'en_US'),
('BINLOG_FORMAT', 'STATEMENT'),
('LOG_SLOW_QUERIES', 'OFF'),
('OLD_ALTER_TABLE', 'OFF'),
('MAX_TMP_TABLES', '32'),
('SQL_WARNINGS', 'OFF'),
('SQL_LOG_OFF', 'OFF'),
('SYNC_FRM', 'ON'),
('SLOW_QUERY_LOG_FILE', '/var/lib/mysql/gepjavaplatform-slow.log'),
('TIMESTAMP', '1318791198'),
('MULTI_RANGE_COUNT', '256'),
('MAX_DELAYED_THREADS', '20'),
('SLOW_QUERY_LOG', 'OFF'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('INNODB_FLUSH_METHOD', ''),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('INNODB_FILE_IO_THREADS', '4'),
('STORAGE_ENGINE', 'MyISAM'),
('LICENSE', 'GPL'),
('HAVE_SSL', 'DISABLED'),
('INNODB_LOG_FILE_SIZE', '262144000'),
('INNODB_CONCURRENCY_TICKETS', '500'),
('PORT', '3306'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('SORT_BUFFER_SIZE', '2097144'),
('WAIT_TIMEOUT', '28800'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('SOCKET', '/var/run/mysqld/mysqld.sock'),
('CHARACTER_SET_CLIENT', 'utf8'),
('RAND_SEED2', ''),
('HAVE_OPENSSL', 'DISABLED'),
('PRELOAD_BUFFER_SIZE', '32768'),
('SLAVE_LOAD_TMPDIR', '/tmp');

-- --------------------------------------------------------

--
-- Table structure for table `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `NON_UNIQUE` bigint(1) NOT NULL DEFAULT '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `INDEX_NAME` varchar(64) NOT NULL DEFAULT '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL DEFAULT '0',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLLATION` varchar(1) DEFAULT NULL,
  `CARDINALITY` bigint(21) DEFAULT NULL,
  `SUB_PART` bigint(3) DEFAULT NULL,
  `PACKED` varchar(10) DEFAULT NULL,
  `NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `INDEX_TYPE` varchar(16) NOT NULL DEFAULT '',
  `COMMENT` varchar(16) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'radioc', 'approle', 0, 'radioc', 'PRIMARY', 1, 'username', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'approle', 1, 'radioc', 'FKD0BB021765C3DEF3', 1, 'authority', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'appuser', 0, 'radioc', 'PRIMARY', 1, 'userid', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'appuser', 0, 'radioc', 'userid', 1, 'userid', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'audio_media', 0, 'radioc', 'PRIMARY', 1, 'id', 'A', 6, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'audio_media', 1, 'radioc', 'id', 1, 'id', 'A', 6, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'audio_media', 1, 'radioc', 'emission', 1, 'emission', 'A', 2, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'radioc', 'audio_media', 1, 'radioc', 'type', 1, 'type', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'audio_media', 1, 'radioc', 'accesskey', 1, 'accesskey', 'A', 6, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'radioc', 'category', 0, 'radioc', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emis_interv', 0, 'radioc', 'PRIMARY', 1, 'id_intervenant', 'A', 74, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emis_interv', 0, 'radioc', 'PRIMARY', 2, 'id_emission', 'A', 74, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emis_interv', 1, 'radioc', 'id_emission', 1, 'id_emission', 'A', 74, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emis_intervsuppl', 0, 'radioc', 'PRIMARY', 1, 'id_intervenant', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emis_intervsuppl', 0, 'radioc', 'PRIMARY', 2, 'id_emission', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emis_intervsuppl', 1, 'radioc', 'id_emission', 1, 'id_emission', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emis_media', 0, 'radioc', 'PRIMARY', 1, 'id_media', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emis_media', 1, 'radioc', 'id_emission', 1, 'id_emission', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emissions', 0, 'radioc', 'PRIMARY', 1, 'id', 'A', 112, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'emissions', 1, 'radioc', 'name', 1, 'name', 'A', 37, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'intervenants', 0, 'radioc', 'PRIMARY', 1, 'id', 'A', 78, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'intervenants', 1, 'radioc', 'name', 1, 'name', 'A', 78, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'itunesparams', 0, 'radioc', 'PRIMARY', 1, 'param', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'mediatype', 0, 'radioc', 'PRIMARY', 1, 'term', 'A', 9, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'mediatype', 0, 'radioc', 'PRIMARY', 2, 'type', 'A', 9, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'mediatype', 1, 'radioc', 'type', 1, 'type', 'A', 9, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'roles', 0, 'radioc', 'PRIMARY', 1, 'name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'subcategory', 0, 'radioc', 'PRIMARY', 1, 'supercatid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'radioc', 'subcategory', 0, 'radioc', 'PRIMARY', 2, 'subcatid', 'A', 0, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `AUTO_INCREMENT` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `TABLE_COLLATION` varchar(32) DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `CREATE_OPTIONS` varchar(255) DEFAULT NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 384, 0, 16604160, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=43690', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 231, 0, 16704765, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=72628', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 195, 0, 16691610, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=86037', ''),
(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, 'utf8_general_ci', NULL, 'max_rows=4560', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2565, 0, 16757145, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6540', ''),
(NULL, 'information_schema', 'ENGINES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 490, 0, 16709000, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=34239', ''),
(NULL, 'information_schema', 'EVENTS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, 'utf8_general_ci', NULL, 'max_rows=618', ''),
(NULL, 'information_schema', 'FILES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2677, 0, 16758020, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6267', ''),
(NULL, 'information_schema', 'GLOBAL_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4637, 0, 16762755, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3618', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, 'utf8_general_ci', NULL, 'max_rows=5612', ''),
(NULL, 'information_schema', 'PLUGINS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, 'utf8_general_ci', NULL, 'max_rows=13025', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, 'utf8_general_ci', NULL, 'max_rows=23899', ''),
(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 308, 0, 16562084, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=54471', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4814, 0, 16767162, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3485', ''),
(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, 'utf8_general_ci', NULL, 'max_rows=588', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3464, 0, 16755368, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4843', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2179, 0, 16767405, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7699', ''),
(NULL, 'information_schema', 'SESSION_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
(NULL, 'information_schema', 'SESSION_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2679, 0, 16770540, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6262', ''),
(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3545, 0, 16760760, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4732', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2504, 0, 16749256, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6700', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2372, 0, 16748692, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7073', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, 'utf8_general_ci', NULL, 'max_rows=569', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 1986, 0, 16759854, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=8447', ''),
(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-10-16 18:53:18', '2011-10-16 18:53:18', NULL, 'utf8_general_ci', NULL, 'max_rows=6932', ''),
(NULL, 'radioc', 'approle', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 4, 24, 96, 281474976710655, 3072, 0, NULL, '2011-10-16 18:50:41', '2011-10-16 18:50:41', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'appuser', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 4, 57, 228, 281474976710655, 3072, 0, 7, '2011-10-02 13:00:34', '2011-10-02 13:00:34', '2011-10-16 16:41:43', 'latin1_swedish_ci', NULL, '', 'User Table'),
(NULL, 'radioc', 'audio_media', 'BASE TABLE', 'InnoDB', 10, 'Compact', 6, 2730, 16384, 0, 65536, 11534336, 11, '2011-10-03 20:57:33', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'category', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 0, 11534336, 1, '2011-10-02 13:00:34', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'emis_interv', 'BASE TABLE', 'InnoDB', 10, 'Compact', 74, 221, 16384, 0, 16384, 11534336, NULL, '2011-10-02 13:00:34', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'emis_intervsuppl', 'BASE TABLE', 'InnoDB', 10, 'Compact', 2, 8192, 16384, 0, 16384, 11534336, NULL, '2011-10-02 13:00:34', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'emis_media', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 16384, 11534336, NULL, '2011-10-02 13:00:34', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'emissions', 'BASE TABLE', 'InnoDB', 10, 'Compact', 100, 655, 65536, 0, 16384, 11534336, 100, '2011-10-02 13:00:34', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'hibernate_sequences', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 20, 20, 281474976710655, 1024, 0, NULL, '2011-10-02 13:00:34', '2011-10-02 13:00:34', '2011-10-16 16:41:43', 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'intervenants', 'BASE TABLE', 'InnoDB', 10, 'Compact', 78, 210, 16384, 0, 16384, 11534336, 97, '2011-10-02 13:00:34', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'intervenants_emissions', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 0, 11534336, NULL, '2011-10-02 13:00:34', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'itunesparams', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2011-10-02 13:00:34', '2011-10-02 13:00:34', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'mediatype', 'BASE TABLE', 'InnoDB', 10, 'Compact', 9, 1820, 16384, 0, 16384, 11534336, NULL, '2011-10-02 13:00:34', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'roles', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 0, 11534336, NULL, '2011-10-16 18:50:41', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'radioc', 'subcategory', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 2533274790395903, 1024, 0, NULL, '2011-10-02 13:00:34', '2011-10-02 13:00:34', NULL, 'latin1_swedish_ci', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
(NULL, 'radioc', 'PRIMARY', 'radioc', 'approle', 'PRIMARY KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'appuser', 'PRIMARY KEY'),
(NULL, 'radioc', 'userid', 'radioc', 'appuser', 'UNIQUE'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'audio_media', 'PRIMARY KEY'),
(NULL, 'radioc', 'audio_media_ibfk_1', 'radioc', 'audio_media', 'FOREIGN KEY'),
(NULL, 'radioc', 'audio_media_ibfk_2', 'radioc', 'audio_media', 'FOREIGN KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'category', 'PRIMARY KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'emis_interv', 'PRIMARY KEY'),
(NULL, 'radioc', 'emis_interv_ibfk_3', 'radioc', 'emis_interv', 'FOREIGN KEY'),
(NULL, 'radioc', 'emis_interv_ibfk_4', 'radioc', 'emis_interv', 'FOREIGN KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'emis_intervsuppl', 'PRIMARY KEY'),
(NULL, 'radioc', 'emis_interv_ibfk_1', 'radioc', 'emis_intervsuppl', 'FOREIGN KEY'),
(NULL, 'radioc', 'emis_interv_ibfk_2', 'radioc', 'emis_intervsuppl', 'FOREIGN KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'emis_media', 'PRIMARY KEY'),
(NULL, 'radioc', 'emis_media_ibfk_3', 'radioc', 'emis_media', 'FOREIGN KEY'),
(NULL, 'radioc', 'emis_media_ibfk_4', 'radioc', 'emis_media', 'FOREIGN KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'emissions', 'PRIMARY KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'intervenants', 'PRIMARY KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'itunesparams', 'PRIMARY KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'mediatype', 'PRIMARY KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'roles', 'PRIMARY KEY'),
(NULL, 'radioc', 'PRIMARY', 'radioc', 'subcategory', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) DEFAULT NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TRIGGER_NAME` varchar(64) NOT NULL DEFAULT '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL DEFAULT '',
  `EVENT_OBJECT_CATALOG` varchar(512) DEFAULT NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL DEFAULT '',
  `ACTION_ORDER` bigint(4) NOT NULL DEFAULT '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL DEFAULT '',
  `ACTION_TIMING` varchar(6) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL DEFAULT '',
  `CREATED` datetime DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''radioc''@''localhost''', NULL, 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL DEFAULT '',
  `IS_UPDATABLE` varchar(3) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Database: `radioc`
--
CREATE DATABASE `radioc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `radioc`;

-- --------------------------------------------------------

--
-- Table structure for table `approle`
--

CREATE TABLE IF NOT EXISTS `approle` (
  `username` varchar(16) NOT NULL,
  `authority` varchar(16) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `FKD0BB021765C3DEF3` (`authority`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approle`
--

INSERT INTO `approle` (`username`, `authority`) VALUES
('admin', 'ROLE_SUPERVISOR'),
('User', 'ROLE_USER'),
('allen', 'ROLE_SUPERVISOR'),
('gba', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE IF NOT EXISTS `appuser` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(36) NOT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `enabled` varchar(7) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='User Table' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`userid`, `username`, `password`, `firstname`, `lastname`, `email`, `enabled`, `id`) VALUES
(5, 'admin', 'fd690a2189ea50b69a9447de69877d47', NULL, NULL, NULL, '1', 0),
(3, 'User', '09ea5e27db2ad175cd47c83a73e7f687', 'gg', 'ga', 'gg@rc.fr', '1', 0),
(4, 'allen', 'ba345dacf07e4829859349d17054a5bb', NULL, NULL, NULL, '1', 0),
(6, 'gba', '1c3a16df88ab850e44f79de4a00f9767', NULL, NULL, NULL, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `audio_media`
--

CREATE TABLE IF NOT EXISTS `audio_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id for index',
  `title` varchar(50) NOT NULL COMMENT 'Title of media',
  `private` tinyint(1) NOT NULL COMMENT 'Private or not',
  `path` varchar(255) NOT NULL COMMENT 'Path to file',
  `type` varchar(10) NOT NULL COMMENT 'Type of file',
  `emission` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `datemodif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datecreate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author` varchar(255) DEFAULT NULL,
  `blocked` bit(1) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `episodeNumber` int(11) DEFAULT NULL,
  `explicit` bit(1) DEFAULT NULL,
  `imgPath` varchar(255) DEFAULT NULL,
  `isClosedCaptioned` bit(1) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `pubDate` datetime DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `emission_id` bigint(20) NOT NULL,
  `accesskey` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `emission` (`emission`),
  KEY `type` (`type`),
  KEY `accesskey` (`accesskey`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `audio_media`
--

INSERT INTO `audio_media` (`id`, `title`, `private`, `path`, `type`, `emission`, `description`, `datemodif`, `datecreate`, `author`, `blocked`, `category`, `duration`, `episodeNumber`, `explicit`, `imgPath`, `isClosedCaptioned`, `keywords`, `pubDate`, `subtitle`, `emission_id`, `accesskey`) VALUES
(2, 'Concerto', 1, 'concerto/concerto', 'MP3', NULL, 'Un concerto pour piano', '2011-08-21 09:45:54', '2011-08-20 11:43:25', 'Mozart', b'0', 'Musique classique', NULL, 1, b'0', 'concerto.png', NULL, 'mozart,musique,classique', '2012-06-08 00:00:00', 'Concerto pour piano', 21, NULL),
(3, 'Concerto 2-2', 1, 'concerto/oboe', 'MP3', NULL, 'Concerto n°2', '2011-08-23 22:45:22', '2011-08-20 12:30:32', 'Mozart', b'0', 'Musique classique', '01:03:48', 2, b'0', '', NULL, 'mozart,musique,classique', '2013-03-08 00:00:00', 'Concerto pour piano 2', 21, NULL),
(4, 'Test', 0, 'livresjour/histoireart/1', 'MP3', NULL, '', '2011-10-02 10:23:34', '2011-10-02 10:22:25', '', b'0', '', NULL, NULL, b'0', '', NULL, '', '2011-10-02 02:21:00', 'Test', 32, NULL),
(5, 'Test 2', 0, 'test/test2/1', 'MP3', NULL, 'Blablabla', '2011-10-02 14:25:03', '2011-10-02 14:25:03', 'Test Auteur', b'0', 'Test Catégorie', NULL, NULL, b'0', '', NULL, '', '2011-10-02 06:24:00', 'ST Test2', 22, NULL),
(9, 'Nouvel Episode', 0, 'livresjour/histoireart/1', 'MP3', NULL, '', '2011-10-03 18:37:24', '2011-10-03 18:37:24', 'Quelqu''un', b'0', 'Une catégorie', '01:03:07', NULL, b'0', '', NULL, 'Des mots clés', '2011-10-19 10:36:00', 'ST ', 32, '9481eb0907825937c59653e612ed6d19'),
(10, 'Bulletin de réinfo du 01/10/2011', 0, 'bulletindereinfo_2011/reinfo_20111001', 'MP3', NULL, '', '2011-10-05 22:25:00', '2011-10-05 22:25:51', '', b'0', '', NULL, NULL, b'0', '', NULL, '', '2011-10-01 07:15:00', '01/10/2011', 85, '8faf9714622a16682465c4189f13d6ec');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emis_interv`
--

CREATE TABLE IF NOT EXISTS `emis_interv` (
  `id_emission` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  PRIMARY KEY (`id_intervenant`,`id_emission`),
  KEY `id_emission` (`id_emission`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emis_interv`
--

INSERT INTO `emis_interv` (`id_emission`, `id_intervenant`) VALUES
(22, 92),
(23, 81),
(24, 39),
(25, 69),
(26, 32),
(26, 71),
(27, 23),
(28, 87),
(31, 28),
(32, 49),
(33, 72),
(34, 30),
(35, 25),
(36, 67),
(37, 77),
(38, 79),
(39, 62),
(40, 52),
(41, 37),
(42, 80),
(43, 54),
(44, 45),
(45, 56),
(46, 36),
(47, 53),
(48, 20),
(49, 89),
(50, 59),
(51, 70),
(52, 26),
(53, 31),
(54, 61),
(55, 22),
(56, 60),
(57, 83),
(58, 41),
(59, 85),
(60, 74),
(61, 40),
(62, 63),
(63, 34),
(65, 43),
(66, 86),
(67, 19),
(68, 24),
(69, 75),
(70, 65),
(71, 46),
(72, 78),
(73, 50),
(74, 90),
(75, 47),
(76, 57),
(77, 55),
(78, 66),
(79, 76),
(80, 51),
(81, 88),
(82, 73),
(84, 35),
(85, 58),
(86, 93),
(87, 21),
(88, 38),
(88, 84),
(89, 44),
(90, 82),
(91, 42),
(92, 91),
(93, 68),
(95, 94),
(96, 95),
(97, 96),
(99, 31);

-- --------------------------------------------------------

--
-- Table structure for table `emis_intervsuppl`
--

CREATE TABLE IF NOT EXISTS `emis_intervsuppl` (
  `id_emission` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  PRIMARY KEY (`id_intervenant`,`id_emission`),
  KEY `id_emission` (`id_emission`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emis_intervsuppl`
--

INSERT INTO `emis_intervsuppl` (`id_emission`, `id_intervenant`) VALUES
(81, 28),
(99, 58);

-- --------------------------------------------------------

--
-- Table structure for table `emis_media`
--

CREATE TABLE IF NOT EXISTS `emis_media` (
  `id_media` int(11) NOT NULL,
  `id_emission` int(11) NOT NULL,
  PRIMARY KEY (`id_media`),
  KEY `id_emission` (`id_emission`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emissions`
--

CREATE TABLE IF NOT EXISTS `emissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `date_emission` timestamp NULL DEFAULT NULL,
  `datemodif` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datecreate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `themes` varchar(255) DEFAULT NULL,
  `podcastable` tinyint(1) NOT NULL,
  `category` varchar(128) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `emtime` time DEFAULT NULL,
  `weekday` varchar(128) DEFAULT NULL,
  `week` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `emissions`
--

INSERT INTO `emissions` (`id`, `name`, `date_emission`, `datemodif`, `datecreate`, `themes`, `podcastable`, `category`, `complete`, `keywords`, `summary`, `subtitle`, `title`, `emtime`, `weekday`, `week`) VALUES
(22, 'Les Livres du jour', '2011-10-01 18:06:58', '2011-10-01 18:24:31', '2011-10-01 18:06:58', '', 0, 'Les Livres du jour', 0, '', 'Emission philosophique où l?on traite des grandes questions religieuses, politiques,\r\néconomiques, des questions d?actualité qui méritent un traitement philosophique, et de la\r\nfaçon dont les progrès scientifiques, en biologie, en physique fondamentale ou en astronomie,\r\nchangent la manière même dont on peut penser la présence de l?homme au monde.\r\nCette émission a été créée le 24 janvier 2011 et remplace « Regard sur le monde », émission\r\ndirigée par le général Pierre-Marie Gallois, disparu le 23 août 2010.', '', 'Le Monde de la philosophie', NULL, 'Lundi', ''),
(23, 'Les Livres du jour', '2011-10-01 19:12:58', '2011-10-01 19:18:36', '2011-10-01 19:12:58', '', 0, '', 0, '', 'Emission consacrée à la défense et à la promotion de la francophonie.\r\nCette émission existe depuis plusieurs années.', '', 'Le français en partage', NULL, 'Lundi', ''),
(24, 'Les Livres du jour', '2011-10-01 19:18:43', '2011-10-01 19:19:48', '2011-10-01 19:18:43', '', 0, '', 0, '', 'Quentin Debray s''entretient avec des auteurs de romans à thématique psychologique, des\r\nauteurs de biographies, des historiens. Il accueille également des spécialistes, psychologues et\r\npsychiatres, qui ont travaillé sur des situations ou des sentiments fréquents, tels que l''anxiété,\r\nla solitude, la timidité. Des thématiques fondamentales, et qui relèvent de la recherche\r\nscientifique, peuvent être abordées, telles que la conscience, la mémoire, la représentation.\r\nCette émission a été créée le 3 mai 2010.', '', 'Psychologie et littérature', NULL, 'Lundi', ''),
(25, 'Les Livres du jour', '2011-10-01 19:19:51', '2011-10-01 19:20:32', '2011-10-01 19:19:51', '', 0, '', 0, '', 'L?émission comporte un entretien avec plusieurs invités autour d?un thème précis en relation\r\navec l?usage du français, une série d?informations brèves sur des événements linguistiques, et\r\nfinit par un jeu.\r\nCette émission, créée il y a plusieurs années par Jacques Lacant, a été reprise par Michel\r\nMourlet le 27 novembre 2006 et a changé de titre le 9 juillet 2007 (précédemment : « Langue\r\nfrançaise, joyau de notre patrimoine »).', '', 'Français, mon beau souci', NULL, 'Lundi', ''),
(26, 'Les Livres du jour', '2011-10-01 19:20:34', '2011-10-01 19:22:47', '2011-10-01 19:20:34', '', 0, '', 0, '', 'Chaque semaine, sont reçus des historiens, des écrivains, des personnalités. Les directrices\r\nd?émission utilisent leurs connaissances respectives pour mettre en valeur le thème et l?invité\r\ndans le souci d?enrichir leur auditoire.\r\nCette émission existe depuis plusieurs années.', '', 'Les mardis de la mémoire', NULL, 'Mardi', ''),
(27, 'Les Livres du jour', '2011-10-01 19:22:56', '2011-10-01 19:23:42', '2011-10-01 19:22:56', '', 0, '', 0, '', 'Emission parlée portant sur la musique.\r\nCette émission a été créée le 25 février 2009.', '', 'Art et magie de la musique', NULL, 'Mercredi', ''),
(28, 'Les Livres du jour', '2011-10-01 19:24:21', '2011-10-01 19:25:58', '2011-10-01 19:24:21', '', 0, '', 0, '', 'Emission d?actualité culturelle et présentant, autour d?une conversation avec une personnalité du\r\nmonde culturel, les nouveautés de la littérature et du spectacle.\r\nCette émission a été créée le 26 mai 2010.', '', 'Voix au chapitre', NULL, 'Mercredi', ''),
(29, 'Les Livres du jour', '2011-10-01 19:26:00', '2011-10-01 19:26:18', '2011-10-01 19:26:00', '', 0, '', 0, '', 'Emission couvrant l?actualité musicale (sorties de disques, de livres de musicographie ou de\r\nmusicologie), proposant des entretiens avec des personnalités du monde musical, ou\r\nconsacrée à la présentation de thèmes de réflexion esthétique, liés à la musique et à son\r\nhistoire.\r\nCette émission, créée il y a plusieurs année par Jean-Pierre Tardif, a été reprise par Jean-\r\nBernard Cahours d?Aspry depuis le 14 janvier 2008 (précédemment : « Musique et\r\npassion »).', '', 'Le florilège des arts', NULL, 'Mercredi', ''),
(30, 'Les Livres du jour', '2011-10-01 19:26:21', '2011-10-01 19:26:34', '2011-10-01 19:26:21', '', 0, '', 0, '', 'Cette émission invite les auteurs à présenter leurs dernières parutions dans les domaines\r\nlittéraire, artistique et philosophique.\r\nCette émission a été créée le 28 février 2007.', '', 'Au fil des pages', NULL, 'Mercredi', ''),
(31, 'Les Livres du jour', '2011-10-01 19:26:48', '2011-10-01 19:27:22', '2011-10-01 19:26:48', '', 0, '', 0, '', 'Cette émission, mettant en valeur les nouvelles parutions dans les domaines littéraire,\r\nhistorique, philosophique et artistique, est constituée autour d?un entretien avec l?auteur et\r\nillustrée de lectures de son texte.\r\nCette émission existe depuis la création de la radio, en 1987.', '', 'Les trésors en poche', NULL, 'Jeudi', ''),
(32, 'Les Livres du jour', '2011-10-01 19:27:27', '2011-10-01 19:28:11', '2011-10-01 19:27:27', '', 0, '', 0, '', 'Emission qui évoque un courant artistique, un bel édifice, une oeuvre d?art. Marie-Thérèse\r\nHablot invite parfois l?artiste lui-même : en somme, à chaque rendez-vous avec les auditeurs,\r\nun livre nous raconte une « histoire de l?art ».\r\nCette émission existe depuis plusieurs années.', '', 'Les histoires de l?art', NULL, 'Vendredi', ''),
(33, 'Les Livres du jour', '2011-10-01 19:28:17', '2011-10-01 19:28:43', '2011-10-01 19:28:17', '', 0, '', 0, '', 'Cette émission a pour but de présenter l?ensemble de la poésie française et internationale de\r\ntous les temps, en insistant néanmoins sur les poètes contemporains, par le moyen des livres et\r\ndes entretiens, en privilégiant la lecture des textes.\r\nCette émission, créée il y a plusieurs année par Pierre Dehaye, a été reprise par Jean\r\nDecellas et Pascal Payen-Appenzeller, puis par Jean Christaki de Germain et Pascal Payen-\r\nAppenzeller.', '', 'Promenade et flâneries aux Domaines de Poésie', NULL, 'Vendredi', ''),
(34, 'Les Livres du jour', '2011-10-01 19:28:49', '2011-10-01 19:32:18', '2011-10-01 19:28:49', '', 0, '', 0, '', 'Cette émission fait entendre la voix des meilleurs poètes du passé.\r\nCette émission, créée il y a plusieurs années par Pierre Dehaye, a été reprise par Jean\r\nDecellas et Pascal Payen-Appenzeller, puis par Jean Christaki de Germain et Pascal Payen-\r\nAppenzeller.', '', 'Promenade et flâneries aux Domaines de Poésie', NULL, 'Vendredi', ''),
(35, 'Libre journal du midi', '2011-10-01 19:32:25', '2011-10-01 19:34:13', '2011-10-01 19:32:25', '', 0, '', 0, '', 'C?est une émission qui compte trois séquences : 1°) actualité européenne, 2°) rencontre d?un\r\nauteur d?ouvrage historique, 3°) visite d?une exposition.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Jean-Paul Bled', NULL, 'Lundi', ''),
(36, 'Libre journal du midi', '2011-10-01 19:34:16', '2011-10-01 19:34:50', '2011-10-01 19:34:16', '', 0, '', 0, '', 'Cette émission porte principalement sur l?actualité religieuse et les questions de société.\r\nGénéralement trois invités, parfois plus, présentent leurs initiatives et commentent les thèmes\r\nabordés. L?émission accorde aussi une grande part aux livres publiés en relation avec ces\r\nthèmes.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Philippe Maxence', NULL, 'Lundi', ''),
(37, 'Libre journal du midi', '2011-10-01 19:34:58', '2011-10-01 19:35:24', '2011-10-01 19:34:58', '', 0, '', 0, '', 'Emission s?efforçant de promouvoir une renaissance des valeurs culturelles, civiques, morales\r\net spirituelles.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Michel de Rostolan', NULL, 'Lundi', ''),
(38, 'Libre journal du midi', '2011-10-01 19:35:40', '2011-10-01 19:45:52', '2011-10-01 19:35:40', '', 0, '', 0, '', 'Ce Libre Journal est le porte-parole des vieux soldats et des « oubliés de l?histoire ». Y sont\r\nmajoritairement traités les sujets liés aux conflits dans notre ex-empire et aux victimes de la\r\nguerre d?Algérie. Parmi celles-ci, la plus grande place est accordée aux harkis.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Roger Saboureau', NULL, 'Lundi', ''),
(39, 'Libre journal du midi', '2011-10-01 19:36:14', '2011-10-01 19:36:38', '2011-10-01 19:36:14', '', 0, '', 0, '', 'Propos qui amènent à réfléchir sur les préoccupations existentielles et philosophiques des\r\nartistes. Catholique, Philippe Lejeune travaille à l?ouverture aux différentes religions.\r\nCette émission existe depuis plusieurs années.', '', 'Propos d?atelier', NULL, 'Mardi', ''),
(40, 'Libre journal du midi', '2011-10-01 19:36:40', '2011-10-01 19:37:10', '2011-10-01 19:36:40', '', 0, '', 0, '', 'Ce Libre Journal présente l?actualité artistique et culturelle en mettant l?accent sur les\r\nhommes et les techniques.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des beaux-arts', NULL, 'Mardi', ''),
(41, 'Libre journal du midi', '2011-10-01 19:37:14', '2011-10-01 19:37:41', '2011-10-01 19:37:14', '', 0, '', 0, '', 'Jean Darnel s?attache à transmettre, au travers du spectacle de qualité, la beauté de la langue\r\nfrançaise parlée. Il reçoit régulièrement des sociétaires de la Comédie française, des\r\nmusiciens, des chanteurs lyriques (Jean Piat, Gisèle Casadessus, Michel Bouquet, etc.).\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal du spectacle', NULL, 'Mardi', ''),
(42, 'Libre journal du midi', '2011-10-01 19:37:43', '2011-10-01 19:39:39', '2011-10-01 19:37:43', '', 0, '', 0, '', 'Ce Libre Journal traite des grands problèmes de politique intérieure ou internationale. Sur le\r\nmode de la libre discussion, émission d?analyse et de réflexion.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de François de Sainte Marie', NULL, 'Mercredi', ''),
(43, 'Libre journal du midi', '2011-10-01 19:39:41', '2011-10-01 19:40:12', '2011-10-01 19:39:41', '', 0, '', 0, '', 'Emission traitant de l?actualité récente sur des thèmes politiques, économiques et culturels, à\r\npartir du témoignage de deux à trois invités.\r\nCette émission a été créée le 23 avril 2008.', '', 'Le Libre Journal de Thibaut de La Tocnaye', NULL, 'Mercredi', ''),
(44, 'Libre journal du midi', '2011-10-01 19:40:13', '2011-10-01 19:40:43', '2011-10-01 19:40:13', '', 0, '', 0, '', 'Cette émission se propose de présenter les livres récemment parus dans le domaine de la\r\nscience économique et de débattre des questions d?actualité économique et sociale.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des économistes', NULL, 'Mercredi', ''),
(45, 'Libre journal du midi', '2011-10-01 19:40:47', '2011-10-01 19:41:12', '2011-10-01 19:40:47', '', 0, '', 0, '', 'Emission consacrée aux grands dossiers de société sur le plan économique et démographique,\r\nainsi qu?à l?étude des grands événements internationaux de portée géopolitique.\r\nCette émission a été créée le 29 octobre 2008. Elle succédait à celle d?Alain Griotteray, qui\r\nvenait de disparaître.', '', 'Le Libre Journal d?Yves-Marie Laulan', NULL, 'Mercredi', ''),
(46, 'Libre journal du midi', '2011-10-01 19:41:14', '2011-10-01 19:43:28', '2011-10-01 19:41:14', '', 0, '', 0, '', 'Le Libre Journal du Cinéma présente l?actualité cinématographique (films, publications, etc.)\r\net reçoit diverses personnalités de la profession (Alexandre Astruc, Bertrand Tavernier, Pascal\r\nThomas, Françoise Arnoul, Jean Tulard, etc.).\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal du cinéma', NULL, 'Jeudi', ''),
(47, 'Libre journal du midi', '2011-10-01 19:43:31', '2011-10-01 19:44:07', '2011-10-01 19:43:31', '', 0, '', 0, '', 'Ce Libre Journal, consacré aux arts en général et aux arts plastiques en particulier, s?efforce\r\nde faire découvrir les artistes d?aujourd?hui et leurs oeuvres. Il présente les écrits sur l?art et les\r\névénements de la vie artistique.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal d?Aude de Kerros', NULL, 'Jeudi', ''),
(48, 'Libre journal du midi', '2011-10-01 19:44:18', '2011-10-01 19:44:43', '2011-10-01 19:44:18', '', 0, '', 0, '', 'Le propos de l?émission pourrait se synthétiser ainsi : « Du périple à l?aventure\r\ngéographique, donner un sens au voyage ». Elle donne la parole à des gens dont les métiers\r\nou les parcours ont nourri leur passion pour le voyage. Elle révèle les différentes approches du\r\nvoyage de ceux qui ont introduit une dimension géographique dans leur projet dès le départ,\r\nmais aussi des autres, qui ont peut-être fait de la géographie sans le savoir?\r\nCette émission a été créée le 21 juillet 2007.', '', 'Le Libre Journal des cultures et de l?exploration', NULL, 'Jeudi', ''),
(49, 'Libre journal du midi', '2011-10-01 19:44:46', '2011-10-01 19:45:10', '2011-10-01 19:44:46', '', 0, '', 0, '', 'Emission qui réunit des collectionneurs passionnés, éclairés, devenus des spécialistes dans des\r\ndomaines les plus divers, afin de faire vivre ou revivre un patrimoine historique, découvrant et\r\npréservant des savoirs d?hier et d?aujourd?hui.\r\nCette émission, créée il y a plusieurs années par Jean-Claude Montagné, a été reprise par\r\nNicolas Tikhobrazoff.', '', 'Le Libre Journal des collectionneurs', NULL, 'Jeudi', ''),
(50, 'Libre journal du midi', '2011-10-01 19:45:58', '2011-10-01 19:46:49', '2011-10-01 19:45:58', '', 0, '', 0, '', 'Le Libre Journal des Idées politiques reçoit des universitaires, des experts, pour analyser les\r\ngrandes idées politiques.\r\nCette émission, créée le 2 octobre 2003 par Henry de Lesquen, a été reprise par Max Lebrun\r\nle 21 décembre 2006.', '', 'Le Libre Journal des idées politiques', NULL, 'Vendredi', ''),
(51, 'Libre journal du midi', '2011-10-01 19:46:57', '2011-10-01 19:48:59', '2011-10-01 19:46:57', '', 0, '', 0, '', 'Ce Libre Journal a été fondé pour recevoir les patrons des maisons d?édition afin d?en faire\r\nl?historique et d?examiner les principales collections et les principaux titres qu?elles publient.\r\nCette émission, créée le 17 mai 1991 par Jean-Yves Dournon, éditeur, lexicographe, a été\r\nreprise par Jean-Paul Naddeo le 27 mai 2011.', '', 'Le Libre Journal des éditeurs', NULL, 'Vendredi', ''),
(52, 'Libre journal du midi', '2011-10-01 19:49:02', '2011-10-01 19:49:24', '2011-10-01 19:49:02', '', 0, '', 0, '', 'Le Libre Journal de l?identité a pour but de : défendre l?identité française ; la promouvoir et la\r\ndécouvrir à travers toutes ses expressions ; découvrir, si nécessaire, les cultures de nos\r\nvoisins. Il y est parfois question d?immigration, mais aussi de sujets plus culturels, comme la\r\nlittérature, le cinéma, la musique, l?histoire, la politique (actualité, législation, élections, partis\r\npolitiques, régionalismes), et la religion.\r\nCette émission a été créée le 8 février 2008.', '', 'Le Libre Journal de l?identité', NULL, 'Vendredi', ''),
(53, 'Libre journal du midi', '2011-10-01 19:49:48', '2011-10-01 19:50:06', '2011-10-01 19:49:48', '', 0, '', 0, '', 'Emission traitant des grandes questions familiales ? étapes jalonnant la vie de famille,\r\nrelations au sein de la famille, ou encore regards sociologiques sur la famille -, et de leurs\r\ncorollaires que sont les problèmes d?éducation.\r\nCette émission a été créée le 1er octobre 2010.', '', 'Le Libre Journal de la famille et de l?éducation', NULL, 'Vendredi', ''),
(54, 'Libre journal du midi', '2011-10-01 19:50:19', '2011-10-01 19:50:41', '2011-10-01 19:50:19', '', 0, '', 0, '', 'Emission généraliste traitant principalement de l?actualité littéraire et politique. Y sont\r\naccueillis de nombreuses associations et des personnalités diverses.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des Lycéens', NULL, 'Samedi', ''),
(55, 'Libre journal du midi', '2011-10-01 19:50:44', '2011-10-01 19:51:08', '2011-10-01 19:50:44', '', 0, '', 0, '', 'Ce Libre journal traite de culture dans son acception la plus large, ainsi que de sujets\r\nconsacrés à l?art de vivre. Deux univers sont formellement bannis de cet espace, la politique et\r\nl?économie.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des Lycéens', NULL, 'Samedi', ''),
(56, 'Libre journal du midi', '2011-10-01 19:51:17', '2011-10-01 19:51:35', '2011-10-01 19:51:17', '', 0, '', 0, '', 'Emission politique et culturelle, organisée autour d''un entretien avec un ou deux invités et de\r\nchroniques régulières (cinéma, littérature, bandes dessinées, musique...).\r\nCette émission existe depuis plusieurs années. Elle a été reprise par Romain Lecap le\r\n14 février 2009.', '', 'Le Libre Journal des Lycéens', NULL, 'Samedi', ''),
(57, 'Libre journal du midi', '2011-10-01 19:51:39', '2011-10-01 19:52:49', '2011-10-01 19:51:39', '', 0, '', 0, '', 'Un oeil neuf, indépendant et jeune sur l?actualité économique, politique et culturelle. Hugues\r\nSérapion, membre de la société civile, qui, depuis des années, pratique une activité\r\nradiophonique bénévole, apporte un éclairage libre sur les thèmes qu?il aborde.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des Lycéens', NULL, 'Samedi', ''),
(58, 'Libre journal du midi', '2011-10-01 19:53:01', '2011-10-01 19:53:22', '2011-10-01 19:53:01', '', 0, '', 0, '', '« Mes émissions sont centrées sur la connaissance de l?histoire moderne et contemporaine et\r\nsur la géopolitique. » (F.-G. Dreyfus).\r\nCette émission a été créée le 4 mars 2007.', '', 'Le Libre Journal de François-Georges Dreyfus', NULL, 'Dimanche', ''),
(59, 'Libre journal du midi', '2011-10-01 19:53:25', '2011-10-01 19:53:43', '2011-10-01 19:53:25', '', 0, '', 0, '', 'Ce Libre Journal a pour but d?approfondir les débats religieux contemporains, notamment\r\nsous l?angle théologique.\r\nCette émission a été créée le 11 mars 2007.', '', 'Le Libre journal de Denis Sureau', NULL, 'Dimanche', ''),
(60, 'Libre journal du midi', '2011-10-01 19:53:49', '2011-10-01 19:54:13', '2011-10-01 19:53:49', '', 0, '', 0, '', 'Richesses et actualités de la tradition.\r\nCette émission a été créée le 28 octobre 2007.', '', 'Le Libre Journal de Philippe Pichot-Bravard', NULL, 'Dimanche', ''),
(61, 'Libre journal du midi', '2011-10-01 19:54:17', '2011-10-01 19:54:37', '2011-10-01 19:54:17', '', 0, '', 0, '', 'Ce Libre Journal aborde les principales questions liées à l?exercice de la médecine, ainsi qu?à\r\nl?éthique médicale.\r\nCette émission a été créée le 25 mars 2007.', '', 'Le Libre Journal de Jean-Pierre Dickès', NULL, 'Dimanche', ''),
(62, 'Libre journal du soir', '2011-10-01 19:54:43', '2011-10-01 19:55:27', '2011-10-01 19:54:43', '', 0, '', 0, '', 'Le Libre Journal du lundi soir traite des grandes questions de l?actualité politique et\r\nculturelle, en donnant la parole à d?éminentes personnalités qui font honneur à la pensée\r\nfrançaise. Il est ouvert aux points de vue des hommes politiques des diverses familles de la\r\ndroite française. Il ne se prive pas, non plus, d?évoquer les sujets historiques, artistiques ou\r\nphilosophiques les plus variés, quand des travaux récents leur apportent un éclairage nouveau.\r\nLe style de cette émission est celui d?une disputatio courtoise.\r\nCette émission a été créée le 23 octobre 2006. Elle succédait à celle de Jean Ferré, fondateur\r\nde Radio Courtoisie, qui venait de disparaître.', '', 'Le Libre Journal d?Henry de Lesquen', NULL, 'Lundi', ''),
(63, 'Libre journal du soir', '2011-10-01 19:55:36', '2011-10-01 19:56:00', '2011-10-01 19:55:36', '', 0, '', 0, '', 'Entretiens politiques, littéraires et philosophiques. Alain Cotta a succédé à Philippe\r\nde Saint Robert, qui avait reçu notamment Maurice Schumann, Alain Peyrefitte, Alain\r\nDecaux, François d?Orcival, Hervé Bourges...\r\nCette émission sera créée le 6 septembre 2011.', '', 'Le Libre Journal d?Alain Cotta', NULL, 'Mardi', ''),
(64, 'Libre journal du soir', '2011-10-01 19:56:03', '2011-10-01 19:56:22', '2011-10-01 19:56:03', '', 0, '', 0, '', 'Le Libre Journal des historiens a pour vocation de rendre compte de l?actualité historique\r\n(publications, commémorations) dans un esprit d?ouverture aux diverses lectures du passé, en\r\nsollicitant l?intervention d?universitaires et de spécialistes.\r\nCette émission, crée il y a plusieurs années par Bernard Lugan, a été reprise par Philippe\r\nConrad. Elle a changé de titre le 28 juin 2007.', '', 'Le Libre Journal des historiens', NULL, 'Mardi', ''),
(65, 'Libre journal du soir', '2011-10-01 19:56:25', '2011-10-01 19:56:46', '2011-10-01 19:56:25', '', 0, '', 0, '', 'Initialement, espace de libre expression créé pour ceux qui avaient contribué à la défense de la\r\nradio libre dans les années quatre-vingt. Aujourd?hui, Libre Journal généraliste où sont\r\nabordés des sujets divers, tels que les nouvelles technologiques, l?ouverture sur le monde et la\r\ndéfense de la francophonie.\r\nCette émission, dirigée précédemment par Yannick Urrien, existe depuis la création de\r\nRadio Courtoisie, en 1987.', '', 'Le Libre Journal des pionniers de la radio libre', NULL, 'Mardi', ''),
(66, 'Libre journal du soir', '2011-10-01 19:57:02', '2011-10-01 19:57:17', '2011-10-01 19:57:02', '', 0, '', 0, '', 'Ce Libre Journal aborde toutes les questions qui tournent autour de la dépense publique, de la\r\nfiscalité, de l?économie, en accueillant des hommes politiques, des économistes, des\r\njournalistes et des auteurs d?ouvrages dont le thème se rapproche des préoccupations du\r\ncontribuable.\r\nCette émission a été créée le 26 décembre 2006.', '', 'Le Libre Journal des contribuables', NULL, 'Mardi', ''),
(67, 'Libre journal du soir', '2011-10-01 19:57:20', '2011-10-01 19:58:00', '2011-10-01 19:57:20', '', 0, '', 0, '', 'Emission en deux parties. 1°) répliques à l?actualité dans les domaines de la vie politique,\r\nsociale et culturelle ; 2°) analyse d?une question de fond dans les domaines géopolitiques,\r\nidéologiques, culturels et religieux.\r\nCette émission a été créée le 10 octobre 2007. Elle succédait à celle de Serge de Beketch, qui\r\nvenait de disparaître.', '', 'Le Libre Journal de la résistance française', NULL, 'Mercredi', ''),
(68, 'Libre journal du soir', '2011-10-01 19:58:05', '2011-10-01 19:58:27', '2011-10-01 19:58:05', '', 0, '', 0, '', 'Trois plateaux d?invités évoquent successivement la politique, l?actualité nationale et\r\ninternationale, la culture et le patrimoine. Vivant et rythmé, ce Libre Journal offre de\r\nnombreux rendez-vous : la revue de presse, la brève d?information, les découvertes musicales,\r\nl?espace de démocratie directe, avec la lecture de tous les messages des auditeurs.\r\nCette émission a été créée le 18 janvier 2007.', '', 'Le Libre Journal de la résistance française', NULL, 'Mercredi', ''),
(69, 'Libre journal du soir', '2011-10-01 19:58:32', '2011-10-01 19:58:50', '2011-10-01 19:58:32', '', 0, '', 0, '', 'Cercle de la presse nationaliste et thèmes d?actualité traités autour d?un ou plusieurs invités.\r\nCette émission a été créée le 7 mai 2008.', '', 'Le Libre Journal de la résistance française', NULL, 'Mercredi', ''),
(70, 'Libre journal du soir', '2011-10-01 19:58:56', '2011-10-01 19:59:23', '2011-10-01 19:58:56', '', 0, '', 0, '', 'Emission d?information générale (politique, spectacles, finance, gastronomie, entretiens avec\r\ndes écrivains, romanciers, essayistes, journalistes, scientifiques, etc.) et de commentaires sur\r\nla vie associative, l?Europe et la tradition catholique.\r\nCette émission a été créée le 23 janvier 2008.', '', 'Le Libre Journal de la résistance française', NULL, 'Mercredi', ''),
(71, 'Libre journal du soir', '2011-10-01 19:59:30', '2011-10-01 19:59:52', '2011-10-01 19:59:30', '', 0, '', 0, '', 'Cette émission a deux volets. Le premier offre des commentaires des événements politiques et\r\nhistoriques ; le second traite l?actualité culturelle et religieuse : commentaires et informations.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal de Claude Giraud', NULL, 'Jeudi', ''),
(72, 'Libre journal du soir', '2011-10-01 19:59:54', '2011-10-01 20:04:56', '2011-10-01 19:59:54', '', 0, '', 0, '', 'Emission traitant d?actualité. Y sont présentées les dernières parutions (livres, revues, articles)\r\ndans les domaines politiques, juridiques et culturels. Catherine Rouvier a reçu Xavier Darcos,\r\nChristine Boutin, Salomé Zourabichvili (ancien ambassadeur de France), le général\r\nde La Maisonneuve, Frédéric Rouvillois, etc.\r\nCette émission a été créée le 9 mars 2007.', '', 'Le Libre Journal de Catherine Rouvier', NULL, 'Jeudi', ''),
(73, 'Libre journal du midi', '2011-10-01 20:00:21', '2011-10-01 20:04:34', '2011-10-01 20:00:21', '', 0, '', 0, '', 'Actualités et débats catholiques.\r\nCette émission a été créée le 17 octobre 2007.', '', 'Le Libre Journal de Daniel Hamiche', NULL, 'Jeudi', ''),
(74, 'Libre journal du soir', '2011-10-01 20:00:50', '2011-10-01 20:01:22', '2011-10-01 20:00:50', '', 0, '', 0, '', 'Libres commentaires de l?actualité politique, religieuse et culturelle.\r\nCette émission a été créée le 12 septembre 2008.', '', 'Le Libre Journal de Jacques Trémolet de Villers', NULL, 'Jeudi', ''),
(75, 'Libre journal du soir', '2011-10-01 20:05:04', '2011-10-01 20:05:24', '2011-10-01 20:05:04', '', 0, '', 0, '', 'Le Libre Journal des artisans invite des professionnels à présenter leur métier et traite de la\r\nculture ouvrière, des problèmes du travail et de l?organisation des métiers. Cette émission a\r\naussi pour but de faire connaître et de transmettre un savoir et des traditions du passé.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des artisans', NULL, 'Vendredi', ''),
(76, 'Libre journal du soir', '2011-10-01 20:05:26', '2011-10-01 20:05:46', '2011-10-01 20:05:26', '', 0, '', 0, '', 'Emission culturelle axée sur le respect de la personne humaine. Jean-Marie Le Méné reçoit\r\ndes écrivains ou des associations traitant de tous sujets liés aux questions morales et éthiques.\r\nCette émission a été créée le 12 décembre 2006.', '', 'Le Libre Journal de Jean-Marie Le Méné', NULL, 'Vendredi', ''),
(77, 'Libre journal du soir', '2011-10-01 20:05:53', '2011-10-01 20:06:12', '2011-10-01 20:05:53', '', 0, '', 0, '', 'Emission exclusivement littéraire très variée invitant des écrivains (souvent académiciens)\r\npour présenter leurs dernières publications. Annonces de congrès ou colloques, avec leurs\r\nprogrammes. Alain Lanavère invite et interroge des romanciers, essayistes et critiques\r\ncontemporains, qui tous illustrent la vie littéraire.\r\nCette émission, créée en 1987 par Brigitte Level, présidente d?honneur de la Société des\r\npoètes français, a été reprise le 21 novembre 2008 par Pierre Brunel, puis le 20 novembre\r\n2009 par Alain Lanavère, qui dirigeait, depuis le 12 décembre 2007, « Plaisir de lecture ».', '', 'Le Libre Journal des belles-lettres', NULL, 'Vendredi', ''),
(78, 'Libre journal du soir', '2011-10-01 20:06:15', '2011-10-01 20:06:48', '2011-10-01 20:06:15', '', 0, '', 0, '', 'Le Libre Journal des sciences répond à la demande de nombreux auditeurs qui souhaitent être\r\ninformés des avancées scientifiques. C?est donc une émission de vulgarisation, qui doit mettre\r\ndes connaissances souvent difficiles d?accès à la portée du grand public cultivé. Elle a pour\r\nvocation de recevoir des savants éminents, pour qu?ils parlent de leur discipline et de leurs\r\ntravaux.\r\nCette émission a été créée le 18 mai 2007.', '', 'Le Libre Journal des sciences', NULL, 'Vendredi', ''),
(79, 'Libre journal du soir', '2011-10-01 20:06:51', '2011-10-01 20:07:16', '2011-10-01 20:06:51', '', 0, '', 0, '', 'C?est une émission d?analyse et de réflexion sur les grands problèmes contemporains.\r\nRencontres non conformistes et sans démagogie avec les acteurs et les auteurs dont l?esprit\r\nmarque notre temps. Récits relatant la jeunesse des compositeurs et des grands interprètes.\r\nComme dans les meilleurs salons des siècles passés, rencontres musicales avec les artistes et\r\nles créateurs.\r\nCette émission existe depuis plusieurs années.', '', 'Le Libre Journal des auditeurs et des musiciens', NULL, 'Dimanche', ''),
(80, 'Libre journal de la nuit', '2011-10-01 20:07:20', '2011-10-01 20:07:41', '2011-10-01 20:07:20', '', 0, '', 0, '', 'Emission culturelle ouverte à la fois aux lettres et aux sciences, tournant résolument le dos à\r\nl?opposition lettres/sciences, très accentuée aujourd?hui. Orientations thématiques : la\r\nlittérature française, européenne et mondiale, sans distinction entre classiques et modernes ;\r\nles sciences, et plus particulièrement la médecine, croisant les problèmes de société (hôpital,\r\nchirurgie esthétique, etc.) ; l?histoire, en commentant les grandes dates ; la justice, en narrant\r\nles grands procès.\r\nCette émission a été créée le 16 octobre 2007.', '', 'Le Libre Journal de Lydwine Helly', NULL, 'Mardi', ''),
(81, 'Libre journal de la nuit', '2011-10-01 20:07:44', '2011-10-02 10:18:10', '2011-10-01 20:07:44', '', 0, '', 0, '', 'Interprétations d?oeuvres littéraires, théâtrales et opératiques.\r\nCette émission a été créée par Vincent Beurtheret le 9 octobre 2007 et reprise le 3 mars 2009\r\npar Yves Tarantik.', '', 'Les tréteaux de la France courtoise', NULL, 'Mardi', ''),
(82, 'Libre journal de la nuit', '2011-10-01 20:08:07', '2011-10-01 20:08:27', '2011-10-01 20:08:07', '', 0, '', 0, '', 'Les trois volets de l?émission s?articulent autour de l?Europe :\r\n1) l?actualité politique et géopolitique est traitée avec des chroniqueurs ;\r\n2) le spécialiste d?un pays, pas forcément européen, développe et argumente la relation entre\r\nle pays en question et l?Europe ;\r\n3) présentation des actualités culturelles européennes : expositions, traductions de livres,\r\ncinéma, etc.\r\nCette émission a été créée le 23 octobre 2007.', '', 'Le Libre Journal de la Vieille Europe', NULL, 'Mardi', ''),
(83, 'Libre journal de la nuit', '2011-10-01 20:08:31', '2011-10-01 20:08:44', '2011-10-01 20:08:31', '', 0, '', 0, '', 'Débats sur les questions de l?heure, en toute liberté d?esprit.\r\nCette émission a été créée le 30 octobre 2007.', '', 'Le Libre Journal des enjeux actuels', NULL, 'Mardi', ''),
(84, 'Libre journal de la nuit', '2011-10-01 20:08:45', '2011-10-01 20:09:17', '2011-10-01 20:08:45', '', 0, '', 0, '', 'Le Libre Journal de Paul-Marie Coûteaux se propose d?illustrer, à mesure de l?actualité, la\r\nvitalité de la pensée et de la civilisation française, sur le ton de la conversation feutrée qui\r\nconvient à l?heure tardive de sa diffusion.\r\nCette émission a été créée le 10 janvier 2007.', '', 'Le Libre Journal de Paul-Marie Coûteaux', NULL, 'Mercredi', ''),
(85, 'Bulletin de réinformation', '2011-10-01 20:10:07', '2011-10-02 09:27:34', '2011-10-01 20:10:07', '', 0, '', 0, '', 'Le bulletin de réinformation donne les trois nouvelles majeures du jour, suivies de six à huit\r\nbrèves et d?un tour d?horizon international. Cette émission « à 360 degrés » met l?actualité en\r\nperspective en décryptant la "feuilletonisation" des événements et les emballements\r\nmédiatiques. Elle replace les faits dans le contexte qui leur donne du sens.\r\nLes "réinformateurs" utilisent une grande pluralité de sources : les grands media français ; la\r\npresse étrangère ; la presse française indépendante et les sites Internet d?analyse et de\r\nréinformation ; enfin, un réseau de correspondants apportant leur expertise sur certains sujets\r\nou certains pays, véritable "équipe d?appui".\r\nCette émission a été créée le 7 novembre 2007, à l?occasion du XXe anniversaire de\r\nRadio Courtoisie.', '', 'Le bulletin de réinformation', NULL, 'Lundi,Mardi,Mercredi,Jeudi,Vendredi', 'A,B,C,D'),
(86, 'Lumière de l''espérance', '2011-10-01 20:12:06', '2011-10-01 20:13:31', '2011-10-01 20:12:06', '', 0, '', 0, '', 'Chercher à rassembler les éléments qui permettent de mieux apprécier les saints ou\r\nbienheureux qui figurent au catalogue de l?Eglise catholique.\r\nCette émission existe depuis la création de Radio Courtoisie, en novembre 1987, et continue\r\nd?être diffusée après la mort de Louis de Beaumont, le 17 avril 2011.', '', 'Le Saint du jour', NULL, 'Dimanche', ''),
(87, 'Lumière de l''espérance', '2011-10-01 20:13:35', '2011-10-01 20:14:02', '2011-10-01 20:13:35', '', 0, '', 0, '', 'L?émission a pour but de faire entendre du chant grégorien essentiellement, excluant la\r\npolyphonie. Elle présente les chants de la messe du dimanche, ainsi que de l?office, ou bien\r\nencore d?une fête de la semaine suivante, d?un kyriale, d?un credo, etc. Un court commentaire\r\nexplique l?origine de ces pièces, développe leur texte, et dit de quelle façon la mélodie\r\nl?exprime. C?est une véritable formation liturgique qui est ainsi dispensée à travers « la prière\r\nchantée de l?Eglise ».\r\nCette émission a été créée le dimanche 8 novembre 1987, dès le début de Radio Courtoisie.', '', 'Chant grégorien', NULL, 'Dimanche', ''),
(88, 'Lumière de l''espérance', '2011-10-01 20:14:25', '2011-10-01 20:15:41', '2011-10-01 20:14:25', '', 0, '', 0, '', 'Cette émission existe depuis la création de Radio Courtoisie, en 1987.', '', 'Le Libre Journal des scouts', NULL, 'Dimanche', ''),
(89, 'Lumière de l''espérance', '2011-10-01 20:15:47', '2011-10-01 20:16:13', '2011-10-01 20:15:47', '', 0, '', 0, '', 'Sous forme d?entretiens avec un ou plusieurs invités, ce Libre Journal des Scouts a pour\r\nvocation, dans une perspective chrétienne, d?ouvrir les esprits, notamment celui des jeunes,\r\nsur des sujets liés à l?éducation, la culture, la jeunesse, la société, et de leur apporter ainsi une\r\nnouvelle matière à réflexion.', '', 'Le Libre Journal des scouts', NULL, 'Dimanche', ''),
(90, 'Lumière de l''espérance', '2011-10-01 20:16:14', '2011-10-01 20:16:42', '2011-10-01 20:16:14', '', 0, '', 0, '', 'Le but de cette émission est de traiter de l?aventure des pionniers et des explorateurs, de ceux\r\nqui furent des « éclaireurs ». Expliquer aux plus jeunes que l?aventure n?appartient pas\r\nseulement au rêve, mais qu?elle est accessible à tous.', '', 'Le Libre Journal des scouts', NULL, 'Dimanche', ''),
(91, 'Lumière de l''espérance', '2011-10-01 20:16:44', '2011-10-01 20:17:13', '2011-10-01 20:16:44', '', 0, '', 0, '', 'Ce Libre Journal des scouts a pour objet d?apporter des témoignages, des sujets de réflexion,\r\ndes sujets scouts en rapport avec l?idéal scout, à l?adresse des scouts en particulier, et de la\r\njeunesse en général.', '', 'Le Libre Journal des scouts', NULL, 'Dimanche', ''),
(92, 'Lumière de l''espérance', '2011-10-01 20:17:17', '2011-10-01 20:17:43', '2011-10-01 20:17:17', '', 0, '', 0, '', 'Présentation de la musique religieuse de qualité, d?inspiration biblique, dans le respect des\r\ntemps liturgiques. Faire découvrir des oeuvres et des compositeurs peu ou mal connus.\r\nCette émission existe depuis la création de Radio Courtoisie, en 1987.', '', 'Images bibliques', NULL, 'Dimanche', ''),
(93, 'Emissions musicales', '2011-10-01 20:19:10', '2011-10-01 20:20:14', '2011-10-01 20:19:10', '', 0, '', 0, '', 'Musique lyrique française, religieuse ou profane, grave ou légère.\r\nCette émission existe depuis plusieurs années.', '', 'Musique lyrisque française', NULL, 'Dimanche', ''),
(94, 'Emissions musicales', '2011-10-01 20:20:22', '2011-10-01 20:20:54', '2011-10-01 20:20:22', '', 0, '', 0, '', 'Emission musicale divisée en trois séquences :\r\n1) : à 21 h 00 (ou 21 h 15), « Discothèque pour connaisseurs et amateurs », diffusion\r\nd?enregistrements rares et historiques de grandes oeuvres. Séquence d?une heure rediffusée le\r\nsamedi à 23 h 00 ;\r\n2) : à 22 h 00 (ou 22 h 15), « Grands interprètes » ;\r\n3) : à 23 h 00, « Merveilles du piano », présentation et illustration d?un grand pianiste.', '', 'Soirée musicale à thème', NULL, 'Lundi', ''),
(95, 'Archives de Radio Courtoisie', '2011-10-01 20:24:46', '2011-10-01 20:25:10', '2011-10-01 20:24:46', '', 0, '', 0, '', 'Rediffusion de l?émission créée et dirigée par Pierre Debray-Ritzen.', '', 'L''art littéraire', NULL, 'Lundi', ''),
(96, 'Archives de Radio Courtoisie', '2011-10-01 20:25:14', '2011-10-01 20:26:12', '2011-10-01 20:25:14', '', 0, '', 0, '', 'Rediffusion de l?émission créée et dirigée par Jacques Lacant, professeur émérite à\r\nl?Université de Paris X. Véritable cours de langue française. Jacques Lacant répond aux\r\nquestions des auditeurs. La grammaire, la conjugaison, l?orthographe, l?étymologie et la\r\nlinguistique y sont traitées avec un grand savoir.', '', 'Langue française, joyau de notre patrimoine', NULL, 'Lundi', ''),
(97, 'Archives de Radio Courtoisie', '2011-10-01 20:26:15', '2011-10-01 20:26:40', '2011-10-01 20:26:15', '', 0, '', 0, '', 'Rediffusion de l?émission créée et dirigée par Pierre Chaunu.', '', 'Les mardis de la mémoire', NULL, 'Mardi', ''),
(99, 'Test', '2011-10-02 14:30:24', '2011-10-02 14:31:00', '2011-10-02 14:30:24', 'Theme', 0, '', 0, '', '', 'Restest', 'Test', NULL, 'Lundi,Mardi', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequences`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequences`
--

INSERT INTO `hibernate_sequences` (`sequence_name`, `sequence_next_hi_value`) VALUES
('emissions', 2);

-- --------------------------------------------------------

--
-- Table structure for table `intervenants`
--

CREATE TABLE IF NOT EXISTS `intervenants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `datemodif` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datecreate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `intervenants`
--

INSERT INTO `intervenants` (`id`, `name`, `email`, `datemodif`, `datecreate`) VALUES
(19, 'Antony Bernard', NULL, '2011-09-25 19:40:11', '2011-09-25 19:40:11'),
(20, 'Archambeau Hervé', NULL, '2011-09-25 19:40:24', '2011-09-25 19:40:24'),
(21, 'Banken Patrick', NULL, '2011-09-25 19:40:34', '2011-09-25 19:40:34'),
(22, 'Bertin Salsa', NULL, '2011-09-25 19:40:41', '2011-09-25 19:40:41'),
(23, 'Beurtheret Vincent', NULL, '2011-09-25 19:40:51', '2011-09-25 19:40:51'),
(24, 'Bild Martial', NULL, '2011-09-25 19:40:58', '2011-09-25 19:40:58'),
(25, 'Bled Jean-Paul', NULL, '2011-09-25 19:41:17', '2011-09-25 19:41:17'),
(26, 'Bouclay Pierre-Alexandre', NULL, '2011-09-25 19:41:26', '2011-09-25 19:41:26'),
(27, 'Bouzard Thierry', NULL, '2011-09-25 19:41:35', '2011-09-25 19:41:35'),
(28, 'Brassié Anne', NULL, '2011-09-25 19:41:44', '2011-09-25 19:41:44'),
(29, 'Cahours d''Aspry Jean-Bernard', NULL, '2011-09-25 19:41:56', '2011-09-25 19:41:56'),
(30, 'Christaki de Germain Jean', NULL, '2011-09-25 19:42:06', '2011-09-25 19:42:06'),
(31, 'Cluzel Gabrielle', NULL, '2011-09-25 19:42:15', '2011-09-25 19:42:15'),
(32, 'Collin Anne', NULL, '2011-09-25 19:42:22', '2011-09-25 19:42:22'),
(33, 'Conrad Philippe', NULL, '2011-09-25 19:42:30', '2011-09-25 19:42:30'),
(34, 'Cotta Alain', NULL, '2011-09-25 19:42:36', '2011-09-25 19:42:36'),
(35, 'Coûteaux Paul-Marie', NULL, '2011-09-25 19:42:48', '2011-09-25 19:42:48'),
(36, 'd''Hugues Philippe', NULL, '2011-09-25 19:42:58', '2011-09-25 19:42:58'),
(37, 'Darnel Jean', NULL, '2011-09-25 19:43:07', '2011-09-25 19:43:07'),
(38, 'De Jaeghere Marie-Amélie', NULL, '2011-09-25 19:43:16', '2011-09-25 19:43:16'),
(39, 'Debray Quentin', NULL, '2011-09-25 19:43:24', '2011-09-25 19:43:24'),
(40, 'Dickès Jean-Pierre', NULL, '2011-09-25 19:43:36', '2011-09-25 19:43:36'),
(41, 'Dreyfus François-Georges', NULL, '2011-09-25 19:43:51', '2011-09-25 19:43:51'),
(42, 'Fontaine Rémi', NULL, '2011-09-25 19:43:58', '2011-09-25 19:43:58'),
(43, 'Fouquereau Henri', NULL, '2011-09-25 19:44:06', '2011-09-25 19:44:06'),
(44, 'Fournier Capucine', NULL, '2011-09-25 19:44:14', '2011-09-25 19:44:14'),
(45, 'Garello Jacques', NULL, '2011-09-25 19:44:21', '2011-09-25 19:44:21'),
(46, 'Giraud Claude', NULL, '2011-09-25 19:44:29', '2011-09-25 19:44:29'),
(47, 'Guillemaind Benjamin', NULL, '2011-09-25 19:44:38', '2011-09-25 19:44:38'),
(48, 'Guyot-Jeannin Arnaud', NULL, '2011-09-25 19:44:51', '2011-09-25 19:44:51'),
(49, 'Hablot Marie-Thérèse', NULL, '2011-09-25 19:45:01', '2011-09-25 19:45:01'),
(50, 'Hamiche Daniel', NULL, '2011-09-25 19:45:13', '2011-09-25 19:45:13'),
(51, 'Helly Lydwine', NULL, '2011-09-25 19:45:23', '2011-09-25 19:45:23'),
(52, 'Icart Françoise', NULL, '2011-09-25 19:45:31', '2011-09-25 19:45:31'),
(53, 'de Kerros Aude ', NULL, '2011-09-25 19:45:45', '2011-09-25 19:45:45'),
(54, 'de La Tocnaye Thibaut', NULL, '2011-09-25 19:46:01', '2011-09-25 19:46:01'),
(55, 'Lanavère Alain', NULL, '2011-09-25 19:46:09', '2011-09-25 19:46:09'),
(56, 'Laulan Yves-Marie', NULL, '2011-09-25 19:46:25', '2011-09-25 19:46:25'),
(57, 'Le Méné Jean-Marie', NULL, '2011-09-25 19:46:38', '2011-09-25 19:46:38'),
(58, 'Le Gallou Jean-Yves', NULL, '2011-09-25 19:46:46', '2011-09-25 19:46:46'),
(59, 'Lebrun Max', NULL, '2011-09-25 19:46:55', '2011-09-25 19:46:55'),
(60, 'Lecap Romain', NULL, '2011-09-25 19:47:02', '2011-09-25 19:47:02'),
(61, 'Lefranc Thibault', NULL, '2011-09-25 19:47:13', '2011-09-25 19:47:13'),
(62, 'Lejeune Philippe', NULL, '2011-09-25 19:47:21', '2011-09-25 19:47:21'),
(63, 'de Lesquen Henry', NULL, '2011-09-25 19:47:31', '2011-09-25 19:47:31'),
(64, 'Mancheron Benoît', NULL, '2011-09-25 19:47:38', '2011-09-25 19:47:38'),
(65, 'Marin Gérard', NULL, '2011-09-25 19:47:45', '2011-09-25 19:47:45'),
(66, 'Mascré David', NULL, '2011-09-25 19:47:53', '2011-09-25 19:47:53'),
(67, 'Maxence Philippe', NULL, '2011-09-25 19:48:03', '2011-09-25 19:48:03'),
(68, 'Moris Philippe', NULL, '2011-09-25 19:48:13', '2011-09-25 19:48:13'),
(69, 'Mourlet Michel', NULL, '2011-09-25 19:48:29', '2011-09-25 19:48:29'),
(70, 'Naddeo Jean-Paul', NULL, '2011-09-25 19:48:39', '2011-09-25 19:48:39'),
(71, 'Paoli Dominique', NULL, '2011-09-25 19:48:47', '2011-09-25 19:48:47'),
(72, 'Payen-Appenzeller Pascal', NULL, '2011-09-25 19:48:58', '2011-09-25 19:48:58'),
(73, 'Péhèle Patrick', NULL, '2011-09-25 19:49:07', '2011-09-25 19:49:07'),
(74, 'Pichot-Bravard Philippe', NULL, '2011-09-25 19:49:16', '2011-09-25 19:49:16'),
(75, 'Ratier Emmanuel', NULL, '2011-09-25 19:49:25', '2011-09-25 19:49:25'),
(76, 'Rochard Didier', NULL, '2011-09-25 19:49:32', '2011-09-25 19:49:32'),
(77, 'de Rostolan Michel', NULL, '2011-09-25 19:49:44', '2011-09-25 19:49:44'),
(78, 'Rouvier Catherine', NULL, '2011-09-25 19:49:51', '2011-09-25 19:49:51'),
(79, 'Saboureau Roger', NULL, '2011-09-25 19:50:00', '2011-09-25 19:50:00'),
(80, 'de Sainte Marie François', NULL, '2011-09-25 19:50:10', '2011-09-25 19:50:10'),
(81, 'Salon Albert', NULL, '2011-09-25 19:50:23', '2011-09-25 19:50:23'),
(82, 'Sanders Alain', NULL, '2011-09-25 19:50:29', '2011-09-25 19:50:29'),
(83, 'Sérapion Hugues', NULL, '2011-09-25 19:50:36', '2011-09-25 19:50:36'),
(84, 'Sévillia Yves-Marie', NULL, '2011-09-25 19:50:46', '2011-09-25 19:50:46'),
(85, 'Sureau Denis', NULL, '2011-09-25 19:50:59', '2011-09-25 19:50:59'),
(86, 'Taffin Benoîte', NULL, '2011-09-25 19:51:09', '2011-09-25 19:51:09'),
(87, 'de Tanoüarn Guillaume', NULL, '2011-09-25 19:51:29', '2011-09-25 19:51:29'),
(88, 'Tarantik Yves', NULL, '2011-09-25 19:51:37', '2011-09-25 19:51:37'),
(89, 'Tikhobrazoff Nicolas', NULL, '2011-09-25 19:51:49', '2011-09-25 19:51:49'),
(90, 'Trémolet de Villers Jacques', NULL, '2011-09-25 19:51:59', '2011-09-25 19:51:59'),
(91, 'Weber Edith', NULL, '2011-09-25 19:52:06', '2011-09-25 19:52:06'),
(92, 'Nemo Philippe', NULL, '2011-10-01 18:09:25', '2011-10-01 18:09:25'),
(93, 'de Beaumont Louis', NULL, '2011-10-01 20:13:20', '2011-10-01 20:13:20'),
(94, 'Debray-Ritzen Pierre', NULL, '2011-10-01 20:23:27', '2011-10-01 20:23:27'),
(95, 'Lacant Jacques', NULL, '2011-10-01 20:25:51', '2011-10-01 20:25:51'),
(96, 'Chaunu Pierre', NULL, '2011-10-01 20:25:59', '2011-10-01 20:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `intervenants_emissions`
--

CREATE TABLE IF NOT EXISTS `intervenants_emissions` (
  `intervenants_id` bigint(20) NOT NULL,
  `emissions_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itunesparams`
--

CREATE TABLE IF NOT EXISTS `itunesparams` (
  `param` varchar(32) NOT NULL,
  `value` varchar(128) NOT NULL,
  `datecreate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datemodif` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(256) NOT NULL,
  PRIMARY KEY (`param`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mediatype`
--

CREATE TABLE IF NOT EXISTS `mediatype` (
  `term` varchar(4) NOT NULL,
  `type` varchar(24) NOT NULL,
  PRIMARY KEY (`term`,`type`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mediatype`
--

INSERT INTO `mediatype` (`term`, `type`) VALUES
('flv', 'application/flv'),
('pdf', 'application/pdf'),
('MP3', 'audio/mp3'),
('mp3', 'audio/mpeg'),
('m4a', 'audio/x-m4a'),
('epub', 'document/x-epub'),
('mp4', 'video/mp4'),
('mov', 'video/quicktime'),
('m4v', 'video/x-m4v');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `supercatid` int(11) NOT NULL,
  `subcatid` int(11) NOT NULL,
  PRIMARY KEY (`supercatid`,`subcatid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audio_media`
--
ALTER TABLE `audio_media`
  ADD CONSTRAINT `audio_media_ibfk_1` FOREIGN KEY (`emission`) REFERENCES `emissions` (`id`),
  ADD CONSTRAINT `audio_media_ibfk_2` FOREIGN KEY (`type`) REFERENCES `mediatype` (`term`);

--
-- Constraints for table `emis_interv`
--
ALTER TABLE `emis_interv`
  ADD CONSTRAINT `emis_interv_ibfk_3` FOREIGN KEY (`id_emission`) REFERENCES `emissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emis_interv_ibfk_4` FOREIGN KEY (`id_intervenant`) REFERENCES `intervenants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emis_intervsuppl`
--
ALTER TABLE `emis_intervsuppl`
  ADD CONSTRAINT `emis_interv_ibfk_1` FOREIGN KEY (`id_emission`) REFERENCES `emissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emis_interv_ibfk_2` FOREIGN KEY (`id_intervenant`) REFERENCES `intervenants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emis_media`
--
ALTER TABLE `emis_media`
  ADD CONSTRAINT `emis_media_ibfk_3` FOREIGN KEY (`id_media`) REFERENCES `audio_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emis_media_ibfk_4` FOREIGN KEY (`id_emission`) REFERENCES `emissions` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
