drop database fraud_analytics_db;
CREATE DATABASE fraud_analytics_db;
USE fraud_analytics_db;
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    signup_time VARCHAR(16) NOT NULL,
    sex VARCHAR(10),
    age INT
);
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    purchase_time VARCHAR(16) NOT NULL,
    purchase_value DECIMAL(10, 2) NOT NULL,
    device_id VARCHAR(50) NOT NULL,
    source VARCHAR(20),
    browser VARCHAR(20),
    ip_address NUMERIC(15,5),
    class INT NOT NULL DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
INSERT INTO Users (user_id, signup_time, sex, age) VALUES
 (22058, '24-02-2015 22:55', 'M', 39)
,(333320, '07-06-2015 20:39', 'F', 53)
,(1359, '01-01-2015 18:52', 'M', 53)
,(150084, '28-04-2015 21:13', 'M', 41)
,(221365, '21-07-2015 07:09', 'M', 45)
,(159135, '21-05-2015 06:03', 'M', 18)
,(50116, '01-08-2015 22:40', 'F', 19)
,(360585, '06-04-2015 07:35', 'M', 34)
,(159045, '21-04-2015 23:38', 'F', 43)
,(182338, '25-01-2015 17:49', 'M', 31)
,(199700, '11-07-2015 18:26', 'F', 35)
,(73884, '29-05-2015 16:22', 'M', 32)
,(79203, '16-06-2015 21:19', 'M', 33)
,(299320, '03-03-2015 19:17', 'M', 38)
,(82931, '16-02-2015 02:50', 'M', 24)
,(31383, '01-02-2015 01:06', 'F', 24)
,(78986, '15-05-2015 03:52', 'M', 23)
,(119824, '20-03-2015 00:31', 'M', 38)
,(357386, '03-02-2015 00:48', 'M', 24)
,(289172, '17-07-2015 05:48', 'F', 53)
,(154699, '08-07-2015 15:35', 'F', 23)
,(316355, '08-08-2015 20:05', 'M', 28)
,(343378, '30-01-2015 08:50', 'F', 24)
,(370338, '08-01-2015 11:47', 'M', 34)
,(171711, '11-01-2015 01:51', 'F', 35)
,(59780, '04-01-2015 22:32', 'M', 36)
,(176129, '28-01-2015 12:53', 'M', 32)
,(100886, '12-07-2015 14:14', 'F', 28)
,(221257, '29-05-2015 17:55', 'M', 19)
,(151705, '07-01-2015 03:44', 'F', 27)
,(399610, '03-04-2015 20:06', 'F', 39)
,(396746, '05-08-2015 23:50', 'M', 56)
,(243817, '13-02-2015 18:16', 'F', 32)
,(262245, '03-01-2015 03:29', 'F', 21)
,(256743, '12-06-2015 19:11', 'M', 22)
,(306604, '09-02-2015 13:01', 'M', 39)
,(4435, '31-01-2015 01:18', 'M', 35)
,(174879, '12-08-2015 20:24', 'M', 30)
,(192353, '25-04-2015 12:52', 'M', 57)
,(134152, '25-05-2015 00:37', 'M', 30)
,(81113, '16-08-2015 12:56', 'F', 44)
,(107312, '19-03-2015 23:56', 'M', 36)
,(55002, '09-06-2015 00:32', 'M', 19)
,(250432, '19-02-2015 12:31', 'M', 40)
,(132826, '25-07-2015 10:41', 'F', 35)
,(313833, '16-08-2015 20:48', 'M', 55)
,(300818, '24-01-2015 05:56', 'M', 23)
,(262864, '03-05-2015 08:12', 'F', 24)
,(89475, '17-05-2015 04:21', 'M', 37)
,(305751, '22-06-2015 19:30', 'F', 23)
,(254562, '12-05-2015 18:58', 'F', 45)
,(247815, '13-02-2015 10:28', 'F', 44)
,(192767, '08-01-2015 12:17', 'M', 32)
,(310147, '06-07-2015 05:45', 'F', 20)
,(339348, '10-07-2015 08:29', 'M', 38)
,(394644, '09-02-2015 11:04', 'F', 48)
,(30729, '16-01-2015 06:15', 'M', 25)
,(233374, '04-07-2015 14:10', 'F', 25)
,(366068, '14-05-2015 04:54', 'M', 31)
,(345865, '01-02-2015 05:59', 'M', 30)
,(324683, '18-01-2015 02:51', 'M', 28)
,(221091, '20-02-2015 18:29', 'F', 46)
,(222633, '18-04-2015 14:33', 'M', 41)
,(336190, '05-01-2015 21:07', 'M', 35)
,(181004, '07-01-2015 17:45', 'M', 36)
,(185360, '28-06-2015 16:32', 'M', 20)
,(23078, '30-04-2015 12:38', 'F', 31)
,(257050, '02-06-2015 17:33', 'M', 29)
,(165137, '13-04-2015 05:58', 'M', 26)
,(322319, '15-03-2015 08:44', 'F', 22)
,(99299, '22-07-2015 17:08', 'F', 24)
,(267772, '26-04-2015 18:42', 'M', 43)
,(174509, '29-05-2015 02:42', 'M', 25)
,(236096, '29-07-2015 00:27', 'M', 22)
,(350818, '16-07-2015 08:48', 'M', 19)
,(357570, '22-07-2015 10:58', 'F', 32)
,(19976, '29-04-2015 10:01', 'F', 25)
,(392706, '07-01-2015 08:15', 'F', 30)
,(43831, '04-02-2015 19:55', 'F', 19)
,(280081, '03-07-2015 08:29', 'M', 32)
,(319018, '08-02-2015 17:21', 'M', 35)
,(84673, '10-05-2015 07:26', 'F', 24)
,(298557, '05-07-2015 10:31', 'M', 33)
,(67592, '10-01-2015 23:23', 'M', 43)
,(243357, '27-03-2015 18:16', 'F', 45)
,(32520, '06-07-2015 01:46', 'M', 23)
,(234687, '22-07-2015 03:22', 'F', 20)
,(282317, '12-01-2015 07:55', 'F', 44)
,(142400, '28-06-2015 21:49', 'M', 39)
,(170701, '30-01-2015 11:43', 'M', 45)
,(19542, '02-01-2015 16:49', 'M', 47)
,(10388, '24-04-2015 05:19', 'M', 23)
,(235083, '24-07-2015 03:39', 'F', 19)
,(198982, '17-04-2015 07:26', 'F', 26)
,(232762, '13-05-2015 02:48', 'F', 39)
,(10055, '06-04-2015 23:14', 'F', 36)
,(244618, '11-06-2015 12:40', 'M', 20)
,(50280, '24-05-2015 21:16', 'M', 24)
,(56338, '18-03-2015 03:36', 'M', 24)
,(11399, '04-07-2015 00:59', 'F', 35)
,(65674, '02-06-2015 22:31', 'M', 19)
,(17259, '30-05-2015 16:06', 'M', 34);

