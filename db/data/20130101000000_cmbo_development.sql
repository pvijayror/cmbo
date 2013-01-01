-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: cmbo
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `refinery_blog_categories`
--

DROP TABLE IF EXISTS `refinery_blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cached_slug` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_blog_categories_on_id` (`id`),
  KEY `index_refinery_blog_categories_on_slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_categories`
--

LOCK TABLES `refinery_blog_categories` WRITE;
/*!40000 ALTER TABLE `refinery_blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_categories_blog_posts`
--

DROP TABLE IF EXISTS `refinery_blog_categories_blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_categories_blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) DEFAULT NULL,
  `blog_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_categories_blog_posts_on_bc_and_bp` (`blog_category_id`,`blog_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_categories_blog_posts`
--

LOCK TABLES `refinery_blog_categories_blog_posts` WRITE;
/*!40000 ALTER TABLE `refinery_blog_categories_blog_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_blog_categories_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_comments`
--

DROP TABLE IF EXISTS `refinery_blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_post_id` int(11) DEFAULT NULL,
  `spam` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `body` text,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_blog_comments_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_comments`
--

LOCK TABLES `refinery_blog_comments` WRITE;
/*!40000 ALTER TABLE `refinery_blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_posts`
--

DROP TABLE IF EXISTS `refinery_blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `draft` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cached_slug` varchar(255) DEFAULT NULL,
  `custom_url` varchar(255) DEFAULT NULL,
  `custom_teaser` text,
  `source_url` varchar(255) DEFAULT NULL,
  `source_url_title` varchar(255) DEFAULT NULL,
  `access_count` int(11) DEFAULT '0',
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_blog_posts_on_id` (`id`),
  KEY `index_refinery_blog_posts_on_access_count` (`access_count`),
  KEY `index_refinery_blog_posts_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_posts`
--

LOCK TABLES `refinery_blog_posts` WRITE;
/*!40000 ALTER TABLE `refinery_blog_posts` DISABLE KEYS */;
INSERT INTO `refinery_blog_posts` VALUES (1,'El Asma','<p>El asma es un trastorno respiratorio crónico caracterizado por ataques recurrentes de disnea y sibilancias. Algunas de las causas y factores desencadenantes son comunes a todas las personas con asma, y algunos son más individuales. Aunque las causas fundamentales de asma no se conocen, los factores de riesgo para desarrollar asma se dan al inhalar los desencadenantes del asma.</p>\r\n<p>Estos incluyen:<br />Alergenos de interiores (por ejemplo, los ácaros del polvo doméstico en las camas, alfombras y muebles tapizados de la contaminación, y la caspa de las mascotas);<br />Alergenos en el  aire (como el polen y el moho)<br />Humo del tabaco<br />Irritantes químicos en el lugar de trabajo.</p>\r\n<p>Otros factores desencadenantes pueden incluir el aire frío, la excitación emocional extrema, como la ira o el miedo, y el ejercicio físico. En algunas personas, el asma puede ser desencadenada incluso por ciertos medicamentos, tales como la aspirina y otros fármacos no esteroides anti-inflamatorios, y los beta-bloqueantes (utilizados para tratar la presión arterial alta, enfermedades del corazón y la migraña).</p>\r\n<p>Según estimaciones de la OMS, 235 millones de personas sufren de asma a nivel mundial. Aunque el asma no puede curarse, un manejo apropiado  puede controlar la enfermedad y que la gente pueda disfrutar de una buena calidad de vida. Además, algunos niños con formas más leves de asma superan sus síntomas con la edad.</p>',0,'2013-01-01 08:08:00','2013-01-01 08:09:07','2013-01-01 08:09:07',1,NULL,'','','','',0,'el-asma'),(2,'Como prevenir un ataque al corazón','<p>La OMS estima que más de 17.3 millones de personas murieron de enfermedades cardiovasculares como ataque cardiaco o un derrame cerebral en el 2008. Contrariamente a la creencia popular, cuatro de cada cinco de estas muertes ocurrieron en países de bajos y medianos ingresos, y los hombres y las mujeres se ven igualmente afectados.</p>\r\n<p>La buena noticia, sin embargo, es que el 80% de los ataques cardíacos y accidentes cerebrovasculares prematuros se pueden prevenir. Una dieta sana, actividad física regular y no consumir productos de tabaco son las claves para la prevención.</p>\r\n<p>Cambie a una dieta saludable: Una dieta equilibrada es fundamental para un corazón y un sistema circulatorio sano. Esta debe incluir abundantes frutas y verduras, granos enteros, carne magra, pescado y legumbres y de manera controlada, sal, azúcar y grasas.</p>\r\n<p>Haga ejercicios de forma regular: por lo menos 30 minutos de actividad física regular todos los días ayuda a mantener el sistema cardiovascular en forma, por lo menos 60 minutos la mayor cantidad de días a la semana ayuda a mantener un peso saludable.</p>\r\n<p>Evite el consumo de tabaco: El tabaco en todas sus formas es muy perjudicial para la salud – los cigarrillos, cigarros, pipas, el tabaco masticable. La exposición al humo de tabaco ajeno es igual de peligroso. El riesgo de infarto de miocardio y accidente cerebrovascular empieza a disminuir inmediatamente después que una persona deja de usar productos de tabaco, y se puede reducir hasta la mitad después de un año.</p>\r\n<p>Verificar y controlar el riesgo cardiovascular: Conozca su presión arterial: La presión arterial alta usualmente no presenta síntomas, pero puede causar un repentino derrame cerebral o ataque al corazón. Controle su presión arterial.</p>\r\n<p>Conozca su nivel de azúcar en la sangre: elevados niveles de glucosa en la sangre (diabetes) aumenta el riesgo de ataques cardíacos y accidentes cerebrovasculares. Si usted tiene diabetes, es muy importante controlar su presión arterial y niveles de azúcar en sangre para minimizar el riesgo.</p>\r\n<p>Conozca sus lípidos en la sangre: El colesterol en la sangre y los lípidos sanguíneos anormales aumentan el riesgo de ataques cardíacos y accidentes cerebrovasculares. El colesterol en la sangre debe ser controlado a través de una dieta saludable y, si es necesario, medicamentos apropiados.</p>',0,'2013-01-01 08:09:00','2013-01-01 08:09:54','2013-01-01 08:09:54',1,NULL,'','','','',0,'como-prevenir-un-ataque-al-corazon');
/*!40000 ALTER TABLE `refinery_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_directories`
--

DROP TABLE IF EXISTS `refinery_directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_directories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_id` int(11) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `specialty` text,
  `schedule` text,
  `location` varchar(255) DEFAULT NULL,
  `position` varchar(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_directories`
--

LOCK TABLES `refinery_directories` WRITE;
/*!40000 ALTER TABLE `refinery_directories` DISABLE KEYS */;
INSERT INTO `refinery_directories` VALUES (1,1,'Cardiologo-Internista','Dr. Emilio Blanco','<span><strong>Horario:</strong> Lunes Vlienes 8:00 A.M a 1:00P.M 2:30 P.M a 6:30 P.M</span>\r\n<br />\r\n<span><strong>Consultorio:</strong>NO. 212, 2do. Nivel</span>','','','','2013-01-01 08:35:02','2013-01-01 11:08:47'),(2,NULL,'Cirujana General','Dra. Damary Modesto','<span><strong>Horario:</strong> Lunes Vlienes 8:00 A.M a 1:00P.M 2:30 P.M a 6:30 P.M</span>\r\n<br />\r\n<span><strong>Consultorio:</strong>NO. 212, 2do. Nivel</span>','','','','2013-01-01 11:12:36','2013-01-01 11:12:36'),(3,NULL,'Gastroenterologo','Dr. Emilio Blanco','<span><strong>Horario:</strong> Lunes Vlienes 8:00 A.M a 1:00P.M 2:30 P.M a 6:30 P.M</span>\r\n<br />\r\n<span><strong>Consultorio:</strong>NO. 212, 2do. Nivel</span>','','','','2013-01-01 11:13:58','2013-01-01 11:13:58');
/*!40000 ALTER TABLE `refinery_directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_image_page_translations`
--

DROP TABLE IF EXISTS `refinery_image_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_image_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_image_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `caption` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_186c9a170a0ab319c675aa80880ce155d8f47244` (`refinery_image_page_id`),
  KEY `index_refinery_image_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_image_page_translations`
--

LOCK TABLES `refinery_image_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_image_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_image_page_translations` VALUES (3,3,'en',NULL,'2013-01-01 11:20:33','2013-01-01 11:20:33'),(4,4,'en',NULL,'2013-01-01 11:20:33','2013-01-01 11:20:33');
/*!40000 ALTER TABLE `refinery_image_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_image_pages`
--

DROP TABLE IF EXISTS `refinery_image_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_image_pages` (
  `image_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `caption` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` varchar(255) DEFAULT 'page',
  PRIMARY KEY (`id`),
  KEY `index_refinery_image_pages_on_image_id` (`image_id`),
  KEY `index_refinery_image_pages_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_image_pages`
--

LOCK TABLES `refinery_image_pages` WRITE;
/*!40000 ALTER TABLE `refinery_image_pages` DISABLE KEYS */;
INSERT INTO `refinery_image_pages` VALUES (2,1,0,NULL,3,'Refinery::Page'),(3,1,1,NULL,4,'Refinery::Page');
/*!40000 ALTER TABLE `refinery_image_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_images`
--

DROP TABLE IF EXISTS `refinery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `image_uid` varchar(255) DEFAULT NULL,
  `image_ext` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_images`
--

LOCK TABLES `refinery_images` WRITE;
/*!40000 ALTER TABLE `refinery_images` DISABLE KEYS */;
INSERT INTO `refinery_images` VALUES (1,'image/jpeg','rails.jpg',82781,265,326,'2013/01/01/13/58/22/148/rails.jpg',NULL,'2013-01-01 08:28:24','2013-01-01 08:28:24'),(2,'image/jpeg','14_02_19_892_house_calls_960x370_2.jpg',115214,960,370,'2013/01/01/16/49/28/88/14_02_19_892_house_calls_960x370_2.jpg',NULL,'2013-01-01 11:19:30','2013-01-01 11:19:30'),(3,'image/jpeg','15_11_43_999_doctor_960x370.jpg',40551,960,370,'2013/01/01/16/50/11/89/15_11_43_999_doctor_960x370.jpg',NULL,'2013-01-01 11:20:13','2013-01-01 11:20:13');
/*!40000 ALTER TABLE `refinery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_news_item_translations`
--

DROP TABLE IF EXISTS `refinery_news_item_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_news_item_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_news_item_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_2fe5614a8b4e9a5c34c0f93f230e423e36d53bda` (`refinery_news_item_id`),
  KEY `index_refinery_news_item_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_news_item_translations`
--

LOCK TABLES `refinery_news_item_translations` WRITE;
/*!40000 ALTER TABLE `refinery_news_item_translations` DISABLE KEYS */;
INSERT INTO `refinery_news_item_translations` VALUES (1,1,'en','Unidos a una noble causa con David Ortiz','<p>El Centro Médico Punta Cana – Grupo Rescue junto con Promed se unió una vez más este Sábado, Diciembre 8 como cada año validado por su equipo de paramédicos y doctores al evento  benéfico iniciado por David Ortiz, bateador de las Medias Rojas de Boston,  que  hace alrededor de siete años tomo la decisión que haría un evento para recaudar fondos que serían destinados exclusivamente para cubrir costosos procedimientos quirúrgicos cardíacos en menores de edad.</p>\r\n<p>El torneo  Clásico de Golf de Celebridades David Ortiz, que este año celebró su sexta edición en el exclusivo resort Sanctuary Cap Cana de Punta Cana, en la República Dominicana, y que es organizado por la “Fundación David Ortiz Children’s”.</p>\r\n<p>El Dr. José Natalio Redondo, Presidente del Grupo Rescue  entre otros empresarios y fanáticos apoyaron la noble causa de Ortiz en el famoso campo de golf Punta Espada, diseñado nada más y nada menos que por el legendario Jack Nicklaus.</p>\r\n<p>La actividad parecía una reunión de los Medias Rojas que ganaron el campeonato de Grandes Ligas en el 2004, con el manager Terry Francona — ahora el dirigente de Cleveland — Ortiz y los retirados Pedro Martínez, Tim Wakefield, Johnny Damon y Kevin Millar. Los antiguos estelares Jim Rice y Luis Tiant y el relevista Mark Melancon también hicieron el viaje desde Boston a Punta Cana.</p>\r\n<p>Pero aquí estuvieron, además, Robinson Canó, de los Yankees de Nueva York, y Edwin Encarnación, de los Azulejos de Toronto, dos de los grandes rivales que tiene Boston en la División Este de la Liga Americana. También el miembro del Salón de la Fama, Barry Larkin, y el doble medallista olímpico dominicano Félix Sánchez.</p>','2013-01-01 08:10:50','2013-01-01 08:10:50',NULL),(2,2,'en','Dejando trazos de amor contigo paso a paso','<p>El Centro Médico Bournigal, miembro del Grupo Rescue, participó en una caminata contra el cáncer el pasado&#160; sábado 27 de octubre en conjunto con el patronato <strong>Manos Unidas Contra el Cáncer</strong>, el cual se dedica a trabajar para reducir la tasa de personas diagnosticadas con cáncer en la provicia de Puerto Plata, el patronato tambien ofrece asistencia médica, social y psicológica.&#160;</p>\r\n<p>Uniendo esfuerzos para elevar la conciencia en la temprana detección del cáncer bajo la campaña \"Dejando trazos de amor contigo paso a paso\" ambas entidades caminaron por las principales calles de la ciudad.</p>\r\n<p>La cermonia fue realizada con la apreciación de la Junta Directiva del Grupo Rescue y dirigida por el Obisco Julio César Amaro Corniel. El depacho de la Primera Dama, el gobernador de la provincia, Doña Eridania Llibre entre otros se unieron a esta noble causa.</p>\r\n<p>Durante la actividad los particiapantes los participantes vivieron momentos conmovedores con los testimonios de personas que han superado esta enfermedad y otros que aún la padecen. Los particpantes lanzaron decenas de globos al aire con los nombres de sus familiares afectados con esta enfermedad.</p>\r\n<p>Unidos en la lucha contra el cáncer y concientes de la importancia de la prevención para salvar vidas, la Oficina Administrativa del Centro Médico Bournigal otorgó al patronato 20 certificados para mamografías a ser usadas en su programa de prevención.</p>\r\n<p>El evento concluyó con todos los participantes bailando a ritmo de Merengue con el maestro Ramon Santos.</p>','2013-01-01 08:12:06','2013-01-01 08:12:06',NULL),(3,3,'en','Crecemos junto a tus necesidades','<p>El Centro Médico Punta Cana crece para dar cobertura a la creciente demanda de la comunidad de residentes y turistas que nos visitan; siempre ofreciendo un equipo médico profesional comprometido con el bienestar de sus pacientes desde el inicio, hace 8 años, cuando todavía no había mucha estructura asistencial en la zona.</p>\r\n<p>El centro trata de brindar a nuestra comunidad una imagen fresca, moderna, en un ambiente de confianza, para que su visita sea cubierta de forma especial.</p>\r\n<p>Centro Médico Punta Cana cuenta con nuevos consultorios en su tercer nivel, modernas salas de espera en un ambiente cálido y hospitalario, amplia sala de pediatría y vacunación donde los niños esperan a un ambiente agradable diseñados especialmente para los pequeños pacientes.</p>\r\n<p>Para facilitar sus diagnósticos, Centro Médico Punta Cana se encuentra equipado con maquinarias vanguardistas como tomógrafo, sonógrafo con tecnología tridimensional, laboratorio clínico, sala de evaluación y muy pronto, equipos de mamografía.</p>\r\n<p>Sus recientemente habilitadas habitaciones suites, ofrecen amenidades pensando en los pacientes y sus acompañantes tales como televisor de pantalla plana, un cómodo sofá cama, caja fuerte , nevera, microondas, cafetera y luces ambientales de cara a estimular la pronta recuperación con las mejores atenciones contando muy pronto también con servicio de WI-FI.</p>\r\n<p>Bajo el conocimiento de que la composición de la comunidad de Bávaro es única en el país, Centro Médico Punta Cana trabaja con estándares internacionales y promueve mecanismos para reducir tiempos de espera, como el recientemente incorporado sistema de citas vía internet www.centromedicopuntacana.com donde se puede realizar citas con sus especialistas.</p>\r\n<p>Centro Médico Punta Cana cuentan además con la presencia de los representantes de los seguros más prominentes en la zona ARSs para ofrecerle un mejor servicio. Esta presencia se complementa con un moderno sistema de preautorizaciones a través del correo electrónico autorizaciones.cmpc@gruporescue.com. Con su uso, usted podrá reducir su tiempo de espera con sólo enviar la copia de su seguro médico, cédula y diagnóstico hasta 6 horas antes de su visita.</p>\r\n<p>Finalmente, su farmacia ofrece precios muy competitivos y el más amplio inventario de medicamentos del área, con servicio a domicilio.</p>\r\n<p>Sin duda alguna, estamos ante el servicio médico más completo del principal polo turístico del país.</p>','2013-01-01 08:12:39','2013-01-01 08:12:39',NULL),(4,4,'en','Un sabroso bienestar','<p>El Sendero del Cacao, fue el escenario escogido por el Grupo Rescue, para unir sus  encargados departamentales del Centro Médico Bournigal, Servimed, Playa Dorada Medical Care y del Centro Médico Punta Cana, en un ambiente de camaradería. Los departamentales realizaron el recorrido  donde les fue  explicado  el proceso de plantación, las diferentes  propiedades nutritivas y saludables del cacao y sus derivados.</p>\r\n<p>Actualmente,  las tierras Francomacorisanas son reconocidas internacionalmente por el  cultivo del mejor cacao orgánico en la República Dominicana. El Grupo Rescue reconoce la gran labor que hace el Sr. Nazario Rizek, propietario  del sendero del cacao, quien  es  el mayor productor  y  exportador a  nivel mundial  del país.   En la actividad se  destaca la importancia de preservar el medio ambiente para seguir sosteniendo las plantaciones de cacao de mayor calidad.</p>\r\n<p>El Grupo Rescue  aprecia la iniciativa en su destacado role tanto para la economía de tan sabroso producto como también el  apoyo a salvaguardar a nuestro medio ambiente.</p>','2013-01-01 08:13:06','2013-01-01 08:13:06',NULL),(5,5,'en','Día de la tierra','<p>El Centro Médico Punta Cana (CMPC), miembro del Grupo Rescue y localizado en la zona de Bávaro-Punta Cana, muestra gran iniciativa creando conciencia del cuidado del nuestro medio ambiente este domingo 22 de abril en celebración al Día Internacional de la Tierra.<br />El equipo médico, colaboradores y sus familiares realizaron una jornada de reforestación con más de 90 participantes en la que sembraron árboles en las orilla del Rio Düey en combinación con las autoridades de la Dirección de Agricultura y Medio Ambiente, quienes quedaron agradecidos de la obra.</p>\r\n<p>Con esta acción se espera impulsar futuras generaciones de árboles y que asientan raíces en esta área tan necesitada para beneficio del equilibrio ecológico al ayudar a proteger los suelos fértiles de la erosión ocasionada por el arrastre de las lluvias. Esta labor ofrece una esperanza de fomentar nuevas áreas recreativas naturales en la zona, ya que estas reforestaciones generan un muro protector de las zonas de cultivo contra el viento, optimizando las funciones de las cuencas hidrográficas del Rio Düey, evitando reboses.</p>\r\n<p>El Centro Médico Punta Cana no busca simplemente plantar árboles, si no que también se esfuerza en lanzar una plataforma informativa de concienciación a nuestra comunidad con un optimismo que pueda servir de motivación a otras persona comprometidas a la prolongación de una vida saludable, con un aire de mayor calidad para respirar y aguas más limpias. En definitiva, del cuidado de nuestro medio ambiente. </p>','2013-01-01 08:13:25','2013-01-01 08:13:25',NULL),(6,6,'en','Conferencia ITIC-AMERICAS New Orleans','<p>El Dr. José Natalio Redondo, presidente de Grupo Rescue República Dominicana, la red nacional de servicios médicos, compuesta por más de 7 Clínicas privadas en todo el territorio nacional, entre ellas el Centro Médico Bournigal y Centro Médico Punta Cana, fue el orador invitado en la Segunda Conferencia Internacional de Seguros de Viajes de las Américas (ITIC-AMERICAS), que tomó lugar en la ciudad de New Orleans, USA, del 19 al 21 de Marzo del 2012.</p>\r\n<p>Nuestro Presidente participó en un importante panel exponiendo el tema ” Los desafíos para el acceso a una atención hospitalaria de calidad en la Región del Caribe”, junto a los expertos en asistencia de viajeros María Cáceres de Seven Corners Assist, y Shai Gold de International Triage LLC.</p>\r\n<p>En el panel se destacó ampliamente el nivel de calidad que ha alcanzado la oferta de servicios médicos en nuestra región en los últimos años, con estándar muy similar a los hospitales en los Estados Unidos y Canadá. La República Dominicana, entre las islas mayores, ofrece excelente capacidad de respuesta coordinada y rápida de los sistemas de emergencia privados de salud, ubicados en los diferentes destinos turísticos.</p>\r\n<p>La mayoría de los panelistas y participantes resaltaron, además, la gran satisfacción expresada por sus clientes, cuando se ven afectados por enfermedades o accidentes de diferentes complejidades, mientras vacacionan en los hoteles tradicionales y/o en los cruceros que visitan la región. Y con mayor interés, se evidenció la disminución en los costos globales, en relación a hospitales del mismo nivel ubicados en la costa este de los Estados Unidos; lo que para muchos de los suscriptores de los seguros significa la gran la diferencia en la sostenibilidad y rentabilidad del mercado.</p>\r\n<p>La región del Caribe recibe actualmente más de 35 millones de turistas al año, y se proyecta una tendencia de crecimiento de un 5-8% anual. Su impacto social y económico es vital para los países de la región, y sin lugar a dudas representa un nicho de mercado muy interesante para el negocio de las aseguradoras en el renglón salud. En estas condiciones, las empresas que cubren los riesgos muestran mucho interés en garantizar un servicio médico efectivo, eficiente y a costo competitivo.</p>','2013-01-01 08:13:49','2013-01-01 08:13:49',NULL);
/*!40000 ALTER TABLE `refinery_news_item_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_news_items`
--

DROP TABLE IF EXISTS `refinery_news_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_news_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `publish_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_news_items_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_news_items`
--

LOCK TABLES `refinery_news_items` WRITE;
/*!40000 ALTER TABLE `refinery_news_items` DISABLE KEYS */;
INSERT INTO `refinery_news_items` VALUES (1,'Unidos a una noble causa con David Ortiz','<p>El Centro Médico Punta Cana – Grupo Rescue junto con Promed se unió una vez más este Sábado, Diciembre 8 como cada año validado por su equipo de paramédicos y doctores al evento  benéfico iniciado por David Ortiz, bateador de las Medias Rojas de Boston,  que  hace alrededor de siete años tomo la decisión que haría un evento para recaudar fondos que serían destinados exclusivamente para cubrir costosos procedimientos quirúrgicos cardíacos en menores de edad.</p>\r\n<p>El torneo  Clásico de Golf de Celebridades David Ortiz, que este año celebró su sexta edición en el exclusivo resort Sanctuary Cap Cana de Punta Cana, en la República Dominicana, y que es organizado por la “Fundación David Ortiz Children’s”.</p>\r\n<p>El Dr. José Natalio Redondo, Presidente del Grupo Rescue  entre otros empresarios y fanáticos apoyaron la noble causa de Ortiz en el famoso campo de golf Punta Espada, diseñado nada más y nada menos que por el legendario Jack Nicklaus.</p>\r\n<p>La actividad parecía una reunión de los Medias Rojas que ganaron el campeonato de Grandes Ligas en el 2004, con el manager Terry Francona — ahora el dirigente de Cleveland — Ortiz y los retirados Pedro Martínez, Tim Wakefield, Johnny Damon y Kevin Millar. Los antiguos estelares Jim Rice y Luis Tiant y el relevista Mark Melancon también hicieron el viaje desde Boston a Punta Cana.</p>\r\n<p>Pero aquí estuvieron, además, Robinson Canó, de los Yankees de Nueva York, y Edwin Encarnación, de los Azulejos de Toronto, dos de los grandes rivales que tiene Boston en la División Este de la Liga Americana. También el miembro del Salón de la Fama, Barry Larkin, y el doble medallista olímpico dominicano Félix Sánchez.</p>','2013-01-01 08:10:00','2013-01-01 08:10:50','2013-01-01 08:10:50',NULL,NULL,'','unidos-a-una-noble-causa-con-david-ortiz'),(2,'Dejando trazos de amor contigo paso a paso','<p>El Centro Médico Bournigal, miembro del Grupo Rescue, participó en una caminata contra el cáncer el pasado&#160; sábado 27 de octubre en conjunto con el patronato <strong>Manos Unidas Contra el Cáncer</strong>, el cual se dedica a trabajar para reducir la tasa de personas diagnosticadas con cáncer en la provicia de Puerto Plata, el patronato tambien ofrece asistencia médica, social y psicológica.&#160;</p>\r\n<p>Uniendo esfuerzos para elevar la conciencia en la temprana detección del cáncer bajo la campaña \"Dejando trazos de amor contigo paso a paso\" ambas entidades caminaron por las principales calles de la ciudad.</p>\r\n<p>La cermonia fue realizada con la apreciación de la Junta Directiva del Grupo Rescue y dirigida por el Obisco Julio César Amaro Corniel. El depacho de la Primera Dama, el gobernador de la provincia, Doña Eridania Llibre entre otros se unieron a esta noble causa.</p>\r\n<p>Durante la actividad los particiapantes los participantes vivieron momentos conmovedores con los testimonios de personas que han superado esta enfermedad y otros que aún la padecen. Los particpantes lanzaron decenas de globos al aire con los nombres de sus familiares afectados con esta enfermedad.</p>\r\n<p>Unidos en la lucha contra el cáncer y concientes de la importancia de la prevención para salvar vidas, la Oficina Administrativa del Centro Médico Bournigal otorgó al patronato 20 certificados para mamografías a ser usadas en su programa de prevención.</p>\r\n<p>El evento concluyó con todos los participantes bailando a ritmo de Merengue con el maestro Ramon Santos.</p>','2013-01-01 08:11:00','2013-01-01 08:12:06','2013-01-01 08:12:06',NULL,NULL,'','dejando-trazos-de-amor-contigo-paso-a-paso'),(3,'Crecemos junto a tus necesidades','<p>El Centro Médico Punta Cana crece para dar cobertura a la creciente demanda de la comunidad de residentes y turistas que nos visitan; siempre ofreciendo un equipo médico profesional comprometido con el bienestar de sus pacientes desde el inicio, hace 8 años, cuando todavía no había mucha estructura asistencial en la zona.</p>\r\n<p>El centro trata de brindar a nuestra comunidad una imagen fresca, moderna, en un ambiente de confianza, para que su visita sea cubierta de forma especial.</p>\r\n<p>Centro Médico Punta Cana cuenta con nuevos consultorios en su tercer nivel, modernas salas de espera en un ambiente cálido y hospitalario, amplia sala de pediatría y vacunación donde los niños esperan a un ambiente agradable diseñados especialmente para los pequeños pacientes.</p>\r\n<p>Para facilitar sus diagnósticos, Centro Médico Punta Cana se encuentra equipado con maquinarias vanguardistas como tomógrafo, sonógrafo con tecnología tridimensional, laboratorio clínico, sala de evaluación y muy pronto, equipos de mamografía.</p>\r\n<p>Sus recientemente habilitadas habitaciones suites, ofrecen amenidades pensando en los pacientes y sus acompañantes tales como televisor de pantalla plana, un cómodo sofá cama, caja fuerte , nevera, microondas, cafetera y luces ambientales de cara a estimular la pronta recuperación con las mejores atenciones contando muy pronto también con servicio de WI-FI.</p>\r\n<p>Bajo el conocimiento de que la composición de la comunidad de Bávaro es única en el país, Centro Médico Punta Cana trabaja con estándares internacionales y promueve mecanismos para reducir tiempos de espera, como el recientemente incorporado sistema de citas vía internet www.centromedicopuntacana.com donde se puede realizar citas con sus especialistas.</p>\r\n<p>Centro Médico Punta Cana cuentan además con la presencia de los representantes de los seguros más prominentes en la zona ARSs para ofrecerle un mejor servicio. Esta presencia se complementa con un moderno sistema de preautorizaciones a través del correo electrónico autorizaciones.cmpc@gruporescue.com. Con su uso, usted podrá reducir su tiempo de espera con sólo enviar la copia de su seguro médico, cédula y diagnóstico hasta 6 horas antes de su visita.</p>\r\n<p>Finalmente, su farmacia ofrece precios muy competitivos y el más amplio inventario de medicamentos del área, con servicio a domicilio.</p>\r\n<p>Sin duda alguna, estamos ante el servicio médico más completo del principal polo turístico del país.</p>','2013-01-01 08:12:00','2013-01-01 08:12:39','2013-01-01 08:12:39',NULL,NULL,'','crecemos-junto-a-tus-necesidades'),(4,'Un sabroso bienestar','<p>El Sendero del Cacao, fue el escenario escogido por el Grupo Rescue, para unir sus  encargados departamentales del Centro Médico Bournigal, Servimed, Playa Dorada Medical Care y del Centro Médico Punta Cana, en un ambiente de camaradería. Los departamentales realizaron el recorrido  donde les fue  explicado  el proceso de plantación, las diferentes  propiedades nutritivas y saludables del cacao y sus derivados.</p>\r\n<p>Actualmente,  las tierras Francomacorisanas son reconocidas internacionalmente por el  cultivo del mejor cacao orgánico en la República Dominicana. El Grupo Rescue reconoce la gran labor que hace el Sr. Nazario Rizek, propietario  del sendero del cacao, quien  es  el mayor productor  y  exportador a  nivel mundial  del país.   En la actividad se  destaca la importancia de preservar el medio ambiente para seguir sosteniendo las plantaciones de cacao de mayor calidad.</p>\r\n<p>El Grupo Rescue  aprecia la iniciativa en su destacado role tanto para la economía de tan sabroso producto como también el  apoyo a salvaguardar a nuestro medio ambiente.</p>','2013-01-01 08:12:00','2013-01-01 08:13:06','2013-01-01 08:13:06',NULL,NULL,'','un-sabroso-bienestar'),(5,'Día de la tierra','<p>El Centro Médico Punta Cana (CMPC), miembro del Grupo Rescue y localizado en la zona de Bávaro-Punta Cana, muestra gran iniciativa creando conciencia del cuidado del nuestro medio ambiente este domingo 22 de abril en celebración al Día Internacional de la Tierra.<br />El equipo médico, colaboradores y sus familiares realizaron una jornada de reforestación con más de 90 participantes en la que sembraron árboles en las orilla del Rio Düey en combinación con las autoridades de la Dirección de Agricultura y Medio Ambiente, quienes quedaron agradecidos de la obra.</p>\r\n<p>Con esta acción se espera impulsar futuras generaciones de árboles y que asientan raíces en esta área tan necesitada para beneficio del equilibrio ecológico al ayudar a proteger los suelos fértiles de la erosión ocasionada por el arrastre de las lluvias. Esta labor ofrece una esperanza de fomentar nuevas áreas recreativas naturales en la zona, ya que estas reforestaciones generan un muro protector de las zonas de cultivo contra el viento, optimizando las funciones de las cuencas hidrográficas del Rio Düey, evitando reboses.</p>\r\n<p>El Centro Médico Punta Cana no busca simplemente plantar árboles, si no que también se esfuerza en lanzar una plataforma informativa de concienciación a nuestra comunidad con un optimismo que pueda servir de motivación a otras persona comprometidas a la prolongación de una vida saludable, con un aire de mayor calidad para respirar y aguas más limpias. En definitiva, del cuidado de nuestro medio ambiente. </p>','2013-01-01 08:13:00','2013-01-01 08:13:25','2013-01-01 08:13:25',NULL,NULL,'','dia-de-la-tierra'),(6,'Conferencia ITIC-AMERICAS New Orleans','<p>El Dr. José Natalio Redondo, presidente de Grupo Rescue República Dominicana, la red nacional de servicios médicos, compuesta por más de 7 Clínicas privadas en todo el territorio nacional, entre ellas el Centro Médico Bournigal y Centro Médico Punta Cana, fue el orador invitado en la Segunda Conferencia Internacional de Seguros de Viajes de las Américas (ITIC-AMERICAS), que tomó lugar en la ciudad de New Orleans, USA, del 19 al 21 de Marzo del 2012.</p>\r\n<p>Nuestro Presidente participó en un importante panel exponiendo el tema ” Los desafíos para el acceso a una atención hospitalaria de calidad en la Región del Caribe”, junto a los expertos en asistencia de viajeros María Cáceres de Seven Corners Assist, y Shai Gold de International Triage LLC.</p>\r\n<p>En el panel se destacó ampliamente el nivel de calidad que ha alcanzado la oferta de servicios médicos en nuestra región en los últimos años, con estándar muy similar a los hospitales en los Estados Unidos y Canadá. La República Dominicana, entre las islas mayores, ofrece excelente capacidad de respuesta coordinada y rápida de los sistemas de emergencia privados de salud, ubicados en los diferentes destinos turísticos.</p>\r\n<p>La mayoría de los panelistas y participantes resaltaron, además, la gran satisfacción expresada por sus clientes, cuando se ven afectados por enfermedades o accidentes de diferentes complejidades, mientras vacacionan en los hoteles tradicionales y/o en los cruceros que visitan la región. Y con mayor interés, se evidenció la disminución en los costos globales, en relación a hospitales del mismo nivel ubicados en la costa este de los Estados Unidos; lo que para muchos de los suscriptores de los seguros significa la gran la diferencia en la sostenibilidad y rentabilidad del mercado.</p>\r\n<p>La región del Caribe recibe actualmente más de 35 millones de turistas al año, y se proyecta una tendencia de crecimiento de un 5-8% anual. Su impacto social y económico es vital para los países de la región, y sin lugar a dudas representa un nicho de mercado muy interesante para el negocio de las aseguradoras en el renglón salud. En estas condiciones, las empresas que cubren los riesgos muestran mucho interés en garantizar un servicio médico efectivo, eficiente y a costo competitivo.</p>','2013-01-01 08:13:00','2013-01-01 08:13:49','2013-01-01 08:13:49',NULL,NULL,'','conferencia-itic-americas-new-orleans');
/*!40000 ALTER TABLE `refinery_news_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_part_translations`
--

DROP TABLE IF EXISTS `refinery_page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_f9716c4215584edbca2557e32706a5ae084a15ef` (`refinery_page_part_id`),
  KEY `index_refinery_page_part_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_part_translations`
--

LOCK TABLES `refinery_page_part_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_part_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_part_translations` VALUES (1,1,'en','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>','2013-01-01 06:44:35','2013-01-01 06:44:35'),(2,2,'en','<p>This is another block of content over here.</p>','2013-01-01 06:44:35','2013-01-01 06:44:35'),(3,3,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>','2013-01-01 06:44:35','2013-01-01 06:44:35'),(6,6,'en',NULL,'2013-01-01 06:44:37','2013-01-01 06:44:37'),(7,7,'en',NULL,'2013-01-01 06:44:37','2013-01-01 06:44:37'),(8,8,'en','<img alt=\"Doctor_960x370\" src=\"http://glacial-refuge-9251.s3.amazonaws.com/2012/12/31/02/22/15/432/doctor_960x370.jpg\" />','2013-01-01 06:44:37','2013-01-01 08:06:34'),(9,9,'en','','2013-01-01 06:44:37','2013-01-01 08:06:34'),(10,10,'en','<h2>Heading</h2>\r\n<p>Box oneLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ornare augue ac nulla pharetra in consequat augue accumsan.</p>\r\n<img src=\"http://glacial-refuge-9251.s3.amazonaws.com/2012/12/31/07/30/54/161/rails.jpg\" alt=\"Rails\" />\r\n\r\n<p class=\"lead\"></p>\r\n<p class=\"lead\">Entérate de los beneficios que obtienes al formar parte de nuestro Club de Donantes.</p>\r\n<p><a href=\"servicios-de-salud/club-de-donantes\" class=\"btn btn-primary\">Leer más...</a>\r\n</p>','2013-01-01 07:35:44','2013-01-01 07:35:44'),(11,11,'en','<h2>Especialidades</h2>\r\n<table><tbody><tr><td><ul><li>Cardiología</li>\r\n<li>Cirugía General</li>\r\n<li>Cirugía Maxilofacial</li>\r\n<li>Cirugía Oncológica</li>\r\n<li>Cirugía Pediátrica</li>\r\n<li>Dermatología</li>\r\n<li>Endocrinología</li>\r\n<li>Gastroenterología</li>\r\n<li>Ginecología-Obstetricia</li>\r\n</ul>\r\n</td>\r\n<td><ul><li>Hematología</li>\r\n<li>Neumología</li>\r\n<li>Neurocirugía</li>\r\n<li>Oftalmología</li>\r\n<li>Ortopedia-Traumatología</li>\r\n<li>Otorrinolaringología</li>\r\n<li>Patología</li>\r\n<li>Pediatría</li>\r\n<li>Urología</li>\r\n</ul>\r\n</td>\r\n<td valign=\"top\">\r\n<ul><li>Traumatología</li>\r\n<li>Ver todas las especialidades</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>','2013-01-01 07:35:44','2013-01-01 07:37:47'),(12,12,'en','\r\n<p class=\"lead\">Dejando trazos de amor contigo paso a paso</p>','2013-01-01 07:35:44','2013-01-01 07:37:47'),(13,13,'en','<ul><li>Social Media</li>\r\n<li>By posting on any site below, you are bound by the Social Media Policy.</li>\r\n<li>Facebook</li>\r\n<li>YouTube</li>\r\n<li>Twitter</li>\r\n<li>LinkedIn</li>\r\n<li>Pinterest</li>\r\n<li>Google+</li>\r\n</ul>','2013-01-01 07:35:44','2013-01-01 07:37:47'),(14,14,'en','<ul><li>Home</li>\r\n<li>Plantas de piso</li>\r\n<li>Sobre Centro Médico Bournigal</li>\r\n<li>Alcance en la comunidad</li>\r\n<li>Carrrera en Centro Médico Bournigal</li>\r\n</ul>','2013-01-01 07:35:44','2013-01-01 07:37:47'),(15,15,'en','<ul><li>Red Grupo Rescue</li>\r\n<li>Centro Médico Punta Cana</li>\r\n<li>Clinica Canela</li>\r\n<li>Corazones Unidos</li>\r\n<li>Centro Médico Samaná</li>\r\n<li>Unión Médica Norte</li>\r\n<li>Centro Médico Galmedical</li>\r\n</ul>','2013-01-01 07:35:44','2013-01-01 07:37:47'),(16,16,'en','<ul><li>Información del sitio web</li>\r\n<li>Envíanos tus comentarios</li>\r\n<li>Derechos de autor y licencias</li>\r\n<li>Mapa del sitio</li>\r\n<li>Sobre este sitio web</li>\r\n<li>Terminos de uso del sitio web</li>\r\n<li>Política de privacidad</li>\r\n</ul>','2013-01-01 07:35:44','2013-01-01 07:37:47'),(17,17,'en','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\r\n\r\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>','2013-01-01 07:40:03','2013-01-01 07:40:03'),(18,18,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>','2013-01-01 07:40:03','2013-01-01 07:40:03'),(19,19,'en','','2013-01-01 07:50:03','2013-01-01 07:50:03'),(20,20,'en','','2013-01-01 07:50:03','2013-01-01 07:50:03'),(21,21,'en','<p>Después de una extensa profesión en el área de la salud con más de 20 años de experiencia en la práctica hospitalaria y de trabajar como cardiólogo clínico en el desarrollo de instituciones de salud en áreas de alta concentración de turistas en toda la República Dominicana, José Natalio Redondo, funda en la década del 2000, Grupo Rescue, la Red Nacional de Servicios de Salud.<br />Junto con su hermano el Dr. William Redondo, cirujano ortopédico, otros parientes cercanos y los médicos asociados, como son Juan B. Correa, Ramón Mota, Luis Marcano Peña y Juan Manuel Canela formó la primera red de medicina en el país operando con normas internacionales.</p>\r\n<p>Permaneció como C.E.O. y Presidente del Consejo de Administración de la red. Actualmente ocupa la Presidencia, responsable de la dirección y desarrollo de nuevos proyectos.</p>\r\n<p>El Dr. Redondo es nativo de Puerto Plata, República Dominicana proviene de una familia muy destacada por una larga historia de profesionales de la salud, donde aprendió la devoción de cuidar a otros y ha trabajado en el bienestar de la comunidad. Él ha transmitido estos valores a los que tienen la oportunidad de trabajar con él.</p>\r\n<p>Se graduó con honores como Doctor en Medicina en la PUCMM, y Cardiología en el Instituto Nacional de Cardiología Ignacio Chávez de México. El Dr. Redondo también realizó un postgrado en cuidados intensivos cardiovasculares y ecocardiografía Doppler. Durante muchos años, se desempeñó como Jefe de Servicio y Enseñanza de la Medicina y Cardiología en el Hospital Ricardo Limardo, así como el Centro Médico Bournigal.</p>\r\n<p>Además, el Dr. Redondo tiene una larga historia de participación activa en los negocios, la banca, y el desarrollo nacional. Él ha participado activamente en asuntos sociales, culturales y el desarrollo de los deportes locales en la comunidad.</p>\r\n<p>Su esposa, Lenina Redondo Abreu, quien ha sido una columna importante en cada aspecto del desarrollo de la red sanitaria, así como tomar un papel de liderazgo en los asuntos familiares. Tienen cinco hijos, que en la actualidad emprenden como profesionales en los servicios de salud del Grupo Rescue y son orgullosos abuelos de cuatro nietos.</p>','2013-01-01 07:51:20','2013-01-01 07:51:20'),(22,22,'en','','2013-01-01 07:51:20','2013-01-01 07:51:20'),(23,23,'en','<p>Co-Fundador del Grupo Rescue y miembro activo del Consejo de Directores, el Dr. William Redondo, además de ser el director general de la red también mantiene una estrecha relación y la supervisión directa en la calidad y el desarrollo de servicios de la red de atención de salud.</p>\r\n<p>Durante tres décadas, el Dr. William Redondo se ha mantenido activo en su profesión como médico ortopédico con méritos reconocidos por sus logros en esta área de especialización, así como, el mantenimiento de las funciones administrativas de la empresa.</p>\r\n<p>En primer lugar, como el Director del Departamento Internacional de más de 20 años las relaciones crecientes con los tour operadores, compañías de seguros médicos internacionales y compañías de asistencia en viaje.<br />Más tarde se convierte en el Director Médico. Durante los últimos cuatro años, se desempeña como el Director General de Centro Médico Bournigal. Sus esfuerzos han sido reconocidos en el Centro Médico Bournigal; méritos que recibe por realizar cuidados de alta calidad y el mayor crecimiento en los últimos treinta años como el pionero en el turismo médico en la República Dominicana.</p>\r\n<p>El Dr. William Redondo Galán es nativo de Puerto Plata, República Dominicana, el cual parte de una reconocido familia que tiene un gran trayecto y reputación en la medicina. Junto con su padre, José J. Redondo y su hermano el Dr. José Natalio Redondo llevó a cabo la gestión del Centro Médico Bournigal, en 1981, que es actualmente es la Clínica privada líder en la región Norte y parte de la Red de Grupo Rescue.</p>\r\n<p>Él finalizó sus estudios de medicina general en la UCMM de Santiago en el 1982 y más tarde se especializó en Traumatología y Ortopedia en la ciudad de México. Junto a su esposa, Sandra de Redondo, tienen cinco hijos.</p>','2013-01-01 07:51:58','2013-01-01 07:51:58'),(24,24,'en','','2013-01-01 07:51:58','2013-01-01 07:51:58'),(25,25,'en','<p>Manuel Carbajo se incorpora al Grupo Rescue en Febrero de 2011 como Director General, a partir de su<br />trayectoria de trabajo en el Centro Médico Punta Cana y luego establece las oficinas corporativas en la ciudad de Puerto Plata para dirigir el desarrollo del Grupo Rescue .</p>\r\n<p>Actualmente, supervisa la administración y las divisiones financieras, lo que lleva varios proyectos para ampliar las prácticas operativas y administrativas en los servicios de salud.</p>\r\n<p>Él lidera el desarrollo y la coordinación de nuevos proyectos de los hospitales de propiedad privada en la República Dominicana, así como la adquisición de certificaciones internacionales y la globalización de la red a través de los nuevos hospitales afiliados en México y España, a donde nuestros viajeros nos necesitan.</p>\r\n<p>Antes de incorporarse al Grupo Rescue, construyó una trayectoria de éxito en la industria hotelera. Manuel Carbajo fue Director Regional de Finanzas para el Caribe de AM Resorts, una cadena de hoteles de lujo en todo el Caribe con sede en Filadelfia, EE.UU., que actualmente cuenta con 27 hoteles repartidos por todo el Caribe.</p>\r\n<p>Estando involucrado por más de 15 años en la industria del turismo antes de unirse al sector de la salud cuenta con un vasto conocimiento en la gestión de hoteles de lujo en posiciones como Contralor de Finanzas en varios hoteles de cinco estrellas, la apertura de hoteles de la compañía Mac Hotels en Palma de Mallorca, el Hotel Princesa Yaiza en Lanzarote, España como controlador, y Contralor Financiero en el Hotel Iberostar Costa Dorada en la República Dominicana lo cual ha demostrado ofrecer una visión diferente de la Salud para la red creando una fusión de experiencia con la ciencia médica y los servicios de hospitalidad.<br />Nativo de Palma de Mallorca, España, Manuel Carbajo obtuvo un grado en Administración seguido por clases de postgrado en la Universidad de las Islas Baleares. Está casado con Ilia, con dos hijos.</p>','2013-01-01 07:52:44','2013-01-01 07:52:44'),(26,26,'en','','2013-01-01 07:52:44','2013-01-01 07:52:44'),(27,27,'en','<p>Charlotte inicia en la compañía en 2006 como Directora Financiera de la División Internacional. Inició su trabajo en el Centro Médico Punta Cana; luego uniéndose a nivel corporativo, donde es responsable de la supervisión directa del proceso de facturación internacional y el establecimiento de prácticas de contabilidad a través de la red.<br />Teniendo en cuenta el desarrollo del turismo en la zona, antes de la universidad, Charlotte participó como estudiante de intercambio con el Programa de AFS Intercultural en Alemania adquiriendo dicho idioma.</p>\r\n<p>A pesar de que ella siempre ha estado involucrada en el negocio de la salud desde la infancia por asistir en las funciones administrativas mientras estaba de vacaciones también ha cultivado el desarrollo de Grupo Rescue.<br />Licenciada en Administración de Empresas de la PUCMM en la ciudad de Santiago, República Dominicana. Durante su carrera ha trabajado en otras áreas administrativas en la República Dominicana. Charlotte Contreras y su esposo, Rafael Augusto Fernández, tienen dos hijos.</p>','2013-01-01 07:53:35','2013-01-01 07:53:35'),(28,28,'en','','2013-01-01 07:53:35','2013-01-01 07:53:35'),(29,29,'en','<p>Charlotte inicia en la compañía en 2006 como Directora Financiera de la División Internacional. Inició su trabajo en el Centro Médico Punta Cana; luego uniéndose a nivel corporativo, donde es responsable de la supervisión directa del proceso de facturación internacional y el establecimiento de prácticas de contabilidad a través de la red.<br />Teniendo en cuenta el desarrollo del turismo en la zona, antes de la universidad, Charlotte participó como estudiante de intercambio con el Programa de AFS Intercultural en Alemania adquiriendo dicho idioma.</p>\r\n<p>A pesar de que ella siempre ha estado involucrada en el negocio de la salud desde la infancia por asistir en las funciones administrativas mientras estaba de vacaciones también ha cultivado el desarrollo de Grupo Rescue.<br />Licenciada en Administración de Empresas de la PUCMM en la ciudad de Santiago, República Dominicana. Durante su carrera ha trabajado en otras áreas administrativas en la República Dominicana. Charlotte Contreras y su esposo, Rafael Augusto Fernández, tienen dos hijos.</p>','2013-01-01 07:54:15','2013-01-01 07:54:15'),(30,30,'en','','2013-01-01 07:54:15','2013-01-01 07:54:15'),(31,31,'en','<p>Ilia Redondo se unió oficialmente al Grupo de Rescue en 2003 como Directora de la División Internacional en el Centro Médico Bournigal. Más tarde, en 2004, se convirtió en el directora internacional de la red de salud. Como parte de su pasión en la asistencia sanitaria que ella hereda de su familia, llevaba desde muy niña tareas administrativas durante su tiempo libre en la escuela.</p>\r\n<p>Actualmente dirige las operaciones de los clientes de la División Internacional de la red. Además, ella es una participante activa en la expansión global del Grupo de Rescue.<br />Nativa de Puerto Plata, República Dominicana, Ilia Redondo se graduó con Summa Cum Laude en Administración de Empresas de PUCMMC en Santiago, República Dominicana. Más tarde, logró un segundo grado en Ciencias Aplicadas con concentración en Gestión Administrativa del TC3, en Ithaca, Nueva York. Ella está casada con Manuel y tienen dos hijos.</p>','2013-01-01 07:54:54','2013-01-01 07:54:54'),(32,32,'en','','2013-01-01 07:54:54','2013-01-01 07:54:54'),(33,33,'en','<p>Irma Mojica, Directora de Comercial, con sede en Punta Cana, es una hotelera de 12 años de la ciudad de Nueva York con amplia experiencia en la industria hotelera. Ella se ha integrado recientemente el Grupo Rescue en el 2011 creando una fusión entre la experiencia médica y normas de servicios de hospitalidad, además de crear programas comunitarios.</p>\r\n<p>Más recientemente trabajó para una cadena hotelera estadounidense en Punta Cana como Asistente de Operaciones.<br />Durante su carrera, la Sra. Mojica ha servido en la República Dominicana en el año 2001 con un operador turístico de prestigio de Norte América ( Amstar DMC y Apple Vacations) estableciendo y presentando el destino de vacaciones recién descubierto de Punta Cana a las industrias de viajes de los Estados Unidos.</p>\r\n<p>Ella también trabaja con la Oficina de la Embajada de EE.UU. como agente consular en Punta Cana.<br />Habla con fluidez Inglés y tiene una licenciatura en Administración de Empresas, con concentración en Mercadeo de la Universidad Baruch en Nueva York graduada con Cum Laude. Irma es la madre de dos hijas.</p>','2013-01-01 07:55:26','2013-01-01 07:55:26'),(34,34,'en','','2013-01-01 07:55:26','2013-01-01 07:55:26'),(35,35,'en','<p>Después de una vasta experiencia en evacuación médica internacional, repatriación, facturación y auditoría en el campo de la asistencia médica, el Dr. Alberto Mena se incorpora al Grupo Rescue en el 2000 para la facturación Internacional y Director de Relaciones con Proveedores.</p>\r\n<p>Dr. Mena trata a diario con seguros médicos y compañías de asistencia en revisión médica y procedimientos de reclamación manteniendo una relación estrecha con los Seguros Internacionales y Compañías de Asistencia dentro de la Red Grupo Rescue al igual que provee servicios de asistencia para repatriar a los clientes a su casa después de recibir atención médica en los centros de la red.</p>\r\n<p>Dr. Mena es nativo de San Francisco de Macorís, donde se graduó en medicina en la Universidad Central del Este, República Dominicana, en 1988. Está casado con Francis y tienen tres hijos.</p>','2013-01-01 07:56:00','2013-01-01 07:56:00'),(36,36,'en','','2013-01-01 07:56:00','2013-01-01 07:56:00'),(37,37,'en','','2013-01-01 07:56:59','2013-01-01 07:56:59'),(38,38,'en','','2013-01-01 07:56:59','2013-01-01 07:56:59'),(39,39,'en','','2013-01-01 07:57:19','2013-01-01 07:57:19'),(40,40,'en','','2013-01-01 07:57:19','2013-01-01 07:57:19'),(41,41,'en','<h2>Misión</h2>\r\n<p>Nuestro compromiso es con la salud de nuestros pacientes, garantizándoles un cuidado médico personalizado, de óptima calidad y accesible a toda la población, con un equipo humano altamente profesional y en un ambiente de vanguardismo regido por estándares de calidad internacional.</p>\r\n<h2>Visión</h2>\r\n<p>Trabajamos intensamente para mantener e incrementar nuestra presencia y convertirnos en la red de servicios médicos más exitosa en el mercado global, estableciendo alianzas estratégicas con otras instituciones de salud, al igual que apoyando el desarrollo de nuestras comunidades con acciones que resalten el compromiso y el desempeño de nuestros colaboradores, el desarrollo científico y tecnológico a favor del ser humano.</p>\r\n<h2>Valores</h2>\r\n<ul><li>    Nuestros pacientes son nuestra prioridad</li>\r\n<li>Pasión por nuestro oficio</li>\r\n<li>Calidez humana en una cultura familiar</li>\r\n<li>Confianza e Integridad</li>\r\n<li>Innovación y Liderazgo</li>\r\n<li>Cuidado de nuestro medio ambiente</li>\r\n</ul>','2013-01-01 07:57:48','2013-01-01 07:57:48'),(42,42,'en','','2013-01-01 07:57:48','2013-01-01 07:57:48'),(43,43,'en','','2013-01-01 07:58:11','2013-01-01 07:58:11'),(44,44,'en','','2013-01-01 07:58:11','2013-01-01 07:58:11'),(45,45,'en','','2013-01-01 07:58:59','2013-01-01 07:58:59'),(46,46,'en','','2013-01-01 07:58:59','2013-01-01 07:58:59'),(47,47,'en','','2013-01-01 08:01:57','2013-01-01 08:01:57'),(48,48,'en','','2013-01-01 08:01:57','2013-01-01 08:01:57'),(49,49,'en','<h1>Entérate de los beneficios que obtienes al formar parte de nuestro Club de Donantes.</h1>\r\n<p>En el Centro Médico Bournigal usted puede regalar una vida a través de nuestro CLUB de Donantes. Sea parte importante en garantizar que usted, los suyos y nuestra comunidad tenga un nivel de servicio y respuesta médica eficiente, en situaciones críticas de<br />emergencia donde se requiera la transfusión de sangre para salvar la vida de un ser humano.</p>\r\n<p>Apoye el desarrollo de un sistema sanitario más seguro y eficiente en nuestra zona Norte del país, afiliándose al programa de Donación Voluntaria de Sangre, de manera activa, segura y eficiente; garantizando la mejor respuesta inmediata en el manejo de los pacientes críticos en la zona turística del país donde vivimos, y que cuenta con el más alto nivel de tránsito de visitantes.</p>\r\n<h3>BENEFICIOS DEL MIEMBRO ACTIVO DEL CLUB DE DONANTES DEL CMBO:</h3>\r\n<p>Identificación con Carnet al día, haciendo constar de su “buen estado de salud”, y<br />apropiadas condiciones para ser Donante de Sangre Voluntario.</p>\r\n<p>Exoneración del 100% (La totalidad) de todos los pagos que por concepto de diferencia<br />de su póliza de seguro médico, tenga que hacer en el CMBO, mientras dure su<br />membresía en el Club.</p>\r\n<p>En caso de NO tener un seguro médico y tenga que ser atendido en el CMBO, se le<br />otorga como beneficio directo por su membresía al club aplicando los descuentos<br />siguientes:</p>\r\n\r\n<table class=\"table table-striped\"><tbody>\r\n<tr>\r\n<th>Servicio</th>\r\n<th>Descuento</th>\r\n</tr>\r\n<tr>\r\n<td>Habitación Regular</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Unidad Cuidados Intensivos</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Emergencias</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Cirugía Mayor</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Cirugía Menor</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Endoscopía</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Parto</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Medicamentos en Farmacia</td>\r\n<td>10%</td>\r\n</tr>\r\n<tr><td>Laboratorio Clínico</td>\r\n<td>20%</td>\r\n</tr>\r\n<tr><td>Radilogía, Sonografía</td>\r\n<td>20%</td>\r\n</tr>\r\n<tr><td>Tomografía, Mamografía</td>\r\n<td>20%</td>\r\n</tr>\r\n<tr><td>Horarios de consulta</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Honorarios Médicos en Internamiento</td>\r\n<td>30%</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n<p>REQUISITOS PARA SER ADMITIDO AL CLUB DE DONANTES EN CMBO:</p>\r\n<ol><li>Aceptar ser “Donante Voluntario”</li>\r\n<li>Adulto sano, entre los 18 y 70 años de edad</li>\r\n<li>Peso corporal mayor a 50 Kg (110 lbs).</li>\r\n<li>Aceptar un chequeo médico general al momento del ingreso al Club, con una re-evaluación cada seis (6) meses, y cada vez que sea requerido para una Donación de Emergencia; que incluye:</li>\r\n</ol>\r\n<ul><li>Examen Físico Completo que confirme que cumple con los requisitos siguientes:</li>\r\n<li>Presión Arterial Diastólica (Baja): Entre 50mmhg – 100mmhg</li>\r\n<li>Presión Arterial Sistólica (Alta): Entre 100mmhg – 180mmhg</li>\r\n<li>Pulso Arterial Regular, entre 50 – 110 pulsaciones por minuto</li>\r\n<li>Valor de Hemoglobina al momento de la donación de:<br /><ul><li>Para hombres: Mayor a 13 Grs/Dl</li>\r\n<li>Para Mujeres: Mayor a 13 Grs/Dl</li>\r\n</ul>\r\n</li>\r\n<li>Prueba de Estabilidad Emocional</li>\r\n<li>Análisis de Sangre (Hemograma) normal</li>\r\n<li>Análisis de Anti-HIV I &amp; II (Sida) Negativo</li>\r\n<li>Análisis de HbsAg (Hepatitis B) Negativo</li>\r\n<li>Análisis de HVC (Hepatitis C) Negativo</li>\r\n<li>Análisis de VDRL (Sífilis) No Reactivo</li>\r\n<li>Análisis de Gota Gruesa (Malaria) Negativo</li>\r\n</ul>\r\n\r\n<h3>Compromiso para los miembros:</h3>\r\n<ul><li>Compromiso por escrito de responder al llamado del CMBO, a cualquier hora del día<br />o la noche, todos los días de la semana, cuando así le sea posible, en caso de necesitar<br />su donación de emergencia, y/o cuando se necesite disponer de su tipo de sangre, para<br />el suministro habitual del hospital.</li>\r\n<li>Donar una (1) unidad de sangre, al momento de ser aceptado como miembro.</li>\r\n<li> Cumplir con los requisitos de Admisión al Club de Donantes</li>\r\n<li>Frecuencia de Donación recomendable:<br />Como norma general, un máximo de 4 veces al año (Periodo mínimo entre dos<br />donaciones: 2 meses)</li>\r\n<li>Estar en buen estado de salud. Antes de cada donación, el médico realizará una<br />nueva historia clínica y un examen físico completo, para valorar si está en condiciones<br />de donar.</li>\r\n</ul>\r\n<h3>RECUERDA QUE CON TU SANGRE PODEMOS HACER GRANDES COSAS. AYUDANOS A SALVAR VIDAS. DONA</h3>\r\n<p>Otros Beneficios de formar parte del Club de Donantes del Centro Médico Bournigal:</p>\r\n<p>Exoneración del 100% de los cargos del Laboratorio, por Sangre Transfundida, si es<br />usada por el propio miembro del club o uno de sus dependientes directos (Padres,<br />Hijos, Hermanos) dentro del CMBO.</p>\r\n<p>Derecho a solicitar el suministro de Sangre Disponible en el Laboratorio del CMBO<br />para ser usada por algún familiar directo (Padre, Hijo, Hermano) que sea tratado fuera<br />del CMBO, solo cubriendo los gastos generales de los equipos descartables para la<br />transfusión (Bolsa, Bajante, Jeringa, etc.) y las pruebas de laboratorio necesarias para<br />garantizar la seguridad de la sangre a transfundir, con un 20% de descuento sobre<br />el precio regular de las mismas.</p>','2013-01-01 08:03:49','2013-01-01 08:03:49'),(50,50,'en','\r\n<a href=\"http://glacial-refuge-9251.herokuapp.com/system/resources/BAhbBlsHOgZmSSIsMjAxMi8xMi8yOS8yMV8wNl8wMF84MzJfUmVnYWxhX1ZpZGEucGRmBjoGRVQ/Regala%20Vida.pdf\" class=\"btn btn primary\">Descargar Versión PDF</a>\r\n','2013-01-01 08:03:49','2013-01-01 08:03:49'),(51,51,'en','','2013-01-01 08:04:26','2013-01-01 08:04:26'),(52,52,'en','','2013-01-01 08:04:26','2013-01-01 08:04:26'),(53,53,'en','\r\n<h1>El Centro Médico Bournigal cuenta con la más avanzada tecnología para la realización de estudios médicos</h1>\r\n\r\n<table class=\"table\"><tbody>\r\n<tr><th>Radiología Digital</th>\r\n<th>Biopsias</th>\r\n</tr>\r\n<tr><td>Cistograma de Relleno<br />Colon Baritado<br />Densitometría Ósea Cuerpo Entero<br />Edad Ósea<br />Histero-sonografía<br />Histerosalpingografía<br />Radiología Digital<br />Rayos X<br />Serie Cardíaca<br />Serie Esófago Gastrodoudenal <br />Serie Gastrodoudenal en Adultos y Niños<br />Serie Obstructiva<br />Serie Ósea Metabólica<br />Serie Ósea Metástasica<br />Tránsito Faringe-Esofágico<br />Tránsito Intestinal<br />Uretrocistografía<br />Urografía Endovenosa</td>\r\n<td>Biopsia Sonodirigida de Próstata<br />Biopsia Sonodirigida de Próstata Paquete Anestésico<br />Biopsia Sonodirigida de Tiroides<br />Biopsia Sonodirigida de  Mamas  con Agujas Fina<br />Biopsia Sonodirigida de  Mamas  con Agujas Trucut<br />Biopsia Sonodirigida Hepática<br />Biopsia Sonodirigida  de Partes Blandas<br />Biopsia Sonodirigida  Renal</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n<hr />\r\n<p>people</p>\r\n<table class=\"table\">\r\n<tbody><tr><td>Mamografías Digitales</td>\r\n<td>Tomografía Simple y Contrastada</td>\r\n</tr>\r\n<tr><td>Compresión<br />Magnificación<br />Mamografía Bilateral<br />Mamografía Digital<br />Mamografía Unilateral<br />Perfil Mamario</td>\r\n<td>Tomografía de Abdomen<br />Tomografía de Columna Cervical<br />Tomografía de Columna Dorsal Alta<br />Tomografía de Columna Dorsal Baja<br />Tomografía de Columna Lumbar<br />Tomografía de Conducto Aditivo<br />Tomografía de Cráneo<br />Tomografía de Cuello<br />Tomografía de Musculo Esquelético<br />Tomografía de Órbita<br />Tomografía de Pelvis<br />Tomografía de Senos Paranasales<br />Tomografía de Silla Turca<br />Tomografía de Tórax</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n\r\n\r\n\r\n\r\n<table class=\"table\"><tbody><tr><td>Sonografías</td>\r\n<td>Doppler Vascular Periférico</td>\r\n</tr>\r\n<tr><td>Sonografía Transrectal (Próstata)<br />Sonografía Transfontanelar<br />Sonografía Testicular (Escrotal)<br />Sonografía Renal<br />Sonografía Prostática (Suprapúbica)<br />Sonografía Pene<br />Sonografía Pélvica<br />Sonografía Musculo Esquelético<br />Sonografía de Tiroides<br />Sonografía de partes Blandas<br />Sonografía de Mama<br />Sonografía Control Folicular<br />Sonografía Abdominal<br />Sonografía 2D Tridimensional (3D) y 4D<br />Sonografía  Sub-Maxilar<br />Sonografía  Obstétrica<br />Sonografía   Transvaginal</td>\r\n<td>Doppler Abdominal (Eje Espleno Portal)<br />Doppler Aorta<br />Doppler Arterial<br />Doppler Fístula Arterio-Venoso<br />Doppler Ginecológico (Vejiga Llena)<br />Doppler Injerto Renal<br />Doppler Obstétrico<br />Doppler Oftálmico<br />Doppler Renal<br />Doppler Testicular<br />Doppler Venoso </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','2013-01-01 08:04:59','2013-01-01 08:04:59'),(54,54,'en','','2013-01-01 08:04:59','2013-01-01 08:04:59'),(55,55,'en','','2013-01-01 08:05:39','2013-01-01 08:05:39'),(56,56,'en','','2013-01-01 08:05:39','2013-01-01 08:05:39'),(59,59,'en',NULL,'2013-01-01 08:25:03','2013-01-01 08:25:03'),(60,60,'en',NULL,'2013-01-01 08:25:03','2013-01-01 08:25:03');
/*!40000 ALTER TABLE `refinery_page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_parts`
--

DROP TABLE IF EXISTS `refinery_page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_parts_on_id` (`id`),
  KEY `index_refinery_page_parts_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_parts`
--

LOCK TABLES `refinery_page_parts` WRITE;
/*!40000 ALTER TABLE `refinery_page_parts` DISABLE KEYS */;
INSERT INTO `refinery_page_parts` VALUES (1,1,'Body','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>',0,'2013-01-01 06:44:35','2013-01-01 11:20:33'),(2,1,'Side Body','<p>This is another block of content over here.</p>',1,'2013-01-01 06:44:35','2013-01-01 11:20:33'),(3,2,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2013-01-01 06:44:35','2013-01-01 06:44:35'),(6,4,'Body',NULL,NULL,'2013-01-01 06:44:37','2013-01-01 06:44:37'),(7,4,'Side Body',NULL,NULL,'2013-01-01 06:44:37','2013-01-01 06:44:37'),(8,5,'Body','<img alt=\"Doctor_960x370\" src=\"http://glacial-refuge-9251.s3.amazonaws.com/2012/12/31/02/22/15/432/doctor_960x370.jpg\" />',0,'2013-01-01 06:44:37','2013-01-01 08:06:34'),(9,5,'Side Body','',1,'2013-01-01 06:44:37','2013-01-01 08:06:34'),(10,1,'box_one','<h2>Heading</h2>\r\n<p>Box oneLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ornare augue ac nulla pharetra in consequat augue accumsan.</p>\r\n<img src=\"http://glacial-refuge-9251.s3.amazonaws.com/2012/12/31/07/30/54/161/rails.jpg\" alt=\"Rails\" />\r\n\r\n<p class=\"lead\"></p>\r\n<p class=\"lead\">Entérate de los beneficios que obtienes al formar parte de nuestro Club de Donantes.</p>\r\n<p><a href=\"servicios-de-salud/club-de-donantes\" class=\"btn btn-primary\">Leer más...</a>\r\n</p>',2,'2013-01-01 07:35:44','2013-01-01 11:20:33'),(11,1,'box_two','<h2>Especialidades</h2>\r\n<table><tbody><tr><td><ul><li>Cardiología</li>\r\n<li>Cirugía General</li>\r\n<li>Cirugía Maxilofacial</li>\r\n<li>Cirugía Oncológica</li>\r\n<li>Cirugía Pediátrica</li>\r\n<li>Dermatología</li>\r\n<li>Endocrinología</li>\r\n<li>Gastroenterología</li>\r\n<li>Ginecología-Obstetricia</li>\r\n</ul>\r\n</td>\r\n<td><ul><li>Hematología</li>\r\n<li>Neumología</li>\r\n<li>Neurocirugía</li>\r\n<li>Oftalmología</li>\r\n<li>Ortopedia-Traumatología</li>\r\n<li>Otorrinolaringología</li>\r\n<li>Patología</li>\r\n<li>Pediatría</li>\r\n<li>Urología</li>\r\n</ul>\r\n</td>\r\n<td valign=\"top\">\r\n<ul><li>Traumatología</li>\r\n<li>Ver todas las especialidades</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>',3,'2013-01-01 07:35:44','2013-01-01 11:20:33'),(12,1,'box_three','\r\n<p class=\"lead\">Dejando trazos de amor contigo paso a paso</p>',4,'2013-01-01 07:35:44','2013-01-01 11:20:33'),(13,1,'box_four','<ul><li>Social Media</li>\r\n<li>By posting on any site below, you are bound by the Social Media Policy.</li>\r\n<li>Facebook</li>\r\n<li>YouTube</li>\r\n<li>Twitter</li>\r\n<li>LinkedIn</li>\r\n<li>Pinterest</li>\r\n<li>Google+</li>\r\n</ul>',5,'2013-01-01 07:35:44','2013-01-01 11:20:33'),(14,1,'box_five','<ul><li>Home</li>\r\n<li>Plantas de piso</li>\r\n<li>Sobre Centro Médico Bournigal</li>\r\n<li>Alcance en la comunidad</li>\r\n<li>Carrrera en Centro Médico Bournigal</li>\r\n</ul>',6,'2013-01-01 07:35:44','2013-01-01 11:20:33'),(15,1,'box_six','<ul><li>Red Grupo Rescue</li>\r\n<li>Centro Médico Punta Cana</li>\r\n<li>Clinica Canela</li>\r\n<li>Corazones Unidos</li>\r\n<li>Centro Médico Samaná</li>\r\n<li>Unión Médica Norte</li>\r\n<li>Centro Médico Galmedical</li>\r\n</ul>',7,'2013-01-01 07:35:44','2013-01-01 11:20:33'),(16,1,'box_seven','<ul><li>Información del sitio web</li>\r\n<li>Envíanos tus comentarios</li>\r\n<li>Derechos de autor y licencias</li>\r\n<li>Mapa del sitio</li>\r\n<li>Sobre este sitio web</li>\r\n<li>Terminos de uso del sitio web</li>\r\n<li>Política de privacidad</li>\r\n</ul>',8,'2013-01-01 07:35:44','2013-01-01 11:20:33'),(17,6,'Body','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\r\n\r\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>',0,'2013-01-01 07:40:03','2013-01-01 07:40:03'),(18,6,'Side Body','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>',1,'2013-01-01 07:40:03','2013-01-01 07:40:03'),(19,7,'Body','',0,'2013-01-01 07:50:03','2013-01-01 07:50:03'),(20,7,'Side Body','',1,'2013-01-01 07:50:03','2013-01-01 07:50:03'),(21,8,'Body','<p>Después de una extensa profesión en el área de la salud con más de 20 años de experiencia en la práctica hospitalaria y de trabajar como cardiólogo clínico en el desarrollo de instituciones de salud en áreas de alta concentración de turistas en toda la República Dominicana, José Natalio Redondo, funda en la década del 2000, Grupo Rescue, la Red Nacional de Servicios de Salud.<br />Junto con su hermano el Dr. William Redondo, cirujano ortopédico, otros parientes cercanos y los médicos asociados, como son Juan B. Correa, Ramón Mota, Luis Marcano Peña y Juan Manuel Canela formó la primera red de medicina en el país operando con normas internacionales.</p>\r\n<p>Permaneció como C.E.O. y Presidente del Consejo de Administración de la red. Actualmente ocupa la Presidencia, responsable de la dirección y desarrollo de nuevos proyectos.</p>\r\n<p>El Dr. Redondo es nativo de Puerto Plata, República Dominicana proviene de una familia muy destacada por una larga historia de profesionales de la salud, donde aprendió la devoción de cuidar a otros y ha trabajado en el bienestar de la comunidad. Él ha transmitido estos valores a los que tienen la oportunidad de trabajar con él.</p>\r\n<p>Se graduó con honores como Doctor en Medicina en la PUCMM, y Cardiología en el Instituto Nacional de Cardiología Ignacio Chávez de México. El Dr. Redondo también realizó un postgrado en cuidados intensivos cardiovasculares y ecocardiografía Doppler. Durante muchos años, se desempeñó como Jefe de Servicio y Enseñanza de la Medicina y Cardiología en el Hospital Ricardo Limardo, así como el Centro Médico Bournigal.</p>\r\n<p>Además, el Dr. Redondo tiene una larga historia de participación activa en los negocios, la banca, y el desarrollo nacional. Él ha participado activamente en asuntos sociales, culturales y el desarrollo de los deportes locales en la comunidad.</p>\r\n<p>Su esposa, Lenina Redondo Abreu, quien ha sido una columna importante en cada aspecto del desarrollo de la red sanitaria, así como tomar un papel de liderazgo en los asuntos familiares. Tienen cinco hijos, que en la actualidad emprenden como profesionales en los servicios de salud del Grupo Rescue y son orgullosos abuelos de cuatro nietos.</p>',0,'2013-01-01 07:51:20','2013-01-01 07:51:20'),(22,8,'Side Body','',1,'2013-01-01 07:51:20','2013-01-01 07:51:20'),(23,9,'Body','<p>Co-Fundador del Grupo Rescue y miembro activo del Consejo de Directores, el Dr. William Redondo, además de ser el director general de la red también mantiene una estrecha relación y la supervisión directa en la calidad y el desarrollo de servicios de la red de atención de salud.</p>\r\n<p>Durante tres décadas, el Dr. William Redondo se ha mantenido activo en su profesión como médico ortopédico con méritos reconocidos por sus logros en esta área de especialización, así como, el mantenimiento de las funciones administrativas de la empresa.</p>\r\n<p>En primer lugar, como el Director del Departamento Internacional de más de 20 años las relaciones crecientes con los tour operadores, compañías de seguros médicos internacionales y compañías de asistencia en viaje.<br />Más tarde se convierte en el Director Médico. Durante los últimos cuatro años, se desempeña como el Director General de Centro Médico Bournigal. Sus esfuerzos han sido reconocidos en el Centro Médico Bournigal; méritos que recibe por realizar cuidados de alta calidad y el mayor crecimiento en los últimos treinta años como el pionero en el turismo médico en la República Dominicana.</p>\r\n<p>El Dr. William Redondo Galán es nativo de Puerto Plata, República Dominicana, el cual parte de una reconocido familia que tiene un gran trayecto y reputación en la medicina. Junto con su padre, José J. Redondo y su hermano el Dr. José Natalio Redondo llevó a cabo la gestión del Centro Médico Bournigal, en 1981, que es actualmente es la Clínica privada líder en la región Norte y parte de la Red de Grupo Rescue.</p>\r\n<p>Él finalizó sus estudios de medicina general en la UCMM de Santiago en el 1982 y más tarde se especializó en Traumatología y Ortopedia en la ciudad de México. Junto a su esposa, Sandra de Redondo, tienen cinco hijos.</p>',0,'2013-01-01 07:51:58','2013-01-01 07:51:58'),(24,9,'Side Body','',1,'2013-01-01 07:51:58','2013-01-01 07:51:58'),(25,10,'Body','<p>Manuel Carbajo se incorpora al Grupo Rescue en Febrero de 2011 como Director General, a partir de su<br />trayectoria de trabajo en el Centro Médico Punta Cana y luego establece las oficinas corporativas en la ciudad de Puerto Plata para dirigir el desarrollo del Grupo Rescue .</p>\r\n<p>Actualmente, supervisa la administración y las divisiones financieras, lo que lleva varios proyectos para ampliar las prácticas operativas y administrativas en los servicios de salud.</p>\r\n<p>Él lidera el desarrollo y la coordinación de nuevos proyectos de los hospitales de propiedad privada en la República Dominicana, así como la adquisición de certificaciones internacionales y la globalización de la red a través de los nuevos hospitales afiliados en México y España, a donde nuestros viajeros nos necesitan.</p>\r\n<p>Antes de incorporarse al Grupo Rescue, construyó una trayectoria de éxito en la industria hotelera. Manuel Carbajo fue Director Regional de Finanzas para el Caribe de AM Resorts, una cadena de hoteles de lujo en todo el Caribe con sede en Filadelfia, EE.UU., que actualmente cuenta con 27 hoteles repartidos por todo el Caribe.</p>\r\n<p>Estando involucrado por más de 15 años en la industria del turismo antes de unirse al sector de la salud cuenta con un vasto conocimiento en la gestión de hoteles de lujo en posiciones como Contralor de Finanzas en varios hoteles de cinco estrellas, la apertura de hoteles de la compañía Mac Hotels en Palma de Mallorca, el Hotel Princesa Yaiza en Lanzarote, España como controlador, y Contralor Financiero en el Hotel Iberostar Costa Dorada en la República Dominicana lo cual ha demostrado ofrecer una visión diferente de la Salud para la red creando una fusión de experiencia con la ciencia médica y los servicios de hospitalidad.<br />Nativo de Palma de Mallorca, España, Manuel Carbajo obtuvo un grado en Administración seguido por clases de postgrado en la Universidad de las Islas Baleares. Está casado con Ilia, con dos hijos.</p>',0,'2013-01-01 07:52:44','2013-01-01 07:52:44'),(26,10,'Side Body','',1,'2013-01-01 07:52:44','2013-01-01 07:52:44'),(27,11,'Body','<p>Charlotte inicia en la compañía en 2006 como Directora Financiera de la División Internacional. Inició su trabajo en el Centro Médico Punta Cana; luego uniéndose a nivel corporativo, donde es responsable de la supervisión directa del proceso de facturación internacional y el establecimiento de prácticas de contabilidad a través de la red.<br />Teniendo en cuenta el desarrollo del turismo en la zona, antes de la universidad, Charlotte participó como estudiante de intercambio con el Programa de AFS Intercultural en Alemania adquiriendo dicho idioma.</p>\r\n<p>A pesar de que ella siempre ha estado involucrada en el negocio de la salud desde la infancia por asistir en las funciones administrativas mientras estaba de vacaciones también ha cultivado el desarrollo de Grupo Rescue.<br />Licenciada en Administración de Empresas de la PUCMM en la ciudad de Santiago, República Dominicana. Durante su carrera ha trabajado en otras áreas administrativas en la República Dominicana. Charlotte Contreras y su esposo, Rafael Augusto Fernández, tienen dos hijos.</p>',0,'2013-01-01 07:53:35','2013-01-01 07:53:35'),(28,11,'Side Body','',1,'2013-01-01 07:53:35','2013-01-01 07:53:35'),(29,12,'Body','<p>Charlotte inicia en la compañía en 2006 como Directora Financiera de la División Internacional. Inició su trabajo en el Centro Médico Punta Cana; luego uniéndose a nivel corporativo, donde es responsable de la supervisión directa del proceso de facturación internacional y el establecimiento de prácticas de contabilidad a través de la red.<br />Teniendo en cuenta el desarrollo del turismo en la zona, antes de la universidad, Charlotte participó como estudiante de intercambio con el Programa de AFS Intercultural en Alemania adquiriendo dicho idioma.</p>\r\n<p>A pesar de que ella siempre ha estado involucrada en el negocio de la salud desde la infancia por asistir en las funciones administrativas mientras estaba de vacaciones también ha cultivado el desarrollo de Grupo Rescue.<br />Licenciada en Administración de Empresas de la PUCMM en la ciudad de Santiago, República Dominicana. Durante su carrera ha trabajado en otras áreas administrativas en la República Dominicana. Charlotte Contreras y su esposo, Rafael Augusto Fernández, tienen dos hijos.</p>',0,'2013-01-01 07:54:15','2013-01-01 07:54:15'),(30,12,'Side Body','',1,'2013-01-01 07:54:15','2013-01-01 07:54:15'),(31,13,'Body','<p>Ilia Redondo se unió oficialmente al Grupo de Rescue en 2003 como Directora de la División Internacional en el Centro Médico Bournigal. Más tarde, en 2004, se convirtió en el directora internacional de la red de salud. Como parte de su pasión en la asistencia sanitaria que ella hereda de su familia, llevaba desde muy niña tareas administrativas durante su tiempo libre en la escuela.</p>\r\n<p>Actualmente dirige las operaciones de los clientes de la División Internacional de la red. Además, ella es una participante activa en la expansión global del Grupo de Rescue.<br />Nativa de Puerto Plata, República Dominicana, Ilia Redondo se graduó con Summa Cum Laude en Administración de Empresas de PUCMMC en Santiago, República Dominicana. Más tarde, logró un segundo grado en Ciencias Aplicadas con concentración en Gestión Administrativa del TC3, en Ithaca, Nueva York. Ella está casada con Manuel y tienen dos hijos.</p>',0,'2013-01-01 07:54:54','2013-01-01 07:54:54'),(32,13,'Side Body','',1,'2013-01-01 07:54:54','2013-01-01 07:54:54'),(33,14,'Body','<p>Irma Mojica, Directora de Comercial, con sede en Punta Cana, es una hotelera de 12 años de la ciudad de Nueva York con amplia experiencia en la industria hotelera. Ella se ha integrado recientemente el Grupo Rescue en el 2011 creando una fusión entre la experiencia médica y normas de servicios de hospitalidad, además de crear programas comunitarios.</p>\r\n<p>Más recientemente trabajó para una cadena hotelera estadounidense en Punta Cana como Asistente de Operaciones.<br />Durante su carrera, la Sra. Mojica ha servido en la República Dominicana en el año 2001 con un operador turístico de prestigio de Norte América ( Amstar DMC y Apple Vacations) estableciendo y presentando el destino de vacaciones recién descubierto de Punta Cana a las industrias de viajes de los Estados Unidos.</p>\r\n<p>Ella también trabaja con la Oficina de la Embajada de EE.UU. como agente consular en Punta Cana.<br />Habla con fluidez Inglés y tiene una licenciatura en Administración de Empresas, con concentración en Mercadeo de la Universidad Baruch en Nueva York graduada con Cum Laude. Irma es la madre de dos hijas.</p>',0,'2013-01-01 07:55:26','2013-01-01 07:55:26'),(34,14,'Side Body','',1,'2013-01-01 07:55:26','2013-01-01 07:55:26'),(35,15,'Body','<p>Después de una vasta experiencia en evacuación médica internacional, repatriación, facturación y auditoría en el campo de la asistencia médica, el Dr. Alberto Mena se incorpora al Grupo Rescue en el 2000 para la facturación Internacional y Director de Relaciones con Proveedores.</p>\r\n<p>Dr. Mena trata a diario con seguros médicos y compañías de asistencia en revisión médica y procedimientos de reclamación manteniendo una relación estrecha con los Seguros Internacionales y Compañías de Asistencia dentro de la Red Grupo Rescue al igual que provee servicios de asistencia para repatriar a los clientes a su casa después de recibir atención médica en los centros de la red.</p>\r\n<p>Dr. Mena es nativo de San Francisco de Macorís, donde se graduó en medicina en la Universidad Central del Este, República Dominicana, en 1988. Está casado con Francis y tienen tres hijos.</p>',0,'2013-01-01 07:56:00','2013-01-01 07:56:00'),(36,15,'Side Body','',1,'2013-01-01 07:56:00','2013-01-01 07:56:00'),(37,16,'Body','',0,'2013-01-01 07:56:59','2013-01-01 07:56:59'),(38,16,'Side Body','',1,'2013-01-01 07:56:59','2013-01-01 07:56:59'),(39,17,'Body','',0,'2013-01-01 07:57:19','2013-01-01 07:57:19'),(40,17,'Side Body','',1,'2013-01-01 07:57:19','2013-01-01 07:57:19'),(41,18,'Body','<h2>Misión</h2>\r\n<p>Nuestro compromiso es con la salud de nuestros pacientes, garantizándoles un cuidado médico personalizado, de óptima calidad y accesible a toda la población, con un equipo humano altamente profesional y en un ambiente de vanguardismo regido por estándares de calidad internacional.</p>\r\n<h2>Visión</h2>\r\n<p>Trabajamos intensamente para mantener e incrementar nuestra presencia y convertirnos en la red de servicios médicos más exitosa en el mercado global, estableciendo alianzas estratégicas con otras instituciones de salud, al igual que apoyando el desarrollo de nuestras comunidades con acciones que resalten el compromiso y el desempeño de nuestros colaboradores, el desarrollo científico y tecnológico a favor del ser humano.</p>\r\n<h2>Valores</h2>\r\n<ul><li>    Nuestros pacientes son nuestra prioridad</li>\r\n<li>Pasión por nuestro oficio</li>\r\n<li>Calidez humana en una cultura familiar</li>\r\n<li>Confianza e Integridad</li>\r\n<li>Innovación y Liderazgo</li>\r\n<li>Cuidado de nuestro medio ambiente</li>\r\n</ul>',0,'2013-01-01 07:57:48','2013-01-01 07:57:48'),(42,18,'Side Body','',1,'2013-01-01 07:57:48','2013-01-01 07:57:48'),(43,19,'Body','',0,'2013-01-01 07:58:11','2013-01-01 07:58:11'),(44,19,'Side Body','',1,'2013-01-01 07:58:11','2013-01-01 07:58:11'),(45,20,'Body','',0,'2013-01-01 07:58:59','2013-01-01 07:58:59'),(46,20,'Side Body','',1,'2013-01-01 07:58:59','2013-01-01 07:58:59'),(47,21,'Body','',0,'2013-01-01 08:01:57','2013-01-01 08:01:57'),(48,21,'Side Body','',1,'2013-01-01 08:01:57','2013-01-01 08:01:57'),(49,22,'Body','<h1>Entérate de los beneficios que obtienes al formar parte de nuestro Club de Donantes.</h1>\r\n<p>En el Centro Médico Bournigal usted puede regalar una vida a través de nuestro CLUB de Donantes. Sea parte importante en garantizar que usted, los suyos y nuestra comunidad tenga un nivel de servicio y respuesta médica eficiente, en situaciones críticas de<br />emergencia donde se requiera la transfusión de sangre para salvar la vida de un ser humano.</p>\r\n<p>Apoye el desarrollo de un sistema sanitario más seguro y eficiente en nuestra zona Norte del país, afiliándose al programa de Donación Voluntaria de Sangre, de manera activa, segura y eficiente; garantizando la mejor respuesta inmediata en el manejo de los pacientes críticos en la zona turística del país donde vivimos, y que cuenta con el más alto nivel de tránsito de visitantes.</p>\r\n<h3>BENEFICIOS DEL MIEMBRO ACTIVO DEL CLUB DE DONANTES DEL CMBO:</h3>\r\n<p>Identificación con Carnet al día, haciendo constar de su “buen estado de salud”, y<br />apropiadas condiciones para ser Donante de Sangre Voluntario.</p>\r\n<p>Exoneración del 100% (La totalidad) de todos los pagos que por concepto de diferencia<br />de su póliza de seguro médico, tenga que hacer en el CMBO, mientras dure su<br />membresía en el Club.</p>\r\n<p>En caso de NO tener un seguro médico y tenga que ser atendido en el CMBO, se le<br />otorga como beneficio directo por su membresía al club aplicando los descuentos<br />siguientes:</p>\r\n\r\n<table class=\"table table-striped\"><tbody>\r\n<tr>\r\n<th>Servicio</th>\r\n<th>Descuento</th>\r\n</tr>\r\n<tr>\r\n<td>Habitación Regular</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Unidad Cuidados Intensivos</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Emergencias</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Cirugía Mayor</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Cirugía Menor</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Endoscopía</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Sala de Parto</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Medicamentos en Farmacia</td>\r\n<td>10%</td>\r\n</tr>\r\n<tr><td>Laboratorio Clínico</td>\r\n<td>20%</td>\r\n</tr>\r\n<tr><td>Radilogía, Sonografía</td>\r\n<td>20%</td>\r\n</tr>\r\n<tr><td>Tomografía, Mamografía</td>\r\n<td>20%</td>\r\n</tr>\r\n<tr><td>Horarios de consulta</td>\r\n<td>30%</td>\r\n</tr>\r\n<tr><td>Honorarios Médicos en Internamiento</td>\r\n<td>30%</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n<p>REQUISITOS PARA SER ADMITIDO AL CLUB DE DONANTES EN CMBO:</p>\r\n<ol><li>Aceptar ser “Donante Voluntario”</li>\r\n<li>Adulto sano, entre los 18 y 70 años de edad</li>\r\n<li>Peso corporal mayor a 50 Kg (110 lbs).</li>\r\n<li>Aceptar un chequeo médico general al momento del ingreso al Club, con una re-evaluación cada seis (6) meses, y cada vez que sea requerido para una Donación de Emergencia; que incluye:</li>\r\n</ol>\r\n<ul><li>Examen Físico Completo que confirme que cumple con los requisitos siguientes:</li>\r\n<li>Presión Arterial Diastólica (Baja): Entre 50mmhg – 100mmhg</li>\r\n<li>Presión Arterial Sistólica (Alta): Entre 100mmhg – 180mmhg</li>\r\n<li>Pulso Arterial Regular, entre 50 – 110 pulsaciones por minuto</li>\r\n<li>Valor de Hemoglobina al momento de la donación de:<br /><ul><li>Para hombres: Mayor a 13 Grs/Dl</li>\r\n<li>Para Mujeres: Mayor a 13 Grs/Dl</li>\r\n</ul>\r\n</li>\r\n<li>Prueba de Estabilidad Emocional</li>\r\n<li>Análisis de Sangre (Hemograma) normal</li>\r\n<li>Análisis de Anti-HIV I &amp; II (Sida) Negativo</li>\r\n<li>Análisis de HbsAg (Hepatitis B) Negativo</li>\r\n<li>Análisis de HVC (Hepatitis C) Negativo</li>\r\n<li>Análisis de VDRL (Sífilis) No Reactivo</li>\r\n<li>Análisis de Gota Gruesa (Malaria) Negativo</li>\r\n</ul>\r\n\r\n<h3>Compromiso para los miembros:</h3>\r\n<ul><li>Compromiso por escrito de responder al llamado del CMBO, a cualquier hora del día<br />o la noche, todos los días de la semana, cuando así le sea posible, en caso de necesitar<br />su donación de emergencia, y/o cuando se necesite disponer de su tipo de sangre, para<br />el suministro habitual del hospital.</li>\r\n<li>Donar una (1) unidad de sangre, al momento de ser aceptado como miembro.</li>\r\n<li> Cumplir con los requisitos de Admisión al Club de Donantes</li>\r\n<li>Frecuencia de Donación recomendable:<br />Como norma general, un máximo de 4 veces al año (Periodo mínimo entre dos<br />donaciones: 2 meses)</li>\r\n<li>Estar en buen estado de salud. Antes de cada donación, el médico realizará una<br />nueva historia clínica y un examen físico completo, para valorar si está en condiciones<br />de donar.</li>\r\n</ul>\r\n<h3>RECUERDA QUE CON TU SANGRE PODEMOS HACER GRANDES COSAS. AYUDANOS A SALVAR VIDAS. DONA</h3>\r\n<p>Otros Beneficios de formar parte del Club de Donantes del Centro Médico Bournigal:</p>\r\n<p>Exoneración del 100% de los cargos del Laboratorio, por Sangre Transfundida, si es<br />usada por el propio miembro del club o uno de sus dependientes directos (Padres,<br />Hijos, Hermanos) dentro del CMBO.</p>\r\n<p>Derecho a solicitar el suministro de Sangre Disponible en el Laboratorio del CMBO<br />para ser usada por algún familiar directo (Padre, Hijo, Hermano) que sea tratado fuera<br />del CMBO, solo cubriendo los gastos generales de los equipos descartables para la<br />transfusión (Bolsa, Bajante, Jeringa, etc.) y las pruebas de laboratorio necesarias para<br />garantizar la seguridad de la sangre a transfundir, con un 20% de descuento sobre<br />el precio regular de las mismas.</p>',0,'2013-01-01 08:03:49','2013-01-01 08:03:49'),(50,22,'Side Body','\r\n<a href=\"http://glacial-refuge-9251.herokuapp.com/system/resources/BAhbBlsHOgZmSSIsMjAxMi8xMi8yOS8yMV8wNl8wMF84MzJfUmVnYWxhX1ZpZGEucGRmBjoGRVQ/Regala%20Vida.pdf\" class=\"btn btn primary\">Descargar Versión PDF</a>\r\n',1,'2013-01-01 08:03:49','2013-01-01 08:03:49'),(51,23,'Body','',0,'2013-01-01 08:04:26','2013-01-01 08:04:26'),(52,23,'Side Body','',1,'2013-01-01 08:04:26','2013-01-01 08:04:26'),(53,24,'Body','\r\n<h1>El Centro Médico Bournigal cuenta con la más avanzada tecnología para la realización de estudios médicos</h1>\r\n\r\n<table class=\"table\"><tbody>\r\n<tr><th>Radiología Digital</th>\r\n<th>Biopsias</th>\r\n</tr>\r\n<tr><td>Cistograma de Relleno<br />Colon Baritado<br />Densitometría Ósea Cuerpo Entero<br />Edad Ósea<br />Histero-sonografía<br />Histerosalpingografía<br />Radiología Digital<br />Rayos X<br />Serie Cardíaca<br />Serie Esófago Gastrodoudenal <br />Serie Gastrodoudenal en Adultos y Niños<br />Serie Obstructiva<br />Serie Ósea Metabólica<br />Serie Ósea Metástasica<br />Tránsito Faringe-Esofágico<br />Tránsito Intestinal<br />Uretrocistografía<br />Urografía Endovenosa</td>\r\n<td>Biopsia Sonodirigida de Próstata<br />Biopsia Sonodirigida de Próstata Paquete Anestésico<br />Biopsia Sonodirigida de Tiroides<br />Biopsia Sonodirigida de  Mamas  con Agujas Fina<br />Biopsia Sonodirigida de  Mamas  con Agujas Trucut<br />Biopsia Sonodirigida Hepática<br />Biopsia Sonodirigida  de Partes Blandas<br />Biopsia Sonodirigida  Renal</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n<hr />\r\n<p>people</p>\r\n<table class=\"table\">\r\n<tbody><tr><td>Mamografías Digitales</td>\r\n<td>Tomografía Simple y Contrastada</td>\r\n</tr>\r\n<tr><td>Compresión<br />Magnificación<br />Mamografía Bilateral<br />Mamografía Digital<br />Mamografía Unilateral<br />Perfil Mamario</td>\r\n<td>Tomografía de Abdomen<br />Tomografía de Columna Cervical<br />Tomografía de Columna Dorsal Alta<br />Tomografía de Columna Dorsal Baja<br />Tomografía de Columna Lumbar<br />Tomografía de Conducto Aditivo<br />Tomografía de Cráneo<br />Tomografía de Cuello<br />Tomografía de Musculo Esquelético<br />Tomografía de Órbita<br />Tomografía de Pelvis<br />Tomografía de Senos Paranasales<br />Tomografía de Silla Turca<br />Tomografía de Tórax</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n\r\n\r\n\r\n\r\n<table class=\"table\"><tbody><tr><td>Sonografías</td>\r\n<td>Doppler Vascular Periférico</td>\r\n</tr>\r\n<tr><td>Sonografía Transrectal (Próstata)<br />Sonografía Transfontanelar<br />Sonografía Testicular (Escrotal)<br />Sonografía Renal<br />Sonografía Prostática (Suprapúbica)<br />Sonografía Pene<br />Sonografía Pélvica<br />Sonografía Musculo Esquelético<br />Sonografía de Tiroides<br />Sonografía de partes Blandas<br />Sonografía de Mama<br />Sonografía Control Folicular<br />Sonografía Abdominal<br />Sonografía 2D Tridimensional (3D) y 4D<br />Sonografía  Sub-Maxilar<br />Sonografía  Obstétrica<br />Sonografía   Transvaginal</td>\r\n<td>Doppler Abdominal (Eje Espleno Portal)<br />Doppler Aorta<br />Doppler Arterial<br />Doppler Fístula Arterio-Venoso<br />Doppler Ginecológico (Vejiga Llena)<br />Doppler Injerto Renal<br />Doppler Obstétrico<br />Doppler Oftálmico<br />Doppler Renal<br />Doppler Testicular<br />Doppler Venoso </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n',0,'2013-01-01 08:04:59','2013-01-01 08:04:59'),(54,24,'Side Body','',1,'2013-01-01 08:04:59','2013-01-01 08:04:59'),(55,25,'Body','',0,'2013-01-01 08:05:39','2013-01-01 08:05:39'),(56,25,'Side Body','',1,'2013-01-01 08:05:39','2013-01-01 08:05:39'),(59,27,'Body',NULL,0,'2013-01-01 08:25:03','2013-01-01 08:25:03'),(60,27,'Side Body',NULL,1,'2013-01-01 08:25:03','2013-01-01 08:25:03');
/*!40000 ALTER TABLE `refinery_page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_translations`
--

DROP TABLE IF EXISTS `refinery_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `custom_slug` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_d079468f88bff1c6ea81573a0d019ba8bf5c2902` (`refinery_page_id`),
  KEY `index_refinery_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_translations`
--

LOCK TABLES `refinery_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_translations` VALUES (1,1,'en','Home',NULL,'','home','2013-01-01 06:44:35','2013-01-01 07:35:44'),(2,2,'en','Page not found',NULL,NULL,'page-not-found','2013-01-01 06:44:35','2013-01-01 06:44:35'),(4,4,'en','News',NULL,NULL,'news','2013-01-01 06:44:36','2013-01-01 06:44:36'),(5,5,'en','Blog',NULL,'','blog','2013-01-01 06:44:37','2013-01-01 08:06:34'),(6,6,'en','Centro Medico Bournigal',NULL,'','centro-medico-bournigal','2013-01-01 07:40:03','2013-01-01 07:40:03'),(7,7,'en','Junta Directiva',NULL,'','junta-directiva','2013-01-01 07:50:03','2013-01-01 07:50:03'),(8,8,'en','Dr. José Natalio Redondo',NULL,'','dr-jose-natalio-redondo','2013-01-01 07:51:19','2013-01-01 07:51:19'),(9,9,'en','Dr. William Redondo',NULL,'','dr-william-redondo','2013-01-01 07:51:58','2013-01-01 07:51:58'),(10,10,'en','Manuel Carbajo',NULL,'','manuel-carbajo','2013-01-01 07:52:43','2013-01-01 07:52:43'),(11,11,'en','Charlotte Contreras',NULL,'','charlotte-contreras','2013-01-01 07:53:35','2013-01-01 07:53:35'),(12,12,'en','Charlotte Contreras',NULL,'','charlotte-contreras--2','2013-01-01 07:54:15','2013-01-01 07:54:15'),(13,13,'en','Ilia Redondo',NULL,'','ilia-redondo','2013-01-01 07:54:54','2013-01-01 07:54:54'),(14,14,'en','Irma Mojica',NULL,'','irma-mojica','2013-01-01 07:55:26','2013-01-01 07:55:26'),(15,15,'en','Dr. Alberto Mena A. Mena',NULL,'','dr-alberto-mena-a-mena','2013-01-01 07:56:00','2013-01-01 07:56:00'),(16,16,'en','Red Médica',NULL,'','red-medica','2013-01-01 07:56:59','2013-01-01 07:56:59'),(17,17,'en','Seguros Médicos',NULL,'','seguros-medicos','2013-01-01 07:57:19','2013-01-01 07:57:19'),(18,18,'en','Misión, Visión y Valores',NULL,'','mision-vision-y-valores','2013-01-01 07:57:48','2013-01-01 07:57:48'),(19,19,'en','Nuestras Instalaciones',NULL,'','nuestras-instalaciones','2013-01-01 07:58:11','2013-01-01 07:58:11'),(20,20,'en','Directorio Médico',NULL,'','directorio-medico','2013-01-01 07:58:59','2013-01-01 07:58:59'),(21,21,'en','Servicios de salud',NULL,'','servicios-de-salud','2013-01-01 08:01:57','2013-01-01 08:01:57'),(22,22,'en','Club de Donantes',NULL,'','club-de-donantes','2013-01-01 08:03:48','2013-01-01 08:03:48'),(23,23,'en','Red de Ambulancias',NULL,'','red-de-ambulancias','2013-01-01 08:04:26','2013-01-01 08:04:26'),(24,24,'en','Estudios Médicos',NULL,'','estudios-medicos','2013-01-01 08:04:59','2013-01-01 08:04:59'),(25,25,'en','Farmacia',NULL,'','farmacia','2013-01-01 08:05:39','2013-01-01 08:05:39'),(27,27,'en','Directories',NULL,NULL,'directories','2013-01-01 08:25:03','2013-01-01 08:25:03');
/*!40000 ALTER TABLE `refinery_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_pages`
--

DROP TABLE IF EXISTS `refinery_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) DEFAULT NULL,
  `menu_match` varchar(255) DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `view_template` varchar(255) DEFAULT NULL,
  `layout_template` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_pages_on_depth` (`depth`),
  KEY `index_refinery_pages_on_id` (`id`),
  KEY `index_refinery_pages_on_lft` (`lft`),
  KEY `index_refinery_pages_on_parent_id` (`parent_id`),
  KEY `index_refinery_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_pages`
--

LOCK TABLES `refinery_pages` WRITE;
/*!40000 ALTER TABLE `refinery_pages` DISABLE KEYS */;
INSERT INTO `refinery_pages` VALUES (1,NULL,NULL,'home',1,'/','^/$',0,0,0,1,4,0,'cmbo_home','cmbo_home','2013-01-01 06:44:35','2013-01-01 11:20:33'),(2,1,NULL,'page-not-found',0,NULL,'^/404$',0,0,0,2,3,1,NULL,NULL,'2013-01-01 06:44:35','2013-01-01 08:25:03'),(4,NULL,NULL,'news',1,'/news','^/news.*$',0,0,0,45,46,0,NULL,NULL,'2013-01-01 06:44:36','2013-01-01 06:44:36'),(5,NULL,NULL,'blog',1,'/blog','^/blogs?(/|/.+?|)$',0,0,0,47,48,0,'home','application','2013-01-01 06:44:37','2013-01-01 08:06:34'),(6,NULL,NULL,'centro-medico-bournigal',1,'',NULL,1,0,0,5,32,0,'two_col','two_col','2013-01-01 07:40:03','2013-01-01 07:40:03'),(7,6,NULL,'junta-directiva',1,'',NULL,1,0,0,6,23,1,'two_col','two_col','2013-01-01 07:50:03','2013-01-01 07:50:03'),(8,7,NULL,'dr-jose-natalio-redondo',1,'',NULL,1,0,0,7,8,2,'two_col','two_col','2013-01-01 07:51:19','2013-01-01 07:51:19'),(9,7,NULL,'dr-william-redondo',1,'',NULL,1,0,0,9,10,2,'two_col','two_col','2013-01-01 07:51:58','2013-01-01 07:51:58'),(10,7,NULL,'manuel-carbajo',1,'',NULL,1,0,0,11,12,2,'two_col','two_col','2013-01-01 07:52:43','2013-01-01 07:52:43'),(11,7,NULL,'charlotte-contreras',1,'',NULL,1,0,0,13,14,2,'two_col','two_col','2013-01-01 07:53:35','2013-01-01 07:53:35'),(12,7,NULL,'charlotte-contreras--2',1,'',NULL,1,0,0,15,16,2,'two_col','two_col','2013-01-01 07:54:15','2013-01-01 07:54:15'),(13,7,NULL,'ilia-redondo',1,'',NULL,1,0,0,17,18,2,'two_col','two_col','2013-01-01 07:54:54','2013-01-01 07:54:54'),(14,7,NULL,'irma-mojica',1,'',NULL,1,0,0,19,20,2,'two_col','two_col','2013-01-01 07:55:26','2013-01-01 07:55:26'),(15,7,NULL,'dr-alberto-mena-a-mena',1,'',NULL,1,0,0,21,22,2,'two_col','two_col','2013-01-01 07:56:00','2013-01-01 07:56:00'),(16,6,NULL,'red-medica',1,'',NULL,1,0,0,24,25,1,'two_col','two_col','2013-01-01 07:56:59','2013-01-01 07:56:59'),(17,6,NULL,'seguros-medicos',1,'',NULL,1,0,0,26,27,1,'two_col','two_col','2013-01-01 07:57:19','2013-01-01 07:57:19'),(18,6,NULL,'mision-vision-y-valores',1,'',NULL,1,0,0,28,29,1,'two_col','two_col','2013-01-01 07:57:48','2013-01-01 07:57:48'),(19,6,NULL,'nuestras-instalaciones',1,'',NULL,1,0,0,30,31,1,'two_col','two_col','2013-01-01 07:58:11','2013-01-01 07:58:11'),(20,NULL,NULL,'directorio-medico',1,'',NULL,1,0,0,33,34,0,'two_col','two_col','2013-01-01 07:58:59','2013-01-01 07:58:59'),(21,NULL,NULL,'servicios-de-salud',1,'',NULL,1,0,0,35,44,0,'two_col','two_col','2013-01-01 08:01:57','2013-01-01 08:01:57'),(22,21,NULL,'club-de-donantes',1,'',NULL,1,0,0,36,37,1,'two_col','two_col','2013-01-01 08:03:48','2013-01-01 08:03:48'),(23,21,NULL,'red-de-ambulancias',1,'',NULL,1,0,0,38,39,1,'two_col','two_col','2013-01-01 08:04:26','2013-01-01 08:04:26'),(24,21,NULL,'estudios-medicos',1,'',NULL,1,0,0,40,41,1,'two_col','two_col','2013-01-01 08:04:59','2013-01-01 08:04:59'),(25,21,NULL,'farmacia',1,'',NULL,1,0,0,42,43,1,'two_col','two_col','2013-01-01 08:05:39','2013-01-01 08:05:39'),(27,NULL,NULL,'directories',1,'/directories','^/directories(/|/.+?|)$',0,0,0,49,50,0,NULL,NULL,'2013-01-01 08:25:03','2013-01-01 08:25:03');
/*!40000 ALTER TABLE `refinery_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_resources`
--

DROP TABLE IF EXISTS `refinery_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_uid` varchar(255) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_resources`
--

LOCK TABLES `refinery_resources` WRITE;
/*!40000 ALTER TABLE `refinery_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles`
--

DROP TABLE IF EXISTS `refinery_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles`
--

LOCK TABLES `refinery_roles` WRITE;
/*!40000 ALTER TABLE `refinery_roles` DISABLE KEYS */;
INSERT INTO `refinery_roles` VALUES (1,'Refinery'),(2,'Superuser');
/*!40000 ALTER TABLE `refinery_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles_users`
--

DROP TABLE IF EXISTS `refinery_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_refinery_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_refinery_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles_users`
--

LOCK TABLES `refinery_roles_users` WRITE;
/*!40000 ALTER TABLE `refinery_roles_users` DISABLE KEYS */;
INSERT INTO `refinery_roles_users` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `refinery_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_settings`
--

DROP TABLE IF EXISTS `refinery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `destroyable` tinyint(1) DEFAULT '1',
  `scoping` varchar(255) DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `form_value_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_settings_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_settings`
--

LOCK TABLES `refinery_settings` WRITE;
/*!40000 ALTER TABLE `refinery_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_user_plugins`
--

DROP TABLE IF EXISTS `refinery_user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_refinery_user_plugins_on_user_id_and_name` (`user_id`,`name`),
  KEY `index_refinery_user_plugins_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_user_plugins`
--

LOCK TABLES `refinery_user_plugins` WRITE;
/*!40000 ALTER TABLE `refinery_user_plugins` DISABLE KEYS */;
INSERT INTO `refinery_user_plugins` VALUES (22,1,'refinery_users',0),(23,1,'refinery_dashboard',1),(24,1,'refinery_images',2),(25,1,'refinery_files',3),(26,1,'refinery_pages',4),(27,1,'refinery_settings',5),(28,1,'refinerycms_news',6),(29,1,'refinerycms_blog',7),(30,1,'refinery_core',8),(31,1,'refinery_dialogs',9),(32,1,'refinery_i18n',10),(33,1,'page_images',11),(34,1,'refinerycms-directories',12),(35,1,'directories',13);
/*!40000 ALTER TABLE `refinery_user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_users`
--

DROP TABLE IF EXISTS `refinery_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_users_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_users`
--

LOCK TABLES `refinery_users` WRITE;
/*!40000 ALTER TABLE `refinery_users` DISABLE KEYS */;
INSERT INTO `refinery_users` VALUES (1,'admin','admin@exp.com','$2a$10$YqJo5xiGvacSe.ma0opgNuwCb0xHKMYC1v6JYIY499ieEFjEKaJ0i','2013-01-01 07:19:46','2013-01-01 07:19:46','127.0.0.1','127.0.0.1',1,NULL,NULL,NULL,'2013-01-01 07:19:46','2013-01-01 07:19:46');
/*!40000 ALTER TABLE `refinery_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20121221005455'),('20121221005456'),('20121221005457'),('20121221005458'),('20121221005459'),('20121225145638'),('20121225145639'),('20121225145640'),('20121225145641'),('20121225232718'),('20121225232719'),('20121225232720'),('20121225232721'),('20121225232722'),('20121225232723'),('20121225232724'),('20121225232725'),('20121225232726'),('20121225232727'),('20121226015821'),('20121226015822'),('20121226015823'),('20121226015824'),('20121226015825'),('20121226015826'),('20121226015827'),('20121226015828'),('20121226015829'),('20121226015830'),('20130101082405');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) DEFAULT NULL,
  `browser_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Refinery::Page::Translation','','','','2013-01-01 06:44:35','2013-01-01 07:35:43'),(2,2,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-01-01 06:44:35','2013-01-01 06:44:35'),(4,4,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-01-01 06:44:36','2013-01-01 06:44:36'),(5,5,'Refinery::Page::Translation','','','','2013-01-01 06:44:37','2013-01-01 08:06:34'),(6,6,'Refinery::Page::Translation','','','','2013-01-01 07:40:03','2013-01-01 07:40:03'),(7,7,'Refinery::Page::Translation','','','','2013-01-01 07:50:03','2013-01-01 07:50:03'),(8,8,'Refinery::Page::Translation','','','','2013-01-01 07:51:19','2013-01-01 07:51:19'),(9,9,'Refinery::Page::Translation','','','','2013-01-01 07:51:58','2013-01-01 07:51:58'),(10,10,'Refinery::Page::Translation','','','','2013-01-01 07:52:43','2013-01-01 07:52:43'),(11,11,'Refinery::Page::Translation','','','','2013-01-01 07:53:35','2013-01-01 07:53:35'),(12,12,'Refinery::Page::Translation','','','','2013-01-01 07:54:15','2013-01-01 07:54:15'),(13,13,'Refinery::Page::Translation','','','','2013-01-01 07:54:54','2013-01-01 07:54:54'),(14,14,'Refinery::Page::Translation','','','','2013-01-01 07:55:26','2013-01-01 07:55:26'),(15,15,'Refinery::Page::Translation','','','','2013-01-01 07:56:00','2013-01-01 07:56:00'),(16,16,'Refinery::Page::Translation','','','','2013-01-01 07:56:59','2013-01-01 07:56:59'),(17,17,'Refinery::Page::Translation','','','','2013-01-01 07:57:19','2013-01-01 07:57:19'),(18,18,'Refinery::Page::Translation','','','','2013-01-01 07:57:48','2013-01-01 07:57:48'),(19,19,'Refinery::Page::Translation','','','','2013-01-01 07:58:11','2013-01-01 07:58:11'),(20,20,'Refinery::Page::Translation','','','','2013-01-01 07:58:59','2013-01-01 07:58:59'),(21,21,'Refinery::Page::Translation','','','','2013-01-01 08:01:57','2013-01-01 08:01:57'),(22,22,'Refinery::Page::Translation','','','','2013-01-01 08:03:48','2013-01-01 08:03:48'),(23,23,'Refinery::Page::Translation','','','','2013-01-01 08:04:26','2013-01-01 08:04:26'),(24,24,'Refinery::Page::Translation','','','','2013-01-01 08:04:59','2013-01-01 08:04:59'),(25,25,'Refinery::Page::Translation','','','','2013-01-01 08:05:39','2013-01-01 08:05:39'),(26,1,'Refinery::Blog::Post','','','','2013-01-01 08:09:07','2013-01-01 08:09:07'),(27,2,'Refinery::Blog::Post','','','','2013-01-01 08:09:54','2013-01-01 08:09:54'),(29,27,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-01-01 08:25:03','2013-01-01 08:25:03');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-01 17:10:23
