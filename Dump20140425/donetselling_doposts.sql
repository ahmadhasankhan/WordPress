CREATE DATABASE  IF NOT EXISTS `donetselling` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `donetselling`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: donetselling
-- ------------------------------------------------------
-- Server version	5.5.35

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
-- Table structure for table `doposts`
--

DROP TABLE IF EXISTS `doposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doposts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doposts`
--

LOCK TABLES `doposts` WRITE;
/*!40000 ALTER TABLE `doposts` DISABLE KEYS */;
INSERT INTO `doposts` VALUES (1,1,'2014-04-22 17:53:58','2014-04-22 17:53:58','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2014-04-22 17:53:58','2014-04-22 17:53:58','',0,'http://localhost/wordpress/?p=1',0,'post','',1),(2,1,'2014-04-22 17:53:58','2014-04-22 17:53:58','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2014-04-22 17:53:58','2014-04-22 17:53:58','',0,'http://localhost/wordpress/?page_id=2',0,'page','',0),(3,1,'2014-04-22 17:54:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-04-22 17:54:22','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?p=3',0,'post','',0),(5,1,'2014-04-23 00:24:37','2014-04-23 00:24:37','','banner','','inherit','open','open','','banner','','','2014-04-23 00:24:37','2014-04-23 00:24:37','',0,'http://localhost/wordpress/wp-content/uploads/2014/04/banner.gif',0,'attachment','image/gif',0),(6,1,'2014-04-23 00:24:53','2014-04-23 00:24:53','http://localhost/wordpress/wp-content/uploads/2014/04/cropped-banner.gif','cropped-banner.gif','','inherit','open','open','','cropped-banner-gif','','','2014-04-23 00:24:53','2014-04-23 00:24:53','',0,'http://localhost/wordpress/wp-content/uploads/2014/04/cropped-banner.gif',0,'attachment','image/gif',0),(7,1,'2014-04-23 00:34:24','2014-04-23 00:34:24','','Home','','publish','open','open','','home','','','2014-04-23 21:27:25','2014-04-23 21:27:25','',0,'http://localhost/wordpress/?p=7',1,'nav_menu_item','',0),(9,1,'2014-04-23 00:36:12','2014-04-23 00:36:12','<b>Live Monthly Training Events:</b>\r\nStocks, ETF\'s and Options (click to view description) $1295 for course and materials\r\nForex and Futures (click to view descripton)  $1295 for course and materials<b>Personal Coaching:</b>    (description: One on one mentoring with Kevin on the Asset class of your choice.  Coaching times will be determined between Student and Trainer to fit your schedule.    $159/hr <b>Live market Webinars:</b><i>Stocks and Options</i>:  Daily Opening and Closing Bell with additional courses as scheduled throughout the month. $159/mo\r\n<i>Forex and Futures</i>:  Daily Early Rise for the North American Session and <b>3</b> Evening Asian Session Setup programs all Live-in-Market. Additional course events as scheduled.  $159/mo','PRODUCTS AND SERVICES','','publish','open','open','','products-and-services','','','2014-04-23 00:36:12','2014-04-23 00:36:12','',0,'http://localhost/wordpress/?page_id=9',0,'page','',0),(10,1,'2014-04-23 00:36:12','2014-04-23 00:36:12',' ','','','publish','open','open','','10','','','2014-04-23 00:36:12','2014-04-23 00:36:12','',0,'http://localhost/wordpress/?p=10',0,'nav_menu_item','',0),(11,1,'2014-04-23 00:36:12','2014-04-23 00:36:12',' ','','','publish','open','open','','11','','','2014-04-23 00:36:12','2014-04-23 00:36:12','',0,'http://localhost/wordpress/?p=11',0,'nav_menu_item','',0),(12,1,'2014-04-23 00:36:12','2014-04-23 00:36:12','<b>Live Monthly Training Events:</b>\r\nStocks, ETF\'s and Options (click to view description) $1295 for course and materials\r\nForex and Futures (click to view descripton)  $1295 for course and materials<b>Personal Coaching:</b>    (description: One on one mentoring with Kevin on the Asset class of your choice.  Coaching times will be determined between Student and Trainer to fit your schedule.    $159/hr <b>Live market Webinars:</b><i>Stocks and Options</i>:  Daily Opening and Closing Bell with additional courses as scheduled throughout the month. $159/mo\r\n<i>Forex and Futures</i>:  Daily Early Rise for the North American Session and <b>3</b> Evening Asian Session Setup programs all Live-in-Market. Additional course events as scheduled.  $159/mo','PRODUCTS AND SERVICES','','inherit','open','open','','9-revision-v1','','','2014-04-23 00:36:12','2014-04-23 00:36:12','',9,'http://localhost/wordpress/?p=12',0,'revision','',0),(13,1,'2014-04-23 00:36:41','2014-04-23 00:36:41','Kevin Dixon Trading...','ABOUT US','','publish','open','open','','about-us','','','2014-04-23 00:36:58','2014-04-23 00:36:58','',0,'http://localhost/wordpress/?page_id=13',0,'page','',0),(14,1,'2014-04-23 00:36:41','2014-04-23 00:36:41',' ','','','publish','open','open','','14','','','2014-04-23 00:36:41','2014-04-23 00:36:41','',0,'http://localhost/wordpress/?p=14',2,'nav_menu_item','',0),(15,1,'2014-04-23 00:36:42','2014-04-23 00:36:42',' ','','','publish','open','open','','15','','','2014-04-23 00:36:42','2014-04-23 00:36:42','',0,'http://localhost/wordpress/?p=15',2,'nav_menu_item','',0),(16,1,'2014-04-23 00:36:41','2014-04-23 00:36:41','','ABOUT US','','inherit','open','open','','13-revision-v1','','','2014-04-23 00:36:41','2014-04-23 00:36:41','',13,'http://localhost/wordpress/?p=16',0,'revision','',0),(17,1,'2014-04-23 00:36:58','2014-04-23 00:36:58','Kevin Dixon Trading...','ABOUT US','','inherit','open','open','','13-revision-v1','','','2014-04-23 00:36:58','2014-04-23 00:36:58','',13,'http://localhost/wordpress/?p=17',0,'revision','',0),(18,1,'2014-04-23 00:37:32','2014-04-23 00:37:32','','CALENDAR OF EVENTS','','publish','open','open','','calendar-of-events','','','2014-04-23 00:37:32','2014-04-23 00:37:32','',0,'http://localhost/wordpress/?page_id=18',0,'page','',0),(19,1,'2014-04-23 00:37:32','2014-04-23 00:37:32',' ','','','publish','open','open','','19','','','2014-04-23 00:37:32','2014-04-23 00:37:32','',0,'http://localhost/wordpress/?p=19',3,'nav_menu_item','',0),(20,1,'2014-04-23 00:37:32','2014-04-23 00:37:32',' ','','','publish','open','open','','20','','','2014-04-23 00:37:32','2014-04-23 00:37:32','',0,'http://localhost/wordpress/?p=20',3,'nav_menu_item','',0),(21,1,'2014-04-23 00:37:32','2014-04-23 00:37:32','','CALENDAR OF EVENTS','','inherit','open','open','','18-revision-v1','','','2014-04-23 00:37:32','2014-04-23 00:37:32','',18,'http://localhost/wordpress/?p=21',0,'revision','',0),(22,1,'2014-04-23 00:37:48','2014-04-23 00:37:48','','BLOG','','publish','open','open','','blog','','','2014-04-23 00:37:48','2014-04-23 00:37:48','',0,'http://localhost/wordpress/?page_id=22',0,'page','',0),(23,1,'2014-04-23 00:37:48','2014-04-23 00:37:48',' ','','','publish','open','open','','23','','','2014-04-23 00:37:48','2014-04-23 00:37:48','',0,'http://localhost/wordpress/?p=23',4,'nav_menu_item','',0),(24,1,'2014-04-23 00:37:49','2014-04-23 00:37:49',' ','','','publish','open','open','','24','','','2014-04-23 00:37:49','2014-04-23 00:37:49','',0,'http://localhost/wordpress/?p=24',4,'nav_menu_item','',0),(25,1,'2014-04-23 00:37:48','2014-04-23 00:37:48','','BLOG','','inherit','open','open','','22-revision-v1','','','2014-04-23 00:37:48','2014-04-23 00:37:48','',22,'http://localhost/wordpress/?p=25',0,'revision','',0),(26,1,'2014-04-23 00:38:09','2014-04-23 00:38:09','','RESOURCES','','publish','open','open','','resources','','','2014-04-23 00:38:09','2014-04-23 00:38:09','',0,'http://localhost/wordpress/?page_id=26',0,'page','',0),(27,1,'2014-04-23 00:38:09','2014-04-23 00:38:09',' ','','','publish','open','open','','27','','','2014-04-23 00:38:09','2014-04-23 00:38:09','',0,'http://localhost/wordpress/?p=27',5,'nav_menu_item','',0),(28,1,'2014-04-23 00:38:10','2014-04-23 00:38:10',' ','','','publish','open','open','','28','','','2014-04-23 00:38:10','2014-04-23 00:38:10','',0,'http://localhost/wordpress/?p=28',5,'nav_menu_item','',0),(29,1,'2014-04-23 00:38:09','2014-04-23 00:38:09','','RESOURCES','','inherit','open','open','','26-revision-v1','','','2014-04-23 00:38:09','2014-04-23 00:38:09','',26,'http://localhost/wordpress/?p=29',0,'revision','',0),(30,1,'2014-04-23 00:38:27','2014-04-23 00:38:27','KevinDixonTrading, LLC  (company name)\r\nTrading, Training and Personal Coaching','CONTACT US','','publish','open','open','','contact-us','','','2014-04-23 00:38:47','2014-04-23 00:38:47','',0,'http://localhost/wordpress/?page_id=30',0,'page','',0),(31,1,'2014-04-23 00:38:27','2014-04-23 00:38:27',' ','','','publish','open','open','','31','','','2014-04-23 00:38:27','2014-04-23 00:38:27','',0,'http://localhost/wordpress/?p=31',6,'nav_menu_item','',0),(32,1,'2014-04-23 00:38:27','2014-04-23 00:38:27',' ','','','publish','open','open','','32','','','2014-04-23 00:38:27','2014-04-23 00:38:27','',0,'http://localhost/wordpress/?p=32',6,'nav_menu_item','',0),(33,1,'2014-04-23 00:38:27','2014-04-23 00:38:27','','CONTACT US','','inherit','open','open','','30-revision-v1','','','2014-04-23 00:38:27','2014-04-23 00:38:27','',30,'http://localhost/wordpress/?p=33',0,'revision','',0),(34,1,'2014-04-23 00:38:47','2014-04-23 00:38:47','KevinDixonTrading, LLC  (company name)\r\nTrading, Training and Personal Coaching','CONTACT US','','inherit','open','open','','30-revision-v1','','','2014-04-23 00:38:47','2014-04-23 00:38:47','',30,'http://localhost/wordpress/?p=34',0,'revision','',0),(35,1,'2014-04-23 01:24:37','2014-04-23 01:24:37','','banner','','inherit','open','open','','banner-2','','','2014-04-23 01:24:37','2014-04-23 01:24:37','',0,'http://localhost/wordpress/wp-content/uploads/2014/04/banner1.gif',0,'attachment','image/gif',0),(36,1,'2014-04-23 01:24:56','2014-04-23 01:24:56','http://localhost/wordpress/wp-content/uploads/2014/04/cropped-banner1.gif','cropped-banner1.gif','','inherit','open','open','','cropped-banner1-gif','','','2014-04-23 01:24:56','2014-04-23 01:24:56','',0,'http://localhost/wordpress/wp-content/uploads/2014/04/cropped-banner1.gif',0,'attachment','image/gif',0),(37,1,'2014-04-23 21:24:53','2014-04-23 21:24:53',' ','','','publish','open','open','','37','','','2014-04-23 21:27:25','2014-04-23 21:27:25','',0,'http://localhost/wordpress/?p=37',7,'nav_menu_item','',0),(38,1,'2014-04-23 21:24:53','2014-04-23 21:24:53',' ','','','publish','open','open','','38','','','2014-04-23 21:27:25','2014-04-23 21:27:25','',0,'http://localhost/wordpress/?p=38',6,'nav_menu_item','',0),(39,1,'2014-04-23 21:24:52','2014-04-23 21:24:52',' ','','','publish','open','open','','39','','','2014-04-23 21:27:25','2014-04-23 21:27:25','',0,'http://localhost/wordpress/?p=39',5,'nav_menu_item','',0),(40,1,'2014-04-23 21:24:52','2014-04-23 21:24:52',' ','','','publish','open','open','','40','','','2014-04-23 21:27:25','2014-04-23 21:27:25','',0,'http://localhost/wordpress/?p=40',4,'nav_menu_item','',0),(41,1,'2014-04-23 21:24:52','2014-04-23 21:24:52',' ','','','publish','open','open','','41','','','2014-04-23 21:27:25','2014-04-23 21:27:25','',0,'http://localhost/wordpress/?p=41',3,'nav_menu_item','',0),(42,1,'2014-04-23 21:24:52','2014-04-23 21:24:52',' ','','','publish','open','open','','42','','','2014-04-23 21:27:25','2014-04-23 21:27:25','',0,'http://localhost/wordpress/?p=42',2,'nav_menu_item','',0);
/*!40000 ALTER TABLE `doposts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-25  7:15:24