INSERT INTO Transactions (user_id, purchase_time, purchase_value, device_id, source, browser, ip_address, class) VALUES
 (22058, '18-04-2015 02:47', 34, 'QVPSPJUOCKZAR', 'SEO', 'Chrome', 732758368.8, 0)
,(333320, '08-06-2015 01:38', 16, 'EOGFQPIZPYXFZ', 'Ads', 'Chrome', 350311387.9, 0)
,(1359, '01-01-2015 18:52', 15, 'YSSKYOSJHPPLJ', 'SEO', 'Opera', 2621473820, 1)
,(150084, '04-05-2015 13:54', 44, 'ATGTXKYKUDUQN', 'SEO', 'Safari', 3840542444, 0)
,(221365, '09-09-2015 18:40', 39, 'NAUITBZFJKHWW', 'Ads', 'Safari', 415583117.5, 0)
,(159135, '09-07-2015 08:05', 42, 'ALEYXFXINSXLZ', 'Ads', 'Chrome', 2809315200, 0)
,(50116, '27-08-2015 03:37', 11, 'IWKVZHJOCLPUR', 'Ads', 'Chrome', 3987484329, 0)
,(360585, '25-05-2015 17:21', 27, 'HPUCUYLMJBYFW', 'Ads', 'Opera', 1692458728, 0)
,(159045, '02-06-2015 14:01', 30, 'ILXYDOZIHOOHT', 'SEO', 'IE', 3719094257, 0)
,(182338, '23-03-2015 23:05', 62, 'NRFFPPHZYFUVC', 'Ads', 'IE', 341674739.6, 0)
,(199700, '28-10-2015 21:59', 13, 'TEPSJVVXGNTYR', 'Ads', 'Safari', 1819008578, 0)
,(73884, '16-06-2015 05:45', 58, 'ZTZZJUCRDOCJZ', 'Direct', 'Chrome', 4038284553, 0)
,(79203, '21-06-2015 03:29', 18, 'IBPNKSMCKUZWD', 'SEO', 'Safari', 4161540927, 0)
,(299320, '05-04-2015 12:32', 50, 'RMKQNVEWGTWPC', 'Direct', 'Safari', 3178510015, 0)
,(82931, '16-04-2015 00:56', 15, 'XKIFNYUZMBWFU', 'SEO', 'IE', 4203487754, 0)
,(31383, '24-03-2015 10:17', 58, 'UNUAVQXNWFBMO', 'SEO', 'Safari', 995732779, 0)
,(78986, '11-08-2015 02:29', 57, 'TGHVAWBMZRDHH', 'SEO', 'FireFox', 3503883392, 0)
,(119824, '05-04-2015 07:31', 55, 'WFIIFCPIOGMHT', 'Ads', 'Safari', 131423.789, 0)
,(357386, '24-03-2015 18:27', 40, 'NWSVDOHYIOBDR', 'Ads', 'FireFox', 3037372279, 0)
,(289172, '12-11-2015 22:08', 46, 'KFZGQIWDIRLZB', 'Direct', 'FireFox', 1044590098, 0)
,(154699, '20-07-2015 00:11', 24, 'TYZPZLEWNJJRI', 'Direct', 'FireFox', 3847612074, 0)
,(316355, '03-10-2015 02:21', 47, 'IHGECNGZGQOAZ', 'SEO', 'Chrome', 3836794299, 0)
,(343378, '22-04-2015 15:11', 47, 'VOMVNRHNBLLMI', 'SEO', 'Chrome', 1008390841, 0)
,(370338, '29-03-2015 20:46', 25, 'QLMZBEDPYFUXT', 'Ads', 'IE', 3442657972, 0)
,(171711, '11-01-2015 01:51', 52, 'YPLQGKBAAULUV', 'Direct', 'IE', 1120619336, 1)
,(59780, '16-01-2015 01:13', 31, 'WUMOBGUCBOXPO', 'SEO', 'FireFox', 1752166824, 1)
,(176129, '29-01-2015 23:21', 37, 'XUNJIVTRXCRZL', 'Ads', 'IE', 745823926.8, 0)
,(100886, '29-07-2015 07:41', 54, 'GIREUSMFWWUZJ', 'SEO', 'Chrome', 1799140971, 0)
,(221257, '05-09-2015 22:42', 12, 'LGFXOENGXOBXI', 'SEO', 'IE', 698700037.4, 0)
,(151705, '07-01-2015 03:44', 48, 'URHCRIXOMLJMH', 'SEO', 'Chrome', 2836025221, 1)
,(399610, '01-06-2015 07:42', 30, 'CLTWKVSGDCFRD', 'SEO', 'FireFox', 287463049.3, 0)
,(396746, '14-08-2015 12:08', 56, 'JUWCOHMHRBDCL', 'SEO', 'IE', 2937613755, 0)
,(243817, '23-04-2015 17:44', 72, 'YIIEFBZUGEXNR', 'Direct', 'Chrome', 2521870760, 0)
,(262245, '26-02-2015 23:23', 38, 'YAQQIDVLQRBLL', 'Ads', 'IE', 2803457087, 0)
,(256743, '11-07-2015 06:42', 33, 'VVZIVFUBISCEV', 'SEO', 'IE', 2260745439, 0)
,(306604, '22-02-2015 06:55', 53, 'REPNWECRCGXIS', 'SEO', 'IE', 1418160722, 0)
,(4435, '14-04-2015 09:33', 27, 'MJLRKEEEZARII', 'Ads', 'Opera', 301185167.5, 0)
,(174879, '09-09-2015 03:39', 56, 'ONLMVTYBMQQWN', 'Ads', 'FireFox', 2871721777, 0)
,(192353, '29-07-2015 12:50', 27, 'RPHZDFAXPVJTK', 'SEO', 'Chrome', 3071734454, 0)
,(134152, '23-06-2015 14:29', 52, 'CDJIUJQMWXHWX', 'Ads', 'IE', 2132402323, 0)
,(81113, '24-08-2015 05:00', 52, 'BKQVBSSFGETUQ', 'Direct', 'Chrome', 3682311660, 0)
,(107312, '21-03-2015 03:39', 62, 'OUUHDCKIYEXLM', 'Ads', 'Chrome', 3959167319, 0)
,(55002, '17-09-2015 13:45', 35, 'QLHWTRKJZWMAW', 'SEO', 'FireFox', 3184464830, 0)
,(250432, '03-03-2015 12:00', 25, 'BWTRKTCCGCMMR', 'Ads', 'IE', 303778372.4, 0)
,(132826, '26-08-2015 05:40', 18, 'UOSPQFPVALJAX', 'SEO', 'FireFox', 3364603498, 0)
,(313833, '17-11-2015 09:43', 12, 'GDATAKTYQUGWR', 'Ads', 'IE', 569038405.1, 0)
,(300818, '21-03-2015 18:44', 60, 'UIMMNPECDIHFV', 'Ads', 'FireFox', 3429491019, 0)
,(262864, '01-06-2015 08:41', 91, 'LYTLRYTPUANEC', 'Ads', 'Chrome', 3580176912, 0)
,(89475, '09-09-2015 09:55', 37, 'XZXUYCZIRRECT', 'Ads', 'FireFox', 3923631939, 0)
,(305751, '19-10-2015 12:52', 26, 'TRGSXNEBCCGME', 'Direct', 'Chrome', 3555140234, 0)
,(254562, '31-07-2015 11:36', 75, 'VYSNKKTTQIXQC', 'Ads', 'FireFox', 2977122408, 0)
,(247815, '04-04-2015 18:08', 27, 'BZJKAWMGZHVDI', 'SEO', 'Safari', 3195352718, 0)
,(192767, '28-04-2015 02:09', 15, 'ZTORJKTDMYTJH', 'Ads', 'Safari', 2568639630, 0)
,(310147, '22-07-2015 04:19', 54, 'GAPQDLEFDZYCO', 'Ads', 'Safari', 2626780561, 0)
,(339348, '13-10-2015 12:34', 35, 'RFKAOQAIQDQSL', 'Ads', 'Safari', 775036641.5, 0)
,(394644, '08-04-2015 06:38', 51, 'DOTXRQKMYPZCG', 'SEO', 'Chrome', 3064167004, 0)
,(30729, '12-04-2015 10:16', 81, 'YDRJUNHYWJMMG', 'Ads', 'Safari', 3543681271, 0)
,(233374, '16-07-2015 10:55', 33, 'VSWWOJLJPLUNZ', 'SEO', 'Chrome', 2961640224, 0)
,(366068, '11-07-2015 03:24', 69, 'JQYCFABXAMQVP', 'Direct', 'Chrome', 3463946532, 0)
,(345865, '20-02-2015 08:09', 36, 'FKQPZUELCRKBL', 'SEO', 'IE', 2740589787, 1)
,(324683, '19-04-2015 22:24', 27, 'JFVSIORUJBMXS', 'Ads', 'IE', 4228027812, 1)
,(221091, '03-05-2015 11:33', 44, 'XKARVFXNUGHGH', 'Direct', 'Chrome', 1990595542, 0)
,(222633, '03-06-2015 00:43', 10, 'CYULQPBDHLIBY', 'SEO', 'FireFox', 1438733277, 0)
,(336190, '15-03-2015 00:43', 14, 'ECDEOLUBPCUAI', 'Ads', 'IE', 4006899917, 1)
,(181004, '07-01-2015 17:45', 10, 'WETYPHOQVLWMK', 'Ads', 'FireFox', 2293332682, 1)
,(185360, '02-08-2015 17:43', 54, 'TTYDBTRYPTNQU', 'SEO', 'IE', 783532076.8, 0)
,(23078, '04-07-2015 20:00', 35, 'KCDZVBAIRPNLS', 'SEO', 'FireFox', 1834619467, 0)
,(257050, '08-06-2015 20:18', 26, 'TMWANSMCBRGVX', 'SEO', 'IE', 2680500620, 0)
,(165137, '04-05-2015 03:02', 29, 'FCBIXXRAVQAQO', 'SEO', 'Chrome', 3077902821, 0)
,(322319, '03-05-2015 23:51', 72, 'WZOCUYFWWGILX', 'Ads', 'FireFox', 277257680.5, 0)
,(99299, '10-08-2015 20:44', 21, 'JTHVCCWTCLEWQ', 'Ads', 'IE', 3660878807, 0)
,(267772, '12-07-2015 16:54', 61, 'DXMWUANJKLRHS', 'Ads', 'Chrome', 86067372.7, 0)
,(174509, '27-06-2015 07:03', 56, 'TBBARLCDTWATC', 'Ads', 'IE', 827789689.1, 0)
,(236096, '20-11-2015 06:06', 41, 'PIZVLJKSYDERZ', 'Direct', 'IE', 453892720.4, 0)
,(350818, '27-09-2015 17:44', 53, 'BITOGCKJPSLTZ', 'SEO', 'FireFox', 434228853, 0)
,(357570, '23-09-2015 12:54', 19, 'SSSAYDHGYNZSZ', 'Ads', 'Chrome', 832647585.6, 0)
,(19976, '28-07-2015 00:09', 28, 'DYBIFILSHTKDH', 'Direct', 'IE', 869888505.4, 0)
,(392706, '07-01-2015 08:15', 65, 'VRYLIRAQJIIIE', 'SEO', 'Opera', 1213104904, 1)
,(43831, '26-03-2015 09:03', 21, 'GGRUOKKINWLQW', 'Ads', 'Safari', 214597247.1, 0)
,(280081, '06-09-2015 06:16', 40, 'GWKXFMTAAPNYI', 'SEO', 'Chrome', 2921484965, 0)
,(319018, '23-02-2015 04:02', 9, 'HEMRFTLELMBQM', 'Ads', 'Chrome', 2547495155, 0)
,(84673, '31-08-2015 06:54', 79, 'EQJDVNHTPLOXB', 'Direct', 'IE', 741584943, 0)
,(298557, '04-08-2015 02:57', 23, 'SPKIAONPICJEU', 'SEO', 'Chrome', 2040684696, 0)
,(67592, '10-01-2015 23:23', 38, 'ITUMJCKWEYNDD', 'Ads', 'Safari', 3874757617, 1)
,(243357, '02-07-2015 22:52', 26, 'GPQWESTBHWFHF', 'Ads', 'FireFox', 2843824500, 0)
,(32520, '05-10-2015 15:09', 73, 'ZILZCQXJKIVNC', 'Direct', 'Chrome', 2106656394, 0)
,(234687, '24-08-2015 20:23', 42, 'SOBKWNCFYBXTW', 'SEO', 'IE', 197883347.7, 0)
,(282317, '25-02-2015 08:18', 54, 'ODRQOQHJUWGFM', 'SEO', 'Safari', 339186950.5, 0)
,(142400, '25-09-2015 20:09', 29, 'TDIYGYJRUSMNW', 'SEO', 'Chrome', 1347788843, 0)
,(170701, '06-02-2015 07:41', 45, 'NNSKETYBABELG', 'Ads', 'IE', 347501160.7, 0)
,(19542, '20-04-2015 21:34', 28, 'IQYBVZMXAKNOH', 'Ads', 'Safari', 1795516378, 0)
,(10388, '18-07-2015 02:19', 12, 'XIURASSWQRRBM', 'Direct', 'IE', 4132088551, 0)
,(235083, '18-11-2015 21:39', 29, 'NFHDFYBNHTREN', 'Ads', 'Chrome', 3629094102, 0)
,(198982, '03-05-2015 21:43', 44, 'BYSCYGRHWSHIU', 'Ads', 'Chrome', 1334106171, 1)
,(232762, '18-05-2015 15:06', 14, 'YIATLXRUIXRCK', 'SEO', 'Safari', 1930386251, 0)
,(10055, '07-05-2015 15:21', 47, 'KDSEIVWEOCIEM', 'SEO', 'Chrome', 2755626385, 0)
,(244618, '30-08-2015 08:09', 81, 'MSPMJUTDCXZSC', 'SEO', 'FireFox', 3014510992, 0)
,(50280, '01-06-2015 19:00', 21, 'IUZMJJBRDCGBZ', 'Ads', 'Chrome', 4283640873, 0)
,(56338, '11-07-2015 08:59', 53, 'KZZDZXHXXLQFD', 'SEO', 'Chrome', 4227828366, 0)
,(11399, '26-07-2015 12:29', 13, 'XSBCMGYRILJRA', 'Ads', 'IE', 392271513.2, 0)
,(65674, '23-08-2015 22:49', 20, 'HCKNCXWZGEMBA', 'Ads', 'IE', 1276169798, 0);
#######
-- INNER JOIN -- 1
SELECT 
    u.user_id, 
    u.sex, 
    u.age, 
    u.signup_time, 
    t.transaction_id, 
    t.purchase_time, 
    t.purchase_value, 
    t.device_id, 
    t.source, 
    t.browser
