/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50106
Source Host           : localhost:3306
Source Database       : qx

Target Server Type    : MYSQL
Target Server Version : 50106
File Encoding         : 65001

Date: 2015-10-20 00:32:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mcoordinate`
-- ----------------------------
DROP TABLE IF EXISTS `mcoordinate`;
CREATE TABLE `mcoordinate` (
  `ID` varchar(36) NOT NULL,
  `ICON_TOP` varchar(100) default NULL,
  `ICON_LEFT` varchar(100) default NULL,
  `ICON_HEIGHT` varchar(100) default NULL,
  `ICON_WIDTH` varchar(100) default NULL,
  `ICON_DEG` varchar(100) default NULL,
  `TEXT_TOP` varchar(100) default NULL,
  `TEXT_LEFT` varchar(100) default NULL,
  `TEXT_HEIGHT` varchar(100) default NULL,
  `TEXT_WIDTH` varchar(100) default NULL,
  `TEXT_DEG` varchar(100) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_optoinid_one2one` (`ID`),
  CONSTRAINT `fk_optoinid_one2one` FOREIGN KEY (`ID`) REFERENCES `moption` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcoordinate
-- ----------------------------
INSERT INTO `mcoordinate` VALUES ('03JcisLIT-WRfZ58CGrlEQ', '120px', '89px', '30px', '30px', '0', '147px', '73px', '15px', '60px', '0');
INSERT INTO `mcoordinate` VALUES ('1tQbc-roRci2Ita8jRG_Uw', '132.694580078125px', '85.694580078125px', '30px', '30px', '8', '159.924621582031px', '72.1343383789063px', '15px', '60px', '8');
INSERT INTO `mcoordinate` VALUES ('3sLa-DguQr6lJbRkBlXx8g', '38px', '98px', '30px', '30px', '0', '65px', '82px', '15px', '60px', '0');
INSERT INTO `mcoordinate` VALUES ('8Lw60MLLTNSXEo4-rflQRQ', '175.069946289063px', '113.069946289063px', '30px', '30px', '12', '200.271728515625px', '92.16015625px', '15px', '60px', '12');
INSERT INTO `mcoordinate` VALUES ('AFG9qUDtQROcOFwpX5EEIg', '187.635009765625px', '103.635009765625px', '28px', '28px', '9', '211.558532714844px', '86.4949340820313px', '15px', '60px', '10');
INSERT INTO `mcoordinate` VALUES ('cBP1WI6dQMOqlLuvi9QWZw', '41.3564453125px', '95.3564453125px', '30px', '30px', '-3', '67.0610961914063px', '80.94140625px', '15px', '60px', '-3');
INSERT INTO `mcoordinate` VALUES ('cCRR-fOxSgiBTHf6h0nE0A', '131.069030761719px', '89.0690307617188px', '30px', '30px', '9', '159.723937988281px', '74.114501953125px', '15px', '60px', '9');
INSERT INTO `mcoordinate` VALUES ('cTDxLcOISgywawUSUVImuA', '129.069030761719px', '86.0690307617188px', '30px', '30px', '9', '156.505187988281px', '71.098876953125px', '15px', '60px', '9');
INSERT INTO `mcoordinate` VALUES ('HLTEk0_3Tli-dnyLWzw95A', '179.639770507813px', '107.639770507813px', '29px', '29px', '11', '203.074157714844px', '91.2136840820313px', '15px', '60px', '10');
INSERT INTO `mcoordinate` VALUES ('jEi6aFahQNyF5n-EkB5JzA', '99.7943725585938px', '101.794372558594px', '30px', '30px', '-7', '127.410400390625px', '90.9451904296875px', '15px', '60px', '-7');
INSERT INTO `mcoordinate` VALUES ('jHPwjc24TzuxOnaMr2AM8g', '142.322631835938px', '118.322631835938px', '30px', '30px', '-5', '169.658630371094px', '104.752136230469px', '15px', '60px', '-5');
INSERT INTO `mcoordinate` VALUES ('M1UenUCzSwqGWHsKKwi4uw', '52.772705078125px', '98.772705078125px', '30px', '30px', '-8', '80.2527465820313px', '86.5562133789063px', '15px', '60px', '-8');
INSERT INTO `mcoordinate` VALUES ('OixiawNmRVWN0I-m30_i-w', '99.6884765625px', '99.6884765625px', '30px', '30px', '-4', '126.014526367188px', '85.7169799804688px', '15px', '60px', '-4');
INSERT INTO `mcoordinate` VALUES ('PWNt5pvEQ4WrENtwyYGekg', '101.7666015625px', '121.7666015625px', '30px', '30px', '-4', '129.077026367188px', '109.826354980469px', '15px', '60px', '-4');
INSERT INTO `mcoordinate` VALUES ('QfDzHdbjTA6Bvxntd9zkxg', '59.8214721679688px', '117.821411132813px', '30px', '30px', '-6', '88.97802734375px', '103.703186035156px', '15px', '60px', '-6');
INSERT INTO `mcoordinate` VALUES ('SHZfr_ulSqKkSrQxvZeH-Q', '36.5089721679688px', '97.5089111328125px', '30px', '30px', '-6', '63.35302734375px', '83.7031860351563px', '15px', '60px', '-6');
INSERT INTO `mcoordinate` VALUES ('SV8fgFDVTJCCVGFx-pLK-A', '36.2913818359375px', '95.2913818359375px', '30px', '30px', '-5', '64.5180053710938px', '82.8927612304688px', '15px', '60px', '-5');
INSERT INTO `mcoordinate` VALUES ('v_JZIMkATiiSiBi9ZEnPUg', '28.1845703125px', '91.1845703125px', '30px', '30px', '-3', '55.5298461914063px', '77.23828125px', '15px', '60px', '-3');
INSERT INTO `mcoordinate` VALUES ('w5o4BW0wTUaaz4FR6bMP_g', '129.227661132813px', '90.2276611328125px', '30px', '30px', '1', '157.095153808594px', '77.8784790039063px', '15px', '60px', '2');
INSERT INTO `mcoordinate` VALUES ('WRra3CYnQ6OtUUASzV25Qw', '121.879455566406px', '87.8794555664063px', '30px', '30px', '-1', '146px', '72px', '15px', '60px', '0');
INSERT INTO `mcoordinate` VALUES ('Zfart9LTQ2Cu9dLKHXrkqQ', '43.6884765625px', '98.6884765625px', '30px', '30px', '-7', '70.926025390625px', '88.0076904296875px', '15px', '60px', '-7');
INSERT INTO `mcoordinate` VALUES ('_33nZ8m3St-OFrkWdZnHkw', '43.2277221679688px', '113.227661132813px', '30px', '30px', '-6', '71.93115234375px', '100.765686035156px', '15px', '60px', '-6');

-- ----------------------------
-- Table structure for `mcustomer`
-- ----------------------------
DROP TABLE IF EXISTS `mcustomer`;
CREATE TABLE `mcustomer` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNT` varchar(64) NOT NULL,
  `PWD` varchar(64) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `BIRTHDAY` date default NULL,
  `SEX` int(11) default NULL,
  `EMAIL` varchar(64) NOT NULL,
  `TEL` varchar(24) default NULL,
  `PHONE` varchar(24) NOT NULL,
  `POSTAL` varchar(15) NOT NULL,
  `CITY` varchar(15) NOT NULL,
  `TOWN` varchar(15) NOT NULL,
  `ADDR` varchar(25) NOT NULL,
  `AGREE` varchar(11) NOT NULL,
  `CREATEDATETIME` datetime default NULL,
  `MODIFYDATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcustomer
-- ----------------------------

-- ----------------------------
-- Table structure for `mdiscount`
-- ----------------------------
DROP TABLE IF EXISTS `mdiscount`;
CREATE TABLE `mdiscount` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) default NULL,
  `FACTOR` int(11) default NULL,
  `PARAM` int(11) default NULL,
  `REMARK` longtext,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mdiscount
-- ----------------------------
INSERT INTO `mdiscount` VALUES ('0', '同品折扣', '2', '90', '*第二雙以上可享9折優惠');
INSERT INTO `mdiscount` VALUES ('1', '滿額折扣', '100000', '0', '');
INSERT INTO `mdiscount` VALUES ('101', '作品參考', null, null, '/upload/customized/attached/image/2015/07/30/11b0f128-0908-4150-a814-1fca54539110.jpg');
INSERT INTO `mdiscount` VALUES ('102', '問與答', null, null, '/upload/customized/attached/image/2015/07/30/1d94fb97-a48b-4604-92fb-336589f48108.jpg');
INSERT INTO `mdiscount` VALUES ('103', '尺寸對照表', null, null, '/upload/customized/attached/image/2015/07/30/0a2f1a7c-bc03-408b-9aae-cacf4a7b7c68.jpg');
INSERT INTO `mdiscount` VALUES ('104', '電繡範例', null, null, '/upload/customized/attached/image/2015/07/30/6a7fee0b-c37a-487a-a66c-ce0431173415.png');
INSERT INTO `mdiscount` VALUES ('2', '運費折扣', '1000', '100', '※運費100元，滿千免運');

