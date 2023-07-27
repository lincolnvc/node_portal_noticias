-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: portal_noticias
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticias` (
  `id_noticia` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `noticia` text COLLATE latin1_general_ci,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `resumo` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `autor` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `data_noticia` date DEFAULT NULL,
  PRIMARY KEY (`id_noticia`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'População pede Lula na Cadeia','A população brasileira pede que Lula seja preso por corrupção ativa.','2023-07-20 13:28:25','Lula na cadeia por corrupção','Pavinatto','2023-07-26'),(2,'Flávio Dino suspende armas','Ministro Flávio Dino acusa eleitores do Bolsonaro de marginais e manda recolher todos os portes de armas','2023-07-21 09:50:57','Ministro supende portes de armas','Emílio Surita','2023-07-26'),(3,'Gastança da Janja','Em sua terceira visita a França, a primeira dama Janja compra bolsa que custa 350 mil reais.','2023-07-25 22:25:38','Janja compra bolsa de 350 mil reais','Marcelo Suano','2023-07-26'),(4,'Novo ministro do Agro','Stédile é o novo ministro da agronomia, isso mesmo, o antigo líder do MST (Movimento dos Sem Terra) é o novo ministro da Agronomia.','2023-07-26 12:23:59','Novo ministro do Agro é o Stédile','Lincoln de Castro','2023-07-26'),(5,'Oposição pede impeachment','Oposição ao governo pede impeachment do presidente Lula, sob acusações de corrupção ativa, lavagem de dinheiro, envolvimento com a máfia e o tráfico, abuso de poder político e assassinato de opositores','2023-07-26 12:43:17','Processo de impeachment aberto','Carol Curimbaba','2023-07-26'),(6,'Máfia em investigação','Máfia do colarinho branco liderada por Lula e Flávio Dino está sendo investigada.','2023-07-26 13:09:31','Máfia do colarinho branco em investigação','Thiago Asmar','2023-07-26');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-27  9:17:12