FROM Users u
INNER JOIN Transactions t 
    ON u.user_id = t.user_id
ORDER BY u.user_id
LIMIT 15;

-- INNER JOIN -- 2
SELECT 
    t.transaction_id,
    u.user_id,
    u.sex,
    u.age,
    t.purchase_value,
    t.device_id,
    t.source,
    t.browser,
    t.class
FROM Users u
INNER JOIN Transactions t 
    ON u.user_id = t.user_id
WHERE t.class = 1;
-- Aggregate User Spending (INNER JOIN with GROUP BY) --3
SELECT 
    u.user_id,
    u.sex,
    u.age,
    COUNT(t.transaction_id) AS total_transactions,
    SUM(t.purchase_value) AS total_spent
FROM Users u
INNER JOIN Transactions t 
    ON u.user_id = t.user_id
GROUP BY u.user_id, u.sex, u.age
ORDER BY total_spent DESC
LIMIT 15;

-- Traffic Source & Browser Analysis (INNER JOIN -- 4)
SELECT 
    t.source,
    t.browser,
    COUNT(t.transaction_id) AS transaction_count,
    SUM(t.purchase_value) AS total_revenue
FROM Users u
INNER JOIN Transactions t 
    ON u.user_id = t.user_id
GROUP BY t.source, t.browser
ORDER BY total_revenue DESC;