-- ----------------------------
-- Table structure for `mgoods`
-- ----------------------------
DROP TABLE IF EXISTS `mgoods`;
CREATE TABLE `mgoods` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) default NULL,
  `ITEM_NO` varchar(100) default NULL,
  `COLOR` varchar(100) default NULL,
  `SIZE` varchar(100) default NULL,
  `TEXT` varchar(100) default NULL,
  `TEXT_COLOR` varchar(100) default NULL,
  `TEXT_FONT` varchar(100) default NULL,
  `QUANTITY` int(11) default NULL,
  `PRICE` int(11) default NULL,
  `TOTAL_AMOUNT` int(11) default NULL,
  `MORDER_ID` varchar(36) NOT NULL,
  `REMARK` varchar(100) default NULL,
  `STOCK_OPTION_ID` varchar(36) default NULL,
  `STOCK_SIZE_ID` varchar(36) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_orderid` (`MORDER_ID`),
  CONSTRAINT `fk_orderid` FOREIGN KEY (`MORDER_ID`) REFERENCES `morder` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mgoods
-- ----------------------------
INSERT INTO `mgoods` VALUES ('3LP52o3jQPSF_pPZ1iFQgA', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '16~18cm', '', '', '', '2', '140', '252', 'dcVcdgI9RayO8zL4cGQYpw', '*第二雙以上可享9折優惠', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'mUWKB9giRg-ErQCDCvkjOQ');
INSERT INTO `mgoods` VALUES ('cboynWxHSIuhNQ0s7duZ6Q', '素色腳踝襪', 'B305522', '女素色腳踝 白', '22~24cm', 'GOOOO!!', '紅色', 'Steinem-BoldItalic41697', '1', '300', '300', '-MhYZHJvQtmrOUbY3U7Pig', '', '3nnxUuckQrqWB8S1pJc9zA', 'F5LJ_UjmSkuUDJnW8g7qow');
INSERT INTO `mgoods` VALUES ('fFeIlDxJS-G_3AQ95IvQoQ', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '14~16cm', '', '', '', '1', '140', '140', 'dcVcdgI9RayO8zL4cGQYpw', '', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'TxEV2i9hQ2mzkvCkVp9nWA');
INSERT INTO `mgoods` VALUES ('FvP5IYbQTqaWZ-6ldPII1w', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '19~22cm', '', '', '', '3', '140', '378', 'k3mUCz5lStav3FlRCK6iOg', '*第二雙以上可享9折優惠', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'jvGSVHjjStuh3GrBV7fuvA');
INSERT INTO `mgoods` VALUES ('GtWOIDxRRkq5bQ0dDjN7eA', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '19~22cm', '', '', '', '3', '120', '324', 'dcVcdgI9RayO8zL4cGQYpw', '*第二雙以上可享9折優惠', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'jvGSVHjjStuh3GrBV7fuvA');
INSERT INTO `mgoods` VALUES ('HLV6f7zESiKECcSvKopklw', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '14~16cm', '', '', '', '1', '140', '140', 'p4ZQ1ReBSXSQzsiU22ZFqA', '', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'TxEV2i9hQ2mzkvCkVp9nWA');
INSERT INTO `mgoods` VALUES ('jUbQk9WZQxyk3dfa8xm6iQ', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '14~16cm', '', '', '', '2', '140', '252', 'MbVSPZ54TCe7ozyfZX1EgQ', '*第二雙以上可享9折優惠', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'TxEV2i9hQ2mzkvCkVp9nWA');
INSERT INTO `mgoods` VALUES ('KOxJ5Vz-R2iRaHbhRXQPpA', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '16~18cm', '', '', '', '8', '140', '1008', 'k3mUCz5lStav3FlRCK6iOg', '*第二雙以上可享9折優惠', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'mUWKB9giRg-ErQCDCvkjOQ');
INSERT INTO `mgoods` VALUES ('lvQ-w7VnTdaBDphfji36aw', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '19~22cm', '', '', '', '1', '140', '140', 'qaMmWkbGQvW6J8dSvEal7Q', '', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'jvGSVHjjStuh3GrBV7fuvA');
INSERT INTO `mgoods` VALUES ('UwvNMdiqTZyEs8TPPWvmng', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '16~18cm', '', '', '', '1', '140', '140', 'xFsjJJNFRECiek-COjJFfw', '', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'mUWKB9giRg-ErQCDCvkjOQ');
INSERT INTO `mgoods` VALUES ('Wku8YJDaTOm-TUhkA6sAeQ', '指無痕 鞋型踝襪', 'W141822', '童 鞋型踝襪 灰', '14~16cm', '', '', '', '6', '140', '756', 'k3mUCz5lStav3FlRCK6iOg', '*第二雙以上可享9折優惠', 'ZPr-7Y2OT7uyPX-VBNb0bg', 'TxEV2i9hQ2mzkvCkVp9nWA');

-- ----------------------------
-- Table structure for `mgoods_moption`
-- ----------------------------
DROP TABLE IF EXISTS `mgoods_moption`;
CREATE TABLE `mgoods_moption` (
  `MGOODS_ID` varchar(36) NOT NULL,
  `MOPTION_ID` varchar(36) NOT NULL,
  PRIMARY KEY  (`MGOODS_ID`,`MOPTION_ID`),
  KEY `FK_goodsid_optionid` (`MGOODS_ID`),
  KEY `FK_optionid_goodsid` (`MOPTION_ID`),
  CONSTRAINT `FK_goodsid_optionid` FOREIGN KEY (`MGOODS_ID`) REFERENCES `mgoods` (`ID`),
  CONSTRAINT `FK_optionid_goodsid` FOREIGN KEY (`MOPTION_ID`) REFERENCES `moption` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mgoods_moption
-- ----------------------------
INSERT INTO `mgoods_moption` VALUES ('3LP52o3jQPSF_pPZ1iFQgA', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('3LP52o3jQPSF_pPZ1iFQgA', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('3LP52o3jQPSF_pPZ1iFQgA', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('3LP52o3jQPSF_pPZ1iFQgA', 'YaLasNdqRKmTu7wfX7gYyA');
INSERT INTO `mgoods_moption` VALUES ('3LP52o3jQPSF_pPZ1iFQgA', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('cboynWxHSIuhNQ0s7duZ6Q', '0XxttZdgTFy0hZKGFsEi8w');
INSERT INTO `mgoods_moption` VALUES ('cboynWxHSIuhNQ0s7duZ6Q', '3nnxUuckQrqWB8S1pJc9zA');
INSERT INTO `mgoods_moption` VALUES ('cboynWxHSIuhNQ0s7duZ6Q', 'OkfqdM0WRGa68xLZHchNYA');
INSERT INTO `mgoods_moption` VALUES ('cboynWxHSIuhNQ0s7duZ6Q', 'TY9grbHXTxi83nRYlkNLJw');
INSERT INTO `mgoods_moption` VALUES ('cboynWxHSIuhNQ0s7duZ6Q', 'w5o4BW0wTUaaz4FR6bMP_g');
INSERT INTO `mgoods_moption` VALUES ('cboynWxHSIuhNQ0s7duZ6Q', 'YaLasNdqRKmTu7wfX7gYyA');
INSERT INTO `mgoods_moption` VALUES ('fFeIlDxJS-G_3AQ95IvQoQ', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('fFeIlDxJS-G_3AQ95IvQoQ', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('fFeIlDxJS-G_3AQ95IvQoQ', 'PAX6HsN1SrmX9f0JisRElw');
INSERT INTO `mgoods_moption` VALUES ('fFeIlDxJS-G_3AQ95IvQoQ', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('fFeIlDxJS-G_3AQ95IvQoQ', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('FvP5IYbQTqaWZ-6ldPII1w', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('FvP5IYbQTqaWZ-6ldPII1w', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('FvP5IYbQTqaWZ-6ldPII1w', 'PAX6HsN1SrmX9f0JisRElw');
INSERT INTO `mgoods_moption` VALUES ('FvP5IYbQTqaWZ-6ldPII1w', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('FvP5IYbQTqaWZ-6ldPII1w', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('GtWOIDxRRkq5bQ0dDjN7eA', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('GtWOIDxRRkq5bQ0dDjN7eA', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('GtWOIDxRRkq5bQ0dDjN7eA', 'No2E7-XOT4i-7qYNP9vBlQ');
INSERT INTO `mgoods_moption` VALUES ('GtWOIDxRRkq5bQ0dDjN7eA', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('GtWOIDxRRkq5bQ0dDjN7eA', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('HLV6f7zESiKECcSvKopklw', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('HLV6f7zESiKECcSvKopklw', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('HLV6f7zESiKECcSvKopklw', 'PAX6HsN1SrmX9f0JisRElw');
INSERT INTO `mgoods_moption` VALUES ('HLV6f7zESiKECcSvKopklw', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('HLV6f7zESiKECcSvKopklw', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('jUbQk9WZQxyk3dfa8xm6iQ', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('jUbQk9WZQxyk3dfa8xm6iQ', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('jUbQk9WZQxyk3dfa8xm6iQ', 'PAX6HsN1SrmX9f0JisRElw');
INSERT INTO `mgoods_moption` VALUES ('jUbQk9WZQxyk3dfa8xm6iQ', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('jUbQk9WZQxyk3dfa8xm6iQ', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('KOxJ5Vz-R2iRaHbhRXQPpA', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('KOxJ5Vz-R2iRaHbhRXQPpA', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('KOxJ5Vz-R2iRaHbhRXQPpA', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('KOxJ5Vz-R2iRaHbhRXQPpA', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('KOxJ5Vz-R2iRaHbhRXQPpA', '_RfpdRuRTgOCocn016jy-w');
INSERT INTO `mgoods_moption` VALUES ('lvQ-w7VnTdaBDphfji36aw', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('lvQ-w7VnTdaBDphfji36aw', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('lvQ-w7VnTdaBDphfji36aw', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('lvQ-w7VnTdaBDphfji36aw', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('lvQ-w7VnTdaBDphfji36aw', '_RfpdRuRTgOCocn016jy-w');
INSERT INTO `mgoods_moption` VALUES ('UwvNMdiqTZyEs8TPPWvmng', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('UwvNMdiqTZyEs8TPPWvmng', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('UwvNMdiqTZyEs8TPPWvmng', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('UwvNMdiqTZyEs8TPPWvmng', 'YaLasNdqRKmTu7wfX7gYyA');
INSERT INTO `mgoods_moption` VALUES ('UwvNMdiqTZyEs8TPPWvmng', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('Wku8YJDaTOm-TUhkA6sAeQ', 'IPxcWWjqS_Sc8l-c8m6vnA');
INSERT INTO `mgoods_moption` VALUES ('Wku8YJDaTOm-TUhkA6sAeQ', 'jHPwjc24TzuxOnaMr2AM8g');
INSERT INTO `mgoods_moption` VALUES ('Wku8YJDaTOm-TUhkA6sAeQ', 'q5yzicoeRDu1KQxOcUkCdw');
INSERT INTO `mgoods_moption` VALUES ('Wku8YJDaTOm-TUhkA6sAeQ', 'ZPr-7Y2OT7uyPX-VBNb0bg');
INSERT INTO `mgoods_moption` VALUES ('Wku8YJDaTOm-TUhkA6sAeQ', '_RfpdRuRTgOCocn016jy-w');

-- ----------------------------
-- Table structure for `mjava_mail`
-- ----------------------------
DROP TABLE IF EXISTS `mjava_mail`;
CREATE TABLE `mjava_mail` (
  `ID` varchar(36) NOT NULL,
  `MAIL_FROM` varchar(60) default NULL,
  `USERNAME` varchar(60) default NULL,
  `PASSWORD` varchar(60) default NULL,
  `HOST` varchar(60) default NULL,
  `AUTH` int(11) default NULL,
  `TIMEOUT` int(11) default NULL,
  `SEQ` int(11) default NULL,
  `PORT` int(11) unsigned zerofill default NULL,
  `PRESET` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mjava_mail
-- ----------------------------
INSERT INTO `mjava_mail` VALUES ('fxXblEJHSWC1LOTHXrBclg', 'yourEmail', 'yourEmail', 'yourPassword', 'smtp.gmail.com', '1', '25000', '100', '00000000587', '1');

-- ----------------------------
-- Table structure for `moption`
-- ----------------------------
DROP TABLE IF EXISTS `moption`;
CREATE TABLE `moption` (
  `ID` varchar(36) NOT NULL,
  `ITEM_NO` varchar(100) default NULL,
  `NAME` varchar(100) NOT NULL,
  `PRICE` int(11) default NULL,
  `REMARK` longtext,
  `STATUS` int(11) default NULL,
  `ICON` varchar(100) default NULL,
  `SEQ` int(11) default NULL,
  `URL` varchar(200) default NULL,
  `COLOR_PIC` varchar(200) default NULL,
  `PID` varchar(36) default NULL,
  `MOPTIONTYPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_optionid` (`PID`),
  KEY `fk_optiontypeid` (`MOPTIONTYPE_ID`),
  CONSTRAINT `fk_optionid` FOREIGN KEY (`PID`) REFERENCES `moption` (`ID`),
  CONSTRAINT `fk_optiontypeid` FOREIGN KEY (`MOPTIONTYPE_ID`) REFERENCES `moptiontype` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moption
-- ----------------------------
INSERT INTO `moption` VALUES ('-gLi8Vm5QxWMaTu4JQUFuQ', 'W141822-L', '童 鞋型踝襪 藍', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/b84440b1-a5d0-4c61-8f20-95010492008f.png', '/upload/customized/attached/image/2015/05/21/7db538cd-ae30-41bd-8138-4f06b304f129.jpg', 'jHPwjc24TzuxOnaMr2AM8g', '3');
INSERT INTO `moption` VALUES ('03JcisLIT-WRfZ58CGrlEQ', 'S167622', '格紋腳踝襪', '120', '', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/27/13e0f986-d63f-4dde-9a5d-cb69e01f24ea.png', null, 'C8qDiG-XQEOxufjLVI5gHQ', '2');
INSERT INTO `moption` VALUES ('0iH8OvPFRRe6YhnWqARvEQ', null, '素色短襪藍', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/836bd824-663f-4b93-aec3-2f6ccde1516c.png', '/upload/customized/attached/image/2015/05/19/a64b20fb-7080-4661-858c-f494e5ed1e76.png', 'SV8fgFDVTJCCVGFx-pLK-A', '3');
INSERT INTO `moption` VALUES ('0XxttZdgTFy0hZKGFsEi8w', null, '腳踝襪', '0', '', '0', 'disk', '100', '/upload/customized/attached/image/2015/05/19/447b13a0-206c-4f64-b4a5-e053a35d3178.png', null, 'OkfqdM0WRGa68xLZHchNYA', '1');
INSERT INTO `moption` VALUES ('1K1cvskOTJ6xpZa4Q21rhw', null, '素色短襪深灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/950d08a0-ca4d-4838-abfb-570a6247b454.png', '/upload/customized/attached/image/2015/05/19/0320038d-5f4c-4c1f-9729-5cea12198018.png', 'SV8fgFDVTJCCVGFx-pLK-A', '3');
INSERT INTO `moption` VALUES ('1tQbc-roRci2Ita8jRG_Uw', 'SX1684-2224', '美國風毛巾底踝襪', '120', '成分：83%棉 / 9%聚脂纖維 / 5%尼龍 / 3%其他纖維&lt;br /&gt;★ 毛巾襪底織法，柔軟又舒適&amp;nbsp;&lt;br /&gt;★ 時尚橫條紋設計&lt;br /&gt;★ 100%台灣織造，品質保證&lt;br /&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/20/5eff95dd-2161-453d-aada-94639cf70f94.png', null, '0XxttZdgTFy0hZKGFsEi8w', '2');
INSERT INTO `moption` VALUES ('23ejY3yxSqaxrRTL9Tu3ng', null, '男素色短襪  黑', '0', '', '0', 'color_swatch', '101', '/upload/customized/attached/image/2015/05/21/c281b9f0-14b9-423a-ad5f-4802f062cff0.png', '/upload/customized/attached/image/2015/05/21/318e6815-8817-4dd3-b339-7dd178e3b123.png', 'PWNt5pvEQ4WrENtwyYGekg', '3');
INSERT INTO `moption` VALUES ('24B2w7F4RPeFR_gaAHY2Dg', null, '素色短襪黑', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/7ee1e7fb-746e-4cee-9230-55589c8071b9.png', '/upload/customized/attached/image/2015/05/19/6d52e1c1-8064-48ff-b464-0e758540d724.png', 'SV8fgFDVTJCCVGFx-pLK-A', '3');
INSERT INTO `moption` VALUES ('2CrI9gj8TOmsoXetmjT5jQ', '', '挖土機18', '80', '', '0', 'disk_multiple', '110', '/upload/customized/attached/image/2015/05/21/1612d296-4316-4de7-b12b-803d2c3c003f.png', null, null, '4');
INSERT INTO `moption` VALUES ('3nnxUuckQrqWB8S1pJc9zA', null, '女素色腳踝 白', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/fc6116b3-8230-4e19-bf49-bfe173113f8c.png', '/upload/customized/attached/image/2015/05/19/d6870588-0fef-49aa-a4e4-91167b3e2fa7.png', 'w5o4BW0wTUaaz4FR6bMP_g', '3');
INSERT INTO `moption` VALUES ('3sLa-DguQr6lJbRkBlXx8g', 'W148632', '素雅指無痕短襪', '120', '&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;成分：90%棉 / 8%尼龍 / 2%其他纖維&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 素雅經典款，有&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;多種色彩可選，&lt;/span&gt;質感加分&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 指無痕設計，舒適不磨腳趾&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 台灣織造，品質保證&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '0', 'database_table', '101', '/upload/customized/attached/image/2015/05/19/48714867-3eda-4bbb-bc12-2e6619183f2f.png', null, 'PTYImjBFRriAEmr29JTIaw', '2');
INSERT INTO `moption` VALUES ('41ETgO2AT7eI2EsigLlrBg', '', '無尾熊21', '80', '', '0', 'disk_multiple', '111', '/upload/customized/attached/image/2015/05/21/075f50b7-17bf-47b7-b78c-bbc18693eaad.png', null, null, '4');
INSERT INTO `moption` VALUES ('4nvaT_YRRmK57qU3Hm77CA', '', '消防車19', '80', '', '0', 'disk_multiple', '110', '/upload/customized/attached/image/2015/05/21/3b642c04-9510-472c-84cf-0d81fa7c8960.png', null, null, '4');
INSERT INTO `moption` VALUES ('5qQfhenlTMWGOuFrx3wcwQ', null, '長襪', '0', '', '0', 'disk', '102', '/upload/customized/attached/image/2015/05/19/103cafcf-3069-4cc8-a35c-ada12bfaa8b3.png', null, 'q5yzicoeRDu1KQxOcUkCdw', '1');
INSERT INTO `moption` VALUES ('6RcXz7uNRyCHkrUyQl_aEQ', null, '素色短襪 丈青', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/b6995768-0ad3-47fe-b5d9-16b2d0670015.png', '/upload/customized/attached/image/2015/05/27/fdb7ebf9-2799-4198-9a5f-7973240c45e5.png', 'SHZfr_ulSqKkSrQxvZeH-Q', '3');
INSERT INTO `moption` VALUES ('6zskiNZRTOiFhH-sKjVhrw', null, '其他商品', '0', '', '1', 'disk_multiple', '110', '', null, null, '0');
INSERT INTO `moption` VALUES ('75agljYmQxeu0TQIy_AzMg', null, '腳踝襪', '0', '', '0', 'disk', '100', '/upload/customized/attached/image/2015/05/19/3e6089a2-a6a7-4cfd-8451-1822bffa91e2.png', null, 'heR0bzv2ScGOpwgrP8S2Fw', '1');
INSERT INTO `moption` VALUES ('7tTUEVGWR6GwbEZZh1yFmQ', null, '女 素色長襪 深灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/18/efecde3a-05ac-4dc3-91e5-51c830213f8c.png', '/upload/customized/attached/image/2015/05/19/15a400cf-cdfb-46a0-a0ed-1aa33e4a11bd.png', 'cBP1WI6dQMOqlLuvi9QWZw', '3');
INSERT INTO `moption` VALUES ('8DYz5iB1SwGYNQB-nnQwLA', null, '短襪', '0', '', '0', 'disk', '101', '/upload/customized/attached/image/2015/05/27/fc2612f2-a668-4bf1-a0dc-abc773353609.png', null, 'hSGUxXACSTevnr_cy90_LQ', '1');
INSERT INTO `moption` VALUES ('8El-YGKFRrWamzRcKHb3NA', null, '素色短襪 淺灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/a3b2ec22-021d-4c3f-b145-107ee56ac53a.png', '/upload/customized/attached/image/2015/05/27/e5a65abe-5ef7-4ea3-85ef-7913ccbb51db.png', 'SHZfr_ulSqKkSrQxvZeH-Q', '3');
INSERT INTO `moption` VALUES ('8Lw60MLLTNSXEo4-rflQRQ', 'B305525', '素色腳踝襪', '120', '&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;成分：80%棉 / 18%聚脂纖維 / 2%其他纖維&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 素色基本款，好穿百搭&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 平織襪身柔軟舒適&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 100%台灣織造，品質保證&lt;/span&gt;&lt;/p&gt;&lt;/span&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;/span&gt;&lt;/p&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/19/46ca76ec-0769-4564-a410-a1943b209935.png', null, '75agljYmQxeu0TQIy_AzMg', '2');
INSERT INTO `moption` VALUES ('8ZMPbYODTWezxKRp9XScaQ', '', '生日快樂06', '80', '', '0', 'disk_multiple', '101', '/upload/customized/attached/image/2015/05/18/a9fbb797-1b03-4ab4-8b64-cf3bf47cb9e8.png', null, null, '4');
INSERT INTO `moption` VALUES ('8_8XWmWUTbiYC7AP599mVg', 'W1668-1618-L', '童 點點襪 藍', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/742d6018-5bf9-493c-8ef8-5a4e64b132b9.png', '/upload/customized/attached/image/2015/05/19/b7b1a4b4-430b-44c1-bbb7-a4f954c0070d.jpg', 'Zfart9LTQ2Cu9dLKHXrkqQ', '3');
INSERT INTO `moption` VALUES ('9m4IV6quRoqb4Ei-gIqq4Q', null, '素色短襪桃', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/84679e2a-4146-4247-be54-565404792cb4.png', '/upload/customized/attached/image/2015/05/19/3b43c620-ec24-44fc-b5b7-2df89ce79ceb.png', 'SV8fgFDVTJCCVGFx-pLK-A', '3');
INSERT INTO `moption` VALUES ('A2cTRUk5S-iWjzSJX6VYTg', null, '女 素色長襪 黑', '0', '', '0', 'color_swatch', '102', '/upload/customized/attached/image/2015/05/18/a8b57039-7582-4cbc-8cf4-fe995d5cdd88.png', '/upload/customized/attached/image/2015/05/19/fd551eed-7881-452b-be82-bfc496c5e3ec.png', 'cBP1WI6dQMOqlLuvi9QWZw', '3');
INSERT INTO `moption` VALUES ('a2Yj543wR4aTSzSgrMekpw', null, '男橫條紋 丈青紅', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/e7a0c9b1-25fe-4b00-8fab-8bb92212e82a.png', '/upload/customized/attached/image/2015/05/21/7b6c3790-ccd5-4183-ba1e-e95483c12f53.png', 'AFG9qUDtQROcOFwpX5EEIg', '3');
INSERT INTO `moption` VALUES ('AFG9qUDtQROcOFwpX5EEIg', 'SX1684252', '橫條紋踝襪', '120', '&lt;span&gt;成分：83%棉 / 9%聚脂纖維 / 5%尼龍 / 3%其他纖維&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 毛巾襪底織法，柔軟又舒適&amp;nbsp;&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 時尚橫條紋設計&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 100%台灣織造，品質保證&lt;/span&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/21/04e25281-baea-4c45-aee9-fd80d000208f.png', null, '75agljYmQxeu0TQIy_AzMg', '2');
INSERT INTO `moption` VALUES ('AjCs4kusSOKg9A1oR-egfg', null, '美國風踝襪 白紅', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/245026ed-5dc4-4ff6-821a-505d2f502537.png', '/upload/customized/attached/image/2015/05/27/724f4e59-9e5e-4fb4-8142-2ea04e660441.png', 'cTDxLcOISgywawUSUVImuA', '3');
INSERT INTO `moption` VALUES ('au5vyDvBTaWwaYo0-ki3dw', null, '素雅短襪 白', '0', '', '0', 'color_swatch', '101', '/upload/customized/attached/image/2015/05/19/afcdb96b-4628-4ac3-a474-c87099e9642f.png', '/upload/customized/attached/image/2015/05/19/4b004c17-2c29-4314-86ec-89de1b2ba75f.png', '3sLa-DguQr6lJbRkBlXx8g', '3');
INSERT INTO `moption` VALUES ('bFKCc66HS1ynAL-obhYOYQ', 'W1668-1618-B', '童 點點襪 黑', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/fe63d8ea-6740-4893-a979-37008e82d4a8.png', '/upload/customized/attached/image/2015/05/19/605e7d47-dfa4-4e03-92f4-465fde31f7d5.jpg', 'Zfart9LTQ2Cu9dLKHXrkqQ', '3');
INSERT INTO `moption` VALUES ('bfsZgJ5QQTmgiPUUHIOy3Q', '', '謝謝你', '20', '', '0', 'disk_multiple', '105', '/upload/customized/attached/image/2015/06/01/6588596c-9c26-4690-9e09-2c6f6a1ae9f4.jpg', null, null, '6');
INSERT INTO `moption` VALUES ('BoCJ-TLNT02s6TFFR7YVsA', null, '密拷花邊 淺紫', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/20/87a2b9e6-115f-42e3-836d-62b89c1b115a.png', '/upload/customized/attached/image/2015/05/20/4a2fa96c-c049-4b01-9757-3ec94adc6bfc.png', 'OixiawNmRVWN0I-m30_i-w', '3');
INSERT INTO `moption` VALUES ('BUGVWcOHR_mVXAkToNHMlA', 'W1697-1618-H', '童 橫條紋 灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/cce21a44-dfd5-4a32-b359-b87b2ac0786e.png', '/upload/customized/attached/image/2015/05/19/1f2e7db5-b98d-4eec-853c-d15363839da9.jpg', 'M1UenUCzSwqGWHsKKwi4uw', '3');
INSERT INTO `moption` VALUES ('B_c_aRwCQTKihxjM2YBvPQ', null, '男素色短襪 灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/eb61ef8f-a154-413c-a3a1-eb2881752ef6.png', '/upload/customized/attached/image/2015/05/21/4001e335-faf2-41b7-9b04-006e71e1bdc4.png', 'PWNt5pvEQ4WrENtwyYGekg', '3');
INSERT INTO `moption` VALUES ('C8qDiG-XQEOxufjLVI5gHQ', null, '腳踝襪', '0', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;成分：58%棉 / 30%尼龍 / 9%聚脂纖維 / 3%其他纖維&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 襪身柔軟舒適&lt;br /&gt;\r\n★ 隱形襪口設計，休閒搭配必備款&lt;br /&gt;\r\n★ 腳背透氣網格織法，加速排汗不悶熱&lt;br /&gt;\r\n★ 台灣織造，品質保證&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;', '0', 'disk', '100', '/upload/customized/attached/image/2015/05/27/5affadfb-3653-46b0-97cd-6c9f4fd3bd71.png', null, 'hSGUxXACSTevnr_cy90_LQ', '1');
INSERT INTO `moption` VALUES ('cAG609-cRTWiCLHweYuqAQ', null, '素雅短襪 粉', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/0f567968-b973-4bc7-a36b-3ff2fee8f85c.png', '/upload/customized/attached/image/2015/05/19/fa3a6509-f301-4d8f-95e3-734fee0a12fc.png', '3sLa-DguQr6lJbRkBlXx8g', '3');
INSERT INTO `moption` VALUES ('CAXXxiNoTAinbHLKMo6tyg', null, '素色短襪  深灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/279295ee-16cf-49a6-8255-837ddbcadd76.png', '/upload/customized/attached/image/2015/05/27/6917d349-2f70-438e-9ebd-c0795c5952a7.png', 'SHZfr_ulSqKkSrQxvZeH-Q', '3');
INSERT INTO `moption` VALUES ('cBP1WI6dQMOqlLuvi9QWZw', ' ', '素色長襪', '120', '★ 素色百搭款&lt;br /&gt;★ 襪身柔軟舒適&lt;br /&gt;★ 100%台灣織造，品質保證&lt;br /&gt;&lt;br /&gt;', '1', 'database_table', '100', '/upload/customized/attached/image/2015/05/18/5748fe8e-1b01-4530-980e-53c9b34020fc.png', null, 'Ov8g4vZJQ6Wv6A1Q4h-Wow', '2');
INSERT INTO `moption` VALUES ('cCRR-fOxSgiBTHf6h0nE0A', 'SX1683-2224', '橫條毛巾底踝襪', '120', '成分：83%棉 / 9%聚脂纖維 / 5%尼龍 / 3%其他纖維&lt;br /&gt;★ 毛巾襪底織法，柔軟又舒適&amp;nbsp;&lt;br /&gt;★ 時尚橫條紋設計&lt;br /&gt;★ 100%台灣織造，品質保證&lt;br /&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/20/8a396384-33b4-4b91-8e5a-ac47716b618c.png', null, '0XxttZdgTFy0hZKGFsEi8w', '2');
INSERT INTO `moption` VALUES ('cTDxLcOISgywawUSUVImuA', 'SX168422', '美國風毛巾底踝襪', '120', '', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/27/43ccfe01-9827-4792-968d-b04338e3cb2a.png', null, 'C8qDiG-XQEOxufjLVI5gHQ', '2');
INSERT INTO `moption` VALUES ('D8PY0uL5SJ2qKSaVX9nznw', '', '結婚紀念07', '80', '', '0', 'disk_multiple', '102', '/upload/customized/attached/image/2015/05/18/1166ca31-16fe-4466-a448-4c339630ac57.png', null, null, '4');
INSERT INTO `moption` VALUES ('dbbJSRwBSnym_n9mLH3mcQ', 'W148222-W', '童 寬口織花短襪 白', '0', '&lt;p&gt;	&lt;br /&gt;&lt;/p&gt;&lt;p&gt;	&lt;br /&gt;&lt;/p&gt;', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/2e2f0d5a-e277-48e8-a810-57bcf3f87440.png', '/upload/customized/attached/image/2015/05/21/0b770085-66d5-4091-aa7f-2c9223732c4e.png', 'jEi6aFahQNyF5n-EkB5JzA', '3');
INSERT INTO `moption` VALUES ('dEtdtmLMRiCogJnp-Im_fw', null, '密拷花邊 深紫', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/20/41064ba2-502c-44a8-9d2e-1609681bdb90.png', '/upload/customized/attached/image/2015/05/20/3edf29d0-a8d8-4320-b9f4-5dabc3ff85c7.png', 'OixiawNmRVWN0I-m30_i-w', '3');
INSERT INTO `moption` VALUES ('diZS4OfTS3-eWauLo8xUGQ', null, '素雅短襪 紫', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/08cb91af-3539-4d60-bdd9-173da60dd91e.png', '/upload/customized/attached/image/2015/05/19/0d13df5a-5411-4ce5-a64e-670d8619df89.png', '3sLa-DguQr6lJbRkBlXx8g', '3');
INSERT INTO `moption` VALUES ('dUJNtMLaQWONXJ0sABbFDg', null, '密拷花邊 棕', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/20/95f05833-0ef1-45de-866d-6087fe453884.png', '/upload/customized/attached/image/2015/05/20/4166c326-1834-4d08-8b81-9cab75ae245c.png', 'OixiawNmRVWN0I-m30_i-w', '3');
INSERT INTO `moption` VALUES ('E0ZQXqEJRA6QDzFN-cyzLw', null, '素色短襪丈青', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/15798776-0346-415c-8abf-4662b15389bd.png', '/upload/customized/attached/image/2015/05/19/1e686869-4e11-4b77-b609-d92427597d28.png', 'SV8fgFDVTJCCVGFx-pLK-A', '3');
INSERT INTO `moption` VALUES ('EB-2YauCTOC2ZA8WlwpBbA', null, '素色短襪紫', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/f2cf257d-5cf7-46e7-b8f5-9d424d185ab0.png', '/upload/customized/attached/image/2015/05/19/322cf27c-9894-4fd5-a8e6-c621af44672e.png', 'SV8fgFDVTJCCVGFx-pLK-A', '3');
INSERT INTO `moption` VALUES ('EeK1XjYOSRq4iI3U8IBwBQ', 'W1697-1618-G', '童 橫條紋 綠 ', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/779a794b-d0f3-4b3e-ba81-a1b3fd517e53.png', '/upload/customized/attached/image/2015/05/19/08257978-ebee-4542-baf6-6ff2ad077b5a.jpg', 'M1UenUCzSwqGWHsKKwi4uw', '3');
INSERT INTO `moption` VALUES ('emD9d3orToiUR9iJRlvuvw', null, '女 點點長襪 米', '0', '★ 素色點點設計款&lt;br /&gt;★ 襪身柔軟舒適&lt;br /&gt;★ 100%台灣織造，品質保證&amp;nbsp;&lt;br /&gt;', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/120bfb7a-5d37-4f1e-84a7-c8d77dd6f6a5.png', '/upload/customized/attached/image/2015/05/19/988bbb73-a25a-433b-8f6f-20156a056857.png', 'v_JZIMkATiiSiBi9ZEnPUg', '3');
INSERT INTO `moption` VALUES ('EsLzUyNxRL2P1em2HoOEDg', '', '暴龍22', '80', '', '0', 'disk_multiple', '112', '/upload/customized/attached/image/2015/05/21/e7d7b414-0803-48c5-b0af-3b14b7705d67.png', null, null, '4');
INSERT INTO `moption` VALUES ('FBTAzaCXSpePGp4efIV8cQ', 'W1668-1618-G', '童 點點襪 綠', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/3b149373-693c-492f-ab35-f0e69c1cd96f.png', '/upload/customized/attached/image/2015/05/19/1bf3cb74-7be8-4aa0-a9e7-4da0112169bb.jpg', 'Zfart9LTQ2Cu9dLKHXrkqQ', '3');
INSERT INTO `moption` VALUES ('FM60ZEOaRtCbcaFn80dPrg', null, '素色短襪 紫', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/a6ff9617-81e8-4922-9236-ab67a90748ed.png', '/upload/customized/attached/image/2015/05/27/2b634488-f5f3-4d62-b8d1-2833e844e433.png', 'SHZfr_ulSqKkSrQxvZeH-Q', '3');
INSERT INTO `moption` VALUES ('G61-fd5_R6uGVSy-Uc2zSg', null, '女素色腳踝 黑', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/5cdd5d58-d690-4133-a941-cdbca5dcce76.png', '/upload/customized/attached/image/2015/05/19/550f52be-7790-467f-a101-03bb246c9c82.jpg', 'w5o4BW0wTUaaz4FR6bMP_g', '3');
INSERT INTO `moption` VALUES ('GIpeEa1FTsqgbmkw8E1l8w', null, '男素色長襪 丈青', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/f62f66fe-29e5-4730-8f01-153b723196ec.png', '/upload/customized/attached/image/2015/05/19/455c5dc1-dbeb-4ebd-a192-790707b487d6.png', '_33nZ8m3St-OFrkWdZnHkw', '3');
INSERT INTO `moption` VALUES ('gNqEv4DzS8afxVjhHN_5GA', null, '素雅短襪 桃', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/045f188c-7d38-4b93-b7a8-ab38ee5faf7e.png', '/upload/customized/attached/image/2015/05/19/493d2458-931a-4b99-a56d-181886547147.png', '3sLa-DguQr6lJbRkBlXx8g', '3');
INSERT INTO `moption` VALUES ('gtifmiXLQ3a-eOPNiQN4rA', 'W148222-R', '童 寬口織花短襪 紅', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/9db2cb44-aab9-45d2-bb40-1f62776c76bc.png', '/upload/customized/attached/image/2015/05/21/e6ef2acc-4ef4-4f7a-9fe0-997057b14662.jpg', 'jEi6aFahQNyF5n-EkB5JzA', '3');
INSERT INTO `moption` VALUES ('Gu7LTjh0TVeuRRfnS9_mRw', null, '格紋腳踝襪紅灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/58dedf67-511c-41a0-a483-aa10d905a438.png', '/upload/customized/attached/image/2015/05/27/418cf6aa-abb2-47a4-b520-9696d93d2bec.png', '03JcisLIT-WRfZ58CGrlEQ', '3');
INSERT INTO `moption` VALUES ('gzLT83AcS2maO0sMqVel0w', null, '男素色腳踝 黑', '0', '', '0', 'color_swatch', '101', '/upload/customized/attached/image/2015/05/20/cf0400f4-e303-4b9a-bef8-a44637b4c59b.png', '/upload/customized/attached/image/2015/05/19/8929daa5-169e-4da4-aa96-c00f2c3615e8.png', '8Lw60MLLTNSXEo4-rflQRQ', '3');
INSERT INTO `moption` VALUES ('hEfo5tbvTKePSyy4ujWIvA', null, '男素色短襪 深灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/72ab6cd3-d729-4200-92ab-664c6074ae8c.png', '/upload/customized/attached/image/2015/05/21/66c414c0-2df4-4c2b-8f92-718ddc6db1c0.png', 'PWNt5pvEQ4WrENtwyYGekg', '3');
INSERT INTO `moption` VALUES ('heR0bzv2ScGOpwgrP8S2Fw', null, '男襪', '0', '25~27cm, 28~30cm', '0', 'disk_multiple', '103', '', null, null, '0');
INSERT INTO `moption` VALUES ('HLTEk0_3Tli-dnyLWzw95A', 'SX168425', '美國風毛巾底踝襪', '120', '&lt;span&gt;成分：83%棉 / 9%聚脂纖維 / 5%尼龍 / 3%其他纖維&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 毛巾襪底織法，柔軟又舒適&amp;nbsp;&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 時尚橫條紋設計&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 100%台灣織造，品質保證&lt;/span&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/21/613085c2-d946-46b5-957c-a605cb6c135f.png', null, '75agljYmQxeu0TQIy_AzMg', '2');
INSERT INTO `moption` VALUES ('hSGUxXACSTevnr_cy90_LQ', null, '青少男襪', '0', '22~24cm', '0', 'disk_multiple', '102', '', null, null, '0');
INSERT INTO `moption` VALUES ('IPxcWWjqS_Sc8l-c8m6vnA', null, '腳踝襪', '0', '', '0', 'disk', '100', '/upload/customized/attached/image/2015/05/19/b50acce9-78cc-47ae-be9f-fd13541c77c0.png', null, 'q5yzicoeRDu1KQxOcUkCdw', '1');
INSERT INTO `moption` VALUES ('j3BVVTl-RtyGkuLus82YnQ', null, '男素色腳踝 深灰', '0', '', '0', 'color_swatch', '103', '/upload/customized/attached/image/2015/05/19/aab1ce49-ba14-4fb2-b572-d231439636a3.png', '/upload/customized/attached/image/2015/05/19/ef9c48d4-2204-42b8-8ee1-4a790a081bfa.png', '8Lw60MLLTNSXEo4-rflQRQ', '3');
INSERT INTO `moption` VALUES ('jE65VXxhR5S2bhJdMbVZ0g', null, '女格紋踝襪 黃綠', '0', '★ 襪身柔軟舒適&lt;br /&gt;★ 隱形襪口設計，休閒搭配必備款&lt;br /&gt;★ 腳背透氣網格織法，加速排汗不悶熱&lt;br /&gt;★ 台灣織造，品質保證&lt;br /&gt;', '0', 'color_swatch', '102', '/upload/customized/attached/image/2015/05/21/7a254bb6-75f6-4bc4-ae9d-8dc439982637.png', '/upload/customized/attached/image/2015/05/19/560db7ca-beea-47aa-961d-a767ecc75c25.png', 'WRra3CYnQ6OtUUASzV25Qw', '3');
INSERT INTO `moption` VALUES ('JEhhKI0iQieeX_tA4AR9_Q', 'W1697-1618-S', '童 橫條紋 水 ', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/8355965b-84fd-4352-9755-f2b1c70bae00.png', '/upload/customized/attached/image/2015/05/19/75d435c3-7c5d-437f-b7b0-03a0dc2ae0d5.jpg', 'M1UenUCzSwqGWHsKKwi4uw', '3');
INSERT INTO `moption` VALUES ('jEi6aFahQNyF5n-EkB5JzA', 'W148222', '寬口織花短襪', '120', '成分：80%棉 / 18%尼龍 / 2%彈性纖維&amp;nbsp;&lt;br /&gt;★ 襪尖指無痕織法，穿著舒適無壓迫&lt;br /&gt;★ 襪底止滑設計，安全不滑跤&lt;br /&gt;★ 台灣織造，品質保證&lt;br /&gt;★ 寬口襪口久穿不束腳，體貼寶貝肌膚&lt;br /&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/21/fc125ff1-ee31-4ace-91dd-7362bacf1404.png', null, 'jPsA8CUlSy6O7pWxfYR9MQ', '2');
INSERT INTO `moption` VALUES ('jHPwjc24TzuxOnaMr2AM8g', 'W141822', '指無痕 鞋型踝襪', '120', '成分：80%棉 / 17%尼龍 / 2%彈性纖維 / 1%橡膠&lt;br /&gt;★ 襪尖指無痕織法，穿著舒適無壓迫&lt;br /&gt;★ 可愛的鞋子造型短襪&lt;br /&gt;★ 豐富顏色可供選擇&lt;br /&gt;★ 襪底止滑設計，安全不滑跤&lt;br /&gt;★ 台灣織造，品質保證&lt;br /&gt;&lt;br /&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/21/eb883bbd-a82b-4081-bb1e-553633391240.png', null, 'IPxcWWjqS_Sc8l-c8m6vnA', '2');
INSERT INTO `moption` VALUES ('jj5HzORzQx2CflAzI3YTsg', null, '男素色長襪 灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/06559ff1-a24c-48dc-9ad2-6fca07c1f319.png', '/upload/customized/attached/image/2015/05/19/42d632ce-f82c-4f2b-9fe5-b8b3f696ef1e.png', '_33nZ8m3St-OFrkWdZnHkw', '3');
INSERT INTO `moption` VALUES ('JkQngridQ2qIBoMpa8MrnA', null, '女 點點長襪 灰', '0', '&lt;span&gt;★ 素色點點設計款&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 襪身柔軟舒適&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 100%台灣織造，品質保證&amp;nbsp;&lt;/span&gt;', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/b2b80b0a-877b-4570-8fbf-997e67c0a1b8.png', '/upload/customized/attached/image/2015/05/19/4100bb87-0196-49d5-a762-1e13e62fa7f8.png', 'v_JZIMkATiiSiBi9ZEnPUg', '3');
INSERT INTO `moption` VALUES ('JnCdgwDtQ46N3TdwKa4Pkw', null, '素色短襪藍綠', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/60e71d4e-a41f-4c80-ad9a-90c5d25140e3.png', '/upload/customized/attached/image/2015/05/19/6e6df90c-6838-4ac8-ad04-c67ece772af8.png', 'SV8fgFDVTJCCVGFx-pLK-A', '3');
INSERT INTO `moption` VALUES ('jPsA8CUlSy6O7pWxfYR9MQ', null, '短襪', '0', '', '0', 'disk', '101', '/upload/customized/attached/image/2015/05/19/022c27a3-31f9-4c7d-b866-6db83d767df7.png', null, 'q5yzicoeRDu1KQxOcUkCdw', '1');
INSERT INTO `moption` VALUES ('K0zfgmAnSt-O2kCXB8S_dg', '', '紅鼻馴鹿26', '80', '', '0', 'disk_multiple', '115', '/upload/customized/attached/image/2015/05/21/c917b032-6808-40ea-b9ba-55ba61c1af12.png', null, null, '4');
INSERT INTO `moption` VALUES ('kfqL3p1URyucPcbJL-snuA', '', '帆船17', '80', '', '0', 'disk_multiple', '109', '/upload/customized/attached/image/2015/05/18/2b88b59f-a0dc-474a-8167-e8ef1db51a6f.png', null, null, '4');
INSERT INTO `moption` VALUES ('Kh5nFjOURKWmcYqfBwp9BA', 'W141822-O', '童 鞋型踝襪 黃', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/da4a57f9-b760-4eb3-9340-4733b8d19a65.png', '/upload/customized/attached/image/2015/05/21/dc610d01-ff64-4b34-a561-68d995cd0db6.jpg', 'jHPwjc24TzuxOnaMr2AM8g', '3');
INSERT INTO `moption` VALUES ('KsvSHEQqQkOjXmd0khA4tA', '01', '飛機01', '80', '', '0', 'disk_multiple', '100', '/upload/customized/attached/image/2015/05/18/3768e8ee-46d8-4c1f-bcf8-f744adb16ece.png', null, null, '4');
INSERT INTO `moption` VALUES ('KWyWNF3RSm6DSm2Xai7DAw', null, '男素色短襪  白', '0', '', '0', 'color_swatch', '101', '/upload/customized/attached/image/2015/05/21/5fbf0740-8bcf-4730-a7b0-97acb2be8407.png', '/upload/customized/attached/image/2015/05/21/7e8b2cff-de42-4608-b4f6-5c9e5c6b8781.png', 'PWNt5pvEQ4WrENtwyYGekg', '3');
INSERT INTO `moption` VALUES ('kyo1x8YyQayNSCs79enjHw', null, '長襪', '0', '', '0', 'disk', '103', '/upload/customized/attached/image/2015/05/19/df185109-3ea2-4ca2-9f72-f480ca7df383.png', null, 'heR0bzv2ScGOpwgrP8S2Fw', '1');
INSERT INTO `moption` VALUES ('L6C7OT4JTaq_Qz01KXra2A', null, '素色短襪 黑', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/d1e2dcd2-ca86-421c-a7d1-0950bd23b895.png', '/upload/customized/attached/image/2015/05/27/442281e7-5438-4cd3-b978-7a1c4525810a.png', 'SHZfr_ulSqKkSrQxvZeH-Q', '3');
INSERT INTO `moption` VALUES ('lbeEfjF9SiuM0zAuXbkFfw', null, '素雅短襪 灰', '0', '', '0', 'color_swatch', '101', '/upload/customized/attached/image/2015/05/19/8ce0035e-a45e-4292-9dda-d77230425263.png', '/upload/customized/attached/image/2015/05/19/c84aa76b-f819-4e52-957e-bbaba3778a4b.png', '3sLa-DguQr6lJbRkBlXx8g', '3');
INSERT INTO `moption` VALUES ('ltdpg0tLQvWFhtKCmzZGJA', '', '大鯊魚12', '80', '', '0', 'disk_multiple', '105', '/upload/customized/attached/image/2015/05/18/adb5bdc9-f30d-4f74-9d0d-238cfa3ceb82.png', null, null, '4');
INSERT INTO `moption` VALUES ('LVzJ0NuXTQeLKnn8z8492Q', 'W1697-1618-C', '童 橫條紋 米白', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/c94030b1-5e93-4a56-9a63-0ca0baacdc26.png', '/upload/customized/attached/image/2015/05/19/e1a91f0b-a7bb-4906-b11a-db2b67f19087.jpg', 'M1UenUCzSwqGWHsKKwi4uw', '3');
INSERT INTO `moption` VALUES ('M1UenUCzSwqGWHsKKwi4uw', 'W1697-1618', '指無痕 繽紛條紋襪', '120', '&lt;p&gt;	成分：75%精梳棉 / 18% 尼龍 / 5%橡膠 / 2%彈性纖維&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 繽紛橫紋設計款，&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;襪身舒適，質感好搭&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	★ 指無痕設計，舒適不磨腳趾&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 100%台灣織造，品質保證&lt;/span&gt;&lt;/p&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/18/8790caa5-a846-47c5-8b34-5ca1694c754e.png', null, '5qQfhenlTMWGOuFrx3wcwQ', '2');
INSERT INTO `moption` VALUES ('M82wSjQwSpSXiHSQymEjdQ', null, '男素色長襪 黑', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/877f7de7-220f-4af0-99dc-75775a4bae10.png', '/upload/customized/attached/image/2015/05/19/b57357fd-1cb7-4fdd-86dd-486cf44da968.png', '_33nZ8m3St-OFrkWdZnHkw', '3');
INSERT INTO `moption` VALUES ('MFl0MMS7Q8eWsndfF45WsQ', '', '梅花鹿09', '80', '', '0', 'disk_multiple', '105', '/upload/customized/attached/image/2015/05/18/aa9a938a-0beb-44a3-a4b9-f6fb84dff3c1.png', null, null, '4');
INSERT INTO `moption` VALUES ('mfYEbsLkRWSF_b0R-dk-jw', null, '素色短襪淺灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/4296986c-4287-4aa1-b50d-2aef595deea7.png', '/upload/customized/attached/image/2015/05/19/ec8876bb-e37d-42b2-930b-027151ff9516.png', 'SV8fgFDVTJCCVGFx-pLK-A', '3');
INSERT INTO `moption` VALUES ('MGQx4YjYSniKLw5Ke2sXeg', null, '素雅短襪 藍綠', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/6bd96ae2-d85b-405a-9264-264b8f0d25b9.png', '/upload/customized/attached/image/2015/05/19/dd2867fd-d076-48d7-891b-7a9833bfe42c.png', '3sLa-DguQr6lJbRkBlXx8g', '3');
INSERT INTO `moption` VALUES ('Mk-k9saIQA2E8eR1X-mfYw', null, '格紋腳踝襪白藍', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/81847514-8e22-4059-9de2-3ca5df72f533.png', '/upload/customized/attached/image/2015/05/27/3ef77bee-d36e-44be-8b48-4862b044c5c7.png', '03JcisLIT-WRfZ58CGrlEQ', '3');
INSERT INTO `moption` VALUES ('mqRJbkwAQz6t3tHEKPbBgA', 'SX1683-2224-R', '女橫條紋 丈青紅', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/20/9b76dd38-8d81-4313-97d6-51f5205a71ae.png', '/upload/customized/attached/image/2015/05/20/1a9be1d9-7b0a-4e81-88b2-b0c4457d9387.png', 'cCRR-fOxSgiBTHf6h0nE0A', '3');
INSERT INTO `moption` VALUES ('MQwFSrCeR9O9QjZXCO0w0Q', '', '小鴨10', '80', '', '0', 'disk_multiple', '105', '/upload/customized/attached/image/2015/05/18/d5de4002-4130-4eab-aa54-7a06cde0cbf3.png', null, null, '4');
INSERT INTO `moption` VALUES ('mXs1SijOR_6Pn5FLT7WbRQ', '', '小雞15', '80', '', '0', 'disk_multiple', '106', '/upload/customized/attached/image/2015/05/18/39ba2412-ee85-4877-a8dd-bbd3768b3729.png', null, null, '4');
INSERT INTO `moption` VALUES ('nIjmbBERSHeEEvEmYz79kA', 'W141822-G', '童 鞋型踝襪 綠', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/ce6ffde0-81a1-4e2d-9ed4-def5c7b93cce.png', '/upload/customized/attached/image/2015/05/21/a76750b5-5be0-4963-a2cd-9981934c3d39.jpg', 'jHPwjc24TzuxOnaMr2AM8g', '3');
INSERT INTO `moption` VALUES ('NKZGsMRNQFScISVLqIzQJQ', 'W141822-B', '童 鞋型踝襪 黑', '0', '', '0', 'color_swatch', '101', '/upload/customized/attached/image/2015/05/21/e92e353c-8538-4807-bef7-e56db6fe073b.png', '/upload/customized/attached/image/2015/05/21/fbaa4878-9f1f-4518-b98c-ca7ed3c4319e.jpg', 'jHPwjc24TzuxOnaMr2AM8g', '3');
INSERT INTO `moption` VALUES ('No2E7-XOT4i-7qYNP9vBlQ', '', '基本包裝', '0', '', '0', 'disk_multiple', '100', '/upload/customized/attached/image/2015/06/01/ce2d119a-e7cf-4559-b929-547e34e773ba.jpg', null, null, '6');
INSERT INTO `moption` VALUES ('nuEBX7LvQzKg62ucYgXUSA', '', '刺蝟23', '80', '', '0', 'disk_multiple', '112', '/upload/customized/attached/image/2015/05/21/a6e40b71-a29b-4b4e-b51b-197fdb6ccf9d.png', null, null, '4');
INSERT INTO `moption` VALUES ('nYmYUy68Q2uLCNXBWKrI6w', 'W148222-B', '童 寬口織花短襪 黑', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/a1679bc1-5da9-43ad-824f-aad25a913329.png', '/upload/customized/attached/image/2015/05/21/1d83a19d-734e-4b01-9151-9be15d96ad67.jpg', 'jEi6aFahQNyF5n-EkB5JzA', '3');
INSERT INTO `moption` VALUES ('OGEm-V_GT6GL2Es9Vk485w', '02', '花朵02', '80', '', '0', 'disk_multiple', '100', '/upload/customized/attached/image/2015/05/18/3e8ddc5b-5548-47cf-aafe-aaa5debf9d86.png', null, null, '4');
INSERT INTO `moption` VALUES ('OixiawNmRVWN0I-m30_i-w', 'W163722', '密拷花邊短襪', '120', '&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;成分：82%棉 / 15%尼龍 / 3%其他纖維&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 襪口多層次花邊設計&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 可愛少女風，質感好搭&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 舒適襪身，台灣製造&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 指無痕技術，舒適不磨腳指&lt;br /&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:x-small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;/span&gt;&lt;/p&gt;', '0', 'database_table', '101', '/upload/customized/attached/image/2015/05/20/861d05db-4153-4edd-b50c-d7cb21b94122.png', null, 'PTYImjBFRriAEmr29JTIaw', '2');
INSERT INTO `moption` VALUES ('OkfqdM0WRGa68xLZHchNYA', null, '女襪', '0', '22~24cm', '0', 'disk_multiple', '101', '', null, null, '0');
INSERT INTO `moption` VALUES ('oK_-7pnISC2Utb8LQi09xQ', null, '男素色腳踝 白', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/20/9fd42966-a9f5-4dcd-9c8c-d370ad1ec428.png', '/upload/customized/attached/image/2015/05/19/61a740b6-fda4-4c93-97a6-f48372522490.png', '8Lw60MLLTNSXEo4-rflQRQ', '3');
INSERT INTO `moption` VALUES ('OQiBy6w6SrmB0gcF6Qs0qg', null, '美國風踝襪 白紅', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/b8823576-1aec-4f51-b055-734663d79431.png', '/upload/customized/attached/image/2015/05/21/46002381-15af-4fca-a50b-5091537b423c.png', 'HLTEk0_3Tli-dnyLWzw95A', '3');
INSERT INTO `moption` VALUES ('Ov8g4vZJQ6Wv6A1Q4h-Wow', null, '長襪', '0', '', '0', 'disk', '102', '/upload/customized/attached/image/2015/05/19/e1ea4942-b0cb-4c9c-be18-dff5e62b4510.png', null, 'OkfqdM0WRGa68xLZHchNYA', '1');
INSERT INTO `moption` VALUES ('p4Xn-8N9Sh-5QUVAb08YXw', null, '素雅短襪 黃', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/3603b01c-3c04-458c-9097-e33bbd66a857.png', '/upload/customized/attached/image/2015/05/19/ddb2c031-0abc-4ee9-a751-de1048a0c1cf.png', '3sLa-DguQr6lJbRkBlXx8g', '3');
INSERT INTO `moption` VALUES ('PAX6HsN1SrmX9f0JisRElw', '', '生日快樂', '20', '', '0', 'disk_multiple', '103', '/upload/customized/attached/image/2015/06/01/5aebebf6-43aa-428c-95b5-ef2515632ca8.jpg', null, null, '6');
INSERT INTO `moption` VALUES ('PjRU9KP3So6qpvf1I7yMdQ', null, '男橫條紋 灰藍綠', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/78a5dc80-4a52-43f6-b4de-6c93618af01d.png', '/upload/customized/attached/image/2015/05/21/465b8ce5-af6e-4fc4-ba5a-6075fa948746.png', 'AFG9qUDtQROcOFwpX5EEIg', '3');
INSERT INTO `moption` VALUES ('pTg88iDTSo6XaOpP-3Ehag', null, '素雅短襪 黑', '0', '', '0', 'color_swatch', '101', '/upload/customized/attached/image/2015/05/19/eb04c29f-40c2-41d3-b482-de6a01ff1a03.png', '/upload/customized/attached/image/2015/05/19/cefdb983-a324-4074-82d4-2695758effbf.png', '3sLa-DguQr6lJbRkBlXx8g', '3');
INSERT INTO `moption` VALUES ('PTYImjBFRriAEmr29JTIaw', null, '短襪', '0', '', '0', 'disk', '101', '/upload/customized/attached/image/2015/05/19/84a9013a-5b3b-4725-a91a-2b288f518a7e.png', null, 'OkfqdM0WRGa68xLZHchNYA', '1');
INSERT INTO `moption` VALUES ('PWNt5pvEQ4WrENtwyYGekg', 'S157292', '男素色短襪', '120', '&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;span&gt;成分：80%棉 / 15%聚脂纖維 /&amp;nbsp;&lt;/span&gt;&lt;span&gt;3%橡膠&lt;/span&gt;&lt;span&gt;&amp;nbsp;/ 2%彈性纖維&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★極簡素色，質感百搭&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span&gt;★100%台灣織造，品質保證&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/21/0219b011-28df-4358-84af-24753f8dd06d.png', null, '_iaHgtvzTZSARv-4TLAJsg', '2');
INSERT INTO `moption` VALUES ('q5yzicoeRDu1KQxOcUkCdw', null, '童襪 ', '0', '14~16cm, 16~18cm, 19~22cm', '0', 'disk_multiple', '100', '', null, null, '0');
INSERT INTO `moption` VALUES ('qDdOf9SvRLq0MAFZbFQoJw', '', '工程車20', '80', '', '0', 'disk_multiple', '110', '/upload/customized/attached/image/2015/05/21/01112e4c-768f-4357-a476-f6e55e1833b6.png', null, null, '4');
INSERT INTO `moption` VALUES ('QfDzHdbjTA6Bvxntd9zkxg', 'W163693', '國旗休閒襪', '120', '成分：74%棉 / 19%尼龍&lt;span&gt;&amp;nbsp;/ 6%橡膠&lt;/span&gt;&lt;span&gt;&amp;nbsp;/ 1&lt;/span&gt;%彈性纖維&lt;br /&gt;★ 國旗設計款，質感加分&lt;br /&gt;★ 指無痕設計，舒適不磨腳趾&lt;br /&gt;★ 台灣織造，品質保證&lt;br /&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/20/ef94f30a-5c5c-45f1-b0c4-c89bd798f436.png', null, 'kyo1x8YyQayNSCs79enjHw', '2');
INSERT INTO `moption` VALUES ('qRZccKo0TqONYJD7f189pw', null, '長襪', '0', '', '0', 'disk', '102', '/upload/customized/attached/image/2015/05/27/2346d61d-5d81-4aaf-b309-665f7d87c3c3.png', null, 'hSGUxXACSTevnr_cy90_LQ', '1');
INSERT INTO `moption` VALUES ('QZENfrwtQ7q9PfAI17mX2A', null, '女格紋踝襪 藍白', '0', '&lt;span&gt;★ 襪身柔軟舒適&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 隱形襪口設計，休閒搭配必備款&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 腳背透氣網格織法，加速排汗不悶熱&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 台灣織造，品質保證&lt;/span&gt;', '0', 'color_swatch', '101', '/upload/customized/attached/image/2015/05/21/28d40eba-cbf9-4238-80dd-0879ac4c7758.png', '/upload/customized/attached/image/2015/05/19/b1004804-723a-46dc-880a-709d16df598e.png', 'WRra3CYnQ6OtUUASzV25Qw', '3');
INSERT INTO `moption` VALUES ('r7eNoRxiQs-u8f1DBfEQrw', 'W1697-1618-E', '童 橫條紋 紫 ', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/d8bf8c55-08a4-4609-9199-58ec220aa173.png', '/upload/customized/attached/image/2015/05/19/ee872771-8e97-407f-a0f5-96c83de82208.jpg', 'M1UenUCzSwqGWHsKKwi4uw', '3');
INSERT INTO `moption` VALUES ('rH0hk0EtS2qmqM3eakDang', 'W148222-H', '童 寬口織花短襪 灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/6890bbb2-e577-478e-a7b5-f5c2f51d60e8.png', '/upload/customized/attached/image/2015/05/21/f848cdfe-1291-4550-89ed-de31730e2903.jpg', 'jEi6aFahQNyF5n-EkB5JzA', '3');
INSERT INTO `moption` VALUES ('RIG42XgDSSWTJfVd3T5yHg', 'SX1683-2224-G', '女橫條紋 灰藍綠', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/20/687243ca-5ddb-430c-8758-28828cfa746d.png', '/upload/customized/attached/image/2015/05/20/f1ec2c54-619b-41d4-9bec-102dd1cfa8f5.png', 'cCRR-fOxSgiBTHf6h0nE0A', '3');
INSERT INTO `moption` VALUES ('RLnW6aRLQzqZ5E-D9ViLGQ', 'W1668-1618-P', '童 點點襪 桃', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/05fad377-32d8-49d5-afc3-ca0392b5004f.png', '/upload/customized/attached/image/2015/05/19/19e1b8dc-744e-4d47-bf34-a8426b149e1d.jpg', 'Zfart9LTQ2Cu9dLKHXrkqQ', '3');
INSERT INTO `moption` VALUES ('rVYaLtzvRsy6g0uFeISOBA', '', '大象13', '80', '', '0', 'disk_multiple', '105', '/upload/customized/attached/image/2015/05/18/9033aae0-58d0-4e2d-8686-0d90653ea6d2.png', null, null, '4');
INSERT INTO `moption` VALUES ('s7NLdenaRGqobg3AwxQ-Fg', '', '山豬14', '80', '', '0', 'disk_multiple', '105', '/upload/customized/attached/image/2015/05/18/adbf8c28-2a34-43d4-bb2d-8b2d6f9fbd0e.png', null, null, '4');
INSERT INTO `moption` VALUES ('SdgNIaJCS-aFDJmyPjw3UA', 'W1668-1618-K', '童 點點襪 咖', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/5e82a97a-4f8a-4b5a-bb3d-cf9ce1b61ea9.png', '/upload/customized/attached/image/2015/05/19/29e28323-4842-490e-bf94-d4f87d831641.jpg', 'Zfart9LTQ2Cu9dLKHXrkqQ', '3');
INSERT INTO `moption` VALUES ('SHZfr_ulSqKkSrQxvZeH-Q', 'S161732', '青少年素色短襪', '120', '&lt;p&gt;	成分：82%棉 / 16%尼龍 / 2%其他纖維&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 素色百搭款&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 襪身柔軟舒適&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 100%台灣織造，品質保證&lt;/span&gt;&lt;/p&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/27/22683e76-7e15-4006-87e5-711a985a1a39.png', null, '8DYz5iB1SwGYNQB-nnQwLA', '2');
INSERT INTO `moption` VALUES ('SV8fgFDVTJCCVGFx-pLK-A', 'S161732', '素色休閒短襪', '120', '&lt;p&gt;	&lt;span&gt;成分：82%棉 / 16%尼龍 / 2%其他纖維&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span&gt;&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 素色百搭款&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 襪身柔軟舒適&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 100%台灣織造，品質保證&lt;/span&gt;&lt;/p&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/19/e724fc94-5ff4-4c25-818c-1520f6487cd9.png', null, 'PTYImjBFRriAEmr29JTIaw', '2');
INSERT INTO `moption` VALUES ('TJs4M_wdSLqdJ1U1fCJmMQ', null, '國旗休閒襪', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/20/e0576b2b-525b-4079-bfe7-158aad0746ff.png', '/upload/customized/attached/image/2015/05/20/31c501ef-2691-4443-b681-0c6498be2f7d.png', 'QfDzHdbjTA6Bvxntd9zkxg', '3');
INSERT INTO `moption` VALUES ('tSpNE34kSKChmCH4LUE_Vg', '', '我愛你', '20', '', '0', 'disk_multiple', '104', '/upload/customized/attached/image/2015/06/01/ddef8fb4-61c2-48c8-b64e-a71bd1843ffa.jpg', null, null, '6');
INSERT INTO `moption` VALUES ('TXGezNwpQUuo5ryIweRWxQ', '', '新幹線16', '80', '', '0', 'disk_multiple', '108', '/upload/customized/attached/image/2015/05/18/c79465f5-b660-44e9-8ee1-435747c26605.png', null, null, '4');
INSERT INTO `moption` VALUES ('TY9grbHXTxi83nRYlkNLJw', '', '小熊11', '80', '', '0', 'disk_multiple', '105', '/upload/customized/attached/image/2015/05/18/7df29d8e-4fb3-44e5-aafc-ecc967aeef68.png', null, null, '4');
INSERT INTO `moption` VALUES ('U57gI8gMR5-iyNS1Dvw1NQ', 'SX1684-2224-L', '美國風踝襪', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/20/f49c4296-28e1-4d28-acca-4e20448f0964.png', '/upload/customized/attached/image/2015/05/20/6349454c-f356-41c7-8f43-d365e4aa3568.png', '1tQbc-roRci2Ita8jRG_Uw', '3');
INSERT INTO `moption` VALUES ('U7FzQVMEQWSy9lBz7_Pmmw', null, '男素色短襪 深藍', '0', '', '0', 'color_swatch', '102', '/upload/customized/attached/image/2015/05/21/16e62c1f-b7f7-4362-ab69-c61a77b6a3a5.png', '/upload/customized/attached/image/2015/05/21/f43b018f-1098-4cda-8443-03cee4976c8d.png', 'PWNt5pvEQ4WrENtwyYGekg', '3');
INSERT INTO `moption` VALUES ('UHX-5o0oRumo7PA3uEohgg', '', '長頸鹿24', '80', '', '0', 'disk_multiple', '113', '/upload/customized/attached/image/2015/05/21/7f6eab28-26e4-44cb-9f43-fb3de864acbe.png', null, null, '4');
INSERT INTO `moption` VALUES ('v4bxEQCiT_OQHaOzlnugAw', null, '素色短襪 藍綠', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/a2c2d064-3292-487e-ac24-b810c7945e61.png', '/upload/customized/attached/image/2015/05/27/ec047e91-4634-4bfa-8622-20b66efd447c.png', 'SHZfr_ulSqKkSrQxvZeH-Q', '3');
INSERT INTO `moption` VALUES ('VCdJHtOvQqqYGBKO5ZBo0g', 'W148222-L', '童 寬口織花短襪 寶藍', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/3b997353-5ff8-4692-a536-0418397bb419.png', '/upload/customized/attached/image/2015/05/21/0857dfe0-7094-4ba1-9183-c7810db2bf75.jpg', 'jEi6aFahQNyF5n-EkB5JzA', '3');
INSERT INTO `moption` VALUES ('vQNkBoc6SxuZ6fLlhE-qUQ', 'W1697-1618-P', '童 橫條紋 粉 ', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/49feea7e-1239-40c8-ab05-e0c57d71ca2a.png', '/upload/customized/attached/image/2015/05/19/0fef67cb-b4ad-46ae-8ed7-25da1b864665.jpg', 'M1UenUCzSwqGWHsKKwi4uw', '3');
INSERT INTO `moption` VALUES ('VTFBz9zWQxmZE0_1EaL3bw', '03', '愛心03', '80', '', '0', 'disk_multiple', '100', '/upload/customized/attached/image/2015/05/18/c72f2b18-7859-4132-b52c-7932748db096.png', null, null, '4');
INSERT INTO `moption` VALUES ('v_57rcKyTiS5MfiyDdF2cg', 'W141822-R', '童 鞋型踝襪 紅', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/8e255b7d-6a47-47df-a8b1-12a4318aa14b.png', '/upload/customized/attached/image/2015/05/21/193eade4-ffe2-4f2d-878d-bc09d3f792cf.jpg', 'jHPwjc24TzuxOnaMr2AM8g', '3');
INSERT INTO `moption` VALUES ('v_JZIMkATiiSiBi9ZEnPUg', 'B161532', '點點少女長襪', '120', '&lt;p&gt;	成分：70%棉 / 22%聚脂纖維 / 4%尼龍&lt;span&gt;&amp;nbsp;/ 2%橡膠&lt;/span&gt;&lt;span&gt;&amp;nbsp;/ 2%彈性纖維&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 少女風點點設計款&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	★ 襪身柔軟舒適&lt;/p&gt;&lt;p&gt;	★ 100%台灣織造，品質保證&amp;nbsp;&lt;/p&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/18/b919c7e4-2d7e-4b72-996b-a8d823564775.png', null, 'Ov8g4vZJQ6Wv6A1Q4h-Wow', '2');
INSERT INTO `moption` VALUES ('w5o4BW0wTUaaz4FR6bMP_g', 'B305522', '素色腳踝襪', '120', '&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;span&gt;成分：80%棉 / 18%聚脂纖維 / 2%其他纖維&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 素色基本款，好穿百搭&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 平織襪身柔軟舒適&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 100%台灣織造，品質保證&lt;/span&gt;&lt;br /&gt;&lt;/span&gt;&lt;/p&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/19/1519d0b2-9592-4b46-bf85-27b8d88a9ad4.png', null, '0XxttZdgTFy0hZKGFsEi8w', '2');
INSERT INTO `moption` VALUES ('WAx3w_3yRlSHzo9CW6vO0w', '04', '我愛你04', '80', '', '0', 'disk_multiple', '100', '/upload/customized/attached/image/2015/05/18/2068e713-d1ea-458c-8752-40f49f20b636.png', null, null, '4');
INSERT INTO `moption` VALUES ('WRra3CYnQ6OtUUASzV25Qw', 'S167622', '格紋腳踝襪', '120', '&lt;span&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;成分：58%棉 / 30%尼龍 / 9%聚脂纖維 / 3%其他纖維&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;★ 襪身柔軟舒適&lt;br /&gt;★ 隱形襪口設計，休閒搭配必備款&lt;br /&gt;★ 腳背透氣網格織法，加速排汗不悶熱&lt;br /&gt;★ 台灣織造，品質保證&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;color:#666666;font-family:Verdana;font-size:small;line-height:normal;background-color:#FFFFFF;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;/span&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/18/ff51e4bd-fc43-41b1-8fd0-c06725c09c6b.png', null, '0XxttZdgTFy0hZKGFsEi8w', '2');
INSERT INTO `moption` VALUES ('x7QgPJRpQn2yK_3a0jDUfw', 'W1697-1618-O', '童 橫條紋 橘 ', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/abf32719-e88d-4392-9f81-19ba5d0aa32a.png', '/upload/customized/attached/image/2015/05/19/1d6c7d7f-9b53-4063-8b55-8a25bc56a963.jpg', 'M1UenUCzSwqGWHsKKwi4uw', '3');
INSERT INTO `moption` VALUES ('x8fz3V8HRjGWljFBdBlJYw', null, '女素色腳踝 深灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/f3759992-9a00-4a25-b78c-dbe59b7f4be1.png', '/upload/customized/attached/image/2015/05/19/350d2d4a-4a2c-40f2-b960-7e4464f8243f.png', 'w5o4BW0wTUaaz4FR6bMP_g', '3');
INSERT INTO `moption` VALUES ('XhVDNaKrS56GbNlwsrg8QA', null, '男素色長襪 深灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/19/2fbfd86a-0e30-43d2-836d-0f52b546a0cf.png', '/upload/customized/attached/image/2015/05/19/b251eb75-22e9-4f42-af2c-d16e7983dd6d.png', '_33nZ8m3St-OFrkWdZnHkw', '3');
INSERT INTO `moption` VALUES ('Y5vQbtdtQBidD753nv-cwQ', '', '生日快樂05', '80', '', '0', 'disk_multiple', '100', '/upload/customized/attached/image/2015/05/18/3d5463e9-ee54-450e-aa07-85d375f24d01.png', null, null, '4');
INSERT INTO `moption` VALUES ('YaLasNdqRKmTu7wfX7gYyA', '', '藍色點點', '20', '', '0', 'disk_multiple', '101', '/upload/customized/attached/image/2015/06/01/701babac-0980-4d3c-b1f4-6290a2941b0f.jpg', null, null, '6');
INSERT INTO `moption` VALUES ('YHHNKA_TT8KnJMLI9M2CmA', null, '女 素色長襪 淺灰', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/18/3b212953-1dd3-4e0b-8dae-cbdfeb0e5479.png', '/upload/customized/attached/image/2015/05/19/0e5ee256-a64f-4aad-a28a-f5b175479461.png', 'cBP1WI6dQMOqlLuvi9QWZw', '3');
INSERT INTO `moption` VALUES ('z1x7_tapTUuK_89uz2Lh6g', '', '薑餅人25', '80', '', '0', 'disk_multiple', '114', '/upload/customized/attached/image/2015/05/21/b38f9777-d8fe-40d1-a65b-a87015599047.png', null, null, '4');
INSERT INTO `moption` VALUES ('ZEsGvTdiSI6EC4yn2gWxDg', null, '素色短襪 藍', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/65bda037-0bb2-4942-a468-8ecedaabed0f.png', '/upload/customized/attached/image/2015/05/27/0c3042b5-8549-4c98-9031-b3f5098102a1.png', 'SHZfr_ulSqKkSrQxvZeH-Q', '3');
INSERT INTO `moption` VALUES ('Zfart9LTQ2Cu9dLKHXrkqQ', 'W1668-1618', '點點長襪', '120', '&lt;p&gt;	&lt;span&gt;成分：80%棉 / 16% 尼龍 / 2%橡膠 / 2%彈性纖維&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	★ 100% 台灣製造，質感舒適&lt;/p&gt;&lt;p&gt;	&lt;span style=&quot;line-height:1.5;&quot;&gt;★ 指無痕技術，不磨腳趾&lt;/span&gt;&lt;/p&gt;&lt;p&gt;	★ 點點設計，繽紛可愛&lt;/p&gt;&lt;p&gt;	★ 襪身柔軟舒適&lt;/p&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/18/909deb5c-17ab-417f-b5dd-b5972c294a59.png', null, '5qQfhenlTMWGOuFrx3wcwQ', '2');
INSERT INTO `moption` VALUES ('zhvL6T0BRqmssRPheRsO1Q', null, '格紋腳踝襪黃綠', '0', '', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/27/b5073359-cc15-4feb-86c5-5c86f49deded.png', '/upload/customized/attached/image/2015/05/27/a2f6dd1a-d90a-4f54-8b1d-c60a20b1c500.png', '03JcisLIT-WRfZ58CGrlEQ', '3');
INSERT INTO `moption` VALUES ('zIE8qo98R0CI1FKOlF93bA', '', '謝謝你08', '80', '', '0', 'disk_multiple', '104', '/upload/customized/attached/image/2015/05/18/24a7d81d-f35a-44cb-981c-765659e67c63.png', null, null, '4');
INSERT INTO `moption` VALUES ('ZjamncvqQ4aaE5JC2Ya4jQ', null, '女 點點長襪 深灰', '0', '&lt;span&gt;★ 素色點點設計款&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 襪身柔軟舒適&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 100%台灣織造，品質保證&amp;nbsp;&lt;/span&gt;', '0', 'color_swatch', '100', '/upload/customized/attached/image/2015/05/21/de73de10-6794-46e0-abb8-6b91ad2d9558.png', '/upload/customized/attached/image/2015/05/19/4e5993f6-4af1-4f20-8874-0e58818ab8da.png', 'v_JZIMkATiiSiBi9ZEnPUg', '3');
INSERT INTO `moption` VALUES ('ZPr-7Y2OT7uyPX-VBNb0bg', 'W141822-H', '童 鞋型踝襪 灰', '0', '', '0', 'color_swatch', '101', '/upload/customized/attached/image/2015/05/21/eac87775-92ec-4e83-bd3e-5ccb4e71144c.png', '/upload/customized/attached/image/2015/05/21/f51ce95b-7495-4e85-8f59-13037b7f95e6.jpg', 'jHPwjc24TzuxOnaMr2AM8g', '3');
INSERT INTO `moption` VALUES ('_33nZ8m3St-OFrkWdZnHkw', 'S096870', '素色長襪', '120', '&lt;span&gt;&lt;span&gt;成分：75%棉 / 21%聚脂纖維 /&amp;nbsp;&lt;/span&gt;&lt;span&gt;2%橡膠&lt;/span&gt;&lt;span&gt;&amp;nbsp;/ 2%彈性纖維&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;★極簡素色，質感百搭&lt;br /&gt;★100%台灣織造，品質保證&amp;nbsp;&lt;br /&gt;', '0', 'database_table', '100', '/upload/customized/attached/image/2015/05/19/2749446f-aa84-40e1-a8b5-6534ec804a0c.png', null, 'kyo1x8YyQayNSCs79enjHw', '2');
INSERT INTO `moption` VALUES ('_AOZsCxKSdeZw41tgZQ1uA', null, '女格紋踝襪 紅灰', '0', '&lt;span&gt;★ 襪身柔軟舒適&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 隱形襪口設計，休閒搭配必備款&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 腳背透氣網格織法，加速排汗不悶熱&lt;/span&gt;&lt;br /&gt;&lt;span&gt;★ 台灣織造，品質保證&lt;/span&gt;', '0', 'color_swatch', '103', '/upload/customized/attached/image/2015/05/21/53adeaf7-616d-4464-93b3-6a6172702a4e.png', '/upload/customized/attached/image/2015/05/19/c1be0e39-e57b-4a0d-afcd-9a5cfee4967e.png', 'WRra3CYnQ6OtUUASzV25Qw', '3');
INSERT INTO `moption` VALUES ('_iaHgtvzTZSARv-4TLAJsg', null, '短襪', '0', '', '0', 'disk', '101', '/upload/customized/attached/image/2015/05/19/e2ae61b1-1a0d-485e-a549-1c2ca6525a58.png', null, 'heR0bzv2ScGOpwgrP8S2Fw', '1');
INSERT INTO `moption` VALUES ('_RfpdRuRTgOCocn016jy-w', '', '黑色點點', '20', '', '0', 'disk_multiple', '102', '/upload/customized/attached/image/2015/06/01/c16e5e8a-f99e-46b6-94b1-921767036369.jpg', null, null, '6');

-- ----------------------------
-- Table structure for `moption_msize`
-- ----------------------------
DROP TABLE IF EXISTS `moption_msize`;
CREATE TABLE `moption_msize` (
  `MOPTION_ID` varchar(36) NOT NULL,
  `MSIZE_ID` varchar(36) NOT NULL,
  `QUANTITY` int(11) default '50',
  `VERSION` int(11) NOT NULL default '0',
  PRIMARY KEY  (`MOPTION_ID`,`MSIZE_ID`),
  KEY `FK_optionid_sizeid` (`MOPTION_ID`),
  KEY `FK_sizeid_optionid` (`MSIZE_ID`),
  CONSTRAINT `FK_optionid_sizeid` FOREIGN KEY (`MOPTION_ID`) REFERENCES `moption` (`ID`),
  CONSTRAINT `FK_sizeid_optionid` FOREIGN KEY (`MSIZE_ID`) REFERENCES `msize` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moption_msize
-- ----------------------------
INSERT INTO `moption_msize` VALUES ('-gLi8Vm5QxWMaTu4JQUFuQ', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('-gLi8Vm5QxWMaTu4JQUFuQ', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('-gLi8Vm5QxWMaTu4JQUFuQ', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('0iH8OvPFRRe6YhnWqARvEQ', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('1K1cvskOTJ6xpZa4Q21rhw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('23ejY3yxSqaxrRTL9Tu3ng', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('23ejY3yxSqaxrRTL9Tu3ng', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('24B2w7F4RPeFR_gaAHY2Dg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('3nnxUuckQrqWB8S1pJc9zA', 'F5LJ_UjmSkuUDJnW8g7qow', '53', '5');
INSERT INTO `moption_msize` VALUES ('6RcXz7uNRyCHkrUyQl_aEQ', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('7tTUEVGWR6GwbEZZh1yFmQ', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('8El-YGKFRrWamzRcKHb3NA', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('8_8XWmWUTbiYC7AP599mVg', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('8_8XWmWUTbiYC7AP599mVg', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('8_8XWmWUTbiYC7AP599mVg', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('9m4IV6quRoqb4Ei-gIqq4Q', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('A2cTRUk5S-iWjzSJX6VYTg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('a2Yj543wR4aTSzSgrMekpw', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('a2Yj543wR4aTSzSgrMekpw', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('AjCs4kusSOKg9A1oR-egfg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('au5vyDvBTaWwaYo0-ki3dw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('bFKCc66HS1ynAL-obhYOYQ', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('bFKCc66HS1ynAL-obhYOYQ', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('bFKCc66HS1ynAL-obhYOYQ', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('BoCJ-TLNT02s6TFFR7YVsA', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('BUGVWcOHR_mVXAkToNHMlA', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('BUGVWcOHR_mVXAkToNHMlA', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('BUGVWcOHR_mVXAkToNHMlA', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('B_c_aRwCQTKihxjM2YBvPQ', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('B_c_aRwCQTKihxjM2YBvPQ', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('cAG609-cRTWiCLHweYuqAQ', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('CAXXxiNoTAinbHLKMo6tyg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('dbbJSRwBSnym_n9mLH3mcQ', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('dbbJSRwBSnym_n9mLH3mcQ', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('dbbJSRwBSnym_n9mLH3mcQ', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('dEtdtmLMRiCogJnp-Im_fw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('diZS4OfTS3-eWauLo8xUGQ', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('dUJNtMLaQWONXJ0sABbFDg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('E0ZQXqEJRA6QDzFN-cyzLw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('EB-2YauCTOC2ZA8WlwpBbA', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('EeK1XjYOSRq4iI3U8IBwBQ', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('EeK1XjYOSRq4iI3U8IBwBQ', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('EeK1XjYOSRq4iI3U8IBwBQ', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('emD9d3orToiUR9iJRlvuvw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('FBTAzaCXSpePGp4efIV8cQ', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('FBTAzaCXSpePGp4efIV8cQ', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('FBTAzaCXSpePGp4efIV8cQ', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('FM60ZEOaRtCbcaFn80dPrg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('G61-fd5_R6uGVSy-Uc2zSg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('GIpeEa1FTsqgbmkw8E1l8w', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('GIpeEa1FTsqgbmkw8E1l8w', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('gNqEv4DzS8afxVjhHN_5GA', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('gtifmiXLQ3a-eOPNiQN4rA', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('gtifmiXLQ3a-eOPNiQN4rA', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('gtifmiXLQ3a-eOPNiQN4rA', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('Gu7LTjh0TVeuRRfnS9_mRw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('gzLT83AcS2maO0sMqVel0w', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('gzLT83AcS2maO0sMqVel0w', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('hEfo5tbvTKePSyy4ujWIvA', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('hEfo5tbvTKePSyy4ujWIvA', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('j3BVVTl-RtyGkuLus82YnQ', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('j3BVVTl-RtyGkuLus82YnQ', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('jE65VXxhR5S2bhJdMbVZ0g', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('JEhhKI0iQieeX_tA4AR9_Q', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('JEhhKI0iQieeX_tA4AR9_Q', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('JEhhKI0iQieeX_tA4AR9_Q', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('jj5HzORzQx2CflAzI3YTsg', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('jj5HzORzQx2CflAzI3YTsg', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('JkQngridQ2qIBoMpa8MrnA', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('JnCdgwDtQ46N3TdwKa4Pkw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('Kh5nFjOURKWmcYqfBwp9BA', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('Kh5nFjOURKWmcYqfBwp9BA', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('Kh5nFjOURKWmcYqfBwp9BA', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('KWyWNF3RSm6DSm2Xai7DAw', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('KWyWNF3RSm6DSm2Xai7DAw', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('L6C7OT4JTaq_Qz01KXra2A', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('lbeEfjF9SiuM0zAuXbkFfw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('LVzJ0NuXTQeLKnn8z8492Q', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('LVzJ0NuXTQeLKnn8z8492Q', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('LVzJ0NuXTQeLKnn8z8492Q', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('M82wSjQwSpSXiHSQymEjdQ', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('M82wSjQwSpSXiHSQymEjdQ', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('mfYEbsLkRWSF_b0R-dk-jw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('MGQx4YjYSniKLw5Ke2sXeg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('Mk-k9saIQA2E8eR1X-mfYw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('mqRJbkwAQz6t3tHEKPbBgA', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('nIjmbBERSHeEEvEmYz79kA', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('nIjmbBERSHeEEvEmYz79kA', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('nIjmbBERSHeEEvEmYz79kA', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('NKZGsMRNQFScISVLqIzQJQ', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('NKZGsMRNQFScISVLqIzQJQ', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('NKZGsMRNQFScISVLqIzQJQ', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('nYmYUy68Q2uLCNXBWKrI6w', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('nYmYUy68Q2uLCNXBWKrI6w', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('nYmYUy68Q2uLCNXBWKrI6w', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('oK_-7pnISC2Utb8LQi09xQ', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('oK_-7pnISC2Utb8LQi09xQ', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('OQiBy6w6SrmB0gcF6Qs0qg', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('OQiBy6w6SrmB0gcF6Qs0qg', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('p4Xn-8N9Sh-5QUVAb08YXw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('PjRU9KP3So6qpvf1I7yMdQ', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('PjRU9KP3So6qpvf1I7yMdQ', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('pTg88iDTSo6XaOpP-3Ehag', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('QZENfrwtQ7q9PfAI17mX2A', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('r7eNoRxiQs-u8f1DBfEQrw', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('r7eNoRxiQs-u8f1DBfEQrw', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('r7eNoRxiQs-u8f1DBfEQrw', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('rH0hk0EtS2qmqM3eakDang', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('rH0hk0EtS2qmqM3eakDang', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('rH0hk0EtS2qmqM3eakDang', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('RIG42XgDSSWTJfVd3T5yHg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('RLnW6aRLQzqZ5E-D9ViLGQ', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('RLnW6aRLQzqZ5E-D9ViLGQ', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('RLnW6aRLQzqZ5E-D9ViLGQ', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('SdgNIaJCS-aFDJmyPjw3UA', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('SdgNIaJCS-aFDJmyPjw3UA', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('SdgNIaJCS-aFDJmyPjw3UA', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('TJs4M_wdSLqdJ1U1fCJmMQ', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('TJs4M_wdSLqdJ1U1fCJmMQ', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('U57gI8gMR5-iyNS1Dvw1NQ', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('U7FzQVMEQWSy9lBz7_Pmmw', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('U7FzQVMEQWSy9lBz7_Pmmw', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('v4bxEQCiT_OQHaOzlnugAw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('VCdJHtOvQqqYGBKO5ZBo0g', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('VCdJHtOvQqqYGBKO5ZBo0g', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('VCdJHtOvQqqYGBKO5ZBo0g', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('vQNkBoc6SxuZ6fLlhE-qUQ', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('vQNkBoc6SxuZ6fLlhE-qUQ', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('vQNkBoc6SxuZ6fLlhE-qUQ', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('v_57rcKyTiS5MfiyDdF2cg', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('v_57rcKyTiS5MfiyDdF2cg', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('v_57rcKyTiS5MfiyDdF2cg', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('x7QgPJRpQn2yK_3a0jDUfw', 'jvGSVHjjStuh3GrBV7fuvA', '50', '0');
INSERT INTO `moption_msize` VALUES ('x7QgPJRpQn2yK_3a0jDUfw', 'mUWKB9giRg-ErQCDCvkjOQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('x7QgPJRpQn2yK_3a0jDUfw', 'TxEV2i9hQ2mzkvCkVp9nWA', '50', '0');
INSERT INTO `moption_msize` VALUES ('x8fz3V8HRjGWljFBdBlJYw', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('XhVDNaKrS56GbNlwsrg8QA', '1rTMuYvDTHyGd9XoaYfBYQ', '50', '0');
INSERT INTO `moption_msize` VALUES ('XhVDNaKrS56GbNlwsrg8QA', 'FpzV9WzmTA2HPSLNN9VzZw', '50', '0');
INSERT INTO `moption_msize` VALUES ('YHHNKA_TT8KnJMLI9M2CmA', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '0');
INSERT INTO `moption_msize` VALUES ('ZEsGvTdiSI6EC4yn2gWxDg', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '2');
INSERT INTO `moption_msize` VALUES ('zhvL6T0BRqmssRPheRsO1Q', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '2');
INSERT INTO `moption_msize` VALUES ('ZjamncvqQ4aaE5JC2Ya4jQ', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '2');
INSERT INTO `moption_msize` VALUES ('ZPr-7Y2OT7uyPX-VBNb0bg', 'jvGSVHjjStuh3GrBV7fuvA', '61', '13');
INSERT INTO `moption_msize` VALUES ('ZPr-7Y2OT7uyPX-VBNb0bg', 'mUWKB9giRg-ErQCDCvkjOQ', '70', '10');
INSERT INTO `moption_msize` VALUES ('ZPr-7Y2OT7uyPX-VBNb0bg', 'TxEV2i9hQ2mzkvCkVp9nWA', '67', '22');
INSERT INTO `moption_msize` VALUES ('_AOZsCxKSdeZw41tgZQ1uA', 'F5LJ_UjmSkuUDJnW8g7qow', '50', '2');

-- ----------------------------
-- Table structure for `moptiontype`
-- ----------------------------
DROP TABLE IF EXISTS `moptiontype`;
CREATE TABLE `moptiontype` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moptiontype
-- ----------------------------
INSERT INTO `moptiontype` VALUES ('0', '襪子分類');
INSERT INTO `moptiontype` VALUES ('1', '襪子款式');
INSERT INTO `moptiontype` VALUES ('2', '襪子花紋');
INSERT INTO `moptiontype` VALUES ('3', '襪子顏色');
INSERT INTO `moptiontype` VALUES ('4', '電繡分類');
INSERT INTO `moptiontype` VALUES ('5', '電繡顏色');
INSERT INTO `moptiontype` VALUES ('6', '包裝方式');

-- ----------------------------
-- Table structure for `morder`
-- ----------------------------
DROP TABLE IF EXISTS `morder`;
CREATE TABLE `morder` (
  `ID` varchar(36) NOT NULL,
  `CODE` varchar(11) default NULL,
  `TOTAL_AMOUNT` int(11) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CHECKOUT_DATE` datetime default NULL,
  `WORKING_DATE` datetime default NULL,
  `SHIP_DATE` datetime default NULL,
  `STATE` int(11) NOT NULL,
  `CHECKOUT_TYPE` int(11) default NULL,
  `MCUSTOMER_ID` varchar(36) default NULL,
  `MRECIPIENT_ID` varchar(36) NOT NULL,
  `TOTAL` int(11) default NULL,
  `REMARK` varchar(100) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_customerid` (`MCUSTOMER_ID`),
  KEY `fk_rcipientid` (`MRECIPIENT_ID`),
  CONSTRAINT `fk_customerid` FOREIGN KEY (`MCUSTOMER_ID`) REFERENCES `mcustomer` (`ID`),
  CONSTRAINT `fk_rcipientid` FOREIGN KEY (`MRECIPIENT_ID`) REFERENCES `mrecipient` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of morder
-- ----------------------------
INSERT INTO `morder` VALUES ('-MhYZHJvQtmrOUbY3U7Pig', '20150907001', '400', '2015-09-07 16:39:19', '2015-10-09 07:46:18', null, null, '1', '0', null, 'Qzlkk3lDQqqmnKU9tmoUlg', '300', '');
INSERT INTO `morder` VALUES ('dcVcdgI9RayO8zL4cGQYpw', '20150731001', '816', '2015-07-31 16:27:42', '2015-10-09 07:49:41', null, null, '1', '0', null, 'sGpFD4_DQUWci4mVp5j5ew', '716', '');
INSERT INTO `morder` VALUES ('k3mUCz5lStav3FlRCK6iOg', '20150730002', '2142', '2015-07-30 16:09:01', '2015-10-09 07:21:35', null, null, '0', '0', null, 'khlSQ9wjSQudQUogU1sTEQ', '2142', '  **※運費100元，滿千免運**');
INSERT INTO `morder` VALUES ('MbVSPZ54TCe7ozyfZX1EgQ', '20150730001', '352', '2015-07-30 16:07:33', '2015-10-09 07:50:57', null, null, '1', '0', null, 'XBADaDfyTLeIsYMmtya0ig', '252', '');
INSERT INTO `morder` VALUES ('p4ZQ1ReBSXSQzsiU22ZFqA', '20150731002', '240', '2015-07-31 16:49:44', '2015-10-09 07:48:52', '2015-07-31 18:34:17', '2015-07-31 18:34:22', '1', '0', null, 'lGxgEcgPSiC_vj2DkHH8IA', '140', '');
INSERT INTO `morder` VALUES ('qaMmWkbGQvW6J8dSvEal7Q', '20150731004', '240', '2015-07-31 16:50:46', '2015-10-09 07:47:40', '2015-07-31 16:56:48', '2015-07-31 16:57:50', '1', '0', null, 'm_ONGOXzR561v_TtSQhT6w', '140', '');
INSERT INTO `morder` VALUES ('xFsjJJNFRECiek-COjJFfw', '20150731003', '240', '2015-07-31 16:50:16', '2015-10-09 07:48:05', '2015-07-31 18:34:15', '2015-07-31 18:34:21', '1', '0', null, 'IuaMJ8pqS_iVu7YqF6hOJQ', '140', '');

-- ----------------------------
-- Table structure for `mrecipient`
-- ----------------------------
DROP TABLE IF EXISTS `mrecipient`;
CREATE TABLE `mrecipient` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `TEL` varchar(24) default NULL,
  `PHONE` varchar(24) NOT NULL,
  `POSTAL` varchar(15) NOT NULL,
  `CITY` varchar(15) NOT NULL,
  `TOWN` varchar(15) NOT NULL,
  `ADDR` varchar(25) NOT NULL,
  `EMAIL` varchar(64) default NULL,
  `INVOICE_TYPE` int(11) default NULL,
  `CO_TITLE` varchar(64) default NULL,
  `TAX_NO` varchar(15) default NULL,
  `REMARK` varchar(200) default NULL,
  `SHIP_TIME` varchar(64) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mrecipient
-- ----------------------------
INSERT INTO `mrecipient` VALUES ('IuaMJ8pqS_iVu7YqF6hOJQ', '444444', null, '0987654321', '300', '新竹市', '東區', '444444', '', '0', '', '', '', null);
INSERT INTO `mrecipient` VALUES ('khlSQ9wjSQudQUogU1sTEQ', '吳建龍', null, '0987654321', '207', '新北市', '萬里區', '222222', 'xx.321@hotmail.com', '0', '', '', '', null);
INSERT INTO `mrecipient` VALUES ('lGxgEcgPSiC_vj2DkHH8IA', '222222222222', null, '0987654321', '100', '台北市', '中正區', '2222222', '', '0', '', '', '', null);
INSERT INTO `mrecipient` VALUES ('m_ONGOXzR561v_TtSQhT6w', '77777', null, '0987654321', '260', '宜蘭縣', '宜蘭市', '4444444', '', '0', '', '', '', null);
INSERT INTO `mrecipient` VALUES ('Qzlkk3lDQqqmnKU9tmoUlg', 'ANDREW', null, '0911751970', '244', '新北市', '林口區', '林口區工九路3號', 'design@wufuyang.com', '0', '', '', '', null);
INSERT INTO `mrecipient` VALUES ('sGpFD4_DQUWci4mVp5j5ew', 'xxxxxx', null, '0938006312', '207', '新北市', '萬里區', '2222222', '', '0', '', '', '', null);
INSERT INTO `mrecipient` VALUES ('XBADaDfyTLeIsYMmtya0ig', '吳建龍', null, '0987654321', '207', '新北市', '萬里區', '111111', 'xx.321@hotmail.com', '0', '', '', '', null);

-- ----------------------------
-- Table structure for `msize`
-- ----------------------------
DROP TABLE IF EXISTS `msize`;
CREATE TABLE `msize` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `STATUS` int(11) default NULL,
  `SEQ` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msize
-- ----------------------------
INSERT INTO `msize` VALUES ('1rTMuYvDTHyGd9XoaYfBYQ', '28~30cm', '0', '16');
INSERT INTO `msize` VALUES ('F5LJ_UjmSkuUDJnW8g7qow', '22~24cm', '0', '9');
INSERT INTO `msize` VALUES ('FpzV9WzmTA2HPSLNN9VzZw', '25~27cm', '0', '15');
INSERT INTO `msize` VALUES ('jvGSVHjjStuh3GrBV7fuvA', '19~22cm', '0', '7');
INSERT INTO `msize` VALUES ('mUWKB9giRg-ErQCDCvkjOQ', '16~18cm', '0', '6');
INSERT INTO `msize` VALUES ('TxEV2i9hQ2mzkvCkVp9nWA', '14~16cm', '0', '5');

-- ----------------------------
-- Table structure for `tbug`
-- ----------------------------
DROP TABLE IF EXISTS `tbug`;
CREATE TABLE `tbug` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime default NULL,
  `MODIFYDATETIME` datetime default NULL,
  `NAME` varchar(100) default NULL,
  `NOTE` longtext,
  `BUGTYPE_ID` varchar(36) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_q8x2eyh7d65rv7vcd7iw2h8yf` (`BUGTYPE_ID`),
  CONSTRAINT `FK_q8x2eyh7d65rv7vcd7iw2h8yf` FOREIGN KEY (`BUGTYPE_ID`) REFERENCES `tbugtype` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbug
-- ----------------------------

-- ----------------------------
-- Table structure for `tbugtype`
-- ----------------------------
DROP TABLE IF EXISTS `tbugtype`;
CREATE TABLE `tbugtype` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbugtype
-- ----------------------------
INSERT INTO `tbugtype` VALUES ('0', '錯誤');
INSERT INTO `tbugtype` VALUES ('1', '功能');

-- ----------------------------
-- Table structure for `tresource`
-- ----------------------------
DROP TABLE IF EXISTS `tresource`;
CREATE TABLE `tresource` (
  `ID` varchar(36) NOT NULL,
  `ICON` varchar(100) default NULL,
  `NAME` varchar(100) NOT NULL,
  `REMARK` varchar(200) default NULL,
  `SEQ` int(11) default NULL,
  `URL` varchar(200) default NULL,
  `PID` varchar(36) default NULL,
  `TRESOURCETYPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_m0i6pj14hcg1mleojnl7igg6o` (`PID`),
  KEY `FK_6w0sgqbec1o81uqqjsmejg57p` (`TRESOURCETYPE_ID`),
  CONSTRAINT `FK_6w0sgqbec1o81uqqjsmejg57p` FOREIGN KEY (`TRESOURCETYPE_ID`) REFERENCES `tresourcetype` (`ID`),
  CONSTRAINT `FK_m0i6pj14hcg1mleojnl7igg6o` FOREIGN KEY (`PID`) REFERENCES `tresource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tresource
-- ----------------------------
INSERT INTO `tresource` VALUES ('08bdf4a7-dfaa-487a-85b9-5d3061c6acc9', 'wrench', '確認結帳', '', '101', '/orderController/checkoutOK', '9eacac7e-34f9-4764-805f-987401d2119a', '1');
INSERT INTO `tresource` VALUES ('092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', 'asterisk_orange', '銷售管理', '', '99', '', null, '0');
INSERT INTO `tresource` VALUES ('0b4724af-53c1-4277-bfc5-a07c61eb7813', 'status_online', '會員管理', '', '110', '/customerController/manager', null, '0');
INSERT INTO `tresource` VALUES ('0d1c485f-9203-43a4-8f53-efd770735b34', 'wrench', '電繡設定添加頁面', '', '100', '/embroideryController/addPage', '6ce6ec90-f1fc-477f-9cce-9941f93a9e45', '1');
INSERT INTO `tresource` VALUES ('133455d2-48da-4a49-a763-72900ce8b7af', 'wrench', '訂單網狀表格', '', '82', '/orderController/dataGrid', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', '1');
INSERT INTO `tresource` VALUES ('16ca5087-9309-4d02-9a69-7577a586a94c', 'wrench', '編輯尺寸', '', '115', '/sizeController/edit', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('1f72c08e-4d62-407b-a016-2c2eb8854037', 'wrench', '開放銷售', '', '97', '/optionController/onSale', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('27572ac3-d694-4115-915f-b7b10c4b40a8', 'wrench', '編輯選項', '', '95', '/optionController/edit', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('2f2f4b57-2464-4628-a7c5-27a59d02421e', 'xhtml', '郵件管理', '', '105', '', null, '0');
INSERT INTO `tresource` VALUES ('302aa946-2875-4e2d-b57f-bb8dd27b947a', 'box', '庫存管理', '', '140', '/stockController/manager', '3ae429b5-e8c9-43f7-843a-547644b25640', '0');
INSERT INTO `tresource` VALUES ('314887c1-bb39-45d8-b890-d165d00c7036', 'wrench', '確認加工', '', '101', '/orderController/workingOK', '4f82babe-6e19-40d1-a894-5d154c789ad8', '1');
INSERT INTO `tresource` VALUES ('315698a9-3682-476b-87ca-c4d5a8806bda', 'connect', '同品折扣', '', '100', '/discountController/managerLike', 'dd451984-2b3a-493f-8d43-aee4892e5498', '0');
INSERT INTO `tresource` VALUES ('3ae429b5-e8c9-43f7-843a-547644b25640', 'color_wheel', '商品管理', '', '100', '', null, '0');
INSERT INTO `tresource` VALUES ('3b2dd96d-6e9c-4f2d-97a0-eab42173fa6c', 'wrench', '作品參考編輯頁面', '', '110', '/discountController/editWorksPage', '3cda68ff-8568-4405-aebf-011819b34dda', '1');
INSERT INTO `tresource` VALUES ('3c2136f0-c5b5-43bd-91c3-fa9c8c804572', 'wrench', '訂單明細', '', '81', '/goodsController/dataGridByOrderId', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', '1');
INSERT INTO `tresource` VALUES ('3c6e3643-7ea9-443f-9682-0a31e8420120', 'wrench', '取得訂單', '', '86', '/orderController/getOrder', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', '1');
INSERT INTO `tresource` VALUES ('3cda68ff-8568-4405-aebf-011819b34dda', 'rss', '圖片置換', '', '104', '', null, '0');
INSERT INTO `tresource` VALUES ('3ec3687a-28b6-4be0-a805-de3ded744942', 'wrench', '添加選項', '', '93', '/optionController/add', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('3facbd45-bbca-4485-945c-b4ad0f008248', 'wrench', '襪子設定添加頁面', '', '101', '/socksController/addPage', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('3ff20750-31b2-4dc1-8edb-dc2e9a3cf7f5', 'wrench', '會員編輯頁面', '', '103', '/customerController/editPage', '0b4724af-53c1-4277-bfc5-a07c61eb7813', '1');
INSERT INTO `tresource` VALUES ('413677dd-4772-46fc-857e-0e7b300bd960', 'wrench', '尺寸設定表格', '', '111', '/sizeController/sizeCombogrid', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('428f76d3-fcf0-413d-a9bc-b17c57a8a402', 'wrench', '會員刪除功能', '', '105', '/customerController/delete', '0b4724af-53c1-4277-bfc5-a07c61eb7813', '1');
INSERT INTO `tresource` VALUES ('498b8052-1a0e-41cc-86a9-07fd16ad0fd2', 'wrench', '選項樹', '', '91', '/optionController/tree', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('49a3bb2e-278a-44f2-9ca9-217507bdfa34', 'wrench', '郵件帳號添加功能', '', '102', '/javaMailController/add', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7', '1');
INSERT INTO `tresource` VALUES ('4f1ddea2-90fe-41ea-b714-3227a466061f', 'arrow_green', '包裝設定', '', '130', '/packingController/manager', '3ae429b5-e8c9-43f7-843a-547644b25640', '0');
INSERT INTO `tresource` VALUES ('4f2b29b3-8d6c-4d8c-bc3b-0ee1aec18b92', 'wrench', '會員批量刪除', '', '106', '/customerController/batchDelete', '0b4724af-53c1-4277-bfc5-a07c61eb7813', '1');
INSERT INTO `tresource` VALUES ('4f82babe-6e19-40d1-a894-5d154c789ad8', 'wrench_orange', '加工櫃台', '', '101', '/orderController/working', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', '0');
INSERT INTO `tresource` VALUES ('539a3290-fb5e-45b4-9878-6d784811917d', 'wrench', '庫存數據表格', '', '100', '/stockController/dataGrid', '302aa946-2875-4e2d-b57f-bb8dd27b947a', '1');
INSERT INTO `tresource` VALUES ('53a0c62f-4f09-4280-bbc6-51b86707efbf', 'wrench', '選項樹列表', '', '90', '/optionController/treeGrid', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('53dbcd57-fd09-4f90-b164-4722e79bd441', 'palette', '作品參考', '', '100', '/discountController/managerWorks', '3cda68ff-8568-4405-aebf-011819b34dda', '0');
INSERT INTO `tresource` VALUES ('5408ddc5-3e6d-4ac0-8678-ba408148734e', 'wrench', '庫存管理編輯功能', '', '102', '/stockController/edit', '302aa946-2875-4e2d-b57f-bb8dd27b947a', '1');
INSERT INTO `tresource` VALUES ('572c2054-7052-472b-88ae-c6830587e89e', 'wrench', '添加尺寸頁面', '', '112', '/sizeController/addPage', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('5edfbbc5-e68e-4ed8-8efe-311052fef996', 'eye', '尺寸設定', '', '110', '', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('5f6efe5c-b3ff-4266-af5b-9f3efd4741ce', 'xhtml', '單據管理', '', '103', '/orderController/manager', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', '0');
INSERT INTO `tresource` VALUES ('6440504c-3f82-4fff-9e2c-84322a9cefa5', 'wrench', '郵件帳號表格', '', '100', '/javaMailController/dataGrid', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7', '1');
INSERT INTO `tresource` VALUES ('6a626bed-5b96-4d32-96d9-efa7d7168b79', 'wrench', '包裝設定添加頁面', '', '100', '/packingController/addPage', '4f1ddea2-90fe-41ea-b714-3227a466061f', '1');
INSERT INTO `tresource` VALUES ('6ce6ec90-f1fc-477f-9cce-9941f93a9e45', 'folder_wrench', '電繡管理', '', '120', '/embroideryController/manager', '3ae429b5-e8c9-43f7-843a-547644b25640', '0');
INSERT INTO `tresource` VALUES ('702460d3-9b0e-4518-aa6d-186d4e255507', 'wrench', '結帳數據表格', '', '100', '/orderController/checkoutDataGrid', '9eacac7e-34f9-4764-805f-987401d2119a', '1');
INSERT INTO `tresource` VALUES ('70af4832-f73b-4f5f-b346-e5a63a93bb06', 'building_go', '匯出庫存表', '', '105', '/stockController/exportExcel', '302aa946-2875-4e2d-b57f-bb8dd27b947a', '1');
INSERT INTO `tresource` VALUES ('7304cfee-bc56-4197-8c88-b3b4bf28f690', 'wrench', '會員添加頁面', '', '101', '/customerController/addPage', '0b4724af-53c1-4277-bfc5-a07c61eb7813', '1');
INSERT INTO `tresource` VALUES ('75c57d93-2f31-4ef3-a751-b499b4c4ac89', 'wrench', '商品網狀表格', '', '80', '/goodsController/dataGrid', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', '1');
INSERT INTO `tresource` VALUES ('7d71aa67-a221-4f75-ac29-f4b38b21f632', 'wrench', '包裝設定添加功能', '', '101', '/packingController/add', '4f1ddea2-90fe-41ea-b714-3227a466061f', '1');
INSERT INTO `tresource` VALUES ('7df4363a-991c-4f0f-806b-2912e9be4497', 'find', '滿額折扣', '', '101', '/discountController/managerFull', 'dd451984-2b3a-493f-8d43-aee4892e5498', '0');
INSERT INTO `tresource` VALUES ('8051d05b-06e9-4c87-a48d-0f326092abaa', 'palette', '問與答', '', '101', '/discountController/managerQA', '3cda68ff-8568-4405-aebf-011819b34dda', '0');
INSERT INTO `tresource` VALUES ('812a750e-0b4d-4b65-9cff-7e2ffa3f5594', 'wrench', '停止銷售', '', '98', '/optionController/offSale', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('889b4c63-1825-4615-8d70-00a9aa97e6fe', 'wrench', '訂單作廢', '', '85', '/orderController/invalid', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', '1');
INSERT INTO `tresource` VALUES ('89436d2c-3174-4833-bc76-df2216d36100', 'folder_wrench', '襪子管理', '', '110', '/socksController/manager', '3ae429b5-e8c9-43f7-843a-547644b25640', '0');
INSERT INTO `tresource` VALUES ('8a2a2168-c8a9-4570-9020-8607ff89dfb5', 'wrench', '編輯選項頁面', '', '94', '/optionController/editPage', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('8ae4181f-4460-471d-93d7-54fe8e38be2b', 'wrench', '郵件帳號編輯功能', '', '104', '/javaMailController/edit', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7', '1');
INSERT INTO `tresource` VALUES ('8d5b3e07-a0b3-4c6e-b228-45c030c96b7f', 'wrench', '尺寸對照表編輯頁面', '', '112', '/discountController/editSizePage', '3cda68ff-8568-4405-aebf-011819b34dda', '1');
INSERT INTO `tresource` VALUES ('954d903d-e5cb-46ea-9021-7ee67f5ae2d9', 'wrench', '會員網狀表格', '', '100', '/customerController/dataGrid', '0b4724af-53c1-4277-bfc5-a07c61eb7813', '1');
INSERT INTO `tresource` VALUES ('99fac964-b02a-4fd4-9092-92a95d734149', 'wrench', '襪子設定編輯頁面', '', '103', '/socksController/editPage', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('9a6c744b-a71d-46e8-acce-8490a91246b2', 'wrench_orange', '出貨櫃台', '', '102', '/orderController/ship', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', '0');
INSERT INTO `tresource` VALUES ('9aa9bed0-5082-44e3-994c-728c0e562ae7', 'wrench', '會員修改密碼頁面', '', '107', '/customerController/editPwdPage', '0b4724af-53c1-4277-bfc5-a07c61eb7813', '1');
INSERT INTO `tresource` VALUES ('9b20658e-7440-4ede-9eaf-cc7b91b1bb31', 'wrench', '電繡設定編輯頁面', '', '102', '/embroideryController/editPage', '6ce6ec90-f1fc-477f-9cce-9941f93a9e45', '1');
INSERT INTO `tresource` VALUES ('9cc56efc-6fa7-4922-baa6-ed07d662a7e0', 'wrench', '電繡設定添加功能', '', '101', '/embroideryController/add', '6ce6ec90-f1fc-477f-9cce-9941f93a9e45', '1');
INSERT INTO `tresource` VALUES ('9de70f6a-4f5e-403e-a120-1d6c3cdeec96', 'wrench', '包裝設定編輯頁面', '', '102', '/packingController/editPage', '4f1ddea2-90fe-41ea-b714-3227a466061f', '1');
INSERT INTO `tresource` VALUES ('9e0bdc41-77da-40be-babc-ac54a2fd59a0', 'wrench', '出貨數據表格', '', '100', '/orderController/shipDataGrid', '9a6c744b-a71d-46e8-acce-8490a91246b2', '1');
INSERT INTO `tresource` VALUES ('9eacac7e-34f9-4764-805f-987401d2119a', 'wrench_orange', '結帳櫃台', '', '100', '/orderController/checkout', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3', '0');
INSERT INTO `tresource` VALUES ('9ed22038-ad44-4169-94f9-a3ad772b09dd', 'wrench', '電繡範例編輯頁面', '', '113', '/discountController/editEmbroideryPage', '3cda68ff-8568-4405-aebf-011819b34dda', '1');
INSERT INTO `tresource` VALUES ('9f55549a-d499-456f-9843-3630d81a9df4', 'wrench', '電繡設定編輯功能', '', '103', '/embroideryController/edit', '6ce6ec90-f1fc-477f-9cce-9941f93a9e45', '1');
INSERT INTO `tresource` VALUES ('a2ec8f7a-1dcd-402d-85c0-2c444c4e55f0', 'palette', '尺寸對照表', '', '102', '/discountController/managerSize', '3cda68ff-8568-4405-aebf-011819b34dda', '0');
INSERT INTO `tresource` VALUES ('a8d2e8c4-4ae5-4cbb-bd56-a89464cfeeda', 'font_go', '運費折扣', '', '102', '/discountController/managerShipment', 'dd451984-2b3a-493f-8d43-aee4892e5498', '0');
INSERT INTO `tresource` VALUES ('a9e67e16-d2b3-4de8-a522-1c0c58dea6aa', 'wrench_orange', '折扣編輯功能', '', '113', '/discountController/edit', 'dd451984-2b3a-493f-8d43-aee4892e5498', '1');
INSERT INTO `tresource` VALUES ('ac05a89c-37a3-4e5e-80dd-66871fe35737', 'wrench', '滿額折扣編輯頁面', '', '111', '/discountController/editFullPage', 'dd451984-2b3a-493f-8d43-aee4892e5498', '1');
INSERT INTO `tresource` VALUES ('b368f9ed-00f2-4d86-8028-81a6c567a18b', 'palette', '電繡範例', '', '103', '/discountController/managerEmbroidery', '3cda68ff-8568-4405-aebf-011819b34dda', '0');
INSERT INTO `tresource` VALUES ('b55b5d28-79c9-4a96-8110-9f4576cfe25e', 'wrench', '確認出貨', '', '101', '/orderController/shipOK', '9a6c744b-a71d-46e8-acce-8490a91246b2', '1');
INSERT INTO `tresource` VALUES ('bba886f3-eb85-4ba2-9945-6b8d7c43970f', 'wrench', '添加選項頁面', '', '92', '/optionController/addPage', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('bf742654-f8b2-4b4e-b32d-24020726fb14', 'wrench', '運費折扣編輯頁面', '', '112', '/discountController/editShipmentPage', 'dd451984-2b3a-493f-8d43-aee4892e5498', '1');
INSERT INTO `tresource` VALUES ('buggl', 'bug', 'BUG管理', null, '4', '/bugController/manager', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('bugglAdd', 'bug_add', '添加BUG', null, '3', '/bugController/add', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglAddPage', 'bug_add', '添加BUG頁面', null, '2', '/bugController/addPage', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglDateGrid', 'bug_link', 'BUG表格', null, '1', '/bugController/dataGrid', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglDelete', 'bug_delete', '刪除BUG', null, '6', '/bugController/delete', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglEdit', 'bug_edit', '编輯BUG', null, '5', '/bugController/edit', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglEditPage', 'bug_edit', '编輯BUG頁面', null, '4', '/bugController/editPage', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglView', 'bug_link', '查看BUG', null, '7', '/bugController/view', 'buggl', '1');
INSERT INTO `tresource` VALUES ('c06f5ffd-5ac0-42e2-8229-697380c4baa7', 'wrench', '選項網狀表格', '', '89', '/optionController/dataGrid', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('c1a878d9-6427-407f-b005-e0fda1ee8ea4', 'wrench', '會員編輯功能', '', '104', '/customerController/edit', '0b4724af-53c1-4277-bfc5-a07c61eb7813', '1');
INSERT INTO `tresource` VALUES ('c6351df1-d93b-4207-af57-c528e049cc40', 'wrench', '郵件帳號編輯頁面', '', '103', '/javaMailController/editPage', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7', '1');
INSERT INTO `tresource` VALUES ('c65af62c-a937-4c11-9425-202078861599', 'wrench', '同品折扣編輯頁面', '', '110', '/discountController/editLikePage', 'dd451984-2b3a-493f-8d43-aee4892e5498', '1');
INSERT INTO `tresource` VALUES ('c70ac4e7-8763-4a76-b7b7-33dd5b19de01', 'wrench', '問與答編輯頁面', '', '111', '/discountController/editQAPage', '3cda68ff-8568-4405-aebf-011819b34dda', '1');
INSERT INTO `tresource` VALUES ('cb6e6671-b831-4dea-bb47-2afdaac7ae7b', 'wrench', '襪子設定添加功能', '', '102', '/socksController/add', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('cc4d079e-2194-4c13-a21b-c1638617f6c6', 'wrench', '添加尺寸', '', '113', '/sizeController/add', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('cdfcdcdb-0c28-450c-b1f7-3c7b3689d423', 'wrench', '刪除選項', '', '96', '/optionController/delete', '3ae429b5-e8c9-43f7-843a-547644b25640', '1');
INSERT INTO `tresource` VALUES ('chart', 'chart_bar', '圖表管理', null, '7', null, null, '0');
INSERT INTO `tresource` VALUES ('da1d5f9b-4ce2-4110-a3fd-3ba4f507054b', 'wrench', '加工數據表格', '', '100', '/orderController/workingDataGrid', '4f82babe-6e19-40d1-a894-5d154c789ad8', '1');
INSERT INTO `tresource` VALUES ('dd451984-2b3a-493f-8d43-aee4892e5498', 'coins', '折扣設定', '', '102', '', null, '0');
INSERT INTO `tresource` VALUES ('e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7', 'book', '帳號設定', '', '100', '/javaMailController/manager', '2f2f4b57-2464-4628-a7c5-27a59d02421e', '0');
INSERT INTO `tresource` VALUES ('e549bf8f-189e-45fe-adb8-d9c3407e5ef0', 'wrench', '會員修改密碼功能', '', '108', '/customerController/editPwd', '0b4724af-53c1-4277-bfc5-a07c61eb7813', '1');
INSERT INTO `tresource` VALUES ('f29175dc-e41d-4bc9-b8c9-3a5f23fc7cda', 'wrench', '襪子設定編輯功能', '', '104', '/socksController/edit', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('f5f604fb-a19a-4a26-bc86-b285813d6885', 'wrench', '包裝設定編輯功能', '', '103', '/packingController/edit', '4f1ddea2-90fe-41ea-b714-3227a466061f', '1');
INSERT INTO `tresource` VALUES ('f7982864-7bf7-40e9-a5ea-27d079c31ce1', 'wrench', '編輯尺寸頁面', '', '114', '/sizeController/editPage', '89436d2c-3174-4833-bc76-df2216d36100', '1');
INSERT INTO `tresource` VALUES ('f7cf8958-7366-4e1e-89a1-27a544b084a4', 'wrench', '單據管理數據表格', '', '100', '/orderController/managerDataGrid', '5f6efe5c-b3ff-4266-af5b-9f3efd4741ce', '1');
INSERT INTO `tresource` VALUES ('fa07add7-6d47-48be-a99b-6f917238804c', 'wrench', '郵件帳號添加頁面', '', '101', '/javaMailController/addPage', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7', '1');
INSERT INTO `tresource` VALUES ('fd56e341-7e4a-4b4d-9e71-5be2d05b4e81', 'wrench', '庫存管理編輯頁面', '', '101', '/stockController/editPage', '302aa946-2875-4e2d-b57f-bb8dd27b947a', '1');
INSERT INTO `tresource` VALUES ('ff997aad-23e9-4cae-ab30-727e2f9c5796', 'wrench', '會員添加功能', '', '102', '/customerController/add', '0b4724af-53c1-4277-bfc5-a07c61eb7813', '1');
INSERT INTO `tresource` VALUES ('jeasyuiApi', 'book', 'EasyUI API', null, '1000', 'http://jeasyui.com/documentation', null, '0');
INSERT INTO `tresource` VALUES ('jsgl', 'tux', '角色管理', null, '2', '/roleController/manager', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('jsglAdd', 'wrench', '添加角色', null, '3', '/roleController/add', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglAddPage', 'wrench', '添加角色頁面', null, '2', '/roleController/addPage', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglDelete', 'wrench', '刪除角色', null, '6', '/roleController/delete', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglEdit', 'wrench', '编輯角色', null, '5', '/roleController/edit', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglEditPage', 'wrench', '编輯角色頁面', null, '4', '/roleController/editPage', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglGrant', 'wrench', '角色授權', null, '8', '/roleController/grant', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglGrantPage', 'wrench', '角色授權頁面', null, '7', '/roleController/grantPage', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglTreeGrid', 'wrench', '角色表格', null, '1', '/roleController/treeGrid', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('sjygl', 'server_database', '數據源管理', null, '5', '/druidController/druid', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('userCreateDatetimeChart', 'chart_curve', '用戶圖表', null, '1', '/chartController/userCreateDatetimeChart', 'chart', '0');
INSERT INTO `tresource` VALUES ('wjgl', 'server_database', '文件管理', null, '6', '', 'xtgl', '1');
INSERT INTO `tresource` VALUES ('wjglUpload', 'server_database', '上傳文件', null, '2', '/fileController/upload', 'wjgl', '1');
INSERT INTO `tresource` VALUES ('wjglView', 'server_database', '瀏覽服務器文件', null, '1', '/fileController/fileManage', 'wjgl', '1');
INSERT INTO `tresource` VALUES ('xtgl', 'plugin', '系统管理', null, '0', null, null, '0');
INSERT INTO `tresource` VALUES ('yhgl', 'status_online', '用戶管理', null, '3', '/userController/manager', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('yhglAdd', 'wrench', '添加用戶', null, '3', '/userController/add', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglAddPage', 'wrench', '添加用戶页面', null, '2', '/userController/addPage', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglBatchDelete', 'wrench', '批量刪除用戶', null, '7', '/userController/batchDelete', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglDateGrid', 'wrench', '用戶表格', null, '1', '/userController/dataGrid', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglDelete', 'wrench', '刪除用戶', null, '6', '/userController/delete', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglEdit', 'wrench', '编輯用戶', null, '5', '/userController/edit', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglEditPage', 'wrench', '编輯用戶頁面', null, '4', '/userController/editPage', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglEditPwd', 'wrench', '用戶修改密碼', null, '11', '/userController/editPwd', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglEditPwdPage', 'wrench', '用戶修改密碼頁面', null, '10', '/userController/editPwdPage', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglGrant', 'wrench', '用戶授權', null, '9', '/userController/grant', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglGrantPage', 'wrench', '用戶授權頁面', null, '8', '/userController/grantPage', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('zygl', 'database_gear', '資源管理', '管理系统中所有的選單或功能', '1', '/resourceController/manager', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('zyglAdd', 'wrench', '添加資源', null, '4', '/resourceController/add', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglAddPage', 'wrench', '添加資源頁面', null, '3', '/resourceController/addPage', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglDelete', 'wrench', '刪除資源', null, '7', '/resourceController/delete', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglEdit', 'wrench', '編輯資源', null, '6', '/resourceController/edit', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglEditPage', 'wrench', '編輯資源頁面', null, '5', '/resourceController/editPage', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglMenu', 'wrench', '功能選單', null, '2', '/resourceController/tree', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglTreeGrid', 'wrench', '資源表格', '顯示資源列表', '1', '/resourceController/treeGrid', 'zygl', '1');

-- ----------------------------
-- Table structure for `tresourcetype`
-- ----------------------------
DROP TABLE IF EXISTS `tresourcetype`;
CREATE TABLE `tresourcetype` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tresourcetype
-- ----------------------------
INSERT INTO `tresourcetype` VALUES ('0', '選單');
INSERT INTO `tresourcetype` VALUES ('1', '功能');

-- ----------------------------
-- Table structure for `trole`
-- ----------------------------
DROP TABLE IF EXISTS `trole`;
CREATE TABLE `trole` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `REMARK` varchar(200) default NULL,
  `SEQ` int(11) default NULL,
  `PID` varchar(36) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_3qq9eyhwbhblv83lt270gxbik` (`PID`),
  CONSTRAINT `FK_3qq9eyhwbhblv83lt270gxbik` FOREIGN KEY (`PID`) REFERENCES `trole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trole
-- ----------------------------
INSERT INTO `trole` VALUES ('0', '超級管理員', '超级管理员角色，拥有系统中所有的资源访问权限', '0', null);
INSERT INTO `trole` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '商品管理員', '', '105', 'd2193bad-8c18-48bd-b251-f8279edab5a3');
INSERT INTO `trole` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', '加工人員', '', '99', 'd2193bad-8c18-48bd-b251-f8279edab5a3');
INSERT INTO `trole` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '結帳人員', '', '98', 'd2193bad-8c18-48bd-b251-f8279edab5a3');
INSERT INTO `trole` VALUES ('bugAdmin', 'BUG管理員', null, '5', '0');
INSERT INTO `trole` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '吳福洋管理員', '', '98', '0');
INSERT INTO `trole` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', '出貨人員', '', '100', 'd2193bad-8c18-48bd-b251-f8279edab5a3');
INSERT INTO `trole` VALUES ('guest', '館內操作頁面', '只擁有看的權限', '1', null);
INSERT INTO `trole` VALUES ('jsAdmin', '角色管理員', null, '2', '0');
INSERT INTO `trole` VALUES ('sjyAdmin', '數據源管理員', null, '4', '0');
INSERT INTO `trole` VALUES ('yhAdmin', '用戶管理員', null, '3', '0');
INSERT INTO `trole` VALUES ('zyAdmin', '資源管理員', null, '1', '0');

-- ----------------------------
-- Table structure for `trole_tresource`
-- ----------------------------
DROP TABLE IF EXISTS `trole_tresource`;
CREATE TABLE `trole_tresource` (
  `TROLE_ID` varchar(36) NOT NULL,
  `TRESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY  (`TRESOURCE_ID`,`TROLE_ID`),
  KEY `FK_18oms8g4ib4h67dqx0f3fwaed` (`TRESOURCE_ID`),
  KEY `FK_aunc1ssqh18meky8cxl48i4m9` (`TROLE_ID`),
  CONSTRAINT `FK_18oms8g4ib4h67dqx0f3fwaed` FOREIGN KEY (`TRESOURCE_ID`) REFERENCES `tresource` (`ID`),
  CONSTRAINT `FK_aunc1ssqh18meky8cxl48i4m9` FOREIGN KEY (`TROLE_ID`) REFERENCES `trole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trole_tresource
-- ----------------------------
INSERT INTO `trole_tresource` VALUES ('0', '08bdf4a7-dfaa-487a-85b9-5d3061c6acc9');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '08bdf4a7-dfaa-487a-85b9-5d3061c6acc9');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '08bdf4a7-dfaa-487a-85b9-5d3061c6acc9');
INSERT INTO `trole_tresource` VALUES ('0', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3');
INSERT INTO `trole_tresource` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3');
INSERT INTO `trole_tresource` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', '092b5d42-83b6-4d66-be4d-bc7f72ca2ad3');
INSERT INTO `trole_tresource` VALUES ('0', '0b4724af-53c1-4277-bfc5-a07c61eb7813');
INSERT INTO `trole_tresource` VALUES ('0', '0d1c485f-9203-43a4-8f53-efd770735b34');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '0d1c485f-9203-43a4-8f53-efd770735b34');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '0d1c485f-9203-43a4-8f53-efd770735b34');
INSERT INTO `trole_tresource` VALUES ('0', '133455d2-48da-4a49-a763-72900ce8b7af');
INSERT INTO `trole_tresource` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', '133455d2-48da-4a49-a763-72900ce8b7af');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '133455d2-48da-4a49-a763-72900ce8b7af');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '133455d2-48da-4a49-a763-72900ce8b7af');
INSERT INTO `trole_tresource` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', '133455d2-48da-4a49-a763-72900ce8b7af');
INSERT INTO `trole_tresource` VALUES ('0', '16ca5087-9309-4d02-9a69-7577a586a94c');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '16ca5087-9309-4d02-9a69-7577a586a94c');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '16ca5087-9309-4d02-9a69-7577a586a94c');
INSERT INTO `trole_tresource` VALUES ('0', '1f72c08e-4d62-407b-a016-2c2eb8854037');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '1f72c08e-4d62-407b-a016-2c2eb8854037');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '1f72c08e-4d62-407b-a016-2c2eb8854037');
INSERT INTO `trole_tresource` VALUES ('0', '27572ac3-d694-4115-915f-b7b10c4b40a8');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '27572ac3-d694-4115-915f-b7b10c4b40a8');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '27572ac3-d694-4115-915f-b7b10c4b40a8');
INSERT INTO `trole_tresource` VALUES ('0', '2f2f4b57-2464-4628-a7c5-27a59d02421e');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '2f2f4b57-2464-4628-a7c5-27a59d02421e');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '2f2f4b57-2464-4628-a7c5-27a59d02421e');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '2f2f4b57-2464-4628-a7c5-27a59d02421e');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '2f2f4b57-2464-4628-a7c5-27a59d02421e');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '2f2f4b57-2464-4628-a7c5-27a59d02421e');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '2f2f4b57-2464-4628-a7c5-27a59d02421e');
INSERT INTO `trole_tresource` VALUES ('0', '302aa946-2875-4e2d-b57f-bb8dd27b947a');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '302aa946-2875-4e2d-b57f-bb8dd27b947a');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '302aa946-2875-4e2d-b57f-bb8dd27b947a');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '302aa946-2875-4e2d-b57f-bb8dd27b947a');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '302aa946-2875-4e2d-b57f-bb8dd27b947a');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '302aa946-2875-4e2d-b57f-bb8dd27b947a');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '302aa946-2875-4e2d-b57f-bb8dd27b947a');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '302aa946-2875-4e2d-b57f-bb8dd27b947a');
INSERT INTO `trole_tresource` VALUES ('0', '314887c1-bb39-45d8-b890-d165d00c7036');
INSERT INTO `trole_tresource` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', '314887c1-bb39-45d8-b890-d165d00c7036');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '314887c1-bb39-45d8-b890-d165d00c7036');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '314887c1-bb39-45d8-b890-d165d00c7036');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '314887c1-bb39-45d8-b890-d165d00c7036');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '314887c1-bb39-45d8-b890-d165d00c7036');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '314887c1-bb39-45d8-b890-d165d00c7036');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '314887c1-bb39-45d8-b890-d165d00c7036');
INSERT INTO `trole_tresource` VALUES ('0', '315698a9-3682-476b-87ca-c4d5a8806bda');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '315698a9-3682-476b-87ca-c4d5a8806bda');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '315698a9-3682-476b-87ca-c4d5a8806bda');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '315698a9-3682-476b-87ca-c4d5a8806bda');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '315698a9-3682-476b-87ca-c4d5a8806bda');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '315698a9-3682-476b-87ca-c4d5a8806bda');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '315698a9-3682-476b-87ca-c4d5a8806bda');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '315698a9-3682-476b-87ca-c4d5a8806bda');
INSERT INTO `trole_tresource` VALUES ('0', '3ae429b5-e8c9-43f7-843a-547644b25640');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '3ae429b5-e8c9-43f7-843a-547644b25640');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '3ae429b5-e8c9-43f7-843a-547644b25640');
INSERT INTO `trole_tresource` VALUES ('0', '3b2dd96d-6e9c-4f2d-97a0-eab42173fa6c');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '3b2dd96d-6e9c-4f2d-97a0-eab42173fa6c');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '3b2dd96d-6e9c-4f2d-97a0-eab42173fa6c');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '3b2dd96d-6e9c-4f2d-97a0-eab42173fa6c');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '3b2dd96d-6e9c-4f2d-97a0-eab42173fa6c');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '3b2dd96d-6e9c-4f2d-97a0-eab42173fa6c');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '3b2dd96d-6e9c-4f2d-97a0-eab42173fa6c');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '3b2dd96d-6e9c-4f2d-97a0-eab42173fa6c');
INSERT INTO `trole_tresource` VALUES ('0', '3c2136f0-c5b5-43bd-91c3-fa9c8c804572');
INSERT INTO `trole_tresource` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', '3c2136f0-c5b5-43bd-91c3-fa9c8c804572');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '3c2136f0-c5b5-43bd-91c3-fa9c8c804572');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '3c2136f0-c5b5-43bd-91c3-fa9c8c804572');
INSERT INTO `trole_tresource` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', '3c2136f0-c5b5-43bd-91c3-fa9c8c804572');
INSERT INTO `trole_tresource` VALUES ('0', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('guest', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '3c6e3643-7ea9-443f-9682-0a31e8420120');
INSERT INTO `trole_tresource` VALUES ('0', '3cda68ff-8568-4405-aebf-011819b34dda');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '3cda68ff-8568-4405-aebf-011819b34dda');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '3cda68ff-8568-4405-aebf-011819b34dda');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '3cda68ff-8568-4405-aebf-011819b34dda');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '3cda68ff-8568-4405-aebf-011819b34dda');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '3cda68ff-8568-4405-aebf-011819b34dda');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '3cda68ff-8568-4405-aebf-011819b34dda');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '3cda68ff-8568-4405-aebf-011819b34dda');
INSERT INTO `trole_tresource` VALUES ('0', '3ec3687a-28b6-4be0-a805-de3ded744942');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '3ec3687a-28b6-4be0-a805-de3ded744942');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '3ec3687a-28b6-4be0-a805-de3ded744942');
INSERT INTO `trole_tresource` VALUES ('0', '3facbd45-bbca-4485-945c-b4ad0f008248');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '3facbd45-bbca-4485-945c-b4ad0f008248');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '3facbd45-bbca-4485-945c-b4ad0f008248');
INSERT INTO `trole_tresource` VALUES ('0', '3ff20750-31b2-4dc1-8edb-dc2e9a3cf7f5');
INSERT INTO `trole_tresource` VALUES ('0', '413677dd-4772-46fc-857e-0e7b300bd960');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '413677dd-4772-46fc-857e-0e7b300bd960');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '413677dd-4772-46fc-857e-0e7b300bd960');
INSERT INTO `trole_tresource` VALUES ('0', '428f76d3-fcf0-413d-a9bc-b17c57a8a402');
INSERT INTO `trole_tresource` VALUES ('0', '498b8052-1a0e-41cc-86a9-07fd16ad0fd2');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '498b8052-1a0e-41cc-86a9-07fd16ad0fd2');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '498b8052-1a0e-41cc-86a9-07fd16ad0fd2');
INSERT INTO `trole_tresource` VALUES ('0', '49a3bb2e-278a-44f2-9ca9-217507bdfa34');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '49a3bb2e-278a-44f2-9ca9-217507bdfa34');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '49a3bb2e-278a-44f2-9ca9-217507bdfa34');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '49a3bb2e-278a-44f2-9ca9-217507bdfa34');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '49a3bb2e-278a-44f2-9ca9-217507bdfa34');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '49a3bb2e-278a-44f2-9ca9-217507bdfa34');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '49a3bb2e-278a-44f2-9ca9-217507bdfa34');
INSERT INTO `trole_tresource` VALUES ('0', '4f1ddea2-90fe-41ea-b714-3227a466061f');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '4f1ddea2-90fe-41ea-b714-3227a466061f');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '4f1ddea2-90fe-41ea-b714-3227a466061f');
INSERT INTO `trole_tresource` VALUES ('0', '4f2b29b3-8d6c-4d8c-bc3b-0ee1aec18b92');
INSERT INTO `trole_tresource` VALUES ('0', '4f82babe-6e19-40d1-a894-5d154c789ad8');
INSERT INTO `trole_tresource` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', '4f82babe-6e19-40d1-a894-5d154c789ad8');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '4f82babe-6e19-40d1-a894-5d154c789ad8');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '4f82babe-6e19-40d1-a894-5d154c789ad8');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '4f82babe-6e19-40d1-a894-5d154c789ad8');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '4f82babe-6e19-40d1-a894-5d154c789ad8');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '4f82babe-6e19-40d1-a894-5d154c789ad8');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '4f82babe-6e19-40d1-a894-5d154c789ad8');
INSERT INTO `trole_tresource` VALUES ('0', '539a3290-fb5e-45b4-9878-6d784811917d');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '539a3290-fb5e-45b4-9878-6d784811917d');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '539a3290-fb5e-45b4-9878-6d784811917d');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '539a3290-fb5e-45b4-9878-6d784811917d');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '539a3290-fb5e-45b4-9878-6d784811917d');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '539a3290-fb5e-45b4-9878-6d784811917d');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '539a3290-fb5e-45b4-9878-6d784811917d');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '539a3290-fb5e-45b4-9878-6d784811917d');
INSERT INTO `trole_tresource` VALUES ('0', '53a0c62f-4f09-4280-bbc6-51b86707efbf');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '53a0c62f-4f09-4280-bbc6-51b86707efbf');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '53a0c62f-4f09-4280-bbc6-51b86707efbf');
INSERT INTO `trole_tresource` VALUES ('0', '53dbcd57-fd09-4f90-b164-4722e79bd441');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '53dbcd57-fd09-4f90-b164-4722e79bd441');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '53dbcd57-fd09-4f90-b164-4722e79bd441');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '53dbcd57-fd09-4f90-b164-4722e79bd441');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '53dbcd57-fd09-4f90-b164-4722e79bd441');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '53dbcd57-fd09-4f90-b164-4722e79bd441');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '53dbcd57-fd09-4f90-b164-4722e79bd441');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '53dbcd57-fd09-4f90-b164-4722e79bd441');
INSERT INTO `trole_tresource` VALUES ('0', '5408ddc5-3e6d-4ac0-8678-ba408148734e');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '5408ddc5-3e6d-4ac0-8678-ba408148734e');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '5408ddc5-3e6d-4ac0-8678-ba408148734e');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '5408ddc5-3e6d-4ac0-8678-ba408148734e');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '5408ddc5-3e6d-4ac0-8678-ba408148734e');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '5408ddc5-3e6d-4ac0-8678-ba408148734e');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '5408ddc5-3e6d-4ac0-8678-ba408148734e');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '5408ddc5-3e6d-4ac0-8678-ba408148734e');
INSERT INTO `trole_tresource` VALUES ('0', '572c2054-7052-472b-88ae-c6830587e89e');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '572c2054-7052-472b-88ae-c6830587e89e');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '572c2054-7052-472b-88ae-c6830587e89e');
INSERT INTO `trole_tresource` VALUES ('0', '5edfbbc5-e68e-4ed8-8efe-311052fef996');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '5edfbbc5-e68e-4ed8-8efe-311052fef996');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '5edfbbc5-e68e-4ed8-8efe-311052fef996');
INSERT INTO `trole_tresource` VALUES ('0', '5f6efe5c-b3ff-4266-af5b-9f3efd4741ce');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '5f6efe5c-b3ff-4266-af5b-9f3efd4741ce');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '5f6efe5c-b3ff-4266-af5b-9f3efd4741ce');
INSERT INTO `trole_tresource` VALUES ('0', '6440504c-3f82-4fff-9e2c-84322a9cefa5');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '6440504c-3f82-4fff-9e2c-84322a9cefa5');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '6440504c-3f82-4fff-9e2c-84322a9cefa5');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '6440504c-3f82-4fff-9e2c-84322a9cefa5');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '6440504c-3f82-4fff-9e2c-84322a9cefa5');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '6440504c-3f82-4fff-9e2c-84322a9cefa5');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '6440504c-3f82-4fff-9e2c-84322a9cefa5');
INSERT INTO `trole_tresource` VALUES ('0', '6a626bed-5b96-4d32-96d9-efa7d7168b79');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '6a626bed-5b96-4d32-96d9-efa7d7168b79');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '6a626bed-5b96-4d32-96d9-efa7d7168b79');
INSERT INTO `trole_tresource` VALUES ('0', '6ce6ec90-f1fc-477f-9cce-9941f93a9e45');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '6ce6ec90-f1fc-477f-9cce-9941f93a9e45');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '6ce6ec90-f1fc-477f-9cce-9941f93a9e45');
INSERT INTO `trole_tresource` VALUES ('0', '702460d3-9b0e-4518-aa6d-186d4e255507');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '702460d3-9b0e-4518-aa6d-186d4e255507');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '702460d3-9b0e-4518-aa6d-186d4e255507');
INSERT INTO `trole_tresource` VALUES ('0', '70af4832-f73b-4f5f-b346-e5a63a93bb06');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '70af4832-f73b-4f5f-b346-e5a63a93bb06');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '70af4832-f73b-4f5f-b346-e5a63a93bb06');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '70af4832-f73b-4f5f-b346-e5a63a93bb06');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '70af4832-f73b-4f5f-b346-e5a63a93bb06');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '70af4832-f73b-4f5f-b346-e5a63a93bb06');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '70af4832-f73b-4f5f-b346-e5a63a93bb06');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '70af4832-f73b-4f5f-b346-e5a63a93bb06');
INSERT INTO `trole_tresource` VALUES ('0', '7304cfee-bc56-4197-8c88-b3b4bf28f690');
INSERT INTO `trole_tresource` VALUES ('0', '75c57d93-2f31-4ef3-a751-b499b4c4ac89');
INSERT INTO `trole_tresource` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', '75c57d93-2f31-4ef3-a751-b499b4c4ac89');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '75c57d93-2f31-4ef3-a751-b499b4c4ac89');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '75c57d93-2f31-4ef3-a751-b499b4c4ac89');
INSERT INTO `trole_tresource` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', '75c57d93-2f31-4ef3-a751-b499b4c4ac89');
INSERT INTO `trole_tresource` VALUES ('0', '7d71aa67-a221-4f75-ac29-f4b38b21f632');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '7d71aa67-a221-4f75-ac29-f4b38b21f632');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '7d71aa67-a221-4f75-ac29-f4b38b21f632');
INSERT INTO `trole_tresource` VALUES ('0', '7df4363a-991c-4f0f-806b-2912e9be4497');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '7df4363a-991c-4f0f-806b-2912e9be4497');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '7df4363a-991c-4f0f-806b-2912e9be4497');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '7df4363a-991c-4f0f-806b-2912e9be4497');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '7df4363a-991c-4f0f-806b-2912e9be4497');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '7df4363a-991c-4f0f-806b-2912e9be4497');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '7df4363a-991c-4f0f-806b-2912e9be4497');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '7df4363a-991c-4f0f-806b-2912e9be4497');
INSERT INTO `trole_tresource` VALUES ('0', '8051d05b-06e9-4c87-a48d-0f326092abaa');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '8051d05b-06e9-4c87-a48d-0f326092abaa');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '8051d05b-06e9-4c87-a48d-0f326092abaa');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '8051d05b-06e9-4c87-a48d-0f326092abaa');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '8051d05b-06e9-4c87-a48d-0f326092abaa');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '8051d05b-06e9-4c87-a48d-0f326092abaa');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '8051d05b-06e9-4c87-a48d-0f326092abaa');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '8051d05b-06e9-4c87-a48d-0f326092abaa');
INSERT INTO `trole_tresource` VALUES ('0', '812a750e-0b4d-4b65-9cff-7e2ffa3f5594');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '812a750e-0b4d-4b65-9cff-7e2ffa3f5594');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '812a750e-0b4d-4b65-9cff-7e2ffa3f5594');
INSERT INTO `trole_tresource` VALUES ('0', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '889b4c63-1825-4615-8d70-00a9aa97e6fe');
INSERT INTO `trole_tresource` VALUES ('0', '89436d2c-3174-4833-bc76-df2216d36100');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '89436d2c-3174-4833-bc76-df2216d36100');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '89436d2c-3174-4833-bc76-df2216d36100');
INSERT INTO `trole_tresource` VALUES ('0', '8a2a2168-c8a9-4570-9020-8607ff89dfb5');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '8a2a2168-c8a9-4570-9020-8607ff89dfb5');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '8a2a2168-c8a9-4570-9020-8607ff89dfb5');
INSERT INTO `trole_tresource` VALUES ('0', '8ae4181f-4460-471d-93d7-54fe8e38be2b');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '8ae4181f-4460-471d-93d7-54fe8e38be2b');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '8ae4181f-4460-471d-93d7-54fe8e38be2b');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '8ae4181f-4460-471d-93d7-54fe8e38be2b');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '8ae4181f-4460-471d-93d7-54fe8e38be2b');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '8ae4181f-4460-471d-93d7-54fe8e38be2b');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '8ae4181f-4460-471d-93d7-54fe8e38be2b');
INSERT INTO `trole_tresource` VALUES ('0', '8d5b3e07-a0b3-4c6e-b228-45c030c96b7f');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '8d5b3e07-a0b3-4c6e-b228-45c030c96b7f');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '8d5b3e07-a0b3-4c6e-b228-45c030c96b7f');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '8d5b3e07-a0b3-4c6e-b228-45c030c96b7f');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '8d5b3e07-a0b3-4c6e-b228-45c030c96b7f');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '8d5b3e07-a0b3-4c6e-b228-45c030c96b7f');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '8d5b3e07-a0b3-4c6e-b228-45c030c96b7f');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '8d5b3e07-a0b3-4c6e-b228-45c030c96b7f');
INSERT INTO `trole_tresource` VALUES ('0', '954d903d-e5cb-46ea-9021-7ee67f5ae2d9');
INSERT INTO `trole_tresource` VALUES ('0', '99fac964-b02a-4fd4-9092-92a95d734149');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '99fac964-b02a-4fd4-9092-92a95d734149');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '99fac964-b02a-4fd4-9092-92a95d734149');
INSERT INTO `trole_tresource` VALUES ('0', '9a6c744b-a71d-46e8-acce-8490a91246b2');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '9a6c744b-a71d-46e8-acce-8490a91246b2');
INSERT INTO `trole_tresource` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', '9a6c744b-a71d-46e8-acce-8490a91246b2');
INSERT INTO `trole_tresource` VALUES ('0', '9aa9bed0-5082-44e3-994c-728c0e562ae7');
INSERT INTO `trole_tresource` VALUES ('0', '9b20658e-7440-4ede-9eaf-cc7b91b1bb31');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '9b20658e-7440-4ede-9eaf-cc7b91b1bb31');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '9b20658e-7440-4ede-9eaf-cc7b91b1bb31');
INSERT INTO `trole_tresource` VALUES ('0', '9cc56efc-6fa7-4922-baa6-ed07d662a7e0');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '9cc56efc-6fa7-4922-baa6-ed07d662a7e0');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '9cc56efc-6fa7-4922-baa6-ed07d662a7e0');
INSERT INTO `trole_tresource` VALUES ('0', '9de70f6a-4f5e-403e-a120-1d6c3cdeec96');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '9de70f6a-4f5e-403e-a120-1d6c3cdeec96');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '9de70f6a-4f5e-403e-a120-1d6c3cdeec96');
INSERT INTO `trole_tresource` VALUES ('0', '9e0bdc41-77da-40be-babc-ac54a2fd59a0');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '9e0bdc41-77da-40be-babc-ac54a2fd59a0');
INSERT INTO `trole_tresource` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', '9e0bdc41-77da-40be-babc-ac54a2fd59a0');
INSERT INTO `trole_tresource` VALUES ('0', '9eacac7e-34f9-4764-805f-987401d2119a');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', '9eacac7e-34f9-4764-805f-987401d2119a');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '9eacac7e-34f9-4764-805f-987401d2119a');
INSERT INTO `trole_tresource` VALUES ('0', '9ed22038-ad44-4169-94f9-a3ad772b09dd');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '9ed22038-ad44-4169-94f9-a3ad772b09dd');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', '9ed22038-ad44-4169-94f9-a3ad772b09dd');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '9ed22038-ad44-4169-94f9-a3ad772b09dd');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', '9ed22038-ad44-4169-94f9-a3ad772b09dd');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', '9ed22038-ad44-4169-94f9-a3ad772b09dd');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', '9ed22038-ad44-4169-94f9-a3ad772b09dd');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', '9ed22038-ad44-4169-94f9-a3ad772b09dd');
INSERT INTO `trole_tresource` VALUES ('0', '9f55549a-d499-456f-9843-3630d81a9df4');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', '9f55549a-d499-456f-9843-3630d81a9df4');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', '9f55549a-d499-456f-9843-3630d81a9df4');
INSERT INTO `trole_tresource` VALUES ('0', 'a2ec8f7a-1dcd-402d-85c0-2c444c4e55f0');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'a2ec8f7a-1dcd-402d-85c0-2c444c4e55f0');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'a2ec8f7a-1dcd-402d-85c0-2c444c4e55f0');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'a2ec8f7a-1dcd-402d-85c0-2c444c4e55f0');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'a2ec8f7a-1dcd-402d-85c0-2c444c4e55f0');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'a2ec8f7a-1dcd-402d-85c0-2c444c4e55f0');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'a2ec8f7a-1dcd-402d-85c0-2c444c4e55f0');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'a2ec8f7a-1dcd-402d-85c0-2c444c4e55f0');
INSERT INTO `trole_tresource` VALUES ('0', 'a8d2e8c4-4ae5-4cbb-bd56-a89464cfeeda');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'a8d2e8c4-4ae5-4cbb-bd56-a89464cfeeda');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'a8d2e8c4-4ae5-4cbb-bd56-a89464cfeeda');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'a8d2e8c4-4ae5-4cbb-bd56-a89464cfeeda');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'a8d2e8c4-4ae5-4cbb-bd56-a89464cfeeda');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'a8d2e8c4-4ae5-4cbb-bd56-a89464cfeeda');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'a8d2e8c4-4ae5-4cbb-bd56-a89464cfeeda');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'a8d2e8c4-4ae5-4cbb-bd56-a89464cfeeda');
INSERT INTO `trole_tresource` VALUES ('0', 'a9e67e16-d2b3-4de8-a522-1c0c58dea6aa');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'a9e67e16-d2b3-4de8-a522-1c0c58dea6aa');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'a9e67e16-d2b3-4de8-a522-1c0c58dea6aa');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'a9e67e16-d2b3-4de8-a522-1c0c58dea6aa');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'a9e67e16-d2b3-4de8-a522-1c0c58dea6aa');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'a9e67e16-d2b3-4de8-a522-1c0c58dea6aa');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'a9e67e16-d2b3-4de8-a522-1c0c58dea6aa');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'a9e67e16-d2b3-4de8-a522-1c0c58dea6aa');
INSERT INTO `trole_tresource` VALUES ('0', 'ac05a89c-37a3-4e5e-80dd-66871fe35737');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'ac05a89c-37a3-4e5e-80dd-66871fe35737');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'ac05a89c-37a3-4e5e-80dd-66871fe35737');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'ac05a89c-37a3-4e5e-80dd-66871fe35737');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'ac05a89c-37a3-4e5e-80dd-66871fe35737');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'ac05a89c-37a3-4e5e-80dd-66871fe35737');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'ac05a89c-37a3-4e5e-80dd-66871fe35737');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'ac05a89c-37a3-4e5e-80dd-66871fe35737');
INSERT INTO `trole_tresource` VALUES ('0', 'b368f9ed-00f2-4d86-8028-81a6c567a18b');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'b368f9ed-00f2-4d86-8028-81a6c567a18b');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'b368f9ed-00f2-4d86-8028-81a6c567a18b');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'b368f9ed-00f2-4d86-8028-81a6c567a18b');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'b368f9ed-00f2-4d86-8028-81a6c567a18b');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'b368f9ed-00f2-4d86-8028-81a6c567a18b');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'b368f9ed-00f2-4d86-8028-81a6c567a18b');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'b368f9ed-00f2-4d86-8028-81a6c567a18b');
INSERT INTO `trole_tresource` VALUES ('0', 'b55b5d28-79c9-4a96-8110-9f4576cfe25e');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'b55b5d28-79c9-4a96-8110-9f4576cfe25e');
INSERT INTO `trole_tresource` VALUES ('f4c9802c-1020-4271-9304-e6af6654897e', 'b55b5d28-79c9-4a96-8110-9f4576cfe25e');
INSERT INTO `trole_tresource` VALUES ('0', 'bba886f3-eb85-4ba2-9945-6b8d7c43970f');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'bba886f3-eb85-4ba2-9945-6b8d7c43970f');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'bba886f3-eb85-4ba2-9945-6b8d7c43970f');
INSERT INTO `trole_tresource` VALUES ('0', 'bf742654-f8b2-4b4e-b32d-24020726fb14');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'bf742654-f8b2-4b4e-b32d-24020726fb14');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bf742654-f8b2-4b4e-b32d-24020726fb14');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'bf742654-f8b2-4b4e-b32d-24020726fb14');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'bf742654-f8b2-4b4e-b32d-24020726fb14');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'bf742654-f8b2-4b4e-b32d-24020726fb14');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'bf742654-f8b2-4b4e-b32d-24020726fb14');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'bf742654-f8b2-4b4e-b32d-24020726fb14');
INSERT INTO `trole_tresource` VALUES ('0', 'buggl');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'buggl');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglAdd');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglAdd');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglAddPage');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglAddPage');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglDateGrid');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglDateGrid');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglDelete');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglEdit');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglEdit');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglEditPage');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglEditPage');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglView');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglView');
INSERT INTO `trole_tresource` VALUES ('0', 'c06f5ffd-5ac0-42e2-8229-697380c4baa7');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'c06f5ffd-5ac0-42e2-8229-697380c4baa7');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'c06f5ffd-5ac0-42e2-8229-697380c4baa7');
INSERT INTO `trole_tresource` VALUES ('0', 'c1a878d9-6427-407f-b005-e0fda1ee8ea4');
INSERT INTO `trole_tresource` VALUES ('0', 'c6351df1-d93b-4207-af57-c528e049cc40');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'c6351df1-d93b-4207-af57-c528e049cc40');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'c6351df1-d93b-4207-af57-c528e049cc40');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'c6351df1-d93b-4207-af57-c528e049cc40');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'c6351df1-d93b-4207-af57-c528e049cc40');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'c6351df1-d93b-4207-af57-c528e049cc40');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'c6351df1-d93b-4207-af57-c528e049cc40');
INSERT INTO `trole_tresource` VALUES ('0', 'c65af62c-a937-4c11-9425-202078861599');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'c65af62c-a937-4c11-9425-202078861599');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'c65af62c-a937-4c11-9425-202078861599');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'c65af62c-a937-4c11-9425-202078861599');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'c65af62c-a937-4c11-9425-202078861599');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'c65af62c-a937-4c11-9425-202078861599');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'c65af62c-a937-4c11-9425-202078861599');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'c65af62c-a937-4c11-9425-202078861599');
INSERT INTO `trole_tresource` VALUES ('0', 'c70ac4e7-8763-4a76-b7b7-33dd5b19de01');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'c70ac4e7-8763-4a76-b7b7-33dd5b19de01');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'c70ac4e7-8763-4a76-b7b7-33dd5b19de01');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'c70ac4e7-8763-4a76-b7b7-33dd5b19de01');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'c70ac4e7-8763-4a76-b7b7-33dd5b19de01');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'c70ac4e7-8763-4a76-b7b7-33dd5b19de01');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'c70ac4e7-8763-4a76-b7b7-33dd5b19de01');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'c70ac4e7-8763-4a76-b7b7-33dd5b19de01');
INSERT INTO `trole_tresource` VALUES ('0', 'cb6e6671-b831-4dea-bb47-2afdaac7ae7b');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'cb6e6671-b831-4dea-bb47-2afdaac7ae7b');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'cb6e6671-b831-4dea-bb47-2afdaac7ae7b');
INSERT INTO `trole_tresource` VALUES ('0', 'cc4d079e-2194-4c13-a21b-c1638617f6c6');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'cc4d079e-2194-4c13-a21b-c1638617f6c6');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'cc4d079e-2194-4c13-a21b-c1638617f6c6');
INSERT INTO `trole_tresource` VALUES ('0', 'cdfcdcdb-0c28-450c-b1f7-3c7b3689d423');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'cdfcdcdb-0c28-450c-b1f7-3c7b3689d423');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'cdfcdcdb-0c28-450c-b1f7-3c7b3689d423');
INSERT INTO `trole_tresource` VALUES ('0', 'chart');
INSERT INTO `trole_tresource` VALUES ('0', 'da1d5f9b-4ce2-4110-a3fd-3ba4f507054b');
INSERT INTO `trole_tresource` VALUES ('37cc4884-8bef-4bad-bdf4-a7ad3ee08632', 'da1d5f9b-4ce2-4110-a3fd-3ba4f507054b');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'da1d5f9b-4ce2-4110-a3fd-3ba4f507054b');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'da1d5f9b-4ce2-4110-a3fd-3ba4f507054b');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'da1d5f9b-4ce2-4110-a3fd-3ba4f507054b');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'da1d5f9b-4ce2-4110-a3fd-3ba4f507054b');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'da1d5f9b-4ce2-4110-a3fd-3ba4f507054b');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'da1d5f9b-4ce2-4110-a3fd-3ba4f507054b');
INSERT INTO `trole_tresource` VALUES ('0', 'dd451984-2b3a-493f-8d43-aee4892e5498');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'dd451984-2b3a-493f-8d43-aee4892e5498');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'dd451984-2b3a-493f-8d43-aee4892e5498');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'dd451984-2b3a-493f-8d43-aee4892e5498');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'dd451984-2b3a-493f-8d43-aee4892e5498');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'dd451984-2b3a-493f-8d43-aee4892e5498');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'dd451984-2b3a-493f-8d43-aee4892e5498');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'dd451984-2b3a-493f-8d43-aee4892e5498');
INSERT INTO `trole_tresource` VALUES ('0', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'e2f34e9e-2b7a-47fb-ada2-2caee7ed3ee7');
INSERT INTO `trole_tresource` VALUES ('0', 'e549bf8f-189e-45fe-adb8-d9c3407e5ef0');
INSERT INTO `trole_tresource` VALUES ('0', 'f29175dc-e41d-4bc9-b8c9-3a5f23fc7cda');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'f29175dc-e41d-4bc9-b8c9-3a5f23fc7cda');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'f29175dc-e41d-4bc9-b8c9-3a5f23fc7cda');
INSERT INTO `trole_tresource` VALUES ('0', 'f5f604fb-a19a-4a26-bc86-b285813d6885');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'f5f604fb-a19a-4a26-bc86-b285813d6885');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'f5f604fb-a19a-4a26-bc86-b285813d6885');
INSERT INTO `trole_tresource` VALUES ('0', 'f7982864-7bf7-40e9-a5ea-27d079c31ce1');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'f7982864-7bf7-40e9-a5ea-27d079c31ce1');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'f7982864-7bf7-40e9-a5ea-27d079c31ce1');
INSERT INTO `trole_tresource` VALUES ('0', 'f7cf8958-7366-4e1e-89a1-27a544b084a4');
INSERT INTO `trole_tresource` VALUES ('69fc4cec-994d-4668-acf1-f41a7db2be91', 'f7cf8958-7366-4e1e-89a1-27a544b084a4');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'f7cf8958-7366-4e1e-89a1-27a544b084a4');
INSERT INTO `trole_tresource` VALUES ('0', 'fa07add7-6d47-48be-a99b-6f917238804c');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'fa07add7-6d47-48be-a99b-6f917238804c');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'fa07add7-6d47-48be-a99b-6f917238804c');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'fa07add7-6d47-48be-a99b-6f917238804c');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'fa07add7-6d47-48be-a99b-6f917238804c');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'fa07add7-6d47-48be-a99b-6f917238804c');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'fa07add7-6d47-48be-a99b-6f917238804c');
INSERT INTO `trole_tresource` VALUES ('0', 'fd56e341-7e4a-4b4d-9e71-5be2d05b4e81');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'fd56e341-7e4a-4b4d-9e71-5be2d05b4e81');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'fd56e341-7e4a-4b4d-9e71-5be2d05b4e81');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'fd56e341-7e4a-4b4d-9e71-5be2d05b4e81');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'fd56e341-7e4a-4b4d-9e71-5be2d05b4e81');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'fd56e341-7e4a-4b4d-9e71-5be2d05b4e81');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'fd56e341-7e4a-4b4d-9e71-5be2d05b4e81');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'fd56e341-7e4a-4b4d-9e71-5be2d05b4e81');
INSERT INTO `trole_tresource` VALUES ('0', 'ff997aad-23e9-4cae-ab30-727e2f9c5796');
INSERT INTO `trole_tresource` VALUES ('0', 'jeasyuiApi');
INSERT INTO `trole_tresource` VALUES ('0', 'jsgl');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsgl');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglAdd');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglAdd');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglAddPage');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglAddPage');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglDelete');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglEdit');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglEdit');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglEditPage');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglEditPage');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglGrant');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglGrant');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglGrantPage');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglGrantPage');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglTreeGrid');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglTreeGrid');
INSERT INTO `trole_tresource` VALUES ('0', 'sjygl');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'sjygl');
INSERT INTO `trole_tresource` VALUES ('0', 'userCreateDatetimeChart');
INSERT INTO `trole_tresource` VALUES ('0', 'wjgl');
INSERT INTO `trole_tresource` VALUES ('0', 'wjglUpload');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'wjglUpload');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'wjglUpload');
INSERT INTO `trole_tresource` VALUES ('0', 'wjglView');
INSERT INTO `trole_tresource` VALUES ('02545868-3315-4f64-bf60-cf9104c4281c', 'wjglView');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'wjglView');
INSERT INTO `trole_tresource` VALUES ('0', 'xtgl');
INSERT INTO `trole_tresource` VALUES ('0', 'yhgl');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhgl');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhgl');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglAdd');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhglAdd');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglAdd');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglAddPage');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhglAddPage');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglAddPage');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglBatchDelete');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglBatchDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglDateGrid');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhglDateGrid');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglDateGrid');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglDelete');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglEdit');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhglEdit');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglEdit');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglEditPage');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhglEditPage');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglEditPage');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglEditPwd');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhglEditPwd');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglEditPwd');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglEditPwdPage');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhglEditPwdPage');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglEditPwdPage');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglGrant');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhglGrant');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglGrant');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglGrantPage');
INSERT INTO `trole_tresource` VALUES ('d2193bad-8c18-48bd-b251-f8279edab5a3', 'yhglGrantPage');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglGrantPage');
INSERT INTO `trole_tresource` VALUES ('0', 'zygl');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zygl');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglAdd');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglAdd');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglAddPage');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglAddPage');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglDelete');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglEdit');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglEdit');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglEditPage');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglEditPage');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglMenu');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglMenu');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglTreeGrid');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglTreeGrid');

-- ----------------------------
-- Table structure for `tuser`
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime default NULL,
  `MODIFYDATETIME` datetime default NULL,
  `NAME` varchar(100) NOT NULL,
  `PWD` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `UK_doflky41g81kf7ydx6y0a99nm` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser
-- ----------------------------
INSERT INTO `tuser` VALUES ('0', '2015-04-14 18:12:31', '2015-04-14 18:27:53', '建龍', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `tuser` VALUES ('229f320c-bfe6-45bc-9290-03ebc75d1537', '2015-04-24 04:44:39', null, 'Bruce', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `tuser` VALUES ('2ac02f0c-f34e-4a7e-9cb6-fbbed70f0588', '2015-03-11 22:35:16', '2015-04-14 18:30:40', 'aaa', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('43cbcd0a-2c8d-406e-a61f-aa45b6671682', '2015-07-31 16:46:19', null, 'ddd', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('94dc84d1-2480-4de5-95be-f54c5f769e30', '2015-03-11 22:35:27', '2015-04-14 18:30:45', 'bbb', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('c36a7814-b283-4120-b750-fa316b8385c2', '2014-05-17 22:47:27', '2015-04-16 10:51:14', 'xx321', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('e5974881-afdd-432f-bd1b-8d7a51b539a3', '2015-03-11 22:35:05', '2015-04-14 18:30:49', 'ccc', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('guest', '2015-04-14 18:12:32', null, 'guest', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for `tuser_trole`
-- ----------------------------
DROP TABLE IF EXISTS `tuser_trole`;
CREATE TABLE `tuser_trole` (
  `TUSER_ID` varchar(36) NOT NULL,
  `TROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY  (`TROLE_ID`,`TUSER_ID`),
  KEY `FK_30t0khk63muiwisjpp0h7e57l` (`TROLE_ID`),
  KEY `FK_mipcojqd9xymdghov18fobf7e` (`TUSER_ID`),
  CONSTRAINT `FK_30t0khk63muiwisjpp0h7e57l` FOREIGN KEY (`TROLE_ID`) REFERENCES `trole` (`ID`),
  CONSTRAINT `FK_mipcojqd9xymdghov18fobf7e` FOREIGN KEY (`TUSER_ID`) REFERENCES `tuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser_trole
-- ----------------------------
INSERT INTO `tuser_trole` VALUES ('0', '0');
INSERT INTO `tuser_trole` VALUES ('0', '02545868-3315-4f64-bf60-cf9104c4281c');
INSERT INTO `tuser_trole` VALUES ('2ac02f0c-f34e-4a7e-9cb6-fbbed70f0588', '02545868-3315-4f64-bf60-cf9104c4281c');
INSERT INTO `tuser_trole` VALUES ('c36a7814-b283-4120-b750-fa316b8385c2', '02545868-3315-4f64-bf60-cf9104c4281c');
INSERT INTO `tuser_trole` VALUES ('0', '37cc4884-8bef-4bad-bdf4-a7ad3ee08632');
INSERT INTO `tuser_trole` VALUES ('c36a7814-b283-4120-b750-fa316b8385c2', '37cc4884-8bef-4bad-bdf4-a7ad3ee08632');
INSERT INTO `tuser_trole` VALUES ('e5974881-afdd-432f-bd1b-8d7a51b539a3', '37cc4884-8bef-4bad-bdf4-a7ad3ee08632');
INSERT INTO `tuser_trole` VALUES ('0', '69fc4cec-994d-4668-acf1-f41a7db2be91');
INSERT INTO `tuser_trole` VALUES ('43cbcd0a-2c8d-406e-a61f-aa45b6671682', '69fc4cec-994d-4668-acf1-f41a7db2be91');
INSERT INTO `tuser_trole` VALUES ('c36a7814-b283-4120-b750-fa316b8385c2', '69fc4cec-994d-4668-acf1-f41a7db2be91');
INSERT INTO `tuser_trole` VALUES ('0', 'bugAdmin');
INSERT INTO `tuser_trole` VALUES ('0', 'd2193bad-8c18-48bd-b251-f8279edab5a3');
INSERT INTO `tuser_trole` VALUES ('229f320c-bfe6-45bc-9290-03ebc75d1537', 'd2193bad-8c18-48bd-b251-f8279edab5a3');
INSERT INTO `tuser_trole` VALUES ('c36a7814-b283-4120-b750-fa316b8385c2', 'd2193bad-8c18-48bd-b251-f8279edab5a3');
INSERT INTO `tuser_trole` VALUES ('0', 'f4c9802c-1020-4271-9304-e6af6654897e');
INSERT INTO `tuser_trole` VALUES ('94dc84d1-2480-4de5-95be-f54c5f769e30', 'f4c9802c-1020-4271-9304-e6af6654897e');
INSERT INTO `tuser_trole` VALUES ('c36a7814-b283-4120-b750-fa316b8385c2', 'f4c9802c-1020-4271-9304-e6af6654897e');
INSERT INTO `tuser_trole` VALUES ('0', 'guest');
INSERT INTO `tuser_trole` VALUES ('c36a7814-b283-4120-b750-fa316b8385c2', 'guest');
INSERT INTO `tuser_trole` VALUES ('guest', 'guest');
INSERT INTO `tuser_trole` VALUES ('0', 'jsAdmin');
INSERT INTO `tuser_trole` VALUES ('0', 'sjyAdmin');
INSERT INTO `tuser_trole` VALUES ('0', 'yhAdmin');
INSERT INTO `tuser_trole` VALUES ('0', 'zyAdmin');
