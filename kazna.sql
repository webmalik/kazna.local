-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Час створення: Трв 09 2023 р., 18:35
-- Версія сервера: 5.5.48-log
-- Версія PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `kazna`
--

-- --------------------------------------------------------

--
-- Структура таблиці `computers`
--

CREATE TABLE `computers` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `monitor` varchar(255) NOT NULL,
  `mouse` int(11) NOT NULL,
  `klav` int(11) NOT NULL,
  `system` varchar(255) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `comp_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Комп''ютери в УДКСУ';

--
-- Дамп даних таблиці `computers`
--

INSERT INTO `computers` (`id`, `name`, `ip`, `os`, `monitor`, `mouse`, `klav`, `system`, `comp_name`, `comp_login`) VALUES
(1, 1, '10.30.73.2', 'Windows 10', 'LG E1911', 1, 1, 'Frime', 'WS0605P1137', 'WS0605P1137'),
(2, 4, '10.30.73.10', 'Windows 7', 'LG', 1, 1, 'Impression Р+', 'WS0605P0686', '000100000686'),
(4, 9, '10.30.73.16', 'Windows 7', 'LG Flatron L1751S', 1, 1, 'DualCore AMD A4-4020', 'WS0605P0868', 'WS0605P0868'),
(5, 8, '10.30.73.31', 'Windows 7', 'LG HD', 1, 1, 'DualCore AMD A4-4020', 'WS0605P0947', 'WS0605P0947'),
(7, 6, '10.30.73.14', 'Windows 7', 'LG HD', 1, 1, 'DualCore AMD A4-4020', 'WS0605P0814', 'WS0605P0814'),
(8, 2, '10.30.73.3', 'Windows 8.1 Professional', 'Philips 226V4', 1, 1, 'Lenovo ThinkCentre M73', 'WS0605P0768', 'WS0605P0768');

-- --------------------------------------------------------

--
-- Структура таблиці `comp_po`
--

CREATE TABLE `comp_po` (
  `id` int(11) NOT NULL,
  `comp` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `version` varchar(255) NOT NULL,
  `dev` text NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `comp_po`
--

INSERT INTO `comp_po` (`id`, `comp`, `name`, `version`, `dev`, `date`) VALUES
(339, 'WS0605P1137', '', '', '', ''),
(340, 'WS0605P1137', 'AIMP3', 'v3.20.1165, 21.12.2012', 'AIMP DevTeam', '27.06.2017'),
(341, 'WS0605P1137', 'FileZilla Client 3.6.0', '3.6.0', 'FileZilla Project', '-'),
(342, 'WS0605P1137', 'Google Chrome', '59.0.3071.115', 'Google Inc.', '26.06.2017'),
(343, 'WS0605P1137', 'Mobile Broadband HL Service', '22.001.29.00.03', 'Huawei Technologies Co.,Ltd', '-'),
(344, 'WS0605P1137', 'Notepad++ (32-bit x86)', '7.4.2', 'Notepad++ Team', '-'),
(345, 'WS0605P1137', 'Opera Stable 46.0.2597.57', '46.0.2597.57', 'Opera Software', '-'),
(346, 'WS0605P1137', 'JetBrains PhpStorm 2017.1.4', '171.4694.2', 'JetBrains s.r.o.', '-'),
(347, 'WS0605P1137', 'Adobe Photoshop CC 2017', '18.0.1', 'Adobe Systems Incorporated', '-'),
(348, 'WS0605P1137', 'TeamViewer 12', '12.0.78716', 'TeamViewer', '-'),
(349, 'WS0605P1137', 'KMPlayer (remove only)', '4.1.5.8', 'PandoraTV', '-'),
(350, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148.0 False', '9.0.30729.4148', 'Microsoft Corporation', '03.08.2017'),
(351, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610 False', '11.0.60610.1', '', '-'),
(352, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501 False Eng', '12.0.30501.0', 'Microsoft Corporation', '-'),
(353, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660', '12.0.40660.0', '', '-'),
(354, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.58299 False', '8.0.58299', 'Microsoft Corporation', '03.08.2017'),
(355, 'WS0605P1137', 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23506', '14.0.23506', 'Microsoft Corporation', '03.08.2017'),
(356, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660', '12.0.40660.0', '', '-'),
(357, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005', '12.0.21005', 'Microsoft Corporation', '03.08.2017'),
(358, 'WS0605P1137', 'Microsoft Visual C++ 2010 Redistributable - x86 10.0.30319 False', '10.0.30319', 'Microsoft Corporation', '03.08.2017'),
(359, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501', '12.0.30501.0', '', '-'),
(360, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148 False', '9.0.30729.4148', 'Microsoft Corporation', '03.08.2017'),
(361, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005 False', '12.0.21005.1', '', '-'),
(362, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030 False Eng', '11.0.61030.0', 'Microsoft Corporation', '-'),
(363, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106 False', '11.0.51106.1', '', '-'),
(364, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40649 False Eng', '12.0.40649.5', 'Microsoft Corporation', '-'),
(365, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(366, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.60610 False', '11.0.60610', 'Microsoft Corporation', '03.08.2017'),
(367, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005 False', '12.0.21005.1', '', '-'),
(368, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.0 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(369, 'WS0605P1137', 'Microsoft Visual C++ 2017 x86 Minimum Runtime - 14.10.25017', '14.10.25017', 'Microsoft Corporation', '27.06.2017'),
(370, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4048 False', '9.0.30729.4048', 'Microsoft Corporation', '03.08.2017'),
(371, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40649 False Eng', '12.0.40649.5', 'Microsoft Corporation', '-'),
(372, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30411 False', '9.0.30411', 'Microsoft Corporation', '03.08.2017'),
(373, 'WS0605P1137', 'Google Update Helper', '1.3.33.5', 'Google Inc.', '26.06.2017'),
(374, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660 False Eng', '12.0.40660.0', 'Microsoft Corporation', '-'),
(375, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106 False', '11.0.51106.1', '', '-'),
(376, 'WS0605P1137', 'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23506', '14.0.23506', 'Microsoft Corporation', '03.08.2017'),
(377, 'WS0605P1137', 'Microsoft Visual C++ 2017 x86 Additional Runtime - 14.10.25017', '14.10.25017', 'Microsoft Corporation', '27.06.2017'),
(378, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.51106 False', '11.0.51106', 'Microsoft Corporation', '03.08.2017'),
(379, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106 False Eng', '11.0.51106.1', 'Microsoft Corporation', '-'),
(380, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.61001', '8.0.61001', 'Microsoft Corporation', '03.08.2017'),
(381, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.56336 False', '8.0.56336', 'Microsoft Corporation', '03.08.2017'),
(382, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.50727.4053 False', '8.0.50727.4053', 'Microsoft Corporation', '03.08.2017'),
(383, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40649 False', '12.0.40649.5', '', '-'),
(384, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40660', '12.0.40660', 'Microsoft Corporation', '27.06.2017'),
(385, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005 False Eng', '12.0.21005.1', 'Microsoft Corporation', '-'),
(386, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.59193 False', '8.0.59193', 'Microsoft Corporation', '03.08.2017'),
(387, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.5570 False', '9.0.30729.5570', 'Microsoft Corporation', '03.08.2017'),
(388, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106 False Eng', '11.0.51106.1', 'Microsoft Corporation', '-'),
(389, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610 False Eng', '11.0.60610.1', 'Microsoft Corporation', '-'),
(390, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(391, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161', '9.0.30729.6161', 'Microsoft Corporation', '03.08.2017'),
(392, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.51011 False', '8.0.51011', 'Microsoft Corporation', '03.08.2017'),
(393, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610 False Eng', '11.0.60610.1', 'Microsoft Corporation', '-'),
(394, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030', '11.0.61030.0', '', '-'),
(395, 'WS0605P1137', 'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23026 False', '14.0.23026', 'Microsoft Corporation', '03.08.2017'),
(396, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.50727.42 False', '8.0.50727.42', 'Microsoft Corporation', '03.08.2017'),
(397, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40649 False', '12.0.40649', 'Microsoft Corporation', '27.06.2017'),
(398, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030', '11.0.61030', 'Microsoft Corporation', '03.08.2017'),
(399, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501', '12.0.30501.0', '', '-'),
(400, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030', '11.0.61030', 'Microsoft Corporation', '03.08.2017'),
(401, 'WS0605P1137', 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23026 False', '14.0.23026', 'Microsoft Corporation', '03.08.2017'),
(402, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40649 False', '12.0.40649.5', '', '-'),
(403, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030 False Eng', '11.0.61030.0', 'Microsoft Corporation', '-'),
(404, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005 False Eng', '12.0.21005.1', 'Microsoft Corporation', '-'),
(405, 'WS0605P1137', 'Microsoft Visual C++ 2017 Redistributable (x64) - 14.10.25017', '14.10.25017.0', '', '-'),
(406, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.57103 False', '8.0.57103', 'Microsoft Corporation', '03.08.2017'),
(407, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022.0 False', '9.0.21022', 'Microsoft Corporation', '03.08.2017'),
(408, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610 False', '11.0.60610.1', '', '-'),
(409, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40649 False', '12.0.40649', 'Microsoft Corporation', '27.06.2017'),
(410, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40660', '12.0.40660', 'Microsoft Corporation', '27.06.2017'),
(411, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022.218 False', '9.0.21022.218', 'Microsoft Corporation', '03.08.2017'),
(412, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.60610 False', '11.0.60610', 'Microsoft Corporation', '03.08.2017'),
(413, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.51106 False', '11.0.51106', 'Microsoft Corporation', '03.08.2017'),
(414, 'WS0605P1137', 'Microsoft Visual C++ 2017 Redistributable (x86) - 14.10.25017', '14.10.25017.0', '', '-'),
(415, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660 False Eng', '12.0.40660.0', 'Microsoft Corporation', '-'),
(416, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030', '11.0.61030.0', '', '-'),
(417, 'WS0605P1137', 'Microsoft Visual C++ 2010 Redistributable - x86 10.0.40219', '10.0.40219', 'Microsoft Corporation', '03.08.2017'),
(418, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501 False Eng', '12.0.30501.0', 'Microsoft Corporation', '-'),
(419, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.21005', '12.0.21005', 'Microsoft Corporation', '03.08.2017'),
(420, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022 False', '9.0.21022', 'Microsoft Corporation', '03.08.2017'),
(421, 'WS0605P1137', 'AIMP3', 'v3.20.1165, 21.12.2012', 'AIMP DevTeam', '27.06.2017'),
(422, 'WS0605P1137', 'FileZilla Client 3.6.0', '3.6.0', 'FileZilla Project', '-'),
(423, 'WS0605P1137', 'Google Chrome', '59.0.3071.115', 'Google Inc.', '26.06.2017'),
(424, 'WS0605P1137', 'Mobile Broadband HL Service', '22.001.29.00.03', 'Huawei Technologies Co.,Ltd', '-'),
(425, 'WS0605P1137', 'Notepad++ (32-bit x86)', '7.4.2', 'Notepad++ Team', '-'),
(426, 'WS0605P1137', 'Opera Stable 46.0.2597.57', '46.0.2597.57', 'Opera Software', '-'),
(427, 'WS0605P1137', 'JetBrains PhpStorm 2017.1.4', '171.4694.2', 'JetBrains s.r.o.', '-'),
(428, 'WS0605P1137', 'Adobe Photoshop CC 2017', '18.0.1', 'Adobe Systems Incorporated', '-'),
(429, 'WS0605P1137', 'TeamViewer 12', '12.0.78716', 'TeamViewer', '-'),
(430, 'WS0605P1137', 'KMPlayer (remove only)', '4.1.5.8', 'PandoraTV', '-'),
(431, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148.0 False', '9.0.30729.4148', 'Microsoft Corporation', '03.08.2017'),
(432, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610 False', '11.0.60610.1', '', '-'),
(433, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501 False Eng', '12.0.30501.0', 'Microsoft Corporation', '-'),
(434, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660', '12.0.40660.0', '', '-'),
(435, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.58299 False', '8.0.58299', 'Microsoft Corporation', '03.08.2017'),
(436, 'WS0605P1137', 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23506', '14.0.23506', 'Microsoft Corporation', '03.08.2017'),
(437, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660', '12.0.40660.0', '', '-'),
(438, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005', '12.0.21005', 'Microsoft Corporation', '03.08.2017'),
(439, 'WS0605P1137', 'Microsoft Visual C++ 2010 Redistributable - x86 10.0.30319 False', '10.0.30319', 'Microsoft Corporation', '03.08.2017'),
(440, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501', '12.0.30501.0', '', '-'),
(441, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148 False', '9.0.30729.4148', 'Microsoft Corporation', '03.08.2017'),
(442, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005 False', '12.0.21005.1', '', '-'),
(443, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030 False Eng', '11.0.61030.0', 'Microsoft Corporation', '-'),
(444, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106 False', '11.0.51106.1', '', '-'),
(445, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40649 False Eng', '12.0.40649.5', 'Microsoft Corporation', '-'),
(446, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(447, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.60610 False', '11.0.60610', 'Microsoft Corporation', '03.08.2017'),
(448, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005 False', '12.0.21005.1', '', '-'),
(449, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.0 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(450, 'WS0605P1137', 'Microsoft Visual C++ 2017 x86 Minimum Runtime - 14.10.25017', '14.10.25017', 'Microsoft Corporation', '27.06.2017'),
(451, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4048 False', '9.0.30729.4048', 'Microsoft Corporation', '03.08.2017'),
(452, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40649 False Eng', '12.0.40649.5', 'Microsoft Corporation', '-'),
(453, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30411 False', '9.0.30411', 'Microsoft Corporation', '03.08.2017'),
(454, 'WS0605P1137', 'Google Update Helper', '1.3.33.5', 'Google Inc.', '26.06.2017'),
(455, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660 False Eng', '12.0.40660.0', 'Microsoft Corporation', '-'),
(456, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106 False', '11.0.51106.1', '', '-'),
(457, 'WS0605P1137', 'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23506', '14.0.23506', 'Microsoft Corporation', '03.08.2017'),
(458, 'WS0605P1137', 'Microsoft Visual C++ 2017 x86 Additional Runtime - 14.10.25017', '14.10.25017', 'Microsoft Corporation', '27.06.2017'),
(459, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.51106 False', '11.0.51106', 'Microsoft Corporation', '03.08.2017'),
(460, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106 False Eng', '11.0.51106.1', 'Microsoft Corporation', '-'),
(461, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.61001', '8.0.61001', 'Microsoft Corporation', '03.08.2017'),
(462, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.56336 False', '8.0.56336', 'Microsoft Corporation', '03.08.2017'),
(463, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.50727.4053 False', '8.0.50727.4053', 'Microsoft Corporation', '03.08.2017'),
(464, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40649 False', '12.0.40649.5', '', '-'),
(465, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40660', '12.0.40660', 'Microsoft Corporation', '27.06.2017'),
(466, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005 False Eng', '12.0.21005.1', 'Microsoft Corporation', '-'),
(467, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.59193 False', '8.0.59193', 'Microsoft Corporation', '03.08.2017'),
(468, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.5570 False', '9.0.30729.5570', 'Microsoft Corporation', '03.08.2017'),
(469, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106 False Eng', '11.0.51106.1', 'Microsoft Corporation', '-'),
(470, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610 False Eng', '11.0.60610.1', 'Microsoft Corporation', '-'),
(471, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(472, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161', '9.0.30729.6161', 'Microsoft Corporation', '03.08.2017'),
(473, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.51011 False', '8.0.51011', 'Microsoft Corporation', '03.08.2017'),
(474, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610 False Eng', '11.0.60610.1', 'Microsoft Corporation', '-'),
(475, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030', '11.0.61030.0', '', '-'),
(476, 'WS0605P1137', 'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23026 False', '14.0.23026', 'Microsoft Corporation', '03.08.2017'),
(477, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.50727.42 False', '8.0.50727.42', 'Microsoft Corporation', '03.08.2017'),
(478, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40649 False', '12.0.40649', 'Microsoft Corporation', '27.06.2017'),
(479, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030', '11.0.61030', 'Microsoft Corporation', '03.08.2017'),
(480, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501', '12.0.30501.0', '', '-'),
(481, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030', '11.0.61030', 'Microsoft Corporation', '03.08.2017'),
(482, 'WS0605P1137', 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23026 False', '14.0.23026', 'Microsoft Corporation', '03.08.2017'),
(483, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40649 False', '12.0.40649.5', '', '-'),
(484, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030 False Eng', '11.0.61030.0', 'Microsoft Corporation', '-'),
(485, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005 False Eng', '12.0.21005.1', 'Microsoft Corporation', '-'),
(486, 'WS0605P1137', 'Microsoft Visual C++ 2017 Redistributable (x64) - 14.10.25017', '14.10.25017.0', '', '-'),
(487, 'WS0605P1137', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.57103 False', '8.0.57103', 'Microsoft Corporation', '03.08.2017'),
(488, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022.0 False', '9.0.21022', 'Microsoft Corporation', '03.08.2017'),
(489, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610 False', '11.0.60610.1', '', '-'),
(490, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40649 False', '12.0.40649', 'Microsoft Corporation', '27.06.2017'),
(491, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40660', '12.0.40660', 'Microsoft Corporation', '27.06.2017'),
(492, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022.218 False', '9.0.21022.218', 'Microsoft Corporation', '03.08.2017'),
(493, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.60610 False', '11.0.60610', 'Microsoft Corporation', '03.08.2017'),
(494, 'WS0605P1137', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.51106 False', '11.0.51106', 'Microsoft Corporation', '03.08.2017'),
(495, 'WS0605P1137', 'Microsoft Visual C++ 2017 Redistributable (x86) - 14.10.25017', '14.10.25017.0', '', '-'),
(496, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660 False Eng', '12.0.40660.0', 'Microsoft Corporation', '-'),
(497, 'WS0605P1137', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030', '11.0.61030.0', '', '-'),
(498, 'WS0605P1137', 'Microsoft Visual C++ 2010 Redistributable - x86 10.0.40219', '10.0.40219', 'Microsoft Corporation', '03.08.2017'),
(499, 'WS0605P1137', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501 False Eng', '12.0.30501.0', 'Microsoft Corporation', '-'),
(500, 'WS0605P1137', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.21005', '12.0.21005', 'Microsoft Corporation', '03.08.2017'),
(501, 'WS0605P1137', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022 False', '9.0.21022', 'Microsoft Corporation', '03.08.2017'),
(502, 'WS0605P0868', '', '', '', ''),
(503, 'WS0605P0868', 'AIMP3', 'v3.20.1165, 21.12.2012', 'AIMP DevTeam', '27.06.2017'),
(504, 'WS0605P0868', 'FileZilla Client 3.6.0', '3.6.0', 'FileZilla Project', '-'),
(505, 'WS0605P0868', 'Google Chrome', '59.0.3071.115', 'Google Inc.', '26.06.2017'),
(506, 'WS0605P0868', 'Mobile Broadband HL Service', '22.001.29.00.03', 'Huawei Technologies Co.,Ltd', '-'),
(507, 'WS0605P0868', 'Notepad++ (32-bit x86)', '7.4.2', 'Notepad++ Team', '-'),
(508, 'WS0605P0868', 'Opera Stable 46.0.2597.57', '46.0.2597.57', 'Opera Software', '-'),
(509, 'WS0605P0868', 'JetBrains PhpStorm 2017.1.4', '171.4694.2', 'JetBrains s.r.o.', '-'),
(510, 'WS0605P0868', 'Adobe Photoshop CC 2017', '18.0.1', 'Adobe Systems Incorporated', '-'),
(511, 'WS0605P0868', 'TeamViewer 12', '12.0.78716', 'TeamViewer', '-'),
(512, 'WS0605P0868', 'KMPlayer (remove only)', '4.1.5.8', 'PandoraTV', '-'),
(513, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148.0 False', '9.0.30729.4148', 'Microsoft Corporation', '03.08.2017'),
(514, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610 False', '11.0.60610.1', '', '-'),
(515, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501 False Eng', '12.0.30501.0', 'Microsoft Corporation', '-'),
(516, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660', '12.0.40660.0', '', '-'),
(517, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.58299 False', '8.0.58299', 'Microsoft Corporation', '03.08.2017'),
(518, 'WS0605P0868', 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23506', '14.0.23506', 'Microsoft Corporation', '03.08.2017'),
(519, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660', '12.0.40660.0', '', '-'),
(520, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005', '12.0.21005', 'Microsoft Corporation', '03.08.2017'),
(521, 'WS0605P0868', 'Microsoft Visual C++ 2010 Redistributable - x86 10.0.30319 False', '10.0.30319', 'Microsoft Corporation', '03.08.2017'),
(522, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501', '12.0.30501.0', '', '-'),
(523, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148 False', '9.0.30729.4148', 'Microsoft Corporation', '03.08.2017'),
(524, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005 False', '12.0.21005.1', '', '-'),
(525, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030 False Eng', '11.0.61030.0', 'Microsoft Corporation', '-'),
(526, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106 False', '11.0.51106.1', '', '-'),
(527, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40649 False Eng', '12.0.40649.5', 'Microsoft Corporation', '-'),
(528, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(529, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.60610 False', '11.0.60610', 'Microsoft Corporation', '03.08.2017'),
(530, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005 False', '12.0.21005.1', '', '-'),
(531, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.0 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(532, 'WS0605P0868', 'Microsoft Visual C++ 2017 x86 Minimum Runtime - 14.10.25017', '14.10.25017', 'Microsoft Corporation', '27.06.2017'),
(533, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4048 False', '9.0.30729.4048', 'Microsoft Corporation', '03.08.2017'),
(534, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40649 False Eng', '12.0.40649.5', 'Microsoft Corporation', '-'),
(535, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30411 False', '9.0.30411', 'Microsoft Corporation', '03.08.2017'),
(536, 'WS0605P0868', 'Google Update Helper', '1.3.33.5', 'Google Inc.', '26.06.2017'),
(537, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660 False Eng', '12.0.40660.0', 'Microsoft Corporation', '-'),
(538, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106 False', '11.0.51106.1', '', '-'),
(539, 'WS0605P0868', 'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23506', '14.0.23506', 'Microsoft Corporation', '03.08.2017'),
(540, 'WS0605P0868', 'Microsoft Visual C++ 2017 x86 Additional Runtime - 14.10.25017', '14.10.25017', 'Microsoft Corporation', '27.06.2017'),
(541, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.51106 False', '11.0.51106', 'Microsoft Corporation', '03.08.2017'),
(542, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106 False Eng', '11.0.51106.1', 'Microsoft Corporation', '-'),
(543, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.61001', '8.0.61001', 'Microsoft Corporation', '03.08.2017'),
(544, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.56336 False', '8.0.56336', 'Microsoft Corporation', '03.08.2017'),
(545, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.50727.4053 False', '8.0.50727.4053', 'Microsoft Corporation', '03.08.2017'),
(546, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40649 False', '12.0.40649.5', '', '-'),
(547, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40660', '12.0.40660', 'Microsoft Corporation', '27.06.2017'),
(548, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005 False Eng', '12.0.21005.1', 'Microsoft Corporation', '-'),
(549, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.59193 False', '8.0.59193', 'Microsoft Corporation', '03.08.2017'),
(550, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.5570 False', '9.0.30729.5570', 'Microsoft Corporation', '03.08.2017'),
(551, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106 False Eng', '11.0.51106.1', 'Microsoft Corporation', '-'),
(552, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610 False Eng', '11.0.60610.1', 'Microsoft Corporation', '-'),
(553, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(554, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161', '9.0.30729.6161', 'Microsoft Corporation', '03.08.2017'),
(555, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.51011 False', '8.0.51011', 'Microsoft Corporation', '03.08.2017'),
(556, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610 False Eng', '11.0.60610.1', 'Microsoft Corporation', '-'),
(557, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030', '11.0.61030.0', '', '-'),
(558, 'WS0605P0868', 'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23026 False', '14.0.23026', 'Microsoft Corporation', '03.08.2017'),
(559, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.50727.42 False', '8.0.50727.42', 'Microsoft Corporation', '03.08.2017'),
(560, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40649 False', '12.0.40649', 'Microsoft Corporation', '27.06.2017'),
(561, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030', '11.0.61030', 'Microsoft Corporation', '03.08.2017'),
(562, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501', '12.0.30501.0', '', '-'),
(563, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030', '11.0.61030', 'Microsoft Corporation', '03.08.2017'),
(564, 'WS0605P0868', 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23026 False', '14.0.23026', 'Microsoft Corporation', '03.08.2017'),
(565, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40649 False', '12.0.40649.5', '', '-'),
(566, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030 False Eng', '11.0.61030.0', 'Microsoft Corporation', '-'),
(567, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005 False Eng', '12.0.21005.1', 'Microsoft Corporation', '-'),
(568, 'WS0605P0868', 'Microsoft Visual C++ 2017 Redistributable (x64) - 14.10.25017', '14.10.25017.0', '', '-'),
(569, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.57103 False', '8.0.57103', 'Microsoft Corporation', '03.08.2017'),
(570, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022.0 False', '9.0.21022', 'Microsoft Corporation', '03.08.2017'),
(571, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610 False', '11.0.60610.1', '', '-'),
(572, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40649 False', '12.0.40649', 'Microsoft Corporation', '27.06.2017'),
(573, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40660', '12.0.40660', 'Microsoft Corporation', '27.06.2017'),
(574, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022.218 False', '9.0.21022.218', 'Microsoft Corporation', '03.08.2017'),
(575, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.60610 False', '11.0.60610', 'Microsoft Corporation', '03.08.2017'),
(576, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.51106 False', '11.0.51106', 'Microsoft Corporation', '03.08.2017'),
(577, 'WS0605P0868', 'Microsoft Visual C++ 2017 Redistributable (x86) - 14.10.25017', '14.10.25017.0', '', '-'),
(578, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660 False Eng', '12.0.40660.0', 'Microsoft Corporation', '-'),
(579, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030', '11.0.61030.0', '', '-'),
(580, 'WS0605P0868', 'Microsoft Visual C++ 2010 Redistributable - x86 10.0.40219', '10.0.40219', 'Microsoft Corporation', '03.08.2017'),
(581, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501 False Eng', '12.0.30501.0', 'Microsoft Corporation', '-'),
(582, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.21005', '12.0.21005', 'Microsoft Corporation', '03.08.2017'),
(583, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022 False', '9.0.21022', 'Microsoft Corporation', '03.08.2017'),
(584, 'WS0605P0868', 'AIMP3', 'v3.20.1165, 21.12.2012', 'AIMP DevTeam', '27.06.2017'),
(585, 'WS0605P0868', 'FileZilla Client 3.6.0', '3.6.0', 'FileZilla Project', '-'),
(586, 'WS0605P0868', 'Google Chrome', '59.0.3071.115', 'Google Inc.', '26.06.2017'),
(587, 'WS0605P0868', 'Mobile Broadband HL Service', '22.001.29.00.03', 'Huawei Technologies Co.,Ltd', '-'),
(588, 'WS0605P0868', 'Notepad++ (32-bit x86)', '7.4.2', 'Notepad++ Team', '-'),
(589, 'WS0605P0868', 'Opera Stable 46.0.2597.57', '46.0.2597.57', 'Opera Software', '-'),
(590, 'WS0605P0868', 'JetBrains PhpStorm 2017.1.4', '171.4694.2', 'JetBrains s.r.o.', '-'),
(591, 'WS0605P0868', 'Adobe Photoshop CC 2017', '18.0.1', 'Adobe Systems Incorporated', '-'),
(592, 'WS0605P0868', 'TeamViewer 12', '12.0.78716', 'TeamViewer', '-'),
(593, 'WS0605P0868', 'KMPlayer (remove only)', '4.1.5.8', 'PandoraTV', '-'),
(594, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148.0 False', '9.0.30729.4148', 'Microsoft Corporation', '03.08.2017'),
(595, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610 False', '11.0.60610.1', '', '-'),
(596, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501 False Eng', '12.0.30501.0', 'Microsoft Corporation', '-'),
(597, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660', '12.0.40660.0', '', '-'),
(598, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.58299 False', '8.0.58299', 'Microsoft Corporation', '03.08.2017'),
(599, 'WS0605P0868', 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23506', '14.0.23506', 'Microsoft Corporation', '03.08.2017'),
(600, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660', '12.0.40660.0', '', '-'),
(601, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005', '12.0.21005', 'Microsoft Corporation', '03.08.2017'),
(602, 'WS0605P0868', 'Microsoft Visual C++ 2010 Redistributable - x86 10.0.30319 False', '10.0.30319', 'Microsoft Corporation', '03.08.2017'),
(603, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501', '12.0.30501.0', '', '-'),
(604, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148 False', '9.0.30729.4148', 'Microsoft Corporation', '03.08.2017'),
(605, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005 False', '12.0.21005.1', '', '-'),
(606, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030 False Eng', '11.0.61030.0', 'Microsoft Corporation', '-'),
(607, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106 False', '11.0.51106.1', '', '-'),
(608, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40649 False Eng', '12.0.40649.5', 'Microsoft Corporation', '-'),
(609, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(610, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.60610 False', '11.0.60610', 'Microsoft Corporation', '03.08.2017'),
(611, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005 False', '12.0.21005.1', '', '-'),
(612, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.0 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(613, 'WS0605P0868', 'Microsoft Visual C++ 2017 x86 Minimum Runtime - 14.10.25017', '14.10.25017', 'Microsoft Corporation', '27.06.2017'),
(614, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4048 False', '9.0.30729.4048', 'Microsoft Corporation', '03.08.2017'),
(615, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40649 False Eng', '12.0.40649.5', 'Microsoft Corporation', '-'),
(616, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30411 False', '9.0.30411', 'Microsoft Corporation', '03.08.2017'),
(617, 'WS0605P0868', 'Google Update Helper', '1.3.33.5', 'Google Inc.', '26.06.2017'),
(618, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660 False Eng', '12.0.40660.0', 'Microsoft Corporation', '-'),
(619, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106 False', '11.0.51106.1', '', '-'),
(620, 'WS0605P0868', 'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23506', '14.0.23506', 'Microsoft Corporation', '03.08.2017'),
(621, 'WS0605P0868', 'Microsoft Visual C++ 2017 x86 Additional Runtime - 14.10.25017', '14.10.25017', 'Microsoft Corporation', '27.06.2017'),
(622, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.51106 False', '11.0.51106', 'Microsoft Corporation', '03.08.2017'),
(623, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106 False Eng', '11.0.51106.1', 'Microsoft Corporation', '-'),
(624, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.61001', '8.0.61001', 'Microsoft Corporation', '03.08.2017'),
(625, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.56336 False', '8.0.56336', 'Microsoft Corporation', '03.08.2017'),
(626, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.50727.4053 False', '8.0.50727.4053', 'Microsoft Corporation', '03.08.2017'),
(627, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40649 False', '12.0.40649.5', '', '-'),
(628, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40660', '12.0.40660', 'Microsoft Corporation', '27.06.2017'),
(629, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005 False Eng', '12.0.21005.1', 'Microsoft Corporation', '-'),
(630, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.59193 False', '8.0.59193', 'Microsoft Corporation', '03.08.2017'),
(631, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.5570 False', '9.0.30729.5570', 'Microsoft Corporation', '03.08.2017'),
(632, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106 False Eng', '11.0.51106.1', 'Microsoft Corporation', '-'),
(633, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610 False Eng', '11.0.60610.1', 'Microsoft Corporation', '-'),
(634, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17 False', '9.0.30729', 'Microsoft Corporation', '03.08.2017'),
(635, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161', '9.0.30729.6161', 'Microsoft Corporation', '03.08.2017'),
(636, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.51011 False', '8.0.51011', 'Microsoft Corporation', '03.08.2017'),
(637, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610 False Eng', '11.0.60610.1', 'Microsoft Corporation', '-'),
(638, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030', '11.0.61030.0', '', '-'),
(639, 'WS0605P0868', 'Microsoft Visual C++ 2015 x86 Minimum Runtime - 14.0.23026 False', '14.0.23026', 'Microsoft Corporation', '03.08.2017'),
(640, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.50727.42 False', '8.0.50727.42', 'Microsoft Corporation', '03.08.2017'),
(641, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40649 False', '12.0.40649', 'Microsoft Corporation', '27.06.2017'),
(642, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030', '11.0.61030', 'Microsoft Corporation', '03.08.2017'),
(643, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501', '12.0.30501.0', '', '-'),
(644, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030', '11.0.61030', 'Microsoft Corporation', '03.08.2017'),
(645, 'WS0605P0868', 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.23026 False', '14.0.23026', 'Microsoft Corporation', '03.08.2017'),
(646, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40649 False', '12.0.40649.5', '', '-'),
(647, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030 False Eng', '11.0.61030.0', 'Microsoft Corporation', '-'),
(648, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005 False Eng', '12.0.21005.1', 'Microsoft Corporation', '-'),
(649, 'WS0605P0868', 'Microsoft Visual C++ 2017 Redistributable (x64) - 14.10.25017', '14.10.25017.0', '', '-'),
(650, 'WS0605P0868', 'Microsoft Visual C++ 2005 Redistributable - x86 8.0.57103 False', '8.0.57103', 'Microsoft Corporation', '03.08.2017'),
(651, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022.0 False', '9.0.21022', 'Microsoft Corporation', '03.08.2017'),
(652, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610 False', '11.0.60610.1', '', '-'),
(653, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40649 False', '12.0.40649', 'Microsoft Corporation', '27.06.2017'),
(654, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40660', '12.0.40660', 'Microsoft Corporation', '27.06.2017'),
(655, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022.218 False', '9.0.21022.218', 'Microsoft Corporation', '03.08.2017'),
(656, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.60610 False', '11.0.60610', 'Microsoft Corporation', '03.08.2017'),
(657, 'WS0605P0868', 'Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.51106 False', '11.0.51106', 'Microsoft Corporation', '03.08.2017'),
(658, 'WS0605P0868', 'Microsoft Visual C++ 2017 Redistributable (x86) - 14.10.25017', '14.10.25017.0', '', '-'),
(659, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660 False Eng', '12.0.40660.0', 'Microsoft Corporation', '-'),
(660, 'WS0605P0868', 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030', '11.0.61030.0', '', '-'),
(661, 'WS0605P0868', 'Microsoft Visual C++ 2010 Redistributable - x86 10.0.40219', '10.0.40219', 'Microsoft Corporation', '03.08.2017'),
(662, 'WS0605P0868', 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501 False Eng', '12.0.30501.0', 'Microsoft Corporation', '-'),
(663, 'WS0605P0868', 'Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.21005', '12.0.21005', 'Microsoft Corporation', '03.08.2017'),
(664, 'WS0605P0868', 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022 False', '9.0.21022', 'Microsoft Corporation', '03.08.2017');

-- --------------------------------------------------------

--
-- Структура таблиці `dialog`
--

CREATE TABLE `dialog` (
  `id` int(11) NOT NULL,
  `user_1` int(11) NOT NULL,
  `user_2` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `dialog`
--

INSERT INTO `dialog` (`id`, `user_1`, `user_2`, `date`) VALUES
(19, 1, 2, 0),
(20, 2, 3, 0),
(21, 3, 4, 0),
(22, 4, 5, 1526758839),
(23, 5, 6, 0),
(24, 6, 7, 0),
(25, 7, 8, 0),
(26, 8, 9, 0),
(27, 9, 10, 0),
(28, 10, 11, 0),
(29, 11, 12, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `gu_mail`
--

CREATE TABLE `gu_mail` (
  `id` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `name_sk` text NOT NULL,
  `post` varchar(255) NOT NULL,
  `index` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `gu_mail`
--

INSERT INTO `gu_mail` (`id`, `name`, `name_sk`, `post`, `index`) VALUES
('01', 'Керівництво', 'Керівництво', 'Direction@zt.dksu.local', 'A'),
('02', 'Сектор внутрішнього аудиту та контролю', 'Сектор аудиту', 'Control@zt.dksu.local', 'B'),
('03', 'Сектор персоналу та запобігання корупції', 'Сектор персоналу', 'Personnel@zt.dksu.local', 'C'),
('04', 'Відділ видатків, мережі та зведених показників бюджету', 'Відділ видатків, мережі', 'Vydat@zt.dksu.local,Zved@zt.dksu.local', 'D, E'),
('05', 'Відділ фінансових ресурсів', 'Відділ фінансових ресурсів', 'Income@zt.dksu.local,Finres_oper@zt.dksu.local', 'F, G'),
('06', 'Управління міжбюджетних відносин та моніторингу видатків МБ', 'Управління МВ та МВ МБ', 'Intbudg@zt.dksu.local', 'H'),
('06.1', 'Відділ моніторингу видатків місцевих бюджтів', 'Відділ моніторингу видатків', 'Intbudg_local@zt.dksu.local', ''),
('06.2', 'Відділ розрахунків за міжбюджетними трансфертами', 'Відділ розрахунків', 'Intbudg_clearing@zt.dksu.local', ''),
('07', 'Управління обслуговування розпорядників коштів та інших клієнтів', 'Управління обслуговування РК', 'Operating@zt.dksu.local', ''),
('07.1', 'Відділ обслуговування установ національної оборони та правоохоронних органів', 'Відділ обсл. НО та ПО', 'Oper_force@zt.dksu.local', 'J'),
('07.2', 'Відділ обслуговування коштів та інших клієнтів державного бюджету ', 'Відділ обслуговування коштів', 'Oper_state@zt.dksu.local', 'K'),
('07.3', 'Відділ обслуговування розпорядників коштів та інших клієнтів місцевих бюджетів', 'Відділ обслуговування РК', 'Oper_special@zt.dksu.local', 'L'),
('08', 'Управління консолідованої звітності', 'Управління консолідованої звітності', 'Finzvit@zt.dksu.local', 'M, N'),
('08.1', 'Відділ звітності про виконання державного бюджету', 'Відділ звітності ДБ', 'Finzvit_state@zt.dksu.local', ''),
('08.2', 'Відділ звітності про виконання місцевих бюджетів', 'Відділ звітності МБ', 'Finzvit_local@zt.dksu.local', ''),
('09', 'Управління бухгалтерського обліку операцій з виконання бюджетів', 'Управління бухобліку', 'Accounts@zt.dksu.local', 'O'),
('09.1', 'Відділ бухгалтерського обліку', 'Відділ бухобліку', 'Accounts_common@zt.dksu.local', ''),
('09.2', 'Відділ внутрішнього бухгалтерського контролю', 'Відділ бухконтролю', 'Accounts_int@zt.dksu.local', ''),
('10', 'Управління інформаційних технологій та захисту інформації', 'Управління ІТ', 'IT@zt.dksu.local', ''),
('10.1', 'Відділ прикладного програмного забезпечення та програмно-технічних комплексів', 'Відділ ППЗ та ПТК', 'IT_ppz@zt.dksu.local', 'P'),
('10.2', 'Відділ корпоративної телекомунікації, комп\'ютерної техніки та захисту інформації', 'Відділ КТКТ та ЗІ', 'IT_telecom@zt.dksu.local', 'Q'),
('10.3', 'Службова скринька', '', 'It_keys@zt.dksu.local', ''),
('11', 'Відділ фінансової роботи та господраського забезпечення', 'Плановофінансовий', 'Planfin@zt.dksu.local', 'R, S'),
('12', 'Юридичний відділ', 'Юридичний відділ', 'Jurists@zt.dksu.local', 'T'),
('13', 'Відділ діловодства', 'Відділ Діловодства', 'Dilovod@zt.dksu.local', 'U'),
('15', 'Відділ обслуговування операційного дня', '', 'OperDay@zt.dksu.local', 'X, Y');

-- --------------------------------------------------------

--
-- Структура таблиці `klients`
--

CREATE TABLE `klients` (
  `id` int(11) NOT NULL,
  `name_s` varchar(255) NOT NULL,
  `name_p` text NOT NULL,
  `krk` int(5) NOT NULL,
  `edrpou` int(8) NOT NULL,
  `address` text NOT NULL,
  `tel_1` varchar(50) NOT NULL,
  `tel_2` varchar(50) NOT NULL,
  `ker_pos` varchar(255) NOT NULL,
  `ker` varchar(255) NOT NULL,
  `buh_pos` varchar(255) NOT NULL,
  `buh` varchar(255) NOT NULL,
  `budget_mb` int(1) NOT NULL,
  `budget_db` int(1) NOT NULL,
  `inshi` int(1) NOT NULL,
  `budget_kod` int(11) NOT NULL,
  `budget_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Інформація про розпорядників коштів';