-- Registered Users & Transaction Status (LEFT JOIN -- 5)
SELECT 
    u.user_id,
    u.sex,
    u.age,
    u.signup_time,
    t.transaction_id,
    t.purchase_value,
    t.class
FROM Users u
LEFT JOIN Transactions t 
    ON u.user_id = t.user_id
ORDER BY u.user_id
LIMIT 20;

SELECT transaction_id, user_id, purchase_value, class
FROM Transactions
WHERE purchase_value > (
    SELECT AVG(purchase_value) 
    FROM Transactions
);

SELECT user_id, sex, age, signup_time
FROM Users
WHERE user_id IN (
    SELECT user_id
    FROM Transactions 
    WHERE class = 1
);
SELECT transaction_id, user_id, purchase_value, source, browser
FROM Transactions
WHERE purchase_value = (
    SELECT MAX(purchase_value) 
    FROM Transactions
);
SELECT DISTINCT source FROM Transactions
WHERE purchase_value > (SELECT AVG(purchase_value) FROM Transactions WHERE class = 1);
SELECT user_id, sex, age FROM Users
WHERE user_id IN (SELECT user_id FROM Transactions WHERE browser = 'Chrome');

-- like oprator --
SELECT transaction_id, user_id, device_id, browser, purchase_value
FROM Transactions
WHERE device_id LIKE 'Y%';
-- concat --
SELECT 
    CONCAT('User ID: ', user_id, ' | Gender: ', sex) AS user_profile_summary,
    age,
    signup_time
