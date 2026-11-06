<?php
class ControllerProductService extends Controller
{

    private function getProductCategoryImportGroups() {
        $groups = array(
            array(
                'product_ids' => '50,69,73,74,75,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,606,607,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,761,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,804,806,807,808,809,810,811,812,813,816,817,818,825,826,827,887,888,894,895,896,897,898,899,900,902,903,904,905,906,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,961,962,963,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,987,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1018,1019,1020,1021,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1075,1076,1077,1078,1079,1080,1081,1082,1083,1085,1087,1088,1089,1095,1096,1107,1108,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1196,1217,1218,1222,1223,1224,1225,1227,1229,1232,1233,1234,1236,1237,1238,1240,1241,1244,1247,1248,1249,1255,1256,1257,1258,1264,1266,1267,1268,1269,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1285,1286,1287,1288,1289,1290,1291,1292,1293,1296,1298,1302,1304,1305,1306,1307,1308,1309,1310,1311,1312,1316,1317,1318,1319,1320,1323,1324,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1363,1364,1365,1366,1367,1369,1370,1371,1372,1373,1374,1375,1376,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1402,1403,1410,1415,1424,1425,1427,1431,1432,1435,1440,1441,1443,1445,1447,1448,1450,1451,1461,1462,1464,1465,1466,1469,1472,1475,1477,1488,1493,1496,1497,1500,1502,1503,1505,1506,1509,1510,1514,1516,1517,1523,1524,1527,1531,1532,1534,1535,1536,1537,1539,1545,1546,1548,1553,1555,1556,1559,1562,1564,1566,1567,1572,1574,1580,1581,1582,1583,1584,1586,1588,1591,1594,1596,1598,1601,1602,1603,1604,1605,1607,1611,1614,1615,1616,1617,1618,1623,1624,1625,1626,1627,1628,1629,1630,1633,1634,1635,1636,1638,1639,1640,1642,1645,1646,1647,1648,1651,1652,1655,1668',
                'parent_category' => 'Кольца',
                'our_project' => 'Кольца'
            ),
array(
                'product_ids' => '674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,819,820,821,824,830,831,832,839,874,875,876,877,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,981,982,983,984,985,986,1015,1016,1017,1035,1036,1037,1038,1039,1044,1045,1046,1047,1048,1104,1105,1106,1200,1215,1216,1220,1228,1230,1235,1243,1245,1246,1253,1260,1261,1262,1271,1272,1284,1297,1299,1314,1315,1321,1322,1325,1326,1327,1328,1329,1348,1349,1350,1351,1352,1377,1378,1379,1380,1381,1385,1386,1401,1407,1408,1421,1428,1430,1433,1442,1452,1459,1473,1479,1484,1491,1511,1512,1515,1519,1520,1521,1522,1529,1530,1542,1544,1547,1549,1550,1551,1552,1561,1585,1590,1597,1606,1622,1632,1637,1644,1650,2021',
                'parent_category' => 'Серьги',
                'our_project' => 'Серьги'
            ),
            array(
                'product_ids' => '564,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,822,848,849,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,889,890,891,892,907,908,909,957,958,959,960,1013,1040,1041,1042,1043,1049,1050,1051,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1074,1195,1197,1208,1211,1221,1250,1254,1265,1353,1368,1387,1388,1389,1390,1426,1439,1460,1468,1470,1471,1474,1476,1498,1501,1508,1526,1533,1540,1557,1565,1568,1570,1573,1575,1576,1577,1578,1579,1587,1595,1608,1620,1621,1649',
                'parent_category' => 'Браслеты',
                'our_project' => 'Браслеты'
            ),
            array(
                'product_ids' => '347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,565,566,567,568,569,570,771,834,835,836,838,841,842,1480,1481,1482,1483',
                'parent_category' => 'Цепочки',
                'our_project' => 'Цепочки'
            ),
            array(
                'product_ids' => '735,736,738,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,823,828,829,833,837,840,843,844,845,846,847,869,870,871,872,873,879,880,881,882,883,884,885,886,1097,1098,1099,1100,1101,1102,1103,1114,1118,1198,1199,1201,1202,1203,1204,1205,1206,1207,1209,1210,1212,1213,1214,1219,1226,1231,1251,1263,1270,1294,1295,1300,1301,1354,1355,1357,1358,1359,1360,1361,1362,1382,1384,1404,1409,1411,1412,1413,1418,1419,1422,1429,1434,1436,1437,1438,1449,1458,1463,1467,1485,1487,1492,1495,1499,1504,1507,1513,1525,1541,1543,1558,1563,1571,1643,1656,1670,1671,1672,1673,1690,1691,1692,1693,1694,1695,1696,1697,1698,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1711,1712,1713,1714,1715,1716,1717,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019',
                'parent_category' => 'Подвески и кулоны',
                'our_project' => 'Подвески и кулоны'
            ),
            array(
                'product_ids' => '814,815,1242,1252,1356,1383,1560,1631,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1756,1757,1758,1759,1761,1762,1763,1764,1765,1766,1767,1800',
                'parent_category' => 'Колье',
                'our_project' => 'Колье'
            ),
            array(
                'product_ids' => '762,763,764,765,766,767,1084,1090,1091,1092,1093,1094,1111,1112,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1453,1454,1593,1599,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1998,1999,2000,2001,2002,2003,2004,2005,2006',
                'parent_category' => 'Запонки',
                'our_project' => 'Запонки'
            ),
            array(
                'product_ids' => '769,878,893,1420,1478,1538,1592,1641,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799',
                'parent_category' => 'Броши',
                'our_project' => 'Броши'
            ),
            array(
                'product_ids' => '1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1997',
                'parent_category' => 'Диадемы и тиары',
                'our_project' => 'Диадемы и тиары'
            ),
            array(
                'product_ids' => '1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1927,1930,1931,1932',
                'parent_category' => 'Бодичейны',
                'our_project' => 'Бодичейны'
            ),
            array(
                'product_ids' => '1669,1670,1671,1672,1673,1690,1691,1692,1693,1694,1695,1696,1697,1698,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738',
                'parent_category' => 'Талисманы-амулеты',
                'our_project' => 'Талисманы и амулеты'
            ),
            array(
                'product_ids' => '768,770,1109,1110,1113,1115,1116,1117,1119,1405,1406,1414,1417,1423,1444,1446,1455,1456,1457,1494,1528,1569,1658,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,2022',
                'parent_category' => 'Ювелирные сувениры',
                'our_project' => 'Сувениры и подарки'
            ),
            array(
                'product_ids' => '1416,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,2022',
                'parent_category' => 'Брелоки',
                'our_project' => 'Брелоки'
            )
        );

        return $groups;
    }

    public function generate_product_category_sql() {
        $groups = $this->getProductCategoryImportGroups();
        $owners = array();
        $duplicates = array();

        foreach ($groups as $group) {
            foreach (explode(',', $group['product_ids']) as $productId) {
                if (isset($owners[$productId]) && $owners[$productId] !== $group['parent_category']) {
                    $duplicates[$productId] = $owners[$productId] . ' / ' . $group['parent_category'];
                } else {
                    $owners[$productId] = $group['parent_category'];
                }
            }
        }

        $rows = array();
        $allQueries = array();

        foreach ($groups as $group) {
            $productIds = array_filter(explode(',', $group['product_ids']), function($productId) use ($duplicates) {
                return !isset($duplicates[$productId]);
            });
            $categoryQuery = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "category_description WHERE language_id = " . (int)$this->config->get('config_language_id') . " AND name = '" . $this->db->escape($group['parent_category']) . "' ORDER BY category_id ASC LIMIT 1");
            $projectQuery = $this->db->query("SELECT id FROM " . DB_PREFIX . "our_project_categories WHERE name = '" . $this->db->escape($group['our_project']) . "' ORDER BY id ASC LIMIT 1");
            $categoryId = $categoryQuery->num_rows ? (int)$categoryQuery->row['category_id'] : 0;
            $projectId = $projectQuery->num_rows ? (int)$projectQuery->row['id'] : 0;
            $categoryName = $this->db->escape($group['parent_category']);
            $projectName = $this->db->escape($group['our_project']);
            $queries = array(
                "UPDATE `" . DB_PREFIX . "product` SET `parent_category_id` = (SELECT `category_id` FROM `" . DB_PREFIX . "category_description` WHERE `language_id` = " . (int)$this->config->get('config_language_id') . " AND `name` = '" . $categoryName . "' ORDER BY `category_id` ASC LIMIT 1) WHERE `product_id` IN (" . implode(',', $productIds) . ");",
                "UPDATE `" . DB_PREFIX . "category` SET `our_project_id` = (SELECT `id` FROM `" . DB_PREFIX . "our_project_categories` WHERE `name` = '" . $projectName . "' ORDER BY `id` ASC LIMIT 1) WHERE `category_id` = (SELECT `category_id` FROM `" . DB_PREFIX . "category_description` WHERE `language_id` = " . (int)$this->config->get('config_language_id') . " AND `name` = '" . $categoryName . "' ORDER BY `category_id` ASC LIMIT 1);"
            );
            $allQueries = array_merge($allQueries, $queries);

            $rows[] = array(
                'parent_category' => $group['parent_category'],
                'category_id' => $categoryId,
                'our_project' => $group['our_project'],
                'project_id' => $projectId,
                'product_count' => count($productIds),
                'skipped_count' => count(explode(',', $group['product_ids'])) - count($productIds),
                'queries' => $queries
            );
        }

        $html = '<!doctype html><html><head><meta charset="utf-8"><title>SQL обновления товаров и категорий</title>'
            . '<style>body{font-family:Arial,sans-serif;margin:24px}textarea{width:100%;height:180px;white-space:pre;overflow:auto;margin-bottom:24px}table{border-collapse:collapse;width:100%}th,td{border:1px solid #ccc;padding:8px;text-align:left;vertical-align:top}pre{white-space:pre;overflow:auto;max-width:1000px;margin:0}.error{background:#ffe5e5}</style>'
            . '</head><body><h2>Все SQL-запросы одной строкой</h2><textarea readonly>'
            . htmlspecialchars(implode(' ', $allQueries), ENT_QUOTES, 'UTF-8')
            . '</textarea>';

        if ($duplicates) {
            $html .= '<h2>Конфликты в Excel: эти товары исключены из SQL</h2><table><thead><tr><th>ID товара</th><th>Категории</th></tr></thead><tbody>';
            foreach ($duplicates as $productId => $categories) {
                $html .= '<tr class="error"><td>' . (int)$productId . '</td><td>' . htmlspecialchars($categories, ENT_QUOTES, 'UTF-8') . '</td></tr>';
            }
            $html .= '</tbody></table><br>';
        }

        $html .= '<table><thead><tr><th>Главная категория</th><th>ID категории</th><th>Наша работа</th><th>ID категории работ</th><th>Товаров</th><th>Исключено</th><th>SQL</th></tr></thead><tbody>';