--
-- Дамп даних таблиці `klients`
--

INSERT INTO `klients` (`id`, `name_s`, `name_p`, `krk`, `edrpou`, `address`, `tel_1`, `tel_2`, `ker_pos`, `ker`, `buh_pos`, `buh`, `budget_mb`, `budget_db`, `inshi`, `budget_kod`, `budget_name`) VALUES
(1, 'УПСЗН Хорошівської РДА', 'Управління праці та соціального захисту населення Хорошівської районної державної адміністрації Житомирської області', 8236, 3192566, '12101, Житомирська область, Хорошівський район, смт.Хорошів вул. Соборна,1', '(04145) 3-23-54', '(04145) 3-21-54', 'Начальник', 'Панченко Валентина Володимирівна', 'Головний бухгалтер', '', 1, 1, 0, 1821100000, 'Хорошівський районний бюджет'),
(2, 'Відділ фінансів Хорошівської РДА', 'Відділ фінансів Хорошівської районної державної адміністрації Житомирської області', 8600, 2313246, '12101, Житомирська область, Хорошівський район, смт. Хорошів, вул.Героїв України, 6', '(04145) 3-22-93', '(04145) 3-23-93', 'Начальник', 'Голяченко Микола Петрович', 'Головний бухгалтер', '', 1, 1, 0, 1821100000, 'Хорошівський районний бюджет');