FROM Users
LIMIT 10;
-- ORDER BY --
SELECT transaction_id, user_id, purchase_value, source
FROM Transactions
ORDER BY purchase_value DESC
LIMIT 10;
-- (GROUP BY with COUNT) --
SELECT source, COUNT(transaction_id) AS total_transactions
FROM Transactions
GROUP BY source;

-- Query 5 (HAVING Clause) --
SELECT source, COUNT(transaction_id) AS total_transactions
FROM Transactions
GROUP BY source
HAVING COUNT(transaction_id) > 20;

-- (Aggregate Functions) -- 
SELECT 
    COUNT(transaction_id) AS total_count,
    SUM(purchase_value) AS total_revenue,
    AVG(purchase_value) AS avg_purchase,
    MIN(purchase_value) AS min_purchase,
    MAX(purchase_value) AS max_purchase
FROM Transactions;
-- Other Query 7 (Date Function - Extracting Year) --
SELECT user_id, sex, age, signup_time,
    SUBSTRING(signup_time, 7, 4) AS signup_year
FROM Users
LIMIT 10;
-- lower case --
SELECT transaction_id, browser, 
    LOWER(browser) AS lowercase_browser
FROM Transactions
LIMIT 10;
-- Other Query 7: WHERE Clause --
SELECT transaction_id, user_id, purchase_value, source
FROM Transactions
WHERE purchase_value > 80;
-- Other Query 8: BETWEEN Operator --
SELECT transaction_id, user_id, purchase_value, source
FROM Transactions
WHERE purchase_value BETWEEN 20 AND 50
LIMIT 10;
-- Other Query 9: Window Function --
SELECT transaction_id, user_id, purchase_value,
       ROW_NUMBER() OVER (ORDER BY purchase_value DESC) AS row_num
FROM Transactions
LIMIT 10;
-- Other Query 10: Window Function with PARTITION BY --
SELECT transaction_id, user_id, source, purchase_value,
       SUM(purchase_value) OVER (PARTITION BY source) AS source_total_value
FROM Transactions;
-- Other Query 11: LIMIT Clause --
SELECT * 
FROM Transactions
LIMIT 5;
































































































































































































select * from users;
select * from Transactions;