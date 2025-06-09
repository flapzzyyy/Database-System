-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Nov 2021 pada 22.47
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbDunia`
--
CREATE DATABASE IF NOT EXISTS `dbDunia` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `dbDunia`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `benua`
--

DROP TABLE IF EXISTS `benua`;
CREATE TABLE `benua` (
  `bn_id` tinyint(4) NOT NULL,
  `bn_nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `benua`
--

INSERT INTO `benua` (`bn_id`, `bn_nama`) VALUES
(1, 'Africa'),
(2, 'Asia'),
(3, 'Caribbean'),
(4, 'Eurasia'),
(5, 'Europe'),
(6, 'North America'),
(7, 'Oceania'),
(8, 'South America'),
(9, 'Atlantis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `negara`
--

DROP TABLE IF EXISTS `negara`;
CREATE TABLE `negara` (
  `ng_kode` varchar(5) NOT NULL,
  `ng_nama` varchar(50) NOT NULL,
  `ng_bn_id` tinyint(4) DEFAULT NULL,
  `ng_luas` decimal(10,0) DEFAULT NULL,
  `ng_populasi` decimal(11,0) DEFAULT NULL,
  `ng_gdp` decimal(14,0) DEFAULT NULL,
  `ng_ibukota` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ng_bendera` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `negara`
--

INSERT INTO `negara` (`ng_kode`, `ng_nama`, `ng_bn_id`, `ng_luas`, `ng_populasi`, `ng_gdp`, `ng_ibukota`, `ng_bendera`) VALUES
('.ad', 'Andorra', 5, '468', '76098', '3222000000', 'Andorra la Vella', '//upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Andorra.svg'),
('.ae', 'United Arab Emirates', 2, '83600', '9446000', '383799000000', 'Abu Dhabi', '//upload.wikimedia.org/wikipedia/commons/c/cb/Flag_of_the_United_Arab_Emirates.svg'),
('.af', 'Afghanistan', 2, '652230', '25500100', '20364000000', 'Kabul', '//upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Afghanistan.svg'),
('.ag', 'Antigua and Barbuda', 3, '442', '86295', '1176000000', 'St. John\'s', '//upload.wikimedia.org/wikipedia/commons/8/89/Flag_of_Antigua_and_Barbuda.svg'),
('.al', 'Albania', 5, '28748', '2821977', '12044000000', 'Tirana', '//upload.wikimedia.org/wikipedia/commons/3/36/Flag_of_Albania.svg'),
('.am', 'Armenia', 4, '29743', '3017400', '9950000000', 'Yerevan', '//upload.wikimedia.org/wikipedia/commons/2/2f/Flag_of_Armenia.svg'),
('.ao', 'Angola', 1, '1246700', '19183590', '116308000000', 'Luanda', '//upload.wikimedia.org/wikipedia/commons/9/9d/Flag_of_Angola.svg'),
('.ar', 'Argentina', 8, '2780400', '42669500', '477028000000', 'Buenos Aires', '//upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg'),
('.at', 'Austria', 5, '83871', '8504850', '394458000000', 'Vienna', '//upload.wikimedia.org/wikipedia/commons/4/41/Flag_of_Austria.svg'),
('.au', 'Australia', 7, '7692024', '23545500', '1564419000000', 'Canberra', '//upload.wikimedia.org/wikipedia/commons/b/b9/Flag_of_Australia.svg'),
('.az', 'Azerbaijan', 2, '86600', '9477100', '68727000000', 'Baku', '//upload.wikimedia.org/wikipedia/commons/d/dd/Flag_of_Azerbaijan.svg'),
('.ba', 'Bosnia and Herzegovina', 5, '51209', '3791622', '17319000000', 'Sarajevo', '//upload.wikimedia.org/wikipedia/commons/b/bf/Flag_of_Bosnia_and_Herzegovina.svg'),
('.bb', 'Barbados', 3, '430', '285000', '4533000000', 'Bridgetown', '//upload.wikimedia.org/wikipedia/commons/e/ef/Flag_of_Barbados.svg'),
('.bd', 'Bangladesh', 2, '147570', '156557000', '127195000000', 'Dhaka', '//upload.wikimedia.org/wikipedia/commons/f/f9/Flag_of_Bangladesh.svg'),
('.be', 'Belgium', 5, '30528', '11198638', '483402000000', 'City of Brussels', '//upload.wikimedia.org/wikipedia/commons/6/65/Flag_of_Belgium.svg'),
('.bf', 'Burkina Faso', 1, '272967', '17322796', '10687000000', 'Ouagadougou', '//upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Burkina_Faso.svg'),
('.bg', 'Bulgaria', 5, '110879', '7245677', '50972000000', 'Sofia', '//upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Bulgaria.svg'),
('.bh', 'Bahrain', 2, '765', '1234571', '30362000000', 'Manama', '//upload.wikimedia.org/wikipedia/commons/f/f9/Flag_of_Bahrain_1972.svg'),
('.bi', 'Burundi', 1, '27834', '9420248', '2257000000', 'Bujumbura', '//upload.wikimedia.org/wikipedia/commons/5/50/Flag_of_Burundi.svg'),
('.bj', 'Benin', 1, '112622', '9988068', '7557000000', 'Porto-Novo', '//upload.wikimedia.org/wikipedia/commons/0/0a/Flag_of_Benin.svg'),
('.bn', 'Brunei', 2, '5765', '393162', '16954000000', 'Bandar Seri Begawan', '//upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Brunei.svg'),
('.bo', 'Bolivia', 8, '1098581', '10027254', '27035000000', 'Sucre', '//upload.wikimedia.org/wikipedia/commons/4/48/Flag_of_Bolivia.svg'),
('.br', 'Brazil', 8, '8515767', '202794000', '2254109000000', 'BrasÃ­lia', '//upload.wikimedia.org/wikipedia/commons/0/05/Flag_of_Brazil.svg'),
('.bs', 'Bahamas', 3, '13878', '351461', '8043000000', 'Nassau', '//upload.wikimedia.org/wikipedia/commons/9/93/Flag_of_the_Bahamas.svg'),
('.bt', 'Bhutan', 2, '38394', '749090', '1861000000', 'Thimphu', '//upload.wikimedia.org/wikipedia/commons/9/91/Flag_of_Bhutan.svg'),
('.bw', 'Botswana', 1, '582000', '2024904', '14410000000', 'Gaborone', '//upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_Botswana.svg'),
('.by', 'Belarus', 5, '207600', '9467000', '63259000000', 'Minsk', '//upload.wikimedia.org/wikipedia/commons/8/85/Flag_of_Belarus.svg'),
('.bz', 'Belize', 6, '22966', '349728', '1554000000', 'Belmopan', '//upload.wikimedia.org/wikipedia/commons/e/e7/Flag_of_Belize.svg'),
('.ca', 'Canada', 6, '9984670', '35427524', '1585000000000', 'Ottowa', '//upload.wikimedia.org/wikipedia/en/c/cf/Flag_of_Canada.svg'),
('.cd', 'Congo, Democratic Republic of', 1, '2345000', '69360000', NULL, 'Kinshasa', '//upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_the_Democratic_Republic_of_the_Congo.svg'),
('.cf', 'Central African Republic', 1, '622984', '4709000', '2184000000', 'Bangui', '//upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_the_Central_African_Republic.svg'),
('.cg', 'Congo, Republic of', 1, '342000', '4559000', NULL, 'Brazzaville', '//upload.wikimedia.org/wikipedia/commons/9/92/Flag_of_the_Republic_of_the_Congo.svg'),
('.ch', 'Switzerland', 5, '41284', '8160900', '631183000000', 'Bern', '//upload.wikimedia.org/wikipedia/commons/f/f3/Flag_of_Switzerland.svg'),
('.ci', 'CÃ´te d\'Ivoire', 1, '322483', '23919000', '34506000000', 'Yamoussoukro', '//upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_C%C3%B4te_d%27Ivoire.svg'),
('.cl', 'Chile', 8, '756102', '17773000', '268314000000', 'Santiago', '//upload.wikimedia.org/wikipedia/commons/7/78/Flag_of_Chile.svg'),
('.cm', 'Cameroon', 1, '475442', '20386799', '26094000000', 'YaoundÃ©', '//upload.wikimedia.org/wikipedia/commons/4/4f/Flag_of_Cameroon.svg'),
('.cn', 'China', 2, '9596961', '1365370000', '8358400000000', 'Beijing', '//upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_the_People%27s_Republic_of_China.svg'),
('.co', 'Colombia', 8, '1141748', '47662000', '369813000000', 'BogotÃ¡', '//upload.wikimedia.org/wikipedia/commons/2/21/Flag_of_Colombia.svg'),
('.cr', 'Costa Rica', 6, '51100', '4667096', '45107000000', 'San JosÃ©', '//upload.wikimedia.org/wikipedia/commons/f/f2/Flag_of_Costa_Rica.svg'),
('.cu', 'Cuba', 3, '109884', '11167325', '71017000000', 'Havana', '//upload.wikimedia.org/wikipedia/commons/b/bd/Flag_of_Cuba.svg'),
('.cv', 'Cape Verde', 1, '4033', '491875', '1903000000', 'Praia', '//upload.wikimedia.org/wikipedia/commons/3/38/Flag_of_Cape_Verde.svg'),
('.cy', 'Cyprus', 2, '9251', '865878', '22768000000', 'Nicosia', '//upload.wikimedia.org/wikipedia/commons/d/d4/Flag_of_Cyprus.svg'),
('.cz', 'Czech Republic', 5, '78865', '10517400', '196446000000', 'Prague', '//upload.wikimedia.org/wikipedia/commons/c/cb/Flag_of_the_Czech_Republic.svg'),
('.de', 'Germany', 5, '357114', '80716000', '3425956000000', 'Bonn', '//upload.wikimedia.org/wikipedia/commons/b/ba/Flag_of_Germany.svg'),
('.dj', 'Djibouti', 1, '23200', '886000', '1361000000', 'Djibouti', '//upload.wikimedia.org/wikipedia/commons/3/34/Flag_of_Djibouti.svg'),
('.dk', 'Denmark', 5, '43094', '5634437', '314889000000', 'Copenhagen', '//upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Denmark.svg'),
('.dm', 'Dominica', 3, '751', '71293', '499000000', 'Roseau', '//upload.wikimedia.org/wikipedia/commons/c/c4/Flag_of_Dominica.svg'),
('.do', 'Dominican Republic', 3, '48671', '9445281', '58898000000', 'Santo Domingo', '//upload.wikimedia.org/wikipedia/commons/9/9f/Flag_of_the_Dominican_Republic.svg'),
('.dz', 'Algeria', 1, '2381741', '38700000', '207021000000', 'Algiers', '//upload.wikimedia.org/wikipedia/commons/7/77/Flag_of_Algeria.svg'),
('.ec', 'Ecuador', 8, '276841', '15774200', '87495000000', 'Quito', '//upload.wikimedia.org/wikipedia/commons/e/e8/Flag_of_Ecuador.svg'),
('.ee', 'Estonia', 5, '45227', '1315819', '22376000000', 'Tallinn', '//upload.wikimedia.org/wikipedia/commons/8/8f/Flag_of_Estonia.svg'),
('.eg', 'Egypt', 2, '1002450', '86736900', '254671000000', 'Cairo', '//upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Egypt.svg'),
('.er', 'Eritrea', 1, '117600', '6536000', '3108000000', 'Asmara', '//upload.wikimedia.org/wikipedia/commons/2/29/Flag_of_Eritrea.svg'),
('.es', 'Spain', 5, '505992', '46609700', '1322126000000', 'Madrid', '//upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Spain.svg'),
('.et', 'Ethiopia', 1, '1104300', '87952991', '41605000000', 'Addis Ababa', '//upload.wikimedia.org/wikipedia/commons/7/71/Flag_of_Ethiopia.svg'),
('.fi', 'Finland', 5, '338424', '5458038', '247389000000', 'Helsinki', '//upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Finland.svg'),
('.fj', 'Fiji', 7, '18272', '858038', '3999000000', 'Suva', '//upload.wikimedia.org/wikipedia/commons/b/ba/Flag_of_Fiji.svg'),
('.fm', 'Micronesia, Federated States of', 7, '702', '101351', '327000000', 'Palikir', '//upload.wikimedia.org/wikipedia/commons/e/e4/Flag_of_the_Federated_States_of_Micronesia.svg'),
('.fr', 'France', 5, '640679', '65906000', '2611221000000', 'Paris', '//upload.wikimedia.org/wikipedia/commons/c/c3/Flag_of_France.svg'),
('.ga', 'Gabon', 1, '267668', '1711000', '24076000000', 'Libreville', '//upload.wikimedia.org/wikipedia/commons/0/04/Flag_of_Gabon.svg'),
('.gd', 'Grenada', 3, '344', '103328', '783000000', 'St. George\'s', '//upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Grenada.svg'),
('.ge', 'Georgia', 2, '69700', '4490500', '15830000000', 'Tbilisi', '//upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_Georgia.svg'),
('.gh', 'Ghana', 1, '238533', '27043093', '40711000000', 'Accra', '//upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Ghana.svg'),
('.gm', 'Gambia', 1, '11295', '1882450', NULL, 'Banjul', '//upload.wikimedia.org/wikipedia/commons/7/77/Flag_of_The_Gambia.svg'),
('.gn', 'Guinea', 1, '245857', '10824200', '6092000000', 'Conakry', '//upload.wikimedia.org/wikipedia/commons/e/ed/Flag_of_Guinea.svg'),
('.gq', 'Equatorial Guinea', 1, '28051', '1622000', '14491000000', 'Malabo', '//upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Equatorial_Guinea.svg'),
('.gr', 'Greece', 5, '131990', '11123034', '248941000000', 'Athens', '//upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Greece.svg'),
('.gt', 'Guatemala', 6, '108889', '15806675', '50377000000', 'Guatemala City', '//upload.wikimedia.org/wikipedia/commons/e/ec/Flag_of_Guatemala.svg'),
('.gw', 'Guinea-Bissau', 1, '36125', '1746000', '849000000', 'Bissau', '//upload.wikimedia.org/wikipedia/commons/0/01/Flag_of_Guinea-Bissau.svg'),
('.gy', 'Guyana', 8, '214969', '784894', '2851000000', 'Georgetown', '//upload.wikimedia.org/wikipedia/commons/9/99/Flag_of_Guyana.svg'),
('.hn', 'Honduras', 6, '112492', '8555072', '18564000000', 'Tegucigalpa', '//upload.wikimedia.org/wikipedia/commons/8/82/Flag_of_Honduras.svg'),
('.hr', 'Croatia', 5, '56594', '4290612', '56447000000', 'Zagreb', '//upload.wikimedia.org/wikipedia/commons/1/1b/Flag_of_Croatia.svg'),
('.ht', 'Haiti', 3, '27750', '10413211', '7187000000', 'Port-au-Prince', '//upload.wikimedia.org/wikipedia/commons/5/58/Flag_of_Haiti_%281964-1986%29.svg'),
('.hu', 'Hungary', 5, '93028', '9879000', '124600000000', 'Budapest', '//upload.wikimedia.org/wikipedia/commons/c/c1/Flag_of_Hungary.svg'),
('.id', 'Indonesia', 2, '1904569', '252164800', '878043000000', 'Jakarta', '//upload.wikimedia.org/wikipedia/commons/9/9f/Flag_of_Indonesia.svg'),
('.ie', 'Ireland', 5, '70273', '4593100', '210638000000', 'Dublin', '//upload.wikimedia.org/wikipedia/commons/4/45/Flag_of_Ireland.svg'),
('.il', 'Israel', 2, '20770', '8193900', '241069000000', 'Jerusalem', '//upload.wikimedia.org/wikipedia/commons/d/d4/Flag_of_Israel.svg'),
('.in', 'India', 2, '3166414', '1246160000', '1875213000000', 'New Delhi', '//upload.wikimedia.org/wikipedia/commons/4/41/Flag_of_India.svg'),
('.iq', 'Iraq', 2, '438317', '36004552', '149370000000', 'Baghdad', '//upload.wikimedia.org/wikipedia/commons/f/f6/Flag_of_Iraq.svg'),
('.ir', 'Iran', 2, '1648195', '77552000', '551588000000', 'Tehran', '//upload.wikimedia.org/wikipedia/commons/c/ca/Flag_of_Iran.svg'),
('.is', 'Iceland', 5, '103000', '326340', '13579000000', 'ReykjavÃ­k', '//upload.wikimedia.org/wikipedia/commons/c/ce/Flag_of_Iceland.svg'),
('.it', 'Italy', 5, '301336', '60782668', '2013392000000', 'Rome', '//upload.wikimedia.org/wikipedia/commons/0/03/Flag_of_Italy.svg'),
('.jm', 'Jamaica', 3, '10991', '2717991', '14795000000', 'Kingston', '//upload.wikimedia.org/wikipedia/commons/0/0a/Flag_of_Jamaica.svg'),
('.jo', 'Jordan', 2, '89342', '6602190', '30937000000', 'Amman', '//upload.wikimedia.org/wikipedia/commons/c/c0/Flag_of_Jordan.svg'),
('.jp', 'Japan', 2, '377930', '127090000', '5960180000000', 'Imperial Tokyo', '//upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg'),
('.ke', 'Kenya', 1, '580367', '45546000', '40697000000', 'Nairobi', '//upload.wikimedia.org/wikipedia/commons/4/49/Flag_of_Kenya.svg'),
('.kg', 'Kyrgyzstan', 2, '199951', '5776570', '6475000000', 'Bishkek', '//upload.wikimedia.org/wikipedia/commons/c/c7/Flag_of_Kyrgyzstan.svg'),
('.kh', 'Cambodia', 2, '181035', '15184116', '14038000000', 'Phnom Penh', '//upload.wikimedia.org/wikipedia/commons/8/83/Flag_of_Cambodia.svg'),
('.ki', 'Kiribati', 7, '811', '106461', '176000000', 'South Tarawa', '//upload.wikimedia.org/wikipedia/commons/d/d3/Flag_of_Kiribati.svg'),
('.km', 'Comoros', 1, '1862', '743798', '616000000', 'Moroni', '//upload.wikimedia.org/wikipedia/commons/9/94/Flag_of_the_Comoros.svg'),
('.kn', 'Saint Kitts and Nevis', 6, '261', '55000', '765000000', 'Basseterre', '//upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Saint_Kitts_and_Nevis.svg'),
('.kp', 'North Korea', 2, '120538', '25027000', '14411000000', 'Pyongyang', '//upload.wikimedia.org/wikipedia/commons/5/51/Flag_of_North_Korea.svg'),
('.kr', 'South Korea', 2, '100210', '50423955', '1129598000000', 'Seoul', '//upload.wikimedia.org/wikipedia/commons/0/09/Flag_of_South_Korea.svg'),
('.kw', 'Kuwait', 2, '17818', '3065850', '183219000000', 'Kuwait City', '//upload.wikimedia.org/wikipedia/commons/a/aa/Flag_of_Kuwait.svg'),
('.kz', 'Kazakhstan', 5, '2724900', '17244000', '202656000000', 'Astana', '//upload.wikimedia.org/wikipedia/commons/d/d3/Flag_of_Kazakhstan.svg'),
('.la', 'Laos', 2, '236800', '6580800', '9100000000', 'Vientiane', '//upload.wikimedia.org/wikipedia/commons/5/56/Flag_of_Laos.svg'),
('.lb', 'Lebanon', 2, '10452', '4966000', '42490000000', 'Beirut', '//upload.wikimedia.org/wikipedia/commons/5/59/Flag_of_Lebanon.svg'),
('.lc', 'Saint Lucia', 3, '616', '180000', '1318000000', 'Castries', '//upload.wikimedia.org/wikipedia/commons/9/9f/Flag_of_Saint_Lucia.svg'),
('.li', 'Liechtenstein', 5, '160', '37132', '5827000000', 'Vaduz', '//upload.wikimedia.org/wikipedia/commons/4/47/Flag_of_Liechtenstein.svg'),
('.lk', 'Sri Lanka', 2, '65610', '20277597', '59421000000', 'Sri Jayawardenepura Kotte', '//upload.wikimedia.org/wikipedia/commons/1/11/Flag_of_Sri_Lanka.svg'),
('.lr', 'Liberia', 1, '111369', '4397000', '1491000000', 'Monrovia', '//upload.wikimedia.org/wikipedia/commons/b/b8/Flag_of_Liberia.svg'),
('.ls', 'Lesotho', 1, '30355', '2098000', '2443000000', 'Maseru', '//upload.wikimedia.org/wikipedia/commons/c/c0/Flag_of_Lesotho_%281987-2006%29.svg'),
('.lt', 'Lithuania', 5, '65300', '2939431', '42339000000', 'Vilnius', '//upload.wikimedia.org/wikipedia/commons/1/11/Flag_of_Lithuania.svg'),
('.lu', 'Luxembourg', 5, '2586', '549700', '55143000000', 'Luxembourg', '//upload.wikimedia.org/wikipedia/commons/d/da/Flag_of_Luxembourg.svg'),
('.lv', 'Latvia', 5, '64559', '1996500', '28379000000', 'Riga', '//upload.wikimedia.org/wikipedia/commons/8/84/Flag_of_Latvia.svg'),
('.ly', 'Libya', 1, '1759540', '6253000', '95802000000', 'Tripoli', '//upload.wikimedia.org/wikipedia/commons/0/05/Flag_of_Libya.svg'),
('.ma', 'Morocco', 1, '446550', '33307500', '95992000000', 'Rabat', '//upload.wikimedia.org/wikipedia/commons/2/2c/Flag_of_Morocco.svg'),
('.mc', 'Monaco', 5, '2', '36950', '5707000000', 'Monaco-Ville', '//upload.wikimedia.org/wikipedia/commons/e/ea/Flag_of_Monaco.svg'),
('.md', 'Moldova', 5, '33846', '3557600', '7253000000', 'ChiÈ™inÄƒu', '//upload.wikimedia.org/wikipedia/commons/2/27/Flag_of_Moldova.svg'),
('.me', 'Montenegro', 5, '13812', '620029', '4046000000', 'Podgorica', '//upload.wikimedia.org/wikipedia/commons/6/64/Flag_of_Montenegro.svg'),
('.mg', 'Madagascar', 1, '587041', '21263403', '9968000000', 'Antananarivo', '//upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Madagascar.svg'),
('.mh', 'Marshall Islands', 7, '181', '56086', '198000000', 'Majuro', '//upload.wikimedia.org/wikipedia/commons/2/2e/Flag_of_the_Marshall_Islands.svg'),
('.mk', 'Macedonia', 5, '25713', '2062294', NULL, 'Skopje', '//upload.wikimedia.org/wikipedia/commons/f/f8/Flag_of_Macedonia.svg'),
('.ml', 'Mali', 1, '1240192', '15768000', '10262000000', 'Bamako', '//upload.wikimedia.org/wikipedia/commons/9/92/Flag_of_Mali.svg'),
('.mm', 'Myanmar', 2, '676578', '61120000', '59444000000', 'Naypyidaw', '//upload.wikimedia.org/wikipedia/commons/8/8c/Flag_of_Myanmar.svg'),
('.mn', 'Mongolia', 2, '1564110', '2931300', '10271000000', 'Ulaanbaatar', '//upload.wikimedia.org/wikipedia/commons/4/4c/Flag_of_Mongolia.svg'),
('.mr', 'Mauritania', 1, '1030700', '3461041', '3866000000', 'Nouakchott', '//upload.wikimedia.org/wikipedia/commons/4/43/Flag_of_Mauritania.svg'),
('.mt', 'Malta', 5, '316', '416055', '8775000000', 'Valletta', '//upload.wikimedia.org/wikipedia/commons/7/73/Flag_of_Malta.svg'),
('.mu', 'Mauritius', 1, '2040', '1257900', '11452000000', 'Port Louis', '//upload.wikimedia.org/wikipedia/commons/7/77/Flag_of_Mauritius.svg'),
('.mv', 'Maldives', 2, '300', '317280', '2606000000', 'MalÃ©', '//upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_Maldives.svg'),
('.mw', 'Malawi', 1, '118484', '16829000', '5653000000', 'Lilongwe', '//upload.wikimedia.org/wikipedia/commons/1/10/Flag_of_Malawi_%282010-2012%29.svg'),
('.mx', 'Mexico', 6, '1964375', '119713203', '1183655000000', 'Mexico City', '//upload.wikimedia.org/wikipedia/commons/f/fc/Flag_of_Mexico.svg'),
('.my', 'Malaysia', 2, '330803', '30177000', '304726000000', 'Kuala Lumpur', '//upload.wikimedia.org/wikipedia/commons/6/66/Flag_of_Malaysia.svg'),
('.mz', 'Mozambique', 1, '801590', '23700715', '14605000000', 'Maputo', '//upload.wikimedia.org/wikipedia/commons/d/d0/Flag_of_Mozambique.svg'),
('.na', 'Namibia', 1, '825615', '2113077', '12807000000', 'Windhoek', '//upload.wikimedia.org/wikipedia/commons/0/00/Flag_of_Namibia.svg'),
('.ne', 'Niger', 1, '1267000', '17138707', '6773000000', 'Niamey', '//upload.wikimedia.org/wikipedia/commons/f/f4/Flag_of_Niger.svg'),
('.ng', 'Nigeria', 1, '923768', '178517000', '286470000000', 'Abuja', '//upload.wikimedia.org/wikipedia/commons/7/79/Flag_of_Nigeria.svg'),
('.ni', 'Nicaragua', 6, '130373', '6071045', '10508000000', 'Managua', '//upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Nicaragua.svg'),
('.nl', 'Netherlands', 5, '41543', '16857500', '800535000000', 'Amsterdam', '//upload.wikimedia.org/wikipedia/commons/2/20/Flag_of_the_Netherlands.svg'),
('.no', 'Norway', 5, '323802', '5124383', '499667000000', 'Oslo', '//upload.wikimedia.org/wikipedia/commons/d/d9/Flag_of_Norway.svg'),
('.np', 'Nepal', 2, '147181', '26494504', '18029000000', 'Kathmandu', '//upload.wikimedia.org/wikipedia/commons/9/9b/Flag_of_Nepal.svg'),
('.nr', 'Nauru', 7, '21', '9945', '121000000', 'Yaren District', '//upload.wikimedia.org/wikipedia/commons/3/30/Flag_of_Nauru.svg'),
('.nz', 'New Zealand', 7, '270467', '4538520', '171256000000', 'Wellington', '//upload.wikimedia.org/wikipedia/commons/3/3e/Flag_of_New_Zealand.svg'),
('.om', 'Oman', 2, '309500', '4020000', '78111000000', 'Muscat', '//upload.wikimedia.org/wikipedia/commons/d/dd/Flag_of_Oman.svg'),
('.pa', 'Panama', 6, '75417', '3405813', '36253000000', 'Panama City', '//upload.wikimedia.org/wikipedia/commons/a/ab/Flag_of_Panama.svg'),
('.pe', 'Peru', 8, '1285216', '30475144', '204681000000', 'Lima', '//upload.wikimedia.org/wikipedia/commons/c/cf/Flag_of_Peru.svg'),
('.pg', 'Papua New Guinea', 7, '462840', '7398500', '15677000000', 'Port Moresby', '//upload.wikimedia.org/wikipedia/commons/e/e3/Flag_of_Papua_New_Guinea.svg'),
('.ph', 'Philippines', 2, '342353', '99804200', '250182000000', 'Manila', '//upload.wikimedia.org/wikipedia/commons/9/99/Flag_of_the_Philippines.svg'),
('.pk', 'Pakistan', 2, '881912', '188020000', '215117000000', 'Islamabad', '//upload.wikimedia.org/wikipedia/commons/3/32/Flag_of_Pakistan.svg'),
('.pl', 'Poland', 5, '312679', '38496000', '489852000000', 'Warsaw', '//upload.wikimedia.org/wikipedia/commons/1/12/Flag_of_Poland.svg'),
('.pt', 'Portugal', 5, '92090', '10477800', '212139000000', 'Lisbon', '//upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Portugal.svg'),
('.pw', 'Palau', 7, '459', '20901', '213000000', 'Ngerulmud', '//upload.wikimedia.org/wikipedia/commons/4/48/Flag_of_Palau.svg'),
('.py', 'Paraguay', 8, '406752', '6783374', '25935000000', 'AsunciÃ³n', '//upload.wikimedia.org/wikipedia/commons/2/27/Flag_of_Paraguay.svg'),
('.qa', 'Qatar', 2, '11586', '2174035', '192402000000', 'Doha', '//upload.wikimedia.org/wikipedia/commons/6/65/Flag_of_Qatar.svg'),
('.ro', 'Romania', 5, '238391', '19942642', '169396000000', 'Bucharest', '//upload.wikimedia.org/wikipedia/commons/7/73/Flag_of_Romania.svg'),
('.rs', 'Serbia', 5, '88361', '7181505', '38491000000', 'Belgrade', '//upload.wikimedia.org/wikipedia/commons/6/6d/Flag_of_Serbia_%282004-2010%29.svg'),
('.ru', 'Russia', 4, '17125242', '146000000', '2029812000000', 'Moscow', '//upload.wikimedia.org/wikipedia/commons/f/f3/Flag_of_Russia.svg'),
('.rw', 'Rwanda', 1, '26338', '10537222', '7103000000', 'Kigali', '//upload.wikimedia.org/wikipedia/commons/1/17/Flag_of_Rwanda.svg'),
('.sa', 'Saudi Arabia', 2, '2149690', '29994272', '711050000000', 'Riyadh', '//upload.wikimedia.org/wikipedia/commons/0/0d/Flag_of_Saudi_Arabia.svg'),
('.sb', 'Solomon Islands', 7, '28896', '581344', '1010000000', 'Honiara', '//upload.wikimedia.org/wikipedia/commons/7/74/Flag_of_the_Solomon_Islands.svg'),
('.sc', 'Seychelles', 1, '452', '90945', '1031000000', 'Victoria', '//upload.wikimedia.org/wikipedia/commons/f/fc/Flag_of_Seychelles.svg'),
('.sd', 'Sudan', 1, '1886068', '37289406', '51453000000', 'Khartoum', '//upload.wikimedia.org/wikipedia/commons/0/01/Flag_of_Sudan.svg'),
('.se', 'Sweden', 5, '450295', '9675885', '523804000000', 'Stockholm', '//upload.wikimedia.org/wikipedia/commons/4/4c/Flag_of_Sweden.svg'),
('.sg', 'Singapore', 2, '710', '5399200', '276520000000', 'Singapore', '//upload.wikimedia.org/wikipedia/commons/4/48/Flag_of_Singapore.svg'),
('.si', 'Slovenia', 5, '20273', '2063151', '45380000000', 'Ljubljana', '//upload.wikimedia.org/wikipedia/commons/f/f0/Flag_of_Slovenia.svg'),
('.sk', 'Slovakia', 5, '49037', '5415949', '91349000000', 'Bratislava', '//upload.wikimedia.org/wikipedia/commons/e/e6/Flag_of_Slovakia.svg'),
('.sl', 'Sierra Leone', 1, '71740', '6190280', '43366000000', 'Freetown', '//upload.wikimedia.org/wikipedia/commons/1/17/Flag_of_Sierra_Leone.svg'),
('.sm', 'San Marino', 5, '61', '32637', '1853000000', 'San Marino', '//upload.wikimedia.org/wikipedia/commons/b/b1/Flag_of_San_Marino.svg'),
('.sn', 'Senegal', 1, '196722', '12873601', '13962000000', 'Dakar', '//upload.wikimedia.org/wikipedia/commons/f/fd/Flag_of_Senegal.svg'),
('.so', 'Somalia', 1, '637657', '10806000', '1306000000', 'Mogadishu', '//upload.wikimedia.org/wikipedia/commons/a/a0/Flag_of_Somalia.svg'),
('.sr', 'Suriname', 8, '163820', '534189', '5012000000', 'Paramaribo', '//upload.wikimedia.org/wikipedia/commons/6/60/Flag_of_Suriname.svg'),
('.ss', 'South Sudan', 1, '619745', '11739000', '10060000000', 'Juba', '//upload.wikimedia.org/wikipedia/commons/7/7a/Flag_of_South_Sudan.svg'),
('.st', 'Sao TomÃ© and PrÃ­ncipe', 1, '964', '190428', '707000000', 'SÃ£o TomÃ©', '//upload.wikimedia.org/wikipedia/commons/4/4f/Flag_of_Sao_Tome_and_Principe.svg'),
('.sv', 'El Salvador', 6, '21041', '6384000', '23864000000', 'San Salvador', '//upload.wikimedia.org/wikipedia/commons/3/34/Flag_of_El_Salvador.svg'),
('.sy', 'Syria', 2, '185180', '21987000', '46540000000', 'Damascus', '//upload.wikimedia.org/wikipedia/commons/5/53/Flag_of_Syria.svg'),
('.sz', 'Swaziland', 1, '17364', '1268000', '3861000000', 'Lobamba', '//upload.wikimedia.org/wikipedia/commons/1/1e/Flag_of_Swaziland.svg'),
('.td', 'Chad', 1, '1284000', '13211000', '10183000000', 'N\'Djamena', '//upload.wikimedia.org/wikipedia/commons/4/4b/Flag_of_Chad.svg'),
('.tg', 'Togo', 1, '56785', '6993000', '3917000000', 'LomÃ©', '//upload.wikimedia.org/wikipedia/commons/9/91/Flag_of_Togo_%281958-1960%29.svg'),
('.th', 'Thailand', 2, '513120', '64456700', '385694000000', 'Bangkok', '//upload.wikimedia.org/wikipedia/commons/a/a9/Flag_of_Thailand.svg'),
('.tj', 'Tajikistan', 2, '143100', '8160000', '7633000000', 'Dushanbe', '//upload.wikimedia.org/wikipedia/commons/d/d0/Flag_of_Tajikistan.svg'),
('.tl', 'Timor-Leste', 2, '14874', '1212107', '5387000000', 'Dili', '//upload.wikimedia.org/wikipedia/commons/2/26/Flag_of_East_Timor.svg'),
('.tm', 'Turkmenistan', 2, '488100', '5307000', '33466000000', 'AÅŸgabat', '//upload.wikimedia.org/wikipedia/commons/1/1b/Flag_of_Turkmenistan.svg'),
('.tn', 'Tunisia', 1, '163610', '10886500', '45132000000', 'Tunis', '//upload.wikimedia.org/wikipedia/commons/c/ce/Flag_of_Tunisia.svg'),
('.to', 'Tonga', 7, '747', '103036', '465000000', 'Nuku\'alofa', '//upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Tonga.svg'),
('.tr', 'Turkey', 2, '783562', '76667864', '788299000000', 'Ankara', '//upload.wikimedia.org/wikipedia/commons/b/b4/Flag_of_Turkey.svg'),
('.tt', 'Trinidad and Tobago', 3, '5130', '1328019', '23225000000', 'Port of Spain', '//upload.wikimedia.org/wikipedia/commons/6/64/Flag_of_Trinidad_and_Tobago.svg'),
('.tv', 'Tuvalu', 7, '26', '11323', '40000000', 'Funafuti', '//upload.wikimedia.org/wikipedia/commons/3/38/Flag_of_Tuvalu.svg'),
('.tw', 'Taiwan', 2, '36193', '23386883', NULL, 'Taipei', '//upload.wikimedia.org/wikipedia/commons/7/72/Flag_of_the_Republic_of_China.svg'),
('.tz', 'Tanzania', 1, '945087', '44928923', '28249000000', 'Dodoma', '//upload.wikimedia.org/wikipedia/commons/3/38/Flag_of_Tanzania.svg'),
('.ua', 'Ukraine', 5, '603500', '43009258', '176309000000', 'Kiev', '//upload.wikimedia.org/wikipedia/commons/4/49/Flag_of_Ukraine.svg'),
('.ug', 'Uganda', 1, '241550', '35357000', '21736000000', 'Kampala', '//upload.wikimedia.org/wikipedia/commons/4/4e/Flag_of_Uganda.svg'),
('.uk', 'United Kingdom', 5, '242900', '64105700', '2471600000000', 'London', '//upload.wikimedia.org/wikipedia/commons/a/ae/Flag_of_the_United_Kingdom.svg'),
('.us', 'United States', 6, '9826675', '318320000', '16244600000000', 'Washington, D.C.', '//upload.wikimedia.org/wikipedia/commons/a/a4/Flag_of_the_United_States.svg'),
('.uy', 'Uruguay', 8, '181034', '3286314', '49919000000', 'Montevideo', '//upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Uruguay.svg'),
('.uz', 'Uzbekistan', 2, '447400', '30492800', '51414000000', 'Tashkent', '//upload.wikimedia.org/wikipedia/commons/8/84/Flag_of_Uzbekistan.svg'),
('.va', 'Vatican City', 5, '0', '839', NULL, NULL, '//upload.wikimedia.org/wikipedia/commons/0/00/Flag_of_the_Vatican_City.svg'),
('.vc', 'Saint Vincent and the Grenadines', 8, '389', '109000', '694000000', 'Kingstown', '//upload.wikimedia.org/wikipedia/commons/6/6d/Flag_of_Saint_Vincent_and_the_Grenadines.svg'),
('.ve', 'Venezuela', 8, '916445', '28946101', '382424000000', 'Caracas', '//upload.wikimedia.org/wikipedia/commons/0/06/Flag_of_Venezuela.svg'),
('.vn', 'Vietnam', 2, '331212', '89708900', '155820000000', 'Hanoi', '//upload.wikimedia.org/wikipedia/commons/2/21/Flag_of_Vietnam.svg'),
('.vu', 'Vanuatu', 7, '12189', '264652', '752000000', 'Port Vila', '//upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Vanuatu.svg'),
('.ws', 'Samoa', 7, '2842', '187820', '681000000', 'Apia', '//upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Samoa.svg'),
('.ye', 'Yemen', 2, '527968', '25235000', '32831000000', 'Sanaâ€˜a', '//upload.wikimedia.org/wikipedia/commons/8/89/Flag_of_Yemen.svg'),
('.za', 'South Africa', 1, '1221037', '52981991', '384313000000', 'Pretoria', '//upload.wikimedia.org/wikipedia/commons/a/af/Flag_of_South_Africa.svg'),
('.zm', 'Zambia', 1, '752612', '15023315', '21490000000', 'Lusaka', '//upload.wikimedia.org/wikipedia/commons/0/06/Flag_of_Zambia.svg'),
('.zw', 'Zimbabwe', 1, '390757', '13061239', '9802000000', 'Harare', '//upload.wikimedia.org/wikipedia/commons/6/6a/Flag_of_Zimbabwe.svg'),
('.zz', 'Negara Masa Depan', NULL, '0', '0', '0', 'Ibukota Depan', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `benua`
--
ALTER TABLE `benua`
  ADD PRIMARY KEY (`bn_id`);

--
-- Indeks untuk tabel `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`ng_kode`),
  ADD KEY `ng_bn_id` (`ng_bn_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