-- --------------------------------------------------------

--
-- Структура таблиці `kost`
--

CREATE TABLE `kost` (
  `id` int(11) NOT NULL,
  `to_mail` text NOT NULL,
  `number` varchar(255) NOT NULL,
  `date_mail` date NOT NULL,
  `date_to` date NOT NULL,
  `description` text NOT NULL,
  `work_mail` text NOT NULL,
  `work_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `mail_dksu`
--

CREATE TABLE `mail_dksu` (
  `id` int(11) NOT NULL,
  `to_mail` int(2) NOT NULL,
  `number` varchar(255) NOT NULL,
  `date_mail` date NOT NULL,
  `date_to` date NOT NULL,
  `description` text NOT NULL,
  `work_mail` text NOT NULL,
  `work_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `mail_org`
--

CREATE TABLE `mail_org` (
  `id` int(11) NOT NULL,
  `to_mail` text NOT NULL,
  `number` varchar(255) NOT NULL,
  `date_mail` date NOT NULL,
  `date_to` date NOT NULL,
  `description` text NOT NULL,
  `work_mail` text NOT NULL,
  `work_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `mail_org`
--

INSERT INTO `mail_org` (`id`, `to_mail`, `number`, `date_mail`, `date_to`, `description`, `work_mail`, `work_to`) VALUES
(1, 'УПСЗН', '123', '2017-07-30', '2017-07-31', 'Лист', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `mail_out`
--

CREATE TABLE `mail_out` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `ind` varchar(255) NOT NULL,
  `to_list` text NOT NULL,
  `description` text NOT NULL,
  `count_list` int(11) NOT NULL,
  `name` int(255) NOT NULL,
  `pr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `mail_out`
--

INSERT INTO `mail_out` (`id`, `date`, `ind`, `to_list`, `description`, `count_list`, `name`, `pr`) VALUES
(1, '2017-01-03', '03-10', 'ГУДКСУ', 'Лист про лікарняні', 1, 3, 'C03A0501'),
(2, '2017-01-03', '03-10', 'ГУДКСУ', 'Лист по заборгованості по з\\платі', 1, 3, 'R03A0501'),
(3, '2017-01-03', '', '', '', 0, 0, ''),
(4, '2017-01-04', '02-08', 'держземаген', 'лист', 0, 4, 'кур\'єр'),
(5, '2017-01-04', '03-10', 'ГУДКСУ', 'Кадрове забезпечення', 0, 7, 'C04A0501'),
(6, '2017-01-04', '03-10', 'ГУДКСУ', 'Супровід лист до звіту по обл.бюд. Міс', 0, 3, 'кур\'єр'),
(7, '2016-01-04', '03-10', 'ГУДКСУ', 'Супровід лист до звіту по ДБ', 0, 7, ''),
(8, '2016-01-04', '03-10', 'ГУДКСУ', 'Службова для виправних', 0, 7, ''),
(9, '2016-01-05', '04-06', 'ГУДКСУ', 'Заявка', 1, 1, 'кур\'єр'),
(10, '2016-01-05', '04-06', 'ГУДКСУ', 'Заявка', 1, 1, 'кур\'єр'),
(11, '2016-01-05', '03-10', 'ГУДКСУ', 'Супровід до міс звіту рай', 0, 3, 'N05A0501'),
(12, '2016-01-05', '02-08', 'ДВС', 'лист', 1, 4, 'кур\'єр'),
(13, '2016-01-05', '02-08', 'ОДПІ', 'акт звірки', 0, 4, 'кур\'єр'),
(14, '2016-01-05', '02-08', 'ОДПІ', 'акт звірки', 0, 4, 'кур\'єр'),
(15, '2016-01-05', '02-08', 'ОДПІ', 'акт звірки', 0, 4, 'кур\'єр'),
(16, '2017-01-10', '03-10', 'ГУДКСУ', 'Супров. до річ. звітності УДКСУ', 1, 3, 'R10A0501'),
(17, '2017-01-10', '03-10', 'ГУДКСУ', 'Лист про лікарняні', 2, 3, 'C10A0502'),
(18, '2017-01-10', '03-10', 'ГУДКСУ', 'Лист', 1, 9, 'Hrev_05'),
(19, '2017-01-10', '03-10', 'ГУДКСУ', 'супровід лист зо звіту обл 12 тис', 0, 3, 'N10A0501'),
(20, '2016-01-12', '03-10', 'ГУДКСУ', 'Ін-ція по субвенції соц-економ розв', 2, 3, 'R12A0501'),
(21, '2016-01-12', '03-10', 'ГУДКСУ', 'Супров. до річ. звітності 7ф', 6, 7, 'віза'),
(22, '2016-01-12', '03-10', 'ГУДКСУ', 'супровід лист зо звіту рай 12 тис', 0, 3, 'N12A0502'),
(23, '2016-01-12', '03-10', 'ГУДКСУ', 'супровідний до оборот-сальдов балан', 0, 7, 'm120501'),
(24, '2016-01-12', '03-10', 'ФУ РДА', 'Супровід до міс звіту рай', 0, 3, 'кур\'єр'),
(25, '2017-01-16', '02-08', 'Лезниківський карєр', 'лист', 1, 10, 'кур\'єр'),
(26, '2017-01-16', '03-24', 'ГУДКСУ', 'лист', 1, 3, 'C16A0501'),
(27, '2017-01-16', '02-08', 'Ірша', 'лист', 1, 10, 'кур\'єр'),
(28, '2017-01-16', '02-08', 'УФ', 'лист', 1, 4, 'кур\'єр'),
(29, '2017-01-16', '02-08', 'ОДПІ', 'лист', 1, 4, 'кур\'єр'),
(30, '2017-01-16', '02-08', 'Хорошівська с.р.', 'лист', 1, 4, 'кур\'єр'),
(31, '2017-01-16', '03-10', 'ГУДКСУ', 'Супров. до річ. Звітності по ДБ', 13, 7, ''),
(32, '2017-01-17', '03-10', 'ГУДКСУ', 'Супровідний до ф.7 мб', 8, 7, ''),
(33, '2017-01-17', '03-10', 'ГУДКСУ', 'Супровід  до річної звіту рай', 0, 3, 'N17A0502'),
(34, '2017-01-17', '03-10', 'ГУДКСУ', 'Супровід  до річної звіту обл', 0, 3, 'N17A0502'),
(35, '2017-01-17', '03-10', 'ГУДКСУ', 'Службова для виправних від 18.01.2016', 0, 7, ''),
(36, '2017-01-17', '02-08', 'Іршанськ.с.р', 'лист', 1, 4, 'кур\'єр'),
(37, '2017-01-17', '02-08', 'Новобор.с.р.', 'лист', 1, 4, 'кур\'єр'),
(38, '2017-01-23', '02-10', 'ГУДКСУ', 'лист', 1, 9, 'Hrev_05'),
(39, '2017-01-23', '03-10', 'ГУДКСУ', 'лист', 1, 7, ''),
(40, '2017-01-23', '03-10', 'ГУДКСУ', 'Службова для виправних 23.01.2017 ', 1, 7, 'O23A0503'),
(41, '2017-01-23', '02-08', 'ОДПІ', 'лист', 1, 4, 'кур\'єр'),
(42, '2017-01-23', '02-08', 'ГУДКСУ', 'лист', 2, 4, 'F24A0501'),
(43, '2017-01-25', '02-08', 'Башинська', 'лист', 1, 4, 'кур\'єр'),
(44, '2017-01-25', '02-08', 'Дацкевич', 'лист', 1, 4, 'кур\'єр'),
(45, '2017-01-25', '02-08', 'Зубрицька', 'лист', 1, 4, 'кур\'єр'),
(46, '2017-01-26', '03-10', 'ГУДКСУ', 'інформація', 1, 7, 'Ел. Пошта'),
(47, '2017-01-27', '02-10', 'ГУДКСУ', 'Лист', 1, 4, 'F27A0501'),
(48, '2017-01-27', '02-08', 'Іршанська сел рада', 'Лист', 3, 5, 'кур\'єр'),
(49, '2017-01-27', '02-08', 'Новобор.с.р.', 'Лист', 2, 5, 'кур\'єр'),
(50, '2017-01-27', '02-08', 'Хорошівська с.р.', 'Лист', 2, 5, 'кур\'єр'),
(51, '2017-01-27', '02-08', 'УФ', 'Лист', 2, 5, 'кур\'єр'),
(52, '2017-01-30', '03-24', 'ГУДКСУ', 'Лист', 1, 7, 'C30A0501'),
(53, '2017-01-30', '03-10', 'ГУДКСУ', 'Лист', 2, 7, 'C30A0502'),
(54, '2017-01-30', '02-10', 'ГУДКСУ', 'Лист', 1, 9, 'Hrev_05'),
(55, '2017-01-31', '02-08', 'ДСНС', 'Лист', 1, 4, 'кур\'єр'),
(56, '2017-01-31', '02-10', 'ГУДКСУ', 'Лист', 1, 9, 'Hrev_05'),
(57, '2017-01-31', '04-10', 'ГУДКСУ', 'Лист', 1, 1, 'C31A0501'),
(58, '2017-01-31', '03-10', 'ГУДКСУ', 'Лист', 0, 0, ''),
(59, '2017-02-01', '02-08', 'ОДПІ', 'акт звірки', 0, 4, 'кур\'єр'),
(60, '2017-02-01', '02-08', 'ОДПІ', 'акт звірки', 0, 4, 'кур\'єр'),
(61, '2017-02-01', '02-08', 'ОДПІ', 'акт звірки', 0, 4, 'кур\'єр'),
(62, '2017-02-01', '02-08', 'ДВС', 'Лист', 1, 4, 'кур\'єр'),
(63, '2017-02-01', '03-10', 'ГУДКСУ', 'Ін-ція про стан фінанс. Соц. Виплат', 2, 3, 'R01b0501'),
(64, '2017-02-01', '03-10', 'ГУДКСУ', 'Інф-ція про  викон. п.4  ПКМУ від 22.04.2005 №318 ', 2, 3, 'R01b0502'),
(65, '2017-02-01', '03-10', 'ГУДКСУ', 'Інф-ція про контр. Повн.', 2, 3, 'OKontr05 '),
(66, '2017-02-01', '03-10', 'ГУДКСУ', 'Супровід по міс.звіт  ДБ', 0, 7, ''),
(67, '2017-02-01', '03-10', 'ГУДКСУ', 'Інформація', 1, 3, 'C01B0501'),
(68, '2017-02-01', '02-10', 'ГУДКСУ', 'Інформація по депозитах ВНЗ', 1, 10, 'V05VNZ'),
(69, '2017-02-01', '03-10', 'ГУДКСУ', 'Ін-ція про подання ліквід.звітності', 1, 3, 'N02b0501'),
(70, '2017-02-06', '03-24', 'ГУДКСУ', 'Інформація ', 1, 7, 'C06B0501'),
(71, '2017-02-06', '03-10', 'ГУДКСУ', 'Інформація', 1, 7, 'R06B0501'),
(72, '2017-02-06', '04-10', 'ГУДКСУ', 'Інформація', 1, 4, 'С06B0502'),
(73, '2016-02-06', '04-10', 'ГУДКСУ', 'Супровід. до річ.звіту по ДБ', 0, 7, ''),
(74, '2017-02-06', '03-10', 'ГУДКСУ', 'Супровід до міс зв місцев. бюдж', 1, 3, 'N06b0501'),
(75, '2017-02-06', '03-10', 'ГУДКСУ', 'Супровід до міс зв обл бюдж', 0, 3, 'N06b0502'),
(76, '2017-02-06', '02-08', 'Іршанська сел. Рада', 'Лист', 2, 5, 'кур\'єр'),
(77, '2017-02-06', '02-08', 'Хорошів. сел. Рада', 'Лист', 2, 5, 'кур\'єр'),
(78, '2017-02-06', '02-08', 'Новобор. сел. Рада', 'Лист', 2, 5, 'кур\'єр'),
(79, '2017-02-06', '02-08', 'УПСЗН', 'Лист', 2, 5, 'кур\'єр'),
(80, '2017-02-06', '02-08', 'УФ', 'Лист', 2, 5, 'кур\'єр'),
(81, '2017-02-06', '02-08', 'РДА', 'Лист', 2, 5, 'кур\'єр'),
(82, '2017-02-06', '02-08', 'ВОМС', 'Лист', 2, 5, 'кур\'єр'),
(83, '2017-02-06', '02-08', 'Райрада', 'Лист', 2, 5, 'кур\'єр'),
(84, '2017-02-06', '02-08', 'СОЗ', 'Лист', 2, 5, 'кур\'єр'),
(85, '2017-02-06', '02-08', 'СКТ', 'Лист', 2, 5, 'кур\'єр'),
(86, '2017-02-07', '04-10', 'ГУДКСУ', 'Інформація', 1, 1, 'P07B0501'),
(87, '2017-02-07', '02-08', 'Тарасюк', 'лист', 1, 4, 'кур\'єр'),
(88, '2017-02-08', '02-10', 'ГУДКСУ', 'лист', 2, 4, 'G08B0502'),
(89, '2017-02-08', '02-08', 'Суд', 'лист', 1, 4, 'кур\'єр'),
(90, '2017-02-08', '03-10', 'ГУДКСУ', 'Ін-ція про використ електроенерг.', 2, 3, 'кур\'єр'),
(91, '2017-02-08', '03-10', 'ГУДКСУ', 'Інформація потреби по КЕКВ 2210', 2240, 3, 'R08B0501'),
(92, '2017-02-08', '02-08', 'Суд', 'лист', 2, 4, 'кур\'єр'),
(93, '2017-02-09', '03-10', 'Яцемірському', 'лист', 1, 4, 'кур\'єр'),
(94, '2017-02-10', '03-10', 'ГУДКСУ', 'Інформація', 1, 3, 'R10B0501'),
(95, '2017-02-10', '03-10', 'ГУДКСУ', 'Супровід до ф.7 по мб за 01м.', 10, 7, ''),
(96, '2017-02-13', '03-24', 'ГУДКСУ', 'Інформація', 1, 7, 'C13B0501'),
(97, '2017-02-13', '04-10', 'ГУДКСУ', 'Інформація', 1, 1, 'U13B0501'),
(98, '2017-02-13', '04-10', 'ГУДКСУ', 'Інформація', 1, 1, 'Q13B0501'),
(99, '2017-02-13', '03-10', 'ГУДКСУ', 'Інформація', 2, 3, 'T13B0501'),
(100, '2017-02-13', '03-10', 'ГУДКСУ', 'Інф.про дебіт,кред. заборг.', 1, 7, ''),
(101, '2017-02-13', '03-10', 'ГУДКСУ', 'Інф.про дебіт,кред. заборг.', 1, 7, ''),
(102, '2017-02-14', '04-10', 'ГУДКСУ', 'Інформація', 1, 1, 'Q14B0501'),
(103, '2017-02-14', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'IZ_05'),
(104, '2017-02-15', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'I_05'),
(105, '2017-02-15', '03-10', 'ГУДКСУ', 'Лист', 1, 3, 'кур\'єр'),
(106, '2017-02-15', '02-08', 'Кириченко  С.А', 'Лист', 1, 4, 'кур\'єр'),
(107, '2017-02-15', '02-10', 'ГУДКСУ', 'інформація', 1, 5, 'b15b0501'),
(108, '2017-02-16', '02-08', 'Зубрицький В.М', 'лист', 1, 4, 'кур\'єр'),
(109, '2017-02-16', '02-08', 'Кириченко С.А', 'лист', 2, 4, 'кур\'єр'),
(110, '2017-02-16', '03-10', 'Павицька В.В.', 'лист', 1, 7, 'кур\'єр'),
(111, '2017-02-17', '03-10', 'ГУДКСУ', 'інформація', 1, 7, 'C17B0501'),
(112, '2017-02-20', '04-10/', 'ГУДКСУ', 'інформація', 1, 1, 'U20B0501'),
(113, '2017-02-20', '03-24', 'ГУДКСУ', 'Інформація', 1, 7, 'C20B0501'),
(114, '2017-02-20', '04-10', 'ГУДКСУ', 'Інформація', 21, 1, 'P20B0501'),
(115, '2017-02-20', '02-08', 'Гаєвська В.О', 'лист', 1, 4, 'кур\'єр'),
(116, '2017-02-20', '02-08', 'Фесенко З.І.', 'лист', 1, 4, 'кур\'єр'),
(117, '2017-02-20', '02-08', 'Суд', 'лист', 2, 4, 'кур\'єр'),
(118, '2017-02-21', '02-08', 'ТОВ А Сервіс', 'лист', 1, 4, 'кур\'єр'),
(119, '2017-02-21', '02-08', 'Кулик В.С.', 'лист', 1, 4, 'кур\'єр'),
(120, '2017-02-22', '03-10', 'ГУДКСУ', 'ін-ція по з/пл (зміни до кошторису)', 3, 3, 'R22b0501'),
(121, '2017-02-22', '02-08', 'Солдатова О.М.', 'лист', 1, 4, 'кур\'єр'),
(122, '2017-02-23', '02-08', 'Дерефінка С.І', 'лист', 1, 4, 'кур\'єр'),
(123, '2017-02-23', '02-08', 'Суд', 'лист', 2, 4, 'кур\'єр'),
(124, '2017-02-23', '03-10', 'ГУДКСУ', 'ін-ція про зміни до плану асигнувань', 2, 3, 'R23b0501'),
(125, '2017-02-23', '03-10', 'ГУДКСУ', 'Лист', 1, 7, 'кур\'єр'),
(126, '2017-02-23', '02-08', 'ТОВ Полісся-інвест', 'Лист', 1, 5, 'кур\'єр'),
(127, '2017-02-23', '03-10', 'ГУДКСУ', 'ін-ція про поперед.про декл. Дох. Звіл.', 1, 3, 'C24b0501'),
(128, '2017-02-23', '03-10', 'Антимонюк С.А.', 'про подання декларації', 1, 3, 'кур\'єр'),
(129, '2017-02-24', '02-10', 'ГУДКСУ', 'лист', 1, 4, 'G24B0501'),
(130, '2017-02-24', '03-10', 'Розпорядникам', 'Лист', 1, 7, 'кур\'єр'),
(131, '2017-02-24', '03-10', 'ГУДКСУ', 'про подання анекти голбух', 1, 3, 'кур\'єр'),
(132, '2017-02-27', '03-24', 'ГУДКСУ', 'інформація', 1, 7, 'C27B0501'),
(133, '2017-02-27', '03-10', 'ГУДКСУ', 'ін-ція про потребу в асигнув. На берез', 2, 3, 'R27b0501'),
(134, '2017-02-27', '03-10', 'Податкова', 'Повідомлення', 3, 7, 'кур\'єр'),
(135, '2017-02-27', '03.10', 'Податкова', 'Повідомлення', 3, 7, 'кур\'єр'),
(136, '2017-02-27', '03.10', 'Податкова', 'Повідомлення', 3, 7, 'кур\'єр'),
(137, '2017-02-27', '03.10', 'Податкова', 'Повідомлення', 3, 7, 'кур\'єр'),
(138, '2017-02-27', '03.10', 'Податкова', 'Повідомлення', 3, 7, 'кур\'єр'),
(139, '2017-02-27', '03.10', 'Податкова', 'Повідомлення', 3, 7, 'кур\'єр'),
(140, '2017-02-28', '02-08', 'ДСНС', 'лист', 1, 4, 'курєр'),
(141, '2017-02-28', '03-10', 'ГУДКСУ', 'інформація', 1, 7, 'C28B0501'),
(142, '2017-02-28', '03-10', 'Податкова', 'Повідомлення', 3, 7, 'кур\'єр'),
(143, '2017-02-28', '03-10', '28.02.2017', 'Лист', 1, 3, 'кур\'р'),
(144, '2017-02-28', '03-10', '28.02.2017', 'Повідомлення', 3, 7, 'кур\'єр'),
(145, '2017-02-28', '03-10', 'Податкова', 'Повідомлення', 3, 7, 'кур\'єр'),
(146, '2017-02-28', '03-10', 'ГУДКСУ', 'Інформація', 2, 7, 'C28B0502'),
(147, '2017-03-01', '02-08', 'ОДПІ', 'Акти звірки', 2, 4, 'кур\'єр'),
(148, '2017-03-01', '02-08', 'ОДПІ', 'Акти звірки', 2, 4, 'кур\'єр'),
(149, '2017-03-01', '02-08', 'ОДПІ', 'Акти звірки', 2, 4, 'кур\'єр'),
(150, '2017-03-01', '02-08', 'ОДПІ', 'Акти звірки', 2, 4, 'кур\'єр'),
(151, '2017-03-01', '02-08', 'ОДПІ', 'Акти звірки', 2, 4, 'кур\'єр'),
(152, '2017-03-01', '02-08', 'ВДВС', 'лист', 1, 4, 'кур\'єр'),
(153, '2017-03-01', '03-10', 'ГУДКСУ', 'Ін-ція по захищеним видаткам', 2, 3, 'R01c0501'),
(154, '2017-03-01', '02-10', 'ГУДКСУ', 'Ін-я по депозитах', 1, 10, 'V05VNZ'),
(155, '2017-03-01', '02-08', 'УПСЗН', 'ЛИСТ', 1, 10, 'кур\'єр'),
(156, '2017-03-01', '03-10', 'ГУДКСУ', 'Ін-ція про конр.повноваж. ', 2, 3, 'OKontr05 '),
(157, '2017-03-02', '03-10', 'ГУДКСУ', 'Супровід.до міс.звіту по ДБ.02', 7, 7, '1'),
(158, '2017-03-02', '03-10', 'ГУДКСУ', 'Супровід.до міс.звіту по ДБ.ф.7', 2, 7, '1'),
(159, '2017-03-02', '03-10', 'ГУДКСУ', 'Про подання звітності', 1, 3, 'N02C0501'),
(160, '2017-03-03', '03-10', 'ГУДКСУ', 'Супровідний лист  по МБ ф.7 02м', 10, 7, 'N03C0501'),
(161, '2017-03-03', '03-10', 'ГУДКСУ', 'Про надання місячної звітності по МБ', 1, 3, 'N03C0501'),
(162, '2017-03-06', '03-10', 'ГУДКСУ', 'інформація про кред.дебіт. заборгованість по МБ', 2, 7, 'N06C0501'),
(163, '2017-03-06', '03-10', 'ГУДКСУ', 'інформація про кред.дебіт. заборгованість по ДБ', 2, 7, 'M06C0502'),
(164, '2017-03-06', '03-24', 'ГУДКСУ', 'Лист лікарняні', 1, 7, 'C06C0501'),
(165, '2017-03-06', '02-08', 'Держгеокадастр', 'лист', 1, 4, 'курєр'),
(166, '2017-03-06', '03-10', 'Хорошівська районна рада', 'про надання реквізитів', 1, 7, 'кур\'єр'),
(167, '2017-03-07', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'Запит "Про очищення влади"', 1, 7, 'Кур\'єр'),
(168, '2017-03-07', '04-10', 'ГУДКСУ', 'Про надання інофрмації', 1, 1, 'P07C0501'),
(169, '2017-03-10', '03-10', 'ГУДКСУ', 'Про надання інформації - розрахунок по з\\платі на 2017', 2, 3, 'R10c0501'),
(170, '2017-03-10', '03-24', 'ГУДКСУ', 'Ін-ція щодо потреби в коштах на електроенергію', 1, 3, 'R10c0502'),
(171, '2017-03-10', '03-10', 'Головне територіальне управління юстиції у Житомирській області', 'Повідомлення "Про очищення влади"', 1, 7, 'кур\'єр'),
(172, '2017-03-13', '03-10', 'ГУДКСУ', 'Інформація', 2, 7, 'C13C0501'),
(173, '2017-03-13', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'Повідомлення', 3, 7, 'кур\'єр'),
(174, '2017-03-13', '02-08', 'Хорошівська РДА', 'Про відшкодування коштів', 1, 5, 'кур"єр'),
(175, '2017-03-13', '03-10', 'Фонд соціального страхівання', 'Про перерахування коштів', 1, 7, 'кур\'єр'),
(176, '2017-03-13', '03-10', 'ГУДКСУ', 'Про погодження премії', 1, 3, 'R13C0502'),
(177, '2017-03-13', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'T13C0501'),
(178, '2017-03-13', '03-10', 'ГУДКСУ', 'Про подання місячного звіту  ( 12 000 )', 1, 3, 'N13C0501'),
(179, '2017-03-14', '02-08', 'отг Новоборова', 'лист', 1, 4, 'курєр'),
(180, '2017-03-14', '02-08/', 'отг Іршанськ', 'лист', 1, 4, 'курєр'),
(181, '2017-03-14', '02-08', 'отг Хорошів', 'лист', 1, 4, 'курєр'),
(182, '2017-03-14', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 1, 1, 'P16C0501'),
(183, '2017-03-14', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 1, 1, 'P16C0502'),
(184, '2017-03-16', '04-10', 'ГУДКСУ', 'Про надання копій документів', 2, 1, 'P16C0503'),
(185, '2017-03-17', '02-08', 'ВлаБоДе', 'лист', 1, 4, 'курєр'),
(186, '2017-03-17', '03-10', 'ГУДКСУ', 'Про надання інформації - щодо обсягів видатків ДБ на 2017', 2, 3, 'R17c0501'),
(187, '2017-03-20', '03-10', 'ГУДКСУ', 'Інформація (лікарняні)', 1, 7, 'C20C0501'),
(188, '2017-03-20', '04-10', 'ГУДКСУ', 'Заявка про надання доступу', 1, 8, 'електронна пошта'),
(189, '2017-03-20', '03-10', 'ГУДКСУ', 'Інформація про декларування', 1, 7, 'C20C0502'),
(190, '2017-03-21', '0310', 'ГУДКСУ', 'Інформація щодо подання декларацій (уточнена)', 1, 7, 'C21C0501'),
(191, '2017-03-21', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 1, 8, 'кур\'єр'),
(192, '2017-03-22', '02-08/', 'Резнік В.В', 'лист', 1, 4, 'курєр'),
(193, '2017-03-23', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'Повідомлення про відкриття', 2, 7, 'кур"єр'),
(194, '2017-03-23', '02-08/', 'Кулик', 'лист', 1, 4, 'курєр'),
(195, '2017-03-23', '02-08', 'Сморщок', 'лист', 1, 4, 'курєр'),
(196, '2017-03-23', '02-08', 'суд', 'лист', 1, 4, 'курєр'),
(197, '2017-03-23', '03-10', 'ГУДКСУ', 'Інформація про декларації', 1, 7, 'C23C0501'),
(198, '2017-03-24', '03-10', 'ГУДКСУ', 'Інформація на конкурс держслужбовців', 1, 7, 'C24C0501'),
(199, '2017-03-27', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 1, 7, 'C27C0501'),
(200, '2017-03-27', '02-08', 'ДСНС', 'лист', 1, 4, 'курєр'),
(201, '2017-03-28', '03-10', 'ГУДКСУ', 'Кандидат на нагородження', 1, 7, 'C28C0501'),
(202, '2017-03-29', '03-10', 'ГУДКСУ', 'Інформація по деклараціях', 1, 7, 'електронна пошта'),
(203, '2017-03-30', '03-10', 'ГУДКСУ', 'Фнформація щодо заповнення декларацій', 1, 7, 'електронна пошта'),
(204, '2017-03-30', '04-10', 'ГУДКСУ', 'Заявка про надання доступу', 1, 1, 'Електронна пошта'),
(205, '2017-03-30', '03-10', 'ГУДКСУ', 'Інформація про потребу в асигнуваннях', 2, 3, 'R30c0501'),
(206, '2017-03-30', '03-10', 'ГУДКСУ', 'Інформація про використання адмінбудівель', 4, 3, 'R30c0502'),
(207, '2017-03-30', '02-08', 'Турчин', 'лист', 1, 4, 'курєр'),
(208, '2017-03-30', '02-08', 'суд', 'лист', 1, 4, 'курєр'),
(209, '2017-03-30', '02-10', 'ГУДКСУ', 'Інформація', 3, 5, 'T30C0501'),
(210, '2017-03-31', '03-10', 'ГУДКСУ', 'Кадрове забезпечення', 1, 7, 'електронна пошта'),
(211, '2017-03-31', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'D05VNZ'),
(212, '2017-03-31', '03-10', 'ГУДКСУ', 'Інформація про реєстр змн до кошторису по СФ', 1, 3, 'R31c0501'),
(213, '2017-03-31', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'T31C0501'),
(214, '2017-03-31', '02-08', 'ОДПІ', 'Відкриття рахунків', 1, 5, 'кур"єр'),
(215, '2017-04-03', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 1, 7, 'електронна пошта'),
(216, '2017-04-03', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 1, 1, '0605_04-10_216'),
(217, '2017-04-03', '02-08/', 'ДВС', 'лист', 1, 4, 'курєр'),
(218, '2017-04-03', '03-10', 'ГУДКСУ', 'Про надання звіту по державним закупівлям', 4, 3, 'R03d0501'),
(219, '2017-04-03', '02-08/', 'ОДПІ', 'акт звірки', 2, 4, 'курєр'),
(220, '2017-04-03', '02-08/', 'ОДПІ', 'акт звірки', 2, 4, 'курєр'),
(221, '2017-04-03', '02-08/', 'ОДПІ', 'акт звірки', 2, 4, 'курєр'),
(222, '2017-04-03', '02-08/', 'ОДПІ', 'акт звірки', 2, 4, 'курєр'),
(223, '2017-04-03', '02-08/', 'ОДПІ', 'акт звірки', 2, 4, 'курєр'),
(224, '2017-04-03', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 2, 1, '0605_04-10_224'),
(225, '2017-04-03', '03-10', 'ГУДКСУ', 'Інформація щодо декларацій', 2, 7, 'електронна пошта'),
(226, '2017-04-03', '03-10', 'ГУДКСУ', 'Про виконання контрольних повноважень', 2, 3, 'OKontrol'),
(227, '2017-04-03', '03-10', 'ГУДКСУ', 'Про надання інформації до місячного звіту по ОБ', 1, 3, 'M03d0501'),
(228, '2017-04-04', '03-10', 'ГУДКСУ', 'Супровідний лист  по ДБ місячні звіти', 7, 7, 'm04d0501'),
(229, '2017-04-04', '03-10', 'ГУДКСУ', 'Про виділення додаткових коштів', 1, 3, 'R04d0501'),
(230, '2017-04-04', '04-10', 'ГУДКСУ', 'Про надання копій документів', 17, 1, '0605_04-10_230'),
(231, '2017-04-05', '03-10', 'ГУДКСУ', 'Про надання фінансової та бюджетної звітності за І кв 2017', 6, 3, 'R05d0501'),
(232, '2017-04-05', '03-10', 'ГУДКСУ', 'про надання місячної звітності про виконання МБ', 1, 3, 'N05d0501'),
(233, '2017-04-07', '03-10', 'ГУДКСУ', 'про підготовку до Великодніх свят', 1, 7, 'електронна пошта'),
(234, '2017-04-07', '03-10', 'ГУДКСУ', 'Про надання інформації', 2, 7, 'електронна пошта'),
(235, '2017-04-07', '03-10', 'ГУДКСУ', 'про додатеову потребу в коштах на оплату електроенергії', 2, 3, 'R07d0501'),
(236, '2017-04-07', '03-10', 'ГУДКСУ', 'Про надання інформації', 13, 7, '0605_03-10_236'),
(237, '2017-04-10', '03-10', 'ГУДКСУ', 'Про надання документів Шевчук Л.А. на конкурс', 1, 12, 'кур\'єр'),
(238, '2017-04-10', '03-24', 'ГУДКСУ', 'Лікарняні', 1, 12, 'електронна пошта'),
(239, '2017-04-11', '02-08', 'Омельчук М. С.', 'Лист', 1, 4, 'Кур\'єр'),
(240, '2017-04-11', '03-10', 'ГУДКСУ', 'Про надання місячного звіту (12 тис)', 1, 3, 'N11d0501'),
(241, '2017-04-11', '03-10', 'ГУДКСУ', 'Супровідний лист  по ДБ квартальні звіти', 13, 7, '11d0501'),
(242, '2017-04-12', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 2, 1, '0605_03-10_242'),
(243, '2017-04-12', '04-10', 'ГУДКСУ', 'Заявки на Інтернет', 7, 1, '0605_03-10_243'),
(244, '2017-04-12', '03-10', 'ГУДКСУ', 'Супровідний лист  про заборгованнісь по МБ', 1, 7, 'n05d01'),
(245, '2017-04-12', '03-10', 'ГУДКСУ', 'Супровідний лист  про заборгованнісь по ДБ', 1, 7, 'm05d01'),
(246, '2017-04-12', '03-10', 'ГУДКСУ', 'про надання погодження на премію', 1, 3, 'R13D0501'),
(247, '2017-04-12', '02-08', 'Суд', 'Лист', 1, 4, 'Кур\'єр'),
(248, '2017-04-13', '02-08', 'Приватбанк', 'Лист', 1, 4, 'Кур\'єр'),
(249, '2017-04-14', '03-08', 'Войналович Н. П.', 'Довідка про доходи', 1, 3, 'кур\'єр'),
(250, '2017-04-14', '03-10', 'ГУДКСУ', 'про надання квартальної звітності МБ', 1, 3, 'N14D0501'),
(251, '2017-04-18', '03-10', 'ГУДКСУ', 'Лист про лікарняні', 1, 12, '0605_03-10_251'),
(252, '2017-04-18', '02-08', 'ЦРЛ', 'Лист', 1, 5, 'кур"єр'),
(253, '2017-04-18', '02-08', 'ЦПМСД', 'Лист', 1, 5, 'кур"єр'),
(254, '2017-04-18', '03-10', 'ГУДКСУ', 'Залишки та потреба ТМЦ', 2, 3, 'електронна пошта'),
(255, '2017-04-18', '02-08', 'КЗ "Центр ПМСД"', 'Лист', 1, 5, 'кур"єр'),
(256, '2017-04-18', '02-08', 'КЗОЗ "Іршанський ЦПМСД"', 'Лист', 1, 5, 'кур"єр'),
(257, '2017-04-19', '04-10', 'ГУДКСУ', 'Заявка про надання доступу', 1, 1, 'P19D0501'),
(258, '2017-04-19', '03-10', 'ГУДКСУ', 'Службова для виправних', 1, 7, '05d1901'),
(259, '2017-04-19', '02-08', 'УФ', 'Лист', 3, 5, 'кур"єр'),
(260, '2017-04-20', '03-10', 'ГУДКСУ', 'Про надання пояснення до квартального звіту', 1, 3, 'N20d0501'),
(261, '2017-04-20', '04-10', 'ГУДКСУ', 'Про надання копій документів', 13, 1, '0605_04-10_261'),
(262, '2017-04-21', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'T21d0501'),
(263, '2017-04-21', '03-10', 'ГУДКСУ', 'Відповіді на конкурс', 20, 12, 'Відділ персоналу'),
(264, '2017-04-24', '03-10', 'ГУДКСУ', 'Інформація про лікарняні', 1, 12, 'C24D0501'),
(265, '2017-04-24', '02-08', 'УФ Хорошівська РДА', 'Лист', 3, 5, 'кур"єр'),
(266, '2017-04-24', '04-10', 'ГУДКСУ', 'Про надання інофрмації', 1, 1, 'Відділ діловодства'),
(267, '2017-04-24', '02-10', 'ГУДКСУ', 'лист', 2, 4, 'F25D0501'),
(268, '2017-04-24', '02-08', 'ВОМС РДА', 'Про безспірне списання коштів', 1, 5, 'кур\'єр'),
(269, '2017-04-24', '03-10', 'ГУДКСУ', 'оригінали документів на конкурс (Шевчук)', 1, 12, 'кур\'єр'),
(270, '2017-04-26', '02-08', 'ФОП Дударенко Д. В.', 'лист', 1, 4, 'курєр'),
(271, '2017-04-26', '03-10', 'ГУДКСУ', 'Про потребу в асигнуваннях на травень 2017', 1, 3, 'R26d0501'),
(272, '2017-04-27', '03-10', 'ГУДКСУ', 'Висадження калини', 1, 12, 'C27D0501'),
(273, '2017-04-27', '02-08', 'УПСЗН Хорошівської РДА', 'Інформація', 3, 5, 'кур"єр'),
(274, '2017-04-27', '02-08', 'ПП "Охоронне під-во Шериф"', 'Лист', 1, 5, 'кур"єр'),
(275, '2017-04-28', '04-10', 'ГУДКСУ', 'Заявка на розблокування доступу', 1, 1, 'Відділ ППЗ та ПТК'),
(276, '2017-04-28', '02-10', 'ГУДКСУ', 'Інформація', 1, 10, 'Dep_05'),
(277, '2017-04-28', '02-08', 'Прокуратура Житомир. обл.', 'Про викон. рішення', 2, 5, 'кур"єр'),
(278, '2017-04-28', '03-10', 'ГУДКСУ', 'Щодо підготовки бюджетного запиту проекту державного бюджету на 2018 рік', 13, 3, 'R28d0501'),
(279, '2017-04-28', '03-10', 'ГУДКСУ', 'реальна потреба у оголошенні конкурсу', 1, 12, 'C28D0501'),
(280, '2017-04-28', '04-10', 'ГУДКСУ', 'Про надання інофрмації', 5, 1, 'Відділ КТКТ та ЗІ'),
(281, '2017-05-03', '03-24', 'ГУДКСУ', 'Про лікарняні', 1, 12, 'C03E0501'),
(282, '2017-05-03', '03-10', 'ГУДКСУ', 'Кадрове забезпечення', 1, 12, 'C03E0502'),
(283, '2017-05-03', '03-10', 'ГУДКСУ', 'Про надання місячного звіту по УДКСУ', 1, 3, 'R03e0501'),
(284, '2017-05-03', '03-10', 'ГУДКСУ', 'про зміни до кошторису по СФ', 1, 3, 'R03e0502'),
(285, '2017-05-03', '03-10', 'ГУДКСУ', 'про стан фінансування соціальних виплат за захищеними статтями видатків', 1, 3, 'R03e0503'),
(286, '2017-05-03', '03-10', 'ГУДКСУ', 'Про виконання контрольгих повноважень', 1, 3, 'OKontrol'),
(287, '2017-05-03', '03-10', 'ГУДКСУ', 'Про надання інформації до місячного звіту по ОБ', 13, 3, 'N05e0501'),
(288, '2017-05-03', '03-10', 'ГУДКСУ', 'Супровідний лист  по ДБ місячні звіти', 9, 7, 'n04m0501'),
(289, '2017-05-03', '02-08', 'ОДПІ', 'акт звірки', 2, 4, 'курєр'),
(290, '2017-05-03', '02-08', 'ОДПІ', 'акт звірки', 2, 4, 'КУРЄР'),
(291, '2017-05-03', '02-08', 'ОДПІ', 'акт звірки', 3, 4, 'КУРЄР'),
(292, '2017-05-03', '02-08', 'ОДПІ', 'акт звірки', 2, 4, 'КУРЄР'),
(293, '2017-05-03', '02-08', 'ОДПІ', 'акт звірки', 2, 4, 'КУРЄР'),
(294, '2017-05-03', '02-08', 'ВДВС', 'ЛИСТ', 1, 4, 'курєр'),
(295, '2017-05-03', '02-10', 'ГУДКСУ', 'ІНФ-ЦІЯ', 3, 4, 'F03E0501'),
(296, '2017-05-04', '03-10', 'ГУДКСУ', 'про надання інформації', 1, 12, 'C04E0501'),
(297, '2017-05-04', '04-10', 'ГУДКСУ', 'Інформація про інвентаризацію', 4, 1, 'Відділ КТКТ та ЗІ'),
(298, '2017-05-04', '03-10', 'ГУДКСУ', 'Про надання місячної звітності по МБ', 1, 3, 'N04e0501'),
(299, '2017-05-05', '04-10', 'ГУДКСУ', 'Про надання копій документів', 13, 1, 'Відділ ППЗ та ПТК'),
(300, '2017-05-05', '03-10', 'ГУДКСУ', 'Про надання інформації', 2, 3, 'R05e0501'),
(301, '2017-05-05', '03-10', 'ГУДКСУ', 'про використання енергоносіїв', 2, 3, 'на аудит'),
(302, '2017-05-10', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 2, 1, 'Відділ ППЗ та ПТК'),
(303, '2017-05-10', '03-10', 'ГУДКСУ', 'Супровідний лист  по МБ ф.7 04м', 11, 7, 'n11e0501'),
(304, '2017-05-10', '03-10', 'ГУДКСУ', 'Супровідний лист  про просроч. дебіт.кредит. заборгованість', 10, 7, '11n0502'),
(305, '2017-05-10', '03-10', 'ГУДКСУ', 'Супровідний лист  по ДБ кредит.дебіт. заборгованість', 13, 7, '11e0503'),
(306, '2017-05-10', '03-10', 'ГУДКСУ', 'Про надання місячного звіту (12 тис)', 13, 3, 'N10e0501'),
(307, '2017-05-11', '02-08', 'Ткач Я.А.', 'лист', 1, 4, 'курєр'),
(308, '2017-05-11', '02-08', 'Кириченко С.А', 'лист', 1, 4, 'курєр'),
(309, '2017-05-12', '04-10', 'ГУДКСУ', 'Про надання копій документів', 19, 1, 'Відділ ППЗ та ПТК'),
(310, '2017-05-12', '03-10', 'ГУДКСУ', 'Про надання погодження на премію', 1, 3, 'R12e0501'),
(311, '2017-05-13', '03-10', 'ГУДКСУ', 'Про надання інформації до місячного звіту по ОБ', 1, 3, 'про присутність на колегії'),
(312, '2017-05-15', '03-24', 'ГУДКСУ', 'інформація про лікарняні', 1, 12, 'C15E0501'),
(313, '2017-05-15', '04-10', 'ГУДКСУ', 'Про блокування доступу', 2, 1, 'Відділ ППЗ та ПТК'),
(314, '2017-05-15', '03-10', 'ГУДКСУ', 'про відрядження', 1, 12, 'C15E0502'),
(315, '2017-05-15', '03-10', 'ГУДКСУ', 'Про надання довідки про зміни до кошторису', 2, 3, 'R15e0501'),
(316, '2017-05-15', '03-10', 'ГУДКСУ', 'Про надання інформації щодо середньої зарплати', 2, 3, 'R03e0502'),
(317, '2017-05-17', '04-10', 'ГУДКСУ', 'Заявка про зміну статусу', 1, 1, 'Відділ КТКТ та ЗІ'),
(318, '2017-05-19', '03-10', 'ГУДКСУ', 'Про надання інформації щодо оцінки бухгалтерів', 4, 3, 'm_dod 05'),
(319, '2017-05-19', '03-10', 'Хорошівський районний військовий комісаріат', 'Про усунення недоліків', 1, 12, 'кур\'єр'),
(320, '2017-05-19', '03-10', 'ГУДКСУ', 'Про надання довідки про зміни до кошторису', 2, 3, 'R19e0501'),
(321, '2017-05-22', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 1, 12, 'C22E0501'),
(322, '2017-05-22', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'IK_05'),
(323, '2017-05-22', '03-10', 'ГУДКСУ', 'про передплату журналу "Казеа Україна" ІІ півр.', 2, 12, 'U22E0501'),
(324, '2017-05-22', '02-08', 'держгеокадастр', 'інформація', 1, 4, 'курєр'),
(325, '2017-05-22', '03-10', 'Державна казначейська служба України', 'Про направлення повідомлення ДФС', 2, 3, 'Про направлення повідомлення ДФС'),
(326, '2017-05-22', '03-10', 'ГУДКСУ', 'Про надання інформації щодо адмінприміщень', 5, 3, 'R22e0501'),
(327, '2017-05-23', '03-10', 'ГУДКСУ', 'Про надання інформації щодо нарах зарплати за 4міс 2017', 2, 3, 'ПФВ'),
(328, '2017-05-25', '04-10', 'ГУДКСУ', 'Заявка про надання доступу', 1, 1, 'Відділ ППЗ та ПТК'),
(329, '2017-05-25', '03-10', 'Повідомлення в податкову', 'відкриття рахунків', 2, 12, 'кур\'єр'),
(330, '2017-05-25', '04-08', 'Новоборівське ДЖКП', 'Про порушення правил перевірки ЗНІ', 1, 1, 'Кур\'єр'),
(331, '2017-05-25', '03-24', 'ГУДКСУ', 'Про надання інформації щодо видатків по зарплаті', 2, 3, 'Плановофінансовий'),
(332, '2017-05-25', '02-10', 'ГУДКСУ', 'Лист', 1, 4, 'Відділ фінансових ресурсів'),
(333, '2017-05-26', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'Юридичний відділ'),
(334, '2017-05-26', '02-08', 'приватбанк', 'лист', 1, 4, 'курєр'),
(335, '2017-05-29', '03-24', 'ГУДКСУ', 'Лист про лікарняні', 2, 12, 'Сектор персоналу'),
(336, '2017-05-29', '03-10', 'ГУДКСУ', 'План презентація карти "Вишивана моя Україна"', 2, 12, 'Сектор персоналу'),
(337, '2017-05-30', '02-08', 'дснс', 'лист', 1, 4, 'курєр'),
(338, '2017-05-30', '03-10', 'ГУДКСУ', 'Про потребу в асигнуваннях на червень 2017', 2, 3, 'Плановофінансовий'),
(339, '2017-05-30', '03-10', 'ГУДКСУ', 'Інформаці про кадрове забезпечення', 2, 12, 'Сектор персоналу'),
(340, '2017-05-30', '03-10', 'ГУДКСУ', 'Передплата журналу "Казна України" станом  на 30.05.2017', 2, 12, 'Відділ Діловодства'),
(341, '2017-05-30', '02-08', 'Житомирський апеляційний суд', 'Заперечення', 3, 2, 'Кур\'єр'),
(342, '2017-05-30', '04-10', 'ГУДКСУ', 'Заявка про зміну статусу', 1, 1, 'Відділ КТКТ та ЗІ'),
(343, '2017-05-31', '03-10', 'ГУДКСУ', 'графік руху транспорту', 3, 12, 'Сектор персоналу'),
(344, '2017-06-01', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'Idep_05'),
(345, '2017-06-01', '03-10', 'ГУДКСУ', 'Про виконання контрольгих повноважень', 2, 3, 'Управління бухобліку'),
(346, '2017-06-01', '02-08', 'одпі', 'акти звірки', 2, 4, 'курєр'),
(347, '2017-06-01', '02-08', 'одпі', 'акт звірки', 3, 4, 'курєр'),
(348, '2017-06-01', '02-08', 'одпі', 'акт звірки', 3, 4, 'курєр'),
(349, '2017-06-01', '02-08', 'одпі', 'акт звірки', 3, 4, 'курєр'),
(350, '2017-06-01', '02-08', 'одпі', 'акт звірки', 3, 4, 'курєр'),
(351, '2017-06-01', '02-08', 'вдвс', 'лист', 1, 4, 'курєр'),
(352, '2017-06-01', '03-10', 'ГУДКСУ', 'Про зміни до кошторису по СФ', 1, 3, 'Плановофінансовий'),
(353, '2017-06-01', '03-10', 'ГУДКСУ', 'про стан фінансування соціальних виплат за захищеними статтями видатків', 2, 3, 'Плановофінансовий'),
(354, '2017-06-01', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'Відділ видатків, мережі'),
(355, '2017-06-01', '03-10', 'ГУДКСУ', 'Про надання місячного звіту по УДКСУ', 2, 3, 'Плановофінансовий'),
(356, '2017-06-01', '02-08', 'УПФ', 'лист', 1, 4, 'курєр'),
(357, '2017-06-02', '02-08', 'Данюк', 'лист', 1, 4, 'курєр'),
(358, '2017-06-02', '03-10', 'ГУДКСУ', 'Про надання інформації до місячного звіту по ОБ', 1, 3, 'Відділ звітності МБ'),
(359, '2017-06-02', '03-10', 'ГУДКСУ', 'Про надання звітності', 1, 12, 'Відділ звітності ДБ'),
(360, '2017-06-06', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 2, 1, 'Відділ ППЗ та ПТК'),
(361, '2017-06-06', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 1, 12, 'Сектор персоналу'),
(362, '2017-06-06', '04-10', 'ГУДКСУ', 'Заявка про зміну статусу', 2, 1, 'Відділ КТКТ та ЗІ'),
(363, '2017-06-06', '03-10', 'ГУДКСУ', 'Про надання місячного звіту МБ', 1, 3, 'Відділ звітності МБ'),
(364, '2017-06-06', '03-10', 'ГУДКСУ', 'Передплата "Житомирщина"', 5, 12, 'Відділ Діловодства'),
(365, '2017-06-06', '04-10', 'ГУДКСУ', 'Заявка про зміну статусу', 2, 1, 'Відділ КТКТ та ЗІ'),
(366, '2017-06-06', '03-10', 'ГУДКСУ', 'про надання місячного звіту', 1, 12, 'Відділ звітності МБ'),
(367, '2017-06-07', '03-10', 'ГУДКСУ', 'про надання інформаціїх', 1, 12, 'Відділ звітності ДБ'),
(368, '2017-06-07', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 3, 1, 'Відділ ППЗ та ПТК'),
(369, '2017-06-07', '03-10', 'ГУДКСУ', 'Про наданяя звітності', 1, 12, 'Відділ звітності МБ'),
(370, '2017-06-09', '03-10', 'ГУДКСУ', 'Про нагородження', 1, 12, 'Сектор персоналу'),
(371, '2017-06-09', '03-10', 'Хорошівський РВК', 'Про надання інформації', 1, 12, 'кур\'єр'),
(372, '2017-06-09', '03-10', 'Хорошівський районний військовий комісаріат', 'Про надання інформації', 1, 12, 'кур\'єр'),
(373, '2017-06-12', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 1, 12, 'Сектор персоналу'),
(374, '2017-06-12', '04-10', 'ГУДКСУ', 'Заявка про надання доступу', 1, 1, 'Відділ ППЗ та ПТК'),
(375, '2017-06-12', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 3, 1, 'Відділ ППЗ та ПТК'),
(376, '2017-06-12', '03-10', 'ГУДКСУ', 'Про перевірку звітності', 1, 11, 'Відділ звітності ДБ'),
(377, '2017-06-13', '02-08', 'РДА', 'Лист', 2, 4, 'Кур\'єр'),
(378, '2017-06-13', '02-08', 'Відділ фінансів Хорошівської РДА', 'Лист', 1, 5, 'кур"єр'),
(379, '2017-06-14', '03-10', 'ГУДКСУ', 'про надання погодження на премію', 2, 12, 'Плановофінансовий'),
(380, '2017-06-14', '03-10', 'ГУДКСУ', 'Про надання інформації', 1, 12, 'Плановофінансовий'),
(381, '2017-06-16', '02-08', 'деркомзем', 'лист', 1, 4, 'курєр'),
(382, '2017-06-16', '02-10', 'ГУДКСУ', 'Інформація', 2, 5, 'Сектор аудиту'),
(383, '2017-06-16', '02-10', 'Відділ фінансів', 'Лист', 1, 0, 'Кур\'єр'),
(384, '2017-06-16', '02-10', 'ГУДКСУ', 'Сидоров повернення судового збору', 1, 4, 'Юридичний відділ'),
(385, '2017-06-19', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 2, 12, 'Сектор персоналу'),
(386, '2017-06-19', '02-08', 'ВФ Хорошівська РДА', 'Лист', 1, 5, ''),
(387, '2017-06-19', '03-10', 'ГУДКСУ', 'про надання звітності', 2, 12, 'Відділ звітності ДБ'),
(388, '2017-06-20', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'Відділ фінансових ресурсів'),
(389, '2017-06-20', '02-08', 'ВФ Хорошівська РДА', 'Лист', 1, 5, 'кур"єр'),
(390, '2017-06-23', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'Юридичний відділ'),
(391, '2017-06-26', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 2, 12, 'Сектор персоналу'),
(392, '2017-06-26', '02-08', 'дснсн', 'лист', 1, 4, 'курєр'),
(393, '2017-06-27', '04-10', 'ГУДКСУ', 'Заявка на розблокування доступу', 1, 1, 'Відділ ППЗ та ПТК'),
(394, '2017-06-27', '03-10', 'ГУДКСУ', 'Про надання інформації', 1, 12, 'Сектор персоналу'),
(395, '2017-06-27', '03-10', 'ГУДКСУ', 'Про надання інформації', 2, 11, 'Плановофінансовий'),
(396, '2017-06-29', '03-10', 'ГУДКСУ', 'Про надання інформації', 1, 11, 'Плановофінансовий'),
(397, '2017-06-29', '02-08', 'москальчук Н.Й', 'лист', 1, 4, 'Кур\'єр'),
(398, '2017-06-29', '02-08', 'приватбанк', 'лист', 1, 4, 'Кур\'єр'),
(399, '2017-06-30', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'Відділ фінансових ресурсів'),
(400, '2017-06-30', '03-10', 'ГУДКСУ', 'Про надання Інформації', 1, 12, 'Відділ Діловодства'),
(401, '2017-06-30', '02-10', 'ГУДКСУ', 'Лист', 1, 10, 'Відділ видатків, мережі'),
(402, '2017-06-30', '02-08', 'Житомиробленерго', 'лист', 1, 4, 'Кур\'єр'),
(403, '2017-06-30', '02-08', 'Житомиробленерго', 'лист', 1, 4, 'Кур\'єр'),
(404, '2017-07-03', '03-24', 'ГУДКСУ', 'інформація про лікарняні', 2, 12, 'Сектор персоналу'),
(405, '2017-07-03', '02-08', 'ВДВС', 'лист', 1, 4, 'Кур\'єр'),
(406, '2017-07-03', '02-08', 'ОДПІ', 'акт звірки', 3, 4, 'Кур\'єр'),
(407, '2017-07-03', '02-08', 'ОДПІ', 'акт звірки', 3, 4, 'Кур\'єр'),
(408, '2017-07-03', '02-08', 'ОДПІ', 'акт звірки', 3, 4, 'Кур\'єр'),
(409, '2017-07-03', '02-08', 'одпі', 'акт звірки', 3, 4, 'Кур\'єр'),
(410, '2017-07-03', '02-08', 'ОДПІ', 'акт звірки', 3, 4, 'Кур\'єр'),
(411, '2017-07-03', '03-10', 'ГУДКСУ', 'Кадрове забезпечення', 2, 12, 'Сектор персоналу'),
(412, '2017-07-03', '03-10', 'ГУДКСУ', 'про надання звітності', 4, 11, 'Плановофінансовий'),
(413, '2017-07-03', '02-08', 'Мазяр', 'лист', 1, 4, 'Кур\'єр'),
(414, '2017-07-03', '03-10', 'ГУДКСУ', 'про надання місячного звіта', 4, 11, 'Плановофінансовий'),
(415, '2017-07-03', '03-10', 'ГУДКСУ', 'Про надання інформації', 4, 11, 'Плановофінансовий'),
(416, '2017-07-03', '03-10', 'ГУДКСУ', 'Про надання Інформації', 1, 12, 'Плановофінансовий'),
(417, '2017-07-03', '04-10', 'ГУДКСУ', 'Про уточнення облікових даних захисних споруд  цивільного захисту', 1, 1, 'Управління ІТ'),
(418, '2017-07-03', '04-10', 'ДКСУ', 'Про уточнення облікових даних захисних споруд  цивільного захисту', 1, 1, 'ДКСУ'),
(419, '2017-07-03', '03-10', 'ГУДКСУ', 'Про надання Інформації', 1, 12, 'Відділ звітності МБ'),
(420, '2017-07-03', '03-10', 'ГУДКСУ', 'Про надання Інформації', 1, 12, 'Управління бухобліку'),
(421, '2017-07-04', '03-10', 'Хорошівський військовий комісаріат', 'Про надання інформації', 1, 12, 'кур\'єр'),
(422, '2017-07-04', '04-10', 'ГУДКСУ', 'Про надання інформації', 1, 1, 'Управління обслуговування РК'),
(423, '2017-07-04', '03-10', 'ГУДКСУ', 'Про виділення додаткових коштів', 1, 12, 'Плановофінансовий'),
(424, '2017-07-04', '03-10', 'ГУДКСУ', 'про надання місячного звіту', 10, 11, 'Відділ звітності ДБ'),
(425, '2017-07-04', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'Закриття/відкриття рахунків', 3, 12, 'Кур\'єр'),
(426, '2017-07-05', '03-10', 'ГУДКСУ', 'Про надання Інформації', 2, 12, 'Відділ Діловодства'),
(427, '2017-07-05', '02-08', 'Голяченко О.В', 'лист', 1, 4, 'Кур\'єр'),
(428, '2017-07-05', '03-10', 'ГУДКСУ', 'Про надання інформації', 9, 11, 'Плановофінансовий'),
(429, '2017-07-06', '03-10', 'ГУДКСУ', 'Про надання звітності', 1, 12, 'Відділ звітності МБ'),
(430, '2017-07-06', '03-10', 'ГУДКСУ', 'про надання місячного звіту', 1, 11, 'Відділ звітності МБ'),
(431, '2017-07-06', '03-10', 'ГУДКСУ', 'Про надання квартального звіту', 1, 11, 'Плановофінансовий'),
(432, '2017-07-10', '03-24', 'ГУДКСУ', 'інформація про лікарняні', 2, 12, 'Сектор персоналу'),
(433, '2017-07-10', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 3, 1, 'Відділ ППЗ та ПТК'),
(434, '2017-07-10', '03-10', 'ГУДКСУ', 'Про надання Інформації', 1, 12, 'Сектор персоналу'),
(435, '2017-07-10', '03-10', 'ГУДКСУ', 'Про надання інформації', 2, 11, 'Відділ звітності ДБ'),
(436, '2017-07-10', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'Про відкриття рахунків', 3, 12, 'Кур\'єр'),
(437, '2017-07-11', '03-10', 'ГУДКСУ', 'Про надання інофрмації', 2, 12, 'Плановофінансовий'),
(438, '2017-07-11', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 3, 1, 'Відділ ППЗ та ПТК'),
(439, '2017-07-11', '03-10', 'ГУДКСУ', 'Про надання місячного звіту', 1, 11, 'Відділ звітності МБ'),
(440, '2017-07-11', '03-10', 'ГУДКСУ', 'Про надання погодження на преміювання', 1, 11, 'Плановофінансовий'),
(441, '2017-07-12', '02-10', 'ГУДКСУ', 'Лист', 1, 10, 'Управління МВ та МВ МБ'),
(442, '2017-07-12', '03-10', 'ГУДКСУ', 'про надання місячного звіту', 1, 11, 'Відділ звітності МБ'),
(443, '2017-07-12', '03-10', 'ГУДКСУ', 'Про надання квартального звіту', 1, 11, 'Відділ звітності ДБ'),
(444, '2017-07-12', '03-10', 'ГУДКСУ', 'Про надання інформації', 3, 11, 'Плановофінансовий'),
(445, '2017-07-14', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'повідомлення про відкриття рахунків', 5, 12, 'Кур\'єр'),
(446, '2017-07-14', '04-10', 'ГУДКСУ', 'Про надання інофрмації', 1, 1, 'Юридичний відділ'),
(447, '2017-07-17', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 2, 12, 'Сектор персоналу'),
(448, '2017-07-17', '03-10', 'ГУДКСУ', 'Про надання квартального звіту', 2, 11, 'Відділ звітності МБ'),
(449, '2017-07-17', '04-10', 'ГУДКСУ', 'Про надання інофрмації', 1, 1, 'Відділ КТКТ та ЗІ'),
(450, '2017-07-18', '02-10', 'гудксу', 'поденний кас.план', 1, 4, 'управління міжбюдж.'),
(451, '2017-07-18', '02-10', 'гудксу', 'інформація', 4, 4, 'відділ фін.ресурсів'),
(452, '2017-07-19', '02-08', 'Відділ фінансів', 'Лист', 1, 10, 'Кур\'єр'),
(453, '2017-07-19', '04-10', 'ГУДКСУ', 'Заявка про зміну статусу', 2, 1, 'Відділ КТКТ та ЗІ'),
(454, '2017-07-19', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'повідомлення про відкриття рахунків', 6, 12, 'Кур\'єр'),
(455, '2017-07-20', '03-10', 'ГУДКСУ', 'Про перерозподіл бюджетних асигнувань', 1, 11, 'Плановофінансовий'),
(456, '2017-07-20', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'Повідомлення про відкриття рахунків', 7, 12, 'Кур\'єр'),
(457, '2017-07-20', '02-08/', 'Відділ фінансів', 'Лист', 1, 10, 'Кур\'єр'),
(458, '2017-07-24', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 2, 12, 'Сектор персоналу'),
(459, '2017-07-24', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'повідомлення про відкриття рахунків', 2, 12, 'Кур\'єр'),
(460, '2017-07-25', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'повідомлення про відкриття рахунків', 9, 12, 'Кур\'єр'),
(461, '2017-07-26', '02-08', 'дснс', 'інформація', 1, 4, 'Кур\'єр'),
(462, '2017-07-26', '04-10', 'ГУДКСУ', 'Про блокування переносних пристроїв', 1, 1, 'Відділ КТКТ та ЗІ'),
(463, '2017-07-26', '03-10', 'ГУДКСУ', 'Про надання інформації', 3, 11, 'Плановофінансовий'),
(464, '2017-07-26', '03-10', 'Хорошівське відділення Коростенської ОДПІ', 'повідомлення про відкриття рахунків', 3, 12, 'Кур\'єр'),
(465, '2017-07-26', '03-10', 'ГУДКСУ', 'Про надання інформації', 2, 11, 'Плановофінансовий'),
(466, '2017-07-27', '04-10', 'ГУДКСУ', 'Заявка на розблокування доступу', 1, 1, 'Відділ ППЗ та ПТК'),
(467, '2017-07-27', '04-08', 'РЦЗ', 'Щодо впровадження СДО', 1, 1, 'Кур\'єр'),
(468, '2017-07-27', '04-08', 'УПСЗН', 'Щодо впровадження СДО', 1, 1, 'Кур\'єр'),
(469, '2017-07-27', '04-08', 'Відділ освіти Хорошівської сел/ради', 'Щодо впровадження СДО', 1, 1, 'Кур\'єр'),
(470, '2017-07-27', '03-10', 'ГУДКСУ', 'Присутність на колегії', 1, 12, 'Відділ Діловодства'),
(471, '2017-07-28', '02-10', 'ГУДКСУ', 'Інформація', 2, 5, 'Відділ розрахунків'),
(472, '2017-07-28', '03-10', 'ГУДКСУ', 'про надання інформації', 1, 12, 'Сектор персоналу'),
(473, '2017-07-28', '04-10', 'ГУДКСУ', 'Про надання інофрмації', 3, 1, 'Відділ КТКТ та ЗІ'),
(474, '2017-07-28', '04-10', 'ГУДКСУ', 'Про надання інофрмації', 1, 1, 'Відділ КТКТ та ЗІ'),
(475, '2017-07-31', '03-24', 'ГУДКСУ', 'Інформація про лікарняні', 2, 12, 'Сектор персоналу'),
(476, '2017-07-31', '03-10', 'ГУДКСУ', 'Про надання інформації', 1, 11, 'Плановофінансовий'),
(477, '2017-07-31', '03-100', 'Хорошівське відділення Коростенської ОДПІ', 'повідомлення про відкриття рахунків', 3, 12, 'Кур\'єр'),
(478, '2017-07-31', '03-10', 'ГУДКСУ', 'Про надання довідки про зміни до кошторису', 1, 11, 'Плановофінансовий'),
(479, '2017-07-31', '03-10', 'ГУДКСУ', 'кадрове забезпечення', 2, 12, 'Сектор персоналу'),
(480, '2017-08-01', '02-10', 'ГУДКСУ', 'Інформація', 1, 5, 'Відділ фінансових ресурсів'),
(481, '2017-08-01', '04-10', 'ГУДКСУ', 'Заявка на блокування доступу', 3, 1, 'Відділ ППЗ та ПТК'),
(482, '2017-08-01', '02-08', 'ДВС', '1', 1, 4, 'Кур\'єр'),
(483, '2017-08-01', '02-08', 'одпі', 'акт звірки', 2, 4, 'Кур\'єр'),
(484, '2017-08-01', '02-08', 'одпі', 'акт звірки', 3, 4, 'Кур\'єр'),
(485, '2017-08-01', '02-08', 'одпі', 'акт звірки', 3, 4, 'Кур\'єр'),
(486, '2017-08-01', '02-08', 'одпі', 'акт звірки', 3, 4, 'Кур\'єр'),
(487, '2017-08-01', '02-08', 'одпі', 'акт звірки', 3, 4, 'Кур\'єр'),
(488, '2017-08-02', '03-10', 'ГУДКСУ', 'про надання місячного звіту', 1, 11, 'Плановофінансовий'),
(489, '2017-08-02', '04-10', 'ГУДКСУ', 'Про надання інофрмації', 2, 1, 'Відділ КТКТ та ЗІ'),
(490, '2017-08-02', '03-10', 'ГУДКСУ', 'про надання інформації до місячного звіту', 1, 11, 'Відділ звітності МБ'),
(491, '2017-08-02', '02-10', 'ГУДКСУ', 'Інформація', 1, 10, 'Відділ видатків, мережі'),
(492, '2017-08-03', '03-10', 'ГУДКСУ', 'Про надання інформації', 1, 11, 'Відділ звітності ДБ'),
(493, '2017-08-03', '03-10', 'ГУДКСУ', 'Про надання інформації', 1, 11, 'Відділ бухконтролю'),
(494, '2017-08-03', '03-10', 'ГУДКСУ', 'про стан фінансування соціальних виплат', 2, 12, 'Плановофінансовий'),
(495, '2017-08-03', '03-10', 'ГУДКСУ', 'про зміни до кошторису по спец. фонду', 1, 12, 'Плановофінансовий'),
(496, '2017-12-23', '04-10', 'ГУДКСУ', 'Про надання інформації', 1, 1, 'Відділ видатків, мережі');

-- --------------------------------------------------------

--
-- Структура таблиці `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `dialog` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_new` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `messages`
--

INSERT INTO `messages` (`id`, `dialog`, `sender`, `message`, `date`, `status`, `is_new`) VALUES
(1, 1, 4, 'Привіт)', 1483708508, 0, 0),
(2, 1, 1, 'Як справи?', 1483708742, 0, 0),
(3, 2, 1, 'Привіт)', 1483708912, 0, 0),
(4, 2, 1, ' Перезагрузи сторінку', 1483709078, 0, 0),
(5, 2, 8, 'Good afternoon! Merry Christmas!!!!\n \n', 1483709080, 0, 0),
(6, 2, 8, ' Why&^\n', 1483709093, 0, 0),
(7, 2, 1, ' Пасіба) Тобі тоже)', 1483709103, 0, 0),
(8, 2, 1, ' Просто)', 1483709117, 0, 0),
(9, 2, 8, 'Simple_)\n', 1483709129, 0, 0),
(10, 2, 1, 'Гарно дня)', 1483709346, 1, 0),
(11, 2, 1, 'Гарного*', 1483714901, 1, 0),
(12, 1, 1, 'Привет)', 1488462591, 0, 0),
(13, 5, 1, 'Тест', 1488468328, 1, 0),
(14, 6, 1, ' Тест', 1488468335, 1, 0),
(15, 2, 1, '  Тест', 1488468339, 1, 0),
(16, 4, 1, '  Тест', 1488468343, 1, 0),
(17, 3, 1, '  Тест', 1488468349, 1, 0),
(18, 9, 1, '  Тест', 1488468354, 1, 0),
(19, 8, 1, '  Тест', 1488468357, 0, 0),
(20, 17, 1, '  Тест', 1488468360, 0, 0),
(21, 18, 1, '  Тест', 1488468364, 1, 0),
(22, 17, 9, 'авыпап', 1488890627, 0, 0),
(23, 8, 9, ' авпваа', 1488890632, 0, 0),
(24, 22, 4, 'Ghbds\n', 1526757915, 1, 0),
(25, 22, 4, ' sadsad', 1526757917, 1, 0),
(26, 22, 4, ' asdsadsad', 1526757918, 1, 0),
(27, 22, 4, 'sadsadsadsda', 1526757920, 1, 0),
(28, 22, 4, 'sadsadsad', 1526757922, 1, 0),
(29, 22, 4, ' dasadsasdsad', 1526757923, 1, 0),
(30, 22, 4, ' dsfsdfdsfdsf', 1526757929, 1, 0),
(31, 22, 4, ' asdsadas', 1526758839, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_desc` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Сторінки на сайті';

--
-- Дамп даних таблиці `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `meta_key`, `meta_desc`, `text`) VALUES
(1, 'home', 'УДКСУ у Хорошівському районі', 'Головна', 'Головна сторінка сайту', 'Доброго дня! Ви зашли на сайт УДКСУ у Хорошівському районі.<br>Версія сайту: 0.0.2'),
(2, 'registration', 'Реєстрація - УДКСУ у Хорошівському районі', 'Реєстрація', 'Реєстрація', ''),
(3, 'auth', 'Авторизація - УДКСУ у Хорошівському районі', 'Авторизація ', 'Авторизація ', ''),
(4, 'computers', 'Облік комп\'ютерів УДКСУ у Хорошівському районі', '-', '-', ''),
(5, 'computer_edit', 'Редагування комп\'ютера:', '', '', ''),
(6, 'computer_add', 'Додавання комп\'ютера', '', '', ''),
(7, 'computer_del', 'Видалення комп\'ютера:', '', '', ''),
(8, 'messages', 'Мої повідомлення', '', '', ''),
(9, 'mail', 'Поштова система', 'Поштова система', 'Поштова система', ''),
(10, 'mail_add', 'Реєстрація нового листа', '-', '-', '-'),
(11, 'kost', 'Журнал реєстрації кошторисів', 'Журнал реєстрації кошторисів', 'Журнал реєстрації кошторисів', 'Журнал реєстрації кошторисів'),
(12, 'kost_add', 'Додати кошторис до журналу', 'Додати кошторис до журналу', 'Додати кошторис до журналу', 'Додати кошторис до журналу'),
(13, 'rozp', 'Журнал реєстрації розподілів', 'Журнал реєстрації розподілів', 'Журнал реєстрації розподілів', 'Журнал реєстрації розподілів'),
(14, 'rozp_add', 'Додати розподіл до журналу', 'Додати розподіл до журналу', 'Додати розподіл до журналу', 'Додати розподіл до журналу');

-- --------------------------------------------------------

--
-- Структура таблиці `rozp`
--

CREATE TABLE `rozp` (
  `id` int(11) NOT NULL,
  `to_mail` text NOT NULL,
  `number` varchar(255) NOT NULL,
  `date_mail` date NOT NULL,
  `date_to` date NOT NULL,
  `description` text NOT NULL,
  `work_mail` text NOT NULL,
  `work_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `tel_mob` varchar(255) NOT NULL,
  `tel_vn` varchar(255) NOT NULL,
  `birdth` date NOT NULL,
  `viddil` int(11) NOT NULL,
  `admin` int(1) NOT NULL,
  `boss` int(1) NOT NULL,
  `buh` int(1) NOT NULL,
  `vid` int(1) NOT NULL,
  `block` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Користувачі сайту';

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `login`, `password`, `photo`, `tel_mob`, `tel_vn`, `birdth`, `viddil`, `admin`, `boss`, `buh`, `vid`, `block`) VALUES
(1, 'Дмитро', 'Володимирович', 'Адамович', 'program.malik@gmail.com', 'AdamovichD', 'b70046c250c42559d910d4beb211f9b0', 'uploads/users/MaLik.jpg', '+380680416356', '3-12-72', '1996-07-13', 1, 1, 0, 0, 1, 0),
(2, 'Любов', 'Владиславівна', 'Євпак', 'test@dksu.gov.ua', 'EvpakL', '895321f3aa184e7251312041a3089163', 'uploads/users/2.png', '', '', '1973-08-02', 5, 0, 1, 0, 0, 0),
(3, 'Анжела', 'Анатоліївна', 'Корбут', 'test-2@dksu.gov.ua', 'KorbutA', '895321f3aa184e7251312041a3089163', 'uploads/users/2.png', '', '3-15-10', '1968-11-24', 3, 0, 0, 1, 0, 0),
(4, 'Таміла', 'Сергіївна', 'Могилянець', 'test-3@dksu.gov.ua', 'MohulyanetsT', '895321f3aa184e7251312041a3089163', 'uploads/users/2.png', '', '3-12-72', '1984-11-30', 2, 0, 0, 0, 1, 0),
(5, 'Тетяна', 'Йосипівна', 'Опанащук', 'test-4@dksu.gov.ua', 'OpanaschukT', '895321f3aa184e7251312041a3089163', 'uploads/users/2.png', '', '3-18-46', '1974-07-17', 2, 0, 0, 0, 1, 0),
(6, 'Наталія', 'Леонідвна', 'Суворова', 'suvorovan@test.com', 'SuvorovaN', '895321f3aa184e7251312041a3089163', 'uploads/users/2.png', '', '3-16-65', '1990-07-10', 2, 0, 0, 0, 1, 0),
(7, 'Валентина', 'Петрівна', 'Павицька', 'pavutskav@test.com', 'PavutskaV', '895321f3aa184e7251312041a3089163', 'uploads/users/2.png', '', '', '0000-00-00', 3, 0, 0, 1, 0, 1),
(8, 'Олександр', 'Оелксандрович', 'Костецький', 'kostetskyio@test.com', 'KostetskyiO', '895321f3aa184e7251312041a3089163', 'uploads/users/3.png', '', '3-16-65', '1992-11-26', 2, 0, 0, 0, 1, 0),
(9, 'Андрій', 'Анатолійович', 'Нечипорук', 'nechyporuka@test.com', 'NechyporukA', '895321f3aa184e7251312041a3089163', 'uploads/users/3.png', '', '3-16-65', '1992-06-16', 2, 0, 0, 0, 1, 0),
(10, 'Регіна', 'Францівна', 'Мороз', 'morozr@mail.com', 'MorozR', '895321f3aa184e7251312041a3089163', 'uploads/users/2.png', '', '3-18-46', '1978-07-05', 2, 0, 0, 0, 1, 0),
(11, 'Людмила', 'Анатоліївна', 'Шевчук', 'shevcukl@test.com', 'ShevchukL', '895321f3aa184e7251312041a3089163', 'uploads/users/2.png', '', '3-15-10', '1988-09-07', 2, 0, 0, 0, 1, 0),
(12, 'Людмила', 'Анатоліївна', 'Мельничук', 'melnychukl@test.com', 'MelnychukL', '895321f3aa184e7251312041a3089163', 'uploads/users/2.png', '', '3-15-10', '1982-07-06', 3, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `viddil`
--

CREATE TABLE `viddil` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `viddil`
--

INSERT INTO `viddil` (`id`, `name`, `slug`) VALUES
(1, 'Інформаційні Технолоії', 'IT'),
(2, 'Видатки', 'vud'),
(3, 'Бухгалтерія', 'buh'),
(4, 'Керівництво', 'ker'),
(5, 'Начальник УДКСУ', 'nach');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comp_login` (`comp_login`);

--
-- Індекси таблиці `comp_po`
--
ALTER TABLE `comp_po`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `dialog`
--
ALTER TABLE `dialog`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `gu_mail`
--
ALTER TABLE `gu_mail`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `klients`
--
ALTER TABLE `klients`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `kost`
--
ALTER TABLE `kost`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `mail_dksu`
--
ALTER TABLE `mail_dksu`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `mail_org`
--
ALTER TABLE `mail_org`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `mail_out`
--
ALTER TABLE `mail_out`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `rozp`
--
ALTER TABLE `rozp`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`login`);

--
-- Індекси таблиці `viddil`
--
ALTER TABLE `viddil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `computers`
--
ALTER TABLE `computers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблиці `comp_po`
--
ALTER TABLE `comp_po`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;
--
-- AUTO_INCREMENT для таблиці `dialog`
--
ALTER TABLE `dialog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблиці `klients`
--
ALTER TABLE `klients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `kost`
--
ALTER TABLE `kost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `mail_dksu`
--
ALTER TABLE `mail_dksu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `mail_org`
--
ALTER TABLE `mail_org`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `mail_out`
--
ALTER TABLE `mail_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;
--
-- AUTO_INCREMENT для таблиці `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблиці `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблиці `rozp`
--
ALTER TABLE `rozp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблиці `viddil`
--
ALTER TABLE `viddil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
