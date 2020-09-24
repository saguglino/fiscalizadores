/*
Navicat MySQL Data Transfer

Source Server         : sandra
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : auditoria

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-09-24 10:52:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fiscalizadores
-- ----------------------------
DROP TABLE IF EXISTS `fiscalizadores`;
CREATE TABLE `fiscalizadores` (
  `idfiscalizador` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `idperso_soc` bigint(20) unsigned NOT NULL,
  `cuit` char(13) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `idpcia` tinyint(3) unsigned DEFAULT NULL,
  `idpartido` tinyint(3) unsigned DEFAULT NULL,
  `idloc` tinyint(3) unsigned DEFAULT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `activo` tinyint(1) unsigned DEFAULT 1,
  `tipo` tinyint(3) unsigned DEFAULT 1,
  `actividades` varchar(30) DEFAULT 'CARNICOS',
  `idusuario` smallint(10) unsigned DEFAULT NULL,
  `fmodifica` date DEFAULT NULL,
  `idusuario_carga` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`idfiscalizador`),
  UNIQUE KEY `idx_fisc_001` (`cuit`),
  UNIQUE KEY `idx_fisc_004` (`matricula`),
  KEY `idx_fisc_002` (`idperso_soc`),
  KEY `idx_fisc_003` (`idpcia`,`idpartido`,`idloc`),
  KEY `idx_fisc_005` (`idusuario`),
  KEY `idx_fisc_006` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fiscalizadores
-- ----------------------------
INSERT INTO `fiscalizadores` VALUES ('1', '89527', '20-16521715-3', '16521715', 'ACOSTA  Mariano', '1', '135', null, 'Marques de Aviles 2805 Barrio La Leonor Casa 2', '011-1555610949', null, null, null, '1', '1', 'CARNICOS', '542', '2017-06-22', '2364');
INSERT INTO `fiscalizadores` VALUES ('3', '89532', '20-11267309-2', '11267309', 'ALCORTA Diego', '1', '131', null, 'Chubut Nº 483 - Bella Vista', '011-1558454580', null, null, null, '1', '1', 'CARNICOS', '552', null, null);
INSERT INTO `fiscalizadores` VALUES ('4', '89535', '20-07683491-2', '07683491', 'ANDRES Carlos', '1', '54', null, 'Vet El Palenque Benito de Miguel Nº 20 y Brasil', '02362-15678530', null, null, null, '0', '1', 'CARNICOS', '2358', '2016-08-16', '2338');
INSERT INTO `fiscalizadores` VALUES ('5', '89533', '20-20615415-3', '20615415', 'ALONSO Hernan', '1', '62', null, 'Junin Nº 46', '02227-15618903', null, null, null, '1', '1', 'CARNICOS', '882', null, null);
INSERT INTO `fiscalizadores` VALUES ('6', '89537', '20-08279495-7', '08279495', 'ARGüELLES  Alfredo', '1', '103', null, 'Alberdi 368', '02293-15516634', null, null, null, '1', '1', 'CARNICOS', '2382', null, null);
INSERT INTO `fiscalizadores` VALUES ('7', '89538', '20-14905942-4', '14905942', 'BIASOTTI Julio', '1', '73', null, 'Pedro Rojas Nº 957', null, null, null, 'julioluisbiasotti@yahoo.com.ar', '1', '1', 'CARNICOS', '994', '2019-12-07', '2364');
INSERT INTO `fiscalizadores` VALUES ('8', '89539', '20-17641041-9', '17641041', 'BONAVITTA Alfredo', '1', '54', null, 'Jean Jaures Nº 704 esq. Paso', '02362-15607158', null, null, null, '1', '1', 'CARNICOS', '2359', null, null);
INSERT INTO `fiscalizadores` VALUES ('9', '89542', '20-05087242-5', '05087242', 'BRAGGIO Antonio', '1', '26', null, 'Alvear Nº 60 e/ Pueyrredon y San Lorenzo', '02362-15677122', null, null, null, '1', '1', 'CARNICOS', '395', null, null);
INSERT INTO `fiscalizadores` VALUES ('10', '89543', '23-12857700-9', '12857700', 'CABRERA Alejandro', '1', '93', null, 'Bme Mitre Nº 3551', '02345-15651706', null, null, null, '1', '1', 'CARNICOS', '889', null, null);
INSERT INTO `fiscalizadores` VALUES ('11', '89544', '20-16924851-7', '16924851', 'CORBETTA Jorge Guillermo', '1', '103', null, 'Lamadrid 150', '02293-15549440', null, null, null, '0', '1', null, '2360', '2018-04-20', '2338');
INSERT INTO `fiscalizadores` VALUES ('12', '89546', '20-21950933-3', '21950933', 'CORTOPASSO Juan Matias', '1', '76', null, '87 Nº 1185', '02262-15406064', null, null, null, '1', '1', 'CARNICOS', '2361', null, null);
INSERT INTO `fiscalizadores` VALUES ('14', '89550', '20-21921940-8', '21921940', 'DE ORTUZAR Juan Carlos', '1', '1', '2', 'Pueyrredon Nº 111 - Villa Manza', '02923-15647225', null, null, null, '1', '1', 'CARNICOS', '2363', '2020-04-24', '2340');
INSERT INTO `fiscalizadores` VALUES ('16', '74595', '20-11699996-0', '11699996', 'FITE JOSE LUIS', '1', '125', null, 'av 9 Nº 3178 e/ 131 y 132', '02392-15529216', null, null, null, '1', '1', 'CARNICOS', '2364', null, null);
INSERT INTO `fiscalizadores` VALUES ('18', '89596', '27-28383835-3', '28383835', 'GELABERT Veronica', '1', '2', null, 'G. Arias Nº 176', '011-1553313037', null, null, null, '1', '1', 'CARNICOS', '2366', null, null);
INSERT INTO `fiscalizadores` VALUES ('19', '89597', '20-11096098-1', '11096098', 'IRASTORZA Jorge', '1', '27', null, 'Bolivar  377', '02241-15578748', null, null, null, '0', '1', 'CARNICOS', '2367', '2018-02-15', '2338');
INSERT INTO `fiscalizadores` VALUES ('20', '89598', '20-13101284-6', '13101284', 'LANGGE Raul', '1', '11', null, 'Laprida Nº 236', '02314-15610208', null, null, null, '1', '1', 'CARNICOS', '394', null, null);
INSERT INTO `fiscalizadores` VALUES ('21', '89599', '20-10132221-2', '10132221', 'LASO Juan Carlos', '1', '106', null, '25 de Mayo Nº 864', '0291-154689370', null, null, null, '0', '1', 'CARNICOS', '2368', '2017-04-20', '2338');
INSERT INTO `fiscalizadores` VALUES ('22', '89602', '20-23692664-9', '23692664', 'LEADEN Patricio', '1', '55', null, '530 Nº 926 e/4 y 4 bis', '0221-154088310', null, null, null, '1', '1', 'CARNICOS', '645', null, null);
INSERT INTO `fiscalizadores` VALUES ('23', '89604', '20-12473603-0', '12473603', 'LEPORE  Roque', '1', '32', null, 'Monteagudo Nº 848', '011-1535091548', null, null, null, '0', '1', null, '2369', '2018-06-11', '2338');
INSERT INTO `fiscalizadores` VALUES ('25', '89622', '20-20716531-0', '20716531', 'PIGUEIRAS Diego', '1', '108', null, 'Alsina Nº 585', '02983-15525628', null, null, null, '1', '1', 'CARNICOS', '2370', null, null);
INSERT INTO `fiscalizadores` VALUES ('28', '89610', '20-12109491-7', '12109491', 'RUSSO Ricardo', '1', '75', null, 'Calle 2 y 19 - Las Marianas', '02227-15442771', null, null, null, '0', '1', 'CARNICOS', '2371', '2017-08-03', '2338');
INSERT INTO `fiscalizadores` VALUES ('29', '20359', '20-20416466-6', '20416466', 'SETLER ESTEBAN FEDERICO', '1', '32', null, 'San Martin 191 esq. Rivadavia (vet) //Gral Villegas 56 e/ 3 de febrero y 12 de octubre', '011-1551820516', null, null, null, '1', '1', 'CARNICOS', '2372', null, null);
INSERT INTO `fiscalizadores` VALUES ('30', '89614', '20-16968946-7', '16968946', 'SIMONE Horacio', '1', '7', null, 'Castelli Nº 642', '0291-155723489', null, null, null, '1', '1', 'CARNICOS', '397', null, null);
INSERT INTO `fiscalizadores` VALUES ('31', '89616', '20-20522289-9', '20522289', 'TARANTINO Omar', '1', '77', null, 'C. Ramon N. Poratti Nº 1121 e/ Irigoyen y 25 de Mayo', '02345-15653851', null, null, null, '1', '1', 'CARNICOS', '2373', null, null);
INSERT INTO `fiscalizadores` VALUES ('32', '85582', '20-11990643-2', '11990643', 'TOCE Nestor Alfonso', '1', '61', null, 'Urquiza Nº 327', '02262-15636899', null, null, null, '0', '1', null, '1714', '2020-01-07', '2338');
INSERT INTO `fiscalizadores` VALUES ('33', '89618', '27-05939786-4', '05939786', 'ZITAROSA Ana', '1', '45', null, 'Grecia Nº 964 - Mar del Plata', '0223-154491112', null, null, null, '0', '1', null, '2374', '2018-04-20', '2338');
INSERT INTO `fiscalizadores` VALUES ('34', '89620', '20-11232610-4', '11232610', 'ZUBILLAGA Carlos', '1', '92', null, 'Rondeau Nº 370', '02923-15428355', '3606', '8174', 'carlos.zubi@hotmail.com', '0', '1', null, '2375', '2020-01-07', '2338');
INSERT INTO `fiscalizadores` VALUES ('35', '89684', '20-11685917-4', '11685917', 'VARA Julio', '1', '27', null, 'Mendoza Nº 95 esq. Moreno', '0221-156050733', null, null, null, '1', '1', 'CARNICOS', '2376', null, null);
INSERT INTO `fiscalizadores` VALUES ('36', '90007', '27-12410624-4', '12410624', 'BRACCO Lilian', '1', '55', null, '453 Nº 3680 e/ 131 y 132 - City Bell', '0221-156198147', null, null, null, '0', '1', null, '623', '2019-02-15', '2338');
INSERT INTO `fiscalizadores` VALUES ('38', '90015', '20-14832015-3', '14832015', 'HAUN Daniel', '1', '76', null, '53 Nº 2528', '02262-15414119', null, null, null, '1', '1', 'CARNICOS', '2377', null, null);
INSERT INTO `fiscalizadores` VALUES ('39', '54503', '20-07655535-5', '7655535', 'PIGNANELLI Gilberto Oscar', '1', '80', null, 'Gutierrez Nº 1825 Barrio UPCN', '02396-15518075', null, null, null, '1', '1', 'CARNICOS', '2378', null, null);
INSERT INTO `fiscalizadores` VALUES ('40', '90026', '20-22025799-2', '22025799', 'TRONCARO Fernando', '1', '59', null, 'Sarmiento Nº 49 - Vedia', '02362-15451541', null, null, null, '1', '1', 'CARNICOS', '2379', null, null);
INSERT INTO `fiscalizadores` VALUES ('41', '90032', '20-11043380-9', '11043380', 'VASALO Jorge Alberto', '1', '110', null, 'Entre Rios Nº 2096 - Olivos', '011-1544110368', null, null, null, '1', '1', 'CARNICOS', '553', null, null);
INSERT INTO `fiscalizadores` VALUES ('42', '90033', '20-20648067-0', '20648067', 'VISCARDI Daniel', '1', '107', null, 'Mariano Moreno Nº 111 - 30 de Agosto', '02392-15625050', null, null, null, '1', '1', 'CARNICOS', '2380', null, null);
INSERT INTO `fiscalizadores` VALUES ('46', '141408', '20-11045163-7', '11045163', 'UGARTE salvador', '99', '0', null, '11 de septiembre N° 1760 piso 14 dto 6', null, '7740', null, null, '0', '1', null, '551', '2018-03-08', '2338');
INSERT INTO `fiscalizadores` VALUES ('47', '150388', '23-16084706-9', '16084706', 'URIBE ECHEVERRIA gabriel', '1', '1', '1', 'boulevar alsina N° 1286', '', '6431', '', '', '1', '1', 'CARNICOS', '888', '2014-05-28', '13');
INSERT INTO `fiscalizadores` VALUES ('48', '119', '23-17956624-9', '17956624', 'Ledesma Daniel ', '1', '55', '1', 'calle7', null, '11111', null, null, '0', '1', 'CARNICOS', '13', '2020-01-07', '2338');
INSERT INTO `fiscalizadores` VALUES ('49', '62612', '20-11307390-0', '11307390', 'CARRETTONI HORACIO JORGE', '1', '55', '1', '34 n° 234', null, '2222', null, null, '1', '1', 'CARNICOS', '2483', '2014-10-14', '13');
INSERT INTO `fiscalizadores` VALUES ('50', '96579', '27-11234987-7', '11234987', 'VIVALDI Diana Beatriz', '1', '110', '6', 'Entre Rios 2571', '(011) 4796-9414 / 15-5630-2264', '4441', null, 'dianavivaldi@hotmail.com', '1', '2', 'OTROS', '2497', '2016-05-27', '2338');
INSERT INTO `fiscalizadores` VALUES ('51', '96370', '20-22691044-2', '22691044', 'URRUCHUAGA Martin Hernan', '1', '82', '1', 'San Martin 996', '(02477) 410-606 / 15-530-457', '9940', null, 'mhurruchuaga@yahoo.com', '1', '2', 'OTROS', '2498', '2016-04-13', '2338');
INSERT INTO `fiscalizadores` VALUES ('52', '96569', '27-22434096-1', '22434096', 'VIDELA  Ana Laura', '1', '32', '1', 'Jorge Newbery 171', '(011) 4255-5315 / 15-4186-5781', '8287', null, 'alauravidela@yahoo.com.ar', '0', '2', 'OTROS', '2499', '2018-11-05', '2338');
INSERT INTO `fiscalizadores` VALUES ('53', '157577', '20-08499166-0', '08499166', 'BASS juan carlos', '1', '131', '3', 'calle s/n', null, '2427', null, null, '1', '2', 'OTROS', '399', '2016-04-13', '2338');
INSERT INTO `fiscalizadores` VALUES ('54', '138457', '20-11875772-7', '11875772', 'MUSICCO miguel angel', '1', '27', '1', 'ricchieri 113', '02241 425642', '666', null, null, '0', '1', 'OTROS', '2504', '2017-08-03', '2338');
INSERT INTO `fiscalizadores` VALUES ('55', '134', '20-20416813-0', '20416813', 'Perez Damian', '1', '55', '0', '7 748', '4207612', null, null, null, '1', '1', 'CARNICOS', '9', null, null);
INSERT INTO `fiscalizadores` VALUES ('67', '4544', '20-18343950-3', '18343950', 'BAZTERRICA Sergio Cesar', '1', '103', '1', 'BARRIO TERMINAL CASA 104', '2494598259', null, '', 'serbaxterrica@yahoo.com.ar', '1', '1', 'CARNICOS', '881', '2016-04-13', '9');
INSERT INTO `fiscalizadores` VALUES ('68', '65148', '20-11952407-6', '11952407', 'GALARZA JORGE RAUL', '1', '109', '1', 'calle 12 Nº 540 e/ 24 y 25', '02345-15410038', null, '', 'dr_jorgegalarza@hotmail.com', '1', '1', 'CARNICOS', '947', '2016-04-13', '2338');
INSERT INTO `fiscalizadores` VALUES ('69', '89512', '23-10706021-9', '10706021', 'PRIETO Alfonso Maria', '1', '77', '1', 'Cardenal Pironio 1339', '02317-15469180', '2444', null, 'alfonsoprieto54@yahoo.com.ar', '1', '2', 'OTROS', '1814', '2016-05-19', '2338');
INSERT INTO `fiscalizadores` VALUES ('70', '83672', '20-31999151-5', '31999151', 'ROCH juan manuel', '1', '105', '1', 'yrigoyen', '02245 492028', '11493', '', 'Vetbataraz@gmail.com', '1', '1', 'CARNICOS', '1661', '2016-05-05', '2338');
INSERT INTO `fiscalizadores` VALUES ('71', '103', '20-23957024-1', '23957024', 'Steketee Sebastián', '1', '100', '1', '9 de Julio 1452', '02225481553', '51332', '', 'ing_ssteketee@yahoo.com.ar', '1', '1', 'AGROQUIMICOS', '1314', '2016-05-11', '2338');
INSERT INTO `fiscalizadores` VALUES ('72', '138272', '20-27739170-9', '27739170', 'MENDEZ Juan Manuel', '1', '115', '1', '128 n° 849 - El Dique', '(0221) 422-2368 / 15-536-9539', '12057', null, 'mendez-vet@hotmail.com', '1', '1', 'CARNICOS', '3012', '2019-08-13', '2340');
INSERT INTO `fiscalizadores` VALUES ('73', '191750', '20-18333310-1', '18333310', 'GORGA LUIS ALBERTO', '1', '55', '6', 'DIAG.424 ECNO.CENTENAR.PIRIA - -VILLA ELISA', '0221-154883449 ', null, '1894', '', '1', '1', 'AGROQUIMICOS', '2792', '2016-05-15', '2338');
INSERT INTO `fiscalizadores` VALUES ('74', '90045', '20-13012493-4', '13012493', 'MAZZEI Pablo', '1', '36', '1', 'Moreno Nº 274', '02243-15408608', null, null, 'frigsanantonio@s16.coopenet.com.ar', '1', '1', 'CARNICOS', null, '2018-11-06', '2338');
INSERT INTO `fiscalizadores` VALUES ('76', '204531', '23-26708103-4', '26708103', 'SPAHR Maria Emilia', '1', '55', '9', '11 N° 1645', '0221 15 5894613', '52539', '', 'emilia.spahr@gmail.com', '1', '1', 'CARNICOS', '2338', '2016-05-20', '2338');
INSERT INTO `fiscalizadores` VALUES ('77', '205098', '23-10141382-9', '10141382', 'RAVLIC Adriano Leandro', '1', '55', '1', '29 n° 627', '0221(156383066)', null, '', 'aravlic2003@gmail.com', '1', '1', 'CARNICOS', '3017', '2016-05-24', '2338');
INSERT INTO `fiscalizadores` VALUES ('78', '144177', '27-24835356-8', '24835356', 'APAOLAZA maria soledad', '1', '65', '1', '', '', null, '', '', '1', '1', 'CARNICOS', '3018', '2016-05-24', '2338');
INSERT INTO `fiscalizadores` VALUES ('79', '205716', '27-14627572-4', '14627572', 'PERFUMO Patricia Andrea', '1', '41', '1', '11', null, null, null, null, '0', '1', null, '3079', '2020-05-19', '2338');
INSERT INTO `fiscalizadores` VALUES ('80', '63790', '20-16546819-9', '16546819', 'DESTAVILLE SEBASTIAN', '1', '28', '1', 'Garibaldi Nº 115', '02346-15558279', '5348', null, 'sdestaville@hotmail.com', '0', '1', null, null, '2018-03-08', '2338');
INSERT INTO `fiscalizadores` VALUES ('81', '90046', '20-14435704-4', '14435704', 'TABOSSI Benitez Hector', '1', '102', '1', 'Tucuman Nº 354', '02324-15649972', null, null, 'picotabossi@hotmail.com', '1', '1', 'CARNICOS', '885', '2016-07-21', '13');
INSERT INTO `fiscalizadores` VALUES ('82', '90003', '20-11794128-1', '11794128', 'ECHEVERS Gustavo', '1', '92', '1', 'Lucio Vicente Lopez Nº 980', '02923-15423723', null, null, 'distrito12@s8.coopenet.com.ar', '1', '1', 'CARNICOS', '880', '2016-07-21', '13');
INSERT INTO `fiscalizadores` VALUES ('83', '58817', '20-30094178-9', '30094178', 'CHIMONDEGUY IGNACIO', '1', '94', '1', 'Rawson 2063', '024915463146', '12212', '6720', null, '0', '1', 'CARNICOS', null, '2017-04-20', '2338');
INSERT INTO `fiscalizadores` VALUES ('84', '309836', '20-14551894-7', '14551894', 'CACACE Pablo Alberto', '1', '8', '1', 'Kelly 700', '226615515954', '5343', '7620', 'cacacep@yahoo.es', '1', '1', 'CARNICOS', '4389', '2017-11-24', '2338');
INSERT INTO `fiscalizadores` VALUES ('85', '19783', '23-32533111-9', '32533111', 'ALVARO martiniano', '1', '55', '1', null, null, null, null, null, '0', '1', null, '1320', '2018-04-20', '2338');
INSERT INTO `fiscalizadores` VALUES ('86', '355765', '20-24369873-2', '24369873', 'GARCIA oscar sixto', '1', '89', '1', 'maipu 532', '2302417607', '9892', '', 'vetergar@hotmail.com', '1', '1', 'CARNICOS', '5323', '2018-07-17', '2338');
INSERT INTO `fiscalizadores` VALUES ('87', '93440', '20-22042723-5', '22042723', 'MASTROMARINO Martin Alejandro', '1', '45', '1', 'Aragon 5776', '(0223) 479-1074/15-439-9643', null, '', 'mastromarino@copetel.com.ar', '1', '2', 'OTROS', '4804', '2018-08-07', '2338');
INSERT INTO `fiscalizadores` VALUES ('88', '225587', '20-31611916-7', '31611916', 'RUMI Emanuel', '1', '7', '1', 'Guardia Vieja 620', '(0291) 481-7508 / 15-503-04197', '12502', null, 'emanuel_rumi@yahoo.com.ar', '1', '2', 'OTROS', '5616', '2018-11-12', '2338');
INSERT INTO `fiscalizadores` VALUES ('89', '285827', '20-18428031-1', '18428031', 'MAZACANE Juan Carlos', '1', '76', '1', '88 2812', '02262-15502510', null, '', 'mazacanej@yahoo.com', '1', '1', 'AGROQUIMICOS', '3862', '2018-11-23', '2338');
INSERT INTO `fiscalizadores` VALUES ('90', '191488', '27-28299822-5', '28299822', 'CERIANI LORENA VANESA', '1', '108', '1', 'Esteban Echeverria 2132 -TRES ARROYOS', '02983-15500971', null, '7500', 'lorenaceriani80@gmail.com', '1', '1', 'AGROQUIMICOS', '2851', '2018-11-23', '2338');
INSERT INTO `fiscalizadores` VALUES ('91', '288538', '20-27302111-7', '27302111', 'IBARRA CRISTIAN MIGUEL', '1', '24', '1', 'PRADERA DEL GANSO 666 BARRIO ISLAS MALVINAS', '0292615417346', null, '', 'cristianibarra79@yahoo.com.ar', '1', '1', 'AGROQUIMICOS', '3894', '2018-11-23', '2338');
INSERT INTO `fiscalizadores` VALUES ('92', '191315', '23-14371160-9', '14371160', 'CLUA ARIEL ADRIAN', '1', '55', '1', '37 1276 -LA PLATA', '0221-421-5782  ', null, '1900', 'arielclua@hotmail.com', '1', '1', 'AGROQUIMICOS', '5643', '2018-11-23', '2338');
INSERT INTO `fiscalizadores` VALUES ('93', '75047', '20-18252328-4', '18252328', 'URANGA  Miguel Angel', '1', '55', '1', '603 678', '', null, '', '', '1', '1', 'AGROQUIMICOS', '2006', '2018-12-26', '2338');
INSERT INTO `fiscalizadores` VALUES ('94', '191395', '27-12991405-5', '12991405', 'PISCHEDDA GABRIELA', '1', '82', '1', 'B. FERNANDEZ MORENO 599 -PERGAMINO', '(021)83-6281   ', null, '2700', 'gabriela2502@yahoo.com.ar', '1', '1', 'AGROQUIMICOS', '2532', '2018-12-26', '2338');
INSERT INTO `fiscalizadores` VALUES ('95', '191484', '27-28150246-3', '28150246', 'MARCONI VERONICA CECILIA', '1', '93', '1', 'CABRAL 2845 -SALADILLO', '', null, '7260', 'veronicamarconi1@gmail.com', '1', '1', 'AGROQUIMICOS', '3059', '2018-12-26', '2338');
INSERT INTO `fiscalizadores` VALUES ('96', '133919', '27-21449493-6', '21449493', 'PRIEGUE Andrea Alejandra', '1', '55', '1', 'calle 10 N  1336 - 6  \"A\"', '(0221) 424-0749 / 15-5901544', null, '', 'andrealea33@yahoo.com.ar', '1', '1', 'AGROQUIMICOS', '2434', '2018-12-27', '2338');
INSERT INTO `fiscalizadores` VALUES ('97', '156026', '20-16583519-1', '16583519', 'TEDESCO Gustavo', '1', '14', '1', 'Belgrano 269', '03489-437760', null, '', 'gustavotedesco@gmail.com', '1', '2', 'OTROS', '5520', '2018-12-28', '2338');
INSERT INTO `fiscalizadores` VALUES ('98', '181869', '20-14942889-6', '14942889', 'VAQUERO PEDRO EDGARDO', '1', '49', '1', 'ALSINA 334', '02355698509', null, '', 'pevaque62@yahoo.com', '1', '1', 'AGROQUIMICOS', '3036', '2019-02-11', '2338');
INSERT INTO `fiscalizadores` VALUES ('99', '381614', '20-11039341-6', '11039341', 'GALLICET jorge ricardo', '1', '24', '1', 'uriburu 593', '0291154424786', null, '', 'jrgallicet@yahoo.com.ar', '1', '1', 'AGROQUIMICOS', '2530', '2019-02-11', '2338');
INSERT INTO `fiscalizadores` VALUES ('100', '394901', '20-13074086-4', '13074086', 'OTAEGUI GALARRAGA CARLOS JOSE', '1', '95', '1', 'Nogueira 31', null, null, null, null, '1', '1', 'AGROQUIMICOS', '1982', '2019-02-15', '2338');
INSERT INTO `fiscalizadores` VALUES ('101', '194539', '27-14724073-8', '14724073', 'ALONSO Analia', '1', '103', '1', 'SANTAMARINA 477', '0249-4428822', null, null, 'ani.alonsodeco@gmail.com', '1', '1', 'AGROQUIMICOS', '2786', '2019-02-15', '2338');
INSERT INTO `fiscalizadores` VALUES ('103', '381618', '20-08318471-0', '08318471', 'KYTKA jose miguel', '1', '24', '1', 'san martin 148', '0111559483062', null, null, 'jmkytka@gmail.com', '1', '1', 'AGROQUIMICOS', null, '2019-02-15', '2338');
INSERT INTO `fiscalizadores` VALUES ('104', '309235', '20-22210071-3', '22210071', 'ROTH Sergio Fabian', '1', '78', '1', 'Olavarria', null, null, null, 'mundoacuario86@gmail.com', '1', '2', 'OTROS', '6020', '2019-04-12', '2338');
INSERT INTO `fiscalizadores` VALUES ('105', '91319', '20-14425555-1', '14425555', 'COMPAGNUCCI Gustavo David', '1', '45', '1', 'Funes 881', '(0223) 15-682-2576', null, null, 'gustavocompagnucci@yahoo.com.ar', '1', '2', 'OTROS', '6130', '2020-01-11', '2364');
INSERT INTO `fiscalizadores` VALUES ('106', '444614', '23-28129058-4', '28129058', 'LIZAUR Daniela', '1', '115', '1', 'Ensenada', null, '11474', null, null, '1', '1', 'CARNICOS', '2340', '2019-11-11', '2364');
INSERT INTO `fiscalizadores` VALUES ('107', '462753', '27-23569737-3', '23569737', 'LARGUIA Maria Laura', '1', '55', '1', 'Plaza Brandsen  N 81   2P A', '221 154205250', null, null, 'mlaura10@hotmail.com', '1', '2', 'OTROS', '7024', '2019-11-07', '2338');
