-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 165.227.255.217    Database: agroug
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `causas_afecciones_tratamiento`
--

DROP TABLE IF EXISTS `causas_afecciones_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `causas_afecciones_tratamiento` (
  `afeTraid` int(11) NOT NULL AUTO_INCREMENT,
  `cauAfeId` int(11) NOT NULL,
  `traId` int(11) NOT NULL,
  `afeTraDosisCantidad` varchar(50) DEFAULT NULL,
  `afeTraDosisAplicacion` text,
  `afeModoAplicacion` text,
  PRIMARY KEY (`afeTraid`),
  KEY `fk_EnfTra_idTratamiento_idx` (`traId`),
  KEY `fk_DiagAfe_idDiagnostico_idx` (`cauAfeId`),
  CONSTRAINT `fk_DiagAfe_idDiagnostico` FOREIGN KEY (`cauAfeId`) REFERENCES `diagnostico_causas_afecciones` (`cauAfeId`),
  CONSTRAINT `fk_EnfTra_idTratamiento` FOREIGN KEY (`traId`) REFERENCES `tratamiento` (`traid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `causas_afecciones_tratamiento`
--

LOCK TABLES `causas_afecciones_tratamiento` WRITE;
/*!40000 ALTER TABLE `causas_afecciones_tratamiento` DISABLE KEYS */;
INSERT INTO `causas_afecciones_tratamiento` VALUES (1,1,1,'0.5 l/ha','0,3 - 0,35 l/ha Aplicar al inicio de la infeccion y al embuchamiento.','Agregar la cantidad necesaria en la mitad del volumes de agua requerido, agitar lo suficiente hasta lograr una mezcla homogénea y luego complete el resto del volumen con agua.'),(2,2,3,'0,25 l/ha','Para la Mosca minadora aplicar 0,3 l/ha al realizar una evaluación y encontrar un 25% de afectación.','Para efectuar las aplicaciones se recomienda previamente calibrar la bomba de aplicaciones para determinar la cantidad de mezcla necesaria. Se debe diluir la cantidad dosificada del producto en un poco de agua hasta formar una mezcla homogenea, finalmente agregar el resto de agua necesario y se realiza la aplicación recomendada. aplicarlo unifirmemente al follaje de las plantas.'),(3,3,4,'3 a 4 l/ha','En presencia de la caminadora (Oryza sativva, rottboelliia spp) aplicar 2 l/ha en suelos livianos y 4 l/ha en suelos pesados.','Puede aplicarse con 2,4 DAmina e insectisidas poretroides como Shurigan ®. Si desea aokucar insectisidas a base de Carbaril y Bentiocarb luego PAROLI®, espere 25 días. Si desea aplicar insecticidas fosforados luego de PAROLI® espere 8 días.'),(4,4,2,'100 g/l','','Aplicar PRELUDE® cubriendo totalmente a las plantas. Para preparar la mezcla: Diluir la cantidad necesaria del producto en un poco de agua hasta formar una pasta homgénea. Verter esta pasta en el tanque de pulverización conteniendo la cantidad total de agua y agitar la dilución hasta formar un caldo homogéneo.'),(5,5,5,'500 cc / l','','Agregar la cantidad de Diabolo® , directamente al tanque conteniendo agua, manteniendo el agitador en movimiento constante hasta formar una mezcla homogénea.'),(6,7,2,'100 g/ha',NULL,'Aplicar PRELUDE® cubriendo totalmente a las plantas. Para preparar la mezcla: Diluir la cantidad necesaria del producto en un poco de agua hasta formar una pasta homgénea. Verter esta pasta en el tanque de pulverización conteniendo la cantidad total de agua y agitar la dilución hasta formar un caldo homogéneo.'),(7,8,7,'0,3 l/ha','0,2 l/ha iniciar la aplicación cuando la planta presente los primeros sintomas de la enfermedad o en la mitad del macollamiento. Realizar dos aplicaciones con intervalos de 14 días o en función del nivel de la enfermedad.','En el tanque de aplicación agregue 50% de la cantidad requerida de agua, luego adiciones a dosis de NOMAD recomendada, agite hasta conseguir una mezcla homogénea, finalmente agregue el resto de agua.'),(8,9,8,'0,3 l/ha','A la presencia del Saltón (sogatodes oryzicola) aplicar 0,3 - 0,4 l/ha','Verter la cantidad en el volumen de agua requerido y agitar lo suficiente hasta lograr una mezcla en cosntante agitación y asperjarla el mismo día de preparada. Procurar un cubrimiento total y uniforme en el follaje para alcanzar resultados satisfactorios.'),(9,10,9,'500 cc/ha','Para la mosca minadora, Langosta Spodoptera, Chinche Nezera spp y Gusano Cogollero se aplica 0,5 a 1 l/ha al aparecer los primeros insectos o daños.','Para efectuar las aplicaciones se recomienda previamente calibrar la bomba de aplicación para determinar la cantidad de mezcla necesaria. Para la preparación de la mezcla, se debe diluir la cantidad dosificada del producto en un poco de agua hasta formar una mezcla homogénea, finalmente agregar el resto de agua necesario y se realiza la aplicación. Aplicarlo uniformemente al follaje de las plantas. No exceder la dosis y el volumen de aplicación recomendados. No debe aplicarse en contra del viento ni cuando la velocidad de éste sea mayor a 10 km/hora. Utilizar la mezcla el mismo día de preparada.'),(10,11,9,'750 cc/ha','Para la mosca minadora, Langosta Spodoptera, Chinche Nezera spp y Gusano Cogollero se aplica 0,5 a 1 l/ha al aparecer los primeros insectos o daños.','Para efectuar las aplicaciones se recomienda previamente calibrar la bomba de aplicación para determinar la cantidad de mezcla necesaria. Para la preparación de la mezcla, se debe diluir la cantidad dosificada del producto en un poco de agua hasta formar una mezcla homogénea, finalmente agregar el resto de agua necesario y se realiza la aplicación. Aplicarlo uniformemente al follaje de las plantas. No exceder la dosis y el volumen de aplicación recomendados. No debe aplicarse en contra del viento ni cuando la velocidad de éste sea mayor a 10 km/hora. Utilizar la mezcla el mismo día de preparada.'),(11,12,5,'600 cc/ha','Para Chinches (Oebalus ssp) se aplica 0,8 cm3/100 litros de agua al aparecer un chinche en cinco plantas.','Agregar la cantidad de Diabolo® , directamente al tanque conteniendo agua, manteniendo el agitador en movimiento constante hasta formar una mezcla homogénea.'),(12,13,10,'1 a 1,5 l/ha','Se aplica en las etapas de post-temprana(malezas de 1 a 3 hojas aplicar 1 l/ha), post-media (malezas de 4 hojas a un macollo aplicar 1,3 l/ha) y post-tardia(malezas de mas de un macollo aplicar 1,5 l/ha) tales como paja colorada, guarda rocio, paja blanca, paja peluda, caminadora y paja de burro','Para preparar la mezcla  es necesario  colocar  la cantidad necesaria de BACANOK®,  en el tanque de preparación el cual debe tener su nivel de agua únicamente hasta la mitad y luego completar al volumen total,  siempre agitando constantemente.  Puede ser aplicado con los equipos de aplicación terrestre convencionales previamente calibrados y con un volumen de descarga de 250-300 l/ha.'),(13,14,11,'350 g/ha','En presencia de Coquito (Cyperus rotundus), bledo (amaranthus hybridus) y batatilla (pomea indica) aplicar 0,3 kh/ha','Para prepara la mezcla se adiciona la cantidad de herbicida establecido en el volumen de agua requerido por hectárea, previa calibración. La mezcla debe mantenerse en constante agitación y rociar uniformemente sobre el cultivo malezas.'),(14,15,12,'5 a 15 g/ha','En presencia de la Achonilla (Momordica charantea), Betilla (Ipomoea), Verdolaga(porlulaca olearacia), Mangona (commelina difusa), Bledo(amaranthus), lechosa (euphorbia), Cabezona (ciperus ferax), clavo de agua (jussiea) aplicar 10 a 15 g/ha esto suministrar en post emergencia en malezas de 3 a 5 hjas en activo crecimiento.','Se puede aplicar con diferentes equipos de fumigación (Bomba, Mochila, Bomba de motor, Aguilón, etc). Es importante regular el pH de agua a 5.5 con Adifix®. Está formulado y recomendado para usarlo con arroz, caña de azúcar, café, palma africana y potreros.');
/*!40000 ALTER TABLE `causas_afecciones_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad_geocalizacion`
--

DROP TABLE IF EXISTS `ciudad_geocalizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ciudad_geocalizacion` (
  `ciuGeoId` int(11) NOT NULL AUTO_INCREMENT,
  `proId` int(11) NOT NULL,
  `tipSueId` int(11) NOT NULL,
  `ciuGeoNombre` varchar(50) DEFAULT NULL,
  `ciuGeoDescripcion` text,
  `ciuGeoEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`ciuGeoId`),
  KEY `fk_provincia_CiudadCanton_idx` (`proId`),
  KEY `fk_ciudadGeocalizacion_TipoSuelo_idx` (`tipSueId`),
  CONSTRAINT `fk_ciudadGeocalizacion_TipoSuelo` FOREIGN KEY (`tipSueId`) REFERENCES `tipos_suelos` (`tipsueid`),
  CONSTRAINT `fk_provincia_CiudadCanton` FOREIGN KEY (`proId`) REFERENCES `provincias` (`proid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad_geocalizacion`
--

LOCK TABLES `ciudad_geocalizacion` WRITE;
/*!40000 ALTER TABLE `ciudad_geocalizacion` DISABLE KEYS */;
INSERT INTO `ciudad_geocalizacion` VALUES (1,4,1,'Guayaquil','Guayas y tipo de suelo desconocido',1);
/*!40000 ALTER TABLE `ciudad_geocalizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cosecha_cultivos_estaciones`
--

DROP TABLE IF EXISTS `cosecha_cultivos_estaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cosecha_cultivos_estaciones` (
  `cosCulId` int(11) NOT NULL AUTO_INCREMENT,
  `estId` int(11) NOT NULL,
  `culId` int(11) NOT NULL,
  `cosCulTiempoCosecha` varchar(50) DEFAULT NULL,
  `cosCulDescripcion` text,
  PRIMARY KEY (`cosCulId`),
  KEY `fk_cultivoEstaciones_Estaciones_idx` (`estId`),
  KEY `fk_cultivoEstaciones_Cultivos_idx` (`culId`),
  CONSTRAINT `fk_cultivoEstaciones_Cultivos` FOREIGN KEY (`culId`) REFERENCES `cultivos` (`culid`),
  CONSTRAINT `fk_cultivoEstaciones_Estaciones` FOREIGN KEY (`estId`) REFERENCES `estaciones` (`estid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cosecha_cultivos_estaciones`
--

LOCK TABLES `cosecha_cultivos_estaciones` WRITE;
/*!40000 ALTER TABLE `cosecha_cultivos_estaciones` DISABLE KEYS */;
INSERT INTO `cosecha_cultivos_estaciones` VALUES (1,1,1,'0','Arroz en invierno');
/*!40000 ALTER TABLE `cosecha_cultivos_estaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cultivos`
--

DROP TABLE IF EXISTS `cultivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cultivos` (
  `culId` int(11) NOT NULL AUTO_INCREMENT,
  `culNombre` varchar(100) DEFAULT NULL,
  `culNombreCientifico` varchar(100) DEFAULT NULL,
  `culDescripcion` text,
  `culResenia` varchar(100) DEFAULT NULL,
  `culRutaImagenMax` text,
  `culRutaImagenMin` text,
  `culEstado` tinyint(1) DEFAULT '1',
  `culPrincipal` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`culId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultivos`
--

LOCK TABLES `cultivos` WRITE;
/*!40000 ALTER TABLE `cultivos` DISABLE KEYS */;
INSERT INTO `cultivos` VALUES (1,'Arroz','Oriza Sativa','El arroz es uno de los cultivos mas importantes en nuestro país ya sea por su incidencia económica \nasí como por su importancia y representatividad en la dieta ecuatoriana. El origen de este virtuoso cultivo data de hace \n10000 años en las zonas tropicales de Asia donde existía arroz tropical pero en China tuvo su verdadero desarrollo y expansión \nal resto del mundo. En el Ecuador los cultivos de mayor extensión y representación económica se encuentran en la provincia \ndel Guayas (52%) y los Ríos (42%). El arroz se desarrolla bajo condiciones de trópico húmedo pudiéndose sembrar desde el \nnivel del mar hasta 1500 msnm pero sus rendimientos disminuyen notablemente a mayor altura, y con temperaturas mínimas de \n22º y máximas de 30º ya que a mas temperatura se pierde su capacidad germinativa, siendo lo optimo 22° a 30°. Sus exigencias\n en suelos varían desde arenosa, arcillosas, mixtas y sobre todo con alta capacidad de retención de humedad. ','El arroz es uno de los cultivos mas importantes en nuestro país','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/cultivos/arroz.jpg','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/cultivos/arroz.jpg',1,1),(2,'Cacao','Theobroma Cacao','El cultivo de cacao tiene gran importancia dentro de la economía del Ecuador por tratarse de un producto de exportación y materia prima para la fabricación de chocolates. El cacao producido en el país es poseedor de un buen aroma, característica indispensable para el mercado internacional. Según datos del III Censo Nacional Agropecuario, en el Ecuador se cultivan 243.146 hectáreas de cacao como monocultivo, y además se considera como cacao asociado a otros cultivos una superficie de 191.272 hectáreas. La provincia que más cultiva cacao solo es la provincia de Los Ríos con 58.572 hectáreas seguida por la provincia de Manabí y Guayas con una superficie sembrada de 52.577 y 51.227 hectáreas respectivamente. En el caso de cultivo asociado, la provincia de Manabí es la primera provincia con una superficie cultivada de 48.423 hectáreas.','El cultivo de cacao tiene gran importancia dentro de la economía del Ecuador','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/cultivos/cacao.jpg','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/cultivos/cacao.jpg',1,1),(3,'Café','Cafetos','EL café tiene su origen en África – Etiopia luego paso a Europa y después de algunos siglos llego al continente americano.\nAl Ecuador el café llego en los años 1800 y desde entonces ha tenido importantes aportaciones como fuente de empleo y de divisas al país\n\nEl café se siembra y se cosecha en el litoral ecuatoriano y parte del oriente, la provincia de Manabí fue uno de preponderante del cultivo del Café, a partir del año 1860 ya se cultivaba el producto en este sector\n','El café se siembra y se cosecha en el litoral ecuatoriano y parte del oriente','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/cultivos/cafe.jpg','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/cultivos/cafe.jpg',1,1),(4,'Banano','Musa Paradisiaca','El Ecuador es el primero productor mundial de banano, la calidad de su fruta es lo que hace que en gran parte del mundo se consuma nuestro banano, es líder por más de cuatro décadas en el ámbito internacional bananero, es fundamental en el comercio mundial, ya que Ecuador es el primer exportador de esta fruta desde 1952. Ecuador goza de condiciones climáticas excepcionales, las que junto a la riqueza de su suelo, han permitido que el país se convierta en un productor agrícola de excelente calidad. Existe disponibilidad de la fruta todo el año. El banano es un gran alimento por el potasio que contiene y debido a su textura, es ideal para niños y ancianos. Las variedades que el Ecuador ofrece al mercado internacional son: Cavendish, Orito y Rojo. En los últimos años se ha desarrollado la agricultura orgánica, dando como resultado el banano con certificación orgánica y también otras con certificaciones amigables con el medio ambiente, lo laboral y lo social. ','Las variedades que el Ecuador ofrece al mercado internacional son: Cavendish, Orito y Rojo.','https://raw.githubusercontent.com/proyectofci/proyecto/master/banana.jpg','https://raw.githubusercontent.com/proyectofci/proyecto/master/banana.jpg',1,0);
/*!40000 ALTER TABLE `cultivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostico`
--

DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diagnostico` (
  `diaId` int(11) NOT NULL AUTO_INCREMENT,
  `ponId` int(11) NOT NULL,
  `diaDescripcion` text,
  `diaEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`diaId`),
  KEY `fk_diagnosrico_ponderacion_idx` (`ponId`),
  CONSTRAINT `fk_diagnosrico_ponderacion` FOREIGN KEY (`ponId`) REFERENCES `ponderaciones` (`ponid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (1,1,'Arroz Guayas Invierno',1),(2,2,'Cacao invierno guayas',1);
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostico_causas_afecciones`
--

DROP TABLE IF EXISTS `diagnostico_causas_afecciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diagnostico_causas_afecciones` (
  `cauAfeId` int(11) NOT NULL AUTO_INCREMENT,
  `diaId` int(11) NOT NULL,
  `tipAfeId` int(11) NOT NULL,
  `cauAfeNombreComun` varchar(100) DEFAULT NULL,
  `cauAfeNombreCientifico` varchar(100) DEFAULT NULL,
  `cauAfeDescripcion` text,
  `cauAfeRutaImagen` text,
  PRIMARY KEY (`cauAfeId`),
  KEY `fk_DiaTipAfecciones_Diagnostico_idx` (`diaId`),
  KEY `fk_DiaTipAfecciones_Afecciones_idx` (`tipAfeId`),
  CONSTRAINT `fk_DiaTipAfecciones_Afecciones` FOREIGN KEY (`tipAfeId`) REFERENCES `tipos_afecciones` (`tipafeid`),
  CONSTRAINT `fk_DiaTipAfecciones_Diagnostico` FOREIGN KEY (`diaId`) REFERENCES `diagnostico` (`diaid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico_causas_afecciones`
--

LOCK TABLES `diagnostico_causas_afecciones` WRITE;
/*!40000 ALTER TABLE `diagnostico_causas_afecciones` DISABLE KEYS */;
INSERT INTO `diagnostico_causas_afecciones` VALUES (1,1,1,'Quemazon','Pyricularia Oryzae','Se desarrolla cuando las temperaturas oscilan entre 22º - 29º y se alcanzan elevadas humedades relativas en torno al 90%. Si las concentraciones en Nitrógeno del agua de riego son elevadas se favorece el desarrollo del hongo; esta es una de las posibles causas de la última infección en la Albufera de Valencia, ya que parte del agua con la que se riega procede de una depuradora cercana.','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/enfermedades/quemazon.jpg'),(2,1,2,'Mosca Minadora','Hydrellia Sp','','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/plagas/mosca_%20minadora.jpg'),(3,1,3,'Hoja Angosta','Hoja Angosta','','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/malezas/hoja_angosta.jpg'),(4,2,1,'Escoba de bruja del cacao','Crinipellis perniciosa','','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/enfermedades/escoba_de_bruja.jpg'),(5,2,2,'Chinche del cacao','Monalonium dissimulatum','','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/plagas/chinche_del_cacao.jpg'),(6,2,3,'Bledo','Amarenthus dubius','','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/malezas/bledo.jpg'),(7,1,1,'Pudricion de la vaina','Sarocladium Oryzae','Las lesiones aparecen en las vainas de las hojas superiores y en la vaina de la hoja bandera, estas lesiones son oblongas y alargadas con borde café y centro grisáceo. A medida que la enfermedad progresa, las lesiones se alargan y coleasen, cubriendo gran parte de la vaina de la hoja. Infecciones severas y tempranas no permiten que la panícula emerja completamente y en algunas ocasiones se pudra; las panículas que logran emerger presentan flores curvas y de color café rojizo a café oscuro. La esterilidad, y el vaneamiento de los granos son síntomas que también están asociados con el ataque de esta enfermedad.','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/enfermedades/pudricion_de_la_vaina.jpg'),(8,1,1,'Complejo Manchado del grano','Rhizoctonia Oryzae','Plaga que ataca todas las partes de la planta, pero los efectos más importantes se producen en las hojas, en donde aparecen manchas castañas; en los ataques intensos, las hojas se secan antes que las plantas maduren. Manchas pardas-negras, circulares u ovaladas, de diferente tamaño y con un centro de color blanquecino-azul aparecen sobre las hojas, las vainas y los cotiledones. En una fase más avanzada de la enfermedad se vienen presentando también manchas negras sobre los tallos y las glumas de las inflorescencias maduras. El crecimiento de la planta se inhibe y la formación de las semillas se obstaculiza. En los semilleros infectados, las plantitas se marchitan y mueren así que frecuentemente se producen pérdidas totales. Se han observado perdidas en la paja entre 5 y 29% y en el grano entre el 11 y el 37%. \r \r RHIZOCTONIA ORYZAE: Los síntomas se presentan inicialmente sobre las vainas y luego en las hojas de la base del tallo. Las lesiones típicas son de forma elíptica un poco irregular, de 2 a 3 cm. de longitud y de color verde grisáceo; tienen un centro blanco grisáceo y márgenes de color café rojizo.\r Las lesiones pueden juntarse causando la muerte de las hojas superiores. Las manchas aparecen en la vaina de las hojas, cerca de la superficie del agua (en arroz de riego) o junto al nivel del suelo (en condiciones de secano). La enfermedad progresa rápidamente desde un comienzo, extendiéndose de la vaina hacia la hoja; en los ataques severos destruye el tallo.\r ','https://raw.githubusercontent.com/proyectofci/proyecto/master/image/enfermedades/manchado_del_grano.jpg'),(9,1,2,'Sogata','Tagasodes orizicolus',NULL,'https://raw.githubusercontent.com/proyectofci/proyecto/master/image/plagas/sogata.jpg'),(10,1,2,'Langosta','Spodoptera',NULL,'https://raw.githubusercontent.com/proyectofci/proyecto/master/image/plagas/langosta.jpg'),(11,1,2,'Barrenadores','Rupela Albinella',NULL,'https://raw.githubusercontent.com/proyectofci/proyecto/master/image/plagas/barrenadores.jpg'),(12,1,2,'Chinche de la espiga','Oebalus Ornatus',NULL,'https://raw.githubusercontent.com/proyectofci/proyecto/master/image/plagas/chinche_de_la_espiga.jpg'),(13,1,3,'Malezas Gramineas','Malezas Gramineas',NULL,'https://raw.githubusercontent.com/proyectofci/proyecto/master/image/malezas/gramineas.jpg'),(14,1,3,'Cyperaceas','Cyperaceas',NULL,'https://raw.githubusercontent.com/proyectofci/proyecto/master/image/malezas/cyperaceas.jpg'),(15,1,3,'Hoja ancha','Hoja ancha',NULL,'https://raw.githubusercontent.com/proyectofci/proyecto/master/image/malezas/hoja_ancha.jpg');
/*!40000 ALTER TABLE `diagnostico_causas_afecciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estaciones`
--

DROP TABLE IF EXISTS `estaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estaciones` (
  `estId` int(11) NOT NULL AUTO_INCREMENT,
  `estNombre` varchar(100) DEFAULT NULL,
  `estMesInicio` varchar(50) DEFAULT NULL,
  `estMesFin` varchar(50) DEFAULT NULL,
  `estDescripcion` text,
  `estEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`estId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estaciones`
--

LOCK TABLES `estaciones` WRITE;
/*!40000 ALTER TABLE `estaciones` DISABLE KEYS */;
INSERT INTO `estaciones` VALUES (1,'Invierno','diciembre','mayo','Clima calido y lluvioso',0),(2,'Verano','junio','noviembre','Temperatura seca y fresca',1);
/*!40000 ALTER TABLE `estaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medidas`
--

DROP TABLE IF EXISTS `medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medidas` (
  `medId` int(11) NOT NULL AUTO_INCREMENT,
  `medDescripcion` text,
  `medCantidad` int(11) DEFAULT NULL,
  `medTabulacion` int(11) DEFAULT NULL,
  `medEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`medId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medidas`
--

LOCK TABLES `medidas` WRITE;
/*!40000 ALTER TABLE `medidas` DISABLE KEYS */;
INSERT INTO `medidas` VALUES (1,'Medida 1',300,4,1);
/*!40000 ALTER TABLE `medidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitoreos`
--

DROP TABLE IF EXISTS `monitoreos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `monitoreos` (
  `monId` int(11) NOT NULL AUTO_INCREMENT,
  `monDescripcion` varchar(5000) DEFAULT NULL,
  `monRutaImagen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`monId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitoreos`
--

LOCK TABLES `monitoreos` WRITE;
/*!40000 ALTER TABLE `monitoreos` DISABLE KEYS */;
INSERT INTO `monitoreos` VALUES (1,'NO SE SABE','RUTA DE IMAGEN');
/*!40000 ALTER TABLE `monitoreos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitoreos_recomendacion`
--

DROP TABLE IF EXISTS `monitoreos_recomendacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `monitoreos_recomendacion` (
  `monRecId` int(11) NOT NULL AUTO_INCREMENT,
  `monId` int(11) NOT NULL,
  `recId` int(11) NOT NULL,
  `tipFrecuencia` varchar(50) DEFAULT NULL,
  `monRecDescripcion` text,
  `monRecEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`monRecId`),
  KEY `fk_tipoMonitoreo_Monitoreo_idx` (`monId`),
  KEY `kf_recMonitoreo_Recomendaciones_idx` (`recId`),
  CONSTRAINT `fk_tipoMonitoreo_Monitoreo` FOREIGN KEY (`monId`) REFERENCES `monitoreos` (`monid`),
  CONSTRAINT `kf_recMonitoreo_Recomendaciones` FOREIGN KEY (`recId`) REFERENCES `recomendaciones` (`recid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitoreos_recomendacion`
--

LOCK TABLES `monitoreos_recomendacion` WRITE;
/*!40000 ALTER TABLE `monitoreos_recomendacion` DISABLE KEYS */;
INSERT INTO `monitoreos_recomendacion` VALUES (1,1,1,'Frecuencia','Descripcion',1);
/*!40000 ALTER TABLE `monitoreos_recomendacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ponderaciones`
--

DROP TABLE IF EXISTS `ponderaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ponderaciones` (
  `ponId` int(11) NOT NULL AUTO_INCREMENT,
  `culId` int(11) NOT NULL,
  `medId` int(11) NOT NULL,
  `proEstId` int(11) NOT NULL,
  PRIMARY KEY (`ponId`),
  KEY `fk_pdr_idProducto_idx` (`culId`),
  KEY `fk_ponderacion_Medida_idx` (`medId`),
  KEY `fk_provinciaEstacion_idx` (`proEstId`),
  CONSTRAINT `fk_Ponderacion_Producto` FOREIGN KEY (`culId`) REFERENCES `cultivos` (`culid`),
  CONSTRAINT `fk_ponderacion_Medida` FOREIGN KEY (`medId`) REFERENCES `medidas` (`medid`),
  CONSTRAINT `fk_provinciaEstacion` FOREIGN KEY (`proEstId`) REFERENCES `provincias_estaciones` (`proestid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ponderaciones`
--

LOCK TABLES `ponderaciones` WRITE;
/*!40000 ALTER TABLE `ponderaciones` DISABLE KEYS */;
INSERT INTO `ponderaciones` VALUES (1,1,1,1),(2,2,1,1);
/*!40000 ALTER TABLE `ponderaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `provincias` (
  `proId` int(11) NOT NULL AUTO_INCREMENT,
  `proNombre` varchar(100) DEFAULT NULL,
  `proDescripcion` text,
  `proEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`proId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Esmeraldas','',1),(2,'Manabi','',1),(3,'Santa Elena','',1),(4,'Guayas','',1),(5,'Los Rios','',1),(6,'El Oro','',1),(7,'Santo Domingo de los Tsachilas','',1);
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias_estaciones`
--

DROP TABLE IF EXISTS `provincias_estaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `provincias_estaciones` (
  `proEstId` int(11) NOT NULL AUTO_INCREMENT,
  `estId` int(11) NOT NULL,
  `proId` int(11) NOT NULL,
  `proEstDescripcion` text,
  `proEstEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`proEstId`),
  KEY `fk_estacionTiempo_Ciudad_idx` (`proId`),
  KEY `fk_estacionTiempo_estaciones_idx` (`estId`),
  CONSTRAINT `fk_estacionTiempo_Ciudad` FOREIGN KEY (`proId`) REFERENCES `provincias` (`proid`),
  CONSTRAINT `fk_estacionTiempo_estaciones` FOREIGN KEY (`estId`) REFERENCES `estaciones` (`estid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias_estaciones`
--

LOCK TABLES `provincias_estaciones` WRITE;
/*!40000 ALTER TABLE `provincias_estaciones` DISABLE KEYS */;
INSERT INTO `provincias_estaciones` VALUES (1,1,4,'Invierno Guayas',1);
/*!40000 ALTER TABLE `provincias_estaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recomendaciones`
--

DROP TABLE IF EXISTS `recomendaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recomendaciones` (
  `recId` int(11) NOT NULL AUTO_INCREMENT,
  `diaId` int(11) NOT NULL,
  `recDesripcion` text,
  `recEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`recId`),
  KEY `fk_recomendacion_diagnostico_idx` (`diaId`),
  CONSTRAINT `fk_recomendacion_diagnostico` FOREIGN KEY (`diaId`) REFERENCES `diagnostico` (`diaid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recomendaciones`
--

LOCK TABLES `recomendaciones` WRITE;
/*!40000 ALTER TABLE `recomendaciones` DISABLE KEYS */;
INSERT INTO `recomendaciones` VALUES (1,1,'Diagnostico para cultivo de arroz en invierno y del guayas',1);
/*!40000 ALTER TABLE `recomendaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiempo_cosecha_control`
--

DROP TABLE IF EXISTS `tiempo_cosecha_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tiempo_cosecha_control` (
  `tieCosId` int(11) NOT NULL AUTO_INCREMENT,
  `cosCulId` int(11) NOT NULL,
  `tieCosDescripcion` text,
  `tieCosOrden` int(11) DEFAULT NULL,
  `tieCosDias` int(11) DEFAULT NULL,
  `tieCosEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`tieCosId`),
  KEY `fk_cosechaControl_cultivosEstaciones_idx` (`cosCulId`),
  CONSTRAINT `fk_cosechaControl_cultivosEstaciones` FOREIGN KEY (`cosCulId`) REFERENCES `cosecha_cultivos_estaciones` (`cosculid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiempo_cosecha_control`
--

LOCK TABLES `tiempo_cosecha_control` WRITE;
/*!40000 ALTER TABLE `tiempo_cosecha_control` DISABLE KEYS */;
INSERT INTO `tiempo_cosecha_control` VALUES (3,1,'no se sabe desc',0,0,1);
/*!40000 ALTER TABLE `tiempo_cosecha_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cultivo`
--

DROP TABLE IF EXISTS `tipo_cultivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_cultivo` (
  `tipCulId` int(11) NOT NULL AUTO_INCREMENT,
  `culId` int(11) NOT NULL,
  `tipCulVariedad` varchar(50) DEFAULT NULL,
  `tipCulEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`tipCulId`),
  KEY `fk_tipoCultivo_Cultivo_idx` (`culId`),
  CONSTRAINT `fk_tipoCultivo_Cultivo` FOREIGN KEY (`culId`) REFERENCES `cultivos` (`culid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cultivo`
--

LOCK TABLES `tipo_cultivo` WRITE;
/*!40000 ALTER TABLE `tipo_cultivo` DISABLE KEYS */;
INSERT INTO `tipo_cultivo` VALUES (1,1,'INIAP 15',1),(2,1,'INIAP 14',1),(3,1,'INIAP 11',1),(4,1,'FLS-09',1),(5,1,'FLS-11',1),(6,2,'NACIONAL',1),(7,2,'CCN51',1);
/*!40000 ALTER TABLE `tipo_cultivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_afecciones`
--

DROP TABLE IF EXISTS `tipos_afecciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipos_afecciones` (
  `tipAfeId` int(11) NOT NULL AUTO_INCREMENT,
  `tipAfeNombre` varchar(50) DEFAULT NULL,
  `tipAfeEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`tipAfeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_afecciones`
--

LOCK TABLES `tipos_afecciones` WRITE;
/*!40000 ALTER TABLE `tipos_afecciones` DISABLE KEYS */;
INSERT INTO `tipos_afecciones` VALUES (1,'Enfermedad',1),(2,'Plaga',1),(3,'Maleza',1);
/*!40000 ALTER TABLE `tipos_afecciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_suelos`
--

DROP TABLE IF EXISTS `tipos_suelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipos_suelos` (
  `tipSueId` int(11) NOT NULL AUTO_INCREMENT,
  `tipSueNombre` varchar(100) DEFAULT NULL,
  `tipSueDescripcion` text,
  `tipSueResenia` varchar(30) DEFAULT NULL,
  `tipSueNivelPh` varchar(45) DEFAULT NULL,
  `tipSueRutaImagen` varchar(100) DEFAULT NULL,
  `tipSueEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`tipSueId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_suelos`
--

LOCK TABLES `tipos_suelos` WRITE;
/*!40000 ALTER TABLE `tipos_suelos` DISABLE KEYS */;
INSERT INTO `tipos_suelos` VALUES (1,'Nombre suele desc','no se sabe','no se sabe','no se sabe','no hay imagen ',1);
/*!40000 ALTER TABLE `tipos_suelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_tratamiento`
--

DROP TABLE IF EXISTS `tipos_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipos_tratamiento` (
  `tipTraId` int(11) NOT NULL AUTO_INCREMENT,
  `tipNombre` varchar(50) DEFAULT NULL,
  `tipEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`tipTraId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_tratamiento`
--

LOCK TABLES `tipos_tratamiento` WRITE;
/*!40000 ALTER TABLE `tipos_tratamiento` DISABLE KEYS */;
INSERT INTO `tipos_tratamiento` VALUES (1,'Fungicida',1),(2,'Insecticida',1),(3,'Herbicida',1),(4,'Fertilizante',1);
/*!40000 ALTER TABLE `tipos_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tratamiento` (
  `traId` int(11) NOT NULL AUTO_INCREMENT,
  `tipTraId` int(11) NOT NULL,
  `traGruId` int(11) NOT NULL,
  `traNombreProducto` varchar(100) DEFAULT NULL,
  `traIngredientes` text,
  `traFormulacion` varchar(50) DEFAULT NULL,
  `traAccionFitosanitaria` text,
  `traModoAccion` text,
  `traMecanismoAccion` text,
  `traToxida` varchar(100) DEFAULT NULL,
  `traRutaImagen` varchar(100) DEFAULT NULL,
  `traEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`traId`),
  KEY `fk_tratamiento_idTipoTrata_idx` (`tipTraId`),
  KEY `fk_Tramamiento_Grupo_idx` (`traGruId`),
  CONSTRAINT `fk_Tramamiento_Grupo` FOREIGN KEY (`traGruId`) REFERENCES `tratamiento_grupo` (`tragruid`),
  CONSTRAINT `fk_tratamiento_idTipoTrata` FOREIGN KEY (`tipTraId`) REFERENCES `tipos_tratamiento` (`tiptraid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES (1,1,3,'Solvendazim	\n','Carbendazim','Suspension Concentrada (SC)	','Es un fungicida sistémico de amplio espectro de control sobre algunas enfermedades fungosas en  varios cultivos de sierra y costa.','Es un fungicida local sistémico que sirve para controlar hongos ascomicetos, basidiomicetos y hongos imperfectos, en diferentes cultivos','El ingrediente activo es absorbido facilmente por las plantas a travez de sus tallos, hojas y raices, se transporta por el xilema y su distribución por los tejidos de la planta lo realiza de forma translaminar, entro de la planta actua sobre los hongos inhibiendo tanto el desarrollo del tubo germinativo','Categoria Toxicológica IV. Ligeramente Peligroso.','null',1),(2,1,2,'Prulude','Myclobutanil','Polvo Mojable (WP)','Fungicida sistémico protector, erradicante y curativo. Eficaz para combatir el ataque de múltiples hongos en varios cultivos.','Es rápidamente absrobido por las hojas. En el hongo, inhibe del ergosterol.','','Categoria Toxicológica III. Ligeramente Peligroso.',NULL,1),(3,2,4,'Borey','Imidacloprid + Lambda-cyhalotrina','Suspensión concentrada (SC)','Es un insecticida de amplio espectro que controla masticadores, chupadores y raspadores. Producto selectivo ya que su moderna formulación contiene micro capsulas de Lambda-cyhalotrina combinada con Imidacloprid formulada en una suspensión concentrada, esta combinacion hace que el producto sea muy eficaz','Imidacloprid actua por accion sistemica y de contacto. Interfiere en la transmisión de los estimulos nerviosos de los insectos. Lambda-cyhlotrina actua por contacto e ingestiós y posee propiedades repelentes.','Lambda-cyhalotrina interfiere en la transmisión de estimulos nervisos de os insectos, ya que actua como modulador del canal de sodio, alterando la conducción de impulso nervioso, provocando perdidas del control muscular y un rapido efecto de deriva sobre el insect plaga.','Categoría Toxicológica II. Moderadamente peligroso.',NULL,1),(4,3,13,'Paroli','Pendimetalina','Concentrado Emulsionable(EC)','Herbicida preemergente residual de acción porolongada, selectivo, para los cultivos de arroz, maíz, sorgo, soya, tabaco y cebolla, entre otros. Eficaz para eliminar la gran mayoría de malezas de gramíneas y algunas de hoja ancha.','Posee acción sistémica siendo limitado su translado desde la raíz hacia el tallo. Su mecanismo de acción consiste en inhibir la división y elongación celular de los tejidos meristemáticos, muriendo como consecuencia directa o indirectamente tanto el tallo como la raíz. El efecto en las monocotiledóneas se debe a la absorción del producto a través del tallo; y en las dicotiledóneas, a través del hipocólito.','','Categoría Toxicológica III. Ligeramente peligroso',NULL,1),(5,2,5,'Diabolo','Dimetoato','Concentrado Emulsionable (EC)','Insecticida organofosforado sistémico, que actúa contra una amplia gama de insectos chupadores como trips, pulgones, chinches, moscas blancas y ácaros.','DIABOLO®, al ser un insecticida sistémico es absorbido rápidamente y se translada por la savía a todos los órganos de la planta. DIABOLO®, inhibe la acción de la enzima acetilocolinesterasa, ocasionando disturbios en el sistema nervioso de los insectos y luego la muerte.','','Categoría Toxicológica II. Moderadamente peligroso.',NULL,1),(6,3,15,'Borrator','Paraquat','Concentrado soluble','Herbicida con acción desecante que quema todo tejido vegetal verde.','BORRATOR® es un herbicida de contacto que una vez aplicado, rápidamente forma peróxido de hidrógeno (H2O2) en el interior de las célullas, el mismo que destruye  a los cloroplastos y a las membranas celulares antes de ocasionar la muerte del área verde de los vegetales.','','Categoría Toxicológica II. Moderadamente peligroso',NULL,1),(7,1,2,'Nomad','Propiconazol + Tebuconazol','Concentrado Emulsionabe (EC)','Fungicida combinado del grupo de Triazoles, mezcla sinergica de rapida acción sistemica en los tejidos vegetales dode ademas se distribuye uniformemente.','NOMAD es un fungicida sistemico, con acción preventiva, curativa y erradicante.','Sus dos ingrediente activos pertenecen al grupo de Triazoles, actuan como inhibidores de la biosíntesis del ergosterol, interviniendo de esta manera en el metabolismo de los hongos susceptibles, en el desarrollo de paredes celulares y cuerpos reproductivos.','Categoria Toxicológica III. Ligeramente Peligroso.',NULL,1),(8,2,8,'Sensei','Imidacloprid','Suspensión concentrada (SC)','Insecticida sistématico y de contacto eficaz para el combate de insectos chupadores como áfidos, mosca blanca, cigarritaas, algunos coleópteros, dípteros y trips, actúa por contacto e ingestión.','genera una interferencia en la transmisión del estímulo nervioso de los insectos; actúa como veneno estomacal y de contacto.','','Categoría Toxicológica II. Moderadamente peligroso.',NULL,1),(9,2,5,'Courage','Profenofos','Concentrado Emulsionable (EC)','Insecticida acaricida organofosforado, eficaz para eliminar gusanos comedores de hoja, trozadores, minadores, pulguillas y chinches.','Tiene acción translaminar y actua por contacto e ingestión.','Actua por accion translaminar, por contacto e ingestion; por cualquier de estas vias, inhibe en el sistema nerviso la acción de la enzima acetolocolinesterasa, provocando disturbios en el insecto hasta ocasionarle la muerte.','Categoría Toxicológica II. Moderadamente peligroso.',NULL,1),(10,3,10,'Bacanok','Cyhalofop-butyl','Concentrado Emulsionable(EC)','Es un herbicida postemergente, totalmente selectivo al cultivo de arroz, tiene acción  sistémica y sirve para el control de malezas gramíneas, a las cuales las destruye penetrando por tallos y follaje,  se lo puede aplicar en cualquier etapa de este cultivo hasta los 45 días.','','Es un herbicida  sistémico, con un mecanismo de acción semejante  a graminicidas específicos,  afectando los puntos de crecimiento (meristemas). El cyhalofop pertenece al grupo de herbicidas derivados de los ariloxifenoxies y por ende se caracteriza por inhibir las síntesis de ácidos grasos,  que ocurren en los puntos decrecimiento o zonas meristemáticas.','Categoría Toxicológica III. Ligeramente peligroso',NULL,1),(11,3,12,'Rock','Pyrazosulfuron ethyal','Polvo Mojable (PM)','Es un herbicida netamente sistémico que controla eficazmente malezas de hojas ancha y cyperaceas en el cultivo de arroz, por su acción selectiva se lo puede aplicar desde la preemergencia hasta la pos emergencia temprana.','Es un herbicida sistématico del grupo de las Sulfonilureas, totalmente selectivo al cultivo de arroz que nos ayuda a eliminar malezas de hoja ancha y cyperaceas.','Su mecanismo de acción lo realiza bloqueando la biosíntesis de los aminoácidos esenciales al inhibir la enzima Acetolactasintetasa en plantas malezas de hoja ancha y cyperaceas, deteniendo de este modo, primeramente el crecimiento de estas y posteriormente provocando su muerte.','',NULL,1),(12,3,12,'Metsulfozell','Metsulfuron metil','Polvo Mojable (PM)','Es un herbicida sistemático, selectivo, para aplicarlo en post emerhencia con buenos resultados en el control de malezaas de hoja ancha y ciperácea en algunos cultivos, su principal acción está en la inhibición rápida de crecimiento en las malezas susceptibles.','','Se transloca sistématicamente por absorción en las malezas, y una vez dentro de las mismas actúa deteniendo el crecimiento de estas, como consecuencia de la inhibición de la enzima ACETOLACTATO SINTETASA la cual es una enzima clave para la bio-síntesis de algunos aminoácidos.','Categoría Toxicológica III. Ligeramente peligroso',NULL,1);
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamiento_grupo`
--

DROP TABLE IF EXISTS `tratamiento_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tratamiento_grupo` (
  `traGruId` int(11) NOT NULL AUTO_INCREMENT,
  `traGruNombre` varchar(50) DEFAULT NULL,
  `traGruEstado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`traGruId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento_grupo`
--

LOCK TABLES `tratamiento_grupo` WRITE;
/*!40000 ALTER TABLE `tratamiento_grupo` DISABLE KEYS */;
INSERT INTO `tratamiento_grupo` VALUES (1,'Cupricos',1),(2,'Triazol',1),(3,'Bencimidazol',1),(4,'Neonicotinoide + Piretroide',1),(5,'Organofosforado',1),(6,'Fenilpirazol',1),(7,'Piretroide',1),(8,'Piridinas',1),(9,'Neonicotinoide',1),(10,'Ariloxifenoxipropionico',1),(11,'Cloroacetanilida',1),(12,'Sulfonilureas',1),(13,'Dinitroanilina',1),(14,'Ditiocarbamatos',1),(15,' Bipiridilo',1);
/*!40000 ALTER TABLE `tratamiento_grupo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-20 18:45:07