        foreach ($rows as $row) {
            $html .= '<tr' . (!$row['category_id'] || !$row['project_id'] ? ' class="error"' : '') . '>'
                . '<td>' . htmlspecialchars($row['parent_category'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>' . $row['category_id'] . '</td>'
                . '<td>' . htmlspecialchars($row['our_project'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>' . $row['project_id'] . '</td>'
                . '<td>' . $row['product_count'] . '</td>'
                . '<td>' . $row['skipped_count'] . '</td>'
                . '<td><pre>' . htmlspecialchars(implode("\n", $row['queries']), ENT_QUOTES, 'UTF-8') . '</pre></td></tr>';
        }

        $html .= '</tbody></table></body></html>';
        $this->response->addHeader('Content-Type: text/html; charset=utf-8');
        $this->response->setOutput($html);
    }

    public function check_import_main_category() {
        $expected = array();
        $conflicts = array();
        foreach ($this->getProductCategoryImportGroups() as $group) {
            // The souvenirs sheet uses "Сувениры", unlike the old parent-category import.
            $name = $group['parent_category'] === 'Ювелирные сувениры' ? 'Сувениры' : $group['parent_category'];
            foreach (explode(',', $group['product_ids']) as $id) {
                $id = (int)$id;
                if (isset($expected[$id]) && $expected[$id] !== $name) {
                    if ($name === 'Талисманы-амулеты') {
                        $expected[$id] = $name;
                        unset($conflicts[$id]);
                    } elseif ($expected[$id] !== 'Талисманы-амулеты') {
                        $conflicts[$id] = $expected[$id] . ' / ' . $name;
                    }
                } else {
                    $expected[$id] = $name;
                }
            }
        }

        $names = array_unique(array_values($expected));
        $quoted = array();
        foreach ($names as $name) $quoted[] = "'" . $this->db->escape($name) . "'";
        $category_rows = $this->db->query("SELECT category_id, name FROM " . DB_PREFIX . "category_description WHERE language_id = " . (int)$this->config->get('config_language_id') . " AND name IN (" . implode(',', $quoted) . ")")->rows;
        $categories = array();
        foreach ($category_rows as $row) $categories[$row['name']][] = (int)$row['category_id'];

        $products = array();
        $current = array();
        foreach (array_chunk(array_keys($expected), 500) as $ids) {
            $list = implode(',', $ids);
            foreach ($this->db->query("SELECT product_id FROM " . DB_PREFIX . "product WHERE product_id IN (" . $list . ")")->rows as $row) {
                $products[(int)$row['product_id']] = true;
            }
            foreach ($this->db->query("SELECT product_id, category_id FROM " . DB_PREFIX . "product_to_category WHERE main_category = 1 AND product_id IN (" . $list . ")")->rows as $row) {
                $current[(int)$row['product_id']][] = (int)$row['category_id'];
            }
        }

        $rows = array();
        $sql = array('START TRANSACTION;');
        foreach ($expected as $id => $name) {
            if (isset($conflicts[$id])) {
                $status = 'Конфликт в исходных данных: ' . $conflicts[$id];
            } elseif (empty($products[$id])) {
                $status = 'Товар не найден';
            } elseif (count(isset($categories[$name]) ? $categories[$name] : array()) !== 1) {
                $status = 'Категория не найдена или имя не уникально';
            } else {
                $category_id = $categories[$name][0];
                $current_ids = isset($current[$id]) ? $current[$id] : array();
                if ($current_ids === array($category_id)) continue;
                $status = 'Требуется обновление';
                $sql[] = "UPDATE " . DB_PREFIX . "product_to_category SET main_category = 0 WHERE product_id = " . $id . " AND main_category = 1;";
                $sql[] = "INSERT INTO " . DB_PREFIX . "product_to_category (product_id, category_id, main_category) VALUES (" . $id . ", " . $category_id . ", 1) ON DUPLICATE KEY UPDATE main_category = 1;";
            }
            $rows[] = array($id, $name, isset($current[$id]) ? implode(', ', $current[$id]) : '', $status);
        }
        $sql[] = 'COMMIT;';

        if (!empty($this->request->get['sql'])) {
            $this->response->addHeader('Content-Type: text/plain; charset=utf-8');
            $this->response->setOutput(implode("\n", $sql));
            return;
        }

        $html = '<!doctype html><html><head><meta charset="utf-8"><title>Проверка главных категорий</title><style>body{font-family:Arial,sans-serif;margin:24px}textarea{width:100%;height:220px}table{border-collapse:collapse}th,td{border:1px solid #ccc;padding:6px}</style></head><body>';
        $html .= '<h1>Проверка главных категорий</h1><p>Товаров в источнике: ' . count($expected) . '. Расхождений и ошибок: ' . count($rows) . '. SQL не выполняется автоматически.</p>';
        $html .= '<h2>SQL импорта</h2><p><a href="' . htmlspecialchars($this->url->link('product/service/check_import_main_category', 'sql=1'), ENT_QUOTES, 'UTF-8') . '">Открыть только SQL для обновления</a></p><textarea readonly>' . htmlspecialchars(implode("\n", $sql), ENT_QUOTES, 'UTF-8') . '</textarea>';
        $html .= '<h2>Расхождения</h2><table><tr><th>ID товара</th><th>Ожидаемая категория</th><th>Текущие ID главных категорий</th><th>Статус</th></tr>';
        foreach ($rows as $row) {
            $html .= '<tr>';
            foreach ($row as $value) $html .= '<td>' . htmlspecialchars((string)$value, ENT_QUOTES, 'UTF-8') . '</td>';
            $html .= '</tr>';
        }
        $html .= '</table></body></html>';
        $this->response->addHeader('Content-Type: text/html; charset=utf-8');
        $this->response->setOutput($html);
    }

    public function parse_google_doc() {
        require_once DIR_GOOGLE . 'vendor/autoload.php';

        $googleAccountKeyFilePath = DIR_GOOGLE . 'my-project-67961-1717153477456-5767271f21f8.json';
        putenv('GOOGLE_APPLICATION_CREDENTIALS=' . $googleAccountKeyFilePath);

        $client = new Google_Client();
        $client->useApplicationDefaultCredentials();
        $client->addScope('https://www.googleapis.com/auth/spreadsheets.readonly');

        $service = new Google_Service_Sheets($client);
        $spreadsheetId = '19xz_v2JeKY-7FomDFcrU2_-oegQ9IZy727uhwhCo7Io';
        $sheetNames = array(
            'Кольца',
            'Серьги',
            'Браслеты',
            'Цепочки',
            'Подвески',
            'Колье',
            'Запонки',
            'Броши',
            'Диадемы и тиары',
            'Бодичейны',
            'Талисманы и амулеты',
            'Ювелирные сувениры',
            'Брелоки'

        );

        $result = array();

        foreach ($sheetNames as $sheetName) {
            $range = "'" . str_replace("'", "''", $sheetName) . "'!A:E";
            $response = $service->spreadsheets_values->get($spreadsheetId, $range);
            $result[$sheetName] = array();

            foreach ($response->getValues() as $rowIndex => $row) {
                if ($rowIndex === 0 || !array_filter($row, 'strlen')) {
                    continue;
                }

                $result[$sheetName][] = array(
                    'id' => isset($row[0]) ? trim($row[0]) : '',
                    'link' => isset($row[1]) ? trim($row[1]) : '',
                    'name' => isset($row[2]) ? trim($row[2]) : '',
                    'category' => array(
                        isset($row[3]) ? trim($row[3]) : '',
                        isset($row[4]) ? trim($row[4]) : ''
                    )
                );
            }
        }

        $detectedProductId = 1669;
        $detectedCategories = array();
        $sqlQueries = array();
        $categoryIds = array();

        foreach ($result as $sheetName => $rows) {
            foreach ($rows as $row) {
                $productId = (int)$row['id'];

                if (!$productId) {
                    continue;
                }

                foreach ($row['category'] as $categoryName) {
                    foreach (explode(',', $categoryName) as $category) {
                        $category = trim($category);

                        if ($category === '') {
                            continue;
                        }

                        if ($productId === $detectedProductId && !isset($detectedCategories[$category])) {
                            $detectedCategories[$category] = array(
                                'sheet' => $sheetName,
                                'product_id' => $productId,
                                'product_name' => $row['name'],
                                'category' => $category
                            );
                        }

                        if (!isset($categoryIds[$category])) {
                            $categorySql = "SELECT category_id FROM " . DB_PREFIX . "category_description WHERE name = '" . $this->db->escape($category) . "' LIMIT 1";
                            $sqlQueries[] = $categorySql;
                            $categoryQuery = $this->db->query($categorySql);
                            $categoryIds[$category] = $categoryQuery->num_rows ? (int)$categoryQuery->row['category_id'] : 0;
                        }

                        $categoryId = $categoryIds[$category];

                        if (!$categoryId) {
                            continue;
                        }

                        $relationSql = "SELECT product_id FROM " . DB_PREFIX . "product_to_category WHERE product_id = " . $productId . " AND category_id = " . $categoryId . " LIMIT 1";
                        $sqlQueries[] = $relationSql;
                        $relationQuery = $this->db->query($relationSql);

                        if (!$relationQuery->num_rows) {
                            $insertSql = "INSERT INTO " . DB_PREFIX . "product_to_category (product_id, category_id, main_category) VALUES (" . $productId . ", " . $categoryId . ", 0)";
                            $sqlQueries[] = $insertSql;
                            $this->db->query($insertSql);
                        }
                    }
                }
            }
        }

        $html = '<!doctype html><html><head><meta charset="utf-8"><title>SQL queries</title>'
            . '<style>table{border-collapse:collapse;width:100%;margin-bottom:24px}th,td{border:1px solid #ccc;padding:6px;text-align:left}td{font-family:monospace}</style>'
            . '</head><body><h2>Категории из Google Sheet для товара #' . $detectedProductId . '</h2>'
            . '<table><tr><th>Лист</th><th>ID товара</th><th>Название товара</th><th>Категория</th></tr>';

        foreach ($detectedCategories as $row) {
            $html .= '<tr>'
                . '<td>' . htmlspecialchars($row['sheet'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>' . (int)$row['product_id'] . '</td>'
                . '<td>' . htmlspecialchars($row['product_name'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>' . htmlspecialchars($row['category'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '</tr>';
        }

        $html .= '</table><h2>SQL-запросы для всех листов</h2>'
            . '<table><tr><th>#</th><th>Запрос</th></tr>';

        foreach ($sqlQueries as $index => $sql) {
            $html .= '<tr><td>' . ($index + 1) . '</td><td>' . htmlspecialchars($sql, ENT_QUOTES, 'UTF-8') . '</td></tr>';
        }

        $html .= '</table></body></html>';

        $this->response->addHeader('Content-Type: text/html; charset=utf-8');
        $this->response->setOutput($html);

        return $result;
    }

    public function parse_google_doc2() {
        require_once DIR_GOOGLE . 'vendor/autoload.php';

        $googleAccountKeyFilePath = DIR_GOOGLE . 'my-project-67961-1717153477456-5767271f21f8.json';
        putenv('GOOGLE_APPLICATION_CREDENTIALS=' . $googleAccountKeyFilePath);

        $client = new Google_Client();
        $client->useApplicationDefaultCredentials();
        $client->addScope('https://www.googleapis.com/auth/spreadsheets.readonly');

        $service = new Google_Service_Sheets($client);
        $spreadsheetId = '1YNWLtvwIFs7psqMCLxJWEbW9tstP9X2pr-_Nu0FQKx0';
        $sheetNames = array(
            'Талисманы и амулеты',
            'Кулоны и подвески',
            'Броши',
            'Брелоки > Талисманы',
            'Брелоки > Сувениры',
            'Сувениры',
            'Сувениры на День Рождение'
        );

        $result = array();

        foreach ($sheetNames as $sheetName) {
            $range = "'" . str_replace("'", "''", $sheetName) . "'!A:D";
            $response = $service->spreadsheets_values->get($spreadsheetId, $range);
            $result[$sheetName] = array();

            foreach ($response->getValues() as $rowIndex => $row) {
                if ($rowIndex === 0 || !array_filter($row, 'strlen')) {
                    continue;
                }

                $result[$sheetName][] = array(
                    'id' => isset($row[0]) ? trim($row[0]) : '',
                    'link' => isset($row[1]) ? trim($row[1]) : '',
                    'name' => isset($row[2]) ? trim($row[2]) : '',
                    'category' => array(
                        isset($row[3]) ? trim($row[3]) : ''
                    )
                );
            }
        }

        $detectedProductId = 1669;
        $detectedCategories = array();
        $sqlQueries = array();
        $categoryIds = array();

        foreach ($result as $sheetName => $rows) {
            foreach ($rows as $row) {
                $productId = (int)$row['id'];

                if (!$productId) {
                    continue;
                }

                foreach ($row['category'] as $categoryName) {
                    foreach (explode(',', $categoryName) as $category) {
                        $category = trim($category);

                        if ($category === '') {
                            continue;
                        }

                        if ($productId === $detectedProductId && !isset($detectedCategories[$category])) {
                            $detectedCategories[$category] = array(
                                'sheet' => $sheetName,
                                'product_id' => $productId,
                                'product_name' => $row['name'],
                                'category' => $category
                            );
                        }

                        if (!isset($categoryIds[$category])) {
                            $categorySql = "SELECT category_id FROM " . DB_PREFIX . "category_description WHERE name = '" . $this->db->escape($category) . "' LIMIT 1";
                            $sqlQueries[] = $categorySql;
                            $categoryQuery = $this->db->query($categorySql);
                            $categoryIds[$category] = $categoryQuery->num_rows ? (int)$categoryQuery->row['category_id'] : 0;
                        }

                        $categoryId = $categoryIds[$category];

                        if (!$categoryId) {
                            continue;
                        }

                        $relationSql = "SELECT product_id FROM " . DB_PREFIX . "product_to_category WHERE product_id = " . $productId . " AND category_id = " . $categoryId . " LIMIT 1";
                        $sqlQueries[] = $relationSql;
                        $relationQuery = $this->db->query($relationSql);

                        if (!$relationQuery->num_rows) {
                            $insertSql = "INSERT INTO " . DB_PREFIX . "product_to_category (product_id, category_id, main_category) VALUES (" . $productId . ", " . $categoryId . ", 0)";
                            $sqlQueries[] = $insertSql;
                            $this->db->query($insertSql);
                        }
                    }
                }
            }
        }

        $html = '<!doctype html><html><head><meta charset="utf-8"><title>SQL queries</title>'
            . '<style>table{border-collapse:collapse;width:100%;margin-bottom:24px}th,td{border:1px solid #ccc;padding:6px;text-align:left}td{font-family:monospace}</style>'
            . '</head><body><h2>Категории из Google Sheet для товара #' . $detectedProductId . '</h2>'
            . '<table><tr><th>Лист</th><th>ID товара</th><th>Название товара</th><th>Категория</th></tr>';

        foreach ($detectedCategories as $row) {
            $html .= '<tr>'
                . '<td>' . htmlspecialchars($row['sheet'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>' . (int)$row['product_id'] . '</td>'
                . '<td>' . htmlspecialchars($row['product_name'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>' . htmlspecialchars($row['category'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '</tr>';
        }

        $html .= '</table><h2>SQL-запросы для всех листов</h2>'
            . '<table><tr><th>#</th><th>Запрос</th></tr>';

        foreach ($sqlQueries as $index => $sql) {
            $html .= '<tr><td>' . ($index + 1) . '</td><td>' . htmlspecialchars($sql, ENT_QUOTES, 'UTF-8') . '</td></tr>';
        }

        $html .= '</table></body></html>';

        $this->response->addHeader('Content-Type: text/html; charset=utf-8');
        $this->response->setOutput($html);

        return $result;
    }

    public function getprods2() {

        ini_set('display_errors', '1');
        error_reporting(E_ALL);

        $this->load->model('catalog/category');
        $this->load->model('catalog/product');

        $sql = 'select * from oc_product';
        $query = $this->db->query($sql);

        echo '<table>';
        echo '<thead>';
        echo '<tr>';
        echo '<th>#</th>';
        echo '<th>ID</th>';
        echo '<th>УРЛ</th>';
        echo '<th>Название</th>';
        echo '<th>Title(база)</th>';
        echo '<th>Title</th>';
        echo '<th>H1</th>';
        echo '<th>Meta-Description(база)</th>';
        echo '<th>Meta-Description(генерация)</th>';
        //echo '<th>Meta-Description</th>';
        echo '<th>Canonical</th>';
        echo '<th>Текст (Description)</th>';
        echo '<th>Статус</th>';
        echo '<th>Фото</th>';
        echo '<th>Цена</th>';
        echo '<th>Цена за работу</th>';
        echo '<th>Цена за материал</th>';
        echo '</tr>';
        echo '</thead>';
        foreach ($query->rows as $row) {


            $status = 'Включено';
            if($row['status']==0) {
                $status = 'Выключено';
            }
            $foto = 'нет';
            if($row['image']) {
                $foto = 'Есть';
            }



            $sql = 'select * from oc_product_description where product_id='.$row['product_id'];
            $query2 = $this->db->query($sql);
            $product_info = $query2->row;

            if($product_info) {
                $f++;

                $prod_info = $this->product_get($row['product_id']);



                if ($product_info['meta_title']) {
                    //$category_info['meta_title'] = $category_info['name'];
                    $canonical = $this->url->link('product/product','product_id=' . $prod_info['prod_id']);
                    $description = html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8');
                    $price = $this->currency->format($this->tax->calculate($row['price'], $row['tax_class_id'], $this->config->get('config_tax')));
                    $price_works = $this->currency->format($this->tax->calculate($row['price_works'], $row['tax_class_id'], $this->config->get('config_tax')));
                    $price_materials = $this->currency->format($this->tax->calculate($row['price_materials'], $row['tax_class_id'], $this->config->get('config_tax')));

                    $id = $row['product_id'];
                    $name = $product_info['name'];
                    $title_db = $product_info['meta_title'];
                    if($title_db=='') {
                        $title = $product_info['name'];
                    } else {
                        $title = $title_db;
                    }

                    $h1 = $product_info['meta_h1'];
                    $meta_description_db = $product_info['meta_description'];
                    //      $meta_description = $category_info['meta_description'];
                    $url = $this->url->link('product/product', 'product_id='  . $id );

                    echo '<tr>';
                    echo '<td>'.$f.'</td>';
                    echo '<td>'.$id.'</td>';
                    echo '<td>'.$url.'</td>';
                    echo '<td>'.$name.'</td>';

                    echo '<td>'.$title_db.'</td>';
                    echo '<td>'.$title.'</td>';
                    echo '<td>'.$h1.'</td>';
                    echo '<td>'.$meta_description_db.'</td>';
                    echo '<td>'.$prod_info['meta_description'].'</td>';
                    echo '<td>'.$canonical.'</td>';
                    echo '<td>'.$description.'</td>';
                    echo '<td>'.$status.'</td>';
                    echo '<td>'.$foto.'</td>';
                    echo '<td>'.$price.'</td>';
                    echo '<td>'.$price_works.'</td>';
                    echo '<td>'.$price_materials.'</td>';
                    echo '</tr>';

                } else {
                    $nop++;
                }


            }




        }

        echo '</table>';

    }

    public function get_calc_products() {

        $manual_requested = isset($this->request->get['run_mode']) && $this->request->get['run_mode'] === 'manual';

        if ($manual_requested) {
            $this->set_calc_products_run_mode('manual');
        }

        $run_mode = $this->get_calc_products_run_mode();
        $manual = $run_mode === 'manual';

        if (!$manual && !$this->is_calc_products_cron_time()) {
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode(array(
                    'success' => false,
                    'skipped' => true,
                    'reason' => 'cron_time_window',
                    'mode' => $run_mode,
                    'message' => 'Cron works only from 01:00 to 08:00 server time'
                )));
            return;
        }

        $limit = isset($this->request->get['limit']) ? (int)$this->request->get['limit'] : 20;

        if ($limit < 1) {
            $limit = 5;
        }

        if ($limit > 100) {
            $limit = 100;
        }

        $queue_table = DB_PREFIX . 'umpc_calc_product_queue';

        if (!$this->calc_products_queue_table_exists($queue_table)) {
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode(array(
                'success' => false,
                'message' => 'Queue table does not exist',
                'mode' => $run_mode,
                'progress' => $this->get_calc_products_progress_data($queue_table)
            )));

            if ($manual) {
                $this->set_calc_products_run_mode('auto');
            }

            return;
        }

        $this->normalize_calc_products_queue($queue_table);

        if (!$manual && $this->is_calc_products_recalc_blocked()) {
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode(array(
                'success' => false,
                'skipped' => true,
                'reason' => 'low_rate_change_blocked',
                'mode' => $run_mode,
                'progress' => $this->get_calc_products_progress_data($queue_table)
            )));
            return;
        }

        $reset_queue = $manual_requested;

        if ($manual) {
            $progress = $this->get_calc_products_progress_data($queue_table);

            if (!empty($progress['processing'])) {
                $this->response->addHeader('Content-Type: application/json');
                $this->response->setOutput(json_encode(array(
                    'success' => false,
                    'processing' => true,
                    'message' => 'Recalculation is already running',
                    'mode' => $run_mode,
                    'progress' => $progress
                )));

                return;
            }

            if ($manual_requested && (!empty($progress['pending']) || !empty($progress['processing']))) {
                $reset_queue = false;
            }
        }

        $queued = $this->enqueue_calc_products($queue_table, $reset_queue);

        $sql = "SELECT q.product_id, p.umpc
                FROM `" . $queue_table . "` q
                INNER JOIN `" . DB_PREFIX . "product` p ON p.product_id = q.product_id
                WHERE q.flag = 1
                  AND p.umpc IS NOT NULL
                  AND p.umpc != ''
                ORDER BY q.product_id ASC
                LIMIT " . (int)$limit;
        $query = $this->db->query($sql);

        $result = array(
            'success' => true,
            'manual' => $manual,
            'mode' => $run_mode,
            'limit' => $limit,
            'queued' => $queued,
            'processed' => 0,
            'errors' => 0,
            'products' => array(),
            'progress' => array()
        );

        foreach ($query->rows as $row) {
            $product_id = (int)$row['product_id'];

            $this->db->query("UPDATE `" . $queue_table . "` SET flag = 2, date_modified = NOW() WHERE product_id = " . $product_id . " AND flag = 1");

            if (method_exists($this->db, 'countAffected') && !$this->db->countAffected()) {
                continue;
            }

            try {
                $buffer_level = ob_get_level();
                ob_start();
                $this->calc_product($row['umpc'], $product_id);

                while (ob_get_level() > $buffer_level) {
                    ob_end_clean();
                }

                $this->db->query("UPDATE `" . $queue_table . "` SET flag = 0, error_message = '', date_processed = NOW(), date_modified = NOW() WHERE product_id = " . $product_id);

                $result['processed']++;
                $result['products'][] = array(
                    'product_id' => $product_id,
                    'status' => 'processed'
                );
            } catch (Exception $e) {
                while (ob_get_level() > $buffer_level) {
                    ob_end_clean();
                }

                $this->db->query("UPDATE `" . $queue_table . "` SET flag = -1, error_message = '" . $this->db->escape($e->getMessage()) . "', date_modified = NOW() WHERE product_id = " . $product_id);

                $result['errors']++;
                $result['products'][] = array(
                    'product_id' => $product_id,
                    'status' => 'error',
                    'message' => $e->getMessage()
                );
            }
        }

        $result['progress'] = $this->get_calc_products_progress_data($queue_table);

        if ($manual && empty($result['progress']['pending']) && empty($result['progress']['processing'])) {
            $this->set_calc_products_run_mode('auto');
            $result['mode'] = 'auto';
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($result));

    }


    public function get_calc_products_progress() {

        $queue_table = DB_PREFIX . 'umpc_calc_product_queue';

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode(array(
            'success' => true,
            'mode' => $this->get_calc_products_run_mode(),
            'progress' => $this->get_calc_products_progress_data($queue_table)
        )));

    }


    public function test_calc_product() {

        $product_id = 1344;
        $product_query = $this->db->query("SELECT `product_id`, `umpc`, `price`, `price_works`, `price_materials` FROM `" . DB_PREFIX . "product` WHERE `product_id` = " . (int)$product_id . " LIMIT 1");

        $this->response->addHeader('Content-Type: text/html; charset=utf-8');

        if (!$product_query->num_rows) {
            $this->response->setOutput('<h1>Product not found</h1><p>product_id: ' . (int)$product_id . '</p>');
            return;
        }

        $product = $product_query->row;

        if (empty($product['umpc'])) {
            $this->response->setOutput('<h1>Product has no UMPC data</h1><p>product_id: ' . (int)$product_id . '</p>');
            return;
        }

        $before = array(
            'price' => (float)$product['price'],
            'price_works' => (float)$product['price_works'],
            'price_materials' => (float)$product['price_materials']
        );

        try {
            $buffer_level = ob_get_level();
            ob_start();
            $this->calc_product($product['umpc'], $product_id);

            while (ob_get_level() > $buffer_level) {
                ob_end_clean();
            }
        } catch (Exception $e) {
            while (isset($buffer_level) && ob_get_level() > $buffer_level) {
                ob_end_clean();
            }

            $this->response->setOutput('<h1>Calc error</h1><p>' . htmlspecialchars($e->getMessage(), ENT_QUOTES, 'UTF-8') . '</p>');
            return;
        }

        $after_query = $this->db->query("SELECT `umpc`, `price`, `price_works`, `price_materials` FROM `" . DB_PREFIX . "product` WHERE `product_id` = " . (int)$product_id . " LIMIT 1");
        $after_product = $after_query->row;
        $umpc = !empty($after_product['umpc']) ? json_decode($after_product['umpc'], true) : array();
        $total_rows = isset($umpc['total']) && is_array($umpc['total']) ? $umpc['total'] : array();
        $rows_html = '';

        foreach ($total_rows as $row) {
            $type = isset($row['type']) ? $row['type'] : '';
            $name = isset($row['name']) ? htmlspecialchars((string)$row['name'], ENT_QUOTES, 'UTF-8') : '';
            $price = isset($row['price']) && $row['price'] !== '' ? htmlspecialchars((string)$row['price'], ENT_QUOTES, 'UTF-8') : '';

            if ($type === 'blank') {
                $rows_html .= '<tr data-total-type="blank"><td colspan="2"></td></tr>';
                continue;
            }

            $name_tag = in_array($type, array('group', 'summary', 'grand_total'), true) ? 'th' : 'td';
            $price_tag = $type === 'grand_total' ? 'th' : 'td';
            $rows_html .= '<tr data-total-type="' . htmlspecialchars($type, ENT_QUOTES, 'UTF-8') . '"><' . $name_tag . '>' . $name . '</' . $name_tag . '><' . $price_tag . '>' . $price . '</' . $price_tag . '></tr>';
        }

        $html = '<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>UMPC test calc product</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; color: #222; }
    h1 { margin: 0 0 16px; font-size: 24px; }
    .meta { margin: 0 0 20px; font-size: 14px; }
    .meta strong { display: inline-block; min-width: 180px; }
    table { border-collapse: collapse; width: 100%; max-width: 720px; }
    th, td { padding: 10px 12px; border-bottom: 1px solid #d9d9d9; text-align: left; }
    tr[data-total-type="group"] th { font-size: 16px; font-weight: 700; background: #f7f7f7; }
    tr[data-total-type="summary"] th { font-weight: 700; }
    tr[data-total-type="grand_total"] th { font-size: 16px; font-weight: 700; }
    tr[data-total-type="blank"] td { padding: 8px 0; border-bottom: 1px solid #d9d9d9; background: transparent; }
  </style>
</head>
<body>
  <h1>Тестовый перерасчёт товара #' . (int)$product_id . '</h1>
  <div class="meta">
    <div><strong>Цена изделия до:</strong> ' . (float)$before['price'] . '</div>
    <div><strong>Цена работы до:</strong> ' . (float)$before['price_works'] . '</div>
    <div><strong>Цена материалов до:</strong> ' . (float)$before['price_materials'] . '</div>
    <br>
    <div><strong>Цена изделия после:</strong> ' . (float)$after_product['price'] . '</div>
    <div><strong>Цена работы после:</strong> ' . (float)$after_product['price_works'] . '</div>
    <div><strong>Цена материалов после:</strong> ' . (float)$after_product['price_materials'] . '</div>
  </div>
  <table>
    <tbody>' . $rows_html . '</tbody>
  </table>
</body>
</html>';

        $this->response->setOutput($html);

    }


    public function refresh_calc_products_queue() {

        $queue_table = DB_PREFIX . 'umpc_calc_product_queue';

        if (!$this->calc_products_queue_table_exists($queue_table)) {
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode(array(
                'success' => false,
                'message' => 'Queue table does not exist',
                'mode' => $this->get_calc_products_run_mode(),
                'progress' => $this->get_calc_products_progress_data($queue_table)
            )));
            return;
        }

        if ($this->is_calc_products_recalc_blocked()) {
            $this->normalize_calc_products_queue($queue_table);

            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode(array(
                'success' => true,
                'mode' => $this->get_calc_products_run_mode(),
                'queued' => 0,
                'recalc_blocked' => true,
                'progress' => $this->get_calc_products_progress_data($queue_table)
            )));
            return;
        }

        $queued = $this->refresh_calc_products_queue_data($queue_table);

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode(array(
            'success' => true,
            'mode' => $this->get_calc_products_run_mode(),
            'queued' => $queued,
            'progress' => $this->get_calc_products_progress_data($queue_table)
        )));

    }


    public function getRatesCbr($url = false) {

        $force = isset($this->request->get['force']) && (int)$this->request->get['force'] === 1;
        $cron_status = $this->get_umpc_setting_value('cron_status');

        if (!$force && (int)$cron_status !== 1) {
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode(array(
                'success' => false,
                'error' => 'Auto update is disabled'
            )));
            return;
        }

        $date = date('d/m/Y');
        $source = $url ? 'reserve' : 'cbr';
        $rates_cbr = $url ? $url : "http://www.cbr.ru/scripts/XML_daily.asp?date_req=" . $date;
        $languages = @simplexml_load_file($rates_cbr);

        if ($languages === false && !$url) {
            $source = 'reserve';
            $rates_cbr = $this->get_reserve_rates_url();
            $languages = @simplexml_load_file($rates_cbr);
        }

        if ($languages === false) {
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode(array(
                'success' => false,
                'error' => 'Could not load CBR currency rates'
            )));
            return;
        }

        $rates = $this->get_umpc_rates();

        if (!$rates) {
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode(array(
                'success' => false,
                'error' => 'Rates settings are empty'
            )));
            return;
        }

        $old_rates = $rates;

        foreach ($languages->Valute as $lang) {
            if ($lang["ID"] == 'R01235') {
                $rates[0]['price'] = round(str_replace(',', '.', $lang->Value), 2);
                $rates[0]['date'] = (string)$languages['Date'][0];
            }
        }

        $metalls_cbr = "http://www.cbr.ru/scripts/xml_metall.asp?date_req1=" . $date . "&date_req2=" . $date;
        $metalls = @simplexml_load_file($metalls_cbr);
        $metalls_source = 'cbr';

        if ($metalls === false) {
            $metalls_source = 'settings';
        } else {
            $i = 1;
            foreach ($metalls->Record as $metall) {
                if ($i > 3) {
                    break;
                }

                $rates[$i]['price'] = round(str_replace(',', '.', $metall->Sell), 2);
                $rates[$i]['date'] = (string)$metall["Date"];
                $i++;
            }
        }

        $metalls_rates = $this->get_umpc_metalls();

        if (!$metalls_rates) {
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode(array(
                'success' => false,
                'error' => 'Metals settings are empty'
            )));
            return;
        }

        $metall_rate_indexes = array(
            0 => 1,
            1 => 1,
            2 => 1,
            3 => 2,
            4 => 3
        );

        foreach ($metall_rate_indexes as $metall_index => $rate_index) {
            if (!isset($metalls_rates[$metall_index]) || !isset($rates[$rate_index])) {
                continue;
            }

            $metalls_rates[$metall_index]['rate'] = $rates[$rate_index]['price'];
            $metalls_rates[$metall_index]['date'] = $rates[$rate_index]['date'];
            $correction = isset($metalls_rates[$metall_index]['correction']) ? $metalls_rates[$metall_index]['correction'] : 0;
            $metalls_rates[$metall_index]['price'] = round(($metalls_rates[$metall_index]['rate'] * $correction), 2);
        }

        $this->save_umpc_metalls($metalls_rates);
        $this->save_umpc_rates($rates);

        $recalc_queued = false;
        $queue_synced = false;
        $queued = 0;
        $queue_table = DB_PREFIX . 'umpc_calc_product_queue';

        if ($this->calc_products_queue_table_exists($queue_table)) {
            $this->normalize_calc_products_queue($queue_table);
            $queue_synced = true;
        }

        $has_significant_rate_change = $this->has_significant_rate_change($old_rates, $rates);
        $this->save_last_rate_change_significant($has_significant_rate_change);

        if ($has_significant_rate_change) {
            if ($this->calc_products_queue_table_exists($queue_table)) {
                $queued = $this->refresh_calc_products_queue_data($queue_table);
                $recalc_queued = true;
            }
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode(array(
            'success' => true,
            'source' => $source,
            'metalls_source' => $metalls_source,
            'rates' => $rates,
            'queue_synced' => $queue_synced,
            'last_rate_change_significant' => $has_significant_rate_change ? 1 : 0,
            'recalc_queued' => $recalc_queued,
            'queued' => $queued
        )));

    }
    public function getRatesCbr2() {
        $rates_cbr = $this->get_reserve_rates_url();
        $this->getRatesCbr($rates_cbr);
    }

    private function get_calc_products_progress_data($queue_table) {

        if (!$this->calc_products_queue_table_exists($queue_table)) {
            return array(
                'table_exists' => false,
                'total' => 0,
                'pending' => 0,
                'processing' => 0,
                'processed' => 0,
                'errors' => 0,
                'percent' => 0
            );
        }

        $sql = "SELECT
                    COUNT(*) AS total,
                    SUM(flag = 1) AS pending,
                    SUM(flag = 2) AS processing,
                    SUM(flag = 0) AS processed,
                    SUM(flag = -1) AS errors
                FROM `" . $queue_table . "`";
        $query = $this->db->query($sql);
        $row = $query->row;
        $total = isset($row['total']) ? (int)$row['total'] : 0;
        $processed = isset($row['processed']) ? (int)$row['processed'] : 0;
        $errors = isset($row['errors']) ? (int)$row['errors'] : 0;

        return array(
            'table_exists' => true,
            'total' => $total,
            'pending' => isset($row['pending']) ? (int)$row['pending'] : 0,
            'processing' => isset($row['processing']) ? (int)$row['processing'] : 0,
            'processed' => $processed,
            'errors' => $errors,
            'percent' => $total > 0 ? round(($processed + $errors) / $total * 100) : 0
        );

    }


    private function calc_products_queue_table_exists($queue_table) {

        $query = $this->db->query("SHOW TABLES LIKE '" . $this->db->escape($queue_table) . "'");

        return $query->num_rows > 0;

    }


    private function normalize_calc_products_queue($queue_table) {

        $this->remove_invalid_calc_products_queue_items($queue_table);

        $this->db->query("INSERT IGNORE INTO `" . $queue_table . "` (`product_id`, `flag`, `error_message`, `date_processed`, `date_modified`)
                SELECT p.product_id, 0, '', NOW(), NOW()
                FROM `" . DB_PREFIX . "product` p
                WHERE p.umpc IS NOT NULL
                  AND p.umpc != ''");

    }


    private function refresh_calc_products_queue_data($queue_table) {

        $this->remove_invalid_calc_products_queue_items($queue_table);

        $sql = "INSERT INTO `" . $queue_table . "` (`product_id`, `flag`, `error_message`, `date_modified`)
                SELECT p.product_id, 1, '', NOW()
                FROM `" . DB_PREFIX . "product` p
                WHERE p.umpc IS NOT NULL
                  AND p.umpc != ''
                ON DUPLICATE KEY UPDATE
                  `flag` = IF(`flag` = 2, `flag`, 1),
                  `error_message` = IF(`flag` = 2, `error_message`, ''),
                  `date_processed` = IF(`flag` = 2, `date_processed`, NULL),
                  `date_modified` = NOW()";
        $this->db->query($sql);

        $count_query = $this->db->query("SELECT COUNT(*) AS total
                FROM `" . DB_PREFIX . "product`
                WHERE umpc IS NOT NULL
                  AND umpc != ''");

        return isset($count_query->row['total']) ? (int)$count_query->row['total'] : 0;

    }


    private function remove_invalid_calc_products_queue_items($queue_table) {

        $this->db->query("DELETE q FROM `" . $queue_table . "` q
                LEFT JOIN `" . DB_PREFIX . "product` p ON p.product_id = q.product_id
                WHERE p.product_id IS NULL
                  OR p.umpc IS NULL
                  OR p.umpc = ''");

    }


    private function get_umpc_setting_value($key) {

        $query = $this->db->query("SELECT `value` FROM `" . DB_PREFIX . "umpc_settings` WHERE `key` = '" . $this->db->escape($key) . "' LIMIT 1");

        return $query->num_rows ? $query->row['value'] : null;

    }


    private function get_umpc_setting_int($key, $default = 0) {

        $value = $this->get_umpc_setting_value($key);

        if ($value === null || $value === '') {
            return (int)$default;
        }

        return (int)$value;

    }


    private function get_reserve_rates_url() {

        return 'https://www.cbr-xml-daily.ru/daily.xml';

    }


    private function get_umpc_setting_json($key) {

        $value = $this->get_umpc_setting_value($key);
        $decoded = json_decode($value, true);

        return is_array($decoded) ? $decoded : array();

    }


    private function save_umpc_setting_json($key, $data, $json_flags = 0) {

        $value = json_encode($data, $json_flags);
        $query = $this->db->query("SELECT `key` FROM `" . DB_PREFIX . "umpc_settings` WHERE `key` = '" . $this->db->escape($key) . "' LIMIT 1");

        if ($query->num_rows) {
            $this->db->query("UPDATE `" . DB_PREFIX . "umpc_settings` SET `value` = '" . $this->db->escape($value) . "', `date` = NOW() WHERE `key` = '" . $this->db->escape($key) . "'");
        } else {
            $this->db->query("INSERT INTO `" . DB_PREFIX . "umpc_settings` SET `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($value) . "', `date` = NOW()");
        }

    }


    private function save_umpc_setting_value($key, $value) {

        $query = $this->db->query("SELECT `key` FROM `" . DB_PREFIX . "umpc_settings` WHERE `key` = '" . $this->db->escape($key) . "' LIMIT 1");

        if ($query->num_rows) {
            $this->db->query("UPDATE `" . DB_PREFIX . "umpc_settings` SET `value` = '" . $this->db->escape($value) . "', `date` = NOW() WHERE `key` = '" . $this->db->escape($key) . "'");
        } else {
            $this->db->query("INSERT INTO `" . DB_PREFIX . "umpc_settings` SET `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($value) . "', `date` = NOW()");
        }

    }


    private function get_umpc_rates() {

        return $this->get_umpc_setting_json('rates');

    }


    private function save_umpc_rates($rates) {

        $this->save_umpc_setting_json('rates', $rates);

    }


    private function get_umpc_metalls() {

        return $this->get_umpc_setting_json('metalls');

    }


    private function save_umpc_metalls($metalls) {

        $this->save_umpc_setting_json('metalls', $metalls, JSON_HEX_QUOT);

    }


    private function normalize_rate_price_value($value) {

        return (float)str_replace(',', '.', $value);

    }


    private function get_tracked_rate_values($rates) {

        $values = array();

        for ($i = 0; $i <= 3; $i++) {
            if (isset($rates[$i]['price'])) {
                $values[$i] = $this->normalize_rate_price_value($rates[$i]['price']);
            }
        }

        return $values;

    }


    private function has_significant_rate_change($old_rates, $new_rates, $threshold_percent = 10) {

        $old_values = $this->get_tracked_rate_values($old_rates);
        $new_values = $this->get_tracked_rate_values($new_rates);

        for ($i = 0; $i <= 3; $i++) {
            if (!isset($old_values[$i]) || !isset($new_values[$i])) {
                continue;
            }

            $old_price = $old_values[$i];
            $new_price = $new_values[$i];

            if ($old_price <= 0) {
                if ($new_price > 0) {
                    return true;
                }

                continue;
            }

            $difference_percent = abs($new_price - $old_price) / $old_price * 100;

            if ($difference_percent > $threshold_percent) {
                return true;
            }
        }

        return false;

    }


    private function get_calc_products_block_low_rate_change_flag() {

        return $this->get_umpc_setting_int('calc_products_block_low_rate_change', 0) === 1;

    }


    private function get_last_rate_change_significant() {

        return $this->get_umpc_setting_int('last_rate_change_significant', 1) === 1;

    }


    private function save_last_rate_change_significant($value) {

        $this->save_umpc_setting_value('last_rate_change_significant', !empty($value) ? '1' : '0');

    }


    private function is_calc_products_recalc_blocked() {

        return $this->get_calc_products_block_low_rate_change_flag() && !$this->get_last_rate_change_significant();

    }


    private function get_calc_products_run_mode() {

        $query = $this->db->query("SELECT `value` FROM `" . DB_PREFIX . "umpc_settings` WHERE `key` = 'calc_products_run_mode' ORDER BY `date` DESC LIMIT 1");

        if (!$query->num_rows) {
            $this->set_calc_products_run_mode('auto');
            return 'auto';
        }

        return $query->row['value'] === 'manual' ? 'manual' : 'auto';

    }


    private function set_calc_products_run_mode($mode) {

        $mode = ($mode === 'manual') ? 'manual' : 'auto';
        $key = 'calc_products_run_mode';
        $query = $this->db->query("SELECT `key` FROM `" . DB_PREFIX . "umpc_settings` WHERE `key` = '" . $this->db->escape($key) . "' LIMIT 1");

        if ($query->num_rows) {
            $this->db->query("UPDATE `" . DB_PREFIX . "umpc_settings` SET `value` = '" . $this->db->escape($mode) . "', `date` = NOW() WHERE `key` = '" . $this->db->escape($key) . "'");
        } else {
            $this->db->query("INSERT INTO `" . DB_PREFIX . "umpc_settings` SET `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($mode) . "', `date` = NOW()");
        }

    }


    private function is_calc_products_cron_time() {

        $hour = (int)date('G');

        return $hour >= 1 && $hour < 8 ;

    }


    private function enqueue_calc_products($queue_table, $reset_existing = false) {

        if ($reset_existing) {
            return $this->refresh_calc_products_queue_data($queue_table);
        }

        $this->normalize_calc_products_queue($queue_table);

        return 0;

    }


    public function calc_product_back($data,$product_id) {


        $sql = 'select * from oc_umpc_settings';
        $query =  $this->db->query($sql);
        foreach ($query->rows as $row) {

            $settings[$row['key']] = $row['value'];

        }

        $data = json_decode($data,true);


        $probs_prices = json_decode($settings['prob_prices'],true);
        $rates = json_decode($settings['rates'],true);
        $works = json_decode($settings['works'],true);
        $mele = json_decode($settings['mele'],true);
        $add_materials = json_decode($settings['add_materials'],true);
        $mele_calc = json_decode($settings['mele_calc'],true);



        foreach ($add_materials as $rate) {
            $add_materials_items[$rate['name']] = $rate;
        }

        foreach ($rates as $rate) {
            $rates_items[$rate['name']] = $rate['price'];
        }


        foreach ($works['stones'] as $i=>$work) {

            $price_small = $work['price_small'];
            $price_medium = $work['price_medium'];
            $price_big = $work['price_big'];
            $price_large = $work['price_large'];

            $price_small_usd = $work['price_small_usd'];
            $price_medium_usd = $work['price_medium_usd'];
            $price_big_usd = $work['price_big_usd'];
            $price_large_usd = $work['price_large_usd'];

            $new_price_small = $price_small_usd*$rates_items['USD'];
            $new_price_medium = $price_medium_usd*$rates_items['USD'];
            $new_price_big = $price_big_usd*$rates_items['USD'];
            $new_price_large = $price_large_usd*$rates_items['USD'];

            if($price_small_usd!='') {
                $works['stones'][$i]['price_small'] = $new_price_small;
            }
            if($price_medium_usd!='') {
                $works['stones'][$i]['price_medium'] = $new_price_medium;
            }
            if($price_big_usd!='') {
                $works['stones'][$i]['price_big'] = $new_price_big;
            }
            if($price_large_usd!='') {
                $works['stones'][$i]['price_large'] = $new_price_large;
            }


        }

        $sql = "UPDATE " . DB_PREFIX ."umpc_settings SET `value`='".$this->db->escape(json_encode($works, JSON_HEX_QUOT))."' WHERE `key` = 'works'";
        $this->db->query($sql);


        foreach ($mele as $mele_item) {

            $mele_items[$mele_item['name']] = $mele_item;

        }











        foreach ($works['stones'] as $stone) {

            $stones_prices[$stone['name']] = $stone;

        }







        $mele_full_price = 0;

        foreach ($data as $key=>$item) {


            if($key=='add_materials') {
                foreach ($item as $item_key=>$ite) {
                    if(isset($add_materials_items[$ite['name']])) {

                        $name = $data['add_materials'][$item_key]['name'];
                        $data['add_materials'][$item_key]['price'] = $add_materials_items[$name]['price'];
                        $data['add_materials'][$item_key]['total_price'] = $ite['qty']*$add_materials_items[$name]['price'];

                    } else {
                        unset($data['add_materials'][$item_key]);
                    }
                }
            }


            if($key=='mele'){
                foreach ($item as $item_key=>$ite) {
                    $price_usd = $ite['price'];
                    $qty = $ite['qty'];
                    $ct = $ite['ct'];
                    $name = $ite['name'];

                    $price_usd = $mele_items[$name]['price'];




                    $new_price = round($ct*$qty*$price_usd*$rates_items['USD']);

                    $data['mele'][$item_key]['total_price'] = $new_price;
                    $data['mele'][$item_key]['price'] = $price_usd;

                    $mele_full_price +=$new_price;


                }

            }

            if($key=='metalls') {
                foreach ($item as $item_key=>$ite) {

                    $sample_koof = $ite['sample']/1000;
                    $material = $ite['material'];
                    $metal = 'Золото';

                    if($material=='Желтое золото' || $material=='Белое золото' || $material=='Красное золото') {$metal = 'Золото';}
                    if($material=='Серебро') {$metal = 'Серебро';}
                    if($material=='Платина') {$metal = 'Платина';}

                    if(isset($probs_prices[$metal][$ite['sample']]['koof'])) {
                        $koof = $probs_prices[$metal][$ite['sample']]['koof'];
                    } elseif(isset($probs_prices[$ite['sample']]['koof'])) {
                        $koof = $probs_prices[$ite['sample']]['koof'];
                    } else {
                        $koof = 1.4;
                    }


                    if($material=='Желтое золото') {$rate = $rates_items['Золото'];}
                    if($material=='Белое золото') {$rate = $rates_items['Золото'];}
                    if($material=='Красное золото') {$rate = $rates_items['Золото'];}
                    if($material=='Серебро') {$rate = $rates_items['Серебро'];}
                    if($material=='Платина') {$rate = $rates_items['Платина'];}

                    echo '$rate'.$koof;
                    $new_price = $rate * $sample_koof * $koof;
                    //$new_price = 1;
                    $data[$key][$item_key]['price'] = $rate;
                    $data[$key][$item_key]['sample_price'] = number_format($new_price,2,'.','');
                    $data[$key][$item_key]['total_price'] = round($new_price*$ite['weight']);


                    $metal_total+=$data[$key][$item_key]['total_price'];



                }

                foreach ($data['total'] as $key_total=>$item_total) {
                    if($item_total['name']=='Итог металлы') {$data['total'][$key_total]['price'] =$metal_total; }


                }




            }

            if($key=='works') {
                $full_stone_prices = 0;
                foreach ($item as $item_key=>$ite) {

                    if($item_key=='mele') {
                        foreach ($ite as $itek=>$value) {
                            $name = $value['name'];

                            $price = $mele_items[$name]['work_price'];

                            $data['works']['mele'][$itek]['price'] = $price;
                            $data['works']['mele'][$itek]['total_price'] = $price * $data['works']['mele'][$itek]['qty'];




                        }



                    }

                    if($item_key=='stones') {
                        foreach ($ite as $itek=>$value) {

                            if($value['id']=='') {unset($data[$key][$item_key][$itek]);} else {



                                $size = $value['size'];
                                $qty = $value['qty'];
                                $workTotalPrice = 0;

                                if ($size < 0.5) {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_small'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 0;

                                } elseif ($size >= 0.5 && $size <= 1) {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_medium'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 1;

                                } elseif ($size > 1 && $size < 3) {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_big'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 2;

                                } elseif ($size >= 3) {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_large'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 3;

                                } else {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_large'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 3;
                                }


                                $full_stone_prices += $workTotalPrice;




                            }




                        }

                        ksort($data[$key][$item_key]);
                    } else {



                    }



                }

            }














        }


        $total_work=  $total_metals = $total_stones = $total_mele = $total_add_materials = 0;

        foreach ($data as $data_key=>$data_item) {
            foreach ($data_item as $item_key=>$vals) {
                if($data_key=='metalls') {

                    $total_metals +=$vals['total_price'];
                }
                if($data_key=='stones') {
                    $total_stones +=$vals['total_price'];
                }
                if($data_key=='mele') {
                    $total_mele +=$vals['total_price'];
                }
                if($data_key=='add_materials') {
                    $total_add_materials +=$vals['total_price'];
                }



            }


            if($data_key=='works') {

                foreach ($data_item as $item_key=>$vals) {
                    foreach ($vals as $works_val) {

                        $total_work +=$works_val['total_price'];

                    }

                }

            }

        }


        echo '$total_work'.$total_work;
        $full_material_price = ceil(
                ($total_mele + $total_metals + $total_stones + $total_add_materials) / 100
            ) * 100;

        $total_work = ceil(
                ($total_work) / 100
            ) * 100;

        $full_stone_prices = ceil($full_stone_prices/100)*100;

        foreach ($data['total'] as $key=>$item) {

            if($item['name']=='Итог металлы') {
                $data['total'][$key]['price']= $total_metals;
            }
            if($item['name']=='Итог центральные камни') {
                $data['total'][$key]['price']= $total_stones;
            }



            if($item['name']=='Итог меле') {
                $data['total'][$key]['price']= $total_mele;
            }




            if($item['name']=='Итог материалы') {
                $data['total'][$key]['price']=$full_material_price;
            }


            if($item['name']=='Итог работы') {
                $data['total'][$key]['price'] = $total_work;
            }

            if($item['name']=='Общий итог') {
                $data['total'][$key]['price'] =$full_material_price+ $total_work;
            }



        }


        echo '<pre>';
        print_r($data);
        echo '</pre>';





        $sql = "UPDATE " . DB_PREFIX . "product SET `umpc`='".$this->db->escape(json_encode($data,JSON_UNESCAPED_UNICODE))."' WHERE product_id = ". (int)$product_id;
        $this->db->query($sql);
        $sql = "UPDATE " . DB_PREFIX . "product SET `price`='".$data['total'][5]['price']."' WHERE product_id = ". (int)$product_id;
        $this->db->query($sql);
        $sql = "UPDATE " . DB_PREFIX . "product SET `price_works`='".$data['total'][4]['price']."' WHERE product_id = ". (int)$product_id;
        $this->db->query($sql);
        $sql = "UPDATE " . DB_PREFIX . "product SET `price_materials`='".($data['total'][3]['price'])."' WHERE product_id = ". (int)$product_id;
        $this->db->query($sql);



    }

    public function calc_product($data,$product_id) {

        $umpc = json_decode($data, true);

        if (!is_array($umpc)) {
            return;
        }

        $to_float = function($value) {
            return (float)str_replace(',', '.', (string)$value);
        };

        $to_int = function($value) use ($to_float) {
            return (int)round($to_float($value));
        };

        $sum_total_price = function($items) use ($to_float) {
            $sum = 0;

            if (!is_array($items)) {
                return $sum;
            }

            foreach ($items as $item) {
                $sum += $to_float(isset($item['total_price']) ? $item['total_price'] : 0);
            }

            return $sum;
        };

        $find_directory_item = function($items, $name) {
            $name = trim((string)$name);

            if ($name === '' || !is_array($items)) {
                return null;
            }

            foreach ($items as $item) {
                $item_name = isset($item['name']) ? trim((string)$item['name']) : '';
                $item_data_name = isset($item['data_name']) ? trim((string)$item['data_name']) : '';

                if ($item_data_name === $name || $item_name === $name) {
                    return $item;
                }
            }

            return null;
        };

        $is_truthy = function($value) {
            if (is_bool($value)) {
                return $value;
            }

            return in_array(strtolower(trim((string)$value)), array('1', 'true', 'yes', 'on'), true);
        };

        $get_prob_koof = function($probs_prices, $material, $sample) use ($to_float) {
            $sample_key = trim((string)$sample);
            $group = 'gold';

            if ($material === 'Серебро') {
                $group = 'silver';
            } elseif ($material === 'Платина') {
                $group = 'platinum';
            }

            if (isset($probs_prices[$group][$sample_key]['koof'])) {
                return $to_float($probs_prices[$group][$sample_key]['koof']);
            }

            if (isset($probs_prices[$sample_key]['koof'])) {
                return $to_float($probs_prices[$sample_key]['koof']);
            }

            return 1.4;
        };

        $get_stone_work_price = function($stone, $size, $fallback_price = 0) use ($to_float, $is_truthy) {
            if (!$stone || $size === '') {
                return $to_float($fallback_price);
            }

            $size_value = $to_float($size);

            if ($is_truthy(isset($stone['single']) ? $stone['single'] : false)) {
                return $to_float(isset($stone['price_large']) ? $stone['price_large'] : $fallback_price);
            }

            if (!$is_truthy(isset($stone['calc_type']) ? $stone['calc_type'] : false)) {
                if ($size_value < 0.5) {
                    return $to_float(isset($stone['price_small']) ? $stone['price_small'] : $fallback_price);
                }

                if ($size_value >= 0.5 && $size_value <= 1) {
                    return $to_float(isset($stone['price_medium']) ? $stone['price_medium'] : $fallback_price);
                }

                if ($size_value > 1 && $size_value < 3) {
                    return $to_float(isset($stone['price_big']) ? $stone['price_big'] : $fallback_price);
                }

                if ($size_value >= 3) {
                    return $to_float(isset($stone['price_large']) ? $stone['price_large'] : $fallback_price);
                }

                return $to_float(isset($stone['price_large']) ? $stone['price_large'] : $fallback_price);
            }

            if ($size_value < 3) {
                return $to_float(isset($stone['price_small']) ? $stone['price_small'] : $fallback_price);
            }

            if ($size_value >= 3) {
                return $to_float(isset($stone['price_medium']) ? $stone['price_medium'] : $fallback_price);
            }

            if ($size_value >= 10) {
                return $to_float(isset($stone['price_big']) ? $stone['price_big'] : $fallback_price);
            }

            return $to_float(isset($stone['price_large']) ? $stone['price_large'] : $fallback_price);
        };

        $probs_prices = $this->get_umpc_setting_json('prob_prices');
        $rates = $this->get_umpc_rates();
        $metalls_directory = $this->get_umpc_metalls();
        $works_directory = $this->get_umpc_setting_json('works');
        $mele_directory = $this->get_umpc_setting_json('mele');
        $add_materials_directory = $this->get_umpc_setting_json('add_materials');

        $usd_rate = 0.0;
        foreach ($rates as $rate) {
            if (isset($rate['name']) && $rate['name'] === 'USD') {
                $usd_rate = $to_float($rate['price']);
                break;
            }
        }

        if (isset($works_directory['stones']) && is_array($works_directory['stones'])) {
            foreach ($works_directory['stones'] as $index => $stone) {
                if (isset($stone['price_small_usd']) && $stone['price_small_usd'] !== '') {
                    $works_directory['stones'][$index]['price_small'] = $to_float($stone['price_small_usd']) * $usd_rate;
                }

                if (isset($stone['price_medium_usd']) && $stone['price_medium_usd'] !== '') {
                    $works_directory['stones'][$index]['price_medium'] = $to_float($stone['price_medium_usd']) * $usd_rate;
                }

                if (isset($stone['price_big_usd']) && $stone['price_big_usd'] !== '') {
                    $works_directory['stones'][$index]['price_big'] = $to_float($stone['price_big_usd']) * $usd_rate;
                }

                if (isset($stone['price_large_usd']) && $stone['price_large_usd'] !== '') {
                    $works_directory['stones'][$index]['price_large'] = $to_float($stone['price_large_usd']) * $usd_rate;
                }
            }

            $this->save_umpc_setting_json('works', $works_directory, JSON_HEX_QUOT);
        }

        $umpc['metalls'] = isset($umpc['metalls']) && is_array($umpc['metalls']) ? $umpc['metalls'] : array();
        $umpc['stones'] = isset($umpc['stones']) && is_array($umpc['stones']) ? $umpc['stones'] : array();
        $umpc['mele'] = isset($umpc['mele']) && is_array($umpc['mele']) ? $umpc['mele'] : array();
        $umpc['add_materials'] = isset($umpc['add_materials']) && is_array($umpc['add_materials']) ? $umpc['add_materials'] : array();
        $umpc['works'] = isset($umpc['works']) && is_array($umpc['works']) ? $umpc['works'] : array();
        $umpc['works']['types'] = isset($umpc['works']['types']) && is_array($umpc['works']['types']) ? $umpc['works']['types'] : array();
        $umpc['works']['metalls'] = isset($umpc['works']['metalls']) && is_array($umpc['works']['metalls']) ? $umpc['works']['metalls'] : array();
        $umpc['works']['stones'] = isset($umpc['works']['stones']) && is_array($umpc['works']['stones']) ? $umpc['works']['stones'] : array();
        $umpc['works']['mele'] = isset($umpc['works']['mele']) && is_array($umpc['works']['mele']) ? $umpc['works']['mele'] : array();
        $umpc['works']['another'] = isset($umpc['works']['another']) && is_array($umpc['works']['another']) ? $umpc['works']['another'] : array();

        $recalculated_metalls = array();
        foreach ($umpc['metalls'] as $item) {
            $material = isset($item['material']) ? trim((string)$item['material']) : '';
            $sample = $to_float(isset($item['sample']) ? $item['sample'] : 0);
            $sample_label = isset($item['sample']) ? trim((string)$item['sample']) : (string)$sample;
            $weight = $to_float(isset($item['weight']) ? $item['weight'] : 0);
            $metall_item = $find_directory_item($metalls_directory, $material);
            $price = $metall_item ? $to_float($metall_item['price']) : $to_float(isset($item['price']) ? $item['price'] : 0);
            $sample_price = round($price * ($sample / 1000) * $get_prob_koof($probs_prices, $material, $sample_label), 2);

            $recalculated_metalls[] = array(
                'id' => isset($item['id']) ? $item['id'] : null,
                'name' => $material !== '' && $sample_label !== '' ? $material . ' ' . $sample_label . ' пробы' : (isset($item['name']) ? $item['name'] : ''),
                'material' => $metall_item && isset($metall_item['name']) ? $metall_item['name'] : $material,
                'price' => $price,
                'sample' => $sample,
                'sample_price' => $sample_price,
                'weight' => $weight,
                'total_price' => round($sample_price * $weight)
            );
        }
        $umpc['metalls'] = $recalculated_metalls;

        $recalculated_stones = array();
        foreach ($umpc['stones'] as $item) {
            $stone_item = $find_directory_item(isset($works_directory['stones']) ? $works_directory['stones'] : array(), isset($item['name']) ? $item['name'] : '');
            $qty = (int)$to_float(isset($item['qty']) ? $item['qty'] : 0);
            $price_usd = $to_float(isset($item['price']) ? $item['price'] : 0);

            $recalculated_stones[] = array(
                'id' => isset($item['id']) ? $item['id'] : null,
                'name' => $stone_item && isset($stone_item['name']) ? $stone_item['name'] : (isset($item['name']) ? $item['name'] : ''),
                'qty' => $qty,
                'price' => $price_usd,
                'total_price' => round($price_usd * $qty * $usd_rate)
            );
        }
        $umpc['stones'] = $recalculated_stones;

        $recalculated_mele = array();
        foreach ($umpc['mele'] as $item) {
            $mele_item = $find_directory_item($mele_directory, isset($item['name']) ? $item['name'] : '');
            $qty = (int)$to_float(isset($item['qty']) ? $item['qty'] : 0);
            $ct = $to_float(isset($item['ct']) ? $item['ct'] : 0);
            $mm = $to_float(isset($item['mm']) ? $item['mm'] : 0);
            $ct_price = $mele_item ? $to_float($mele_item['price']) : $to_float(isset($item['ct_price']) ? $item['ct_price'] : 0);

            $recalculated_mele[] = array(
                'id' => isset($item['id']) ? $item['id'] : null,
                'mele_id' => isset($item['mele_id']) ? $item['mele_id'] : null,
                'name' => $mele_item && isset($mele_item['name']) ? $mele_item['name'] : (isset($item['name']) ? $item['name'] : ''),
                'qty' => $qty,
                'ct' => $ct,
                'mm' => $mm,
                'ct_price' => $ct_price,
                'total_price' => round($ct * $ct_price * $qty * $usd_rate)
            );
        }
        $umpc['mele'] = $recalculated_mele;

        $recalculated_add_materials = array();
        foreach ($umpc['add_materials'] as $item) {
            $add_material_item = $find_directory_item($add_materials_directory, isset($item['name']) ? $item['name'] : '');
            $qty = (int)$to_float(isset($item['qty']) ? $item['qty'] : 0);
            $price = $add_material_item ? $to_float($add_material_item['price']) : $to_float(isset($item['price']) ? $item['price'] : 0);

            $recalculated_add_materials[] = array(
                'id' => isset($item['id']) ? $item['id'] : null,
                'name' => $add_material_item && isset($add_material_item['name']) ? $add_material_item['name'] : (isset($item['name']) ? $item['name'] : ''),
                'qty' => $qty,
                'price' => $price,
                'total_price' => $price * $qty
            );
        }
        $umpc['add_materials'] = $recalculated_add_materials;

        $recalculated_work_metalls = array();
        foreach ($umpc['works']['metalls'] as $item) {
            $work_metall_item = $find_directory_item(isset($works_directory['metalls']) ? $works_directory['metalls'] : array(), isset($item['name']) ? $item['name'] : '');
            $weight = $to_float(isset($item['weight']) ? $item['weight'] : 0);
            $price = $work_metall_item ? $to_float($work_metall_item['price']) : $to_float(isset($item['price']) ? $item['price'] : 0);

            $recalculated_work_metalls[] = array(
                'id' => isset($item['id']) ? $item['id'] : null,
                'name' => $work_metall_item && isset($work_metall_item['name']) ? $work_metall_item['name'] : (isset($item['name']) ? $item['name'] : ''),
                'weight' => $weight,
                'price' => $price,
                'total_price' => $price * $weight
            );
        }
        $umpc['works']['metalls'] = $recalculated_work_metalls;

        $recalculated_work_stones = array();
        foreach ($umpc['works']['stones'] as $item) {
            $work_stone_item = $find_directory_item(isset($works_directory['stones']) ? $works_directory['stones'] : array(), isset($item['name']) ? $item['name'] : '');
            $qty = (int)$to_float(isset($item['qty']) ? $item['qty'] : 0);
            $size = isset($item['size']) ? trim((string)$item['size']) : '';
            $price = $get_stone_work_price($work_stone_item, $size, isset($item['price']) ? $item['price'] : 0);

            $recalculated_work_stones[] = array(
                'id' => isset($item['id']) ? $item['id'] : null,
                'name' => $work_stone_item && isset($work_stone_item['name']) ? $work_stone_item['name'] : (isset($item['name']) ? $item['name'] : ''),
                'qty' => $qty,
                'size' => $size,
                'price' => $price,
                'total_price' => $price * $qty
            );
        }
        $umpc['works']['stones'] = $recalculated_work_stones;

        $recalculated_work_mele = array();
        foreach ($umpc['works']['mele'] as $item) {
            $work_mele_item = $find_directory_item($mele_directory, isset($item['name']) ? $item['name'] : '');
            $qty = (int)$to_float(isset($item['qty']) ? $item['qty'] : 0);
            $price = $work_mele_item ? $to_float($work_mele_item['work_price']) : $to_float(isset($item['price']) ? $item['price'] : 0);

            $recalculated_work_mele[] = array(
                'id' => isset($item['id']) ? $item['id'] : null,
                'name' => $work_mele_item && isset($work_mele_item['name']) ? $work_mele_item['name'] : (isset($item['name']) ? $item['name'] : ''),
                'qty' => $qty,
                'price' => $price,
                'total_price' => $price * $qty
            );
        }
        $umpc['works']['mele'] = $recalculated_work_mele;

        $recalculated_work_another = array();
        foreach ($umpc['works']['another'] as $item) {
            $work_another_item = $find_directory_item(isset($works_directory['another']) ? $works_directory['another'] : array(), isset($item['name']) ? $item['name'] : '');
            $qty = (int)$to_float(isset($item['qty']) ? $item['qty'] : 0);
            $price = $work_another_item ? $to_float($work_another_item['price']) : $to_float(isset($item['price']) ? $item['price'] : 0);

            $recalculated_work_another[] = array(
                'id' => isset($item['id']) ? $item['id'] : null,
                'name' => $work_another_item && isset($work_another_item['name']) ? $work_another_item['name'] : (isset($item['name']) ? $item['name'] : ''),
                'qty' => $qty,
                'price' => $price,
                'total_price' => $price * $qty
            );
        }
        $umpc['works']['another'] = $recalculated_work_another;

        $type_item = null;
        if (!empty($umpc['works']['types']['id'])) {
            foreach (isset($works_directory['types']) ? $works_directory['types'] : array() as $directory_type) {
                if (!empty($directory_type['id']) && (int)$directory_type['id'] === (int)$umpc['works']['types']['id']) {
                    $type_item = $directory_type;
                    break;
                }
            }
        }
        if (!$type_item) {
            $type_item = $find_directory_item(isset($works_directory['types']) ? $works_directory['types'] : array(), isset($umpc['works']['types']['name']) ? $umpc['works']['types']['name'] : '');
        }
        $umpc['works']['types'] = array(
            'id' => $type_item && isset($type_item['id']) ? (int)$type_item['id'] : (isset($umpc['works']['types']['id']) ? (int)$umpc['works']['types']['id'] : 0),
            'name' => $type_item && isset($type_item['name']) ? $type_item['name'] : (isset($umpc['works']['types']['name']) ? $umpc['works']['types']['name'] : ''),
            'price' => $type_item ? $to_float($type_item['price']) : $to_float(isset($umpc['works']['types']['price']) ? $umpc['works']['types']['price'] : 0)
        );

        $metals_material_price = $to_int($sum_total_price($umpc['metalls']));
        $metals_work_price = $to_int($sum_total_price($umpc['works']['metalls']));
        $mele_material_price = $to_int($sum_total_price($umpc['mele']));
        $mele_work_price = $to_int($sum_total_price($umpc['works']['mele']));
        $stones_material_price = $to_int($sum_total_price($umpc['stones']));
        $stones_work_price = $to_int($sum_total_price($umpc['works']['stones']));
        $add_materials_material_price = $to_int($sum_total_price($umpc['add_materials']));
        $additional_work_price = $to_int($sum_total_price($umpc['works']['another']));

        $metals_price = $metals_material_price + $metals_work_price;
        $mele_price = $mele_material_price + $mele_work_price;
        $stones_price = $stones_material_price + $stones_work_price;
        $additional_price = $add_materials_material_price + $additional_work_price;

        $material_price = $metals_material_price + $mele_material_price + $stones_material_price + $add_materials_material_price;
        $works_base_price = $metals_work_price + $mele_work_price + $stones_work_price + $additional_work_price;
        $works_base_rounded = $to_int($works_base_price);
        $type_price = $to_int(isset($umpc['works']['types']['price']) ? $umpc['works']['types']['price'] : 0);
        $is_minimum_work_price_applied = $type_price > 0 && $type_price > $works_base_rounded;
        $total_work_price = $works_base_rounded >= $type_price ? $works_base_rounded : $type_price;
        $total_price = $total_work_price + $material_price;

        $umpc['total'] = array(
            array('type' => 'group', 'name' => 'Металлы', 'price' => $metals_price),
            array('type' => 'item', 'name' => '- Металлы', 'price' => $metals_material_price),
            array('type' => 'item', 'name' => '- Работы по металлу', 'price' => $metals_work_price),
            array('type' => 'group', 'name' => 'Меле', 'price' => $mele_price),
            array('type' => 'item', 'name' => '- Меле', 'price' => $mele_material_price),
            array('type' => 'item', 'name' => '- Закрепка меле', 'price' => $mele_work_price),
            array('type' => 'group', 'name' => 'Центральные камни', 'price' => $stones_price),
            array('type' => 'item', 'name' => '- Центральные камни', 'price' => $stones_material_price),
            array('type' => 'item', 'name' => '- Закрепка центральных камней', 'price' => $stones_work_price),
            array('type' => 'group', 'name' => 'Дополнительно', 'price' => $additional_price),
            array('type' => 'item', 'name' => '- Материалы', 'price' => $add_materials_material_price),
            array('type' => 'item', 'name' => '- Работы', 'price' => $additional_work_price),
            array('type' => 'blank', 'name' => '', 'price' => ''),
            array('type' => 'summary', 'name' => 'Итого материалы', 'price' => $material_price),
            array('type' => 'summary', 'name' => $is_minimum_work_price_applied ? 'Итого работы (указана минимальная стоимость)' : 'Итого работы', 'price' => $total_work_price),
            array('type' => 'grand_total', 'name' => 'Итоговая стоимость изделия', 'price' => $total_price)
        );

        $this->db->query("UPDATE `" . DB_PREFIX . "product`
            SET `umpc` = '" . $this->db->escape(json_encode($umpc, JSON_UNESCAPED_UNICODE)) . "',
                `price` = '" . (float)$total_price . "',
                `price_works` = '" . (float)$total_work_price . "',
                `price_materials` = '" . (float)$material_price . "'
            WHERE product_id = " . (int)$product_id);

        return;


        $sql = 'select * from oc_umpc_settings';
        $query =  $this->db->query($sql);
        foreach ($query->rows as $row) {

            $settings[$row['key']] = $row['value'];

        }

        $data = json_decode($data,true);


        $probs_prices = json_decode($settings['prob_prices'],true);
        $rates = json_decode($settings['rates'],true);
        $works = json_decode($settings['works'],true);
        $mele = json_decode($settings['mele'],true);
        $add_materials = json_decode($settings['add_materials'],true);
        $mele_calc = json_decode($settings['mele_calc'],true);



        foreach ($add_materials as $rate) {
            $add_materials_items[$rate['name']] = $rate;
        }

        foreach ($rates as $rate) {
            $rates_items[$rate['name']] = $rate['price'];
        }


        foreach ($works['stones'] as $i=>$work) {

            $price_small = $work['price_small'];
            $price_medium = $work['price_medium'];
            $price_big = $work['price_big'];
            $price_large = $work['price_large'];

            $price_small_usd = $work['price_small_usd'];
            $price_medium_usd = $work['price_medium_usd'];
            $price_big_usd = $work['price_big_usd'];
            $price_large_usd = $work['price_large_usd'];

            $new_price_small = $price_small_usd*$rates_items['USD'];
            $new_price_medium = $price_medium_usd*$rates_items['USD'];
            $new_price_big = $price_big_usd*$rates_items['USD'];
            $new_price_large = $price_large_usd*$rates_items['USD'];

            if($price_small_usd!='') {
                $works['stones'][$i]['price_small'] = $new_price_small;
            }
            if($price_medium_usd!='') {
                $works['stones'][$i]['price_medium'] = $new_price_medium;
            }
            if($price_big_usd!='') {
                $works['stones'][$i]['price_big'] = $new_price_big;
            }
            if($price_large_usd!='') {
                $works['stones'][$i]['price_large'] = $new_price_large;
            }


        }

        $sql = "UPDATE " . DB_PREFIX ."umpc_settings SET `value`='".$this->db->escape(json_encode($works, JSON_HEX_QUOT))."' WHERE `key` = 'works'";
        $this->db->query($sql);


        foreach ($mele as $mele_item) {

            $mele_items[$mele_item['name']] = $mele_item;

        }











        foreach ($works['stones'] as $stone) {

            $stones_prices[$stone['name']] = $stone;

        }







        $mele_full_price = 0;

        foreach ($data as $key=>$item) {


            if($key=='add_materials') {
                foreach ($item as $item_key=>$ite) {
                    if(isset($add_materials_items[$ite['name']])) {

                        $name = $data['add_materials'][$item_key]['name'];
                        $data['add_materials'][$item_key]['price'] = $add_materials_items[$name]['price'];
                        $data['add_materials'][$item_key]['total_price'] = $ite['qty']*$add_materials_items[$name]['price'];

                    } else {
                        unset($data['add_materials'][$item_key]);
                    }
                }
            }


            if($key=='mele'){
                foreach ($item as $item_key=>$ite) {
                    $price_usd = $ite['price'];
                    $qty = $ite['qty'];
                    $ct = $ite['ct'];
                    $name = $ite['name'];

                    $price_usd = $mele_items[$name]['price'];




                    $new_price = round($ct*$qty*$price_usd*$rates_items['USD']);

                    $data['mele'][$item_key]['total_price'] = $new_price;
                    $data['mele'][$item_key]['price'] = $price_usd;

                    $mele_full_price +=$new_price;


                }

            }

            if($key=='metalls') {
                foreach ($item as $item_key=>$ite) {

                    $sample_koof = $ite['sample']/1000;
                    $material = $ite['material'];
                    $metal = 'Золото';

                    if($material=='Желтое золото' || $material=='Белое золото' || $material=='Красное золото') {$metal = 'Золото';}
                    if($material=='Серебро') {$metal = 'Серебро';}
                    if($material=='Платина') {$metal = 'Платина';}

                    if(isset($probs_prices[$metal][$ite['sample']]['koof'])) {
                        $koof = $probs_prices[$metal][$ite['sample']]['koof'];
                    } elseif(isset($probs_prices[$ite['sample']]['koof'])) {
                        $koof = $probs_prices[$ite['sample']]['koof'];
                    } else {
                        $koof = 1.4;
                    }


                    if($material=='Желтое золото') {$rate = $rates_items['Золото'];}
                    if($material=='Белое золото') {$rate = $rates_items['Золото'];}
                    if($material=='Красное золото') {$rate = $rates_items['Золото'];}
                    if($material=='Серебро') {$rate = $rates_items['Серебро'];}
                    if($material=='Платина') {$rate = $rates_items['Платина'];}

                    echo '$rate'.$koof;
                    $new_price = $rate * $sample_koof * $koof;
                    //$new_price = 1;
                    $data[$key][$item_key]['price'] = $rate;
                    $data[$key][$item_key]['sample_price'] = number_format($new_price,2,'.','');
                    $data[$key][$item_key]['total_price'] = round($new_price*$ite['weight']);


                    $metal_total+=$data[$key][$item_key]['total_price'];



                }

               foreach ($data['total'] as $key_total=>$item_total) {
                   if($item_total['name']=='Итог металлы') {$data['total'][$key_total]['price'] =$metal_total; }


               }




            }

            if($key=='works') {
                $full_stone_prices = 0;
                foreach ($item as $item_key=>$ite) {

                    if($item_key=='mele') {
                        foreach ($ite as $itek=>$value) {
                            $name = $value['name'];

                            $price = $mele_items[$name]['work_price'];

                            $data['works']['mele'][$itek]['price'] = $price;
                            $data['works']['mele'][$itek]['total_price'] = $price * $data['works']['mele'][$itek]['qty'];




                        }



                    }

                    if($item_key=='stones') {
                        foreach ($ite as $itek=>$value) {

                            if($value['id']=='') {unset($data[$key][$item_key][$itek]);} else {



                                $size = $value['size'];
                                $qty = $value['qty'];
                                $workTotalPrice = 0;

                                if ($size < 0.5) {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_small'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 0;

                                } elseif ($size >= 0.5 && $size <= 1) {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_medium'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 1;

                                } elseif ($size > 1 && $size < 3) {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_big'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 2;

                                } elseif ($size >= 3) {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_large'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 3;

                                } else {
                                    $workPrice = (int)$stones_prices[$value['name']]['price_large'];
                                    $workTotalPrice = $workPrice * $qty;
                                    $workSize = 3;
                                }


                                $full_stone_prices += $workTotalPrice;




                            }




                        }

                        ksort($data[$key][$item_key]);
                    } else {



                    }



            }

            }














        }


        $total_work=  $total_metals = $total_stones = $total_mele = $total_add_materials = 0;

        foreach ($data as $data_key=>$data_item) {
            foreach ($data_item as $item_key=>$vals) {
            if($data_key=='metalls') {

                $total_metals +=$vals['total_price'];
            }
                if($data_key=='stones') {
                    $total_stones +=$vals['total_price'];
                }
                if($data_key=='mele') {
                    $total_mele +=$vals['total_price'];
                }
                if($data_key=='add_materials') {
                    $total_add_materials +=$vals['total_price'];
                }



            }


            if($data_key=='works') {

                foreach ($data_item as $item_key=>$vals) {
                    foreach ($vals as $works_val) {

                        $total_work +=$works_val['total_price'];

                    }

                }

            }

        }


        echo '$total_work'.$total_work;
$full_material_price = ceil(
        ($total_mele + $total_metals + $total_stones + $total_add_materials) / 100
    ) * 100;

        $total_work = ceil(
                ($total_work) / 100
            ) * 100;

        $full_stone_prices = ceil($full_stone_prices/100)*100;

        foreach ($data['total'] as $key=>$item) {

            if($item['name']=='Итог металлы') {
                $data['total'][$key]['price']= $total_metals;
            }
            if($item['name']=='Итог центральные камни') {
                $data['total'][$key]['price']= $total_stones;
            }



            if($item['name']=='Итог меле') {
                $data['total'][$key]['price']= $total_mele;
            }




            if($item['name']=='Итог материалы') {
                $data['total'][$key]['price']=$full_material_price;
            }


            if($item['name']=='Итог работы') {
                $data['total'][$key]['price'] = $total_work;
            }

            if($item['name']=='Общий итог') {
                $data['total'][$key]['price'] =$full_material_price+ $total_work;
            }



        }


        echo '<pre>';
        print_r($data);
        echo '</pre>';





        $sql = "UPDATE " . DB_PREFIX . "product SET `umpc`='".$this->db->escape(json_encode($data,JSON_UNESCAPED_UNICODE))."' WHERE product_id = ". (int)$product_id;
        $this->db->query($sql);
        $sql = "UPDATE " . DB_PREFIX . "product SET `price`='".$data['total'][5]['price']."' WHERE product_id = ". (int)$product_id;
        $this->db->query($sql);
        $sql = "UPDATE " . DB_PREFIX . "product SET `price_works`='".$data['total'][4]['price']."' WHERE product_id = ". (int)$product_id;
        $this->db->query($sql);
        $sql = "UPDATE " . DB_PREFIX . "product SET `price_materials`='".($data['total'][3]['price'])."' WHERE product_id = ". (int)$product_id;
        $this->db->query($sql);



    }


    public function redirs() {

        $sql = 'select * from oc_srm_redirect_back where `from` like "%nash%"';

        $query_data = $this->db->query($sql);


        foreach ($query_data->rows as $item) {


            $from = $item['from'];
            $to = $item['to'];
            $url_a = explode('/',$from);

            $url = $url_a[2];

            $sql = 'select * from oc_url_alias where keyword="'.$url.'"';

            $query_data_url = $this->db->query($sql);

            if($query_data_url->num_rows) {
foreach ($query_data_url->rows as $value) {
            $q = $value['query'];

            $q_a = explode('=',$q);
            $project_id = $q_a[1];

           if($project_id and $project_id!='') {
if($to!='/nasha-rabota') {
              // $sql = 'update oc_our_project set url_link="'.$to.'" where id='.$project_id;
              // echo $sql.';<br>';
}

           }






}
            } else {

               echo $url.'<span style="margin-left: 30px">'.$project_id.'</span><br>';
            }

        }




    }

    public function upd_rabs() {

        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
        echo 'asdasd';
        require_once DIR_GOOGLE . 'vendor/autoload.php';


        $this->load->model('catalog/category');
        $this->load->model('catalog/service');



        $googleAccountKeyFilePath = DIR_GOOGLE.'my-project-67961-1717153477456-5767271f21f8.json';
        putenv('GOOGLE_APPLICATION_CREDENTIALS=' . $googleAccountKeyFilePath);

        $client = new Google_Client();
        $client->useApplicationDefaultCredentials();

        $client->addScope('https://www.googleapis.com/auth/spreadsheets');

        $service = new Google_Service_Sheets($client);

        $spreadsheetId = '1UHH3WpIpuKynezwpvxDMHCsUG1Msz0yBySGRG6SVYAo';


        $response = $service->spreadsheets->get($spreadsheetId);


        $spreadsheetProperties = $response->getProperties();
        $spreadsheetProperties->title; // Название таблицы

        foreach ($response->getSheets() as $sheet) {

            // Свойства листа
            $sheetProperties = $sheet->getProperties();
            $sheetProperties->title; // Название листа

            $gridProperties = $sheetProperties->getGridProperties();
            $gridProperties->columnCount; // Количество колонок
            $gridProperties->rowCount; // Количество строк

        }



        $range = 'Лист1';
        $response = $service->spreadsheets_values->get($spreadsheetId, $range);




        foreach ($response->values as $key=>$value) {
            if($key>0) {

                    $links[] = array(
                        'url' => $value[0],
                        'name' => $value[1],
                        'title' => $value[2],
                        'description' => $value[3],
                        'h1' => $value[4],

                    );


            }
        }

        foreach ($links as $key=>$link) {

            $url = $link['url'];
            $url_a = explode('/',$url);
            $url = $url_a[count($url_a)-1];


            $url = str_replace('%20', ' ', $url);



            $links[$key]['url'] = $url;

            $sql = 'select * from oc_url_alias where keyword="'.$url.'"';

            $query_data = $this->db->query($sql);
            if($query_data->num_rows) {

                $q = $query_data->row['query'];
                $q_a = explode('=',$q);
                $project_id = $q_a[1];

                $links[$key]['project_id'] = $project_id;



            }


        }


        foreach ($links as $item) {
if($item['project_id']!='') {
            $sql = 'update oc_our_project set seo_h1="'.$this->db->escape($item['h1']).'",
            seo_description="'.$this->db->escape($item['description']).'",
            seo_title="'.$this->db->escape($item['title']).'",
            name="'.$this->db->escape($item['name']).'" where id='.$item['project_id'].'
 
 
 
            
            ';

} elseif (strpos($item['url'], 'project_id') !== false) {




    $project_arr = explode('=',$item['url']);
    $project_id = $project_arr[1];
    $sql = 'update oc_our_project set seo_h1="'.$this->db->escape($item['h1']).'",
            seo_description="'.$this->db->escape($item['description']).'",
            seo_title="'.$this->db->escape($item['title']).'",
            name="'.$this->db->escape($item['name']).'" where id='.$project_id;
    //echo $sql.';<br>';



}



else {

    if($item['url']=='zolotoe-kolco-v-stile-cartier-destin%C3%A9e-s-brilliantami-585') {$project_id=585;}
    if($item['url']=='kolco-v-stile-cartier-destin%C3%A9e-iz-belogo-zolota-s-brilliantami') {$project_id=136;}
    if($item['url']=='pomolvochnoe-kolco-v-stile-cartier-destin%C3%A9e-0') {$project_id=731;}

    $sql = 'update oc_our_project set seo_h1="'.$this->db->escape($item['h1']).'",
            seo_description="'.$this->db->escape($item['description']).'",
            seo_title="'.$this->db->escape($item['title']).'",
            name="'.$this->db->escape($item['name']).'" where id='.$project_id;
    echo $sql.';<br>';

}



        }





    }



    public function projj() {

        $this->load->model('catalog/our_project');


        $sql = 'select * from oc_our_project';
        $query_data = $this->db->query($sql);
        foreach ($query_data->rows as $row) {

        $href  = $this->url->link('product/project', 'project_id=' . $row['id']);
        $results = $this->model_catalog_our_project->getProject($row['id']);
$name = $results['name'];
$decription  = $results['seo_description'];
            if ($results['seo_title']) {
                $title = $results['seo_title'];
            } else {
                $title = $results['name'];
            }

            if ($results['seo_h1']) {
                $heading_title = $results['seo_h1'];
            } else {
                $heading_title = $results['name'];
            }

            $projects[] = array(
                'url'=>$href,
                'name'=>$name,
                'title'=>$title,
                'description'=>$decription,
                'h1'=>$heading_title
            );






        }

        echo '<table>';
        echo '<thead>';
        echo '<tr><td>url</td><td>name</td><td>title</td><td>description</td><td>h1</td></tr>';
        echo '</thead>';
        foreach ($projects as $item) {
        echo '<tr>';
        echo '<td>'.$item['url'].'</td>';
        echo '<td>'.$item['name'].'</td>';
        echo '<td>'.$item['title'].'</td>';
        echo '<td>'.$item['description'].'</td>';
        echo '<td>'.$item['h1'].'</td>';
        echo '</tr>';
        }
        echo '</table>';




    }
    public function product_get($product_id) {
        $this->load->language('product/product');

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $this->load->model('catalog/category');
        $this->load->model('catalog/product');




        $category_id = $this->model_catalog_product->getMainCategory($product_id);
        $category_id =$category_id['category_id'];


            // Set the last category breadcrumb
            $category_info = $this->model_catalog_category->getCategory($category_id);

            if ($category_info) {
                $url = '';

                if (isset($this->request->get['sort'])) {
                    $url .= '&sort=' . $this->request->get['sort'];
                }

                if (isset($this->request->get['order'])) {
                    $url .= '&order=' . $this->request->get['order'];
                }

                if (isset($this->request->get['page'])) {
                    $url .= '&page=' . $this->request->get['page'];
                }

                if (isset($this->request->get['limit'])) {
                    $url .= '&limit=' . $this->request->get['limit'];
                }

                $data['breadcrumbs'][] = array(
                    'text' => $category_info['name'],
                    'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url)
                );


        $this->load->model('catalog/manufacturer');

        if (isset($this->request->get['manufacturer_id'])) {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_brand'),
                'href' => $this->url->link('product/manufacturer')
            );

            $url = '';

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($this->request->get['manufacturer_id']);

            if ($manufacturer_info) {
                $data['breadcrumbs'][] = array(
                    'text' => $manufacturer_info['name'],
                    'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url)
                );
            }
        }

        $data['prod_id'] = $product_id;

        $this->load->model('catalog/product');

        $product_info = $this->model_catalog_product->getProduct($product_id);

        if ($product_info) {
            $url = '';

            if (isset($this->request->get['path'])) {
                $url .= '&path=' . $this->request->get['path'];
            }

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['manufacturer_id'])) {
                $url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
            }

            if (isset($this->request->get['search'])) {
                $url .= '&search=' . $this->request->get['search'];
            }

            if (isset($this->request->get['tag'])) {
                $url .= '&tag=' . $this->request->get['tag'];
            }

            if (isset($this->request->get['description'])) {
                $url .= '&description=' . $this->request->get['description'];
            }

            if (isset($this->request->get['category_id'])) {
                $url .= '&category_id=' . $this->request->get['category_id'];
            }

            if (isset($this->request->get['sub_category'])) {
                $url .= '&sub_category=' . $this->request->get['sub_category'];
            }

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $data['breadcrumbs'][] = array(
                'text' => $product_info['name'],
                'href' => $this->url->link('product/product', $url . '&product_id=' . $this->request->get['product_id'])
            );


            $query_data = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . (int)$this->request->get['product_id'] . "' AND main_category = '1' LIMIT 1");


            $data['options'] = array();
            $this->load->model('tool/image');

            foreach ($this->model_catalog_product->getProductOptions($this->request->get['product_id']) as $option) {
                $product_option_value_data = array();

                foreach ($option['product_option_value'] as $option_value) {
                    if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
                        if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
                            $price = $this->currency->format($this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax') ? 'P' : false));
                        } else {
                            $price = false;
                        }

                        $product_option_value_data[] = array(
                            'product_option_value_id' => $option_value['product_option_value_id'],
                            'option_value_id'         => $option_value['option_value_id'],
                            'name'                    => $option_value['name'],
                            'default_value'                    => $option_value['default_value'],
                            'weight'                    => $option_value['weight'],
                            'image'                   => $this->model_tool_image->resize($option_value['image'], 50, 50),
                            'price'                   => $price,
                            'price_prefix'            => $option_value['price_prefix']
                        );
                    }
                }

                $data['options'][] = array(
                    'product_option_id'    => $option['product_option_id'],
                    'product_option_value' => $product_option_value_data,
                    'option_id'            => $option['option_id'],
                    'name'                 => $option['name'],
                    'type'                 => $option['type'],
                    'value'                => $option['value'],
                    'required'             => $option['required']
                );
            }
            //p($data['options']);

            $data['attribute_groups'] = $this->model_catalog_product->getProductAttributes($this->request->get['product_id']);

            $product_title = '';
            $product_description = '';
            $main_cid_data = $category_id;
            if($main_cid_data){
                $category_info_data = $this->model_catalog_category->getCategory($main_cid_data);
                $product_title = $category_info_data['product_title'];
                $product_description = $category_info_data['product_description'];
                if(!empty($product_title) || !empty($product_description)){

                    $from_tpl=array();
                    $to_tpl=array();
                    $from_tpl[]='{name}';
                    $to_tpl[]=$product_info['name'];
                    $from_tpl[]='{weight}';
                    $to_tpl[]=$product_info['weight']. "г";
                    $from_tpl[]='{price}';
                    $to_tpl[]=$this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
                    $from_tpl[]='{price_work}';
                    $to_tpl[]=$this->currency->format($this->tax->calculate($product_info['price_works'], $product_info['tax_class_id'], $this->config->get('config_tax')));

                    $from_tpl[]='{price_material}';
                    $to_tpl[]=$this->currency->format($this->tax->calculate($product_info['price_materials'], $product_info['tax_class_id'], $this->config->get('config_tax')));

                    $this->load->model('catalog/option');
                    $filter_data = array(
                        'sort'  => 	 'od.name',
                        'order' => 'ASC',
                        'start' => 0,
                        'limit' => 999
                    );
                    $options_list = $this->model_catalog_option->getOptions($filter_data);

                    foreach($options_list as $option_data){
                        $from_tpl[]='{option_'.$option_data['option_id'].'}';
                        $found=false;
                        foreach($data['options'] as $opt_data){
                            if($opt_data['option_id']==$option_data['option_id']){

                                if ($opt_data['type'] == 'select') {
                                    foreach ($opt_data['product_option_value'] as $option_value_data) {
                                        if($option_value_data['default_value'] == 1) {
                                            $found=$option_value_data['name'];
                                        }
                                    }
                                }


                            }
                        }
                        if(!empty($found)){
                            $to_tpl[]=$found;
                        }else{
                            $to_tpl[]='';
                        }

                    }

                    $this->load->model('catalog/attribute');
                    $filter_data = array(
                        'sort'  => 	 'ad.name',
                        'order' => 'ASC',
                        'start' => 0,
                        'limit' => 999
                    );
                    $attributes_list = $this->model_catalog_attribute->getAttributes($filter_data);
                    foreach($attributes_list as $attribute_data){
                        $from_tpl[]='{attribute_'.$attribute_data['attribute_id'].'}';
                        $found=false;
                        foreach ($data['attribute_groups'] as $attribute_group) {
                            foreach ($attribute_group['attribute'] as $attribute) {
                                if($attribute['attribute_id']==$attribute_data['attribute_id']){
                                    $found=$attribute['text'];
                                }
                            }
                        }
                        if(!empty($found)){
                            $to_tpl[]=$found;
                        }else{
                            $to_tpl[]='';
                        }
                    }


                    $this->load->model('catalog/filter');
                    $filter_data = array(
                        'sort'  => 	 'fgd.name',
                        'order' => 'ASC',
                        'start' => 0,
                        'limit' => 999
                    );
                    $filters_list = $this->model_catalog_filter->getFilterGroups($filter_data);


                    $filter_data = array(
                        'sort'  => 	 'fgd.name',
                        'order' => 'ASC',
                        'start' => 0,
                        'limit' => 999
                    );
                    $filters_list_all = $this->model_catalog_filter->getFilters($filter_data);
                    $filters_data=array();
                    foreach($filters_list_all as $asft){
                        $filters_data[$asft['filter_group_id']][]=array($asft['filter_id'],$asft['name']);
                    }
                    $filters_product= $this->model_catalog_product->getProductFilters($this->request->get['product_id']);

                    foreach($filters_data as $filter_data_ginc=>$filter_data_inc){
                        $from_tpl[]='{filter_'.$filter_data_ginc.'}';
                        $found=array();

                        foreach($filter_data_inc as $filter_data_val){

                            foreach($filters_product as $filter_data_pr){

                                if($filter_data_val[0]==$filter_data_pr['filter_id']){
                                    $found[]=$filter_data_val[1];
                                }
                            }
                        }
                        if(count($found)){
                            $to_tpl[]=implode(', ',$found);
                        }else{
                            $to_tpl[]='';
                        }

                    }





                    $product_title = trim(str_replace($from_tpl,$to_tpl, $product_title));
                    $product_description = trim(str_replace($from_tpl,$to_tpl, $product_description));
                }

            }

            if(!empty($product_info['meta_title'])){
                $this->document->setTitle($product_info['meta_title']);
            }else{
                if(!empty($product_title)){
                    $this->document->setTitle($product_title);
                }else{
                    $this->document->setTitle($product_info['name']);
                }

            }

            $data['weight'] = $product_info['weight'];
            if(!empty($product_info['meta_description'])){
                $data['meta_description']=$product_info['meta_description'];

            }else{



                $data['meta_description'] = $product_description;
            }





            $meta_description = $product_info['name'];
            $metal = $ves = false;
            foreach ($data['attribute_groups'] as $attribute_group) {
                foreach ($attribute_data['attribute'] as $attribute) {

                    if($attribute['attribute_id']==18) {
                        $metal = $attribute['text'];
                    }

                    if($attribute['attribute_id']==29) {
                        $ves = $attribute['text'];
                    }

                }
            }

            if($metal) {

                $meta_description .=' - '.$metal;
            }

            if($ves) {

                $meta_description .='.Вес изделия - '.$ves;
            }



            if($data['price_materials']) {
                $meta_description .=' Цена: '.str_replace('руб', '', $data['price_materials']);
            }








            /*
             {название товара} - {металл}. Вес изделия - {вес}
            г. Цена: {цена} ₽,
            материал - {цена_материала} ₽,
            работа мастера - {цена_работы}
            ₽. Изготовление на заказ. Фото и детали уточняйте у менеджера
             */



            // $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
            // $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/locale/'.$this->session->data['language'].'.js');
            // $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
            // $this->document->addScript('catalog/view/javascript/cloudzoom/cloudzoom.js');
            // $this->document->addStyle('catalog/view/javascript/cloudzoom/cloudzoom.css');
            // $this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

            if ($product_info['meta_h1']) {
                $data['heading_title'] = $product_info['meta_h1'];
            } else {
                $data['heading_title'] = $product_info['name'];
            }


            $data['tags'] = array();

            $data['recurrings'] = $this->model_catalog_product->getProfiles($this->request->get['product_id']);

            return $data;


        }


    }

    }


    public function setdesr() {

        $text = 'https://uvelirmoscow.ru/katalog/kulony-17/kulon-iz-belogo-zolota-s-brilliantom-ogranki-krug-1598
https://uvelirmoscow.ru/katalog/kulony-17/kulon-iz-belogo-zolota-s-brilliantom-ogranki-serdce-1602
https://uvelirmoscow.ru/katalog/kulony-17/kulon-iz-belogo-zolota-s-brilliantom-ogranki-grusha-1603
https://uvelirmoscow.ru/katalog/kulony-17/kulon-iz-belogo-zolota-s-brilliantom-ogranki-princessa-1599
https://uvelirmoscow.ru/katalog/kulony-17/kulon-rubinovyy-budda-iz-belogo-zolota-s-rubinom-i-brilliantami-32
https://uvelirmoscow.ru/katalog/kulony-17/podveska-v-vide-inicialov-s-rossypyu-brilliantov-4108
https://uvelirmoscow.ru/katalog/braslety-73/braslet-iz-zheltogo-zolota-s-korallami-4086
https://uvelirmoscow.ru/katalog/braslety-73/zhenskij-tennisnyj-braslet-s-brilliantami-1547
https://uvelirmoscow.ru/katalog/kulony-17/zolotaya-podveska-batiskaf-s-glavirovkoy-1101
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-sapfirami-na-zakaz-e-2-592
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-jemchugom-i-ametistom-na-zakaz-499
https://uvelirmoscow.ru/katalog/kulony-17/krest-konstantina-iz-serebra-4047
https://uvelirmoscow.ru/katalog/braslety-73/braslet-iz-belogo-zolota-67
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-brilliantami-903
https://uvelirmoscow.ru/katalog/braslety-73/serebryanyy-braslet-figaro-na-zakaz-1082
https://uvelirmoscow.ru/katalog/braslety-73/serebryanyj-braslet-s-zhemchugom-i-brilliantami-na-zakaz-v-16-518
https://uvelirmoscow.ru/katalog/braslety-73/muzhskoj-kozhanyj-braslet-s-serebrom-4254
https://uvelirmoscow.ru/katalog/braslety-73/braslet-iz-belogo-zolota-s-zheltymi-i-belymi-sapfirami-1665
https://uvelirmoscow.ru/katalog/kulony-17/serebryanyj-pravoslavnyj-krest-s-cherneniem-i-pozolotoj-1762
https://uvelirmoscow.ru/katalog/braslety-73/zolotoj-braslet-s-perlamutrom-i-brilliantami-518
https://uvelirmoscow.ru/katalog/braslety-73/tennisnyj-zolotoj-braslet-s-brilliantami-1544
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-beskonechnost-911
https://uvelirmoscow.ru/katalog/braslety-73/braslet-zolotoy-s-poludragocennymi-kamnyami-an-4-663
https://uvelirmoscow.ru/katalog/kulony-17/muzhskoj-krest-iz-belogo-zolota-s-fakturnoj-poverhnostyu-1845
https://uvelirmoscow.ru/katalog/braslety-73/zhenskij-platinovyj-tennisnyj-braslet-s-brilliantami-1547
https://uvelirmoscow.ru/katalog/braslety-73/braslet-b-2-144
https://uvelirmoscow.ru/katalog/braslety-73/zolotoj-tennisnyj-braslet-s-brilliantami-i-sapfirami-144
https://uvelirmoscow.ru/katalog/braslety-73/braslet-iz-belogo-zolota-figaro-na-zakaz-1082
https://uvelirmoscow.ru/katalog/kulony-17/pravoslavnye-krest-iz-serebra-s-cherneniem-1043
https://uvelirmoscow.ru/katalog/kulony-17/kulon-iz-belogo-zolota-s-brilliantom-ogranki-grusha-i-auroj-iz-brilliantov-1600
https://uvelirmoscow.ru/katalog/na-rojdenie-159/serebryanaya-podveska-dlya-mamy-devochki-1160
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-rubinami-na-zakaz-e-8-597
https://uvelirmoscow.ru/katalog/kulony-17/kulon-iz-belogo-zolota-s-brilliantom-ogranki-oval-1601
https://uvelirmoscow.ru/katalog/kulony-17/krest-iz-belogo-zolota-s-brilliantami-30
https://uvelirmoscow.ru/katalog/kulony-17/q-15-658
https://uvelirmoscow.ru/katalog/na-rojdenie-159/podveska-iz-belogo-zolota-s-brilliantami-dlya-mamy-malchika-1166
https://uvelirmoscow.ru/katalog/na-rojdenie-159/zolotaya-podveska-s-brilliantami-malchik--1165
https://uvelirmoscow.ru/katalog/na-rojdenie-159/zolotaya-podveska-s-rubinami-dlya-mamy-devochki-1168
https://uvelirmoscow.ru/katalog/na-rojdenie-159/podveska-iz-belogo-zolota-devochka-s-emalyu-1162
https://uvelirmoscow.ru/katalog/na-rojdenie-159/podveska-iz-jeltogo-zolota-malchik-s-relefnoy-poverhnostyu-1164
https://uvelirmoscow.ru/katalog/na-rojdenie-159/podveska-iz-belogo-zolota-s-sapfirami-na-rojdenie-malchika-1167
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-jemchugom-i-brilliantami-na-zakaz-518
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-dragocennymi-kamnyami-na-zakaz-502
https://uvelirmoscow.ru/katalog/kulony-17/serebryanaya-podveska-dlya-tennisistki-4103
https://uvelirmoscow.ru/katalog/braslety-73/mujskoy-serebryanyy-braslet-pleteniya-yakornoe-s-glidernymi-zvenyami-1080
https://uvelirmoscow.ru/katalog/braslety-73/muzhskoj-braslet-iz-belogo-zolota-pleteniya-bismark-1077
https://uvelirmoscow.ru/katalog/kulony-17/serebryanaya-podveska-v-vide-lapy-4113
https://uvelirmoscow.ru/katalog/kulony-17/podveska-iz-belogo-zolota-s-nebolshim-brilliantom-1744
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-na-zakaz-e-6-596
https://uvelirmoscow.ru/katalog/braslety-73/mujskoy-serebryanyy-braslet-pleteniya-pancirnoe-1075
https://uvelirmoscow.ru/katalog/kulony-17/kulon-iz-zheltogo-zolota-skorpion-1060
https://uvelirmoscow.ru/katalog/kulony-17/parnye-podveski-v-vide-krylev-iz-jeltogo-i-belogo-zolota-s-brilliantami-1034
https://uvelirmoscow.ru/katalog/kulony-17/pamyatnaya-podveska-iz-serebra-s-cherneniem-1116
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-na-zakaz-891
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-brilliantami-na-zakaz-513
https://uvelirmoscow.ru/katalog/braslety-73/muzhskoj-braslet-iz-belogo-zolota-pleteniya-pancirnoe-1075
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-brilliantami-na-zakaz-515
https://uvelirmoscow.ru/katalog/braslety-73/braslet-figaro-iz-platiny-na-zakaz-1082
https://uvelirmoscow.ru/katalog/kulony-17/krest-iz-belogo-zolota-s-dorozhkoj-iz-brilliantov-1844-11
https://uvelirmoscow.ru/katalog/kulony-17/kulon-q-006-142
https://uvelirmoscow.ru/katalog/braslety-73/braslet-s-brilliantami-b-9-245
https://uvelirmoscow.ru/katalog/na-rojdenie-159/serebryanaya-podveska-na-rojdenie-malchika-1164
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-chernymi-i-belymi-brilliantami-na-zakaz-516
https://uvelirmoscow.ru/katalog/braslety-73/muzhskoj-platinovyj-braslet-pleteniya-bismark-1077
https://uvelirmoscow.ru/katalog/braslety-73/zolotoj-braslet-cat-s-brilliantami-1775
https://uvelirmoscow.ru/katalog/kulony-17/filigrannaya-podveska-iz-serebra-s-malahitom-1048
https://uvelirmoscow.ru/katalog/kulony-17/podveska-pyatachok-iz-kombinirovannogo-zolota-na-zakaz-1057
https://uvelirmoscow.ru/katalog/kulony-17/podveska-v-vide-bukvy-m-iz-jeltogo-zolota-1052
https://uvelirmoscow.ru/katalog/braslety-73/jenskiy-serebryanyy-braslet-pleteniya-love-1076
https://uvelirmoscow.ru/katalog/kulony-17/serdce-iz-belogo-zolota-s-dorozhkoj-iz-brilliantov-1357
https://uvelirmoscow.ru/katalog/kulony-17/elegantnoe-zolotoe-kole-trinity-1798
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-belogo-zolota-s-brilliantami-dlya-mamy-malchika-1170
https://uvelirmoscow.ru/katalog/na-rojdenie-159/zolotoy-braslet-s-brilliantami-dlya-mamy-malchika-1169
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-jeltogo-zolota-s-relefnoy-poverhnostyu-malchik--1173
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-belogo-zolota-s-relefnoy-poverhnostyu-malchik--1174
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-belogo-zolota-s-relefnoy-poverhnostyu-devochka--1175
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-jeltogo-zolota-s-relefnoy-poverhnostyu-devochka--1176
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-belogo-zolota-s-brilliantami-na-rojdenie-devochki-1171
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-jeltogo-zolota-s-brilliantami-na-rojdenie-devochki-1172
https://uvelirmoscow.ru/katalog/braslety-73/braslet-iz-kombinirovannogo-zolota-ruchnoj-raboty-1760
https://uvelirmoscow.ru/katalog/braslety-73/parnye-braslety-iz-jeltogo-zolota-s-brilliantami-1134
https://uvelirmoscow.ru/katalog/kulony-17/serebryannye-podveski-s-malahitom-i-brilliantami-1016
https://uvelirmoscow.ru/katalog/kulony-17/zolotoj-kulon-s-kruglym-brilliantom-1753
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-belogo-zolota-s-emalyu-na-rojdenie-malchika-1181
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-malchik-iz-jeltogo-zolota-s-emalyu-1179
https://uvelirmoscow.ru/katalog/braslety-73/jenskiy-serebryanyy-braslet-beskonechnost-s-brilliantami-1079
https://uvelirmoscow.ru/katalog/kulony-17/serebryanaya-podveska-posoh-asklepiya-s-naturalnym-hrizolitom-1074
https://uvelirmoscow.ru/katalog/kulony-17/elegantnoe-zolotoe-kole-minimal-4046
https://uvelirmoscow.ru/katalog/kulony-17/zolotaya-podveska-s-brilliantom-1746
https://uvelirmoscow.ru/katalog/kulony-17/podveska-v-forme-kapli-s-brilliantom-grusha-1362
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-na-zakaz-z-5-585
https://uvelirmoscow.ru/katalog/braslety-73/jenskiy-serebryanyy-braslet-pleteniya-nonna--1083
https://uvelirmoscow.ru/katalog/braslety-73/mujskoy-braslet-iz-serebra-v-vide-motocepi-1078
https://uvelirmoscow.ru/katalog/braslety-73/glidernyy-braslet-iz-belogo-zolota-s-brilliantami-1089
https://uvelirmoscow.ru/katalog/kulony-17/krest-iz-belogo-zolota-s-rossypyu-nebolshih-brilliantov-1604
https://uvelirmoscow.ru/katalog/kulony-17/krest-iz-belogo-zolota-s-dorozhkoj-iz-brilliantov-1844
https://uvelirmoscow.ru/katalog/kulony-17/podveska-v-forme-kapli-s-brilliantom-grusha-936
https://uvelirmoscow.ru/katalog/braslety-73/eksklyuzivnyj-braslet-iz-belogo-zolota-s-brilliantami-1796
https://uvelirmoscow.ru/katalog/braslety-73/jenskiy-braslet-iz-serebra-s-podveskami-1081
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-602
https://uvelirmoscow.ru/katalog/braslety-73/braslet-iz-belogo-zolota-s-4-602
https://uvelirmoscow.ru/katalog/kulony-17/zolotaya-hamsa-927
https://uvelirmoscow.ru/katalog/braslety-73/braslet-b-3-149
https://uvelirmoscow.ru/katalog/kulony-17/kulon-iz-belogo-zolota-s-ametistom-i-brilliantami-1156
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-belogo-zolota-s-brilliantami-deti-1186
https://uvelirmoscow.ru/katalog/na-rojdenie-159/zolotoy-braslet-s-brilliantami-deti--1186
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-dlya-mamy-iz-belogo-zolota-s-relefnoy-poverhnostyu-1184
https://uvelirmoscow.ru/katalog/na-rojdenie-159/zolotoy-braslet-dlya-mamy-s-relefnoy-poverhnostyu-1184
https://uvelirmoscow.ru/katalog/na-rojdenie-159/braslet-iz-jeltogo-zolota-s-dragocennymi-kamnyami-deti--1185
https://uvelirmoscow.ru/katalog/na-rojdenie-159/zolotoy-braslet-s-dragocennymi-kamnyami-deti--1185
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-605
https://uvelirmoscow.ru/katalog/kulony-17/podveska-s-barochnym-zhemchugom-4211
https://uvelirmoscow.ru/katalog/braslety-73/braslet-dlya-mamy-s-devochkami-4088
https://uvelirmoscow.ru/katalog/braslety-73/muzhskoj-cepnoj-braslet-iz-zolota-i-serebra-1752
https://uvelirmoscow.ru/katalog/kulony-17/podveska-iz-belogo-zolota-s-zhemchugom-i-zmeyami-4045
https://uvelirmoscow.ru/katalog/kulony-17/pravoslavnyj-krest-iz-serebra-s-pozolotoj-i-cherneniem-1763
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-izumrudami-i-brilliantami-na-zakaz-599
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-jemchugom-i-brilliantami-na-zakaz-527
https://uvelirmoscow.ru/katalog/kulony-17/podveska-s-naturalnym-hrizolitom-i-brilliantami-1359
https://uvelirmoscow.ru/katalog/kulony-17/podveska-iz-belogo-zolota-s-brilliantami-4112
https://uvelirmoscow.ru/katalog/braslety-73/braslet-cepnoj-iz-zheltogo-zolota-1742
https://uvelirmoscow.ru/katalog/kulony-17/podveska-s-tanzanitom-ogranki-serdce-4080
https://uvelirmoscow.ru/katalog/braslety-73/braslet-lisij-hvost-zheltoe-zoloto-603
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-na-zakaz-z-2-582
https://uvelirmoscow.ru/katalog/braslety-73/zolotoy-braslet-s-sapfirami-i-brilliantami-na-zakaz-342
https://uvelirmoscow.ru/katalog/kulony-17/podveska-iz-belogo-zolota-hokkeynye-klyushki--1097
https://uvelirmoscow.ru/katalog/kulony-17/podveska-v-forme-kapli-s-brilliantom-grusha-4110
https://uvelirmoscow.ru/katalog/braslety-73/braslet-so-znakom-beskonechnosti-i-podveskoj-1804
https://uvelirmoscow.ru/katalog/kulony-17/podveska-dragon-iz-kombinirovannogo-zolota-1792
https://uvelirmoscow.ru/katalog/kulony-17/pravoslavnaya-ladanka-iz-kombinirovannogo-zolota-1129
https://uvelirmoscow.ru/katalog/kulony-17/krest-iz-jeltogo-i-belogo-zolota-1129
https://uvelirmoscow.ru/katalog/braslety-73/platinovyj-braslet-s-8-607
https://uvelirmoscow.ru/katalog/braslety-73/jenskiy-serebryanyy-braslet-bismark-abinata--1084
https://uvelirmoscow.ru/katalog/braslety-73/serebryanyy-braslet-s-chernym-oniksom-1120
https://uvelirmoscow.ru/katalog/kulony-17/vintazhnyj-kulon-s-rubellitom-i-brilliantami-1741
https://uvelirmoscow.ru/katalog/kulony-17/ladanka-iz-belogo-zolota-4114
https://uvelirmoscow.ru/katalog/kulony-17/platinovaya-podveska-v-vide-kresta-s-brilliantami-1041
https://uvelirmoscow.ru/katalog/kulony-17/pravoslavnyy-krest-iz-jeltogo-zolota-1144
https://uvelirmoscow.ru/katalog/suveniry-i-podarki-13/podveski-iz-belogo-zolota-dlya-vogue-cafe-1675
https://uvelirmoscow.ru/katalog/suveniry-i-podarki-13/znachok-na-lackan-pidzhaka-s-logotipom-kompanii-iz-krasnogo-zolota-1673
https://uvelirmoscow.ru/katalog/suveniry-i-podarki-13/suvenirnaya-moneta-bitkoin-1664
https://uvelirmoscow.ru/katalog/suveniry-i-podarki-13/suvenirnye-kubiki-iz-zolota-1674
https://uvelirmoscow.ru/katalog/suveniry-i-podarki-13/serebryanaya-podveska-s-geraldicheskim-gerbom-1668
https://uvelirmoscow.ru/katalog/suveniry-i-podarki-13/serebryanyj-brelok-v-vide-sobaki-4200
https://uvelirmoscow.ru/katalog/suveniry-i-podarki-13/serebryanaya-pryazhka-na-remen-v-stile-dior-4105
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-figaro-3-1-696
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-singapur-832
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-figaro-5-1-720
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-yakornoe-dvojnoe-iz-platiny-673
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-sneyk-700
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-yakornoe-2-1-743
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-shopard-rollo-belcer-iz-platiny-716
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-moskovskij-bit-746
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-bismark-718
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-tolstaya-serebryanaya-cepochka-st-3-676
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-roza--708
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-persidskoe-iz-belogo-zolota-729
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-persidskoe-iz-zheltogo-zolota-729
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-persidskoe--729
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-romb-693
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-kosa-688
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-pancirnaya--701
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-bismark-iz-platiny-689
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-figaro-5-1-iz-zheltogo-zolota-720
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-figaro-5-1-iz-belogo-zolota-720
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-figaro--720
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-pancirnoe-dvojnoe-iz-belogo-zolota-700
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-yakornaya-2-1--743
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-singapur-694
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-2-1-iz-belogo-zolota-743
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-pancirnaya-dvoynaya--738
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-2-1-iz-zheltogo-zolota-743
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-bismark-trojnoj-iz-platiny-725
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-lisij-xvost-kvadrat-715
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-lisij-xvost-krug-iz-serebra-745
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-moskovskij-bit-iz-belogo-zolota-746
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-moskovskiy-bit--746
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-moskovskij-bit-iz-zheltogo-zolota-746
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-yakornoe-2-1-726
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-pancirnoe-dvojnoe-734
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-rucheek--718
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-bismark-iz-belogo-zolota-718
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-bismark-iz-zheltogo-zolota-718
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zolotaya-cepochka-mujskaya-cena-pletenie-pancirnoe-st-1-674
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-arabskij-bismark-iz-platiny-679
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-iz-platiny-702
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-figaro-5-1-iz-platiny-721
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-yakornoe-1-1-742
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-yakornoe-713
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-bismark--683
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zolotaya-cepochka-mujskaya-cena-cepochka-mujskaya-tolstaya-tm-4-669
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-bismark-686
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-glamurnyj-bismark-iz-platiny-668
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-lisij-xvost-kvadrat-iz-belogo-zolota-715
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-lisij-xvost-krug-iz-zheltogo-zolota-745
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-lisij-xvost-kvadrat-iz-zheltogo-zolota-715
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-lisij-xvost-krug-iz-belogo-zolota-745
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-lisiy-hvost-kvadrat--715
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-lisiy-hvost-krug--745
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-roza-iz-platiny-676
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-piton-685
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zolotaya-cepochka-mujskaya-cena-cepochka-mujskaya-tonkaya-tnm-2-671
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-yakornaya-2-1--726
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-pancirnoe-dvojnoe-iz-belogo-zolota-734
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zolotaya-cepochka-mujskaya-cena-cepochka-mujskaya-tolstaya-tm-2-667
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-pancirnaya-dvoynaya--734
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zolotaya-cepochka-mujskaya-cena-pletenie-pancirnoe-tm-1-666
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-pancirnaya--733
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-pancirnoe-iz-belogo-zolota-674
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-persidskoe-iz-platiny-729
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-1-1-iz-zheltogo-zolota-742
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-yakornoe-1-1--742
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-1-1-iz-belogo-zolota-742
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-pancirnoe-iz-platiny-688
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-yakornoe-1-1-728
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-shtora-723
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-figaro-3-1--741
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-figaro-696
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-figaro-3-1-iz-belogo-zolota-696
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-bismark-trojnoj-740
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-nonna-692
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-singapur-iz-zheltogo-zolota-832
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-832
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-singapur-iz-belogo-zolota-832
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-ulitka-skrepka-731
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-figaro-680
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-shtora--723
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-shtora-iz-belogo-zolota-723
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-yakornoe-dvojnoe-744
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-tonkaya-serebryanaya-cepochka-678
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-arab--713
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zolotaya-cepochka-mujskaya-cena-cepochka-mujskaya-tonkaya-tnm-1-670
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-yakornaya--687
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-pancirnoe-dvojnoe-iz-platiny-700
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-2-1-iz-platiny-743
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-moskovskij-bit-iz-platiny-746
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-bismark-iz-platiny-718
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-tolstaya-serebryanaya-cepochka-st-4-677
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-yakornoe-1-1--728
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-piton--709
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-yakornoe-1-1-iz-belogo-zolota-728
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-bismark-iz-platiny--687
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/cep-bismark-cherepashka-iz-jeltogo-zolota-1072
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-lisij-xvost-kvadrat-iz-platiny-715
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-lisij-xvost-krug-iz-platiny-745
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-yakornoe-2-1-iz-platiny-726
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-pancirnoe-dvojnoe-iz-platiny-734
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-lisiy-hvost-krug--735
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-lisiy-hvost-684
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-lisiy-hvost--707
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-pancirnoe-iz-platiny-674
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-bismark-trojnoj-iz-zheltogo-zolota-740
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-bismark-troynoy--740
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-bismark-trojnoj-iz-belogo-zolota-740
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-nonna-692
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-nonna-iz-krasnogo-zolota-692
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-nonna-iz-zheltogo-zolota-692
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-ulitka-skrepka-iz-belogo-zolota-731
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-ulitka-skrepka-iz-zheltogo-zolota-731
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-strujka--731
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-figaro-3-1-iz-platiny-696
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-pshenica--682
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-figaro-3-1-iz-zheltogo-zolota-682
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-shtora--722
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-dvojnoe-iz-zheltogo-zolota-744
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-yakornaya-dvoynaya--744
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-dvojnoe-iz-belogo-zolota-744
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-dvojnoj-rombo-iz-krasnogo-zolota-678
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-dvojnoj-rombo-iz-belogo-zolota-678
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-dvojnoj-rombo-iz-zheltogo-zolota-678
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-singapur-iz-platiny-832
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/cepochka-pleteniya-bismark-iz-zheltogo-zolota-683
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-1-1-iz-platiny-742
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-yakornoe-iz-platiny-713
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-yakornoe-1-1-iz-platiny-728
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-shopard-rollo-belcer-711
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-singapur--698
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-lisij-xvost-krug-iz-platiny-735
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-ulitka-skrepka-iz-platiny-731
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-yakornoe-dvojnoe-673
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-shopard-rollo-belcer-716
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-dvojnoe-iz-platiny-744
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-dvojnoj-rombo-iz-platiny-678
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-francuzskoe--711
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-shopard-rollo-belcer-iz-zheltogo-zolota-711
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-shopard-rollo-belcer-iz-krasnogo-zolota-711
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-arabskij-bismark-iz-zheltogo-zolota-698
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-arabskij-bismark-iz-krasnogo-zolota-698
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-arab--712
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-bismark-689
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zolotaya-cepochka-mujskaya-cena-cepochka-mujskaya-tonkaya-tnm-4-673
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-yakornoe-dvoynoe--727
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-francuzskoe--710
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-bismark-trojnoj-725
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-shopard-rollo-belcer-iz-zheltogo-zolota-716
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka--716
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-shopard-rollo-belcer-iz-belogo-zolota-716
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-tonkaya-serebryanaya-cepochka-pletenie-verevka--679
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-yakornoe-702
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-figaro-5-1-721
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/cepochka-bismark-iz-jeltogo-zolota-585-proby-1070
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-faraon-695
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-bismark-689
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-bismark--739
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-bismark-troynoy--725
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-glamur--706
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-bismark-troynoy--724
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-serebryanaya-cepochka-pleteniya-roza-676
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-shopard-rollo-belcer-iz-platiny-711
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-arabskij-bismark-iz-platiny-698
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/mujskaya-cepochka-arab--717
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-arabskij-bismark-iz-belogo-zolota-679
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-cepochka-pleteniya-arabskij-bismark-iz-zheltogo-zolota-679
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-iz-zheltogo-zolota-702
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-yakornaya--702
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-yakornoe-iz-belogo-zolota-702
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-figaro--721
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-figaro-5-1-iz-belogo-zolota-721
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/zhenskaya-cepochka-pleteniya-figaro-5-1-iz-zheltogo-zolota-721
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/muzhskaya-serebryanaya-cepochka-pleteniya-persidskoe-729
https://uvelirmoscow.ru/katalog/cepi-i-braslety-12/jenskaya-cepochka-marina--697
https://uvelirmoscow.ru/katalog/zaponki-41/zaponki-iz-krasnogo-zolota-leopard-1585
https://uvelirmoscow.ru/katalog/zaponki-41/zaponki-iz-jeltogo-zolota-vesy-979
https://uvelirmoscow.ru/katalog/zaponki-41/zolotye-zaponki-z-002-104
https://uvelirmoscow.ru/katalog/zaponki-41/zaponki-iz-belogo-zolota-s-logotipom-sberbanka-rf-978
https://uvelirmoscow.ru/katalog/zaponki-41/zaponki-s-vashimi-inicialami-na-zakaz-982
https://uvelirmoscow.ru/katalog/zaponki-41/zolotye-zaponki-12
https://uvelirmoscow.ru/katalog/zaponki-41/zolotye-zaponki-z-001-103
https://uvelirmoscow.ru/katalog/zaponki-41/zaponki-s-inicialami-iz-belogo-zolota-1671';

        $items = array_filter(array_map('trim', explode("\n", $text)));
        foreach ($items as $item) {
            $url_a = explode('/',$item);
            $url = $url_a[count($url_a)-1];

            $sql = 'select * from oc_url_alias where keyword="'.$url.'"';
            $query = $this->db->query($sql);
            $query_url = $query->row['query'];
            $query_array = explode('=',$query_url);
            $product_id = $query_array[1];



        }




    }


    public function getprods() {

        ini_set('display_errors', '1');
        error_reporting(E_ALL);

        $this->load->model('catalog/category');
        $this->load->model('catalog/product');

        $sql = 'select * from oc_product';
        $query = $this->db->query($sql);

        echo '<table>';
        echo '<thead>';
        echo '<tr>';
        echo '<th>ID</th>';
        echo '<th>УРЛ</th>';
        echo '<th>Название</th>';
        echo '<th>Title(база)</th>';
        echo '<th>Title</th>';
        echo '<th>H1</th>';
        echo '<th>Meta-Description(база)</th>';
        echo '<th>Meta-Description(генерация)</th>';
        //echo '<th>Meta-Description</th>';
        echo '<th>Canonical</th>';
        echo '<th>Текст (Description)</th>';
        echo '<th>Статус</th>';
        echo '<th>Фото</th>';
        echo '<th>Цена</th>';
        echo '<th>Цена за работу</th>';
        echo '<th>Цена за материал</th>';
        echo '</tr>';
        echo '</thead>';
        foreach ($query->rows as $row) {

            $row['product_id'] = 1344;
            $status = 'Включено';
            if($row['status']==0) {
                $status = 'Выключено';
            }
            $foto = 'нет';
            if($row['image']) {
                $foto = 'Есть';
            }

            $product_info = $this->model_catalog_product->getProduct($row['product_id']);

            if($product_info) {

                $prod_info = $this->product_get($row['product_id']);



                if ($product_info['meta_title']) {
                    //$category_info['meta_title'] = $category_info['name'];
                    $canonical = $this->url->link('product/product','product_id=' . $prod_info['prod_id']);
                    $description = html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8');
                    $price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
                    $price_works = $this->currency->format($this->tax->calculate($product_info['price_works'], $product_info['tax_class_id'], $this->config->get('config_tax')));
                    $price_materials = $this->currency->format($this->tax->calculate($product_info['price_materials'], $product_info['tax_class_id'], $this->config->get('config_tax')));

                    $id = $row['product_id'];
                    $name = $product_info['name'];
                    $title_db = $product_info['meta_title'];
                    if($title_db=='') {
                        $title = $product_info['name'];
                    } else {
                        $title = $title_db;
                    }

                    $h1 = $product_info['meta_h1'];
                    $meta_description_db = $product_info['meta_description'];
                    //      $meta_description = $category_info['meta_description'];
                    $url = $this->url->link('product/product', 'product_id='  . $id );

                    echo '<tr>';
                    echo '<td>'.$id.'</td>';
                    echo '<td>'.$url.'</td>';
                    echo '<td>'.$name.'</td>';

                    echo '<td>'.$title_db.'</td>';
                    echo '<td>'.$title.'</td>';
                    echo '<td>'.$h1.'</td>';
                    echo '<td>'.$meta_description_db.'</td>';
                    echo '<td>'.$prod_info['meta_description'].'</td>';
                    echo '<td>'.$canonical.'</td>';
                    echo '<td>'.$description.'</td>';
                    echo '<td>'.$status.'</td>';
                    echo '<td>'.$foto.'</td>';
                    echo '<td>'.$price.'</td>';
                    echo '<td>'.$price_works.'</td>';
                    echo '<td>'.$price_materials.'</td>';
                    echo '</tr>';

                }

              
            }




        }

        echo '</table>';

    }
    public function getcats() {

        ini_set('display_errors', '1');
        error_reporting(E_ALL);

        $this->load->model('catalog/category');
        $this->load->model('catalog/product');

        $sql = 'select * from oc_category';
        $query = $this->db->query($sql);

        echo '<table>';
        echo '<thead>';
        echo '<tr>';
        echo '<th>ID</th>';
        echo '<th>УРЛ</th>';
        echo '<th>Название</th>';
        echo '<th>Title(база)</th>';
        echo '<th>Title</th>';
        echo '<th>H1</th>';
        echo '<th>Meta-Description(база)</th>';
        //echo '<th>Meta-Description</th>';
        echo '<th>Canonical</th>';
        echo '<th>Текст (Description)</th>';
        echo '</tr>';
        echo '</thead>';
        foreach ($query->rows as $row) {

            $category_info = $this->model_catalog_category->getCategory($row['category_id']);

            if($category_info) {

                if ($category_info['meta_title']) {
                    //$category_info['meta_title'] = $category_info['name'];
                    $canonical = $this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL');
                    $description = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');


                    $id = $row['category_id'];
                    $name = $category_info['name'];
                    $title_db = $category_info['meta_title'];
                    $title = $category_info['name'];
                    $h1 = $category_info['meta_h1'];
                    $meta_description_db = $category_info['meta_description'];
              //      $meta_description = $category_info['meta_description'];
                    $url = $this->url->link('product/category', 'path='  . $id );

                    echo '<tr>';
                    echo '<td>'.$id.'</td>';
                    echo '<td>'.$url.'</td>';
                    echo '<td>'.$name.'</td>';

                    echo '<td>'.$title_db.'</td>';
                    echo '<td>'.$title.'</td>';
                    echo '<td>'.$h1.'</td>';
                    echo '<td>'.$meta_description_db.'</td>';
                    echo '<td>'.$canonical.'</td>';
                    echo '<td>'.$description.'</td>';
                    echo '</tr>';

                }


            }




        }

        echo '</table>';

    }

    public function getnullcategory() {

        $this->load->model('catalog/category');
        $this->load->model('catalog/product');


        $sql= 'select * from oc_category';
        $query_store = $this->db->query($sql);
        foreach ($query_store->rows as $row) {

        $filter_data = array(
            'filter_category_id' => $row['category_id']
        );


        $product_total = $this->model_catalog_product->getTotalProducts($filter_data);
        if(!$product_total) {

            $sql= 'select * from oc_category_description where category_id='.$row['category_id'];
            $query_store2 = $this->db->query($sql);

            echo 'update oc_category set status=0 where category_id='.$row['category_id'].';<br>';


            //echo $query_store2->row['name'].'<br>';

        }

        }

    }

    public function translit2($str)
    {
        $tr = array(
            "А" => "a", "Б" => "b", "В" => "v", "Г" => "g",
            "Д" => "d", "Е" => "e", "Ё" => "e", "Ж" => "j", "З" => "z", "И" => "i",
            "Й" => "y", "К" => "k", "Л" => "l", "М" => "m", "Н" => "n",
            "О" => "o", "П" => "p", "Р" => "r", "С" => "s", "Т" => "t",
            "У" => "u", "Ф" => "f", "Х" => "h", "Ц" => "ts", "Ч" => "ch",
            "Ш" => "sh", "Щ" => "sch", "Ъ" => "", "Ы" => "yi", "Ь" => "",
            "Э" => "e", "Ю" => "yu", "Я" => "ya", "а" => "a", "б" => "b",
            "в" => "v", "г" => "g", "д" => "d", "е" => "e", "ё" => "e", "ж" => "j",
            "з" => "z", "и" => "i", "й" => "y", "к" => "k", "л" => "l",
            "м" => "m", "н" => "n", "о" => "o", "п" => "p", "р" => "r",
            "с" => "s", "т" => "t", "у" => "u", "ф" => "f", "х" => "h",
            "ц" => "ts", "ч" => "ch", "ш" => "sh", "щ" => "sch", "ъ" => "y",
            "ы" => "yi", "ь" => "", "э" => "e", "ю" => "yu", "я" => "ya",
            " -" => "", "," => "", " " => "-", "." => "", "/" => "_",
            "-" => "", '"' => '', '(' => '-', ')' => '-', '+' => '-'
        );
        return strtr($str, $tr);
    }


    public function chpu_prods()
    {
        $sqlt = '';
        $sql ='select * from oc_category_description';
        $query_store = $this->db->query($sql);
        foreach ($query_store->rows as $item) {
            $sql= 'select * from oc_url_alias where query="category_id='.$item['category_id'].'"';
            $query_store2 = $this->db->query($sql);
            if($query_store2->num_rows==0) {
                $name = $item['name'];
                if($name!='') {
            $trans = strtolower(htmlspecialchars_decode($this->translit2($name)));
            $trans = preg_replace('/[^a-z0-9\- ]/', '', $trans);
                   // $sqlt .='delete from oc_url_alias where query="category_id='.$item['category_id'].'";<br>';
            $sqlt .='insert into oc_url_alias set query="category_id='.$item['category_id'].'",keyword="'.$trans.'";<br>';

                }
            }

        }

        echo $sqlt;

    }



public function ddk()
{

    $str = 'https://uvelirmoscow.ru/nasha-rabota/roza-vetrov-0
https://uvelirmoscow.ru/nasha-rabota/kubinskaya-cep-iz-serebra-s-kamnyami-0
https://uvelirmoscow.ru/nasha-rabota/nastolnaya-statuetka-s-podvizhnym-elementom-0
https://uvelirmoscow.ru/nasha-rabota/sergi-s-izumrudami-0
https://uvelirmoscow.ru/nasha-rabota/garnitur-s-brilliantovym-mele-0
https://uvelirmoscow.ru/nasha-rabota/kolco-s-tanzanitom-i-brilliantami-0
https://uvelirmoscow.ru/nasha-rabota/kolco-s-zhukom-0
https://uvelirmoscow.ru/nasha-rabota/sergi-s-izumrudami-i-brilliantami-0
https://uvelirmoscow.ru/nasha-rabota/zvezda-davida-iz-krasnogo-zolota-0
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-zolota-s-podvizhnym-elementom-791
https://uvelirmoscow.ru/nasha-rabota/zolotoe-kole-s-podvizhnym-elementom-793
https://uvelirmoscow.ru/nasha-rabota/kolco-s-zheltymi-i-belymi-brilliantami-0
https://uvelirmoscow.ru/nasha-rabota/sergi-s-oniksom-i-almaznoj-granyu-0
https://uvelirmoscow.ru/nasha-rabota/krestik-s-podvizhnym-elementom-0
https://uvelirmoscow.ru/nasha-rabota/muzhskaya-pechatka-s-cherneniem-784
https://uvelirmoscow.ru/nasha-rabota/braslet-iz-zolota-0
https://uvelirmoscow.ru/nasha-rabota/podveska-s-medvedem-i-lisoj-0
https://uvelirmoscow.ru/nasha-rabota/garnitur-fey-0
https://uvelirmoscow.ru/nasha-rabota/podveska-s-sobakoj-0
https://uvelirmoscow.ru/nasha-rabota/podarok-na-serebryanuyu-svadbu-0
https://uvelirmoscow.ru/nasha-rabota/pussety-s-brilliantami-ogranki-treugolnik-0
https://uvelirmoscow.ru/nasha-rabota/podveska-serdce-0
https://uvelirmoscow.ru/nasha-rabota/tennisnyj-braslet-769
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-belogo-zolota-s-brilliantami-na-zakaz-259
https://uvelirmoscow.ru/nasha-rabota/kruglye-pussety-s-brilliantami-0
https://uvelirmoscow.ru/nasha-rabota/sergi-s-oniksom-772
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=773
https://uvelirmoscow.ru/nasha-rabota/sergi-s-gornym-hrustalem-761
https://uvelirmoscow.ru/nasha-rabota/persten-s-izumrudami-i-brilliantami-0
https://uvelirmoscow.ru/nasha-rabota/sergi-s-melle-iz-brilliantov-0
https://uvelirmoscow.ru/nasha-rabota/podvizhnye-sergi-s-brilliantami-i-sapfirami-0
https://uvelirmoscow.ru/nasha-rabota/kolco-v-stile-busheron-0
https://uvelirmoscow.ru/nasha-rabota/kolco-s-effektom-zvezdnogo-neba-0
https://uvelirmoscow.ru/nasha-rabota/podveska-s-lunnym-kamnem-i-brilliantami-0
https://uvelirmoscow.ru/nasha-rabota/cep-s-imennoj-simvolikoj-0
https://uvelirmoscow.ru/nasha-rabota/sergi-s-brilliantami-i-rozovoj-emalyu-0
https://uvelirmoscow.ru/nasha-rabota/imennaya-podveska-iz-zolota-0
https://uvelirmoscow.ru/nasha-rabota/kolco-princessy-diany-0
https://uvelirmoscow.ru/nasha-rabota/podveska-spartak-0
https://uvelirmoscow.ru/nasha-rabota/kolco-s-sapfirami-0
https://uvelirmoscow.ru/nasha-rabota/brilliantovaya-podveska-s-inicialami-0
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=727
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=717
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=725
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=712
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=705
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=718
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=720
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=713
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=709
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=708
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=722
https://uvelirmoscow.ru/nasha-rabota/https://uvelirmoscow.ru/index.php?route=product/project&project_id=721
https://uvelirmoscow.ru/nasha-rabota/unikalnaya-zolotaya-podveska-animal-652
https://uvelirmoscow.ru/nasha-rabota/lakonichnye-zolotye-sergi-s-brilliantami-644
https://uvelirmoscow.ru/nasha-rabota/sergi-s-brilliantami-i-adulyarom-v-vide-kapli-641
https://uvelirmoscow.ru/nasha-rabota/kolco-dlya-pomolvki-iz-belogo-zolota-s-brilliantami-621
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-belogo-zolota-s-gladkoj-poverhnostyu-599
https://uvelirmoscow.ru/nasha-rabota/zolotye-sergi-s-izumrudami-i-brilliantami-576
https://uvelirmoscow.ru/nasha-rabota/sergi-pusety-iz-belogo-zolota-s-sapfirami-i-brilliantami-493
https://uvelirmoscow.ru/nasha-rabota/obruchalnoe-kolco-iz-rozovogo-zolota-s-brilliantami-ogranki-roza-389
https://uvelirmoscow.ru/nasha-rabota/zaponki-s -monogrammoj-390
https://uvelirmoscow.ru/nasha-rabota/pechatki-kopii-yuvelirnyh-ukrasheniy-nachala-xix-veka-480
https://uvelirmoscow.ru/nasha-rabota/serebryanoe-kolco-s-belym-kaholongom-483
https://uvelirmoscow.ru/nasha-rabota/hamsa-001
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-585-proby-v-forme-rozy-473
https://uvelirmoscow.ru/nasha-rabota/kolco-dlya-pomolvki-s-brilliantom-466
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-belogo-zolota-s-zelenymi-brilliantami-462
https://uvelirmoscow.ru/nasha-rabota/dva-brasleta-dlya-semeynoy-pary-s-brilliantami-461
https://uvelirmoscow.ru/nasha-rabota/persten-iz-jeltogo-zolota-s-naturalnym-kvarcem-434
https://uvelirmoscow.ru/nasha-rabota/dvustoronnyaya-podveska-iz-jeltogo-zolota-s-brilliantami-i-izumrudom-433
https://uvelirmoscow.ru/nasha-rabota/garnitur-iz-belogo-zolota-s-ametistami-kolco-i-sergi-420
https://uvelirmoscow.ru/nasha-rabota/obemnoe-kolco-iz-belogo-zolota-s-brilliantami-418
https://uvelirmoscow.ru/nasha-rabota/jenskoe-kolco-iz-belogo-zolota-s-topazami-i-brilliantami-410
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-585-proby-s-brilliantami-409
https://uvelirmoscow.ru/nasha-rabota/sergi-gvozdiki-iz-jeltogo-zolota-s-kruglymi-rubinami-407
https://uvelirmoscow.ru/nasha-rabota/kulon-iz-jeltogo-zolota-s-golubym-akvamarinom-406
https://uvelirmoscow.ru/nasha-rabota/matovye-obruchalnye-kolca-parnye-iz-jeltogo-zolota-s-brilliantom-403
https://uvelirmoscow.ru/nasha-rabota/jenskoe-kolco-iz-jeltogo-zolota-585-proby-s-brilliantami-402
https://uvelirmoscow.ru/nasha-rabota/podveska-v-vide-monety-pyatachok-iz-krasnogo-i-belogo-zolota-401
https://uvelirmoscow.ru/nasha-rabota/cepochka-pleteniya-bismark-cherepashka-iz-jeltogo-zolota-585-proby-413
https://uvelirmoscow.ru/nasha-rabota/kolco-v-stile-cartier-destinée-iz-belogo-zolota-s-brilliantami
https://uvelirmoscow.ru/nasha-rabota/cepochka-pleteniya-sneyk-s-podveskoy-lvenok-iz-jeltogo-zolota-387
https://uvelirmoscow.ru/nasha-rabota/kopiya-serebryanoy-sergi-s-granatami-vzamen-uteryannoy-385
https://uvelirmoscow.ru/nasha-rabota/mujskaya-pechatka-iz-krasnogo-zolota-s-rubinom-i-brilliantom-384
https://uvelirmoscow.ru/nasha-rabota/podveska-tri-brata-iz-zolota-treh-cvetov-s-sapfirami-381
https://uvelirmoscow.ru/nasha-rabota/serebryanaya-podveska-s-krasnoy-emalyu-v-vide-bukv-hv-379
https://uvelirmoscow.ru/nasha-rabota/filigrannaya-serebryanaya-podveska-s-malahitom-365
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-krupnym-ametistom-i-brilliantami-362
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-s-brilliantami-izumrudom-i-granatom-354
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-jeltogo-zolota-s-uzorom-i-sapfirami-352
https://uvelirmoscow.ru/nasha-rabota/sergi-s-brilliantami-iz-platiny-950-proby-347
https://uvelirmoscow.ru/nasha-rabota/pravoslavnyy-krest-iz-jeltogo-zolota-na-zakaz-341
https://uvelirmoscow.ru/nasha-rabota/yuvelirnyy-garnitur-kolco-sergi-iz-belogo-zolota-s-ceylonskimi-sapfirami-i-brilliantami-338
https://uvelirmoscow.ru/nasha-rabota/kolco-flora-iz-jeltogo-zolota-750-proby-s-brilliantami-337
https://uvelirmoscow.ru/nasha-rabota/pomolvochnoe-kolco-iz-belogo-zolota-s-krupnym-brilliantom-335
https://uvelirmoscow.ru/nasha-rabota/yuvelirnyy-garnitur-iz-belogo-zolota-s-cherepami-kolco-sergi-pussety--334
https://uvelirmoscow.ru/nasha-rabota/obruchalnoe-kolco-iz-krasnogo-zolota-s-relefnym-uzorom-331
https://uvelirmoscow.ru/nasha-rabota/pomolvochnoe-kolco-iz-belogo-zolota-s-brilliantami-327
https://uvelirmoscow.ru/nasha-rabota/pomolvochnoe-kolco-iz-krasnogo-zolota-s-brilliantami-326
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-brilliantami-na-zakaz-325
https://uvelirmoscow.ru/nasha-rabota/dvuhstoronnee-kolco-iz-krasnogo-zolota-s-rubinom-i-biryuzoy-323
https://uvelirmoscow.ru/nasha-rabota/cepochka-verevka-iz-jeltogo-zolota-321
https://uvelirmoscow.ru/nasha-rabota/pomolvochnoe-kolco-iz-platiny-s-brilliantom-320
https://uvelirmoscow.ru/nasha-rabota/kolca-iz-jeltogo-zolota-s-rauhtopazami-i-brilliantami-319
https://uvelirmoscow.ru/nasha-rabota/podveska-iz-jeltogo-zolota-s-ametrinom-318
https://uvelirmoscow.ru/nasha-rabota/podveska-serdechko-iz-platiny-s-brilliantom-317
https://uvelirmoscow.ru/nasha-rabota/pomolvochnoe-kolco-s-tancuyushchim-brilliantom-313
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-ametistami-i-akvamarinami-312
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-krasnogo-i-jeltogo-zolota-308
https://uvelirmoscow.ru/nasha-rabota/podveska-raspyatie-iz-kombinirovannogo-zolota-307
https://uvelirmoscow.ru/nasha-rabota/persten-iz-jeltogo-zolota-s-rauhtopazom-i-brilliantami-305
https://uvelirmoscow.ru/nasha-rabota/imennaya-podveska-iz-belogo-zolota-s-brilliantami-304
https://uvelirmoscow.ru/nasha-rabota/podveska-iz-belogo-zolota-s-krupnym-topazom-i-brilliantami-303
https://uvelirmoscow.ru/nasha-rabota/sergi-pussety-iz-jeltogo-zolota-s-akvamarinom-302
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-kombinirovannogo-zolota-s-uzorom-301
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-kombinirovannogo-zolota-s-gravirovkoy-298
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-jeltogo-zolota-s-izumrudami-i-brilliantami-297
https://uvelirmoscow.ru/nasha-rabota/pomolvochnoe-kolco-iz-jeltogo-zolota-s-brilliantami-296
https://uvelirmoscow.ru/nasha-rabota/garnitur-sergi-i-podveska-iz-belogo-zolota-s-brilliantami-295
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-la-tour-eiffel-iz-jeltogo-zolota-s-brilliantami-294
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-uzorom-meandr--293
https://uvelirmoscow.ru/nasha-rabota/kolca-na-4-palca-iz-belogo-zolota-291
https://uvelirmoscow.ru/nasha-rabota/mujskaya-pechatka-iz-kombinirovannogo-zolota-s-brilliantom-289
https://uvelirmoscow.ru/nasha-rabota/podveska-vesna-iz-jeltogo-zolota-s-dragocennymi-kamnyami-287
https://uvelirmoscow.ru/nasha-rabota/kolco-dlya-pomolvki-iz-belogo-zolota-s-brilliantom-286
https://uvelirmoscow.ru/nasha-rabota/braslet-iz-belogo-zolota-s-podveskami-285
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-jeltogo-i-krasnogo-zolota-283
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-jeltogo-zolota-s-brilliantom-282
https://uvelirmoscow.ru/nasha-rabota/persten-iz-belogo-zolota-s-ametistom-i-rubinami-281
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-kladdah-iz-kombinirovannogo-zolota-280
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-rauhtopazom-i-brilliantami-279
https://uvelirmoscow.ru/nasha-rabota/persten-iz-kombinirovannogo-zolota-s-brilliantami-278
https://uvelirmoscow.ru/nasha-rabota/zolotye-sergi-s-brilliantami-i-sapfirami-277
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-belogo-zolota-s-fantaziynymi-brilliantami-276
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-belogo-zolota-750-proby-s-brilliantami-275
https://uvelirmoscow.ru/nasha-rabota/kolco-solnce-v-rukah-iz-jeltogo-zolota-s-rubinami-brilliantami-i-sapfirami-274
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-izumrudom-i-brilliantami-na-zakaz-273
https://uvelirmoscow.ru/nasha-rabota/kolco-roza-iz-belogo-zolota-s-rubinami-i-brilliantami-272
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-585-proby-s-brilliantom-270
https://uvelirmoscow.ru/nasha-rabota/kole-iz-belogo-zolota-s-izumrudom-i-brilliantami-269
https://uvelirmoscow.ru/nasha-rabota/zolotye-sergi-s-brilliantami-na-zakaz-268
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-sapfirom-i-28-brilliantami-267
https://uvelirmoscow.ru/nasha-rabota/troynaya-podveska-pazl-iz-serebra-s-imenami-266
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-jeltogo-zolota-s-rauh-topazami-i-brilliantami-265
https://uvelirmoscow.ru/nasha-rabota/podveska-obereg-kolovrat-iz-krasnogo-zolota-264
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-krasnogo-zolota-s-naturalnym-jemchugom-263
https://uvelirmoscow.ru/nasha-rabota/parnye-podveski-klever-iz-kombinirovannogo-zolota-262
https://uvelirmoscow.ru/nasha-rabota/chetki-volk-iz-belogo-zolota-s-rubinami-259
https://uvelirmoscow.ru/nasha-rabota/sergi-pussety-iz-kombinirovannogo-zolota-s-sapfirami-i-brilliantami-257
https://uvelirmoscow.ru/nasha-rabota/kolco-triniti-iz-krasnogo-belogo-i-jeltogo-zolota-256
https://uvelirmoscow.ru/nasha-rabota/pechatka-dota-iz-jeltogo-zolota-s-naturalnym-ametistom-255
https://uvelirmoscow.ru/nasha-rabota/kolco-aa-iz-jeltogo-zolota-s-brilliantom-254
https://uvelirmoscow.ru/nasha-rabota/sergi-pusety-iz-jeltogo-zolota-s-brilliantami-253
https://uvelirmoscow.ru/nasha-rabota/serebryanoe-kolco-granat-s-rubinami-252
https://uvelirmoscow.ru/nasha-rabota/braslet-iz-krasnogo-zolota-s-akvamarinami-250
https://uvelirmoscow.ru/nasha-rabota/kolco-monogamiya-iz-jeltogo-zolota-249
https://uvelirmoscow.ru/nasha-rabota/podveska-krolik-iz-belogo-zolota-s-rubinami-248
https://uvelirmoscow.ru/nasha-rabota/serebryanaya-podveska-prezrenie-smerti--247
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-kombinirovannogo-zolota-s-brilliantami-246
https://uvelirmoscow.ru/nasha-rabota/avtorskiy-braslet-iz-krasnogo-zolota-s-brilliantami-245
https://uvelirmoscow.ru/nasha-rabota/kole-iz-jeltogo-zolota-s-jemchugom-akoyya--243
https://uvelirmoscow.ru/nasha-rabota/braslet-na-ruku-iz-belogo-zolota-s-brilliantami-242
https://uvelirmoscow.ru/nasha-rabota/sergi-kaplya-iz-jeltogo-zolota-750-proby-241
https://uvelirmoscow.ru/nasha-rabota/serebryanoe-kolco-s-oniksom-i-kvarcem-240
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-s-brilliantami-na-zakaz-239
https://uvelirmoscow.ru/nasha-rabota/kulon-iz-jeltogo-zolota-s-krupnym-ametrinom-238
https://uvelirmoscow.ru/nasha-rabota/podveska-krest-iz-jeltogo-i-belogo-zolota-s-emalyu-237
https://uvelirmoscow.ru/nasha-rabota/sergi-nastroenie-iz-jeltogo-zolota-s-dragocennymi-kamnyami-235
https://uvelirmoscow.ru/nasha-rabota/kulon-iz-jeltogo-zolota-drevniy-druidskiy-simvol-233
https://uvelirmoscow.ru/nasha-rabota/serebryanyy-kulon-anagramma-l-a-234
https://uvelirmoscow.ru/nasha-rabota/serebryanaya-bulavka-s-logotipom-kompanii-232
https://uvelirmoscow.ru/nasha-rabota/kolco-bashni-iz-jeltogo-zolota-s-dragocennymi-kamnyami-231
https://uvelirmoscow.ru/nasha-rabota/krujevnoe-kolco-iz-belogo-zolota-s-brilliantami-230
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-gornym-hrustalem-229
https://uvelirmoscow.ru/nasha-rabota/dizaynerskoe-kolco-iz-belogo-zolota-s-opalami-228
https://uvelirmoscow.ru/nasha-rabota/kole-volchiy-klyk-iz-koji-i-belogo-zolota-s-rubinami-227
https://uvelirmoscow.ru/nasha-rabota/podveska-angel-iz-jeltogo-zolota-s-brilliantom-222
https://uvelirmoscow.ru/nasha-rabota/dvoynaya-podveska-iz-belogo-zolota-221
https://uvelirmoscow.ru/nasha-rabota/sergi-pussety-roza-iz-jeltogo-zolota-218
https://uvelirmoscow.ru/nasha-rabota/podveska-iz-belogo-zolota-s-krupnym-brilliantom-217
https://uvelirmoscow.ru/nasha-rabota/garnitur-kolco-i-sergi-iz-jeltogo-zolota-s-topazami-216
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-s-inicialami-211
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-jeltogo-zolota-210
https://uvelirmoscow.ru/nasha-rabota/podveska-cherepashka-iz-jeltogo-zolota-s-rubinom-209
https://uvelirmoscow.ru/nasha-rabota/garnitur-kolco-i-sergi-iz-jeltogo-zolota-208
https://uvelirmoscow.ru/nasha-rabota/zaponki-rubl-iz-belogo-zolota-200
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-krasnogo-zolota-s-citrinami-199
https://uvelirmoscow.ru/nasha-rabota/sergi-flora-iz-belogo-zolota-s-brilliantami-198
https://uvelirmoscow.ru/nasha-rabota/serebryanoe-kolco-s-rubinami-197
https://uvelirmoscow.ru/nasha-rabota/pechatka-iz-krasnogo-zolota-s-malahitom-195
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-kombinirovannogo-zolota-194
https://uvelirmoscow.ru/nasha-rabota/obruchalnye-kolca-iz-krasnogo-i-belogo-zolota-s-brilliantami-193
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-krasnogo-zolota-s-brilliantami-191
https://uvelirmoscow.ru/nasha-rabota/garnitur-sergi-i-podveska-iz-belogo-zolota-s-sapfirami-i-brilliantami-190
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-krasnogo-zolota-s-izumrudom-i-brilliantami-189
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-s-podveskoy-188
https://uvelirmoscow.ru/nasha-rabota/mujskoe-kolco-iz-kombinirovannogo-zolota-bez-vstavok-187
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-belogo-zolota-s-brilliantami-186
https://uvelirmoscow.ru/nasha-rabota/garnitur-kole-i-sergi-iz-belogo-zolota-s-brilliantami-185
https://uvelirmoscow.ru/nasha-rabota/zajim-dlya-deneg-iz-jeltogo-zolota-golova-drakona-s-rubinami-183
https://uvelirmoscow.ru/nasha-rabota/podveska-angel-iz-jeltogo-zolota-182
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-iz-rozovogo-zolota-181
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-belogo-zolota-s-brilliantami-177
https://uvelirmoscow.ru/nasha-rabota/parnye-obruchalnye-kolca-volna-iz-krasnogo-zolota-180
https://uvelirmoscow.ru/nasha-rabota/obruchalnoe-kolco-iz-belogo-zolota-s-matovoy-serdcevinoy-175
https://uvelirmoscow.ru/nasha-rabota/kolca-dlya-pomolvki-s-brilliantom-iz-jeltogo-zolota-174
https://uvelirmoscow.ru/nasha-rabota/kolco-s-keltskim-uzorom-171
https://uvelirmoscow.ru/nasha-rabota/kolca-pomolvochnye-s-brilliantom-iz-belogo-zolota-170
https://uvelirmoscow.ru/nasha-rabota/kolca-obruchalnye-krylya-kupidona-iz-belogo-zolota-169
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-jeltogo-zolota-s-brilliantami-na-zakaz-157
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-s-brilliantom-v-stile-modern-164
https://uvelirmoscow.ru/nasha-rabota/kolca-iz-belogo-zolota-s-brilliantami-158
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-jeltogo-zolota-kleopatra-s-topazami-i-rubinami-167
https://uvelirmoscow.ru/nasha-rabota/podveska-mclaren-iz-belogo-zolota-166
https://uvelirmoscow.ru/nasha-rabota/kolco-flora-iz-belogo-zolota-s-krupnym-oniksom-162
https://uvelirmoscow.ru/nasha-rabota/podveska-raspyatie-v-vide-kresta-iz-krasnogo-i-jeltogo-zolota-165
https://uvelirmoscow.ru/nasha-rabota/kolco-roza-iz-belogo-zolota-s-podveskoy-163
https://uvelirmoscow.ru/nasha-rabota/braslet-iz-jeltogo-zolota-svarog-201
https://uvelirmoscow.ru/nasha-rabota/kolco-roza-iz-jeltogo-zolota-203
https://uvelirmoscow.ru/nasha-rabota/serebryanoe-kolco-tripleks-204
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-dragocennymi-kamnyami-205
https://uvelirmoscow.ru/nasha-rabota/natelnyy-serebryanyy-krestik-s-izumrudami-206
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-podveskoy-solnce-207
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-s-brilliantom-152
https://uvelirmoscow.ru/nasha-rabota/ajurnye-obruchalnye-kolca-150
https://uvelirmoscow.ru/nasha-rabota/kolco-s-zvezdchatym-sapfirom-149
https://uvelirmoscow.ru/nasha-rabota/kolca-so-skvoznoy-nadpisyu-mariya-i-mitya-148
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-s-jeltym-sapfirom-paparadja--147
https://uvelirmoscow.ru/nasha-rabota/sergi-s-jemchugom-i-mayolikoy-146
https://uvelirmoscow.ru/nasha-rabota/podveska-cherep-iz-jeltogo-zolota-143
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-s-tremya-brilliantami-141
https://uvelirmoscow.ru/nasha-rabota/podveska-salamandra-iz-jeltogo-zolota-so-vstavkami-140
https://uvelirmoscow.ru/nasha-rabota/sergi-iz-belogo-zolota-s-izumrudami-138
https://uvelirmoscow.ru/nasha-rabota/kulon-v-vide-razbitogo-serdca-137
https://uvelirmoscow.ru/nasha-rabota/podveska-v-vide-znaka-kolovrat--136
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-belogo-zolota-po-modeli-tiffani-135
https://uvelirmoscow.ru/nasha-rabota/kolca-obruchalnye-s-ajurnymi-venzelyami-128
https://uvelirmoscow.ru/nasha-rabota/zaponki-v-vide-otpechatkov-palca-129
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-sinim-sapfirom-127
https://uvelirmoscow.ru/nasha-rabota/kulon-serdce-na-cepochke-yakornogo-pleteniya-125
https://uvelirmoscow.ru/nasha-rabota/kolco-s-brilliantami-v-vide-volny-124
https://uvelirmoscow.ru/nasha-rabota/parnye-kolca-syr-123
https://uvelirmoscow.ru/nasha-rabota/pomolvochnoe-kolco-s-brilliantom-121
https://uvelirmoscow.ru/nasha-rabota/pomolvochnoe-kolco-s-tremya-brilliantami-119
https://uvelirmoscow.ru/nasha-rabota/persten-v-vide-lebedya-118
https://uvelirmoscow.ru/nasha-rabota/podveska-s-izobrajeniem-svyatogo-nikolaya-ugodnika-116
https://uvelirmoscow.ru/nasha-rabota/mujskaya-serga-s-imenem-117
https://uvelirmoscow.ru/nasha-rabota/cepochka-s-podveskoy-v-vide-lotosa-115
https://uvelirmoscow.ru/nasha-rabota/persten-mujskoy-iz-belogo-zolota-112
https://uvelirmoscow.ru/nasha-rabota/garnitur-iz-belogo-i-krasnogo-zolota-s-brilliantami-111
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-emal-poloskoy-110
https://uvelirmoscow.ru/nasha-rabota/obruchalnye-kolca-s-brilliantom-s-nadpisyu-107
https://uvelirmoscow.ru/nasha-rabota/kolca-s-rubinami-i-brilliantami-106
https://uvelirmoscow.ru/nasha-rabota/kopiya-kolca-brenda-bulgari-108
https://uvelirmoscow.ru/nasha-rabota/obruchalnye-kolca-v-vide-korony-105
https://uvelirmoscow.ru/nasha-rabota/zaponki-s-agatom-i-chernymi-brilliantami-100
https://uvelirmoscow.ru/nasha-rabota/garnitur-iz-jeltogo-zolota-s-izumrudami-103
https://uvelirmoscow.ru/nasha-rabota/podveska-pazly-iz-belogo-zolota-s-brilliantom--101
https://uvelirmoscow.ru/nasha-rabota/obruchalnye-kolca-s-ottiskom-otpechatka-palca--102
https://uvelirmoscow.ru/nasha-rabota/kolco-s-kaplevidnymi-sapfirami-i-brilliantami-104
https://uvelirmoscow.ru/nasha-rabota/kolco-iz-jeltogo-zolota-s-yantarem-98
https://uvelirmoscow.ru/nasha-rabota/kolco-relefnoe-iz-jeltogo-zolota-96
https://uvelirmoscow.ru/nasha-rabota/kolco-s-izumrudom-i-brilliantami-i-nadpisyu-na-vnutrenney-storone-94
https://uvelirmoscow.ru/nasha-rabota/kulon-v-chest-futbolnogo-kluba-spartak-97
https://uvelirmoscow.ru/nasha-rabota/kolco-serdce-v-rukah-s-nadpisyu-na-latyny-93
https://uvelirmoscow.ru/nasha-rabota/braslet-s-imenem-iz-belogo-zolota-88
https://uvelirmoscow.ru/nasha-rabota/kole-iz-belogo-zolota-s-kvadratnimi-izumrudami-i-brilliantami-89
https://uvelirmoscow.ru/nasha-rabota/kolco-obruchalnoe-s-8-brilliantami-iz-belogo-zolota-90
https://uvelirmoscow.ru/nasha-rabota/kolco-i-podveska-s-rozoy-iz-koralla-i-brilliantami-92
https://uvelirmoscow.ru/nasha-rabota/kolco-tri-vitka-iz-jeltogo-zolota-s-33-brilliantami-91
https://uvelirmoscow.ru/nasha-rabota/kulon-shahmaty-iz-belogo-zolota-85
https://uvelirmoscow.ru/nasha-rabota/kulon-v-forme-znaka-zodiaka-vesi-86
https://uvelirmoscow.ru/nasha-rabota/kulon-iz-belogo-zolota-inicialy-87';

    $urls = preg_split('/\r\n|\r|\n/', trim($str));
    $rows = array();

    foreach ($urls as $url) {
        $url = trim($url);

        if ($url === '') {
            continue;
        }

        $path = parse_url($url, PHP_URL_PATH);
        $path_parts = explode('/', trim($path ? $path : $url, '/'));
        $keyword = end($path_parts);
        $alias_query = false;
        $project_id = 0;
        $url_link = '';
        $related_product = 0;
        $product_name = '';
        $product_href = '';
        $status = '';

        if (preg_match('/(?:\?|&)project_id=(\d+)(?:&|$)/', $url, $matches)) {
            $project_id = (int)$matches[1];
            $alias_query = 'project_id=' . $project_id;
        } elseif ($keyword !== false && $keyword !== '') {
            $query_url_alias = $this->db->query("SELECT `query` FROM `" . DB_PREFIX . "url_alias` WHERE `keyword` = '" . $this->db->escape($keyword) . "' LIMIT 1");

            if ($query_url_alias->num_rows) {
                $alias_query = $query_url_alias->row['query'];

                if (preg_match('/(?:^|&)project_id=(\d+)(?:&|$)/', $alias_query, $matches)) {
                    $project_id = (int)$matches[1];
                } else {
                    $status = 'project_id not found in query';
                }
            } else {
                $status = 'url_alias not found';
            }
        } else {
            $status = 'keyword is empty';
        }

        if ($project_id) {
            $query_project = $this->db->query("SELECT `url_link`, `related_product` FROM `" . DB_PREFIX . "our_project` WHERE `id` = " . (int)$project_id . " LIMIT 1");

            if ($query_project->num_rows) {
                $url_link = $query_project->row['url_link'];
                $related_product = (int)$query_project->row['related_product'];

                if ($related_product) {
                    $query_product = $this->db->query("SELECT `name` FROM `" . DB_PREFIX . "product_description` WHERE `product_id` = " . (int)$related_product . " AND `language_id` = " . (int)$this->config->get('config_language_id') . " LIMIT 1");

                    if ($query_product->num_rows) {
                        $product_name = $query_product->row['name'];
                    } else {
                        $status = $status ? $status . '; product not found' : 'product not found';
                    }

                    $product_href = $this->url->link('product/product', 'product_id=' . (int)$related_product);
                } else {
                    $status = $status ? $status . '; related_product is empty' : 'related_product is empty';
                }
            } else {
                $status = $status ? $status . '; project not found' : 'project not found';
            }
        }

        $rows[] = array(
            'url' => $url,
            'keyword' => $keyword ? $keyword : '',
            'query' => $alias_query ? $alias_query : '',
            'project_id' => $project_id,
            'url_link' => $url_link,
            'related_product' => $related_product,
            'product_name' => $product_name,
            'product_href' => $product_href,
            'status' => $status
        );
    }

    $html = '<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>ddk</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; color: #222; }
    table { border-collapse: collapse; width: 100%; }
    th, td { border: 1px solid #ddd; padding: 6px 8px; text-align: left; vertical-align: top; }
    th { background: #f5f5f5; }
    tr.error td { background: #ffe5e5; }
  </style>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>URL</th>
        <th>Keyword</th>
        <th>Query</th>
        <th>Project ID</th>
        <th>URL Link</th>
        <th>Related Product</th>
        <th>Product Name</th>
        <th>Product URL</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>';

    foreach ($rows as $row) {
        $html .= '<tr' . ($row['status'] !== '' ? ' class="error"' : '') . '>'
            . '<td>' . htmlspecialchars($row['url'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['keyword'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['query'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . (int)$row['project_id'] . '</td>'
            . '<td>' . htmlspecialchars($row['url_link'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . (int)$row['related_product'] . '</td>'
            . '<td>' . htmlspecialchars($row['product_name'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['product_href'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['status'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '</tr>';
    }

    $html .= '</tbody>
  </table>
</body>
</html>';

    $this->response->addHeader('Content-Type: text/html; charset=utf-8');
    $this->response->setOutput($html);

}

    public function product_project_report()
    {
        $language_id = (int)$this->config->get('config_language_id');

        $sql = "SELECT
                    p.product_id,
                    product_categories.main_category,
                    product_categories.subcategories,
                    pd.name AS product_name,
                    pd.meta_h1 AS product_h1,
                    pd.description AS product_description,
                    project.id AS project_id,
                    project_categories.category_name AS project_category,
                    project.name AS project_name,
                    project.seo_h1 AS project_h1,
                    project.description AS project_description
                FROM " . DB_PREFIX . "our_project project
                INNER JOIN " . DB_PREFIX . "product p
                    ON p.product_id = project.related_product
                INNER JOIN " . DB_PREFIX . "product_description pd
                    ON pd.product_id = p.product_id
                    AND pd.language_id = '" . $language_id . "'
                LEFT JOIN (
                    SELECT
                        ptc.product_id,
                        GROUP_CONCAT(DISTINCT CASE WHEN ptc.main_category = 1 THEN COALESCE(second_level_description.name, category_description.name) END ORDER BY category_description.name SEPARATOR ', ') AS main_category,
                        GROUP_CONCAT(DISTINCT CASE
                            WHEN category.parent_id = 0 THEN NULL
                            WHEN parent_category.parent_id = 0 THEN category_description.name
                            ELSE parent_description.name
                        END ORDER BY category_description.name SEPARATOR ', ') AS subcategories
                    FROM " . DB_PREFIX . "product_to_category ptc
                    INNER JOIN " . DB_PREFIX . "category category
                        ON category.category_id = ptc.category_id
                    INNER JOIN " . DB_PREFIX . "category_description category_description
                        ON category_description.category_id = category.category_id
                        AND category_description.language_id = '" . $language_id . "'
                    LEFT JOIN " . DB_PREFIX . "category_path second_level_path
                        ON second_level_path.category_id = category.category_id
                        AND second_level_path.level = 1
                    LEFT JOIN " . DB_PREFIX . "category_description second_level_description
                        ON second_level_description.category_id = second_level_path.path_id
                        AND second_level_description.language_id = '" . $language_id . "'
                    LEFT JOIN " . DB_PREFIX . "category parent_category
                        ON parent_category.category_id = category.parent_id
                    LEFT JOIN " . DB_PREFIX . "category_description parent_description
                        ON parent_description.category_id = parent_category.category_id
                        AND parent_description.language_id = '" . $language_id . "'
                    LEFT JOIN " . DB_PREFIX . "category root_category
                        ON root_category.category_id = parent_category.parent_id
                    LEFT JOIN " . DB_PREFIX . "category_description root_description
                        ON root_description.category_id = root_category.category_id
                        AND root_description.language_id = '" . $language_id . "'
                    GROUP BY ptc.product_id
                ) product_categories ON product_categories.product_id = p.product_id
                LEFT JOIN (
                    SELECT
                        project_category.project_id,
                        GROUP_CONCAT(DISTINCT category.name ORDER BY category.name SEPARATOR ', ') AS category_name
                    FROM " . DB_PREFIX . "our_project_cats project_category
                    INNER JOIN " . DB_PREFIX . "our_project_categories category
                        ON category.id = project_category.category_project_id
                    GROUP BY project_category.project_id
                ) project_categories ON project_categories.project_id = project.id
                WHERE project.related_product IS NOT NULL
                    AND project.related_product <> ''
                    AND project.related_product > 0
                ORDER BY p.product_id, project.id";

        $rows = $this->db->query($sql)->rows;
        $headers = array(
            'ID товара',
            'Категория 2 уровня',
            'Подкатегории 2 уровня',
            'Название товара',
            'H1 товара',
            'Описание товара',
            'ID примера работ',
            'Категория примера работ',
            'Название примера работ',
            'H1 примера работ',
            'Описание примера работ'
        );
        $fields = array(
            'product_id',
            'main_category',
            'subcategories',
            'product_name',
            'product_h1',
            'product_description',
            'project_id',
            'project_category',
            'project_name',
            'project_h1',
            'project_description'
        );
        $escape = function($value) {
            $value = html_entity_decode(strip_tags((string)$value), ENT_QUOTES, 'UTF-8');
            return htmlspecialchars(trim(preg_replace('/\s+/u', ' ', $value)), ENT_QUOTES, 'UTF-8');
        };

        $html = '<!doctype html><html><head><meta charset="utf-8"><title>Товары и примеры работ</title>'
            . '<style>body{font:14px Arial,sans-serif;margin:16px}.table-wrap{overflow-x:auto}table{border-collapse:collapse}th,td{border:1px solid #bbb;padding:6px 8px;vertical-align:top;min-width:160px}th{background:#eee}th:first-child,td:first-child,th:nth-child(7),td:nth-child(7){min-width:80px}</style>'
            . '</head><body><div class="table-wrap"><table><thead><tr>';

        foreach ($headers as $header) {
            $html .= '<th>' . $header . '</th>';
        }

        $html .= '</tr></thead><tbody>';

        foreach ($rows as $row) {
            $html .= '<tr>';
            foreach ($fields as $field) {
                $html .= '<td>' . $escape(isset($row[$field]) ? $row[$field] : '') . '</td>';
            }
            $html .= '</tr>';
        }

        $html .= '</tbody></table></div></body></html>';

        $this->response->addHeader('Content-Type: text/html; charset=utf-8');
        $this->response->setOutput($html);
    }

    public function our_project_products_report()
    {
        $language_id = (int)$this->config->get('config_language_id');

        $query = $this->db->query("SELECT p.id, p.name, p.url, p.related_product, pd.name AS product_name
            FROM `" . DB_PREFIX . "our_project` p
            LEFT JOIN `" . DB_PREFIX . "product_description` pd
                ON pd.product_id = p.related_product
               AND pd.language_id = " . (int)$language_id . "
            ORDER BY CASE WHEN TRIM(COALESCE(p.url, '')) = '' THEN 0 ELSE 1 END DESC, p.name ASC");

        $rows = array();

        foreach ($query->rows as $row) {
            $project_url = trim((string)$row['url']);
            if ($project_url === '') {
                $project_href = '';
            } elseif (preg_match('~^https?://~i', $project_url)) {
                $project_href = $project_url;
            } elseif ($project_url[0] === '/') {
                $project_href = $project_url;
            } else {
                $project_href = '/nasha-rabota/' . ltrim($project_url, '/');
            }

            $product_href = '';
            if (!empty($row['related_product'])) {
                $product_href = str_replace('&amp;', '&', $this->url->link('product/product', 'product_id=' . (int)$row['related_product']));
            }

            $rows[] = array(
                'name' => (string)$row['name'],
                'project_url' => $project_url,
                'project_href' => $project_href,
                'related_product' => (int)$row['related_product'],
                'product_name' => (string)$row['product_name'],
                'product_href' => $product_href
            );
        }

        $html = '<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>Our project products report</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; color: #222; }
    table { border-collapse: collapse; width: 100%; }
    th, td { border: 1px solid #d9d9d9; padding: 8px 10px; text-align: left; vertical-align: top; }
    th { background: #f5f5f5; }
    a { color: #0b57d0; text-decoration: none; }
    a:hover { text-decoration: underline; }
  </style>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>Project name</th>
        <th>Project URL</th>
        <th>Related product ID</th>
        <th>Product name</th>
        <th>Product link</th>
      </tr>
    </thead>
    <tbody>';

        foreach ($rows as $row) {
            $html .= '<tr>'
                . '<td>' . htmlspecialchars($row['name'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>';

            if ($row['project_href'] !== '') {
                $html .= '<a href="' . htmlspecialchars($row['project_href'], ENT_QUOTES, 'UTF-8') . '" target="_blank" rel="noopener">'
                    . htmlspecialchars($row['project_url'], ENT_QUOTES, 'UTF-8')
                    . '</a>';
            } else {
                $html .= '&mdash;';
            }

            $html .= '</td>'
                . '<td>' . (int)$row['related_product'] . '</td>'
                . '<td>' . htmlspecialchars($row['product_name'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>';

            if ($row['product_href'] !== '') {
                $html .= '<a href="' . htmlspecialchars($row['product_href'], ENT_QUOTES, 'UTF-8') . '" target="_blank" rel="noopener">'
                    . htmlspecialchars(str_replace('&amp;', '&', $row['product_href']), ENT_QUOTES, 'UTF-8')
                    . '</a>';
            } else {
                $html .= '&mdash;';
            }

            $html .= '</td></tr>';
        }

        $html .= '</tbody>
  </table>
</body>
</html>';

        $this->response->addHeader('Content-Type: text/html; charset=utf-8');
        $this->response->setOutput($html);
    }

public function iui()
{
    require_once DIR_GOOGLE . 'vendor/autoload.php';

    $googleAccountKeyFilePath = DIR_GOOGLE.'my-project-67961-1717153477456-5767271f21f8.json';
    putenv('GOOGLE_APPLICATION_CREDENTIALS=' . $googleAccountKeyFilePath);

    $client = new Google_Client();
    $client->useApplicationDefaultCredentials();

    $client->addScope('https://www.googleapis.com/auth/spreadsheets');

    $service = new Google_Service_Sheets($client);

    $spreadsheetId = '1uVaNVEf6MOoiXlrSEePea_LsO4In6GFn6IdNuCn91bc';


    $response = $service->spreadsheets->get($spreadsheetId);


    $spreadsheetProperties = $response->getProperties();
    $spreadsheetProperties->title; // Название таблицы

    foreach ($response->getSheets() as $sheet) {

        // Свойства листа
        $sheetProperties = $sheet->getProperties();
        $sheetProperties->title; // Название листа

        $gridProperties = $sheetProperties->getGridProperties();
        $gridProperties->columnCount; // Количество колонок
        $gridProperties->rowCount; // Количество строк

    }



    $range = 'Товары в наших работах - на заливку';
    $response = $service->spreadsheets_values->get($spreadsheetId, $range);




    $links = array();

    foreach ($response->values as $key=>$value) {
        if($key>0) {
            $links[] = array(
                'project' => isset($value[0]) ? trim($value[0]) : '',
                'product' => isset($value[1]) ? trim($value[1]) : ''
            );
        }
    }

    $rows = array();

    foreach ($links as $link) {
        $project_url = $link['project'];
        $product_url = $link['product'];
        $project_keyword = '';
        $product_keyword = '';
        $project_query = '';
        $product_query = '';
        $project_id = 0;
        $product_id = 0;
        $project_url_link = '';
        $product_name = '';
        $product_href = '';
        $update_status = '';
        $status = '';

        if (preg_match('/(?:\?|&)project_id=(\d+)(?:&|$)/', $project_url, $matches)) {
            $project_id = (int)$matches[1];
            $project_query = 'project_id=' . $project_id;
        } else {
            $project_path = parse_url($project_url, PHP_URL_PATH);
            $project_path_parts = explode('/', trim($project_path ? $project_path : $project_url, '/'));
            $project_keyword = end($project_path_parts);

            if ($project_keyword !== false && $project_keyword !== '') {
                $query_url_alias = $this->db->query("SELECT `query` FROM `" . DB_PREFIX . "url_alias` WHERE `keyword` = '" . $this->db->escape($project_keyword) . "' LIMIT 1");

                if ($query_url_alias->num_rows) {
                    $project_query = $query_url_alias->row['query'];

                    if (preg_match('/(?:^|&)project_id=(\d+)(?:&|$)/', $project_query, $matches)) {
                        $project_id = (int)$matches[1];
                    } else {
                        $status = 'project_id not found in project query';
                    }
                } else {
                    $status = 'project url_alias not found';
                }
            } else {
                $status = 'project keyword is empty';
            }
        }

        if ($project_id) {
            $query_project = $this->db->query("SELECT `url_link` FROM `" . DB_PREFIX . "our_project` WHERE `id` = " . (int)$project_id . " LIMIT 1");

            if ($query_project->num_rows) {
                $project_url_link = $query_project->row['url_link'];
            } else {
                $status = $status ? $status . '; project not found' : 'project not found';
            }
        }

        if (preg_match('/(?:^|[?&])product_id=(\d+)(?:&|$)/', $product_url, $matches)) {
            $product_id = (int)$matches[1];
            $product_query = 'product_id=' . $product_id;
        } else {
            $product_path = parse_url($product_url, PHP_URL_PATH);
            $product_path_parts = explode('/', trim($product_path ? $product_path : $product_url, '/'));
            $product_keyword = end($product_path_parts);

            if ($product_keyword !== false && $product_keyword !== '') {
                $query_url_alias = $this->db->query("SELECT `query` FROM `" . DB_PREFIX . "url_alias` WHERE `keyword` = '" . $this->db->escape($product_keyword) . "' LIMIT 1");

                if ($query_url_alias->num_rows) {
                    $product_query = $query_url_alias->row['query'];

                    if (preg_match('/(?:^|&)product_id=(\d+)(?:&|$)/', $product_query, $matches)) {
                        $product_id = (int)$matches[1];
                    } else {
                        $status = $status ? $status . '; product_id not found in product query' : 'product_id not found in product query';
                    }
                } else {
                    $status = $status ? $status . '; product url_alias not found' : 'product url_alias not found';
                }
            } else {
                $status = $status ? $status . '; product keyword is empty' : 'product keyword is empty';
            }
        }

        if ($product_id) {
            $query_product = $this->db->query("SELECT `name` FROM `" . DB_PREFIX . "product_description` WHERE `product_id` = " . (int)$product_id . " AND `language_id` = " . (int)$this->config->get('config_language_id') . " LIMIT 1");

            if ($query_product->num_rows) {
                $product_name = $query_product->row['name'];
            } else {
                $status = $status ? $status . '; product not found' : 'product not found';
            }

            $product_href = $this->url->link('product/product', 'product_id=' . (int)$product_id);
        }

        if ($status === '' && $project_id && $product_id) {
        //     $this->db->query("UPDATE `" . DB_PREFIX . "our_project` SET `related_product` = " . (int)$product_id . " WHERE `id` = " . (int)$project_id);
            $update_status = 'updated';
        }

        $rows[] = array(
            'project_url' => $project_url,
            'project_keyword' => $project_keyword ? $project_keyword : '',
            'project_query' => $project_query,
            'project_id' => $project_id,
            'project_url_link' => $project_url_link,
            'product_url' => $product_url,
            'product_keyword' => $product_keyword ? $product_keyword : '',
            'product_query' => $product_query,
            'product_id' => $product_id,
            'product_name' => $product_name,
            'product_href' => $product_href,
            'update_status' => $update_status,
            'status' => $status
        );
    }

    $html = '<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>iui</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; color: #222; }
    table { border-collapse: collapse; width: 100%; }
    th, td { border: 1px solid #ddd; padding: 6px 8px; text-align: left; vertical-align: top; }
    th { background: #f5f5f5; }
    tr.error td { background: #ffe5e5; }
  </style>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>Project URL</th>
        <th>Project Keyword</th>
        <th>Project Query</th>
        <th>Project ID</th>
        <th>Project URL Link</th>
        <th>Product URL</th>
        <th>Product Keyword</th>
        <th>Product Query</th>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Product Link</th>
        <th>Update</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>';

    foreach ($rows as $row) {
        $html .= '<tr' . ($row['status'] !== '' ? ' class="error"' : '') . '>'
            . '<td>' . htmlspecialchars($row['project_url'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['project_keyword'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['project_query'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . (int)$row['project_id'] . '</td>'
            . '<td>' . htmlspecialchars($row['project_url_link'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['product_url'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['product_keyword'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['product_query'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . (int)$row['product_id'] . '</td>'
            . '<td>' . htmlspecialchars($row['product_name'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['product_href'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['update_status'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '<td>' . htmlspecialchars($row['status'], ENT_QUOTES, 'UTF-8') . '</td>'
            . '</tr>';
    }

    $html .= '</tbody>
  </table>
</body>
</html>';

    $this->response->addHeader('Content-Type: text/html; charset=utf-8');
    $this->response->setOutput($html);



}
    public function iui_report()
    {
        require_once DIR_GOOGLE . 'vendor/autoload.php';

        $googleAccountKeyFilePath = DIR_GOOGLE.'my-project-67961-1717153477456-5767271f21f8.json';
        putenv('GOOGLE_APPLICATION_CREDENTIALS=' . $googleAccountKeyFilePath);

        $client = new Google_Client();
        $client->useApplicationDefaultCredentials();

        $client->addScope('https://www.googleapis.com/auth/spreadsheets');

        $service = new Google_Service_Sheets($client);

        $spreadsheetId = '1uVaNVEf6MOoiXlrSEePea_LsO4In6GFn6IdNuCn91bc';


        $response = $service->spreadsheets->get($spreadsheetId);


        $spreadsheetProperties = $response->getProperties();
        $spreadsheetProperties->title; // Название таблицы

        foreach ($response->getSheets() as $sheet) {

            // Свойства листа
            $sheetProperties = $sheet->getProperties();
            $sheetProperties->title; // Название листа

            $gridProperties = $sheetProperties->getGridProperties();
            $gridProperties->columnCount; // Количество колонок
            $gridProperties->rowCount; // Количество строк

        }



        $range = 'Товары в наших работах - на заливку';
        $response = $service->spreadsheets_values->get($spreadsheetId, $range);




        $links = array();

        foreach ($response->values as $key=>$value) {
            if($key>0) {
                $links[] = array(
                    'project' => isset($value[0]) ? trim($value[0]) : '',
                    'product' => isset($value[1]) ? trim($value[1]) : ''
                );
            }
        }

        $rows = array();

        foreach ($links as $link) {
            $project_url = $link['project'];
            $product_url = $link['product'];
            $project_keyword = '';
            $product_keyword = '';
            $project_query = '';
            $product_query = '';
            $project_id = 0;
            $product_id = 0;
            $project_url_link = '';
            $product_name = '';
            $product_href = '';
            $update_status = '';
            $status = '';

            if (preg_match('/(?:\?|&)project_id=(\d+)(?:&|$)/', $project_url, $matches)) {
                $project_id = (int)$matches[1];
                $project_query = 'project_id=' . $project_id;
            } else {
                $project_path = parse_url($project_url, PHP_URL_PATH);
                $project_path_parts = explode('/', trim($project_path ? $project_path : $project_url, '/'));
                $project_keyword = end($project_path_parts);

                if ($project_keyword !== false && $project_keyword !== '') {
                    $query_url_alias = $this->db->query("SELECT `query` FROM `" . DB_PREFIX . "url_alias` WHERE `keyword` = '" . $this->db->escape($project_keyword) . "' LIMIT 1");

                    if ($query_url_alias->num_rows) {
                        $project_query = $query_url_alias->row['query'];

                        if (preg_match('/(?:^|&)project_id=(\d+)(?:&|$)/', $project_query, $matches)) {
                            $project_id = (int)$matches[1];
                        } else {
                            $status = 'project_id not found in project query';
                        }
                    } else {
                        $status = 'project url_alias not found';
                    }
                } else {
                    $status = 'project keyword is empty';
                }
            }

            if ($project_id) {
                $query_project = $this->db->query("SELECT `url_link`,`photo` FROM `" . DB_PREFIX . "our_project` WHERE `id` = " . (int)$project_id . " LIMIT 1");

                $project_photo = $query_project->row['photo'];

                if ($query_project->num_rows) {
                    $project_url_link = $query_project->row['url_link'];
                } else {
                    $status = $status ? $status . '; project not found' : 'project not found';
                }
            }

            if (preg_match('/(?:^|[?&])product_id=(\d+)(?:&|$)/', $product_url, $matches)) {
                $product_id = (int)$matches[1];
                $product_query = 'product_id=' . $product_id;
            } else {
                $product_path = parse_url($product_url, PHP_URL_PATH);
                $product_path_parts = explode('/', trim($product_path ? $product_path : $product_url, '/'));
                $product_keyword = end($product_path_parts);

                if ($product_keyword !== false && $product_keyword !== '') {
                    $query_url_alias = $this->db->query("SELECT `query` FROM `" . DB_PREFIX . "url_alias` WHERE `keyword` = '" . $this->db->escape($product_keyword) . "' LIMIT 1");

                    if ($query_url_alias->num_rows) {
                        $product_query = $query_url_alias->row['query'];

                        if (preg_match('/(?:^|&)product_id=(\d+)(?:&|$)/', $product_query, $matches)) {
                            $product_id = (int)$matches[1];
                        } else {
                            $status = $status ? $status . '; product_id not found in product query' : 'product_id not found in product query';
                        }
                    } else {
                        $status = $status ? $status . '; product url_alias not found' : 'product url_alias not found';
                    }
                } else {
                    $status = $status ? $status . '; product keyword is empty' : 'product keyword is empty';
                }
            }

            if ($product_id) {
                $query_product = $this->db->query("SELECT `name` FROM `" . DB_PREFIX . "product_description` WHERE `product_id` = " . (int)$product_id . " AND `language_id` = " . (int)$this->config->get('config_language_id') . " LIMIT 1");

                if ($query_product->num_rows) {
                    $product_name = $query_product->row['name'];
                } else {
                    $status = $status ? $status . '; product not found' : 'product not found';
                }

                $product_href = $this->url->link('product/product', 'product_id=' . (int)$product_id);
            }

            if ($status === '' && $project_id && $product_id) {

                $update_status = 'updated';
            }

            $rows[] = array(
                'project_url' => $project_url,
                'photo' => $project_photo,
                'project_keyword' => $project_keyword ? $project_keyword : '',
                'project_query' => $project_query,
                'project_id' => $project_id,
                'project_url_link' => $project_url_link,
                'product_url' => $product_url,
                'product_keyword' => $product_keyword ? $product_keyword : '',
                'product_query' => $product_query,
                'product_id' => $product_id,
                'product_name' => $product_name,
                'product_href' => $product_href,
                'update_status' => $update_status,
                'status' => $status
            );
        }

        $html = '<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>iui</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; color: #222; }
    table { border-collapse: collapse; width: 100%; }
    th, td { border: 1px solid #ddd; padding: 6px 8px; text-align: left; vertical-align: top; }
    th { background: #f5f5f5; }
    tr.error td { background: #ffe5e5; }
  </style>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>Project URL</th>
        <th>Peoject image</th>proje
   
      
        <th>Product URL</th>
        <th>Product Name</th>
        <th>Product Link</th>

      </tr>
    </thead>
    <tbody>';

        foreach ($rows as $row) {
            $html .= '<tr' . ($row['status'] !== '' ? ' class="error"' : '') . '>'
                . '<td>' . htmlspecialchars($row['project_url'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>' . htmlspecialchars($row['photo'], ENT_QUOTES, 'UTF-8') . '</td>'
             
                . '<td>' . htmlspecialchars($row['product_url'], ENT_QUOTES, 'UTF-8') . '</td>'

                . '<td>' . htmlspecialchars($row['product_name'], ENT_QUOTES, 'UTF-8') . '</td>'
                . '<td>' . htmlspecialchars($row['product_href'], ENT_QUOTES, 'UTF-8') . '</td>'

                . '</tr>';
        }

        $html .= '</tbody>
  </table>
</body>
</html>';

        $this->response->addHeader('Content-Type: text/html; charset=utf-8');
        $this->response->setOutput($html);



    }

}
